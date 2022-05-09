; ModuleID = '/llk/IR_all_yes/crypto/rsa-pkcs1pad.c_pt.bc'
source_filename = "../crypto/rsa-pkcs1pad.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.crypto_template = type { %struct.list_head, %struct.hlist_head, ptr, ptr, [128 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.rsa_asn1_template = type { ptr, ptr, i32 }
%struct.akcipher_instance = type { ptr, [124 x i8], %union.anon.71 }
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
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [112 x i8], [0 x ptr] }
%struct.crypto_async_request = type { %struct.list_head, ptr, ptr, ptr, i32 }
%struct.akcipher_request = type { %struct.crypto_async_request, ptr, ptr, i32, i32, [88 x i8], [0 x ptr] }
%struct.page = type { i32, %union.anon.2, %union.anon.63, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.63 = type { %struct.atomic_t }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }

@rsa_pkcs1pad_tmpl = dso_local global { %struct.crypto_template, [44 x i8] } { %struct.crypto_template { %struct.list_head zeroinitializer, %struct.hlist_head zeroinitializer, ptr null, ptr @pkcs1pad_create, [128 x i8] c"pkcs1pad\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, [44 x i8] zeroinitializer }, align 32
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pkcs1pad(%s)\00", [19 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pkcs1pad(%s,%s)\00", [16 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@rsa_asn1_templates = internal constant { [8 x %struct.rsa_asn1_template], [32 x i8] } { [8 x %struct.rsa_asn1_template] [%struct.rsa_asn1_template { ptr @.str.2, ptr @rsa_digest_info_md5, i32 18 }, %struct.rsa_asn1_template { ptr @.str.3, ptr @rsa_digest_info_sha1, i32 15 }, %struct.rsa_asn1_template { ptr @.str.4, ptr @rsa_digest_info_rmd160, i32 15 }, %struct.rsa_asn1_template { ptr @.str.5, ptr @rsa_digest_info_sha256, i32 19 }, %struct.rsa_asn1_template { ptr @.str.6, ptr @rsa_digest_info_sha384, i32 19 }, %struct.rsa_asn1_template { ptr @.str.7, ptr @rsa_digest_info_sha512, i32 19 }, %struct.rsa_asn1_template { ptr @.str.8, ptr @rsa_digest_info_sha224, i32 19 }, %struct.rsa_asn1_template zeroinitializer], [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"md5\00", [28 x i8] zeroinitializer }, align 32
@rsa_digest_info_md5 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"0 0\0C\06\08*\86H\86\F7\0D\02\05\05\00\04\10", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sha1\00", [27 x i8] zeroinitializer }, align 32
@rsa_digest_info_sha1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"0!0\09\06\05+\0E\03\02\1A\05\00\04\14", [17 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"rmd160\00", [25 x i8] zeroinitializer }, align 32
@rsa_digest_info_rmd160 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"0!0\09\06\05+$\03\02\01\05\00\04\14", [17 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sha256\00", [25 x i8] zeroinitializer }, align 32
@rsa_digest_info_sha256 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"010\0D\06\09`\86H\01e\03\04\02\01\05\00\04 ", [45 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sha384\00", [25 x i8] zeroinitializer }, align 32
@rsa_digest_info_sha384 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"0A0\0D\06\09`\86H\01e\03\04\02\02\05\00\040", [45 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sha512\00", [25 x i8] zeroinitializer }, align 32
@rsa_digest_info_sha512 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"0Q0\0D\06\09`\86H\01e\03\04\02\03\05\00\04@", [45 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sha224\00", [25 x i8] zeroinitializer }, align 32
@rsa_digest_info_sha224 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"0-0\0D\06\09`\86H\01e\03\04\02\04\05\00\04\1C", [45 x i8] zeroinitializer }, align 32
@high_memory = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@.str.9 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"crypto/rsa-pkcs1pad.c\00", [42 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 4294967181, i64 4294967280]
@__sancov_gen_cov_switch_values.10 = internal global [4 x i64] [i64 2, i64 32, i64 4294967181, i64 4294967280]
@__sancov_gen_cov_switch_values.11 = internal global [4 x i64] [i64 2, i64 32, i64 4294967181, i64 4294967280]
@__sancov_gen_cov_switch_values.12 = internal global [4 x i64] [i64 2, i64 32, i64 4294967181, i64 4294967280]
@___asan_gen_.13 = private unnamed_addr constant [18 x i8] c"rsa_pkcs1pad_tmpl\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 681, i32 24 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 628, i32 30 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 645, i32 9 }
@___asan_gen_.22 = private unnamed_addr constant [19 x i8] c"rsa_asn1_templates\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 68, i32 3 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 70, i32 2 }
@___asan_gen_.28 = private unnamed_addr constant [20 x i8] c"rsa_digest_info_md5\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 22, i32 17 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 71, i32 2 }
@___asan_gen_.34 = private unnamed_addr constant [21 x i8] c"rsa_digest_info_sha1\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 28, i32 17 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 72, i32 2 }
@___asan_gen_.40 = private unnamed_addr constant [23 x i8] c"rsa_digest_info_rmd160\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 34, i32 17 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 73, i32 2 }
@___asan_gen_.46 = private unnamed_addr constant [23 x i8] c"rsa_digest_info_sha256\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 46, i32 17 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 74, i32 2 }
@___asan_gen_.52 = private unnamed_addr constant [23 x i8] c"rsa_digest_info_sha384\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 52, i32 17 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 75, i32 2 }
@___asan_gen_.58 = private unnamed_addr constant [23 x i8] c"rsa_digest_info_sha512\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 58, i32 17 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 76, i32 2 }
@___asan_gen_.64 = private unnamed_addr constant [23 x i8] c"rsa_digest_info_sha224\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 40, i32 17 }
@___asan_gen_.67 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.68 = private constant [25 x i8] c"../crypto/rsa-pkcs1pad.c\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 539, i32 6 }
@llvm.compiler.used = appending global [19 x ptr] [ptr @rsa_pkcs1pad_tmpl, ptr @.str, ptr @.str.1, ptr @rsa_asn1_templates, ptr @.str.2, ptr @rsa_digest_info_md5, ptr @.str.3, ptr @rsa_digest_info_sha1, ptr @.str.4, ptr @rsa_digest_info_rmd160, ptr @.str.5, ptr @rsa_digest_info_sha256, ptr @.str.6, ptr @rsa_digest_info_sha384, ptr @.str.7, ptr @rsa_digest_info_sha512, ptr @.str.8, ptr @rsa_digest_info_sha224, ptr @.str.9], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rsa_pkcs1pad_tmpl to i32), i32 148, i32 192, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rsa_asn1_templates to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rsa_digest_info_md5 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rsa_digest_info_sha1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rsa_digest_info_rmd160 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rsa_digest_info_sha256 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rsa_digest_info_sha384 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rsa_digest_info_sha512 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rsa_digest_info_sha224 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pkcs1pad_create(ptr noundef %tmpl, ptr noundef %tb) #0 align 64 {
entry:
  %mask = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask) #9
  %0 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %mask, align 4, !annotation !47
  %call = call i32 @crypto_check_attr_type(ptr noundef %tb, i32 noundef 13, ptr noundef nonnull %mask) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 928) #12
  %tobool2.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %__ctx.i.i = getelementptr inbounds %struct.akcipher_instance, ptr %call7.i.i, i32 1
  %base.i = getelementptr inbounds %struct.akcipher_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 1
  %arrayidx = getelementptr ptr, ptr %tb, i32 1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %call7 = call ptr @crypto_attr_alg_name(ptr noundef %3) #9
  %4 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mask, align 4
  %call8 = call i32 @crypto_grab_akcipher(ptr noundef %__ctx.i.i, ptr noundef %base.i, ptr noundef %call7, i32 noundef 0, i32 noundef %5) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.end4.err_free_inst_crit_edge

if.end4.err_free_inst_crit_edge:                  ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_free_inst

if.end11:                                         ; preds = %if.end4
  %alg.i = getelementptr inbounds %struct.akcipher_instance, ptr %call7.i.i, i32 1, i32 1, i32 4
  %6 = ptrtoint ptr %alg.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %alg.i, align 8
  %arrayidx14 = getelementptr ptr, ptr %tb, i32 2
  %8 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx14, align 4
  %call15 = call ptr @crypto_attr_alg_name(ptr noundef %9) #9
  %cmp.i = icmp ugt ptr %call15, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then17, label %if.else

if.then17:                                        ; preds = %if.end11
  %cra_name = getelementptr inbounds %struct.akcipher_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 1, i32 0, i32 8
  %cra_name19 = getelementptr i8, ptr %7, i32 40
  %call21 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %cra_name, i32 noundef 128, ptr noundef nonnull @.str, ptr noundef %cra_name19)
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %call21)
  %cmp = icmp sgt i32 %call21, 127
  br i1 %cmp, label %if.then17.err_free_inst_crit_edge, label %if.end23

if.then17.err_free_inst_crit_edge:                ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_free_inst

if.end23:                                         ; preds = %if.then17
  %cra_driver_name = getelementptr inbounds %struct.akcipher_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 1, i32 0, i32 9
  %cra_driver_name27 = getelementptr i8, ptr %7, i32 168
  %call29 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %cra_driver_name, i32 noundef 128, ptr noundef nonnull @.str, ptr noundef %cra_driver_name27)
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %call29)
  %cmp30 = icmp sgt i32 %call29, 127
  br i1 %cmp30, label %if.end23.err_free_inst_crit_edge, label %if.end23.if.end58_crit_edge

if.end23.if.end58_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end58

if.end23.err_free_inst_crit_edge:                 ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_free_inst

if.else:                                          ; preds = %if.end11
  %call.i = call i32 @strcmp(ptr noundef %call15, ptr noundef nonnull dereferenceable(4) @.str.2) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i111 = icmp eq i32 %call.i, 0
  br i1 %cmp.i111, label %if.else.if.end37_crit_edge, label %for.inc.i

if.else.if.end37_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37

for.inc.i:                                        ; preds = %if.else
  %call.1.i = call i32 @strcmp(ptr noundef %call15, ptr noundef nonnull dereferenceable(5) @.str.3) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1.i)
  %cmp.1.i = icmp eq i32 %call.1.i, 0
  br i1 %cmp.1.i, label %for.inc.i.if.end37_crit_edge, label %for.inc.1.i

for.inc.i.if.end37_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37

for.inc.1.i:                                      ; preds = %for.inc.i
  %call.2.i = call i32 @strcmp(ptr noundef %call15, ptr noundef nonnull dereferenceable(7) @.str.4) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2.i)
  %cmp.2.i = icmp eq i32 %call.2.i, 0
  br i1 %cmp.2.i, label %for.inc.1.i.if.end37_crit_edge, label %for.inc.2.i

for.inc.1.i.if.end37_crit_edge:                   ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37

for.inc.2.i:                                      ; preds = %for.inc.1.i
  %call.3.i = call i32 @strcmp(ptr noundef %call15, ptr noundef nonnull dereferenceable(7) @.str.5) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.3.i)
  %cmp.3.i = icmp eq i32 %call.3.i, 0
  br i1 %cmp.3.i, label %for.inc.2.i.if.end37_crit_edge, label %for.inc.3.i

for.inc.2.i.if.end37_crit_edge:                   ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37

for.inc.3.i:                                      ; preds = %for.inc.2.i
  %call.4.i = call i32 @strcmp(ptr noundef %call15, ptr noundef nonnull dereferenceable(7) @.str.6) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.4.i)
  %cmp.4.i = icmp eq i32 %call.4.i, 0
  br i1 %cmp.4.i, label %for.inc.3.i.if.end37_crit_edge, label %for.inc.4.i

for.inc.3.i.if.end37_crit_edge:                   ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37

for.inc.4.i:                                      ; preds = %for.inc.3.i
  %call.5.i = call i32 @strcmp(ptr noundef %call15, ptr noundef nonnull dereferenceable(7) @.str.7) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.5.i)
  %cmp.5.i = icmp eq i32 %call.5.i, 0
  br i1 %cmp.5.i, label %for.inc.4.i.if.end37_crit_edge, label %for.inc.5.i

for.inc.4.i.if.end37_crit_edge:                   ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37

for.inc.5.i:                                      ; preds = %for.inc.4.i
  %call.6.i = call i32 @strcmp(ptr noundef %call15, ptr noundef nonnull dereferenceable(7) @.str.8) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.6.i)
  %cmp.6.i = icmp eq i32 %call.6.i, 0
  br i1 %cmp.6.i, label %for.inc.5.i.if.end37_crit_edge, label %rsa_lookup_asn1.exit

for.inc.5.i.if.end37_crit_edge:                   ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37

rsa_lookup_asn1.exit:                             ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #11
  %digest_info = getelementptr inbounds %struct.akcipher_instance, ptr %call7.i.i, i32 1, i32 1, i32 24
  %10 = ptrtoint ptr %digest_info to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %digest_info, align 4
  br label %err_free_inst

if.end37:                                         ; preds = %for.inc.5.i.if.end37_crit_edge, %for.inc.4.i.if.end37_crit_edge, %for.inc.3.i.if.end37_crit_edge, %for.inc.2.i.if.end37_crit_edge, %for.inc.1.i.if.end37_crit_edge, %for.inc.i.if.end37_crit_edge, %if.else.if.end37_crit_edge
  %retval.0.i.ph = phi ptr [ getelementptr inbounds ([8 x %struct.rsa_asn1_template], ptr @rsa_asn1_templates, i32 0, i32 5), %for.inc.4.i.if.end37_crit_edge ], [ getelementptr inbounds ([8 x %struct.rsa_asn1_template], ptr @rsa_asn1_templates, i32 0, i32 4), %for.inc.3.i.if.end37_crit_edge ], [ getelementptr inbounds ([8 x %struct.rsa_asn1_template], ptr @rsa_asn1_templates, i32 0, i32 3), %for.inc.2.i.if.end37_crit_edge ], [ getelementptr inbounds ([8 x %struct.rsa_asn1_template], ptr @rsa_asn1_templates, i32 0, i32 2), %for.inc.1.i.if.end37_crit_edge ], [ getelementptr inbounds ([8 x %struct.rsa_asn1_template], ptr @rsa_asn1_templates, i32 0, i32 1), %for.inc.i.if.end37_crit_edge ], [ @rsa_asn1_templates, %if.else.if.end37_crit_edge ], [ getelementptr inbounds ([8 x %struct.rsa_asn1_template], ptr @rsa_asn1_templates, i32 0, i32 6), %for.inc.5.i.if.end37_crit_edge ]
  %digest_info113 = getelementptr inbounds %struct.akcipher_instance, ptr %call7.i.i, i32 1, i32 1, i32 24
  %11 = ptrtoint ptr %digest_info113 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %retval.0.i.ph, ptr %digest_info113, align 4
  %cra_name39 = getelementptr inbounds %struct.akcipher_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 1, i32 0, i32 8
  %cra_name42 = getelementptr i8, ptr %7, i32 40
  %call44 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %cra_name39, i32 noundef 128, ptr noundef nonnull @.str.1, ptr noundef %cra_name42, ptr noundef %call15)
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %call44)
  %cmp45 = icmp sgt i32 %call44, 127
  br i1 %cmp45, label %if.end37.err_free_inst_crit_edge, label %if.end47

if.end37.err_free_inst_crit_edge:                 ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_free_inst

if.end47:                                         ; preds = %if.end37
  %cra_driver_name49 = getelementptr inbounds %struct.akcipher_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 1, i32 0, i32 9
  %cra_driver_name52 = getelementptr i8, ptr %7, i32 168
  %call54 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %cra_driver_name49, i32 noundef 128, ptr noundef nonnull @.str.1, ptr noundef %cra_driver_name52, ptr noundef %call15)
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %call54)
  %cmp55 = icmp sgt i32 %call54, 127
  br i1 %cmp55, label %if.end47.err_free_inst_crit_edge, label %if.end47.if.end58_crit_edge

if.end47.if.end58_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end58

if.end47.err_free_inst_crit_edge:                 ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_free_inst

if.end58:                                         ; preds = %if.end47.if.end58_crit_edge, %if.end23.if.end58_crit_edge
  %cra_priority = getelementptr i8, ptr %7, i32 32
  %12 = ptrtoint ptr %cra_priority to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cra_priority, align 32
  %14 = getelementptr inbounds %struct.akcipher_instance, ptr %call7.i.i, i32 0, i32 2
  %cra_priority61 = getelementptr inbounds %struct.akcipher_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 1, i32 0, i32 6
  %15 = ptrtoint ptr %cra_priority61 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %13, ptr %cra_priority61, align 32
  %cra_ctxsize = getelementptr inbounds %struct.akcipher_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 1, i32 0, i32 4
  %16 = ptrtoint ptr %cra_ctxsize to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 8, ptr %cra_ctxsize, align 8
  %init = getelementptr inbounds %struct.akcipher_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 0, i32 28
  %17 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @pkcs1pad_init_tfm, ptr %init, align 4
  %exit = getelementptr inbounds %struct.akcipher_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 0, i32 32
  %18 = ptrtoint ptr %exit to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @pkcs1pad_exit_tfm, ptr %exit, align 32
  %encrypt = getelementptr inbounds %struct.akcipher_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 0, i32 8
  %19 = ptrtoint ptr %encrypt to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @pkcs1pad_encrypt, ptr %encrypt, align 8
  %decrypt = getelementptr inbounds %struct.akcipher_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 0, i32 12
  %20 = ptrtoint ptr %decrypt to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @pkcs1pad_decrypt, ptr %decrypt, align 4
  %21 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @pkcs1pad_sign, ptr %14, align 128
  %verify = getelementptr inbounds %struct.akcipher_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 0, i32 4
  %22 = ptrtoint ptr %verify to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @pkcs1pad_verify, ptr %verify, align 4
  %set_pub_key = getelementptr inbounds %struct.akcipher_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 0, i32 16
  %23 = ptrtoint ptr %set_pub_key to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @pkcs1pad_set_pub_key, ptr %set_pub_key, align 16
  %set_priv_key = getelementptr inbounds %struct.akcipher_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 0, i32 20
  %24 = ptrtoint ptr %set_priv_key to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @pkcs1pad_set_priv_key, ptr %set_priv_key, align 4
  %max_size = getelementptr inbounds %struct.akcipher_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 0, i32 24
  %25 = ptrtoint ptr %max_size to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @pkcs1pad_get_max_size, ptr %max_size, align 8
  %reqsize = getelementptr i8, ptr %7, i32 -92
  %26 = ptrtoint ptr %reqsize to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %reqsize, align 4
  %add = add i32 %27, 256
  %reqsize63 = getelementptr inbounds %struct.akcipher_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 0, i32 36
  %28 = ptrtoint ptr %reqsize63 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %add, ptr %reqsize63, align 4
  %29 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @pkcs1pad_free, ptr %call7.i.i, align 128
  %call64 = call i32 @akcipher_register_instance(ptr noundef %tmpl, ptr noundef nonnull %call7.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %if.end58.cleanup_crit_edge, label %if.end58.err_free_inst_crit_edge

if.end58.err_free_inst_crit_edge:                 ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_free_inst

if.end58.cleanup_crit_edge:                       ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

err_free_inst:                                    ; preds = %if.end58.err_free_inst_crit_edge, %if.end47.err_free_inst_crit_edge, %if.end37.err_free_inst_crit_edge, %rsa_lookup_asn1.exit, %if.end23.err_free_inst_crit_edge, %if.then17.err_free_inst_crit_edge, %if.end4.err_free_inst_crit_edge
  %err.0 = phi i32 [ %call8, %if.end4.err_free_inst_crit_edge ], [ -36, %if.then17.err_free_inst_crit_edge ], [ -36, %if.end23.err_free_inst_crit_edge ], [ %call64, %if.end58.err_free_inst_crit_edge ], [ -36, %if.end37.err_free_inst_crit_edge ], [ -36, %if.end47.err_free_inst_crit_edge ], [ -22, %rsa_lookup_asn1.exit ]
  call void @crypto_drop_spawn(ptr noundef %__ctx.i.i) #9
  call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %err_free_inst, %if.end58.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %err.0, %err_free_inst ], [ 0, %if.end58.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask) #9
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_check_attr_type(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_grab_akcipher(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_attr_alg_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pkcs1pad_init_tfm(ptr nocapture noundef %tfm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 3
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
define internal void @pkcs1pad_exit_tfm(ptr nocapture noundef readonly %tfm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 5
  %0 = ptrtoint ptr %__crt_ctx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__crt_ctx.i, align 4
  tail call void @crypto_destroy_tfm(ptr noundef %1, ptr noundef %1) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pkcs1pad_encrypt(ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_tfm, ptr %1, i32 0, i32 5
  %__ctx.i = getelementptr inbounds %struct.akcipher_request, ptr %req, i32 0, i32 6
  %key_size = getelementptr inbounds %struct.crypto_tfm, ptr %1, i32 1, i32 1
  %2 = ptrtoint ptr %key_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %key_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %src_len = getelementptr inbounds %struct.akcipher_request, ptr %req, i32 0, i32 3
  %4 = ptrtoint ptr %src_len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %src_len, align 32
  %sub = add i32 %3, -11
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %sub)
  %cmp = icmp ugt i32 %5, %sub
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %dst_len = getelementptr inbounds %struct.akcipher_request, ptr %req, i32 0, i32 4
  %6 = ptrtoint ptr %dst_len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dst_len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %3)
  %cmp7 = icmp ult i32 %7, %3
  br i1 %cmp7, label %if.then8, label %if.end8.i

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %dst_len to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %3, ptr %dst_len, align 4
  br label %cleanup

if.end8.i:                                        ; preds = %if.end5
  %9 = xor i32 %5, -1
  %sub15 = add i32 %3, %9
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %sub15, i32 noundef 3264) #14
  %in_buf = getelementptr inbounds %struct.akcipher_request, ptr %req, i32 1, i32 5, i32 20
  %10 = ptrtoint ptr %in_buf to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call9.i, ptr %in_buf, align 4
  %tobool18.not = icmp eq ptr %call9.i, null
  br i1 %tobool18.not, label %if.end8.i.cleanup_crit_edge, label %if.end20

if.end8.i.cleanup_crit_edge:                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end20:                                         ; preds = %if.end8.i
  %11 = ptrtoint ptr %key_size to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %key_size, align 4
  %13 = ptrtoint ptr %src_len to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %src_len, align 32
  %sub23 = sub i32 %12, %14
  %sub24 = add i32 %sub23, -2
  %15 = ptrtoint ptr %call9.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 2, ptr %call9.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub24)
  %cmp26102 = icmp ugt i32 %sub24, 1
  br i1 %cmp26102, label %if.end20.for.body_crit_edge, label %if.end20.for.end_crit_edge

if.end20.for.end_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end20.for.body_crit_edge:                      ; preds = %if.end20
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end20.for.body_crit_edge
  %i.0103 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 1, %if.end20.for.body_crit_edge ]
  %call.i = tail call i32 @prandom_u32() #9
  %conv.i = zext i32 %call.i to i64
  %mul.i = mul nuw nsw i64 %conv.i, 255
  %shr.i = lshr i64 %mul.i, 32
  %16 = trunc i64 %shr.i to i8
  %conv = add nuw i8 %16, 1
  %17 = ptrtoint ptr %in_buf to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %in_buf, align 4
  %arrayidx29 = getelementptr i8, ptr %18, i32 %i.0103
  %19 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv, ptr %arrayidx29, align 1
  %inc = add nuw i32 %i.0103, 1
  %exitcond.not = icmp eq i32 %inc, %sub24
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end20.for.end_crit_edge
  %20 = ptrtoint ptr %in_buf to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %in_buf, align 4
  %arrayidx31 = getelementptr i8, ptr %21, i32 %sub24
  %22 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %arrayidx31, align 1
  %23 = load ptr, ptr %in_buf, align 4
  %24 = ptrtoint ptr %key_size to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %key_size, align 4
  %26 = ptrtoint ptr %src_len to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %src_len, align 32
  %28 = xor i32 %27, -1
  %sub36 = add i32 %25, %28
  %src = getelementptr inbounds %struct.akcipher_request, ptr %req, i32 0, i32 1
  %29 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %src, align 8
  tail call fastcc void @pkcs1pad_sg_set_buf(ptr noundef %__ctx.i, ptr noundef %23, i32 noundef %sub36, ptr noundef %30)
  %child_req = getelementptr inbounds %struct.akcipher_request, ptr %req, i32 2
  %31 = ptrtoint ptr %__crt_ctx.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %__crt_ctx.i, align 4
  %tfm1.i = getelementptr inbounds %struct.akcipher_request, ptr %req, i32 2, i32 0, i32 3
  %33 = ptrtoint ptr %tfm1.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %32, ptr %tfm1.i, align 16
  %flags = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 4
  %34 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %flags, align 4
  %complete.i = getelementptr inbounds %struct.akcipher_request, ptr %req, i32 2, i32 0, i32 1
  %36 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @pkcs1pad_encrypt_sign_complete_cb, ptr %complete.i, align 8
  %data2.i = getelementptr inbounds %struct.akcipher_request, ptr %req, i32 2, i32 0, i32 2
  %37 = ptrtoint ptr %data2.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %req, ptr %data2.i, align 4
  %flags.i = getelementptr inbounds %struct.akcipher_request, ptr %req, i32 2, i32 0, i32 4
  %38 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %35, ptr %flags.i, align 4
  %dst = getelementptr inbounds %struct.akcipher_request, ptr %req, i32 0, i32 2
  %39 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dst, align 4
  %41 = ptrtoint ptr %key_size to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %key_size, align 4
  %sub42 = add i32 %42, -1
  %43 = ptrtoint ptr %dst_len to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %dst_len, align 4
  %src1.i = getelementptr inbounds %struct.akcipher_request, ptr %req, i32 2, i32 1
  %45 = ptrtoint ptr %src1.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %__ctx.i, ptr %src1.i, align 8
  %dst2.i = getelementptr inbounds %struct.akcipher_request, ptr %req, i32 2, i32 2
  %46 = ptrtoint ptr %dst2.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %40, ptr %dst2.i, align 4
  %src_len3.i = getelementptr inbounds %struct.akcipher_request, ptr %req, i32 2, i32 3
  %47 = ptrtoint ptr %src_len3.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %sub42, ptr %src_len3.i, align 32
  %dst_len4.i = getelementptr inbounds %struct.akcipher_request, ptr %req, i32 2, i32 4
  %48 = ptrtoint ptr %dst_len4.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %44, ptr %dst_len4.i, align 4
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %32, i32 0, i32 3
  %49 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %__crt_alg.i.i, align 4
  tail call void @crypto_stats_get(ptr noundef %50) #9
  %encrypt.i = getelementptr i8, ptr %50, i32 -120
  %51 = ptrtoint ptr %encrypt.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %encrypt.i, align 8
  %call3.i = tail call i32 %52(ptr noundef %child_req) #9
  tail call void @crypto_stats_akcipher_encrypt(i32 noundef %sub42, i32 noundef %call3.i, ptr noundef %50) #9
  %53 = zext i32 %call3.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %53, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call3.i, label %if.then50 [
    i32 -115, label %for.end.cleanup_crit_edge
    i32 -16, label %for.end.cleanup_crit_edge104
  ]

for.end.cleanup_crit_edge104:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then50:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %call51 = tail call fastcc i32 @pkcs1pad_encrypt_sign_complete(ptr noundef %req, i32 noundef %call3.i)
  br label %cleanup

cleanup:                                          ; preds = %if.then50, %for.end.cleanup_crit_edge, %for.end.cleanup_crit_edge104, %if.end8.i.cleanup_crit_edge, %if.then8, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -75, %if.then8 ], [ %call51, %if.then50 ], [ -22, %entry.cleanup_crit_edge ], [ -75, %if.end.cleanup_crit_edge ], [ -12, %if.end8.i.cleanup_crit_edge ], [ %call3.i, %for.end.cleanup_crit_edge ], [ %call3.i, %for.end.cleanup_crit_edge104 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pkcs1pad_decrypt(ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_tfm, ptr %1, i32 0, i32 5
  %key_size = getelementptr inbounds %struct.crypto_tfm, ptr %1, i32 1, i32 1
  %2 = ptrtoint ptr %key_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %key_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %src_len = getelementptr inbounds %struct.akcipher_request, ptr %req, i32 0, i32 3
  %4 = ptrtoint ptr %src_len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %src_len, align 32
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %3)
  %cmp.not = icmp eq i32 %5, %3
  br i1 %cmp.not, label %if.end8.i, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end8.i:                                        ; preds = %lor.lhs.false
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %3, i32 noundef 3264) #14
  %out_buf = getelementptr inbounds %struct.akcipher_request, ptr %req, i32 1, i32 5, i32 24
  %6 = ptrtoint ptr %out_buf to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call9.i, ptr %out_buf, align 64
  %tobool7.not = icmp eq ptr %call9.i, null
  br i1 %tobool7.not, label %if.end8.i.cleanup_crit_edge, label %if.end9

if.end8.i.cleanup_crit_edge:                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end9:                                          ; preds = %if.end8.i
  %out_sg = getelementptr inbounds %struct.akcipher_request, ptr %req, i32 1, i32 5
  %7 = ptrtoint ptr %key_size to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %key_size, align 4
  tail call void @sg_init_table(ptr noundef %out_sg, i32 noundef 1) #9
  %9 = ptrtoint ptr %call9.i to i32
  %cmp.i.i51 = icmp ugt ptr %call9.i, inttoptr (i32 -1073741825 to ptr)
  br i1 %cmp.i.i51, label %land.lhs.true.i.i, label %if.end9.do.body5.i.i_crit_edge, !prof !48

if.end9.do.body5.i.i_crit_edge:                   ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body5.i.i

land.lhs.true.i.i:                                ; preds = %if.end9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %10 = load ptr, ptr @high_memory, align 4
  %cmp1.i.i = icmp ugt ptr %10, %call9.i
  br i1 %cmp1.i.i, label %land.rhs.i.i, label %land.lhs.true.i.i.do.body5.i.i_crit_edge, !prof !48

land.lhs.true.i.i.do.body5.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body5.i.i

land.rhs.i.i:                                     ; preds = %land.lhs.true.i.i
  %sub.i.i = add i32 %9, 1073741824
  %shr.i.i = lshr i32 %sub.i.i, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %11 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i.i = add i32 %11, %shr.i.i
  %call.i.i = tail call i32 @pfn_valid(i32 noundef %add.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.i.i, label %land.rhs.i.i.do.body5.i.i_crit_edge, label %do.end8.i.i, !prof !49

land.rhs.i.i.do.body5.i.i_crit_edge:              ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body5.i.i

do.body5.i.i:                                     ; preds = %land.rhs.i.i.do.body5.i.i_crit_edge, %land.lhs.true.i.i.do.body5.i.i_crit_edge, %if.end9.do.body5.i.i_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 160, 0\0A.popsection", ""() #9, !srcloc !50
  unreachable

do.end8.i.i:                                      ; preds = %land.rhs.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %12 = load ptr, ptr @mem_map, align 4
  %add.ptr.i.i = getelementptr %struct.page, ptr %12, i32 %shr.i.i
  %13 = ptrtoint ptr %out_sg to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %out_sg, align 4
  %15 = ptrtoint ptr %add.ptr.i.i to i32
  %and2.i.i.i.i = and i32 %15, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and2.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %do.body11.i.i.i.i, label %do.body5.i.i.i.i, !prof !48

do.body5.i.i.i.i:                                 ; preds = %do.end8.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #9, !srcloc !51
  unreachable

do.body11.i.i.i.i:                                ; preds = %do.end8.i.i
  %and.i.i.i.i.i = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.i.not.i.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i.i, label %pkcs1pad_sg_set_buf.exit, label %do.body19.i.i.i.i, !prof !48

do.body19.i.i.i.i:                                ; preds = %do.body11.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #9, !srcloc !52
  unreachable

pkcs1pad_sg_set_buf.exit:                         ; preds = %do.body11.i.i.i.i
  %and.i.i = and i32 %9, 3968
  %and.i.i.i.i = and i32 %14, 3
  %or.i.i.i.i = or i32 %and.i.i.i.i, %15
  %16 = ptrtoint ptr %out_sg to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %or.i.i.i.i, ptr %out_sg, align 4
  %offset1.i.i.i = getelementptr inbounds %struct.akcipher_request, ptr %req, i32 1, i32 5, i32 4
  %17 = ptrtoint ptr %offset1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %and.i.i, ptr %offset1.i.i.i, align 4
  %length.i.i.i = getelementptr inbounds %struct.akcipher_request, ptr %req, i32 1, i32 5, i32 8
  %18 = ptrtoint ptr %length.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %8, ptr %length.i.i.i, align 4
  %child_req = getelementptr inbounds %struct.akcipher_request, ptr %req, i32 2
  %19 = ptrtoint ptr %__crt_ctx.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %__crt_ctx.i, align 4
  %tfm1.i = getelementptr inbounds %struct.akcipher_request, ptr %req, i32 2, i32 0, i32 3
  %21 = ptrtoint ptr %tfm1.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %20, ptr %tfm1.i, align 16
  %flags = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 4
  %22 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %flags, align 4
  %complete.i = getelementptr inbounds %struct.akcipher_request, ptr %req, i32 2, i32 0, i32 1
  %24 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @pkcs1pad_decrypt_complete_cb, ptr %complete.i, align 8
  %data2.i = getelementptr inbounds %struct.akcipher_request, ptr %req, i32 2, i32 0, i32 2
  %25 = ptrtoint ptr %data2.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %req, ptr %data2.i, align 4
  %flags.i = getelementptr inbounds %struct.akcipher_request, ptr %req, i32 2, i32 0, i32 4
  %26 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %23, ptr %flags.i, align 4
  %src = getelementptr inbounds %struct.akcipher_request, ptr %req, i32 0, i32 1
  %27 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %src, align 8
  %29 = ptrtoint ptr %src_len to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %src_len, align 32
  %31 = ptrtoint ptr %key_size to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %key_size, align 4
  %src1.i = getelementptr inbounds %struct.akcipher_request, ptr %req, i32 2, i32 1
  %33 = ptrtoint ptr %src1.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %28, ptr %src1.i, align 8
  %dst2.i = getelementptr inbounds %struct.akcipher_request, ptr %req, i32 2, i32 2
  %34 = ptrtoint ptr %dst2.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %out_sg, ptr %dst2.i, align 4
  %src_len3.i = getelementptr inbounds %struct.akcipher_request, ptr %req, i32 2, i32 3
  %35 = ptrtoint ptr %src_len3.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %30, ptr %src_len3.i, align 32
  %dst_len4.i = getelementptr inbounds %struct.akcipher_request, ptr %req, i32 2, i32 4
  %36 = ptrtoint ptr %dst_len4.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %32, ptr %dst_len4.i, align 4
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %20, i32 0, i32 3
  %37 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %__crt_alg.i.i, align 4
  tail call void @crypto_stats_get(ptr noundef %38) #9
  %decrypt.i = getelementptr i8, ptr %38, i32 -116
  %39 = ptrtoint ptr %decrypt.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %decrypt.i, align 4
  %call3.i = tail call i32 %40(ptr noundef %child_req) #9
  tail call void @crypto_stats_akcipher_decrypt(i32 noundef %30, i32 noundef %call3.i, ptr noundef %38) #9
  %41 = zext i32 %call3.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values.10)
  switch i32 %call3.i, label %if.then22 [
    i32 -115, label %pkcs1pad_sg_set_buf.exit.cleanup_crit_edge
    i32 -16, label %pkcs1pad_sg_set_buf.exit.cleanup_crit_edge53
  ]

pkcs1pad_sg_set_buf.exit.cleanup_crit_edge53:     ; preds = %pkcs1pad_sg_set_buf.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

pkcs1pad_sg_set_buf.exit.cleanup_crit_edge:       ; preds = %pkcs1pad_sg_set_buf.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then22:                                        ; preds = %pkcs1pad_sg_set_buf.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call23 = tail call fastcc i32 @pkcs1pad_decrypt_complete(ptr noundef %req, i32 noundef %call3.i)
  br label %cleanup

cleanup:                                          ; preds = %if.then22, %pkcs1pad_sg_set_buf.exit.cleanup_crit_edge, %pkcs1pad_sg_set_buf.exit.cleanup_crit_edge53, %if.end8.i.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call23, %if.then22 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end8.i.cleanup_crit_edge ], [ %call3.i, %pkcs1pad_sg_set_buf.exit.cleanup_crit_edge ], [ %call3.i, %pkcs1pad_sg_set_buf.exit.cleanup_crit_edge53 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pkcs1pad_sign(ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_tfm, ptr %1, i32 0, i32 5
  %__ctx.i = getelementptr inbounds %struct.akcipher_request, ptr %req, i32 0, i32 6
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %__crt_alg.i.i, align 4
  %digest_info5 = getelementptr i8, ptr %3, i32 668
  %4 = ptrtoint ptr %digest_info5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %digest_info5, align 4
  %key_size = getelementptr inbounds %struct.crypto_tfm, ptr %1, i32 1, i32 1
  %6 = ptrtoint ptr %key_size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %key_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool6.not = icmp eq ptr %5, null
  br i1 %tobool6.not, label %if.end.if.end8_crit_edge, label %if.then7

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %size = getelementptr inbounds %struct.rsa_asn1_template, ptr %5, i32 0, i32 2
  %8 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %size, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end.if.end8_crit_edge
  %digest_size.0 = phi i32 [ %9, %if.then7 ], [ 0, %if.end.if.end8_crit_edge ]
  %src_len = getelementptr inbounds %struct.akcipher_request, ptr %req, i32 0, i32 3
  %10 = ptrtoint ptr %src_len to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %src_len, align 32
  %add = add i32 %11, %digest_size.0
  %sub = add i32 %7, -11
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %sub)
  %cmp = icmp ugt i32 %add, %sub
  br i1 %cmp, label %if.end8.cleanup_crit_edge, label %if.end11

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end11:                                         ; preds = %if.end8
  %dst_len = getelementptr inbounds %struct.akcipher_request, ptr %req, i32 0, i32 4
  %12 = ptrtoint ptr %dst_len to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dst_len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %7)
  %cmp13 = icmp ult i32 %13, %7
  br i1 %cmp13, label %if.then14, label %if.end8.i

if.then14:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %dst_len to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %7, ptr %dst_len, align 4
  br label %cleanup

if.end8.i:                                        ; preds = %if.end11
  %15 = xor i32 %11, -1
  %sub21 = add i32 %7, %15
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %sub21, i32 noundef 3264) #14
  %in_buf = getelementptr inbounds %struct.akcipher_request, ptr %req, i32 1, i32 5, i32 20
  %16 = ptrtoint ptr %in_buf to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call9.i, ptr %in_buf, align 4
  %tobool24.not = icmp eq ptr %call9.i, null
  br i1 %tobool24.not, label %if.end8.i.cleanup_crit_edge, label %if.end26

if.end8.i.cleanup_crit_edge:                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end26:                                         ; preds = %if.end8.i
  %17 = ptrtoint ptr %key_size to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %key_size, align 4
  %19 = ptrtoint ptr %src_len to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %src_len, align 32
  %21 = add i32 %digest_size.0, %20
  %sub30 = sub i32 %18, %21
  %sub31 = add i32 %sub30, -2
  %22 = ptrtoint ptr %call9.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %call9.i, align 128
  %23 = ptrtoint ptr %in_buf to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %in_buf, align 4
  %add.ptr = getelementptr i8, ptr %24, i32 1
  %sub34 = add i32 %sub30, -3
  %25 = call ptr @memset(ptr %add.ptr, i32 255, i32 %sub34)
  %26 = load ptr, ptr %in_buf, align 4
  %arrayidx36 = getelementptr i8, ptr %26, i32 %sub31
  %27 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %arrayidx36, align 1
  br i1 %tobool6.not, label %if.end26.if.end43_crit_edge, label %if.then38

if.end26.if.end43_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end43

if.then38:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  %28 = ptrtoint ptr %in_buf to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %in_buf, align 4
  %add.ptr40 = getelementptr i8, ptr %29, i32 %sub31
  %add.ptr41 = getelementptr i8, ptr %add.ptr40, i32 1
  %data = getelementptr inbounds %struct.rsa_asn1_template, ptr %5, i32 0, i32 1
  %30 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %data, align 4
  %size42 = getelementptr inbounds %struct.rsa_asn1_template, ptr %5, i32 0, i32 2
  %32 = ptrtoint ptr %size42 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %size42, align 4
  %34 = call ptr @memcpy(ptr %add.ptr41, ptr %31, i32 %33)
  br label %if.end43

if.end43:                                         ; preds = %if.then38, %if.end26.if.end43_crit_edge
  %35 = ptrtoint ptr %in_buf to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %in_buf, align 4
  %37 = ptrtoint ptr %key_size to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %key_size, align 4
  %39 = ptrtoint ptr %src_len to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %src_len, align 32
  %41 = xor i32 %40, -1
  %sub48 = add i32 %38, %41
  %src = getelementptr inbounds %struct.akcipher_request, ptr %req, i32 0, i32 1
  %42 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %src, align 8
  tail call fastcc void @pkcs1pad_sg_set_buf(ptr noundef %__ctx.i, ptr noundef %36, i32 noundef %sub48, ptr noundef %43)
  %child_req = getelementptr inbounds %struct.akcipher_request, ptr %req, i32 2
  %44 = ptrtoint ptr %__crt_ctx.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %__crt_ctx.i, align 4
  %tfm1.i = getelementptr inbounds %struct.akcipher_request, ptr %req, i32 2, i32 0, i32 3
  %46 = ptrtoint ptr %tfm1.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %45, ptr %tfm1.i, align 16
  %flags = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 4
  %47 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %flags, align 4
  %complete.i = getelementptr inbounds %struct.akcipher_request, ptr %req, i32 2, i32 0, i32 1
  %49 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr @pkcs1pad_encrypt_sign_complete_cb, ptr %complete.i, align 8
  %data2.i = getelementptr inbounds %struct.akcipher_request, ptr %req, i32 2, i32 0, i32 2
  %50 = ptrtoint ptr %data2.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %req, ptr %data2.i, align 4
  %flags.i = getelementptr inbounds %struct.akcipher_request, ptr %req, i32 2, i32 0, i32 4
  %51 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %48, ptr %flags.i, align 4
  %dst = getelementptr inbounds %struct.akcipher_request, ptr %req, i32 0, i32 2
  %52 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dst, align 4
  %54 = ptrtoint ptr %key_size to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %key_size, align 4
  %sub54 = add i32 %55, -1
  %56 = ptrtoint ptr %dst_len to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %dst_len, align 4
  %src1.i = getelementptr inbounds %struct.akcipher_request, ptr %req, i32 2, i32 1
  %58 = ptrtoint ptr %src1.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %__ctx.i, ptr %src1.i, align 8
  %dst2.i = getelementptr inbounds %struct.akcipher_request, ptr %req, i32 2, i32 2
  %59 = ptrtoint ptr %dst2.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %53, ptr %dst2.i, align 4
  %src_len3.i = getelementptr inbounds %struct.akcipher_request, ptr %req, i32 2, i32 3
  %60 = ptrtoint ptr %src_len3.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %sub54, ptr %src_len3.i, align 32
  %dst_len4.i = getelementptr inbounds %struct.akcipher_request, ptr %req, i32 2, i32 4
  %61 = ptrtoint ptr %dst_len4.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %57, ptr %dst_len4.i, align 4
  %__crt_alg.i.i117 = getelementptr inbounds %struct.crypto_tfm, ptr %45, i32 0, i32 3
  %62 = ptrtoint ptr %__crt_alg.i.i117 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %__crt_alg.i.i117, align 4
  tail call void @crypto_stats_get(ptr noundef %63) #9
  %decrypt.i = getelementptr i8, ptr %63, i32 -116
  %64 = ptrtoint ptr %decrypt.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %decrypt.i, align 4
  %call3.i = tail call i32 %65(ptr noundef %child_req) #9
  tail call void @crypto_stats_akcipher_decrypt(i32 noundef %sub54, i32 noundef %call3.i, ptr noundef %63) #9
  %66 = zext i32 %call3.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %66, ptr @__sancov_gen_cov_switch_values.11)
  switch i32 %call3.i, label %if.then60 [
    i32 -115, label %if.end43.cleanup_crit_edge
    i32 -16, label %if.end43.cleanup_crit_edge125
  ]

if.end43.cleanup_crit_edge125:                    ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end43.cleanup_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then60:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  %call61 = tail call fastcc i32 @pkcs1pad_encrypt_sign_complete(ptr noundef %req, i32 noundef %call3.i)
  br label %cleanup

cleanup:                                          ; preds = %if.then60, %if.end43.cleanup_crit_edge, %if.end43.cleanup_crit_edge125, %if.end8.i.cleanup_crit_edge, %if.then14, %if.end8.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -75, %if.then14 ], [ %call61, %if.then60 ], [ -22, %entry.cleanup_crit_edge ], [ -75, %if.end8.cleanup_crit_edge ], [ -12, %if.end8.i.cleanup_crit_edge ], [ %call3.i, %if.end43.cleanup_crit_edge ], [ %call3.i, %if.end43.cleanup_crit_edge125 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pkcs1pad_verify(ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_tfm, ptr %1, i32 0, i32 5
  %dst = getelementptr inbounds %struct.akcipher_request, ptr %req, i32 0, i32 2
  %2 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dst, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %lor.lhs.false.critedge, label %do.end, !prof !48

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 539, i32 noundef 9, ptr noundef null) #9
  br label %cleanup

lor.lhs.false.critedge:                           ; preds = %entry
  %dst_len = getelementptr inbounds %struct.akcipher_request, ptr %req, i32 0, i32 4
  %4 = ptrtoint ptr %dst_len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dst_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool24.not = icmp eq i32 %5, 0
  br i1 %tobool24.not, label %do.end42, label %lor.lhs.false57.critedge, !prof !49

do.end42:                                         ; preds = %lor.lhs.false.critedge
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 540, i32 noundef 9, ptr noundef null) #9
  br label %cleanup

lor.lhs.false57.critedge:                         ; preds = %lor.lhs.false.critedge
  %key_size = getelementptr inbounds %struct.crypto_tfm, ptr %1, i32 1, i32 1
  %6 = ptrtoint ptr %key_size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %key_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool58.not = icmp eq i32 %7, 0
  br i1 %tobool58.not, label %lor.lhs.false57.critedge.cleanup_crit_edge, label %lor.lhs.false59

lor.lhs.false57.critedge.cleanup_crit_edge:       ; preds = %lor.lhs.false57.critedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false59:                                  ; preds = %lor.lhs.false57.critedge
  %src_len = getelementptr inbounds %struct.akcipher_request, ptr %req, i32 0, i32 3
  %8 = ptrtoint ptr %src_len to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %src_len, align 32
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %7)
  %cmp = icmp ult i32 %9, %7
  br i1 %cmp, label %lor.lhs.false59.cleanup_crit_edge, label %if.end8.i

lor.lhs.false59.cleanup_crit_edge:                ; preds = %lor.lhs.false59
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end8.i:                                        ; preds = %lor.lhs.false59
  %add = add i32 %7, %5
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3264) #14
  %out_buf = getelementptr inbounds %struct.akcipher_request, ptr %req, i32 1, i32 5, i32 24
  %10 = ptrtoint ptr %out_buf to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call9.i, ptr %out_buf, align 64
  %tobool67.not = icmp eq ptr %call9.i, null
  br i1 %tobool67.not, label %if.end8.i.cleanup_crit_edge, label %if.end69

if.end8.i.cleanup_crit_edge:                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end69:                                         ; preds = %if.end8.i
  %out_sg = getelementptr inbounds %struct.akcipher_request, ptr %req, i32 1, i32 5
  %11 = ptrtoint ptr %key_size to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %key_size, align 4
  tail call void @sg_init_table(ptr noundef %out_sg, i32 noundef 1) #9
  %13 = ptrtoint ptr %call9.i to i32
  %cmp.i.i117 = icmp ugt ptr %call9.i, inttoptr (i32 -1073741825 to ptr)
  br i1 %cmp.i.i117, label %land.lhs.true.i.i, label %if.end69.do.body5.i.i_crit_edge, !prof !48

if.end69.do.body5.i.i_crit_edge:                  ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body5.i.i

land.lhs.true.i.i:                                ; preds = %if.end69
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %14 = load ptr, ptr @high_memory, align 4
  %cmp1.i.i = icmp ugt ptr %14, %call9.i
  br i1 %cmp1.i.i, label %land.rhs.i.i, label %land.lhs.true.i.i.do.body5.i.i_crit_edge, !prof !48

land.lhs.true.i.i.do.body5.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body5.i.i

land.rhs.i.i:                                     ; preds = %land.lhs.true.i.i
  %sub.i.i = add i32 %13, 1073741824
  %shr.i.i = lshr i32 %sub.i.i, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %15 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i.i = add i32 %15, %shr.i.i
  %call.i.i = tail call i32 @pfn_valid(i32 noundef %add.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.i.i, label %land.rhs.i.i.do.body5.i.i_crit_edge, label %do.end8.i.i, !prof !49

land.rhs.i.i.do.body5.i.i_crit_edge:              ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body5.i.i

do.body5.i.i:                                     ; preds = %land.rhs.i.i.do.body5.i.i_crit_edge, %land.lhs.true.i.i.do.body5.i.i_crit_edge, %if.end69.do.body5.i.i_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 160, 0\0A.popsection", ""() #9, !srcloc !50
  unreachable

do.end8.i.i:                                      ; preds = %land.rhs.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %16 = load ptr, ptr @mem_map, align 4
  %add.ptr.i.i = getelementptr %struct.page, ptr %16, i32 %shr.i.i
  %17 = ptrtoint ptr %out_sg to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %out_sg, align 4
  %19 = ptrtoint ptr %add.ptr.i.i to i32
  %and2.i.i.i.i = and i32 %19, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and2.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %do.body11.i.i.i.i, label %do.body5.i.i.i.i, !prof !48

do.body5.i.i.i.i:                                 ; preds = %do.end8.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #9, !srcloc !51
  unreachable

do.body11.i.i.i.i:                                ; preds = %do.end8.i.i
  %and.i.i.i.i.i = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.i.not.i.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i.i, label %pkcs1pad_sg_set_buf.exit, label %do.body19.i.i.i.i, !prof !48

do.body19.i.i.i.i:                                ; preds = %do.body11.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #9, !srcloc !52
  unreachable

pkcs1pad_sg_set_buf.exit:                         ; preds = %do.body11.i.i.i.i
  %and.i.i = and i32 %13, 3968
  %and.i.i.i.i = and i32 %18, 3
  %or.i.i.i.i = or i32 %and.i.i.i.i, %19
  %20 = ptrtoint ptr %out_sg to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %or.i.i.i.i, ptr %out_sg, align 4
  %offset1.i.i.i = getelementptr inbounds %struct.akcipher_request, ptr %req, i32 1, i32 5, i32 4
  %21 = ptrtoint ptr %offset1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %and.i.i, ptr %offset1.i.i.i, align 4
  %length.i.i.i = getelementptr inbounds %struct.akcipher_request, ptr %req, i32 1, i32 5, i32 8
  %22 = ptrtoint ptr %length.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %12, ptr %length.i.i.i, align 4
  %child_req = getelementptr inbounds %struct.akcipher_request, ptr %req, i32 2
  %23 = ptrtoint ptr %__crt_ctx.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %__crt_ctx.i, align 4
  %tfm1.i = getelementptr inbounds %struct.akcipher_request, ptr %req, i32 2, i32 0, i32 3
  %25 = ptrtoint ptr %tfm1.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %24, ptr %tfm1.i, align 16
  %flags = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 4
  %26 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %flags, align 4
  %complete.i = getelementptr inbounds %struct.akcipher_request, ptr %req, i32 2, i32 0, i32 1
  %28 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @pkcs1pad_verify_complete_cb, ptr %complete.i, align 8
  %data2.i = getelementptr inbounds %struct.akcipher_request, ptr %req, i32 2, i32 0, i32 2
  %29 = ptrtoint ptr %data2.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %req, ptr %data2.i, align 4
  %flags.i = getelementptr inbounds %struct.akcipher_request, ptr %req, i32 2, i32 0, i32 4
  %30 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %27, ptr %flags.i, align 4
  %src = getelementptr inbounds %struct.akcipher_request, ptr %req, i32 0, i32 1
  %31 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %src, align 8
  %33 = ptrtoint ptr %src_len to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %src_len, align 32
  %35 = ptrtoint ptr %key_size to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %key_size, align 4
  %src1.i = getelementptr inbounds %struct.akcipher_request, ptr %req, i32 2, i32 1
  %37 = ptrtoint ptr %src1.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %32, ptr %src1.i, align 8
  %dst2.i = getelementptr inbounds %struct.akcipher_request, ptr %req, i32 2, i32 2
  %38 = ptrtoint ptr %dst2.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %out_sg, ptr %dst2.i, align 4
  %src_len3.i = getelementptr inbounds %struct.akcipher_request, ptr %req, i32 2, i32 3
  %39 = ptrtoint ptr %src_len3.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %34, ptr %src_len3.i, align 32
  %dst_len4.i = getelementptr inbounds %struct.akcipher_request, ptr %req, i32 2, i32 4
  %40 = ptrtoint ptr %dst_len4.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %36, ptr %dst_len4.i, align 4
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %24, i32 0, i32 3
  %41 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %__crt_alg.i.i, align 4
  tail call void @crypto_stats_get(ptr noundef %42) #9
  %encrypt.i = getelementptr i8, ptr %42, i32 -120
  %43 = ptrtoint ptr %encrypt.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %encrypt.i, align 8
  %call3.i = tail call i32 %44(ptr noundef %child_req) #9
  tail call void @crypto_stats_akcipher_encrypt(i32 noundef %34, i32 noundef %call3.i, ptr noundef %42) #9
  %45 = zext i32 %call3.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values.12)
  switch i32 %call3.i, label %if.then82 [
    i32 -115, label %pkcs1pad_sg_set_buf.exit.cleanup_crit_edge
    i32 -16, label %pkcs1pad_sg_set_buf.exit.cleanup_crit_edge123
  ]

pkcs1pad_sg_set_buf.exit.cleanup_crit_edge123:    ; preds = %pkcs1pad_sg_set_buf.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

pkcs1pad_sg_set_buf.exit.cleanup_crit_edge:       ; preds = %pkcs1pad_sg_set_buf.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then82:                                        ; preds = %pkcs1pad_sg_set_buf.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call83 = tail call fastcc i32 @pkcs1pad_verify_complete(ptr noundef %req, i32 noundef %call3.i)
  br label %cleanup

cleanup:                                          ; preds = %if.then82, %pkcs1pad_sg_set_buf.exit.cleanup_crit_edge, %pkcs1pad_sg_set_buf.exit.cleanup_crit_edge123, %if.end8.i.cleanup_crit_edge, %lor.lhs.false59.cleanup_crit_edge, %lor.lhs.false57.critedge.cleanup_crit_edge, %do.end42, %do.end
  %retval.0 = phi i32 [ %call83, %if.then82 ], [ -22, %do.end42 ], [ -22, %do.end ], [ -22, %lor.lhs.false59.cleanup_crit_edge ], [ -22, %lor.lhs.false57.critedge.cleanup_crit_edge ], [ -12, %if.end8.i.cleanup_crit_edge ], [ %call3.i, %pkcs1pad_sg_set_buf.exit.cleanup_crit_edge ], [ %call3.i, %pkcs1pad_sg_set_buf.exit.cleanup_crit_edge123 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pkcs1pad_set_pub_key(ptr nocapture noundef %tfm, ptr noundef %key, i32 noundef %keylen) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 5
  %key_size = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 1
  %0 = ptrtoint ptr %key_size to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %key_size, align 4
  %1 = ptrtoint ptr %__crt_ctx.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %__crt_ctx.i, align 4
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %__crt_alg.i.i, align 4
  %set_pub_key.i = getelementptr i8, ptr %4, i32 -112
  %5 = ptrtoint ptr %set_pub_key.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %set_pub_key.i, align 16
  %call1.i = tail call i32 %6(ptr noundef %2, ptr noundef %key, i32 noundef %keylen) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not = icmp eq i32 %call1.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %__crt_ctx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %__crt_ctx.i, align 4
  %__crt_alg.i.i14 = getelementptr inbounds %struct.crypto_tfm, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %__crt_alg.i.i14 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %__crt_alg.i.i14, align 4
  %max_size.i = getelementptr i8, ptr %10, i32 -104
  %11 = ptrtoint ptr %max_size.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %max_size.i, align 8
  %call1.i15 = tail call i32 %12(ptr noundef %8) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %call1.i15)
  %cmp = icmp ugt i32 %call1.i15, 4096
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %key_size to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %call1.i15, ptr %key_size, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end5 ], [ %call1.i, %entry.cleanup_crit_edge ], [ -524, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pkcs1pad_set_priv_key(ptr nocapture noundef %tfm, ptr noundef %key, i32 noundef %keylen) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 5
  %key_size = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 1
  %0 = ptrtoint ptr %key_size to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %key_size, align 4
  %1 = ptrtoint ptr %__crt_ctx.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %__crt_ctx.i, align 4
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %__crt_alg.i.i, align 4
  %set_priv_key.i = getelementptr i8, ptr %4, i32 -108
  %5 = ptrtoint ptr %set_priv_key.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %set_priv_key.i, align 4
  %call1.i = tail call i32 %6(ptr noundef %2, ptr noundef %key, i32 noundef %keylen) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not = icmp eq i32 %call1.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %__crt_ctx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %__crt_ctx.i, align 4
  %__crt_alg.i.i14 = getelementptr inbounds %struct.crypto_tfm, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %__crt_alg.i.i14 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %__crt_alg.i.i14, align 4
  %max_size.i = getelementptr i8, ptr %10, i32 -104
  %11 = ptrtoint ptr %max_size.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %max_size.i, align 8
  %call1.i15 = tail call i32 %12(ptr noundef %8) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %call1.i15)
  %cmp = icmp ugt i32 %call1.i15, 4096
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %key_size to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %call1.i15, ptr %key_size, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end5 ], [ %call1.i, %entry.cleanup_crit_edge ], [ -524, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @pkcs1pad_get_max_size(ptr nocapture noundef readonly %tfm) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %key_size = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 1
  %0 = ptrtoint ptr %key_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %key_size, align 4
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pkcs1pad_free(ptr noundef %inst) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx.i.i = getelementptr inbounds %struct.akcipher_instance, ptr %inst, i32 1
  tail call void @crypto_drop_spawn(ptr noundef %__ctx.i.i) #9
  tail call void @kfree(ptr noundef %inst) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @akcipher_register_instance(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_spawn_tfm2(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_destroy_tfm(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pkcs1pad_sg_set_buf(ptr noundef %sg, ptr noundef %buf, i32 noundef %len, ptr noundef %next) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %next, null
  %cond = select i1 %tobool.not, i32 1, i32 2
  tail call void @sg_init_table(ptr noundef %sg, i32 noundef %cond) #9
  %0 = ptrtoint ptr %buf to i32
  %cmp.i = icmp ugt ptr %buf, inttoptr (i32 -1073741825 to ptr)
  br i1 %cmp.i, label %land.lhs.true.i, label %entry.do.body5.i_crit_edge, !prof !48

entry.do.body5.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body5.i

land.lhs.true.i:                                  ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %1 = load ptr, ptr @high_memory, align 4
  %cmp1.i = icmp ugt ptr %1, %buf
  br i1 %cmp1.i, label %land.rhs.i, label %land.lhs.true.i.do.body5.i_crit_edge, !prof !48

land.lhs.true.i.do.body5.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body5.i

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %sub.i = add i32 %0, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %2 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i = add i32 %2, %shr.i
  %call.i = tail call i32 @pfn_valid(i32 noundef %add.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.i = icmp eq i32 %call.i, 0
  br i1 %tobool.i, label %land.rhs.i.do.body5.i_crit_edge, label %do.end8.i, !prof !49

land.rhs.i.do.body5.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body5.i

do.body5.i:                                       ; preds = %land.rhs.i.do.body5.i_crit_edge, %land.lhs.true.i.do.body5.i_crit_edge, %entry.do.body5.i_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 160, 0\0A.popsection", ""() #9, !srcloc !50
  unreachable

do.end8.i:                                        ; preds = %land.rhs.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %3 = load ptr, ptr @mem_map, align 4
  %add.ptr.i = getelementptr %struct.page, ptr %3, i32 %shr.i
  %4 = ptrtoint ptr %sg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sg, align 4
  %6 = ptrtoint ptr %add.ptr.i to i32
  %and2.i.i.i = and i32 %6, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and2.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %do.body11.i.i.i, label %do.body5.i.i.i, !prof !48

do.body5.i.i.i:                                   ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #9, !srcloc !51
  unreachable

do.body11.i.i.i:                                  ; preds = %do.end8.i
  %and.i.i.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.i.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i, label %sg_set_buf.exit, label %do.body19.i.i.i, !prof !48

do.body19.i.i.i:                                  ; preds = %do.body11.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #9, !srcloc !52
  unreachable

sg_set_buf.exit:                                  ; preds = %do.body11.i.i.i
  %and.i = and i32 %0, 4095
  %and.i.i.i = and i32 %5, 3
  %or.i.i.i = or i32 %and.i.i.i, %6
  %7 = ptrtoint ptr %sg to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %or.i.i.i, ptr %sg, align 4
  %offset1.i.i = getelementptr inbounds %struct.scatterlist, ptr %sg, i32 0, i32 1
  %8 = ptrtoint ptr %offset1.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %and.i, ptr %offset1.i.i, align 4
  %length.i.i = getelementptr inbounds %struct.scatterlist, ptr %sg, i32 0, i32 2
  %9 = ptrtoint ptr %length.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %len, ptr %length.i.i, align 4
  br i1 %tobool.not, label %sg_set_buf.exit.if.end_crit_edge, label %if.then

sg_set_buf.exit.if.end_crit_edge:                 ; preds = %sg_set_buf.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %sg_set_buf.exit
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i7 = add nsw i32 %cond, -1
  %arrayidx.i = getelementptr %struct.scatterlist, ptr %sg, i32 %sub.i7
  %offset.i.i = getelementptr %struct.scatterlist, ptr %sg, i32 %sub.i7, i32 1
  %10 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %offset.i.i, align 4
  %length.i.i8 = getelementptr %struct.scatterlist, ptr %sg, i32 %sub.i7, i32 2
  %11 = ptrtoint ptr %length.i.i8 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %length.i.i8, align 4
  %12 = ptrtoint ptr %next to i32
  %or.i.i = and i32 %12, -4
  %and.i.i = or i32 %or.i.i, 1
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %and.i.i, ptr %arrayidx.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %sg_set_buf.exit.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pkcs1pad_encrypt_sign_complete_cb(ptr nocapture noundef readonly %child_async_req, i32 noundef %err) #0 align 64 {
entry:
  %async_req = alloca %struct.crypto_async_request, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.crypto_async_request, ptr %child_async_req, i32 0, i32 2
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %async_req) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -115, i32 %err)
  %cmp = icmp eq i32 %err, -115
  %2 = call ptr @memset(ptr %async_req, i32 255, i32 12)
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %3 = getelementptr inbounds %struct.crypto_async_request, ptr %async_req, i32 0, i32 4
  %4 = getelementptr inbounds %struct.crypto_async_request, ptr %async_req, i32 0, i32 3
  %5 = getelementptr inbounds %struct.crypto_async_request, ptr %async_req, i32 0, i32 2
  %data1 = getelementptr inbounds %struct.crypto_async_request, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data1, align 4
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %5, align 4
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %1, i32 0, i32 3
  %9 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %tfm.i, align 16
  %11 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %4, align 4
  %flags = getelementptr inbounds %struct.crypto_async_request, ptr %child_async_req, i32 0, i32 4
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags, align 4
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %3, align 4
  %complete = getelementptr inbounds %struct.crypto_async_request, ptr %1, i32 0, i32 1
  %15 = ptrtoint ptr %complete to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %complete, align 8
  %call6 = tail call fastcc i32 @pkcs1pad_encrypt_sign_complete(ptr noundef %1, i32 noundef %err)
  call void %16(ptr noundef nonnull %async_req, i32 noundef %call6) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %async_req) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pkcs1pad_encrypt_sign_complete(ptr nocapture noundef %req, i32 noundef %err) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err)
  %tobool.not = icmp eq i32 %err, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end:                                           ; preds = %entry
  %dst_len = getelementptr inbounds %struct.akcipher_request, ptr %req, i32 2, i32 4
  %2 = ptrtoint ptr %dst_len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dst_len, align 4
  %key_size = getelementptr inbounds %struct.crypto_tfm, ptr %1, i32 1, i32 1
  %4 = ptrtoint ptr %key_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %key_size, align 4
  %sub = sub i32 %5, %3
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %3)
  %tobool3.not = icmp eq i32 %5, %3
  br i1 %tobool3.not, label %if.end.out_crit_edge, label %if.end8.i.i, !prof !48

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end8.i.i:                                      ; preds = %if.end
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %5, i32 noundef 3520) #14
  %tobool11.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool11.not, label %if.end8.i.i.out_crit_edge, label %if.end13

if.end8.i.i.out_crit_edge:                        ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end13:                                         ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %dst = getelementptr inbounds %struct.akcipher_request, ptr %req, i32 0, i32 2
  %6 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dst, align 4
  %conv = zext i32 %3 to i64
  %call15 = tail call i32 @sg_nents_for_len(ptr noundef %7, i64 noundef %conv) #9
  %add.ptr = getelementptr i8, ptr %call9.i.i, i32 %sub
  %call16 = tail call i32 @sg_copy_to_buffer(ptr noundef %7, i32 noundef %call15, ptr noundef %add.ptr, i32 noundef %3) #9
  %8 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dst, align 4
  %10 = ptrtoint ptr %key_size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %key_size, align 4
  %conv20 = zext i32 %11 to i64
  %call21 = tail call i32 @sg_nents_for_len(ptr noundef %9, i64 noundef %conv20) #9
  %12 = ptrtoint ptr %key_size to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %key_size, align 4
  %call23 = tail call i32 @sg_copy_from_buffer(ptr noundef %9, i32 noundef %call21, ptr noundef nonnull %call9.i.i, i32 noundef %13) #9
  tail call void @kfree_sensitive(ptr noundef nonnull %call9.i.i) #9
  br label %out

out:                                              ; preds = %if.end13, %if.end8.i.i.out_crit_edge, %if.end.out_crit_edge, %entry.out_crit_edge
  %err.addr.0 = phi i32 [ %err, %entry.out_crit_edge ], [ 0, %if.end.out_crit_edge ], [ -12, %if.end13 ], [ -12, %if.end8.i.i.out_crit_edge ]
  %key_size24 = getelementptr inbounds %struct.crypto_tfm, ptr %1, i32 1, i32 1
  %14 = ptrtoint ptr %key_size24 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %key_size24, align 4
  %dst_len25 = getelementptr inbounds %struct.akcipher_request, ptr %req, i32 0, i32 4
  %16 = ptrtoint ptr %dst_len25 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %dst_len25, align 4
  %in_buf = getelementptr inbounds %struct.akcipher_request, ptr %req, i32 1, i32 5, i32 20
  %17 = ptrtoint ptr %in_buf to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %in_buf, align 4
  tail call void @kfree(ptr noundef %18) #9
  ret i32 %err.addr.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prandom_u32() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_table(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pfn_valid(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_stats_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_stats_akcipher_encrypt(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_copy_to_buffer(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_nents_for_len(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_copy_from_buffer(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_sensitive(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pkcs1pad_decrypt_complete_cb(ptr nocapture noundef readonly %child_async_req, i32 noundef %err) #0 align 64 {
entry:
  %async_req = alloca %struct.crypto_async_request, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.crypto_async_request, ptr %child_async_req, i32 0, i32 2
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %async_req) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -115, i32 %err)
  %cmp = icmp eq i32 %err, -115
  %2 = call ptr @memset(ptr %async_req, i32 255, i32 12)
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %3 = getelementptr inbounds %struct.crypto_async_request, ptr %async_req, i32 0, i32 4
  %4 = getelementptr inbounds %struct.crypto_async_request, ptr %async_req, i32 0, i32 3
  %5 = getelementptr inbounds %struct.crypto_async_request, ptr %async_req, i32 0, i32 2
  %data1 = getelementptr inbounds %struct.crypto_async_request, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data1, align 4
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %5, align 4
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %1, i32 0, i32 3
  %9 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %tfm.i, align 16
  %11 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %4, align 4
  %flags = getelementptr inbounds %struct.crypto_async_request, ptr %child_async_req, i32 0, i32 4
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags, align 4
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %3, align 4
  %complete = getelementptr inbounds %struct.crypto_async_request, ptr %1, i32 0, i32 1
  %15 = ptrtoint ptr %complete to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %complete, align 8
  %call6 = tail call fastcc i32 @pkcs1pad_decrypt_complete(ptr noundef %1, i32 noundef %err)
  call void %16(ptr noundef nonnull %async_req, i32 noundef %call6) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %async_req) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pkcs1pad_decrypt_complete(ptr nocapture noundef %req, i32 noundef %err) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err)
  %tobool.not = icmp eq i32 %err, 0
  br i1 %tobool.not, label %if.end, label %entry.done_crit_edge

entry.done_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

if.end:                                           ; preds = %entry
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %dst_len3 = getelementptr inbounds %struct.akcipher_request, ptr %req, i32 2, i32 4
  %2 = ptrtoint ptr %dst_len3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dst_len3, align 4
  %key_size = getelementptr inbounds %struct.crypto_tfm, ptr %1, i32 1, i32 1
  %4 = ptrtoint ptr %key_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %key_size, align 4
  %sub = add i32 %5, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %sub)
  %cmp = icmp ult i32 %3, %sub
  br i1 %cmp, label %if.end.done_crit_edge, label %if.end5

if.end.done_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

if.end5:                                          ; preds = %if.end
  %out_buf6 = getelementptr inbounds %struct.akcipher_request, ptr %req, i32 1, i32 5, i32 24
  %6 = ptrtoint ptr %out_buf6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %out_buf6, align 64
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp8 = icmp eq i32 %3, %5
  br i1 %cmp8, label %if.then9, label %if.end5.if.end14_crit_edge

if.end5.if.end14_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.then9:                                         ; preds = %if.end5
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp10.not = icmp eq i8 %9, 0
  br i1 %cmp10.not, label %if.end13, label %if.then9.done_crit_edge

if.then9.done_crit_edge:                          ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

if.end13:                                         ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  %dec = add i32 %3, -1
  %incdec.ptr = getelementptr i8, ptr %7, i32 1
  br label %if.end14

if.end14:                                         ; preds = %if.end13, %if.end5.if.end14_crit_edge
  %dst_len.0 = phi i32 [ %dec, %if.end13 ], [ %3, %if.end5.if.end14_crit_edge ]
  %out_buf.0 = phi ptr [ %incdec.ptr, %if.end13 ], [ %7, %if.end5.if.end14_crit_edge ]
  %10 = ptrtoint ptr %out_buf.0 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %out_buf.0, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %11)
  %cmp17.not = icmp eq i8 %11, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dst_len.0)
  %cmp2184 = icmp ugt i32 %dst_len.0, 1
  %or.cond92 = select i1 %cmp17.not, i1 %cmp2184, i1 false
  br i1 %or.cond92, label %if.end14.for.body_crit_edge, label %if.end14.done_crit_edge

if.end14.done_crit_edge:                          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

if.end14.for.body_crit_edge:                      ; preds = %if.end14
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end14.for.body_crit_edge
  %pos.085 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 1, %if.end14.for.body_crit_edge ]
  %arrayidx23 = getelementptr i8, ptr %out_buf.0, i32 %pos.085
  %12 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx23, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %cmp25 = icmp eq i8 %13, 0
  br i1 %cmp25, label %for.end, label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %pos.085, 1
  %exitcond.not = icmp eq i32 %inc, %dst_len.0
  br i1 %exitcond.not, label %for.inc.done_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.done_crit_edge:                           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %pos.085)
  %cmp29 = icmp ult i32 %pos.085, 9
  call void @__sanitizer_cov_trace_cmp4(i32 %pos.085, i32 %dst_len.0)
  %cmp31 = icmp eq i32 %pos.085, %dst_len.0
  %or.cond = select i1 %cmp29, i1 true, i1 %cmp31
  br i1 %or.cond, label %for.end.done_crit_edge, label %if.end34

for.end.done_crit_edge:                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

if.end34:                                         ; preds = %for.end
  %inc35 = add i32 %pos.085, 1
  %dst_len36 = getelementptr inbounds %struct.akcipher_request, ptr %req, i32 0, i32 4
  %14 = ptrtoint ptr %dst_len36 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dst_len36, align 4
  %sub37 = sub i32 %dst_len.0, %inc35
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %sub37)
  %cmp38 = icmp ult i32 %15, %sub37
  %16 = ptrtoint ptr %dst_len36 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %sub37, ptr %dst_len36, align 4
  br i1 %cmp38, label %if.end34.done_crit_edge, label %if.then45

if.end34.done_crit_edge:                          ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

if.then45:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  %dst = getelementptr inbounds %struct.akcipher_request, ptr %req, i32 0, i32 2
  %17 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dst, align 4
  %conv48 = zext i32 %sub37 to i64
  %call49 = tail call i32 @sg_nents_for_len(ptr noundef %18, i64 noundef %conv48) #9
  %add.ptr = getelementptr i8, ptr %out_buf.0, i32 %inc35
  %19 = ptrtoint ptr %dst_len36 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %dst_len36, align 4
  %call51 = tail call i32 @sg_copy_from_buffer(ptr noundef %18, i32 noundef %call49, ptr noundef %add.ptr, i32 noundef %20) #9
  br label %done

done:                                             ; preds = %if.then45, %if.end34.done_crit_edge, %for.end.done_crit_edge, %for.inc.done_crit_edge, %if.end14.done_crit_edge, %if.then9.done_crit_edge, %if.end.done_crit_edge, %entry.done_crit_edge
  %err.addr.0 = phi i32 [ %err, %entry.done_crit_edge ], [ -22, %if.end.done_crit_edge ], [ -22, %if.then9.done_crit_edge ], [ -22, %if.end14.done_crit_edge ], [ -22, %for.end.done_crit_edge ], [ -75, %if.end34.done_crit_edge ], [ 0, %if.then45 ], [ -22, %for.inc.done_crit_edge ]
  %out_buf53 = getelementptr inbounds %struct.akcipher_request, ptr %req, i32 1, i32 5, i32 24
  %21 = ptrtoint ptr %out_buf53 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %out_buf53, align 64
  tail call void @kfree_sensitive(ptr noundef %22) #9
  ret i32 %err.addr.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_stats_akcipher_decrypt(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pkcs1pad_verify_complete_cb(ptr nocapture noundef readonly %child_async_req, i32 noundef %err) #0 align 64 {
entry:
  %async_req = alloca %struct.crypto_async_request, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.crypto_async_request, ptr %child_async_req, i32 0, i32 2
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %async_req) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -115, i32 %err)
  %cmp = icmp eq i32 %err, -115
  %2 = call ptr @memset(ptr %async_req, i32 255, i32 12)
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %3 = getelementptr inbounds %struct.crypto_async_request, ptr %async_req, i32 0, i32 4
  %4 = getelementptr inbounds %struct.crypto_async_request, ptr %async_req, i32 0, i32 3
  %5 = getelementptr inbounds %struct.crypto_async_request, ptr %async_req, i32 0, i32 2
  %data1 = getelementptr inbounds %struct.crypto_async_request, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data1, align 4
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %5, align 4
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %1, i32 0, i32 3
  %9 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %tfm.i, align 16
  %11 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %4, align 4
  %flags = getelementptr inbounds %struct.crypto_async_request, ptr %child_async_req, i32 0, i32 4
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags, align 4
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %3, align 4
  %complete = getelementptr inbounds %struct.crypto_async_request, ptr %1, i32 0, i32 1
  %15 = ptrtoint ptr %complete to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %complete, align 8
  %call6 = tail call fastcc i32 @pkcs1pad_verify_complete(ptr noundef %1, i32 noundef %err)
  call void %16(ptr noundef nonnull %async_req, i32 noundef %call6) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %async_req) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pkcs1pad_verify_complete(ptr nocapture noundef %req, i32 noundef %err) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %__crt_alg.i.i, align 4
  %digest_info5 = getelementptr i8, ptr %3, i32 668
  %4 = ptrtoint ptr %digest_info5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %digest_info5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err)
  %tobool.not = icmp eq i32 %err, 0
  br i1 %tobool.not, label %if.end, label %entry.done_crit_edge

entry.done_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

if.end:                                           ; preds = %entry
  %dst_len6 = getelementptr inbounds %struct.akcipher_request, ptr %req, i32 2, i32 4
  %6 = ptrtoint ptr %dst_len6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dst_len6, align 4
  %key_size = getelementptr inbounds %struct.crypto_tfm, ptr %1, i32 1, i32 1
  %8 = ptrtoint ptr %key_size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %key_size, align 4
  %sub = add i32 %9, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %sub)
  %cmp = icmp ult i32 %7, %sub
  br i1 %cmp, label %if.end.done_crit_edge, label %if.end8

if.end.done_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

if.end8:                                          ; preds = %if.end
  %out_buf9 = getelementptr inbounds %struct.akcipher_request, ptr %req, i32 1, i32 5, i32 24
  %10 = ptrtoint ptr %out_buf9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %out_buf9, align 64
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp11 = icmp eq i32 %7, %9
  br i1 %cmp11, label %if.then12, label %if.end8.if.end17_crit_edge

if.end8.if.end17_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

if.then12:                                        ; preds = %if.end8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %11, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %cmp13.not = icmp eq i8 %13, 0
  br i1 %cmp13.not, label %if.end16, label %if.then12.done_crit_edge

if.then12.done_crit_edge:                         ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

if.end16:                                         ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #11
  %dec = add i32 %7, -1
  %incdec.ptr = getelementptr i8, ptr %11, i32 1
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %if.end8.if.end17_crit_edge
  %dst_len.0 = phi i32 [ %dec, %if.end16 ], [ %7, %if.end8.if.end17_crit_edge ]
  %out_buf.0 = phi ptr [ %incdec.ptr, %if.end16 ], [ %11, %if.end8.if.end17_crit_edge ]
  %14 = ptrtoint ptr %out_buf.0 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %out_buf.0, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %15)
  %cmp20.not = icmp eq i8 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dst_len.0)
  %cmp24129 = icmp ugt i32 %dst_len.0, 1
  %or.cond137 = select i1 %cmp20.not, i1 %cmp24129, i1 false
  br i1 %or.cond137, label %if.end17.for.body_crit_edge, label %if.end17.done_crit_edge

if.end17.done_crit_edge:                          ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

if.end17.for.body_crit_edge:                      ; preds = %if.end17
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end17.for.body_crit_edge
  %pos.0130 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 1, %if.end17.for.body_crit_edge ]
  %arrayidx26 = getelementptr i8, ptr %out_buf.0, i32 %pos.0130
  %16 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx26, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %17)
  %cmp28.not = icmp eq i8 %17, -1
  br i1 %cmp28.not, label %for.inc, label %for.end

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %pos.0130, 1
  %exitcond.not = icmp eq i32 %inc, %dst_len.0
  br i1 %exitcond.not, label %for.inc.done_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.done_crit_edge:                           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %pos.0130)
  %cmp32 = icmp ult i32 %pos.0130, 9
  call void @__sanitizer_cov_trace_cmp4(i32 %pos.0130, i32 %dst_len.0)
  %cmp34 = icmp eq i32 %pos.0130, %dst_len.0
  %or.cond = select i1 %cmp32, i1 true, i1 %cmp34
  br i1 %or.cond, label %for.end.done_crit_edge, label %lor.lhs.false36

for.end.done_crit_edge:                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

lor.lhs.false36:                                  ; preds = %for.end
  %arrayidx37 = getelementptr i8, ptr %out_buf.0, i32 %pos.0130
  %18 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx37, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %cmp39.not = icmp eq i8 %19, 0
  br i1 %cmp39.not, label %if.end42, label %lor.lhs.false36.done_crit_edge

lor.lhs.false36.done_crit_edge:                   ; preds = %lor.lhs.false36
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

if.end42:                                         ; preds = %lor.lhs.false36
  %inc43 = add i32 %pos.0130, 1
  %tobool44.not = icmp eq ptr %5, null
  br i1 %tobool44.not, label %if.end42.if.end51_crit_edge, label %if.then45

if.end42.if.end51_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end51

if.then45:                                        ; preds = %if.end42
  %add.ptr = getelementptr i8, ptr %out_buf.0, i32 %inc43
  %data = getelementptr inbounds %struct.rsa_asn1_template, ptr %5, i32 0, i32 1
  %20 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data, align 4
  %size = getelementptr inbounds %struct.rsa_asn1_template, ptr %5, i32 0, i32 2
  %22 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %size, align 4
  %call.i = tail call i32 @__crypto_memneq(ptr noundef %add.ptr, ptr noundef %21, i32 noundef %23) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not.i.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not.i.not, label %if.end49, label %if.then45.done_crit_edge

if.then45.done_crit_edge:                         ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

if.end49:                                         ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %size, align 4
  %add = add i32 %25, %inc43
  br label %if.end51

if.end51:                                         ; preds = %if.end49, %if.end42.if.end51_crit_edge
  %pos.1 = phi i32 [ %add, %if.end49 ], [ %inc43, %if.end42.if.end51_crit_edge ]
  %dst_len52 = getelementptr inbounds %struct.akcipher_request, ptr %req, i32 0, i32 4
  %26 = ptrtoint ptr %dst_len52 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %dst_len52, align 4
  %sub53 = sub i32 %dst_len.0, %pos.1
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %sub53)
  %cmp54.not = icmp eq i32 %27, %sub53
  br i1 %cmp54.not, label %if.end59, label %if.then56

if.then56:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #11
  %28 = ptrtoint ptr %dst_len52 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %sub53, ptr %dst_len52, align 4
  br label %done

if.end59:                                         ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #11
  %src = getelementptr inbounds %struct.akcipher_request, ptr %req, i32 0, i32 1
  %29 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %src, align 8
  %src_len = getelementptr inbounds %struct.akcipher_request, ptr %req, i32 0, i32 3
  %31 = ptrtoint ptr %src_len to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %src_len, align 32
  %add62 = add i32 %32, %27
  %conv63 = zext i32 %add62 to i64
  %call64 = tail call i32 @sg_nents_for_len(ptr noundef %30, i64 noundef %conv63) #9
  %33 = ptrtoint ptr %out_buf9 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %out_buf9, align 64
  %35 = ptrtoint ptr %key_size to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %key_size, align 4
  %add.ptr67 = getelementptr i8, ptr %34, i32 %36
  %37 = ptrtoint ptr %dst_len52 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %dst_len52, align 4
  %call70 = tail call i32 @sg_pcopy_to_buffer(ptr noundef %30, i32 noundef %call64, ptr noundef %add.ptr67, i32 noundef %38, i32 noundef %36) #9
  %39 = ptrtoint ptr %out_buf9 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %out_buf9, align 64
  %41 = ptrtoint ptr %key_size to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %key_size, align 4
  %add.ptr73 = getelementptr i8, ptr %40, i32 %42
  %add.ptr74 = getelementptr i8, ptr %out_buf.0, i32 %pos.1
  %43 = ptrtoint ptr %dst_len52 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %dst_len52, align 4
  %bcmp = tail call i32 @bcmp(ptr %add.ptr73, ptr %add.ptr74, i32 %44) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp77.not = icmp eq i32 %bcmp, 0
  %spec.select = select i1 %cmp77.not, i32 0, i32 -129
  br label %done

done:                                             ; preds = %if.end59, %if.then56, %if.then45.done_crit_edge, %lor.lhs.false36.done_crit_edge, %for.end.done_crit_edge, %for.inc.done_crit_edge, %if.end17.done_crit_edge, %if.then12.done_crit_edge, %if.end.done_crit_edge, %entry.done_crit_edge
  %err.addr.0 = phi i32 [ %err, %entry.done_crit_edge ], [ -22, %if.end.done_crit_edge ], [ -22, %if.then12.done_crit_edge ], [ -74, %if.end17.done_crit_edge ], [ -74, %for.end.done_crit_edge ], [ -74, %lor.lhs.false36.done_crit_edge ], [ -74, %if.then45.done_crit_edge ], [ -129, %if.then56 ], [ %spec.select, %if.end59 ], [ -74, %for.inc.done_crit_edge ]
  %out_buf81 = getelementptr inbounds %struct.akcipher_request, ptr %req, i32 1, i32 5, i32 24
  %45 = ptrtoint ptr %out_buf81 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %out_buf81, align 64
  tail call void @kfree_sensitive(ptr noundef %46) #9
  ret i32 %err.addr.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_pcopy_to_buffer(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__crypto_memneq(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_drop_spawn(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly nofree nounwind readonly willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { nobuiltin nounwind }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36}
!llvm.module.flags = !{!38, !39, !40, !41, !42, !43, !44, !45}
!llvm.ident = !{!46}

!0 = !{ptr @rsa_pkcs1pad_tmpl, !1, !"rsa_pkcs1pad_tmpl", i1 false, i1 false}
!1 = !{!"../crypto/rsa-pkcs1pad.c", i32 681, i32 24}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../crypto/rsa-pkcs1pad.c", i32 628, i32 30}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../crypto/rsa-pkcs1pad.c", i32 645, i32 9}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../crypto/rsa-pkcs1pad.c", i32 70, i32 2}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../crypto/rsa-pkcs1pad.c", i32 71, i32 2}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../crypto/rsa-pkcs1pad.c", i32 72, i32 2}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../crypto/rsa-pkcs1pad.c", i32 73, i32 2}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../crypto/rsa-pkcs1pad.c", i32 74, i32 2}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../crypto/rsa-pkcs1pad.c", i32 75, i32 2}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../crypto/rsa-pkcs1pad.c", i32 76, i32 2}
!20 = !{ptr @rsa_asn1_templates, !21, !"rsa_asn1_templates", i1 false, i1 false}
!21 = !{!"../crypto/rsa-pkcs1pad.c", i32 68, i32 3}
!22 = !{ptr @rsa_digest_info_md5, !23, !"rsa_digest_info_md5", i1 false, i1 false}
!23 = !{!"../crypto/rsa-pkcs1pad.c", i32 22, i32 17}
!24 = !{ptr @rsa_digest_info_sha1, !25, !"rsa_digest_info_sha1", i1 false, i1 false}
!25 = !{!"../crypto/rsa-pkcs1pad.c", i32 28, i32 17}
!26 = !{ptr @rsa_digest_info_rmd160, !27, !"rsa_digest_info_rmd160", i1 false, i1 false}
!27 = !{!"../crypto/rsa-pkcs1pad.c", i32 34, i32 17}
!28 = !{ptr @rsa_digest_info_sha256, !29, !"rsa_digest_info_sha256", i1 false, i1 false}
!29 = !{!"../crypto/rsa-pkcs1pad.c", i32 46, i32 17}
!30 = !{ptr @rsa_digest_info_sha384, !31, !"rsa_digest_info_sha384", i1 false, i1 false}
!31 = !{!"../crypto/rsa-pkcs1pad.c", i32 52, i32 17}
!32 = !{ptr @rsa_digest_info_sha512, !33, !"rsa_digest_info_sha512", i1 false, i1 false}
!33 = !{!"../crypto/rsa-pkcs1pad.c", i32 58, i32 17}
!34 = !{ptr @rsa_digest_info_sha224, !35, !"rsa_digest_info_sha224", i1 false, i1 false}
!35 = !{!"../crypto/rsa-pkcs1pad.c", i32 40, i32 17}
!36 = !{ptr @.str.9, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../crypto/rsa-pkcs1pad.c", i32 539, i32 6}
!38 = !{i32 1, !"wchar_size", i32 2}
!39 = !{i32 1, !"min_enum_size", i32 4}
!40 = !{i32 8, !"branch-target-enforcement", i32 0}
!41 = !{i32 8, !"sign-return-address", i32 0}
!42 = !{i32 8, !"sign-return-address-all", i32 0}
!43 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!44 = !{i32 7, !"uwtable", i32 1}
!45 = !{i32 7, !"frame-pointer", i32 2}
!46 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!47 = !{!"auto-init"}
!48 = !{!"branch_weights", i32 2000, i32 1}
!49 = !{!"branch_weights", i32 1, i32 2000}
!50 = !{i64 2153716582, i64 2153717074, i64 2153716619, i64 2153716675, i64 2153716709, i64 2153716733, i64 2153716774, i64 2153716795, i64 2153716823, i64 2153716857}
!51 = !{i64 2153710263, i64 2153710755, i64 2153710300, i64 2153710356, i64 2153710390, i64 2153710414, i64 2153710455, i64 2153710476, i64 2153710504, i64 2153710538}
!52 = !{i64 2153711873, i64 2153712365, i64 2153711910, i64 2153711966, i64 2153712000, i64 2153712024, i64 2153712065, i64 2153712086, i64 2153712114, i64 2153712148}
