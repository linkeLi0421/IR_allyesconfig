; ModuleID = '/llk/IR_all_yes/net/sunrpc/auth_gss/gss_krb5_crypto.c_pt.bc'
source_filename = "../net/sunrpc/auth_gss/gss_krb5_crypto.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.crypto_skcipher = type { i32, [124 x i8], %struct.crypto_tfm }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [112 x i8], [0 x ptr] }
%struct.crypto_alg = type { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, %struct.refcount_struct, [128 x i8], [128 x i8], ptr, %union.anon.103, ptr, ptr, ptr, ptr, %union.anon.104, [120 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%union.anon.103 = type { %struct.cipher_alg }
%struct.cipher_alg = type { i32, i32, ptr, ptr, ptr }
%union.anon.104 = type { %struct.crypto_istat_akcipher }
%struct.crypto_istat_akcipher = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%struct.skcipher_request = type { i32, ptr, ptr, ptr, %struct.crypto_async_request, [88 x i8], [0 x ptr] }
%struct.crypto_async_request = type { %struct.list_head, ptr, ptr, ptr, i32 }
%struct.krb5_ctx = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], [32 x i8], %struct.atomic_t, %struct.atomic64_t, i64, %struct.xdr_netobj, [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8] }
%struct.xdr_netobj = type { i32, ptr }
%struct.gss_krb5_enctype = type { i32, i32, ptr, ptr, ptr, i16, i16, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.crypto_ahash = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, [92 x i8], %struct.crypto_tfm }
%struct.ahash_request = type { %struct.crypto_async_request, i32, ptr, ptr, ptr, [88 x i8], [0 x ptr] }
%struct.xdr_buf = type { [1 x %struct.kvec], [1 x %struct.kvec], ptr, ptr, i32, i32, i32, i32, i32 }
%struct.kvec = type { ptr, i32 }
%struct.encryptor_desc = type { [16 x i8], ptr, i32, ptr, ptr, [4 x %struct.scatterlist], [4 x %struct.scatterlist], i32, i32 }
%struct.decryptor_desc = type { [16 x i8], ptr, [4 x %struct.scatterlist], i32, i32 }

@rpc_debug = external dso_local local_unnamed_addr global i32, align 4
@krb5_encrypt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 72, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"RPC:       gss_k5encrypt: tfm iv size too large %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"krb5_encrypt\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"net/sunrpc/auth_gss/gss_krb5_crypto.c\00", [58 x i8] zeroinitializer }, align 32
@krb5_encrypt._entry_ptr = internal global ptr @krb5_encrypt._entry, section ".printk_index", align 4
@krb5_encrypt._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 89, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"RPC:       krb5_encrypt returns %d\0A\00", [60 x i8] zeroinitializer }, align 32
@krb5_encrypt._entry_ptr.5 = internal global ptr @krb5_encrypt._entry.3, section ".printk_index", align 4
@krb5_decrypt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 111, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"RPC:       gss_k5decrypt: tfm iv size too large %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"krb5_decrypt\00", [19 x i8] zeroinitializer }, align 32
@krb5_decrypt._entry_ptr = internal global ptr @krb5_decrypt._entry, section ".printk_index", align 4
@krb5_decrypt._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.7, ptr @.str.2, i32 127, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"RPC:       gss_k5decrypt returns %d\0A\00", [59 x i8] zeroinitializer }, align 32
@krb5_decrypt._entry_ptr.10 = internal global ptr @krb5_decrypt._entry.8, section ".printk_index", align 4
@make_checksum._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.2, i32 160, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%s: checksum buffer length, %u, too small for %s\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"make_checksum\00", [18 x i8] zeroinitializer }, align 32
@make_checksum._entry_ptr = internal global ptr @make_checksum._entry, section ".printk_index", align 4
@make_checksum_v2._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.2, i32 251, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: expected keyed hash for %s\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"make_checksum_v2\00", [47 x i8] zeroinitializer }, align 32
@make_checksum_v2._entry_ptr = internal global ptr @make_checksum_v2._entry, section ".printk_index", align 4
@make_checksum_v2._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.14, ptr @.str.2, i32 256, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: no key supplied for %s\0A\00", [36 x i8] zeroinitializer }, align 32
@make_checksum_v2._entry_ptr.17 = internal global ptr @make_checksum_v2._entry.15, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 7, i64 12]
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 71, i32 3 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 89, i32 2 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 110, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 127, i32 2 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 159, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 250, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.72 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.73 = private constant [41 x i8] c"../net/sunrpc/auth_gss/gss_krb5_crypto.c\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 255, i32 3 }
@llvm.compiler.used = appending global [26 x ptr] [ptr @krb5_decrypt._entry, ptr @krb5_decrypt._entry.8, ptr @krb5_decrypt._entry_ptr, ptr @krb5_decrypt._entry_ptr.10, ptr @krb5_encrypt._entry, ptr @krb5_encrypt._entry.3, ptr @krb5_encrypt._entry_ptr, ptr @krb5_encrypt._entry_ptr.5, ptr @make_checksum._entry, ptr @make_checksum._entry_ptr, ptr @make_checksum_v2._entry, ptr @make_checksum_v2._entry.15, ptr @make_checksum_v2._entry_ptr, ptr @make_checksum_v2._entry_ptr.17, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.16], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @krb5_encrypt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @krb5_encrypt._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @krb5_decrypt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @krb5_decrypt._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @make_checksum._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @make_checksum_v2._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @make_checksum_v2._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @krb5_encrypt(ptr noundef %tfm, ptr noundef readonly %iv, ptr nocapture noundef readonly %in, ptr noundef %out, i32 noundef %length) local_unnamed_addr #0 align 64 {
entry:
  %sg = alloca [1 x %struct.scatterlist], align 4
  %local_iv = alloca [16 x i8], align 1
  %__req_desc = alloca [512 x i8], align 128
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %sg) #7
  %0 = call ptr @memset(ptr %sg, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %local_iv) #7
  %1 = call ptr @memset(ptr %local_iv, i32 0, i32 16)
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %__req_desc) #7
  %2 = call ptr @memset(ptr %__req_desc, i32 255, i32 512)
  %__crt_alg.i.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 0, i32 2, i32 3
  %3 = ptrtoint ptr %__crt_alg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %__crt_alg.i.i.i, align 4
  %cra_blocksize.i.i.i = getelementptr inbounds %struct.crypto_alg, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %cra_blocksize.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cra_blocksize.i.i.i, align 4
  %rem = urem i32 %length, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp.not = icmp eq i32 %rem, 0
  br i1 %cmp.not, label %if.end, label %entry.do.body25_crit_edge

entry.do.body25_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body25

if.end:                                           ; preds = %entry
  %ivsize.i.i = getelementptr i8, ptr %4, i32 -100
  %7 = ptrtoint ptr %ivsize.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ivsize.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %8)
  %cmp2 = icmp ugt i32 %8, 16
  br i1 %cmp2, label %do.body, label %if.end13

do.body:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rpc_debug to i32))
  %9 = load i32, ptr @rpc_debug, align 4
  %and = and i32 %9, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.do.body25_crit_edge, label %do.end, !prof !42

do.body.do.body25_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body25

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %8) #10
  br label %do.body25

if.end13:                                         ; preds = %if.end
  %tobool14.not = icmp eq ptr %iv, null
  br i1 %tobool14.not, label %if.end13.if.end18_crit_edge, label %if.then15

if.end13.if.end18_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

if.then15:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  %10 = call ptr @memcpy(ptr %local_iv, ptr %iv, i32 %8)
  br label %if.end18

if.end18:                                         ; preds = %if.then15, %if.end13.if.end18_crit_edge
  %11 = call ptr @memcpy(ptr %out, ptr %in, i32 %length)
  call void @sg_init_one(ptr noundef nonnull %sg, ptr noundef %out, i32 noundef %length) #7
  %base.i.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 0, i32 2
  %tfm1.i.i = getelementptr inbounds %struct.skcipher_request, ptr %__req_desc, i32 0, i32 4, i32 3
  %12 = ptrtoint ptr %tfm1.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %base.i.i.i, ptr %tfm1.i.i, align 32
  %complete.i = getelementptr inbounds %struct.skcipher_request, ptr %__req_desc, i32 0, i32 4, i32 1
  %13 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %complete.i, align 8
  %data2.i = getelementptr inbounds %struct.skcipher_request, ptr %__req_desc, i32 0, i32 4, i32 2
  %14 = ptrtoint ptr %data2.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %data2.i, align 4
  %flags4.i = getelementptr inbounds %struct.skcipher_request, ptr %__req_desc, i32 0, i32 4, i32 4
  %15 = ptrtoint ptr %flags4.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %flags4.i, align 4
  %src1.i = getelementptr inbounds %struct.skcipher_request, ptr %__req_desc, i32 0, i32 2
  %16 = ptrtoint ptr %src1.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %sg, ptr %src1.i, align 8
  %dst2.i = getelementptr inbounds %struct.skcipher_request, ptr %__req_desc, i32 0, i32 3
  %17 = ptrtoint ptr %dst2.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %sg, ptr %dst2.i, align 4
  %18 = ptrtoint ptr %__req_desc to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %length, ptr %__req_desc, align 128
  %iv4.i = getelementptr inbounds %struct.skcipher_request, ptr %__req_desc, i32 0, i32 1
  %19 = ptrtoint ptr %iv4.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %local_iv, ptr %iv4.i, align 4
  %call23 = call i32 @crypto_skcipher_encrypt(ptr noundef nonnull %__req_desc) #7
  %20 = ptrtoint ptr %tfm1.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %tfm1.i.i, align 32
  %add.ptr.i.i.i = getelementptr i8, ptr %21, i32 -128
  %22 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %add.ptr.i.i.i, align 128
  %add.i = add i32 %23, 128
  %24 = call ptr @memset(ptr %__req_desc, i32 0, i32 %add.i)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %__req_desc) #7, !srcloc !43
  br label %do.body25

do.body25:                                        ; preds = %if.end18, %do.end, %do.body.do.body25_crit_edge, %entry.do.body25_crit_edge
  %ret.0 = phi i32 [ -22, %entry.do.body25_crit_edge ], [ -22, %do.end ], [ -22, %do.body.do.body25_crit_edge ], [ %call23, %if.end18 ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rpc_debug to i32))
  %25 = load i32, ptr @rpc_debug, align 4
  %and26 = and i32 %25, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %do.body25.do.end42_crit_edge, label %do.end37, !prof !42

do.body25.do.end42_crit_edge:                     ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end42

do.end37:                                         ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #9
  %call39 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %ret.0) #10
  br label %do.end42

do.end42:                                         ; preds = %do.end37, %do.body25.do.end42_crit_edge
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %__req_desc) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %local_iv) #7
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg) #7
  ret i32 %ret.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_one(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_skcipher_encrypt(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @krb5_decrypt(ptr noundef %tfm, ptr noundef readonly %iv, ptr nocapture noundef readonly %in, ptr noundef %out, i32 noundef %length) local_unnamed_addr #0 align 64 {
entry:
  %sg = alloca [1 x %struct.scatterlist], align 4
  %local_iv = alloca [16 x i8], align 1
  %__req_desc = alloca [512 x i8], align 128
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %sg) #7
  %0 = call ptr @memset(ptr %sg, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %local_iv) #7
  %1 = call ptr @memset(ptr %local_iv, i32 0, i32 16)
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %__req_desc) #7
  %2 = call ptr @memset(ptr %__req_desc, i32 255, i32 512)
  %__crt_alg.i.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 0, i32 2, i32 3
  %3 = ptrtoint ptr %__crt_alg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %__crt_alg.i.i.i, align 4
  %cra_blocksize.i.i.i = getelementptr inbounds %struct.crypto_alg, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %cra_blocksize.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cra_blocksize.i.i.i, align 4
  %rem = urem i32 %length, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp.not = icmp eq i32 %rem, 0
  br i1 %cmp.not, label %if.end, label %entry.do.body25_crit_edge

entry.do.body25_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body25

if.end:                                           ; preds = %entry
  %ivsize.i.i = getelementptr i8, ptr %4, i32 -100
  %7 = ptrtoint ptr %ivsize.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ivsize.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %8)
  %cmp2 = icmp ugt i32 %8, 16
  br i1 %cmp2, label %do.body, label %if.end13

do.body:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rpc_debug to i32))
  %9 = load i32, ptr @rpc_debug, align 4
  %and = and i32 %9, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.do.body25_crit_edge, label %do.end, !prof !42

do.body.do.body25_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body25

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %8) #10
  br label %do.body25

if.end13:                                         ; preds = %if.end
  %tobool14.not = icmp eq ptr %iv, null
  br i1 %tobool14.not, label %if.end13.if.end18_crit_edge, label %if.then15

if.end13.if.end18_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

if.then15:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  %10 = call ptr @memcpy(ptr %local_iv, ptr %iv, i32 %8)
  br label %if.end18

if.end18:                                         ; preds = %if.then15, %if.end13.if.end18_crit_edge
  %11 = call ptr @memcpy(ptr %out, ptr %in, i32 %length)
  call void @sg_init_one(ptr noundef nonnull %sg, ptr noundef %out, i32 noundef %length) #7
  %base.i.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 0, i32 2
  %tfm1.i.i = getelementptr inbounds %struct.skcipher_request, ptr %__req_desc, i32 0, i32 4, i32 3
  %12 = ptrtoint ptr %tfm1.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %base.i.i.i, ptr %tfm1.i.i, align 32
  %complete.i = getelementptr inbounds %struct.skcipher_request, ptr %__req_desc, i32 0, i32 4, i32 1
  %13 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %complete.i, align 8
  %data2.i = getelementptr inbounds %struct.skcipher_request, ptr %__req_desc, i32 0, i32 4, i32 2
  %14 = ptrtoint ptr %data2.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %data2.i, align 4
  %flags4.i = getelementptr inbounds %struct.skcipher_request, ptr %__req_desc, i32 0, i32 4, i32 4
  %15 = ptrtoint ptr %flags4.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %flags4.i, align 4
  %src1.i = getelementptr inbounds %struct.skcipher_request, ptr %__req_desc, i32 0, i32 2
  %16 = ptrtoint ptr %src1.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %sg, ptr %src1.i, align 8
  %dst2.i = getelementptr inbounds %struct.skcipher_request, ptr %__req_desc, i32 0, i32 3
  %17 = ptrtoint ptr %dst2.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %sg, ptr %dst2.i, align 4
  %18 = ptrtoint ptr %__req_desc to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %length, ptr %__req_desc, align 128
  %iv4.i = getelementptr inbounds %struct.skcipher_request, ptr %__req_desc, i32 0, i32 1
  %19 = ptrtoint ptr %iv4.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %local_iv, ptr %iv4.i, align 4
  %call23 = call i32 @crypto_skcipher_decrypt(ptr noundef nonnull %__req_desc) #7
  %20 = ptrtoint ptr %tfm1.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %tfm1.i.i, align 32
  %add.ptr.i.i.i = getelementptr i8, ptr %21, i32 -128
  %22 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %add.ptr.i.i.i, align 128
  %add.i = add i32 %23, 128
  %24 = call ptr @memset(ptr %__req_desc, i32 0, i32 %add.i)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %__req_desc) #7, !srcloc !43
  br label %do.body25

do.body25:                                        ; preds = %if.end18, %do.end, %do.body.do.body25_crit_edge, %entry.do.body25_crit_edge
  %ret.0 = phi i32 [ -22, %entry.do.body25_crit_edge ], [ -22, %do.end ], [ -22, %do.body.do.body25_crit_edge ], [ %call23, %if.end18 ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rpc_debug to i32))
  %25 = load i32, ptr @rpc_debug, align 4
  %and26 = and i32 %25, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %do.body25.do.end42_crit_edge, label %do.end37, !prof !42

do.body25.do.end42_crit_edge:                     ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end42

do.end37:                                         ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #9
  %call39 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %ret.0) #10
  br label %do.end42

do.end42:                                         ; preds = %do.end37, %do.body25.do.end42_crit_edge
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %__req_desc) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %local_iv) #7
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg) #7
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_skcipher_decrypt(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @make_checksum(ptr nocapture noundef readonly %kctx, ptr noundef %header, i32 noundef %hdrlen, ptr noundef %body, i32 noundef %body_offset, ptr noundef %cksumkey, i32 noundef %usage, ptr nocapture noundef %cksumout) local_unnamed_addr #0 align 64 {
entry:
  %sg = alloca [1 x %struct.scatterlist], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %sg) #7
  %0 = call ptr @memset(ptr %sg, i32 255, i32 20)
  %1 = ptrtoint ptr %cksumout to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %cksumout, align 4
  %gk5e = getelementptr inbounds %struct.krb5_ctx, ptr %kctx, i32 0, i32 3
  %3 = ptrtoint ptr %gk5e to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %gk5e, align 4
  %cksumlength = getelementptr inbounds %struct.gss_krb5_enctype, ptr %4, i32 0, i32 9
  %5 = ptrtoint ptr %cksumlength to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cksumlength, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %6)
  %cmp = icmp ult i32 %2, %6
  br i1 %cmp, label %do.body, label %if.end9

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rpc_debug to i32))
  %7 = load i32, ptr @rpc_debug, align 4
  %and = and i32 %7, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.cleanup_crit_edge, label %do.end, !prof !42

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.gss_krb5_enctype, ptr %4, i32 0, i32 2
  %8 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %name, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, i32 noundef %2, ptr noundef %9) #10
  br label %cleanup

if.end9:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %10 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3136, i32 noundef 20) #11
  %cmp11 = icmp eq ptr %call7.i, null
  br i1 %cmp11, label %if.end9.cleanup_crit_edge, label %if.end13

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end13:                                         ; preds = %if.end9
  %11 = ptrtoint ptr %gk5e to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %gk5e, align 4
  %cksum_name = getelementptr inbounds %struct.gss_krb5_enctype, ptr %12, i32 0, i32 4
  %13 = ptrtoint ptr %cksum_name to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cksum_name, align 4
  %call15 = tail call ptr @crypto_alloc_ahash(ptr noundef %14, i32 noundef 0, i32 noundef 128) #7
  %cmp.i = icmp ugt ptr %call15, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %out_free_cksum.thread, label %if.end8.i.i

out_free_cksum.thread:                            ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call7.i) #7
  br label %cleanup

if.end8.i.i:                                      ; preds = %if.end13
  %reqsize.i.i = getelementptr inbounds %struct.crypto_ahash, ptr %call15, i32 0, i32 8
  %15 = ptrtoint ptr %reqsize.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %reqsize.i.i, align 32
  %add.i = add i32 %16, 128
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i, i32 noundef 3136) #12
  %tobool.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not.i, label %if.end8.i.i.out_free_cksum_crit_edge, label %if.end22, !prof !44

if.end8.i.i.out_free_cksum_crit_edge:             ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_free_cksum

if.end22:                                         ; preds = %if.end8.i.i
  %base.i.i.i = getelementptr inbounds %struct.crypto_ahash, ptr %call15, i32 0, i32 10
  %tfm1.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %call9.i.i, i32 0, i32 3
  %17 = ptrtoint ptr %tfm1.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %base.i.i.i, ptr %tfm1.i.i, align 16
  %complete.i = getelementptr inbounds %struct.crypto_async_request, ptr %call9.i.i, i32 0, i32 1
  %18 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %complete.i, align 8
  %data2.i = getelementptr inbounds %struct.crypto_async_request, ptr %call9.i.i, i32 0, i32 2
  %19 = ptrtoint ptr %data2.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %data2.i, align 4
  %flags4.i = getelementptr inbounds %struct.crypto_async_request, ptr %call9.i.i, i32 0, i32 4
  %20 = ptrtoint ptr %flags4.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 512, ptr %flags4.i, align 4
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_ahash, ptr %call15, i32 0, i32 10, i32 3
  %21 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %__crt_alg.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %22, i32 -128
  %23 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %add.ptr.i.i.i, align 128
  %cmp24.not = icmp eq ptr %cksumkey, null
  br i1 %cmp24.not, label %if.end22.if.end31_crit_edge, label %if.then25

if.end22.if.end31_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31

if.then25:                                        ; preds = %if.end22
  %25 = ptrtoint ptr %gk5e to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %gk5e, align 4
  %keylength = getelementptr inbounds %struct.gss_krb5_enctype, ptr %26, i32 0, i32 12
  %27 = ptrtoint ptr %keylength to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %keylength, align 4
  %call27 = tail call i32 @crypto_ahash_setkey(ptr noundef %call15, ptr noundef nonnull %cksumkey, i32 noundef %28) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.then25.if.end31_crit_edge, label %if.then25.out_crit_edge

if.then25.out_crit_edge:                          ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.then25.if.end31_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31

if.end31:                                         ; preds = %if.then25.if.end31_crit_edge, %if.end22.if.end31_crit_edge
  %29 = ptrtoint ptr %tfm1.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %tfm1.i.i, align 16
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %30, align 128
  %and.i = and i32 %32, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i123 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i123, label %crypto_ahash_init.exit, label %if.end31.out_crit_edge

if.end31.out_crit_edge:                           ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

crypto_ahash_init.exit:                           ; preds = %if.end31
  %add.ptr.i.i.i124 = getelementptr i8, ptr %30, i32 -128
  %33 = ptrtoint ptr %add.ptr.i.i.i124 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %add.ptr.i.i.i124, align 128
  %call2.i = tail call i32 %34(ptr noundef nonnull %call9.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool33.not = icmp eq i32 %call2.i, 0
  br i1 %tobool33.not, label %if.end35, label %crypto_ahash_init.exit.out_crit_edge

crypto_ahash_init.exit.out_crit_edge:             ; preds = %crypto_ahash_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end35:                                         ; preds = %crypto_ahash_init.exit
  call void @sg_init_one(ptr noundef nonnull %sg, ptr noundef %header, i32 noundef %hdrlen) #7
  %src1.i = getelementptr inbounds %struct.ahash_request, ptr %call9.i.i, i32 0, i32 2
  %35 = ptrtoint ptr %src1.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %sg, ptr %src1.i, align 4
  %nbytes2.i = getelementptr inbounds %struct.ahash_request, ptr %call9.i.i, i32 0, i32 1
  %36 = ptrtoint ptr %nbytes2.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %hdrlen, ptr %nbytes2.i, align 8
  %result3.i = getelementptr inbounds %struct.ahash_request, ptr %call9.i.i, i32 0, i32 3
  %37 = ptrtoint ptr %result3.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %result3.i, align 32
  %38 = ptrtoint ptr %tfm1.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %tfm1.i.i, align 16
  %__crt_alg.i = getelementptr i8, ptr %39, i32 12
  %40 = ptrtoint ptr %__crt_alg.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %__crt_alg.i, align 4
  call void @crypto_stats_get(ptr noundef %41) #7
  %42 = ptrtoint ptr %tfm1.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %tfm1.i.i, align 16
  %update.i = getelementptr i8, ptr %43, i32 -124
  %44 = ptrtoint ptr %update.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %update.i, align 4
  %call3.i = call i32 %45(ptr noundef nonnull %call9.i.i) #7
  call void @crypto_stats_ahash_update(i32 noundef %hdrlen, i32 noundef %call3.i, ptr noundef %41) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool38.not = icmp eq i32 %call3.i, 0
  br i1 %tobool38.not, label %if.end40, label %if.end35.out_crit_edge

if.end35.out_crit_edge:                           ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end40:                                         ; preds = %if.end35
  %len41 = getelementptr inbounds %struct.xdr_buf, ptr %body, i32 0, i32 8
  %46 = ptrtoint ptr %len41 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %len41, align 4
  %sub = sub i32 %47, %body_offset
  %call42 = call i32 @xdr_process_buf(ptr noundef %body, i32 noundef %body_offset, i32 noundef %sub, ptr noundef nonnull @checksummer, ptr noundef nonnull %call9.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.end45, label %if.end40.out_crit_edge

if.end40.out_crit_edge:                           ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end45:                                         ; preds = %if.end40
  %48 = ptrtoint ptr %src1.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr null, ptr %src1.i, align 4
  %49 = ptrtoint ptr %nbytes2.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %nbytes2.i, align 8
  %50 = ptrtoint ptr %result3.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %call7.i, ptr %result3.i, align 32
  %call46 = call i32 @crypto_ahash_final(ptr noundef nonnull %call9.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.end49, label %if.end45.out_crit_edge

if.end45.out_crit_edge:                           ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end49:                                         ; preds = %if.end45
  %51 = ptrtoint ptr %gk5e to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %gk5e, align 4
  %ctype = getelementptr inbounds %struct.gss_krb5_enctype, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %ctype to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %ctype, align 4
  %55 = zext i32 %54 to i64
  call void @__sanitizer_cov_trace_switch(i64 %55, ptr @__sancov_gen_cov_switch_values)
  switch i32 %54, label %do.body65 [
    i32 7, label %sw.bb
    i32 12, label %sw.bb61
  ]

sw.bb:                                            ; preds = %if.end49
  %encrypt = getelementptr inbounds %struct.gss_krb5_enctype, ptr %52, i32 0, i32 13
  %56 = ptrtoint ptr %encrypt to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %encrypt, align 4
  %seq = getelementptr inbounds %struct.krb5_ctx, ptr %kctx, i32 0, i32 5
  %58 = ptrtoint ptr %seq to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %seq, align 4
  %call52 = call i32 %57(ptr noundef %59, ptr noundef null, ptr noundef nonnull %call7.i, ptr noundef nonnull %call7.i, i32 noundef %24) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %if.end55, label %sw.bb.out_crit_edge

sw.bb.out_crit_edge:                              ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end55:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %data = getelementptr inbounds %struct.xdr_netobj, ptr %cksumout, i32 0, i32 1
  %60 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %call7.i, i32 %24
  %62 = ptrtoint ptr %gk5e to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %gk5e, align 4
  %cksumlength57 = getelementptr inbounds %struct.gss_krb5_enctype, ptr %63, i32 0, i32 9
  %64 = ptrtoint ptr %cksumlength57 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %cksumlength57, align 4
  %idx.neg = sub i32 0, %65
  %add.ptr58 = getelementptr i8, ptr %add.ptr, i32 %idx.neg
  %66 = call ptr @memcpy(ptr %61, ptr %add.ptr58, i32 %65)
  br label %sw.epilog

sw.bb61:                                          ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  %data62 = getelementptr inbounds %struct.xdr_netobj, ptr %cksumout, i32 0, i32 1
  %67 = ptrtoint ptr %data62 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %data62, align 4
  %cksumlength64 = getelementptr inbounds %struct.gss_krb5_enctype, ptr %52, i32 0, i32 9
  %69 = ptrtoint ptr %cksumlength64 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %cksumlength64, align 4
  %71 = call ptr @memcpy(ptr %68, ptr %call7.i, i32 %70)
  br label %sw.epilog

do.body65:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/sunrpc/auth_gss/gss_krb5_crypto.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 218, 0\0A.popsection", ""() #7, !srcloc !45
  unreachable

sw.epilog:                                        ; preds = %sw.bb61, %if.end55
  %72 = ptrtoint ptr %gk5e to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %gk5e, align 4
  %cksumlength72 = getelementptr inbounds %struct.gss_krb5_enctype, ptr %73, i32 0, i32 9
  %74 = ptrtoint ptr %cksumlength72 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %cksumlength72, align 4
  %76 = ptrtoint ptr %cksumout to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %75, ptr %cksumout, align 4
  br label %out

out:                                              ; preds = %sw.epilog, %sw.bb.out_crit_edge, %if.end45.out_crit_edge, %if.end40.out_crit_edge, %if.end35.out_crit_edge, %crypto_ahash_init.exit.out_crit_edge, %if.end31.out_crit_edge, %if.then25.out_crit_edge
  %err.1 = phi i32 [ %call27, %if.then25.out_crit_edge ], [ %call2.i, %crypto_ahash_init.exit.out_crit_edge ], [ %call3.i, %if.end35.out_crit_edge ], [ %call42, %if.end40.out_crit_edge ], [ %call46, %if.end45.out_crit_edge ], [ 0, %sw.epilog ], [ %call52, %sw.bb.out_crit_edge ], [ -126, %if.end31.out_crit_edge ]
  call void @kfree_sensitive(ptr noundef nonnull %call9.i.i) #7
  br label %out_free_cksum

out_free_cksum:                                   ; preds = %out, %if.end8.i.i.out_free_cksum_crit_edge
  %err.2 = phi i32 [ %err.1, %out ], [ -1, %if.end8.i.i.out_free_cksum_crit_edge ]
  %base.i.i = getelementptr inbounds %struct.crypto_ahash, ptr %call15, i32 0, i32 10
  call void @crypto_destroy_tfm(ptr noundef %call15, ptr noundef %base.i.i) #7
  call void @kfree(ptr noundef nonnull %call7.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.2)
  %tobool74.not = icmp eq i32 %err.2, 0
  %spec.select = select i1 %tobool74.not, i32 0, i32 851968
  br label %cleanup

cleanup:                                          ; preds = %out_free_cksum, %out_free_cksum.thread, %if.end9.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ 851968, %do.end ], [ 851968, %do.body.cleanup_crit_edge ], [ 851968, %if.end9.cleanup_crit_edge ], [ 851968, %out_free_cksum.thread ], [ %spec.select, %out_free_cksum ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_alloc_ahash(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_ahash_setkey(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @crypto_ahash_update(ptr noundef %req) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__crt_alg = getelementptr i8, ptr %1, i32 12
  %2 = ptrtoint ptr %__crt_alg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %__crt_alg, align 4
  %nbytes1 = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 1
  %4 = ptrtoint ptr %nbytes1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nbytes1, align 8
  tail call void @crypto_stats_get(ptr noundef %3) #7
  %6 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tfm.i, align 16
  %update = getelementptr i8, ptr %7, i32 -124
  %8 = ptrtoint ptr %update to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %update, align 4
  %call3 = tail call i32 %9(ptr noundef %req) #7
  tail call void @crypto_stats_ahash_update(i32 noundef %5, i32 noundef %call3, ptr noundef %3) #7
  ret i32 %call3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xdr_process_buf(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @checksummer(ptr noundef %sg, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %length = getelementptr inbounds %struct.scatterlist, ptr %sg, i32 0, i32 2
  %0 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %length, align 4
  %src1.i = getelementptr inbounds %struct.ahash_request, ptr %data, i32 0, i32 2
  %2 = ptrtoint ptr %src1.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %sg, ptr %src1.i, align 4
  %nbytes2.i = getelementptr inbounds %struct.ahash_request, ptr %data, i32 0, i32 1
  %3 = ptrtoint ptr %nbytes2.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %1, ptr %nbytes2.i, align 8
  %result3.i = getelementptr inbounds %struct.ahash_request, ptr %data, i32 0, i32 3
  %4 = ptrtoint ptr %result3.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %result3.i, align 32
  %tfm.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %data, i32 0, i32 3
  %5 = ptrtoint ptr %tfm.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %tfm.i.i, align 16
  %__crt_alg.i = getelementptr i8, ptr %6, i32 12
  %7 = ptrtoint ptr %__crt_alg.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %__crt_alg.i, align 4
  tail call void @crypto_stats_get(ptr noundef %8) #7
  %9 = ptrtoint ptr %tfm.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %tfm.i.i, align 16
  %update.i = getelementptr i8, ptr %10, i32 -124
  %11 = ptrtoint ptr %update.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %update.i, align 4
  %call3.i = tail call i32 %12(ptr noundef %data) #7
  tail call void @crypto_stats_ahash_update(i32 noundef %1, i32 noundef %call3.i, ptr noundef %8) #7
  ret i32 %call3.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_ahash_final(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @make_checksum_v2(ptr nocapture noundef readonly %kctx, ptr noundef %header, i32 noundef %hdrlen, ptr noundef %body, i32 noundef %body_offset, ptr noundef %cksumkey, i32 %usage, ptr nocapture noundef %cksumout) local_unnamed_addr #0 align 64 {
entry:
  %sg = alloca [1 x %struct.scatterlist], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %sg) #7
  %gk5e = getelementptr inbounds %struct.krb5_ctx, ptr %kctx, i32 0, i32 3
  %0 = call ptr @memset(ptr %sg, i32 255, i32 20)
  %1 = ptrtoint ptr %gk5e to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %gk5e, align 4
  %keyed_cksum = getelementptr inbounds %struct.gss_krb5_enctype, ptr %2, i32 0, i32 10
  %3 = ptrtoint ptr %keyed_cksum to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %keyed_cksum, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %do.body, label %if.end8

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rpc_debug to i32))
  %5 = load i32, ptr @rpc_debug, align 4
  %and = and i32 %5, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.cleanup_crit_edge, label %do.end, !prof !42

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.gss_krb5_enctype, ptr %2, i32 0, i32 2
  %6 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %name, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, ptr noundef %7) #10
  br label %cleanup

if.end8:                                          ; preds = %entry
  %cmp9 = icmp eq ptr %cksumkey, null
  br i1 %cmp9, label %do.body11, label %if.end31

do.body11:                                        ; preds = %if.end8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rpc_debug to i32))
  %8 = load i32, ptr @rpc_debug, align 4
  %and12 = and i32 %8, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %do.body11.cleanup_crit_edge, label %do.end23, !prof !42

do.body11.cleanup_crit_edge:                      ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end23:                                         ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #9
  %name26 = getelementptr inbounds %struct.gss_krb5_enctype, ptr %2, i32 0, i32 2
  %9 = ptrtoint ptr %name26 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %name26, align 4
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.14, ptr noundef %10) #10
  br label %cleanup

if.end31:                                         ; preds = %if.end8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %11 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3136, i32 noundef 20) #11
  %tobool33.not = icmp eq ptr %call7.i, null
  br i1 %tobool33.not, label %if.end31.cleanup_crit_edge, label %if.end35

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end35:                                         ; preds = %if.end31
  %12 = ptrtoint ptr %gk5e to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %gk5e, align 4
  %cksum_name = getelementptr inbounds %struct.gss_krb5_enctype, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %cksum_name to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cksum_name, align 4
  %call37 = tail call ptr @crypto_alloc_ahash(ptr noundef %15, i32 noundef 0, i32 noundef 128) #7
  %cmp.i = icmp ugt ptr %call37, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %out_free_cksum.thread, label %if.end8.i.i

out_free_cksum.thread:                            ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call7.i) #7
  br label %cleanup

if.end8.i.i:                                      ; preds = %if.end35
  %reqsize.i.i = getelementptr inbounds %struct.crypto_ahash, ptr %call37, i32 0, i32 8
  %16 = ptrtoint ptr %reqsize.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %reqsize.i.i, align 32
  %add.i = add i32 %17, 128
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i, i32 noundef 3136) #12
  %tobool.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not.i, label %if.end8.i.i.out_free_cksum_crit_edge, label %if.end44, !prof !44

if.end8.i.i.out_free_cksum_crit_edge:             ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_free_cksum

if.end44:                                         ; preds = %if.end8.i.i
  %base.i.i.i = getelementptr inbounds %struct.crypto_ahash, ptr %call37, i32 0, i32 10
  %tfm1.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %call9.i.i, i32 0, i32 3
  %18 = ptrtoint ptr %tfm1.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %base.i.i.i, ptr %tfm1.i.i, align 16
  %complete.i = getelementptr inbounds %struct.crypto_async_request, ptr %call9.i.i, i32 0, i32 1
  %19 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %complete.i, align 8
  %data2.i = getelementptr inbounds %struct.crypto_async_request, ptr %call9.i.i, i32 0, i32 2
  %20 = ptrtoint ptr %data2.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %data2.i, align 4
  %flags4.i = getelementptr inbounds %struct.crypto_async_request, ptr %call9.i.i, i32 0, i32 4
  %21 = ptrtoint ptr %flags4.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 512, ptr %flags4.i, align 4
  %22 = ptrtoint ptr %gk5e to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %gk5e, align 4
  %keylength = getelementptr inbounds %struct.gss_krb5_enctype, ptr %23, i32 0, i32 12
  %24 = ptrtoint ptr %keylength to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %keylength, align 4
  %call46 = tail call i32 @crypto_ahash_setkey(ptr noundef %call37, ptr noundef nonnull %cksumkey, i32 noundef %25) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.end49, label %if.end44.out_crit_edge

if.end44.out_crit_edge:                           ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end49:                                         ; preds = %if.end44
  %26 = ptrtoint ptr %tfm1.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %tfm1.i.i, align 16
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %27, align 128
  %and.i = and i32 %29, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i118 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i118, label %crypto_ahash_init.exit, label %if.end49.out_crit_edge

if.end49.out_crit_edge:                           ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

crypto_ahash_init.exit:                           ; preds = %if.end49
  %add.ptr.i.i.i = getelementptr i8, ptr %27, i32 -128
  %30 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %add.ptr.i.i.i, align 128
  %call2.i = tail call i32 %31(ptr noundef nonnull %call9.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool51.not = icmp eq i32 %call2.i, 0
  br i1 %tobool51.not, label %if.end53, label %crypto_ahash_init.exit.out_crit_edge

crypto_ahash_init.exit.out_crit_edge:             ; preds = %crypto_ahash_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end53:                                         ; preds = %crypto_ahash_init.exit
  %len = getelementptr inbounds %struct.xdr_buf, ptr %body, i32 0, i32 8
  %32 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %len, align 4
  %sub = sub i32 %33, %body_offset
  %call54 = tail call i32 @xdr_process_buf(ptr noundef %body, i32 noundef %body_offset, i32 noundef %sub, ptr noundef nonnull @checksummer, ptr noundef nonnull %call9.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %if.end57, label %if.end53.out_crit_edge

if.end53.out_crit_edge:                           ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end57:                                         ; preds = %if.end53
  %cmp58.not = icmp eq ptr %header, null
  br i1 %cmp58.not, label %if.end57.if.end65_crit_edge, label %if.then59

if.end57.if.end65_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end65

if.then59:                                        ; preds = %if.end57
  call void @sg_init_one(ptr noundef nonnull %sg, ptr noundef nonnull %header, i32 noundef %hdrlen) #7
  %src1.i = getelementptr inbounds %struct.ahash_request, ptr %call9.i.i, i32 0, i32 2
  %34 = ptrtoint ptr %src1.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %sg, ptr %src1.i, align 4
  %nbytes2.i = getelementptr inbounds %struct.ahash_request, ptr %call9.i.i, i32 0, i32 1
  %35 = ptrtoint ptr %nbytes2.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %hdrlen, ptr %nbytes2.i, align 8
  %result3.i = getelementptr inbounds %struct.ahash_request, ptr %call9.i.i, i32 0, i32 3
  %36 = ptrtoint ptr %result3.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %result3.i, align 32
  %call61 = call fastcc i32 @crypto_ahash_update(ptr noundef nonnull %call9.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %if.then59.if.end65_crit_edge, label %if.then59.out_crit_edge

if.then59.out_crit_edge:                          ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.then59.if.end65_crit_edge:                     ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end65

if.end65:                                         ; preds = %if.then59.if.end65_crit_edge, %if.end57.if.end65_crit_edge
  %src1.i119 = getelementptr inbounds %struct.ahash_request, ptr %call9.i.i, i32 0, i32 2
  %37 = ptrtoint ptr %src1.i119 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %src1.i119, align 4
  %nbytes2.i120 = getelementptr inbounds %struct.ahash_request, ptr %call9.i.i, i32 0, i32 1
  %38 = ptrtoint ptr %nbytes2.i120 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %nbytes2.i120, align 8
  %result3.i121 = getelementptr inbounds %struct.ahash_request, ptr %call9.i.i, i32 0, i32 3
  %39 = ptrtoint ptr %result3.i121 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call7.i, ptr %result3.i121, align 32
  %call66 = call i32 @crypto_ahash_final(ptr noundef nonnull %call9.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %if.end69, label %if.end65.out_crit_edge

if.end65.out_crit_edge:                           ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end69:                                         ; preds = %if.end65
  %40 = ptrtoint ptr %gk5e to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %gk5e, align 4
  %cksumlength = getelementptr inbounds %struct.gss_krb5_enctype, ptr %41, i32 0, i32 9
  %42 = ptrtoint ptr %cksumlength to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %cksumlength, align 4
  %44 = ptrtoint ptr %cksumout to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %cksumout, align 4
  %45 = load ptr, ptr %gk5e, align 4
  %ctype = getelementptr inbounds %struct.gss_krb5_enctype, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %ctype to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %ctype, align 4
  %.off = add i32 %47, -15
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %sw.bb, label %do.body75

sw.bb:                                            ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #9
  %data = getelementptr inbounds %struct.xdr_netobj, ptr %cksumout, i32 0, i32 1
  %48 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %data, align 4
  %cksumlength74 = getelementptr inbounds %struct.gss_krb5_enctype, ptr %45, i32 0, i32 9
  %50 = ptrtoint ptr %cksumlength74 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %cksumlength74, align 4
  %52 = call ptr @memcpy(ptr %49, ptr %call7.i, i32 %51)
  br label %out

do.body75:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/sunrpc/auth_gss/gss_krb5_crypto.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 306, 0\0A.popsection", ""() #7, !srcloc !46
  unreachable

out:                                              ; preds = %sw.bb, %if.end65.out_crit_edge, %if.then59.out_crit_edge, %if.end53.out_crit_edge, %crypto_ahash_init.exit.out_crit_edge, %if.end49.out_crit_edge, %if.end44.out_crit_edge
  %err.0 = phi i32 [ %call46, %if.end44.out_crit_edge ], [ %call2.i, %crypto_ahash_init.exit.out_crit_edge ], [ %call54, %if.end53.out_crit_edge ], [ %call61, %if.then59.out_crit_edge ], [ %call66, %if.end65.out_crit_edge ], [ 0, %sw.bb ], [ -126, %if.end49.out_crit_edge ]
  call void @kfree_sensitive(ptr noundef nonnull %call9.i.i) #7
  br label %out_free_cksum

out_free_cksum:                                   ; preds = %out, %if.end8.i.i.out_free_cksum_crit_edge
  %err.1 = phi i32 [ %err.0, %out ], [ -1, %if.end8.i.i.out_free_cksum_crit_edge ]
  %base.i.i = getelementptr inbounds %struct.crypto_ahash, ptr %call37, i32 0, i32 10
  call void @crypto_destroy_tfm(ptr noundef %call37, ptr noundef %base.i.i) #7
  call void @kfree(ptr noundef nonnull %call7.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1)
  %tobool81.not = icmp eq i32 %err.1, 0
  %spec.select = select i1 %tobool81.not, i32 0, i32 851968
  br label %cleanup

cleanup:                                          ; preds = %out_free_cksum, %out_free_cksum.thread, %if.end31.cleanup_crit_edge, %do.end23, %do.body11.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ 851968, %do.end ], [ 851968, %do.body.cleanup_crit_edge ], [ 851968, %do.end23 ], [ 851968, %do.body11.cleanup_crit_edge ], [ 851968, %if.end31.cleanup_crit_edge ], [ 851968, %out_free_cksum.thread ], [ %spec.select, %out_free_cksum ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gss_encrypt_xdr_buf(ptr noundef %tfm, ptr noundef %buf, i32 noundef %offset, ptr noundef %pages) local_unnamed_addr #0 align 64 {
entry:
  %desc = alloca %struct.encryptor_desc, align 4
  %__req_desc = alloca [512 x i8], align 128
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %desc) #7
  %0 = getelementptr inbounds i8, ptr %desc, i32 32
  %1 = call ptr @memset(ptr %0, i32 255, i32 160)
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %__req_desc) #7
  %2 = call ptr @memset(ptr %__req_desc, i32 255, i32 512)
  %len = getelementptr inbounds %struct.xdr_buf, ptr %buf, i32 0, i32 8
  %3 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %len, align 4
  %sub = sub i32 %4, %offset
  %__crt_alg.i.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 0, i32 2, i32 3
  %5 = ptrtoint ptr %__crt_alg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %__crt_alg.i.i.i, align 4
  %cra_blocksize.i.i.i = getelementptr inbounds %struct.crypto_alg, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %cra_blocksize.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cra_blocksize.i.i.i, align 4
  %rem = urem i32 %sub, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp.not = icmp eq i32 %rem, 0
  br i1 %cmp.not, label %do.end7, label %do.body2, !prof !42

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/sunrpc/auth_gss/gss_krb5_crypto.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 403, 0\0A.popsection", ""() #7, !srcloc !47
  unreachable

do.end7:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %base.i.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 0, i32 2
  %tfm1.i.i = getelementptr inbounds %struct.skcipher_request, ptr %__req_desc, i32 0, i32 4, i32 3
  %9 = ptrtoint ptr %tfm1.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %base.i.i.i, ptr %tfm1.i.i, align 32
  %complete.i = getelementptr inbounds %struct.skcipher_request, ptr %__req_desc, i32 0, i32 4, i32 1
  %10 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %complete.i, align 8
  %data2.i = getelementptr inbounds %struct.skcipher_request, ptr %__req_desc, i32 0, i32 4, i32 2
  %11 = ptrtoint ptr %data2.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %data2.i, align 4
  %flags4.i = getelementptr inbounds %struct.skcipher_request, ptr %__req_desc, i32 0, i32 4, i32 4
  %12 = ptrtoint ptr %flags4.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %flags4.i, align 4
  %13 = call ptr @memset(ptr %desc, i32 0, i32 16)
  %req9 = getelementptr inbounds %struct.encryptor_desc, ptr %desc, i32 0, i32 1
  %14 = ptrtoint ptr %req9 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %__req_desc, ptr %req9, align 4
  %pos = getelementptr inbounds %struct.encryptor_desc, ptr %desc, i32 0, i32 2
  %15 = ptrtoint ptr %pos to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %offset, ptr %pos, align 4
  %outbuf = getelementptr inbounds %struct.encryptor_desc, ptr %desc, i32 0, i32 3
  %16 = ptrtoint ptr %outbuf to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %buf, ptr %outbuf, align 4
  %pages10 = getelementptr inbounds %struct.encryptor_desc, ptr %desc, i32 0, i32 4
  %17 = ptrtoint ptr %pages10 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %pages, ptr %pages10, align 4
  %fragno = getelementptr inbounds %struct.encryptor_desc, ptr %desc, i32 0, i32 7
  %18 = ptrtoint ptr %fragno to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %fragno, align 4
  %fraglen = getelementptr inbounds %struct.encryptor_desc, ptr %desc, i32 0, i32 8
  %19 = ptrtoint ptr %fraglen to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %fraglen, align 4
  %infrags = getelementptr inbounds %struct.encryptor_desc, ptr %desc, i32 0, i32 5
  call void @sg_init_table(ptr noundef %infrags, i32 noundef 4) #7
  %outfrags = getelementptr inbounds %struct.encryptor_desc, ptr %desc, i32 0, i32 6
  call void @sg_init_table(ptr noundef %outfrags, i32 noundef 4) #7
  %20 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %len, align 4
  %sub14 = sub i32 %21, %offset
  %call15 = call i32 @xdr_process_buf(ptr noundef %buf, i32 noundef %offset, i32 noundef %sub14, ptr noundef nonnull @encryptor, ptr noundef nonnull %desc) #7
  %22 = ptrtoint ptr %tfm1.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %tfm1.i.i, align 32
  %add.ptr.i.i.i = getelementptr i8, ptr %23, i32 -128
  %24 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %add.ptr.i.i.i, align 128
  %add.i = add i32 %25, 128
  %26 = call ptr @memset(ptr %__req_desc, i32 0, i32 %add.i)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %__req_desc) #7, !srcloc !43
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %__req_desc) #7
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %desc) #7
  ret i32 %call15
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_table(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @encryptor(ptr nocapture noundef readonly %sg, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %outbuf1 = getelementptr inbounds %struct.encryptor_desc, ptr %data, i32 0, i32 3
  %0 = ptrtoint ptr %outbuf1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %outbuf1, align 4
  %req = getelementptr inbounds %struct.encryptor_desc, ptr %data, i32 0, i32 1
  %2 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %req, align 4
  %tfm.i.i = getelementptr inbounds %struct.skcipher_request, ptr %3, i32 0, i32 4, i32 3
  %4 = ptrtoint ptr %tfm.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tfm.i.i, align 16
  %fraglen = getelementptr inbounds %struct.encryptor_desc, ptr %data, i32 0, i32 8
  %6 = ptrtoint ptr %fraglen to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fraglen, align 4
  %length = getelementptr inbounds %struct.scatterlist, ptr %sg, i32 0, i32 2
  %8 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %length, align 4
  %add = add i32 %9, %7
  %fragno = getelementptr inbounds %struct.encryptor_desc, ptr %data, i32 0, i32 7
  %10 = ptrtoint ptr %fragno to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %fragno, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %11)
  %cmp = icmp sgt i32 %11, 3
  br i1 %cmp, label %do.body4, label %do.end9, !prof !44

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/sunrpc/auth_gss/gss_krb5_crypto.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 344, 0\0A.popsection", ""() #7, !srcloc !48
  unreachable

do.end9:                                          ; preds = %entry
  %pos = getelementptr inbounds %struct.encryptor_desc, ptr %data, i32 0, i32 2
  %12 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pos, align 4
  %iov_len = getelementptr inbounds %struct.kvec, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %iov_len to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %iov_len, align 4
  %sub = sub i32 %13, %15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub)
  %cmp10 = icmp sgt i32 %sub, -1
  br i1 %cmp10, label %land.lhs.true, label %do.end9.if.else_crit_edge

do.end9.if.else_crit_edge:                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

land.lhs.true:                                    ; preds = %do.end9
  %page_len = getelementptr inbounds %struct.xdr_buf, ptr %1, i32 0, i32 5
  %16 = ptrtoint ptr %page_len to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %page_len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %17)
  %cmp11 = icmp ult i32 %sub, %17
  br i1 %cmp11, label %if.then12, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

if.then12:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %page_base = getelementptr inbounds %struct.xdr_buf, ptr %1, i32 0, i32 4
  %18 = ptrtoint ptr %page_base to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %page_base, align 4
  %add13 = add i32 %19, %sub
  %shr = lshr i32 %add13, 12
  %pages = getelementptr inbounds %struct.encryptor_desc, ptr %data, i32 0, i32 4
  %20 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pages, align 4
  %arrayidx14 = getelementptr ptr, ptr %21, i32 %shr
  %22 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx14, align 4
  br label %if.end16

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %do.end9.if.else_crit_edge
  %24 = ptrtoint ptr %sg to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %sg, align 4
  %and.i.i = and i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %sg_page.exit, label %do.body2.i, !prof !42

do.body2.i:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #7, !srcloc !49
  unreachable

sg_page.exit:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %and.i = and i32 %25, -4
  %26 = inttoptr i32 %and.i to ptr
  br label %if.end16

if.end16:                                         ; preds = %sg_page.exit, %if.then12
  %in_page.0 = phi ptr [ %23, %if.then12 ], [ %26, %sg_page.exit ]
  %infrags = getelementptr inbounds %struct.encryptor_desc, ptr %data, i32 0, i32 5
  %arrayidx18 = getelementptr %struct.encryptor_desc, ptr %data, i32 0, i32 5, i32 %11
  %offset = getelementptr inbounds %struct.scatterlist, ptr %sg, i32 0, i32 1
  %27 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %offset, align 4
  %29 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx18, align 4
  %31 = ptrtoint ptr %in_page.0 to i32
  %and2.i.i = and i32 %31, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %tobool.not.i.i = icmp eq i32 %and2.i.i, 0
  br i1 %tobool.not.i.i, label %do.body11.i.i, label %do.body5.i.i, !prof !42

do.body5.i.i:                                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #7, !srcloc !50
  unreachable

do.body11.i.i:                                    ; preds = %if.end16
  %and.i.i.i = and i32 %30, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %sg_set_page.exit, label %do.body19.i.i, !prof !42

do.body19.i.i:                                    ; preds = %do.body11.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #7, !srcloc !51
  unreachable

sg_set_page.exit:                                 ; preds = %do.body11.i.i
  %and.i.i144 = and i32 %30, 3
  %or.i.i = or i32 %and.i.i144, %31
  %32 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %or.i.i, ptr %arrayidx18, align 4
  %offset1.i = getelementptr %struct.encryptor_desc, ptr %data, i32 0, i32 5, i32 %11, i32 1
  %33 = ptrtoint ptr %offset1.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %28, ptr %offset1.i, align 4
  %length.i = getelementptr %struct.encryptor_desc, ptr %data, i32 0, i32 5, i32 %11, i32 2
  %34 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %9, ptr %length.i, align 4
  %outfrags = getelementptr inbounds %struct.encryptor_desc, ptr %data, i32 0, i32 6
  %35 = ptrtoint ptr %fragno to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %fragno, align 4
  %arrayidx21 = getelementptr %struct.encryptor_desc, ptr %data, i32 0, i32 6, i32 %36
  %37 = ptrtoint ptr %sg to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %sg, align 4
  %and.i.i145 = and i32 %38, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i145)
  %tobool.i.not.i146 = icmp eq i32 %and.i.i145, 0
  br i1 %tobool.i.not.i146, label %sg_page.exit149, label %do.body2.i147, !prof !42

do.body2.i147:                                    ; preds = %sg_set_page.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #7, !srcloc !49
  unreachable

sg_page.exit149:                                  ; preds = %sg_set_page.exit
  %39 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx21, align 4
  %and.i.i.i150 = and i32 %40, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i150)
  %tobool.i.not.i.i151 = icmp eq i32 %and.i.i.i150, 0
  br i1 %tobool.i.not.i.i151, label %sg_set_page.exit158, label %do.body19.i.i153, !prof !42

do.body19.i.i153:                                 ; preds = %sg_page.exit149
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #7, !srcloc !51
  unreachable

sg_set_page.exit158:                              ; preds = %sg_page.exit149
  %41 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %offset, align 4
  %43 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %length, align 4
  %and.i148 = and i32 %38, -4
  %and.i.i154 = and i32 %40, 3
  %or.i.i155 = or i32 %and.i.i154, %and.i148
  %45 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %or.i.i155, ptr %arrayidx21, align 4
  %offset1.i156 = getelementptr %struct.encryptor_desc, ptr %data, i32 0, i32 6, i32 %36, i32 1
  %46 = ptrtoint ptr %offset1.i156 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %42, ptr %offset1.i156, align 4
  %length.i157 = getelementptr %struct.encryptor_desc, ptr %data, i32 0, i32 6, i32 %36, i32 2
  %47 = ptrtoint ptr %length.i157 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %44, ptr %length.i157, align 4
  %48 = ptrtoint ptr %fragno to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %fragno, align 4
  %inc = add i32 %49, 1
  store i32 %inc, ptr %fragno, align 4
  %50 = load i32, ptr %length, align 4
  %51 = ptrtoint ptr %fraglen to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %fraglen, align 4
  %add28 = add i32 %52, %50
  store i32 %add28, ptr %fraglen, align 4
  %53 = load i32, ptr %length, align 4
  %54 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %pos, align 4
  %add31 = add i32 %55, %53
  store i32 %add31, ptr %pos, align 4
  %__crt_alg.i.i.i = getelementptr i8, ptr %5, i32 12
  %56 = ptrtoint ptr %__crt_alg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %__crt_alg.i.i.i, align 4
  %cra_blocksize.i.i.i = getelementptr inbounds %struct.crypto_alg, ptr %57, i32 0, i32 3
  %58 = ptrtoint ptr %cra_blocksize.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %cra_blocksize.i.i.i, align 4
  %sub33 = add i32 %59, -1
  %and = and i32 %sub33, %add
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %and)
  %cmp35 = icmp eq i32 %add, %and
  br i1 %cmp35, label %sg_set_page.exit158.cleanup_crit_edge, label %if.end37

sg_set_page.exit158.cleanup_crit_edge:            ; preds = %sg_set_page.exit158
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end37:                                         ; preds = %sg_set_page.exit158
  %sub34 = sub i32 %add, %and
  %arrayidx41 = getelementptr %struct.encryptor_desc, ptr %data, i32 0, i32 5, i32 %49
  %60 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx41, align 4
  %or.i = and i32 %61, -4
  %and.i159 = or i32 %or.i, 2
  store i32 %and.i159, ptr %arrayidx41, align 4
  %62 = ptrtoint ptr %fragno to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %fragno, align 4
  %sub44 = add i32 %63, -1
  %arrayidx45 = getelementptr %struct.encryptor_desc, ptr %data, i32 0, i32 6, i32 %sub44
  %64 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx45, align 4
  %or.i160 = and i32 %65, -4
  %and.i161 = or i32 %or.i160, 2
  store i32 %and.i161, ptr %arrayidx45, align 4
  %66 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %req, align 4
  %src1.i = getelementptr inbounds %struct.skcipher_request, ptr %67, i32 0, i32 2
  %68 = ptrtoint ptr %src1.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %infrags, ptr %src1.i, align 8
  %dst2.i = getelementptr inbounds %struct.skcipher_request, ptr %67, i32 0, i32 3
  %69 = ptrtoint ptr %dst2.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %outfrags, ptr %dst2.i, align 4
  %70 = ptrtoint ptr %67 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %sub34, ptr %67, align 128
  %iv4.i = getelementptr inbounds %struct.skcipher_request, ptr %67, i32 0, i32 1
  %71 = ptrtoint ptr %iv4.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %data, ptr %iv4.i, align 4
  %72 = load ptr, ptr %req, align 4
  %call52 = tail call i32 @crypto_skcipher_encrypt(ptr noundef %72) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %if.end55, label %if.end37.cleanup_crit_edge

if.end37.cleanup_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end55:                                         ; preds = %if.end37
  tail call void @sg_init_table(ptr noundef %infrags, i32 noundef 4) #7
  tail call void @sg_init_table(ptr noundef %outfrags, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool60.not = icmp eq i32 %and, 0
  br i1 %tobool60.not, label %if.end55.if.end80_crit_edge, label %if.then61

if.end55.if.end80_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end80

if.then61:                                        ; preds = %if.end55
  %73 = ptrtoint ptr %sg to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %sg, align 4
  %and.i.i162 = and i32 %74, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i162)
  %tobool.i.not.i163 = icmp eq i32 %and.i.i162, 0
  br i1 %tobool.i.not.i163, label %sg_page.exit166, label %do.body2.i164, !prof !42

do.body2.i164:                                    ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #7, !srcloc !49
  unreachable

sg_page.exit166:                                  ; preds = %if.then61
  %75 = ptrtoint ptr %outfrags to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %outfrags, align 4
  %and.i.i.i167 = and i32 %76, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i167)
  %tobool.i.not.i.i168 = icmp eq i32 %and.i.i.i167, 0
  br i1 %tobool.i.not.i.i168, label %do.body11.i, label %do.body19.i.i170, !prof !42

do.body19.i.i170:                                 ; preds = %sg_page.exit166
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #7, !srcloc !51
  unreachable

do.body11.i:                                      ; preds = %sg_page.exit166
  %77 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %offset, align 4
  %79 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %length, align 4
  %add67 = sub i32 %78, %and
  %sub68 = add i32 %add67, %80
  %and.i165 = and i32 %74, -4
  %and.i.i171 = and i32 %76, 3
  %or.i.i172 = or i32 %and.i.i171, %and.i165
  %81 = ptrtoint ptr %outfrags to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %or.i.i172, ptr %outfrags, align 4
  %offset1.i173 = getelementptr inbounds %struct.encryptor_desc, ptr %data, i32 0, i32 6, i32 0, i32 1
  %82 = ptrtoint ptr %offset1.i173 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %sub68, ptr %offset1.i173, align 4
  %length.i174 = getelementptr inbounds %struct.encryptor_desc, ptr %data, i32 0, i32 6, i32 0, i32 2
  %83 = ptrtoint ptr %length.i174 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %and, ptr %length.i174, align 4
  %84 = call ptr @memcpy(ptr %infrags, ptr %outfrags, i32 20)
  %85 = ptrtoint ptr %infrags to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %infrags, align 4
  %and.i.i176 = and i32 %86, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i176)
  %tobool.i.not.i177 = icmp eq i32 %and.i.i176, 0
  br i1 %tobool.i.not.i177, label %sg_assign_page.exit, label %do.body19.i, !prof !42

do.body19.i:                                      ; preds = %do.body11.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #7, !srcloc !51
  unreachable

sg_assign_page.exit:                              ; preds = %do.body11.i
  call void @__sanitizer_cov_trace_pc() #9
  %and.i178 = and i32 %86, 3
  %or.i179 = or i32 %and.i178, %31
  %87 = ptrtoint ptr %infrags to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %or.i179, ptr %infrags, align 4
  br label %if.end80

if.end80:                                         ; preds = %sg_assign_page.exit, %if.end55.if.end80_crit_edge
  %storemerge143 = phi i32 [ 1, %sg_assign_page.exit ], [ 0, %if.end55.if.end80_crit_edge ]
  %88 = ptrtoint ptr %fragno to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %storemerge143, ptr %fragno, align 4
  %89 = ptrtoint ptr %fraglen to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %and, ptr %fraglen, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end80, %if.end37.cleanup_crit_edge, %sg_set_page.exit158.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end80 ], [ 0, %sg_set_page.exit158.cleanup_crit_edge ], [ %call52, %if.end37.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gss_decrypt_xdr_buf(ptr noundef %tfm, ptr noundef %buf, i32 noundef %offset) local_unnamed_addr #0 align 64 {
entry:
  %desc = alloca %struct.decryptor_desc, align 4
  %__req_desc = alloca [512 x i8], align 128
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 108, ptr nonnull %desc) #7
  %0 = getelementptr inbounds i8, ptr %desc, i32 20
  %1 = call ptr @memset(ptr %0, i32 255, i32 80)
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %__req_desc) #7
  %2 = call ptr @memset(ptr %__req_desc, i32 255, i32 512)
  %len = getelementptr inbounds %struct.xdr_buf, ptr %buf, i32 0, i32 8
  %3 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %len, align 4
  %sub = sub i32 %4, %offset
  %__crt_alg.i.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 0, i32 2, i32 3
  %5 = ptrtoint ptr %__crt_alg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %__crt_alg.i.i.i, align 4
  %cra_blocksize.i.i.i = getelementptr inbounds %struct.crypto_alg, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %cra_blocksize.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cra_blocksize.i.i.i, align 4
  %rem = urem i32 %sub, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp.not = icmp eq i32 %rem, 0
  br i1 %cmp.not, label %do.end7, label %do.body2, !prof !42

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/sunrpc/auth_gss/gss_krb5_crypto.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 487, 0\0A.popsection", ""() #7, !srcloc !52
  unreachable

do.end7:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %base.i.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 0, i32 2
  %tfm1.i.i = getelementptr inbounds %struct.skcipher_request, ptr %__req_desc, i32 0, i32 4, i32 3
  %9 = ptrtoint ptr %tfm1.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %base.i.i.i, ptr %tfm1.i.i, align 32
  %complete.i = getelementptr inbounds %struct.skcipher_request, ptr %__req_desc, i32 0, i32 4, i32 1
  %10 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %complete.i, align 8
  %data2.i = getelementptr inbounds %struct.skcipher_request, ptr %__req_desc, i32 0, i32 4, i32 2
  %11 = ptrtoint ptr %data2.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %data2.i, align 4
  %flags4.i = getelementptr inbounds %struct.skcipher_request, ptr %__req_desc, i32 0, i32 4, i32 4
  %12 = ptrtoint ptr %flags4.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %flags4.i, align 4
  %13 = call ptr @memset(ptr %desc, i32 0, i32 16)
  %req9 = getelementptr inbounds %struct.decryptor_desc, ptr %desc, i32 0, i32 1
  %14 = ptrtoint ptr %req9 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %__req_desc, ptr %req9, align 4
  %fragno = getelementptr inbounds %struct.decryptor_desc, ptr %desc, i32 0, i32 3
  %15 = ptrtoint ptr %fragno to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %fragno, align 4
  %fraglen = getelementptr inbounds %struct.decryptor_desc, ptr %desc, i32 0, i32 4
  %16 = ptrtoint ptr %fraglen to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %fraglen, align 4
  %frags = getelementptr inbounds %struct.decryptor_desc, ptr %desc, i32 0, i32 2
  call void @sg_init_table(ptr noundef %frags, i32 noundef 4) #7
  %17 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %len, align 4
  %sub12 = sub i32 %18, %offset
  %call13 = call i32 @xdr_process_buf(ptr noundef %buf, i32 noundef %offset, i32 noundef %sub12, ptr noundef nonnull @decryptor, ptr noundef nonnull %desc) #7
  %19 = ptrtoint ptr %tfm1.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %tfm1.i.i, align 32
  %add.ptr.i.i.i = getelementptr i8, ptr %20, i32 -128
  %21 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %add.ptr.i.i.i, align 128
  %add.i = add i32 %22, 128
  %23 = call ptr @memset(ptr %__req_desc, i32 0, i32 %add.i)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %__req_desc) #7, !srcloc !43
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %__req_desc) #7
  call void @llvm.lifetime.end.p0(i64 108, ptr nonnull %desc) #7
  ret i32 %call13
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @decryptor(ptr nocapture noundef readonly %sg, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %fraglen = getelementptr inbounds %struct.decryptor_desc, ptr %data, i32 0, i32 4
  %length = getelementptr inbounds %struct.scatterlist, ptr %sg, i32 0, i32 2
  %0 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %length, align 4
  %req = getelementptr inbounds %struct.decryptor_desc, ptr %data, i32 0, i32 1
  %2 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %req, align 4
  %tfm.i.i = getelementptr inbounds %struct.skcipher_request, ptr %3, i32 0, i32 4, i32 3
  %4 = ptrtoint ptr %tfm.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tfm.i.i, align 16
  %fragno = getelementptr inbounds %struct.decryptor_desc, ptr %data, i32 0, i32 3
  %6 = ptrtoint ptr %fragno to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fragno, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %7)
  %cmp = icmp sgt i32 %7, 3
  br i1 %cmp, label %do.body3, label %do.end8, !prof !44

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/sunrpc/auth_gss/gss_krb5_crypto.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 443, 0\0A.popsection", ""() #7, !srcloc !53
  unreachable

do.end8:                                          ; preds = %entry
  %8 = ptrtoint ptr %fraglen to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %fraglen, align 4
  %add = add i32 %9, %1
  %frags = getelementptr inbounds %struct.decryptor_desc, ptr %data, i32 0, i32 2
  %arrayidx = getelementptr %struct.decryptor_desc, ptr %data, i32 0, i32 2, i32 %7
  %10 = ptrtoint ptr %sg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sg, align 4
  %and.i.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %sg_page.exit, label %do.body2.i, !prof !42

do.body2.i:                                       ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #7, !srcloc !49
  unreachable

sg_page.exit:                                     ; preds = %do.end8
  %offset = getelementptr inbounds %struct.scatterlist, ptr %sg, i32 0, i32 1
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx, align 4
  %and.i.i.i = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %sg_set_page.exit, label %do.body19.i.i, !prof !42

do.body19.i.i:                                    ; preds = %sg_page.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #7, !srcloc !51
  unreachable

sg_set_page.exit:                                 ; preds = %sg_page.exit
  %14 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %offset, align 4
  %and.i = and i32 %11, -4
  %and.i.i90 = and i32 %13, 3
  %or.i.i = or i32 %and.i.i90, %and.i
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %or.i.i, ptr %arrayidx, align 4
  %offset1.i = getelementptr %struct.decryptor_desc, ptr %data, i32 0, i32 2, i32 %7, i32 1
  %17 = ptrtoint ptr %offset1.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %15, ptr %offset1.i, align 4
  %length.i = getelementptr %struct.decryptor_desc, ptr %data, i32 0, i32 2, i32 %7, i32 2
  %18 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %1, ptr %length.i, align 4
  %19 = ptrtoint ptr %fragno to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %fragno, align 4
  %inc = add i32 %20, 1
  store i32 %inc, ptr %fragno, align 4
  %21 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %length, align 4
  %23 = ptrtoint ptr %fraglen to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %fraglen, align 4
  %add15 = add i32 %24, %22
  store i32 %add15, ptr %fraglen, align 4
  %__crt_alg.i.i.i = getelementptr i8, ptr %5, i32 12
  %25 = ptrtoint ptr %__crt_alg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %__crt_alg.i.i.i, align 4
  %cra_blocksize.i.i.i = getelementptr inbounds %struct.crypto_alg, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %cra_blocksize.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %cra_blocksize.i.i.i, align 4
  %sub = add i32 %28, -1
  %and = and i32 %sub, %add
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %and)
  %cmp18 = icmp eq i32 %add, %and
  br i1 %cmp18, label %sg_set_page.exit.cleanup_crit_edge, label %if.end20

sg_set_page.exit.cleanup_crit_edge:               ; preds = %sg_set_page.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end20:                                         ; preds = %sg_set_page.exit
  %sub17 = sub i32 %add, %and
  %arrayidx24 = getelementptr %struct.decryptor_desc, ptr %data, i32 0, i32 2, i32 %20
  %29 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx24, align 4
  %or.i = and i32 %30, -4
  %and.i91 = or i32 %or.i, 2
  store i32 %and.i91, ptr %arrayidx24, align 4
  %31 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %req, align 4
  %src1.i = getelementptr inbounds %struct.skcipher_request, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %src1.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %frags, ptr %src1.i, align 8
  %dst2.i = getelementptr inbounds %struct.skcipher_request, ptr %32, i32 0, i32 3
  %34 = ptrtoint ptr %dst2.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %frags, ptr %dst2.i, align 4
  %35 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %sub17, ptr %32, align 128
  %iv4.i = getelementptr inbounds %struct.skcipher_request, ptr %32, i32 0, i32 1
  %36 = ptrtoint ptr %iv4.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %data, ptr %iv4.i, align 4
  %37 = load ptr, ptr %req, align 4
  %call31 = tail call i32 @crypto_skcipher_decrypt(ptr noundef %37) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end34, label %if.end20.cleanup_crit_edge

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end34:                                         ; preds = %if.end20
  tail call void @sg_init_table(ptr noundef %frags, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool37.not = icmp eq i32 %and, 0
  br i1 %tobool37.not, label %if.end34.if.end50_crit_edge, label %if.then38

if.end34.if.end50_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end50

if.then38:                                        ; preds = %if.end34
  %38 = ptrtoint ptr %sg to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %sg, align 4
  %and.i.i92 = and i32 %39, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i92)
  %tobool.i.not.i93 = icmp eq i32 %and.i.i92, 0
  br i1 %tobool.i.not.i93, label %sg_page.exit96, label %do.body2.i94, !prof !42

do.body2.i94:                                     ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #7, !srcloc !49
  unreachable

sg_page.exit96:                                   ; preds = %if.then38
  %40 = ptrtoint ptr %frags to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %frags, align 4
  %and.i.i.i97 = and i32 %41, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i97)
  %tobool.i.not.i.i98 = icmp eq i32 %and.i.i.i97, 0
  br i1 %tobool.i.not.i.i98, label %sg_set_page.exit104, label %do.body19.i.i99, !prof !42

do.body19.i.i99:                                  ; preds = %sg_page.exit96
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #7, !srcloc !51
  unreachable

sg_set_page.exit104:                              ; preds = %sg_page.exit96
  call void @__sanitizer_cov_trace_pc() #9
  %42 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %offset, align 4
  %44 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %length, align 4
  %add44 = sub i32 %43, %and
  %sub45 = add i32 %add44, %45
  %and.i95 = and i32 %39, -4
  %and.i.i100 = and i32 %41, 3
  %or.i.i101 = or i32 %and.i.i100, %and.i95
  %46 = ptrtoint ptr %frags to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %or.i.i101, ptr %frags, align 4
  %offset1.i102 = getelementptr inbounds %struct.decryptor_desc, ptr %data, i32 0, i32 2, i32 0, i32 1
  %47 = ptrtoint ptr %offset1.i102 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %sub45, ptr %offset1.i102, align 4
  %length.i103 = getelementptr inbounds %struct.decryptor_desc, ptr %data, i32 0, i32 2, i32 0, i32 2
  %48 = ptrtoint ptr %length.i103 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %and, ptr %length.i103, align 4
  br label %if.end50

if.end50:                                         ; preds = %sg_set_page.exit104, %if.end34.if.end50_crit_edge
  %storemerge89 = phi i32 [ 1, %sg_set_page.exit104 ], [ 0, %if.end34.if.end50_crit_edge ]
  %49 = ptrtoint ptr %fragno to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %storemerge89, ptr %fragno, align 4
  %50 = ptrtoint ptr %fraglen to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %and, ptr %fraglen, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end50, %if.end20.cleanup_crit_edge, %sg_set_page.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end50 ], [ 0, %sg_set_page.exit.cleanup_crit_edge ], [ %call31, %if.end20.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xdr_extend_head(ptr nocapture noundef %buf, i32 noundef %base, i32 noundef %shiftlen) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shiftlen)
  %cmp = icmp eq i32 %shiftlen, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.body1

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 400, i32 %shiftlen)
  %cmp2 = icmp ugt i32 %shiftlen, 400
  br i1 %cmp2, label %do.body5, label %do.end13, !prof !44

do.body5:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/sunrpc/auth_gss/gss_krb5_crypto.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 530, 0\0A.popsection", ""() #7, !srcloc !54
  unreachable

do.end13:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %buf, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %base
  %add.ptr14 = getelementptr i8, ptr %add.ptr, i32 %shiftlen
  %iov_len = getelementptr inbounds %struct.kvec, ptr %buf, i32 0, i32 1
  %2 = ptrtoint ptr %iov_len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %iov_len, align 4
  %sub = sub i32 %3, %base
  %4 = call ptr @memmove(ptr %add.ptr14, ptr %add.ptr, i32 %sub)
  %5 = load i32, ptr %iov_len, align 4
  %add = add i32 %5, %shiftlen
  store i32 %add, ptr %iov_len, align 4
  %len = getelementptr inbounds %struct.xdr_buf, ptr %buf, i32 0, i32 8
  %6 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len, align 4
  %add20 = add i32 %7, %shiftlen
  store i32 %add20, ptr %len, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end13, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gss_krb5_aes_encrypt(ptr noundef %kctx, i32 noundef %offset, ptr noundef %buf, ptr noundef %pages) local_unnamed_addr #0 align 64 {
entry:
  %hmac = alloca %struct.xdr_netobj, align 4
  %desc = alloca %struct.encryptor_desc, align 4
  %__req_desc = alloca [512 x i8], align 128
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %hmac) #7
  %0 = getelementptr inbounds %struct.xdr_netobj, ptr %hmac, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %desc) #7
  %1 = getelementptr inbounds i8, ptr %desc, i32 16
  %2 = call ptr @memset(ptr %1, i32 255, i32 184)
  %3 = ptrtoint ptr %kctx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %kctx, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  %initiator_enc = getelementptr inbounds %struct.krb5_ctx, ptr %kctx, i32 0, i32 7
  %initiator_enc_aux = getelementptr inbounds %struct.krb5_ctx, ptr %kctx, i32 0, i32 9
  %initiator_integ = getelementptr inbounds %struct.krb5_ctx, ptr %kctx, i32 0, i32 20
  %acceptor_enc = getelementptr inbounds %struct.krb5_ctx, ptr %kctx, i32 0, i32 6
  %acceptor_enc_aux = getelementptr inbounds %struct.krb5_ctx, ptr %kctx, i32 0, i32 8
  %acceptor_integ = getelementptr inbounds %struct.krb5_ctx, ptr %kctx, i32 0, i32 21
  %cksumkey.0 = select i1 %tobool.not, ptr %acceptor_integ, ptr %initiator_integ
  %cipher.0.in = select i1 %tobool.not, ptr %acceptor_enc, ptr %initiator_enc
  %aux_cipher.0.in = select i1 %tobool.not, ptr %acceptor_enc_aux, ptr %initiator_enc_aux
  %5 = ptrtoint ptr %aux_cipher.0.in to i32
  call void @__asan_load4_noabort(i32 %5)
  %aux_cipher.0 = load ptr, ptr %aux_cipher.0.in, align 4
  %6 = ptrtoint ptr %cipher.0.in to i32
  call void @__asan_load4_noabort(i32 %6)
  %cipher.0 = load ptr, ptr %cipher.0.in, align 4
  %__crt_alg.i.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %cipher.0, i32 0, i32 2, i32 3
  %7 = ptrtoint ptr %__crt_alg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %__crt_alg.i.i.i, align 4
  %cra_blocksize.i.i.i = getelementptr inbounds %struct.crypto_alg, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %cra_blocksize.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cra_blocksize.i.i.i, align 4
  %add = add i32 %offset, 16
  %gk5e = getelementptr inbounds %struct.krb5_ctx, ptr %kctx, i32 0, i32 3
  %11 = ptrtoint ptr %gk5e to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %gk5e, align 4
  %conflen = getelementptr inbounds %struct.gss_krb5_enctype, ptr %12, i32 0, i32 8
  %13 = ptrtoint ptr %conflen to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %conflen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp.i = icmp eq i32 %14, 0
  br i1 %cmp.i, label %entry.xdr_extend_head.exit_crit_edge, label %do.body1.i

entry.xdr_extend_head.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %xdr_extend_head.exit

do.body1.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 400, i32 %14)
  %cmp2.i = icmp ugt i32 %14, 400
  br i1 %cmp2.i, label %do.body5.i, label %do.end13.i, !prof !44

do.body5.i:                                       ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/sunrpc/auth_gss/gss_krb5_crypto.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 530, 0\0A.popsection", ""() #7, !srcloc !54
  unreachable

do.end13.i:                                       ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %buf, align 4
  %add.ptr.i = getelementptr i8, ptr %16, i32 %add
  %add.ptr14.i = getelementptr i8, ptr %add.ptr.i, i32 %14
  %iov_len.i = getelementptr inbounds %struct.kvec, ptr %buf, i32 0, i32 1
  %17 = ptrtoint ptr %iov_len.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %iov_len.i, align 4
  %sub.i = sub i32 %18, %add
  %19 = call ptr @memmove(ptr %add.ptr14.i, ptr %add.ptr.i, i32 %sub.i)
  %20 = load i32, ptr %iov_len.i, align 4
  %add.i = add i32 %20, %14
  store i32 %add.i, ptr %iov_len.i, align 4
  %len.i = getelementptr inbounds %struct.xdr_buf, ptr %buf, i32 0, i32 8
  %21 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %len.i, align 4
  %add20.i = add i32 %22, %14
  store i32 %add20.i, ptr %len.i, align 4
  br label %xdr_extend_head.exit

xdr_extend_head.exit:                             ; preds = %do.end13.i, %entry.xdr_extend_head.exit_crit_edge
  %23 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %buf, align 4
  %add.ptr = getelementptr i8, ptr %24, i32 %add
  %25 = ptrtoint ptr %gk5e to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %gk5e, align 4
  %conflen7 = getelementptr inbounds %struct.gss_krb5_enctype, ptr %26, i32 0, i32 8
  %27 = ptrtoint ptr %conflen7 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %conflen7, align 4
  tail call void @gss_krb5_make_confounder(ptr noundef %add.ptr, i32 noundef %28) #7
  %tail = getelementptr inbounds %struct.xdr_buf, ptr %buf, i32 0, i32 1
  %29 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %tail, align 4
  %cmp.not = icmp eq ptr %30, null
  br i1 %cmp.not, label %if.else17, label %if.then10

if.then10:                                        ; preds = %xdr_extend_head.exit
  call void @__sanitizer_cov_trace_pc() #9
  %iov_len = getelementptr inbounds %struct.xdr_buf, ptr %buf, i32 0, i32 1, i32 0, i32 1
  %31 = ptrtoint ptr %iov_len to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %iov_len, align 4
  %add.ptr16 = getelementptr i8, ptr %30, i32 %32
  br label %if.end34

if.else17:                                        ; preds = %xdr_extend_head.exit
  call void @__sanitizer_cov_trace_pc() #9
  %33 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %buf, align 4
  %iov_len23 = getelementptr inbounds %struct.kvec, ptr %buf, i32 0, i32 1
  %35 = ptrtoint ptr %iov_len23 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %iov_len23, align 4
  %add.ptr24 = getelementptr i8, ptr %34, i32 %36
  %37 = ptrtoint ptr %tail to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %add.ptr24, ptr %tail, align 4
  %iov_len30 = getelementptr inbounds %struct.xdr_buf, ptr %buf, i32 0, i32 1, i32 0, i32 1
  %38 = ptrtoint ptr %iov_len30 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %iov_len30, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.else17, %if.then10
  %ecptr.0 = phi ptr [ %add.ptr16, %if.then10 ], [ %add.ptr24, %if.else17 ]
  %39 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %buf, align 4
  %add.ptr38 = getelementptr i8, ptr %40, i32 %offset
  %41 = call ptr @memcpy(ptr %ecptr.0, ptr %add.ptr38, i32 16)
  %iov_len41 = getelementptr inbounds %struct.xdr_buf, ptr %buf, i32 0, i32 1, i32 0, i32 1
  %42 = ptrtoint ptr %iov_len41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %iov_len41, align 4
  %add42 = add i32 %43, 16
  store i32 %add42, ptr %iov_len41, align 4
  %len = getelementptr inbounds %struct.xdr_buf, ptr %buf, i32 0, i32 8
  %44 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %len, align 4
  %add43 = add i32 %45, 16
  store i32 %add43, ptr %len, align 4
  %46 = ptrtoint ptr %hmac to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 20, ptr %hmac, align 4
  %47 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %tail, align 4
  %add.ptr51 = getelementptr i8, ptr %48, i32 %add42
  %49 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %add.ptr51, ptr %0, align 4
  %pages52 = getelementptr inbounds %struct.xdr_buf, ptr %buf, i32 0, i32 3
  %50 = ptrtoint ptr %pages52 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %pages52, align 4
  store ptr %pages, ptr %pages52, align 4
  %call55 = call i32 @make_checksum_v2(ptr noundef %kctx, ptr noundef null, i32 noundef 0, ptr noundef %buf, i32 noundef %add, ptr noundef %cksumkey.0, i32 undef, ptr noundef nonnull %hmac)
  %52 = ptrtoint ptr %pages52 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %51, ptr %pages52, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool57.not = icmp eq i32 %call55, 0
  br i1 %tobool57.not, label %if.end59, label %if.end34.cleanup105_crit_edge

if.end34.cleanup105_crit_edge:                    ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup105

if.end59:                                         ; preds = %if.end34
  %53 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %len, align 4
  %sub62 = sub i32 -17, %offset
  %add63 = add i32 %sub62, %10
  %sub64 = add i32 %add63, %54
  %div = sdiv i32 %sub64, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %div)
  %cmp65 = icmp sgt i32 %div, 2
  %sub67 = add i32 %div, -2
  %mul = mul i32 %sub67, %10
  %cbcbytes.0 = select i1 %cmp65, i32 %mul, i32 0
  %55 = call ptr @memset(ptr %desc, i32 0, i32 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cbcbytes.0)
  %tobool70.not = icmp eq i32 %cbcbytes.0, 0
  br i1 %tobool70.not, label %if.end59.if.end84_crit_edge, label %if.then71

if.end59.if.end84_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end84

if.then71:                                        ; preds = %if.end59
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %__req_desc) #7
  %56 = call ptr @memset(ptr %__req_desc, i32 255, i32 512)
  %pos = getelementptr inbounds %struct.encryptor_desc, ptr %desc, i32 0, i32 2
  %57 = ptrtoint ptr %pos to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %add, ptr %pos, align 4
  %fragno = getelementptr inbounds %struct.encryptor_desc, ptr %desc, i32 0, i32 7
  %58 = ptrtoint ptr %fragno to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 0, ptr %fragno, align 4
  %fraglen = getelementptr inbounds %struct.encryptor_desc, ptr %desc, i32 0, i32 8
  %59 = ptrtoint ptr %fraglen to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 0, ptr %fraglen, align 4
  %pages74 = getelementptr inbounds %struct.encryptor_desc, ptr %desc, i32 0, i32 4
  %60 = ptrtoint ptr %pages74 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %pages, ptr %pages74, align 4
  %outbuf = getelementptr inbounds %struct.encryptor_desc, ptr %desc, i32 0, i32 3
  %61 = ptrtoint ptr %outbuf to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %buf, ptr %outbuf, align 4
  %req75 = getelementptr inbounds %struct.encryptor_desc, ptr %desc, i32 0, i32 1
  %62 = ptrtoint ptr %req75 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %__req_desc, ptr %req75, align 4
  %base.i.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %aux_cipher.0, i32 0, i32 2
  %tfm1.i.i = getelementptr inbounds %struct.skcipher_request, ptr %__req_desc, i32 0, i32 4, i32 3
  %63 = ptrtoint ptr %tfm1.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %base.i.i.i, ptr %tfm1.i.i, align 32
  %complete.i = getelementptr inbounds %struct.skcipher_request, ptr %__req_desc, i32 0, i32 4, i32 1
  %64 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr null, ptr %complete.i, align 8
  %data2.i = getelementptr inbounds %struct.skcipher_request, ptr %__req_desc, i32 0, i32 4, i32 2
  %65 = ptrtoint ptr %data2.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr null, ptr %data2.i, align 4
  %flags4.i = getelementptr inbounds %struct.skcipher_request, ptr %__req_desc, i32 0, i32 4, i32 4
  %66 = ptrtoint ptr %flags4.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 0, ptr %flags4.i, align 4
  %infrags = getelementptr inbounds %struct.encryptor_desc, ptr %desc, i32 0, i32 5
  call void @sg_init_table(ptr noundef %infrags, i32 noundef 4) #7
  %outfrags = getelementptr inbounds %struct.encryptor_desc, ptr %desc, i32 0, i32 6
  call void @sg_init_table(ptr noundef %outfrags, i32 noundef 4) #7
  %call79 = call i32 @xdr_process_buf(ptr noundef %buf, i32 noundef %add, i32 noundef %cbcbytes.0, ptr noundef nonnull @encryptor, ptr noundef nonnull %desc) #7
  %67 = ptrtoint ptr %tfm1.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %tfm1.i.i, align 32
  %add.ptr.i.i.i = getelementptr i8, ptr %68, i32 -128
  %69 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %add.ptr.i.i.i, align 128
  %add.i177 = add i32 %70, 128
  %71 = call ptr @memset(ptr %__req_desc, i32 0, i32 %add.i177)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %__req_desc) #7, !srcloc !43
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %tobool80.not = icmp eq i32 %call79, 0
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %__req_desc) #7
  br i1 %tobool80.not, label %if.then71.if.end84_crit_edge, label %if.then71.cleanup105_crit_edge

if.then71.cleanup105_crit_edge:                   ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup105

if.then71.if.end84_crit_edge:                     ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end84

if.end84:                                         ; preds = %if.then71.if.end84_crit_edge, %if.end59.if.end84_crit_edge
  %add86 = add i32 %cbcbytes.0, %add
  %call89 = call fastcc i32 @gss_krb5_cts_crypt(ptr noundef %cipher.0, ptr noundef %buf, i32 noundef %add86, ptr noundef nonnull %desc, ptr noundef %pages, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call89)
  %tobool90.not = icmp eq i32 %call89, 0
  br i1 %tobool90.not, label %72, label %if.end84.cleanup105_crit_edge

if.end84.cleanup105_crit_edge:                    ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup105

72:                                               ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #9
  %73 = ptrtoint ptr %gk5e to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %gk5e, align 4
  %cksumlength = getelementptr inbounds %struct.gss_krb5_enctype, ptr %74, i32 0, i32 9
  %75 = ptrtoint ptr %cksumlength to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %cksumlength, align 4
  %77 = ptrtoint ptr %iov_len41 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %iov_len41, align 4
  %add97 = add i32 %78, %76
  store i32 %add97, ptr %iov_len41, align 4
  %79 = load ptr, ptr %gk5e, align 4
  %cksumlength99 = getelementptr inbounds %struct.gss_krb5_enctype, ptr %79, i32 0, i32 9
  %80 = ptrtoint ptr %cksumlength99 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %cksumlength99, align 4
  %82 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %len, align 4
  %add101 = add i32 %83, %81
  store i32 %add101, ptr %len, align 4
  br label %cleanup105

cleanup105:                                       ; preds = %72, %if.end84.cleanup105_crit_edge, %if.then71.cleanup105_crit_edge, %if.end34.cleanup105_crit_edge
  %retval.0 = phi i32 [ 851968, %if.end34.cleanup105_crit_edge ], [ 0, %72 ], [ 851968, %if.then71.cleanup105_crit_edge ], [ 851968, %if.end84.cleanup105_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %desc) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %hmac) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gss_krb5_make_confounder(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gss_krb5_cts_crypt(ptr noundef %cipher, ptr noundef %buf, i32 noundef %offset, ptr noundef %iv, ptr noundef %pages, i32 noundef %encrypt) unnamed_addr #0 align 64 {
entry:
  %sg = alloca [1 x %struct.scatterlist], align 4
  %__req_desc = alloca [512 x i8], align 128
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %sg) #7
  %0 = call ptr @memset(ptr %sg, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %__req_desc) #7
  %1 = call ptr @memset(ptr %__req_desc, i32 255, i32 512)
  %len1 = getelementptr inbounds %struct.xdr_buf, ptr %buf, i32 0, i32 8
  %2 = ptrtoint ptr %len1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len1, align 4
  %sub = sub i32 %3, %offset
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub)
  %cmp = icmp ugt i32 %sub, 32
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end17

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end17:                                         ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3136, i32 noundef 32) #11
  %tobool18.not = icmp eq ptr %call7.i, null
  br i1 %tobool18.not, label %if.end17.cleanup_crit_edge, label %if.end20

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end20:                                         ; preds = %if.end17
  %pages21 = getelementptr inbounds %struct.xdr_buf, ptr %buf, i32 0, i32 3
  %5 = ptrtoint ptr %pages21 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pages21, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %encrypt)
  %tobool22.not = icmp eq i32 %encrypt, 0
  br i1 %tobool22.not, label %if.end20.if.end25_crit_edge, label %if.then23

if.end20.if.end25_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25

if.then23:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %pages21 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %pages, ptr %pages21, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %if.end20.if.end25_crit_edge
  %call26 = tail call i32 @read_bytes_from_xdr_buf(ptr noundef %buf, i32 noundef %offset, ptr noundef nonnull %call7.i, i32 noundef %sub) #7
  %8 = ptrtoint ptr %pages21 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %6, ptr %pages21, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool28.not = icmp eq i32 %call26, 0
  br i1 %tobool28.not, label %if.end30, label %if.end25.out_crit_edge

if.end25.out_crit_edge:                           ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end30:                                         ; preds = %if.end25
  call void @sg_init_one(ptr noundef nonnull %sg, ptr noundef nonnull %call7.i, i32 noundef %sub) #7
  %base.i.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %cipher, i32 0, i32 2
  %tfm1.i.i = getelementptr inbounds %struct.skcipher_request, ptr %__req_desc, i32 0, i32 4, i32 3
  %9 = ptrtoint ptr %tfm1.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %base.i.i.i, ptr %tfm1.i.i, align 32
  %complete.i = getelementptr inbounds %struct.skcipher_request, ptr %__req_desc, i32 0, i32 4, i32 1
  %10 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %complete.i, align 8
  %data2.i = getelementptr inbounds %struct.skcipher_request, ptr %__req_desc, i32 0, i32 4, i32 2
  %11 = ptrtoint ptr %data2.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %data2.i, align 4
  %flags4.i = getelementptr inbounds %struct.skcipher_request, ptr %__req_desc, i32 0, i32 4, i32 4
  %12 = ptrtoint ptr %flags4.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %flags4.i, align 4
  %src1.i = getelementptr inbounds %struct.skcipher_request, ptr %__req_desc, i32 0, i32 2
  %13 = ptrtoint ptr %src1.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %sg, ptr %src1.i, align 8
  %dst2.i = getelementptr inbounds %struct.skcipher_request, ptr %__req_desc, i32 0, i32 3
  %14 = ptrtoint ptr %dst2.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %sg, ptr %dst2.i, align 4
  %15 = ptrtoint ptr %__req_desc to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %sub, ptr %__req_desc, align 128
  %iv4.i = getelementptr inbounds %struct.skcipher_request, ptr %__req_desc, i32 0, i32 1
  %16 = ptrtoint ptr %iv4.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %iv, ptr %iv4.i, align 4
  br i1 %tobool22.not, label %if.else, label %if.then35

if.then35:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  %call36 = call i32 @crypto_skcipher_encrypt(ptr noundef nonnull %__req_desc) #7
  br label %if.end38

if.else:                                          ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  %call37 = call i32 @crypto_skcipher_decrypt(ptr noundef nonnull %__req_desc) #7
  br label %if.end38

if.end38:                                         ; preds = %if.else, %if.then35
  %ret.0 = phi i32 [ %call36, %if.then35 ], [ %call37, %if.else ]
  %17 = ptrtoint ptr %tfm1.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %tfm1.i.i, align 32
  %add.ptr.i.i.i = getelementptr i8, ptr %18, i32 -128
  %19 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %add.ptr.i.i.i, align 128
  %add.i = add i32 %20, 128
  %21 = call ptr @memset(ptr %__req_desc, i32 0, i32 %add.i)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %__req_desc) #7, !srcloc !43
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool39.not = icmp eq i32 %ret.0, 0
  br i1 %tobool39.not, label %if.end41, label %if.end38.out_crit_edge

if.end38.out_crit_edge:                           ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end41:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  %call42 = call i32 @write_bytes_to_xdr_buf(ptr noundef %buf, i32 noundef %offset, ptr noundef nonnull %call7.i, i32 noundef %sub) #7
  br label %out

out:                                              ; preds = %if.end41, %if.end38.out_crit_edge, %if.end25.out_crit_edge
  %ret.1 = phi i32 [ %call26, %if.end25.out_crit_edge ], [ %ret.0, %if.end38.out_crit_edge ], [ %call42, %if.end41 ]
  call void @kfree(ptr noundef nonnull %call7.i) #7
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end17.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %out ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end17.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %__req_desc) #7
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gss_krb5_aes_decrypt(ptr noundef %kctx, i32 noundef %offset, i32 noundef %len, ptr noundef %buf, ptr nocapture noundef writeonly %headskip, ptr nocapture noundef writeonly %tailskip) local_unnamed_addr #0 align 64 {
entry:
  %subbuf = alloca %struct.xdr_buf, align 4
  %our_hmac_obj = alloca %struct.xdr_netobj, align 4
  %our_hmac = alloca [20 x i8], align 1
  %pkt_hmac = alloca [20 x i8], align 1
  %desc = alloca %struct.decryptor_desc, align 4
  %__req_desc = alloca [512 x i8], align 128
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %subbuf) #7
  %0 = call ptr @memset(ptr %subbuf, i32 255, i32 44)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %our_hmac_obj) #7
  %1 = getelementptr inbounds %struct.xdr_netobj, ptr %our_hmac_obj, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %our_hmac) #7
  %2 = call ptr @memset(ptr %our_hmac, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %pkt_hmac) #7
  %3 = call ptr @memset(ptr %pkt_hmac, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 108, ptr nonnull %desc) #7
  %4 = getelementptr inbounds i8, ptr %desc, i32 16
  %5 = call ptr @memset(ptr %4, i32 255, i32 92)
  %6 = ptrtoint ptr %kctx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %kctx, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  %acceptor_enc = getelementptr inbounds %struct.krb5_ctx, ptr %kctx, i32 0, i32 6
  %acceptor_enc_aux = getelementptr inbounds %struct.krb5_ctx, ptr %kctx, i32 0, i32 8
  %acceptor_integ = getelementptr inbounds %struct.krb5_ctx, ptr %kctx, i32 0, i32 21
  %initiator_enc = getelementptr inbounds %struct.krb5_ctx, ptr %kctx, i32 0, i32 7
  %initiator_enc_aux = getelementptr inbounds %struct.krb5_ctx, ptr %kctx, i32 0, i32 9
  %initiator_integ = getelementptr inbounds %struct.krb5_ctx, ptr %kctx, i32 0, i32 20
  %cksum_key.0 = select i1 %tobool.not, ptr %initiator_integ, ptr %acceptor_integ
  %cipher.0.in = select i1 %tobool.not, ptr %initiator_enc, ptr %acceptor_enc
  %aux_cipher.0.in = select i1 %tobool.not, ptr %initiator_enc_aux, ptr %acceptor_enc_aux
  %8 = ptrtoint ptr %aux_cipher.0.in to i32
  call void @__asan_load4_noabort(i32 %8)
  %aux_cipher.0 = load ptr, ptr %aux_cipher.0.in, align 4
  %9 = ptrtoint ptr %cipher.0.in to i32
  call void @__asan_load4_noabort(i32 %9)
  %cipher.0 = load ptr, ptr %cipher.0.in, align 4
  %__crt_alg.i.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %cipher.0, i32 0, i32 2, i32 3
  %10 = ptrtoint ptr %__crt_alg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %__crt_alg.i.i.i, align 4
  %cra_blocksize.i.i.i = getelementptr inbounds %struct.crypto_alg, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %cra_blocksize.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cra_blocksize.i.i.i, align 4
  %add = add i32 %offset, 16
  %gk5e = getelementptr inbounds %struct.krb5_ctx, ptr %kctx, i32 0, i32 3
  %14 = ptrtoint ptr %gk5e to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %gk5e, align 4
  %cksumlength = getelementptr inbounds %struct.gss_krb5_enctype, ptr %15, i32 0, i32 9
  %16 = ptrtoint ptr %cksumlength to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cksumlength, align 4
  %18 = add i32 %len, -16
  %19 = add i32 %17, %offset
  %sub3 = sub i32 %18, %19
  %call4 = call i32 @xdr_buf_subsegment(ptr noundef %buf, ptr noundef nonnull %subbuf, i32 noundef %add, i32 noundef %sub3) #7
  %len5 = getelementptr inbounds %struct.xdr_buf, ptr %subbuf, i32 0, i32 8
  %20 = ptrtoint ptr %len5 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %len5, align 4
  %add6 = add i32 %13, -1
  %sub7 = add i32 %add6, %21
  %div = udiv i32 %sub7, %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %div)
  %cmp = icmp sgt i32 %div, 2
  %sub9 = add i32 %div, -2
  %mul = mul i32 %sub9, %13
  %cbcbytes.0 = select i1 %cmp, i32 %mul, i32 0
  %22 = call ptr @memset(ptr %desc, i32 0, i32 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cbcbytes.0)
  %tobool12.not = icmp eq i32 %cbcbytes.0, 0
  br i1 %tobool12.not, label %entry.if.end22_crit_edge, label %if.then13

entry.if.end22_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22

if.then13:                                        ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %__req_desc) #7
  %23 = call ptr @memset(ptr %__req_desc, i32 255, i32 512)
  %fragno = getelementptr inbounds %struct.decryptor_desc, ptr %desc, i32 0, i32 3
  %24 = ptrtoint ptr %fragno to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %fragno, align 4
  %fraglen = getelementptr inbounds %struct.decryptor_desc, ptr %desc, i32 0, i32 4
  %25 = ptrtoint ptr %fraglen to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %fraglen, align 4
  %req15 = getelementptr inbounds %struct.decryptor_desc, ptr %desc, i32 0, i32 1
  %26 = ptrtoint ptr %req15 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %__req_desc, ptr %req15, align 4
  %base.i.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %aux_cipher.0, i32 0, i32 2
  %tfm1.i.i = getelementptr inbounds %struct.skcipher_request, ptr %__req_desc, i32 0, i32 4, i32 3
  %27 = ptrtoint ptr %tfm1.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %base.i.i.i, ptr %tfm1.i.i, align 32
  %complete.i = getelementptr inbounds %struct.skcipher_request, ptr %__req_desc, i32 0, i32 4, i32 1
  %28 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %complete.i, align 8
  %data2.i = getelementptr inbounds %struct.skcipher_request, ptr %__req_desc, i32 0, i32 4, i32 2
  %29 = ptrtoint ptr %data2.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %data2.i, align 4
  %flags4.i = getelementptr inbounds %struct.skcipher_request, ptr %__req_desc, i32 0, i32 4, i32 4
  %30 = ptrtoint ptr %flags4.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %flags4.i, align 4
  %frags = getelementptr inbounds %struct.decryptor_desc, ptr %desc, i32 0, i32 2
  call void @sg_init_table(ptr noundef %frags, i32 noundef 4) #7
  %call17 = call i32 @xdr_process_buf(ptr noundef nonnull %subbuf, i32 noundef 0, i32 noundef %cbcbytes.0, ptr noundef nonnull @decryptor, ptr noundef nonnull %desc) #7
  %31 = ptrtoint ptr %tfm1.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %tfm1.i.i, align 32
  %add.ptr.i.i.i = getelementptr i8, ptr %32, i32 -128
  %33 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %add.ptr.i.i.i, align 128
  %add.i = add i32 %34, 128
  %35 = call ptr @memset(ptr %__req_desc, i32 0, i32 %add.i)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %__req_desc) #7, !srcloc !43
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %__req_desc) #7
  br i1 %tobool18.not, label %if.then13.if.end22_crit_edge, label %if.then13.out_err_crit_edge

if.then13.out_err_crit_edge:                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_err

if.then13.if.end22_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22

if.end22:                                         ; preds = %if.then13.if.end22_crit_edge, %entry.if.end22_crit_edge
  %call25 = call fastcc i32 @gss_krb5_cts_crypt(ptr noundef %cipher.0, ptr noundef nonnull %subbuf, i32 noundef %cbcbytes.0, ptr noundef nonnull %desc, ptr noundef null, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end28, label %if.end22.out_err_crit_edge

if.end22.out_err_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_err

if.end28:                                         ; preds = %if.end22
  %36 = ptrtoint ptr %our_hmac_obj to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 20, ptr %our_hmac_obj, align 4
  %37 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %our_hmac, ptr %1, align 4
  %call31 = call i32 @make_checksum_v2(ptr noundef %kctx, ptr noundef null, i32 noundef 0, ptr noundef nonnull %subbuf, i32 noundef 0, ptr noundef %cksum_key.0, i32 undef, ptr noundef nonnull %our_hmac_obj)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end34, label %if.end28.out_err_crit_edge

if.end28.out_err_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_err

if.end34:                                         ; preds = %if.end28
  %38 = ptrtoint ptr %gk5e to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %gk5e, align 4
  %cksumlength36 = getelementptr inbounds %struct.gss_krb5_enctype, ptr %39, i32 0, i32 9
  %40 = ptrtoint ptr %cksumlength36 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %cksumlength36, align 4
  %sub37 = sub i32 %len, %41
  %call41 = call i32 @read_bytes_from_xdr_buf(ptr noundef %buf, i32 noundef %sub37, ptr noundef nonnull %pkt_hmac, i32 noundef %41) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.end44, label %if.end34.out_err_crit_edge

if.end34.out_err_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_err

if.end44:                                         ; preds = %if.end34
  %42 = ptrtoint ptr %gk5e to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %gk5e, align 4
  %cksumlength48 = getelementptr inbounds %struct.gss_krb5_enctype, ptr %43, i32 0, i32 9
  %44 = ptrtoint ptr %cksumlength48 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %cksumlength48, align 4
  %call.i = call i32 @__crypto_memneq(ptr noundef nonnull %pkt_hmac, ptr noundef nonnull %our_hmac, i32 noundef %45) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not.i.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not.i.not, label %.thread, label %if.end44.out_err.thread.thread_crit_edge

if.end44.out_err.thread.thread_crit_edge:         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_err.thread.thread

.thread:                                          ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  %46 = ptrtoint ptr %gk5e to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %gk5e, align 4
  %conflen = getelementptr inbounds %struct.gss_krb5_enctype, ptr %47, i32 0, i32 8
  %48 = ptrtoint ptr %conflen to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %conflen, align 4
  %50 = ptrtoint ptr %headskip to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %headskip, align 4
  %51 = load ptr, ptr %gk5e, align 4
  %cksumlength55 = getelementptr inbounds %struct.gss_krb5_enctype, ptr %51, i32 0, i32 9
  %52 = ptrtoint ptr %cksumlength55 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %cksumlength55, align 4
  %54 = ptrtoint ptr %tailskip to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %tailskip, align 4
  br label %out_err.thread.thread

out_err:                                          ; preds = %if.end34.out_err_crit_edge, %if.end28.out_err_crit_edge, %if.end22.out_err_crit_edge, %if.then13.out_err_crit_edge
  %ret.0 = phi i32 [ %call17, %if.then13.out_err_crit_edge ], [ %call25, %if.end22.out_err_crit_edge ], [ %call31, %if.end28.out_err_crit_edge ], [ %call41, %if.end34.out_err_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 393216, i32 %ret.0)
  %cmp57.not = icmp eq i32 %ret.0, 393216
  %. = select i1 %cmp57.not, i32 393216, i32 851968
  br label %out_err.thread.thread

out_err.thread.thread:                            ; preds = %out_err, %.thread, %if.end44.out_err.thread.thread_crit_edge
  %55 = phi i32 [ 0, %.thread ], [ 393216, %if.end44.out_err.thread.thread_crit_edge ], [ %., %out_err ]
  call void @llvm.lifetime.end.p0(i64 108, ptr nonnull %desc) #7
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %pkt_hmac) #7
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %our_hmac) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %our_hmac_obj) #7
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %subbuf) #7
  ret i32 %55
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xdr_buf_subsegment(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @read_bytes_from_xdr_buf(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_stats_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_stats_ahash_update(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_sensitive(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_destroy_tfm(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @write_bytes_to_xdr_buf(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__crypto_memneq(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !15, !17, !18, !19, !21, !22, !23, !24, !26, !27, !28, !29, !31, !32}
!llvm.module.flags = !{!33, !34, !35, !36, !37, !38, !39, !40}
!llvm.ident = !{!41}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/sunrpc/auth_gss/gss_krb5_crypto.c", i32 71, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @krb5_encrypt._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @krb5_encrypt._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../net/sunrpc/auth_gss/gss_krb5_crypto.c", i32 89, i32 2}
!8 = !{ptr @krb5_encrypt._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @krb5_encrypt._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../net/sunrpc/auth_gss/gss_krb5_crypto.c", i32 110, i32 3}
!12 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @krb5_decrypt._entry, !11, !"_entry", i1 false, i1 false}
!14 = !{ptr @krb5_decrypt._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../net/sunrpc/auth_gss/gss_krb5_crypto.c", i32 127, i32 2}
!17 = !{ptr @krb5_decrypt._entry.8, !16, !"_entry", i1 false, i1 false}
!18 = !{ptr @krb5_decrypt._entry_ptr.10, !16, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.11, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../net/sunrpc/auth_gss/gss_krb5_crypto.c", i32 159, i32 3}
!21 = !{ptr @.str.12, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @make_checksum._entry, !20, !"_entry", i1 false, i1 false}
!23 = !{ptr @make_checksum._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.13, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../net/sunrpc/auth_gss/gss_krb5_crypto.c", i32 250, i32 3}
!26 = !{ptr @.str.14, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @make_checksum_v2._entry, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @make_checksum_v2._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.16, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../net/sunrpc/auth_gss/gss_krb5_crypto.c", i32 255, i32 3}
!31 = !{ptr @make_checksum_v2._entry.15, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @make_checksum_v2._entry_ptr.17, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{i32 1, !"wchar_size", i32 2}
!34 = !{i32 1, !"min_enum_size", i32 4}
!35 = !{i32 8, !"branch-target-enforcement", i32 0}
!36 = !{i32 8, !"sign-return-address", i32 0}
!37 = !{i32 8, !"sign-return-address-all", i32 0}
!38 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!39 = !{i32 7, !"uwtable", i32 1}
!40 = !{i32 7, !"frame-pointer", i32 2}
!41 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!42 = !{!"branch_weights", i32 2000, i32 1}
!43 = !{i64 2149234727}
!44 = !{!"branch_weights", i32 1, i32 2000}
!45 = !{i64 2155249581, i64 2155250083, i64 2155249618, i64 2155249674, i64 2155249708, i64 2155249732, i64 2155249773, i64 2155249794, i64 2155249822, i64 2155249856}
!46 = !{i64 2155255400, i64 2155255902, i64 2155255437, i64 2155255493, i64 2155255527, i64 2155255551, i64 2155255592, i64 2155255613, i64 2155255641, i64 2155255675}
!47 = !{i64 2155259304, i64 2155259806, i64 2155259341, i64 2155259397, i64 2155259431, i64 2155259455, i64 2155259496, i64 2155259517, i64 2155259545, i64 2155259579}
!48 = !{i64 2155257101, i64 2155257603, i64 2155257138, i64 2155257194, i64 2155257228, i64 2155257252, i64 2155257293, i64 2155257314, i64 2155257342, i64 2155257376}
!49 = !{i64 2153535157, i64 2153535649, i64 2153535194, i64 2153535250, i64 2153535284, i64 2153535308, i64 2153535349, i64 2153535370, i64 2153535398, i64 2153535432}
!50 = !{i64 2153531599, i64 2153532091, i64 2153531636, i64 2153531692, i64 2153531726, i64 2153531750, i64 2153531791, i64 2153531812, i64 2153531840, i64 2153531874}
!51 = !{i64 2153533209, i64 2153533701, i64 2153533246, i64 2153533302, i64 2153533336, i64 2153533360, i64 2153533401, i64 2153533422, i64 2153533450, i64 2153533484}
!52 = !{i64 2155263175, i64 2155263677, i64 2155263212, i64 2155263268, i64 2155263302, i64 2155263326, i64 2155263367, i64 2155263388, i64 2155263416, i64 2155263450}
!53 = !{i64 2155260975, i64 2155261477, i64 2155261012, i64 2155261068, i64 2155261102, i64 2155261126, i64 2155261167, i64 2155261188, i64 2155261216, i64 2155261250}
!54 = !{i64 2155266967, i64 2155267469, i64 2155267004, i64 2155267060, i64 2155267094, i64 2155267118, i64 2155267159, i64 2155267180, i64 2155267208, i64 2155267242}
