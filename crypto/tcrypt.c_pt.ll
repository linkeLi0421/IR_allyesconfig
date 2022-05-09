; ModuleID = '/llk/IR_all_yes/crypto/tcrypt.c_pt.bc'
source_filename = "../crypto/tcrypt.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.65 }
%union.anon.65 = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.cipher_speed_template = type { ptr, i32 }
%struct.hash_speed = type { i32, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.crypto_wait = type { %struct.completion, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.crypto_aead = type { i32, i32, [120 x i8], %struct.crypto_tfm }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [112 x i8], [0 x ptr] }
%struct.crypto_alg = type { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, %struct.refcount_struct, [128 x i8], [128 x i8], ptr, %union.anon.72, ptr, ptr, ptr, ptr, %union.anon.73, [120 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%union.anon.72 = type { %struct.cipher_alg }
%struct.cipher_alg = type { i32, i32, ptr, ptr, ptr }
%union.anon.73 = type { %struct.crypto_istat_akcipher }
%struct.crypto_istat_akcipher = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%struct.crypto_async_request = type { %struct.list_head, ptr, ptr, ptr, i32 }
%struct.aead_request = type { %struct.crypto_async_request, i32, i32, ptr, ptr, ptr, [84 x i8], [0 x ptr] }
%struct.test_mb_aead_data = type { [8 x %struct.scatterlist], [8 x %struct.scatterlist], ptr, %struct.crypto_wait, [8 x ptr], [8 x ptr], [8 x ptr] }
%struct.crypto_ahash = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, [92 x i8], %struct.crypto_tfm }
%struct.test_mb_ahash_data = type { [8 x %struct.scatterlist], [64 x i8], ptr, %struct.crypto_wait, [8 x ptr] }
%struct.page = type { i32, %union.anon.2, %union.anon.63, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.63 = type { %struct.atomic_t }
%struct.ahash_request = type { %struct.crypto_async_request, i32, ptr, ptr, ptr, [88 x i8], [0 x ptr] }
%struct.test_mb_skcipher_data = type { [8 x %struct.scatterlist], ptr, %struct.crypto_wait, [8 x ptr] }
%struct.crypto_skcipher = type { i32, [124 x i8], %struct.crypto_tfm }
%struct.skcipher_request = type { i32, ptr, ptr, ptr, %struct.crypto_async_request, [88 x i8], [0 x ptr] }

@__initcall__kmod_tcrypt__232_3100_tcrypt_mod_init7 = internal global ptr @tcrypt_mod_init, section ".initcall7.init", align 4
@__exitcall_tcrypt_mod_fini = internal global ptr @tcrypt_mod_fini, section ".exitcall.exit", align 4
@__param_str_alg = internal constant [11 x i8] c"tcrypt.alg\00", align 1
@param_ops_charp = external dso_local constant %struct.kernel_param_ops, align 4
@alg = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__param_alg = internal constant %struct.kernel_param { ptr @__param_str_alg, ptr null, ptr @param_ops_charp, i16 0, i8 -1, i8 0, %union.anon.65 { ptr @alg } }, section "__param", align 4
@__UNIQUE_ID_algtype233 = internal constant [26 x i8] c"tcrypt.parmtype=alg:charp\00", section ".modinfo", align 1
@__param_str_type = internal constant [12 x i8] c"tcrypt.type\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@type = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_type = internal constant %struct.kernel_param { ptr @__param_str_type, ptr null, ptr @param_ops_uint, i16 0, i8 -1, i8 0, %union.anon.65 { ptr @type } }, section "__param", align 4
@__UNIQUE_ID_typetype234 = internal constant [26 x i8] c"tcrypt.parmtype=type:uint\00", section ".modinfo", align 1
@__param_str_mask = internal constant [12 x i8] c"tcrypt.mask\00", align 1
@mask = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_mask = internal constant %struct.kernel_param { ptr @__param_str_mask, ptr null, ptr @param_ops_uint, i16 0, i8 -1, i8 0, %union.anon.65 { ptr @mask } }, section "__param", align 4
@__UNIQUE_ID_masktype235 = internal constant [26 x i8] c"tcrypt.parmtype=mask:uint\00", section ".modinfo", align 1
@__param_str_mode = internal constant [12 x i8] c"tcrypt.mode\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@mode = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_mode = internal constant %struct.kernel_param { ptr @__param_str_mode, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.65 { ptr @mode } }, section "__param", align 4
@__UNIQUE_ID_modetype236 = internal constant [25 x i8] c"tcrypt.parmtype=mode:int\00", section ".modinfo", align 1
@__param_str_sec = internal constant [11 x i8] c"tcrypt.sec\00", align 1
@sec = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_sec = internal constant %struct.kernel_param { ptr @__param_str_sec, ptr null, ptr @param_ops_uint, i16 0, i8 -1, i8 0, %union.anon.65 { ptr @sec } }, section "__param", align 4
@__UNIQUE_ID_sectype237 = internal constant [25 x i8] c"tcrypt.parmtype=sec:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_sec238 = internal constant [98 x i8] c"tcrypt.parm=sec:Length in seconds of speed tests (defaults to zero which uses CPU cycles instead)\00", section ".modinfo", align 1
@__param_str_num_mb = internal constant [14 x i8] c"tcrypt.num_mb\00", align 1
@num_mb = internal global { i32, [28 x i8] } { i32 8, [28 x i8] zeroinitializer }, align 32
@__param_num_mb = internal constant %struct.kernel_param { ptr @__param_str_num_mb, ptr null, ptr @param_ops_uint, i16 0, i8 -1, i8 0, %union.anon.65 { ptr @num_mb } }, section "__param", align 4
@__UNIQUE_ID_num_mbtype239 = internal constant [28 x i8] c"tcrypt.parmtype=num_mb:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_num_mb240 = internal constant [94 x i8] c"tcrypt.parm=num_mb:Number of concurrent requests to be used in mb speed tests (defaults to 8)\00", section ".modinfo", align 1
@__param_str_klen = internal constant [12 x i8] c"tcrypt.klen\00", align 1
@klen = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_klen = internal constant %struct.kernel_param { ptr @__param_str_klen, ptr null, ptr @param_ops_uint, i16 0, i8 -1, i8 0, %union.anon.65 { ptr @klen } }, section "__param", align 4
@__UNIQUE_ID_klentype241 = internal constant [26 x i8] c"tcrypt.parmtype=klen:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_klen242 = internal constant [44 x i8] c"tcrypt.parm=klen:Key length (defaults to 0)\00", section ".modinfo", align 1
@__UNIQUE_ID_file243 = internal constant [26 x i8] c"tcrypt.file=crypto/tcrypt\00", section ".modinfo", align 1
@__UNIQUE_ID_license244 = internal constant [19 x i8] c"tcrypt.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description245 = internal constant [55 x i8] c"tcrypt.description=Quick & dirty crypto testing module\00", section ".modinfo", align 1
@__UNIQUE_ID_author246 = internal constant [54 x i8] c"tcrypt.author=James Morris <jmorris@intercode.com.au>\00", section ".modinfo", align 1
@tvmem = internal global { [4 x ptr], [16 x i8] } zeroinitializer, align 32
@tcrypt_mod_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 3071, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013tcrypt: one or more tests failed!\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tcrypt_mod_init\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"crypto/tcrypt.c\00", [16 x i8] zeroinitializer }, align 32
@tcrypt_mod_init._entry_ptr = internal global ptr @tcrypt_mod_init._entry, section ".printk_index", align 4
@tcrypt_mod_init.__UNIQUE_ID_ddebug231 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 3, i8 0, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.3 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"tcrypt\00", [25 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"all tests passed\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"tcrypt: all tests passed\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"md5\00", [28 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sha1\00", [27 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ecb(des)\00", [23 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"cbc(des)\00", [23 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ctr(des)\00", [23 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ecb(des3_ede)\00", [18 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"cbc(des3_ede)\00", [18 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ctr(des3_ede)\00", [18 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"md4\00", [28 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sha256\00", [25 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ecb(blowfish)\00", [18 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"cbc(blowfish)\00", [18 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ctr(blowfish)\00", [18 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ecb(twofish)\00", [19 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"cbc(twofish)\00", [19 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ctr(twofish)\00", [19 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"lrw(twofish)\00", [19 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"xts(twofish)\00", [19 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ecb(serpent)\00", [19 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"cbc(serpent)\00", [19 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ctr(serpent)\00", [19 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"lrw(serpent)\00", [19 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"xts(serpent)\00", [19 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ecb(aes)\00", [23 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"cbc(aes)\00", [23 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"lrw(aes)\00", [23 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"xts(aes)\00", [23 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ctr(aes)\00", [23 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rfc3686(ctr(aes))\00", [46 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ofb(aes)\00", [23 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"cfb(aes)\00", [23 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sha384\00", [25 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sha512\00", [25 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"deflate\00", [24 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ecb(cast5)\00", [21 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"cbc(cast5)\00", [21 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ctr(cast5)\00", [21 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ecb(cast6)\00", [21 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"cbc(cast6)\00", [21 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ctr(cast6)\00", [21 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"lrw(cast6)\00", [21 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"xts(cast6)\00", [21 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ecb(arc4)\00", [22 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"michael_mic\00", [20 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"crc32c\00", [25 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ecb(tea)\00", [23 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ecb(xtea)\00", [22 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ecb(khazad)\00", [20 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"wp512\00", [26 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"wp384\00", [26 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"wp256\00", [26 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ecb(anubis)\00", [20 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"cbc(anubis)\00", [20 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ecb(xeta)\00", [22 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pcbc(fcrypt)\00", [19 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ecb(camellia)\00", [18 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"cbc(camellia)\00", [18 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ctr(camellia)\00", [18 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"lrw(camellia)\00", [18 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"xts(camellia)\00", [18 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sha224\00", [25 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"gcm(aes)\00", [23 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"lzo\00", [28 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ccm(aes)\00", [23 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"cts(cbc(aes))\00", [18 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"xxhash64\00", [23 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"rmd160\00", [25 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"blake2s-256\00", [20 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"blake2b-512\00", [20 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ecb(seed)\00", [22 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rfc4309(ccm(aes))\00", [46 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ghash\00", [26 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"crct10dif\00", [22 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sha3-224\00", [23 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sha3-256\00", [23 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sha3-384\00", [23 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sha3-512\00", [23 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"sm3\00", [28 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"streebog256\00", [20 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"streebog512\00", [20 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"gcm(sm4)\00", [23 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ccm(sm4)\00", [23 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"hmac(md5)\00", [22 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"hmac(sha1)\00", [21 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"hmac(sha256)\00", [19 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"hmac(sha384)\00", [19 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"hmac(sha512)\00", [19 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"hmac(sha224)\00", [19 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"xcbc(aes)\00", [22 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"hmac(rmd160)\00", [19 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"vmac64(aes)\00", [20 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"hmac(sha3-224)\00", [17 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"hmac(sha3-256)\00", [17 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"hmac(sha3-384)\00", [17 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"hmac(sha3-512)\00", [17 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"hmac(streebog256)\00", [46 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"hmac(streebog512)\00", [46 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ansi_cprng\00", [21 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rfc4106(gcm(aes))\00", [46 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rfc4543(gcm(aes))\00", [46 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"cmac(aes)\00", [22 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cmac(des3_ede)\00", [17 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"authenc(hmac(sha1),cbc(aes))\00", [35 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"authenc(hmac(md5),ecb(cipher_null))\00", [60 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"authenc(hmac(sha1),ecb(cipher_null))\00", [59 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"cbcmac(sm4)\00", [20 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"cmac(sm4)\00", [22 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"authenc(hmac(sha1),cbc(des))\00", [35 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"authenc(hmac(sha1),cbc(des3_ede))\00", [62 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"authenc(hmac(sha224),cbc(des))\00", [33 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"authenc(hmac(sha224),cbc(des3_ede))\00", [60 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"authenc(hmac(sha256),cbc(des))\00", [33 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"authenc(hmac(sha256),cbc(des3_ede))\00", [60 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"authenc(hmac(sha384),cbc(des))\00", [33 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"authenc(hmac(sha384),cbc(des3_ede))\00", [60 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"authenc(hmac(sha512),cbc(des))\00", [33 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"authenc(hmac(sha512),cbc(des3_ede))\00", [60 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ecb(sm4)\00", [23 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"cbc(sm4)\00", [23 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"cfb(sm4)\00", [23 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ctr(sm4)\00", [23 x i8] zeroinitializer }, align 32
@speed_template_16_24_32 = internal global { [4 x i8], [28 x i8] } { [4 x i8] c"\10\18 \00", [28 x i8] zeroinitializer }, align 32
@speed_template_32_40_48 = internal global { [4 x i8], [28 x i8] } { [4 x i8] c" (0\00", [28 x i8] zeroinitializer }, align 32
@speed_template_32_64 = internal global { [3 x i8], [29 x i8] } { [3 x i8] c" @\00", [29 x i8] zeroinitializer }, align 32
@des3_speed_template = internal global { [1 x %struct.cipher_speed_template], [24 x i8] } { [1 x %struct.cipher_speed_template] [%struct.cipher_speed_template { ptr @.str.171, i32 24 }], [24 x i8] zeroinitializer }, align 32
@speed_template_24 = internal global { [2 x i8], [30 x i8] } { [2 x i8] c"\18\00", [30 x i8] zeroinitializer }, align 32
@speed_template_32_48_64 = internal global { [4 x i8], [28 x i8] } { [4 x i8] c" 0@\00", [28 x i8] zeroinitializer }, align 32
@speed_template_8_32 = internal global { [3 x i8], [29 x i8] } { [3 x i8] c"\08 \00", [29 x i8] zeroinitializer }, align 32
@speed_template_8 = internal global { [2 x i8], [30 x i8] } { [2 x i8] c"\08\00", [30 x i8] zeroinitializer }, align 32
@speed_template_16_32 = internal global { [3 x i8], [29 x i8] } { [3 x i8] c"\10 \00", [29 x i8] zeroinitializer }, align 32
@speed_template_32_48 = internal global { [3 x i8], [29 x i8] } { [3 x i8] c" 0\00", [29 x i8] zeroinitializer }, align 32
@speed_template_8_16 = internal global { [3 x i8], [29 x i8] } { [3 x i8] c"\08\10\00", [29 x i8] zeroinitializer }, align 32
@aead_speed_template_20 = internal global { [2 x i8], [30 x i8] } { [2 x i8] c"\14\00", [30 x i8] zeroinitializer }, align 32
@aead_speed_template_19 = internal global { [2 x i8], [30 x i8] } { [2 x i8] c"\13\00", [30 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"rfc7539esp(chacha20,poly1305)\00", [34 x i8] zeroinitializer }, align 32
@aead_speed_template_36 = internal global { [2 x i8], [30 x i8] } { [2 x i8] c"$\00", [30 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"chacha20\00", [23 x i8] zeroinitializer }, align 32
@speed_template_32 = internal global { [2 x i8], [30 x i8] } { [2 x i8] c" \00", [30 x i8] zeroinitializer }, align 32
@speed_template_16 = internal global { [2 x i8], [30 x i8] } { [2 x i8] c"\10\00", [30 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"adiantum(xchacha12,aes)\00", [40 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"adiantum(xchacha20,aes)\00", [40 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"essiv(cbc(aes),sha256)\00", [41 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"aegis128\00", [23 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rfc4309(ccm(sm4))\00", [46 x i8] zeroinitializer }, align 32
@generic_hash_speed_template = internal global { [23 x %struct.hash_speed], [40 x i8] } { [23 x %struct.hash_speed] [%struct.hash_speed { i32 16, i32 16 }, %struct.hash_speed { i32 64, i32 16 }, %struct.hash_speed { i32 64, i32 64 }, %struct.hash_speed { i32 256, i32 16 }, %struct.hash_speed { i32 256, i32 64 }, %struct.hash_speed { i32 256, i32 256 }, %struct.hash_speed { i32 1024, i32 16 }, %struct.hash_speed { i32 1024, i32 256 }, %struct.hash_speed { i32 1024, i32 1024 }, %struct.hash_speed { i32 2048, i32 16 }, %struct.hash_speed { i32 2048, i32 256 }, %struct.hash_speed { i32 2048, i32 1024 }, %struct.hash_speed { i32 2048, i32 2048 }, %struct.hash_speed { i32 4096, i32 16 }, %struct.hash_speed { i32 4096, i32 256 }, %struct.hash_speed { i32 4096, i32 1024 }, %struct.hash_speed { i32 4096, i32 4096 }, %struct.hash_speed { i32 8192, i32 16 }, %struct.hash_speed { i32 8192, i32 256 }, %struct.hash_speed { i32 8192, i32 1024 }, %struct.hash_speed { i32 8192, i32 4096 }, %struct.hash_speed { i32 8192, i32 8192 }, %struct.hash_speed zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"poly1305\00", [23 x i8] zeroinitializer }, align 32
@poly1305_speed_template = internal global { [13 x %struct.hash_speed], [56 x i8] } { [13 x %struct.hash_speed] [%struct.hash_speed { i32 96, i32 16 }, %struct.hash_speed { i32 96, i32 32 }, %struct.hash_speed { i32 96, i32 96 }, %struct.hash_speed { i32 288, i32 16 }, %struct.hash_speed { i32 288, i32 32 }, %struct.hash_speed { i32 288, i32 288 }, %struct.hash_speed { i32 1056, i32 32 }, %struct.hash_speed { i32 1056, i32 1056 }, %struct.hash_speed { i32 2080, i32 32 }, %struct.hash_speed { i32 2080, i32 2080 }, %struct.hash_speed { i32 4128, i32 4128 }, %struct.hash_speed { i32 8224, i32 8224 }, %struct.hash_speed zeroinitializer], [56 x i8] zeroinitializer }, align 32
@speed_template_20_28_36 = internal global { [4 x i8], [28 x i8] } { [4 x i8] c"\14\1C$\00", [28 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"cfb(des3_ede)\00", [18 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ofb(des3_ede)\00", [18 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"cfb(des)\00", [23 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ofb(des)\00", [23 x i8] zeroinitializer }, align 32
@tcrypt_test.__UNIQUE_ID_ddebug230 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.139, ptr @.str.2, ptr @.str.140, i8 1, i8 -96, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.139 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"tcrypt_test\00", [20 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"testing %s\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"tcrypt: testing %s\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"encryption\00", [21 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"decryption\00", [21 x i8] zeroinitializer }, align 32
@test_skcipher_speed._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.144, ptr @.str.145, ptr @.str.2, i32 1528, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013tcrypt: failed to load transform for %s: %ld\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"test_skcipher_speed\00", [44 x i8] zeroinitializer }, align 32
@test_skcipher_speed._entry_ptr = internal global ptr @test_skcipher_speed._entry, section ".printk_index", align 4
@test_skcipher_speed._entry.146 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.145, ptr @.str.2, i32 1533, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016tcrypt: \0Atesting speed of %s %s (%s) %s\0A\00", [53 x i8] zeroinitializer }, align 32
@test_skcipher_speed._entry_ptr.148 = internal global ptr @test_skcipher_speed._entry.146, section ".printk_index", align 4
@.str.149 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"async\00", [26 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sync\00", [27 x i8] zeroinitializer }, align 32
@test_skcipher_speed._entry.151 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.145, ptr @.str.2, i32 1538, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\013tcrypt: tcrypt: skcipher: Failed to allocate request for %s\0A\00", [33 x i8] zeroinitializer }, align 32
@test_skcipher_speed._entry_ptr.153 = internal global ptr @test_skcipher_speed._entry.151, section ".printk_index", align 4
@block_sizes = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 16, i32 64, i32 128, i32 256, i32 1024, i32 1420, i32 4096, i32 0], [32 x i8] zeroinitializer }, align 32
@test_skcipher_speed._entry.154 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.155, ptr @.str.145, ptr @.str.2, i32 1556, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013tcrypt: template (%u) too big for tvmem (%lu)\0A\00", [47 x i8] zeroinitializer }, align 32
@test_skcipher_speed._entry_ptr.156 = internal global ptr @test_skcipher_speed._entry.154, section ".printk_index", align 4
@test_skcipher_speed._entry.157 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.158, ptr @.str.145, ptr @.str.2, i32 1561, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\016tcrypt: test %u (%d bit key, %d byte blocks): \00", [47 x i8] zeroinitializer }, align 32
@test_skcipher_speed._entry_ptr.159 = internal global ptr @test_skcipher_speed._entry.157, section ".printk_index", align 4
@test_skcipher_speed._entry.160 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.161, ptr @.str.145, ptr @.str.2, i32 1579, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013tcrypt: setkey() failed flags=%x\0A\00", [60 x i8] zeroinitializer }, align 32
@test_skcipher_speed._entry_ptr.162 = internal global ptr @test_skcipher_speed._entry.160, section ".printk_index", align 4
@test_skcipher_speed._entry.163 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.164, ptr @.str.145, ptr @.str.2, i32 1620, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013tcrypt: %s() failed flags=%x\0A\00", [32 x i8] zeroinitializer }, align 32
@test_skcipher_speed._entry_ptr.165 = internal global ptr @test_skcipher_speed._entry.163, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.166 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@high_memory = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@test_acipher_jiffies._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.167, ptr @.str.168, ptr @.str.2, i32 1453, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\01c%d operations in %d seconds (%llu bytes)\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"test_acipher_jiffies\00", [43 x i8] zeroinitializer }, align 32
@test_acipher_jiffies._entry_ptr = internal global ptr @test_acipher_jiffies._entry, section ".printk_index", align 4
@test_acipher_cycles._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.169, ptr @.str.170, ptr @.str.2, i32 1499, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\01c1 operation in %lu cycles (%d bytes)\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"test_acipher_cycles\00", [44 x i8] zeroinitializer }, align 32
@test_acipher_cycles._entry_ptr = internal global ptr @test_acipher_cycles._entry, section ".printk_index", align 4
@.str.171 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\01#Eg\89\AB\CD\EFUUUUUUUU\FE\DC\BA\98vT2\10\00", [39 x i8] zeroinitializer }, align 32
@test_aead_speed._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.172, ptr @.str.173, ptr @.str.2, i32 553, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013tcrypt: associate data length (%u) too big\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"test_aead_speed\00", [16 x i8] zeroinitializer }, align 32
@test_aead_speed._entry_ptr = internal global ptr @test_aead_speed._entry, section ".printk_index", align 4
@test_aead_speed._entry.174 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.175, ptr @.str.173, ptr @.str.2, i32 577, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\013tcrypt: alg: aead: Failed to load transform for %s: %ld\0A\00", [37 x i8] zeroinitializer }, align 32
@test_aead_speed._entry_ptr.176 = internal global ptr @test_aead_speed._entry.174, section ".printk_index", align 4
@test_aead_speed._entry.177 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.178, ptr @.str.173, ptr @.str.2, i32 584, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013tcrypt: alg: aead: Failed to setauthsize for %s: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@test_aead_speed._entry_ptr.179 = internal global ptr @test_aead_speed._entry.177, section ".printk_index", align 4
@test_aead_speed._entry.180 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.181, ptr @.str.173, ptr @.str.2, i32 590, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016\0Atesting speed of %s (%s) %s\0A\00", [32 x i8] zeroinitializer }, align 32
@test_aead_speed._entry_ptr.182 = internal global ptr @test_aead_speed._entry.180, section ".printk_index", align 4
@test_aead_speed._entry.183 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.184, ptr @.str.173, ptr @.str.2, i32 595, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013tcrypt: alg: aead: Failed to allocate request for %s\0A\00", [40 x i8] zeroinitializer }, align 32
@test_aead_speed._entry_ptr.185 = internal global ptr @test_aead_speed._entry.183, section ".printk_index", align 4
@aead_sizes = internal constant { [9 x i32], [60 x i8] } { [9 x i32] [i32 16, i32 64, i32 256, i32 512, i32 1024, i32 1420, i32 4096, i32 8192, i32 0], [60 x i8] zeroinitializer }, align 32
@test_aead_speed._entry.186 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.155, ptr @.str.173, ptr @.str.2, i32 614, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_aead_speed._entry_ptr.187 = internal global ptr @test_aead_speed._entry.186, section ".printk_index", align 4
@test_aead_speed._entry.188 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.189, ptr @.str.173, ptr @.str.2, i32 629, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013tcrypt: setkey() failed flags=%x: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@test_aead_speed._entry_ptr.190 = internal global ptr @test_aead_speed._entry.188, section ".printk_index", align 4
@test_aead_speed._entry.191 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.192, ptr @.str.173, ptr @.str.2, i32 639, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016test %u (%d bit key, %d byte blocks): \00", [55 x i8] zeroinitializer }, align 32
@test_aead_speed._entry_ptr.193 = internal global ptr @test_aead_speed._entry.191, section ".printk_index", align 4
@test_aead_speed._entry.194 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.195, ptr @.str.173, ptr @.str.2, i32 666, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013tcrypt: calculating auth failed (%d)\0A\00", [56 x i8] zeroinitializer }, align 32
@test_aead_speed._entry_ptr.196 = internal global ptr @test_aead_speed._entry.194, section ".printk_index", align 4
@test_aead_speed._entry.197 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.198, ptr @.str.173, ptr @.str.2, i32 684, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013tcrypt: %s() failed return code=%d\0A\00", [58 x i8] zeroinitializer }, align 32
@test_aead_speed._entry_ptr.199 = internal global ptr @test_aead_speed._entry.197, section ".printk_index", align 4
@test_aead_jiffies._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.167, ptr @.str.200, ptr @.str.2, i32 480, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.200 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"test_aead_jiffies\00", [46 x i8] zeroinitializer }, align 32
@test_aead_jiffies._entry_ptr = internal global ptr @test_aead_jiffies._entry, section ".printk_index", align 4
@test_aead_cycles._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.201, ptr @.str.202, ptr @.str.2, i32 521, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"1 operation in %lu cycles (%d bytes)\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.202 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"test_aead_cycles\00", [47 x i8] zeroinitializer }, align 32
@test_aead_cycles._entry_ptr = internal global ptr @test_aead_cycles._entry, section ".printk_index", align 4
@test_mb_aead_speed._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.172, ptr @.str.203, ptr @.str.2, i32 268, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"test_mb_aead_speed\00", [45 x i8] zeroinitializer }, align 32
@test_mb_aead_speed._entry_ptr = internal global ptr @test_mb_aead_speed._entry, section ".printk_index", align 4
@test_mb_aead_speed._entry.204 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.144, ptr @.str.203, ptr @.str.2, i32 288, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_mb_aead_speed._entry_ptr.205 = internal global ptr @test_mb_aead_speed._entry.204, section ".printk_index", align 4
@test_mb_aead_speed._entry.206 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.178, ptr @.str.203, ptr @.str.2, i32 295, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_mb_aead_speed._entry_ptr.207 = internal global ptr @test_mb_aead_speed._entry.206, section ".printk_index", align 4
@test_mb_aead_speed._entry.208 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.184, ptr @.str.203, ptr @.str.2, i32 324, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_mb_aead_speed._entry_ptr.209 = internal global ptr @test_mb_aead_speed._entry.208, section ".printk_index", align 4
@test_mb_aead_speed._entry.210 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.211, ptr @.str.203, ptr @.str.2, i32 339, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.211 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\016tcrypt: \0Atesting speed of multibuffer %s (%s) %s\0A\00", [44 x i8] zeroinitializer }, align 32
@test_mb_aead_speed._entry_ptr.212 = internal global ptr @test_mb_aead_speed._entry.210, section ".printk_index", align 4
@test_mb_aead_speed._entry.213 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.214, ptr @.str.203, ptr @.str.2, i32 350, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.214 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013tcrypt: template (%u) too big for buffer (%lu)\0A\00", [46 x i8] zeroinitializer }, align 32
@test_mb_aead_speed._entry_ptr.215 = internal global ptr @test_mb_aead_speed._entry.213, section ".printk_index", align 4
@test_mb_aead_speed._entry.216 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.158, ptr @.str.203, ptr @.str.2, i32 355, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_mb_aead_speed._entry_ptr.217 = internal global ptr @test_mb_aead_speed._entry.216, section ".printk_index", align 4
@test_mb_aead_speed._entry.218 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.161, ptr @.str.203, ptr @.str.2, i32 373, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_mb_aead_speed._entry_ptr.219 = internal global ptr @test_mb_aead_speed._entry.218, section ".printk_index", align 4
@test_mb_aead_speed._entry.220 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.195, ptr @.str.203, ptr @.str.2, i32 410, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_mb_aead_speed._entry_ptr.221 = internal global ptr @test_mb_aead_speed._entry.220, section ".printk_index", align 4
@test_mb_aead_speed._entry.222 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.198, ptr @.str.203, ptr @.str.2, i32 432, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_mb_aead_speed._entry_ptr.223 = internal global ptr @test_mb_aead_speed._entry.222, section ".printk_index", align 4
@test_mb_aead_jiffies._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.167, ptr @.str.224, ptr @.str.2, i32 203, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.224 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"test_mb_aead_jiffies\00", [43 x i8] zeroinitializer }, align 32
@test_mb_aead_jiffies._entry_ptr = internal global ptr @test_mb_aead_jiffies._entry, section ".printk_index", align 4
@do_mult_aead_op._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.225, ptr @.str.226, ptr @.str.2, i32 175, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.225 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016tcrypt: concurrent request %d error %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.226 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"do_mult_aead_op\00", [16 x i8] zeroinitializer }, align 32
@do_mult_aead_op._entry_ptr = internal global ptr @do_mult_aead_op._entry, section ".printk_index", align 4
@test_mb_aead_cycles._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.169, ptr @.str.227, ptr @.str.2, i32 244, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.227 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"test_mb_aead_cycles\00", [44 x i8] zeroinitializer }, align 32
@test_mb_aead_cycles._entry_ptr = internal global ptr @test_mb_aead_cycles._entry, section ".printk_index", align 4
@test_ahash_speed_common._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.144, ptr @.str.228, ptr @.str.2, i32 1081, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.228 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"test_ahash_speed_common\00", [40 x i8] zeroinitializer }, align 32
@test_ahash_speed_common._entry_ptr = internal global ptr @test_ahash_speed_common._entry, section ".printk_index", align 4
@test_ahash_speed_common._entry.229 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.230, ptr @.str.228, ptr @.str.2, i32 1086, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.230 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016\0Atesting speed of async %s (%s)\0A\00", [61 x i8] zeroinitializer }, align 32
@test_ahash_speed_common._entry_ptr.231 = internal global ptr @test_ahash_speed_common._entry.229, section ".printk_index", align 4
@test_ahash_speed_common._entry.232 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.233, ptr @.str.228, ptr @.str.2, i32 1090, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.233 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013tcrypt: digestsize(%u) > %d\0A\00", [33 x i8] zeroinitializer }, align 32
@test_ahash_speed_common._entry_ptr.234 = internal global ptr @test_ahash_speed_common._entry.232, section ".printk_index", align 4
@test_ahash_speed_common._entry.235 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.236, ptr @.str.228, ptr @.str.2, i32 1097, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.236 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013tcrypt: ahash request allocation failure\0A\00", [52 x i8] zeroinitializer }, align 32
@test_ahash_speed_common._entry_ptr.237 = internal global ptr @test_ahash_speed_common._entry.235, section ".printk_index", align 4
@test_ahash_speed_common._entry.238 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.155, ptr @.str.228, ptr @.str.2, i32 1112, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_ahash_speed_common._entry_ptr.239 = internal global ptr @test_ahash_speed_common._entry.238, section ".printk_index", align 4
@test_ahash_speed_common._entry.240 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.241, ptr @.str.228, ptr @.str.2, i32 1121, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.241 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"\016tcrypt: test%3u (%5u byte blocks,%5u bytes per update,%4u updates): \00", [57 x i8] zeroinitializer }, align 32
@test_ahash_speed_common._entry_ptr.242 = internal global ptr @test_ahash_speed_common._entry.240, section ".printk_index", align 4
@test_ahash_speed_common._entry.243 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.244, ptr @.str.228, ptr @.str.2, i32 1135, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.244 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013tcrypt: hashing failed ret=%d\0A\00", [63 x i8] zeroinitializer }, align 32
@test_ahash_speed_common._entry_ptr.245 = internal global ptr @test_ahash_speed_common._entry.243, section ".printk_index", align 4
@test_ahash_jiffies._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.246, ptr @.str.247, ptr @.str.2, i32 968, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.246 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\01c%6u opers/sec, %9lu bytes/sec\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.247 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"test_ahash_jiffies\00", [45 x i8] zeroinitializer }, align 32
@test_ahash_jiffies._entry_ptr = internal global ptr @test_ahash_jiffies._entry, section ".printk_index", align 4
@test_ahash_jiffies_digest._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.248, ptr @.str.249, ptr @.str.2, i32 936, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.248 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%6u opers/sec, %9lu bytes/sec\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.249 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"test_ahash_jiffies_digest\00", [38 x i8] zeroinitializer }, align 32
@test_ahash_jiffies_digest._entry_ptr = internal global ptr @test_ahash_jiffies_digest._entry, section ".printk_index", align 4
@test_ahash_cycles._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.250, ptr @.str.251, ptr @.str.2, i32 1063, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.250 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\01c%6lu cycles/operation, %4lu cycles/byte\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.251 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"test_ahash_cycles\00", [46 x i8] zeroinitializer }, align 32
@test_ahash_cycles._entry_ptr = internal global ptr @test_ahash_cycles._entry, section ".printk_index", align 4
@test_ahash_cycles_digest._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.250, ptr @.str.252, ptr @.str.2, i32 1006, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.252 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"test_ahash_cycles_digest\00", [39 x i8] zeroinitializer }, align 32
@test_ahash_cycles_digest._entry_ptr = internal global ptr @test_ahash_cycles_digest._entry, section ".printk_index", align 4
@test_mb_ahash_speed._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.144, ptr @.str.253, ptr @.str.2, i32 840, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.253 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"test_mb_ahash_speed\00", [44 x i8] zeroinitializer }, align 32
@test_mb_ahash_speed._entry_ptr = internal global ptr @test_mb_ahash_speed._entry, section ".printk_index", align 4
@test_mb_ahash_speed._entry.254 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.255, ptr @.str.253, ptr @.str.2, i32 853, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.255 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013tcrypt: alg: hash: Failed to allocate request for %s\0A\00", [40 x i8] zeroinitializer }, align 32
@test_mb_ahash_speed._entry_ptr.256 = internal global ptr @test_mb_ahash_speed._entry.254, section ".printk_index", align 4
@test_mb_ahash_speed._entry.257 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.258, ptr @.str.253, ptr @.str.2, i32 868, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.258 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\016tcrypt: \0Atesting speed of multibuffer %s (%s)\0A\00", [47 x i8] zeroinitializer }, align 32
@test_mb_ahash_speed._entry_ptr.259 = internal global ptr @test_mb_ahash_speed._entry.257, section ".printk_index", align 4
@test_mb_ahash_speed._entry.260 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.155, ptr @.str.253, ptr @.str.2, i32 877, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_mb_ahash_speed._entry_ptr.261 = internal global ptr @test_mb_ahash_speed._entry.260, section ".printk_index", align 4
@test_mb_ahash_speed._entry.262 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.241, ptr @.str.253, ptr @.str.2, i32 891, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_mb_ahash_speed._entry_ptr.263 = internal global ptr @test_mb_ahash_speed._entry.262, section ".printk_index", align 4
@test_mb_ahash_speed._entry.264 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.265, ptr @.str.253, ptr @.str.2, i32 903, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.265 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013tcrypt: At least one hashing failed ret=%d\0A\00", [50 x i8] zeroinitializer }, align 32
@test_mb_ahash_speed._entry_ptr.266 = internal global ptr @test_mb_ahash_speed._entry.264, section ".printk_index", align 4
@test_mb_ahash_jiffies._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.167, ptr @.str.267, ptr @.str.2, i32 777, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.267 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"test_mb_ahash_jiffies\00", [42 x i8] zeroinitializer }, align 32
@test_mb_ahash_jiffies._entry_ptr = internal global ptr @test_mb_ahash_jiffies._entry, section ".printk_index", align 4
@do_mult_ahash_op._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.225, ptr @.str.268, ptr @.str.2, i32 749, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.268 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"do_mult_ahash_op\00", [47 x i8] zeroinitializer }, align 32
@do_mult_ahash_op._entry_ptr = internal global ptr @do_mult_ahash_op._entry, section ".printk_index", align 4
@test_mb_ahash_cycles._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.169, ptr @.str.269, ptr @.str.2, i32 818, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.269 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"test_mb_ahash_cycles\00", [43 x i8] zeroinitializer }, align 32
@test_mb_ahash_cycles._entry_ptr = internal global ptr @test_mb_ahash_cycles._entry, section ".printk_index", align 4
@test_mb_skcipher_speed._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.144, ptr @.str.270, ptr @.str.2, i32 1287, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.270 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"test_mb_skcipher_speed\00", [41 x i8] zeroinitializer }, align 32
@test_mb_skcipher_speed._entry_ptr = internal global ptr @test_mb_skcipher_speed._entry, section ".printk_index", align 4
@test_mb_skcipher_speed._entry.271 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.272, ptr @.str.270, ptr @.str.2, i32 1311, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.272 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\013tcrypt: alg: skcipher: Failed to allocate request for %s\0A\00", [36 x i8] zeroinitializer }, align 32
@test_mb_skcipher_speed._entry_ptr.273 = internal global ptr @test_mb_skcipher_speed._entry.271, section ".printk_index", align 4
@test_mb_skcipher_speed._entry.274 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.211, ptr @.str.270, ptr @.str.2, i32 1326, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_mb_skcipher_speed._entry_ptr.275 = internal global ptr @test_mb_skcipher_speed._entry.274, section ".printk_index", align 4
@test_mb_skcipher_speed._entry.276 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.214, ptr @.str.270, ptr @.str.2, i32 1336, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_mb_skcipher_speed._entry_ptr.277 = internal global ptr @test_mb_skcipher_speed._entry.276, section ".printk_index", align 4
@test_mb_skcipher_speed._entry.278 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.158, ptr @.str.270, ptr @.str.2, i32 1341, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_mb_skcipher_speed._entry_ptr.279 = internal global ptr @test_mb_skcipher_speed._entry.278, section ".printk_index", align 4
@test_mb_skcipher_speed._entry.280 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.161, ptr @.str.270, ptr @.str.2, i32 1359, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_mb_skcipher_speed._entry_ptr.281 = internal global ptr @test_mb_skcipher_speed._entry.280, section ".printk_index", align 4
@test_mb_skcipher_speed._entry.282 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.164, ptr @.str.270, ptr @.str.2, i32 1404, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_mb_skcipher_speed._entry_ptr.283 = internal global ptr @test_mb_skcipher_speed._entry.282, section ".printk_index", align 4
@test_mb_acipher_jiffies._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.167, ptr @.str.284, ptr @.str.2, i32 1214, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.284 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"test_mb_acipher_jiffies\00", [40 x i8] zeroinitializer }, align 32
@test_mb_acipher_jiffies._entry_ptr = internal global ptr @test_mb_acipher_jiffies._entry, section ".printk_index", align 4
@do_mult_acipher_op._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.225, ptr @.str.285, ptr @.str.2, i32 1186, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.285 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"do_mult_acipher_op\00", [45 x i8] zeroinitializer }, align 32
@do_mult_acipher_op._entry_ptr = internal global ptr @do_mult_acipher_op._entry, section ".printk_index", align 4
@test_mb_acipher_cycles._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.169, ptr @.str.286, ptr @.str.2, i32 1255, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.286 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"test_mb_acipher_cycles\00", [41 x i8] zeroinitializer }, align 32
@test_mb_acipher_cycles._entry_ptr = internal global ptr @test_mb_acipher_cycles._entry, section ".printk_index", align 4
@check = internal constant { [41 x ptr], [60 x i8] } { [41 x ptr] [ptr @.str.291, ptr @.str.6, ptr @.str.292, ptr @.str.293, ptr @.str.7, ptr @.str.66, ptr @.str.15, ptr @.str.83, ptr @.str.294, ptr @.str.295, ptr @.str.296, ptr @.str.37, ptr @.str.38, ptr @.str.14, ptr @.str.297, ptr @.str.298, ptr @.str.299, ptr @.str.49, ptr @.str.39, ptr @.str.50, ptr @.str.300, ptr @.str.301, ptr @.str.302, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.303, ptr @.str.304, ptr @.str.305, ptr @.str.306, ptr @.str.72, ptr @.str.68, ptr @.str.307, ptr @.str.308, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.84, ptr @.str.85, ptr null], [60 x i8] zeroinitializer }, align 32
@test_available._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.287, ptr @.str.288, ptr @.str.2, i32 1656, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.287 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"alg %s \00", [24 x i8] zeroinitializer }, align 32
@.str.288 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"test_available\00", [17 x i8] zeroinitializer }, align 32
@test_available._entry_ptr = internal global ptr @test_available._entry, section ".printk_index", align 4
@.str.289 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"found\0A\00", [25 x i8] zeroinitializer }, align 32
@.str.290 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"not found\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.291 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"des\00", [28 x i8] zeroinitializer }, align 32
@.str.292 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"des3_ede\00", [23 x i8] zeroinitializer }, align 32
@.str.293 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"rot13\00", [26 x i8] zeroinitializer }, align 32
@.str.294 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"blowfish\00", [23 x i8] zeroinitializer }, align 32
@.str.295 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"twofish\00", [24 x i8] zeroinitializer }, align 32
@.str.296 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"serpent\00", [24 x i8] zeroinitializer }, align 32
@.str.297 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"aes\00", [28 x i8] zeroinitializer }, align 32
@.str.298 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"cast6\00", [26 x i8] zeroinitializer }, align 32
@.str.299 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"arc4\00", [27 x i8] zeroinitializer }, align 32
@.str.300 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"tea\00", [28 x i8] zeroinitializer }, align 32
@.str.301 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"xtea\00", [27 x i8] zeroinitializer }, align 32
@.str.302 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"khazad\00", [25 x i8] zeroinitializer }, align 32
@.str.303 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"xeta\00", [27 x i8] zeroinitializer }, align 32
@.str.304 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"fcrypt\00", [25 x i8] zeroinitializer }, align 32
@.str.305 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"camellia\00", [23 x i8] zeroinitializer }, align 32
@.str.306 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"seed\00", [27 x i8] zeroinitializer }, align 32
@.str.307 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"lzo-rle\00", [24 x i8] zeroinitializer }, align 32
@.str.308 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"cts\00", [28 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [187 x i64] [i64 185, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23, i64 24, i64 26, i64 30, i64 31, i64 32, i64 33, i64 35, i64 36, i64 37, i64 38, i64 39, i64 40, i64 41, i64 42, i64 43, i64 45, i64 46, i64 47, i64 48, i64 49, i64 50, i64 51, i64 52, i64 53, i64 54, i64 55, i64 56, i64 100, i64 101, i64 102, i64 103, i64 104, i64 105, i64 106, i64 108, i64 109, i64 111, i64 112, i64 113, i64 114, i64 115, i64 116, i64 150, i64 151, i64 152, i64 153, i64 154, i64 155, i64 156, i64 157, i64 158, i64 159, i64 181, i64 182, i64 183, i64 184, i64 185, i64 186, i64 187, i64 188, i64 189, i64 190, i64 191, i64 200, i64 201, i64 202, i64 203, i64 204, i64 205, i64 207, i64 208, i64 209, i64 210, i64 211, i64 212, i64 213, i64 214, i64 215, i64 216, i64 217, i64 218, i64 219, i64 220, i64 221, i64 222, i64 223, i64 224, i64 225, i64 300, i64 301, i64 302, i64 303, i64 304, i64 305, i64 306, i64 307, i64 308, i64 309, i64 313, i64 314, i64 315, i64 316, i64 317, i64 318, i64 319, i64 320, i64 321, i64 322, i64 323, i64 324, i64 325, i64 326, i64 327, i64 328, i64 400, i64 401, i64 402, i64 403, i64 404, i64 405, i64 406, i64 407, i64 408, i64 409, i64 413, i64 414, i64 415, i64 416, i64 417, i64 418, i64 419, i64 420, i64 421, i64 422, i64 423, i64 424, i64 425, i64 426, i64 427, i64 500, i64 501, i64 502, i64 503, i64 504, i64 505, i64 506, i64 507, i64 508, i64 509, i64 518, i64 600, i64 601, i64 602, i64 603, i64 604, i64 605, i64 606, i64 607, i64 608, i64 609, i64 1000]
@__sancov_gen_cov_switch_values.309 = internal global [4 x i64] [i64 2, i64 32, i64 4294967181, i64 4294967280]
@__sancov_gen_cov_switch_values.310 = internal global [4 x i64] [i64 2, i64 32, i64 4294967181, i64 4294967280]
@__sancov_gen_cov_switch_values.311 = internal global [4 x i64] [i64 2, i64 32, i64 4294967181, i64 4294967280]
@__sancov_gen_cov_switch_values.312 = internal global [4 x i64] [i64 2, i64 32, i64 4294967181, i64 4294967280]
@__sancov_gen_cov_switch_values.313 = internal global [4 x i64] [i64 2, i64 32, i64 4294967181, i64 4294967280]
@__sancov_gen_cov_switch_values.314 = internal global [4 x i64] [i64 2, i64 32, i64 4294967181, i64 4294967280]
@__sancov_gen_cov_switch_values.315 = internal global [4 x i64] [i64 2, i64 32, i64 4294967181, i64 4294967280]
@__sancov_gen_cov_switch_values.316 = internal global [4 x i64] [i64 2, i64 32, i64 4294967181, i64 4294967280]
@__sancov_gen_cov_switch_values.317 = internal global [4 x i64] [i64 2, i64 32, i64 4294967181, i64 4294967280]
@__sancov_gen_cov_switch_values.318 = internal global [4 x i64] [i64 2, i64 32, i64 4294967181, i64 4294967280]
@__sancov_gen_cov_switch_values.319 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967181, i64 4294967280]
@__sancov_gen_cov_switch_values.320 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967181, i64 4294967280]
@__sancov_gen_cov_switch_values.321 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967181, i64 4294967280]
@__sancov_gen_cov_switch_values.322 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967181, i64 4294967280]
@__sancov_gen_cov_switch_values.323 = internal global [4 x i64] [i64 2, i64 32, i64 4294967181, i64 4294967280]
@__sancov_gen_cov_switch_values.324 = internal global [4 x i64] [i64 2, i64 32, i64 4294967181, i64 4294967280]
@__sancov_gen_cov_switch_values.325 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967181, i64 4294967280]
@__sancov_gen_cov_switch_values.326 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967181, i64 4294967280]
@__sancov_gen_cov_switch_values.327 = internal global [4 x i64] [i64 2, i64 32, i64 4294967181, i64 4294967280]
@__sancov_gen_cov_switch_values.328 = internal global [4 x i64] [i64 2, i64 32, i64 4294967181, i64 4294967280]
@__sancov_gen_cov_switch_values.329 = internal global [4 x i64] [i64 2, i64 32, i64 4294967181, i64 4294967280]
@__sancov_gen_cov_switch_values.330 = internal global [4 x i64] [i64 2, i64 32, i64 4294967181, i64 4294967280]
@__sancov_gen_cov_switch_values.331 = internal global [4 x i64] [i64 2, i64 32, i64 4294967181, i64 4294967280]
@__sancov_gen_cov_switch_values.332 = internal global [4 x i64] [i64 2, i64 32, i64 4294967181, i64 4294967280]
@__sancov_gen_cov_switch_values.333 = internal global [4 x i64] [i64 2, i64 32, i64 4294967181, i64 4294967280]
@__sancov_gen_cov_switch_values.334 = internal global [4 x i64] [i64 2, i64 32, i64 4294967181, i64 4294967280]
@__sancov_gen_cov_switch_values.335 = internal global [4 x i64] [i64 2, i64 32, i64 4294967181, i64 4294967280]
@__sancov_gen_cov_switch_values.336 = internal global [4 x i64] [i64 2, i64 32, i64 4294967181, i64 4294967280]
@__sancov_gen_cov_switch_values.337 = internal global [4 x i64] [i64 2, i64 32, i64 4294967181, i64 4294967280]
@__sancov_gen_cov_switch_values.338 = internal global [4 x i64] [i64 2, i64 32, i64 4294967181, i64 4294967280]
@__sancov_gen_cov_switch_values.339 = internal global [4 x i64] [i64 2, i64 32, i64 4294967181, i64 4294967280]
@__sancov_gen_cov_switch_values.340 = internal global [4 x i64] [i64 2, i64 32, i64 4294967181, i64 4294967280]
@__sancov_gen_cov_switch_values.341 = internal global [4 x i64] [i64 2, i64 32, i64 4294967181, i64 4294967280]
@__sancov_gen_cov_switch_values.342 = internal global [4 x i64] [i64 2, i64 32, i64 4294967181, i64 4294967280]
@__sancov_gen_cov_switch_values.343 = internal global [4 x i64] [i64 2, i64 32, i64 4294967181, i64 4294967280]
@__sancov_gen_cov_switch_values.344 = internal global [4 x i64] [i64 2, i64 32, i64 4294967181, i64 4294967280]
@__sancov_gen_cov_switch_values.345 = internal global [4 x i64] [i64 2, i64 32, i64 4294967181, i64 4294967280]
@__sancov_gen_cov_switch_values.346 = internal global [4 x i64] [i64 2, i64 32, i64 4294967181, i64 4294967280]
@__sancov_gen_cov_switch_values.347 = internal global [4 x i64] [i64 2, i64 32, i64 4294967181, i64 4294967280]
@__sancov_gen_cov_switch_values.348 = internal global [4 x i64] [i64 2, i64 32, i64 4294967181, i64 4294967280]
@__sancov_gen_cov_switch_values.349 = internal global [4 x i64] [i64 2, i64 32, i64 4294967181, i64 4294967280]
@__sancov_gen_cov_switch_values.350 = internal global [4 x i64] [i64 2, i64 32, i64 4294967181, i64 4294967280]
@__sancov_gen_cov_switch_values.351 = internal global [4 x i64] [i64 2, i64 32, i64 4294967181, i64 4294967280]
@__sancov_gen_cov_switch_values.352 = internal global [4 x i64] [i64 2, i64 32, i64 4294967181, i64 4294967280]
@__sancov_gen_cov_switch_values.353 = internal global [4 x i64] [i64 2, i64 32, i64 4294967181, i64 4294967280]
@__sancov_gen_cov_switch_values.354 = internal global [4 x i64] [i64 2, i64 32, i64 4294967181, i64 4294967280]
@__sancov_gen_cov_switch_values.355 = internal global [4 x i64] [i64 2, i64 32, i64 4294967181, i64 4294967280]
@__sancov_gen_cov_switch_values.356 = internal global [4 x i64] [i64 2, i64 32, i64 4294967181, i64 4294967280]
@__sancov_gen_cov_switch_values.357 = internal global [4 x i64] [i64 2, i64 32, i64 4294967181, i64 4294967280]
@___asan_gen_.358 = private unnamed_addr constant [4 x i8] c"alg\00", align 1
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 61, i32 14 }
@___asan_gen_.361 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 62, i32 12 }
@___asan_gen_.364 = private unnamed_addr constant [5 x i8] c"mask\00", align 1
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 63, i32 12 }
@___asan_gen_.367 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 64, i32 12 }
@___asan_gen_.370 = private unnamed_addr constant [4 x i8] c"sec\00", align 1
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 59, i32 21 }
@___asan_gen_.373 = private unnamed_addr constant [7 x i8] c"num_mb\00", align 1
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 65, i32 12 }
@___asan_gen_.376 = private unnamed_addr constant [5 x i8] c"klen\00", align 1
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 66, i32 21 }
@___asan_gen_.379 = private unnamed_addr constant [6 x i8] c"tvmem\00", align 1
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 67, i32 14 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 3071, i32 3 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 3074, i32 3 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 1695, i32 22 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 1699, i32 22 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 1703, i32 22 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 1704, i32 22 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 1705, i32 22 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 1709, i32 22 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 1710, i32 22 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 1711, i32 22 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 1715, i32 22 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 1719, i32 22 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 1723, i32 22 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 1724, i32 22 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 1725, i32 22 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 1729, i32 22 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 1730, i32 22 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 1731, i32 22 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 1732, i32 22 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 1733, i32 22 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 1737, i32 22 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 1738, i32 22 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 1739, i32 22 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 1740, i32 22 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 1741, i32 22 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 1745, i32 22 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 1746, i32 22 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 1747, i32 22 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 1748, i32 22 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 1749, i32 22 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 1750, i32 22 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 1751, i32 22 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 1752, i32 22 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 1756, i32 22 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 1760, i32 22 }
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 1764, i32 22 }
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 1768, i32 22 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 1769, i32 22 }
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 1770, i32 22 }
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 1774, i32 22 }
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 1775, i32 22 }
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 1776, i32 22 }
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 1777, i32 22 }
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 1778, i32 22 }
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 1782, i32 22 }
@___asan_gen_.534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 1786, i32 22 }
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 1790, i32 22 }
@___asan_gen_.540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 1794, i32 22 }
@___asan_gen_.543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 1798, i32 22 }
@___asan_gen_.546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 1802, i32 22 }
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 1806, i32 22 }
@___asan_gen_.552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 1810, i32 22 }
@___asan_gen_.555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 1814, i32 22 }
@___asan_gen_.558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 1818, i32 22 }
@___asan_gen_.561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 1819, i32 22 }
@___asan_gen_.564 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 1823, i32 22 }
@___asan_gen_.567 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 1827, i32 22 }
@___asan_gen_.570 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 1831, i32 22 }
@___asan_gen_.573 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 1832, i32 22 }
@___asan_gen_.576 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 1833, i32 22 }
@___asan_gen_.579 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 1834, i32 22 }
@___asan_gen_.582 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 1835, i32 22 }
@___asan_gen_.585 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 1839, i32 22 }
@___asan_gen_.588 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 1843, i32 22 }
@___asan_gen_.591 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 1847, i32 22 }
@___asan_gen_.594 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 1851, i32 22 }
@___asan_gen_.597 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 1855, i32 22 }
@___asan_gen_.600 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 1859, i32 22 }
@___asan_gen_.603 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 1863, i32 22 }
@___asan_gen_.606 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 1867, i32 22 }
@___asan_gen_.609 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 1871, i32 22 }
@___asan_gen_.612 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 1875, i32 22 }
@___asan_gen_.615 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 1879, i32 22 }
@___asan_gen_.618 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 1883, i32 22 }
@___asan_gen_.621 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 1887, i32 22 }
@___asan_gen_.624 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 1891, i32 22 }
@___asan_gen_.627 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 1895, i32 22 }
@___asan_gen_.630 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 1899, i32 22 }
@___asan_gen_.633 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 1903, i32 22 }
@___asan_gen_.636 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 1907, i32 22 }
@___asan_gen_.639 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 1911, i32 22 }
@___asan_gen_.642 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 1915, i32 22 }
@___asan_gen_.645 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 1919, i32 22 }
@___asan_gen_.648 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 1923, i32 22 }
@___asan_gen_.651 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 1927, i32 22 }
@___asan_gen_.654 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 1931, i32 22 }
@___asan_gen_.657 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 1935, i32 22 }
@___asan_gen_.660 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 1939, i32 22 }
@___asan_gen_.663 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 1943, i32 22 }
@___asan_gen_.666 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 1947, i32 22 }
@___asan_gen_.669 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 1951, i32 22 }
@___asan_gen_.672 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 1955, i32 22 }
@___asan_gen_.675 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 1959, i32 22 }
@___asan_gen_.678 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 1963, i32 22 }
@___asan_gen_.681 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 1967, i32 22 }
@___asan_gen_.684 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 1971, i32 22 }
@___asan_gen_.687 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 1975, i32 22 }
@___asan_gen_.690 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 1979, i32 22 }
@___asan_gen_.693 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 1983, i32 22 }
@___asan_gen_.696 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 1987, i32 22 }
@___asan_gen_.699 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 1991, i32 22 }
@___asan_gen_.702 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 1995, i32 22 }
@___asan_gen_.705 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 1999, i32 22 }
@___asan_gen_.708 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 2003, i32 22 }
@___asan_gen_.711 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 2007, i32 22 }
@___asan_gen_.714 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 2011, i32 22 }
@___asan_gen_.717 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 2015, i32 22 }
@___asan_gen_.720 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 2019, i32 22 }
@___asan_gen_.723 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 2023, i32 22 }
@___asan_gen_.726 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 2027, i32 22 }
@___asan_gen_.729 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 2030, i32 22 }
@___asan_gen_.732 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 2033, i32 22 }
@___asan_gen_.735 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 2036, i32 22 }
@___asan_gen_.738 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 2039, i32 22 }
@___asan_gen_.741 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 2042, i32 22 }
@___asan_gen_.744 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 2045, i32 22 }
@___asan_gen_.747 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 2048, i32 22 }
@___asan_gen_.750 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 2051, i32 22 }
@___asan_gen_.753 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 2054, i32 22 }
@___asan_gen_.756 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 2057, i32 22 }
@___asan_gen_.759 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 2058, i32 22 }
@___asan_gen_.762 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 2059, i32 22 }
@___asan_gen_.765 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 2060, i32 22 }
@___asan_gen_.766 = private unnamed_addr constant [24 x i8] c"speed_template_16_24_32\00", align 1
@___asan_gen_.768 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.953, i32 53, i32 11 }
@___asan_gen_.769 = private unnamed_addr constant [24 x i8] c"speed_template_32_40_48\00", align 1
@___asan_gen_.771 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.953, i32 55, i32 11 }
@___asan_gen_.772 = private unnamed_addr constant [21 x i8] c"speed_template_32_64\00", align 1
@___asan_gen_.774 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.953, i32 58, i32 11 }
@___asan_gen_.775 = private unnamed_addr constant [20 x i8] c"des3_speed_template\00", align 1
@___asan_gen_.777 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.953, i32 35, i32 37 }
@___asan_gen_.778 = private unnamed_addr constant [18 x i8] c"speed_template_24\00", align 1
@___asan_gen_.780 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.953, i32 49, i32 11 }
@___asan_gen_.781 = private unnamed_addr constant [24 x i8] c"speed_template_32_48_64\00", align 1
@___asan_gen_.783 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.953, i32 57, i32 11 }
@___asan_gen_.784 = private unnamed_addr constant [20 x i8] c"speed_template_8_32\00", align 1
@___asan_gen_.786 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.953, i32 51, i32 11 }
@___asan_gen_.787 = private unnamed_addr constant [17 x i8] c"speed_template_8\00", align 1
@___asan_gen_.789 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.953, i32 47, i32 11 }
@___asan_gen_.790 = private unnamed_addr constant [21 x i8] c"speed_template_16_32\00", align 1
@___asan_gen_.792 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.953, i32 52, i32 11 }
@___asan_gen_.793 = private unnamed_addr constant [21 x i8] c"speed_template_32_48\00", align 1
@___asan_gen_.795 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.953, i32 56, i32 11 }
@___asan_gen_.796 = private unnamed_addr constant [20 x i8] c"speed_template_8_16\00", align 1
@___asan_gen_.798 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.953, i32 50, i32 11 }
@___asan_gen_.799 = private unnamed_addr constant [23 x i8] c"aead_speed_template_20\00", align 1
@___asan_gen_.801 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.953, i32 65, i32 11 }
@___asan_gen_.802 = private unnamed_addr constant [23 x i8] c"aead_speed_template_19\00", align 1
@___asan_gen_.804 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.953, i32 64, i32 11 }
@___asan_gen_.807 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 2271, i32 19 }
@___asan_gen_.808 = private unnamed_addr constant [23 x i8] c"aead_speed_template_36\00", align 1
@___asan_gen_.810 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.953, i32 66, i32 11 }
@___asan_gen_.813 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 2278, i32 21 }
@___asan_gen_.814 = private unnamed_addr constant [18 x i8] c"speed_template_32\00", align 1
@___asan_gen_.816 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.953, i32 59, i32 11 }
@___asan_gen_.817 = private unnamed_addr constant [18 x i8] c"speed_template_16\00", align 1
@___asan_gen_.819 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.953, i32 48, i32 11 }
@___asan_gen_.822 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 2329, i32 21 }
@___asan_gen_.825 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 2333, i32 21 }
@___asan_gen_.828 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 2340, i32 22 }
@___asan_gen_.831 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 2349, i32 19 }
@___asan_gen_.834 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 2363, i32 19 }
@___asan_gen_.835 = private unnamed_addr constant [28 x i8] c"generic_hash_speed_template\00", align 1
@___asan_gen_.837 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.953, i32 71, i32 26 }
@___asan_gen_.840 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 2459, i32 19 }
@___asan_gen_.841 = private unnamed_addr constant [24 x i8] c"poly1305_speed_template\00", align 1
@___asan_gen_.843 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.953, i32 99, i32 26 }
@___asan_gen_.844 = private unnamed_addr constant [24 x i8] c"speed_template_20_28_36\00", align 1
@___asan_gen_.846 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.953, i32 54, i32 11 }
@___asan_gen_.849 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 2658, i32 22 }
@___asan_gen_.852 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 2664, i32 22 }
@___asan_gen_.855 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 2681, i32 22 }
@___asan_gen_.858 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 2685, i32 22 }
@___asan_gen_.867 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 1667, i32 2 }
@___asan_gen_.870 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 1518, i32 7 }
@___asan_gen_.873 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 1520, i32 7 }
@___asan_gen_.882 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 1527, i32 3 }
@___asan_gen_.894 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 1532, i32 2 }
@___asan_gen_.900 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 1537, i32 3 }
@___asan_gen_.901 = private unnamed_addr constant [12 x i8] c"block_sizes\00", align 1
@___asan_gen_.903 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 80, i32 18 }
@___asan_gen_.909 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 1554, i32 5 }
@___asan_gen_.915 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 1560, i32 4 }
@___asan_gen_.921 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 1578, i32 5 }
@___asan_gen_.927 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 1619, i32 5 }
@___asan_gen_.928 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.932 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.933 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 87, i32 2 }
@___asan_gen_.942 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 1452, i32 2 }
@___asan_gen_.951 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 1498, i32 3 }
@___asan_gen_.953 = private unnamed_addr constant [19 x i8] c"../crypto/tcrypt.h\00", align 1
@___asan_gen_.954 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.953, i32 37, i32 10 }
@___asan_gen_.963 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 553, i32 3 }
@___asan_gen_.969 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 576, i32 3 }
@___asan_gen_.975 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 583, i32 3 }
@___asan_gen_.981 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 589, i32 2 }
@___asan_gen_.987 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 594, i32 3 }
@___asan_gen_.988 = private unnamed_addr constant [11 x i8] c"aead_sizes\00", align 1
@___asan_gen_.990 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 81, i32 18 }
@___asan_gen_.993 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 612, i32 5 }
@___asan_gen_.999 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 628, i32 5 }
@___asan_gen_.1005 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 638, i32 4 }
@___asan_gen_.1011 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 665, i32 6 }
@___asan_gen_.1017 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 684, i32 5 }
@___asan_gen_.1023 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 479, i32 2 }
@___asan_gen_.1032 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 520, i32 3 }
@___asan_gen_.1038 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 268, i32 3 }
@___asan_gen_.1041 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 287, i32 3 }
@___asan_gen_.1044 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 294, i32 3 }
@___asan_gen_.1047 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 323, i32 4 }
@___asan_gen_.1053 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 338, i32 2 }
@___asan_gen_.1059 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 348, i32 5 }
@___asan_gen_.1062 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 354, i32 4 }
@___asan_gen_.1065 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 372, i32 5 }
@___asan_gen_.1068 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 409, i32 7 }
@___asan_gen_.1071 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 432, i32 5 }
@___asan_gen_.1077 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 202, i32 2 }
@___asan_gen_.1086 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 175, i32 4 }
@___asan_gen_.1092 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 243, i32 2 }
@___asan_gen_.1098 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 1080, i32 3 }
@___asan_gen_.1104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 1085, i32 2 }
@___asan_gen_.1110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 1089, i32 3 }
@___asan_gen_.1116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 1097, i32 3 }
@___asan_gen_.1119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 1111, i32 4 }
@___asan_gen_.1125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 1119, i32 3 }
@___asan_gen_.1131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 1135, i32 4 }
@___asan_gen_.1140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 967, i32 2 }
@___asan_gen_.1149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 935, i32 2 }
@___asan_gen_.1158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 1062, i32 2 }
@___asan_gen_.1164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 1005, i32 2 }
@___asan_gen_.1170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 839, i32 3 }
@___asan_gen_.1176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 852, i32 4 }
@___asan_gen_.1182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 867, i32 2 }
@___asan_gen_.1185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 876, i32 4 }
@___asan_gen_.1188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 888, i32 3 }
@___asan_gen_.1194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 903, i32 4 }
@___asan_gen_.1200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 776, i32 2 }
@___asan_gen_.1206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 749, i32 4 }
@___asan_gen_.1212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 817, i32 2 }
@___asan_gen_.1218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 1286, i32 3 }
@___asan_gen_.1224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 1310, i32 4 }
@___asan_gen_.1227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 1325, i32 2 }
@___asan_gen_.1230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 1335, i32 5 }
@___asan_gen_.1233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 1340, i32 4 }
@___asan_gen_.1236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 1358, i32 5 }
@___asan_gen_.1239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 1403, i32 5 }
@___asan_gen_.1245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 1213, i32 2 }
@___asan_gen_.1251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 1186, i32 4 }
@___asan_gen_.1257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 1254, i32 2 }
@___asan_gen_.1258 = private unnamed_addr constant [6 x i8] c"check\00", align 1
@___asan_gen_.1260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 69, i32 20 }
@___asan_gen_.1261 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.1269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 1656, i32 3 }
@___asan_gen_.1275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 1657, i32 3 }
@___asan_gen_.1278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 70, i32 2 }
@___asan_gen_.1281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 70, i32 16 }
@___asan_gen_.1284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 70, i32 28 }
@___asan_gen_.1287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 71, i32 2 }
@___asan_gen_.1290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 71, i32 14 }
@___asan_gen_.1293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 71, i32 25 }
@___asan_gen_.1296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 71, i32 63 }
@___asan_gen_.1299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 72, i32 2 }
@___asan_gen_.1302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 72, i32 11 }
@___asan_gen_.1305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 72, i32 55 }
@___asan_gen_.1308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 72, i32 62 }
@___asan_gen_.1311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 73, i32 2 }
@___asan_gen_.1314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 73, i32 39 }
@___asan_gen_.1317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 73, i32 48 }
@___asan_gen_.1320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 74, i32 2 }
@___asan_gen_.1323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 74, i32 14 }
@___asan_gen_.1326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 75, i32 9 }
@___asan_gen_.1327 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1328 = private constant [19 x i8] c"../crypto/tcrypt.c\00", align 1
@___asan_gen_.1329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1328, i32 75, i32 20 }
@llvm.compiler.used = appending global [414 x ptr] [ptr @__UNIQUE_ID_algtype233, ptr @__UNIQUE_ID_author246, ptr @__UNIQUE_ID_description245, ptr @__UNIQUE_ID_file243, ptr @__UNIQUE_ID_klen242, ptr @__UNIQUE_ID_klentype241, ptr @__UNIQUE_ID_license244, ptr @__UNIQUE_ID_masktype235, ptr @__UNIQUE_ID_modetype236, ptr @__UNIQUE_ID_num_mb240, ptr @__UNIQUE_ID_num_mbtype239, ptr @__UNIQUE_ID_sec238, ptr @__UNIQUE_ID_sectype237, ptr @__UNIQUE_ID_typetype234, ptr @__exitcall_tcrypt_mod_fini, ptr @__initcall__kmod_tcrypt__232_3100_tcrypt_mod_init7, ptr @__param_alg, ptr @__param_klen, ptr @__param_mask, ptr @__param_mode, ptr @__param_num_mb, ptr @__param_sec, ptr @__param_type, ptr @do_mult_acipher_op._entry, ptr @do_mult_acipher_op._entry_ptr, ptr @do_mult_aead_op._entry, ptr @do_mult_aead_op._entry_ptr, ptr @do_mult_ahash_op._entry, ptr @do_mult_ahash_op._entry_ptr, ptr @tcrypt_mod_fini, ptr @tcrypt_mod_init._entry, ptr @tcrypt_mod_init._entry_ptr, ptr @test_acipher_cycles._entry, ptr @test_acipher_cycles._entry_ptr, ptr @test_acipher_jiffies._entry, ptr @test_acipher_jiffies._entry_ptr, ptr @test_aead_cycles._entry, ptr @test_aead_cycles._entry_ptr, ptr @test_aead_jiffies._entry, ptr @test_aead_jiffies._entry_ptr, ptr @test_aead_speed._entry, ptr @test_aead_speed._entry.174, ptr @test_aead_speed._entry.177, ptr @test_aead_speed._entry.180, ptr @test_aead_speed._entry.183, ptr @test_aead_speed._entry.186, ptr @test_aead_speed._entry.188, ptr @test_aead_speed._entry.191, ptr @test_aead_speed._entry.194, ptr @test_aead_speed._entry.197, ptr @test_aead_speed._entry_ptr, ptr @test_aead_speed._entry_ptr.176, ptr @test_aead_speed._entry_ptr.179, ptr @test_aead_speed._entry_ptr.182, ptr @test_aead_speed._entry_ptr.185, ptr @test_aead_speed._entry_ptr.187, ptr @test_aead_speed._entry_ptr.190, ptr @test_aead_speed._entry_ptr.193, ptr @test_aead_speed._entry_ptr.196, ptr @test_aead_speed._entry_ptr.199, ptr @test_ahash_cycles._entry, ptr @test_ahash_cycles._entry_ptr, ptr @test_ahash_cycles_digest._entry, ptr @test_ahash_cycles_digest._entry_ptr, ptr @test_ahash_jiffies._entry, ptr @test_ahash_jiffies._entry_ptr, ptr @test_ahash_jiffies_digest._entry, ptr @test_ahash_jiffies_digest._entry_ptr, ptr @test_ahash_speed_common._entry, ptr @test_ahash_speed_common._entry.229, ptr @test_ahash_speed_common._entry.232, ptr @test_ahash_speed_common._entry.235, ptr @test_ahash_speed_common._entry.238, ptr @test_ahash_speed_common._entry.240, ptr @test_ahash_speed_common._entry.243, ptr @test_ahash_speed_common._entry_ptr, ptr @test_ahash_speed_common._entry_ptr.231, ptr @test_ahash_speed_common._entry_ptr.234, ptr @test_ahash_speed_common._entry_ptr.237, ptr @test_ahash_speed_common._entry_ptr.239, ptr @test_ahash_speed_common._entry_ptr.242, ptr @test_ahash_speed_common._entry_ptr.245, ptr @test_available._entry, ptr @test_available._entry_ptr, ptr @test_mb_acipher_cycles._entry, ptr @test_mb_acipher_cycles._entry_ptr, ptr @test_mb_acipher_jiffies._entry, ptr @test_mb_acipher_jiffies._entry_ptr, ptr @test_mb_aead_cycles._entry, ptr @test_mb_aead_cycles._entry_ptr, ptr @test_mb_aead_jiffies._entry, ptr @test_mb_aead_jiffies._entry_ptr, ptr @test_mb_aead_speed._entry, ptr @test_mb_aead_speed._entry.204, ptr @test_mb_aead_speed._entry.206, ptr @test_mb_aead_speed._entry.208, ptr @test_mb_aead_speed._entry.210, ptr @test_mb_aead_speed._entry.213, ptr @test_mb_aead_speed._entry.216, ptr @test_mb_aead_speed._entry.218, ptr @test_mb_aead_speed._entry.220, ptr @test_mb_aead_speed._entry.222, ptr @test_mb_aead_speed._entry_ptr, ptr @test_mb_aead_speed._entry_ptr.205, ptr @test_mb_aead_speed._entry_ptr.207, ptr @test_mb_aead_speed._entry_ptr.209, ptr @test_mb_aead_speed._entry_ptr.212, ptr @test_mb_aead_speed._entry_ptr.215, ptr @test_mb_aead_speed._entry_ptr.217, ptr @test_mb_aead_speed._entry_ptr.219, ptr @test_mb_aead_speed._entry_ptr.221, ptr @test_mb_aead_speed._entry_ptr.223, ptr @test_mb_ahash_cycles._entry, ptr @test_mb_ahash_cycles._entry_ptr, ptr @test_mb_ahash_jiffies._entry, ptr @test_mb_ahash_jiffies._entry_ptr, ptr @test_mb_ahash_speed._entry, ptr @test_mb_ahash_speed._entry.254, ptr @test_mb_ahash_speed._entry.257, ptr @test_mb_ahash_speed._entry.260, ptr @test_mb_ahash_speed._entry.262, ptr @test_mb_ahash_speed._entry.264, ptr @test_mb_ahash_speed._entry_ptr, ptr @test_mb_ahash_speed._entry_ptr.256, ptr @test_mb_ahash_speed._entry_ptr.259, ptr @test_mb_ahash_speed._entry_ptr.261, ptr @test_mb_ahash_speed._entry_ptr.263, ptr @test_mb_ahash_speed._entry_ptr.266, ptr @test_mb_skcipher_speed._entry, ptr @test_mb_skcipher_speed._entry.271, ptr @test_mb_skcipher_speed._entry.274, ptr @test_mb_skcipher_speed._entry.276, ptr @test_mb_skcipher_speed._entry.278, ptr @test_mb_skcipher_speed._entry.280, ptr @test_mb_skcipher_speed._entry.282, ptr @test_mb_skcipher_speed._entry_ptr, ptr @test_mb_skcipher_speed._entry_ptr.273, ptr @test_mb_skcipher_speed._entry_ptr.275, ptr @test_mb_skcipher_speed._entry_ptr.277, ptr @test_mb_skcipher_speed._entry_ptr.279, ptr @test_mb_skcipher_speed._entry_ptr.281, ptr @test_mb_skcipher_speed._entry_ptr.283, ptr @test_skcipher_speed._entry, ptr @test_skcipher_speed._entry.146, ptr @test_skcipher_speed._entry.151, ptr @test_skcipher_speed._entry.154, ptr @test_skcipher_speed._entry.157, ptr @test_skcipher_speed._entry.160, ptr @test_skcipher_speed._entry.163, ptr @test_skcipher_speed._entry_ptr, ptr @test_skcipher_speed._entry_ptr.148, ptr @test_skcipher_speed._entry_ptr.153, ptr @test_skcipher_speed._entry_ptr.156, ptr @test_skcipher_speed._entry_ptr.159, ptr @test_skcipher_speed._entry_ptr.162, ptr @test_skcipher_speed._entry_ptr.165, ptr @alg, ptr @type, ptr @mask, ptr @mode, ptr @sec, ptr @num_mb, ptr @klen, ptr @tvmem, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @speed_template_16_24_32, ptr @speed_template_32_40_48, ptr @speed_template_32_64, ptr @des3_speed_template, ptr @speed_template_24, ptr @speed_template_32_48_64, ptr @speed_template_8_32, ptr @speed_template_8, ptr @speed_template_16_32, ptr @speed_template_32_48, ptr @speed_template_8_16, ptr @aead_speed_template_20, ptr @aead_speed_template_19, ptr @.str.127, ptr @aead_speed_template_36, ptr @.str.128, ptr @speed_template_32, ptr @speed_template_16, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @generic_hash_speed_template, ptr @.str.134, ptr @poly1305_speed_template, ptr @speed_template_20_28_36, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.147, ptr @.str.149, ptr @.str.150, ptr @.str.152, ptr @block_sizes, ptr @.str.155, ptr @.str.158, ptr @.str.161, ptr @.str.164, ptr @init_completion.__key, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.175, ptr @.str.178, ptr @.str.181, ptr @.str.184, ptr @aead_sizes, ptr @.str.189, ptr @.str.192, ptr @.str.195, ptr @.str.198, ptr @.str.200, ptr @.str.201, ptr @.str.202, ptr @.str.203, ptr @.str.211, ptr @.str.214, ptr @.str.224, ptr @.str.225, ptr @.str.226, ptr @.str.227, ptr @.str.228, ptr @.str.230, ptr @.str.233, ptr @.str.236, ptr @.str.241, ptr @.str.244, ptr @.str.246, ptr @.str.247, ptr @.str.248, ptr @.str.249, ptr @.str.250, ptr @.str.251, ptr @.str.252, ptr @.str.253, ptr @.str.255, ptr @.str.258, ptr @.str.265, ptr @.str.267, ptr @.str.268, ptr @.str.269, ptr @.str.270, ptr @.str.272, ptr @.str.284, ptr @.str.285, ptr @.str.286, ptr @check, ptr @.str.287, ptr @.str.288, ptr @.str.289, ptr @.str.290, ptr @.str.291, ptr @.str.292, ptr @.str.293, ptr @.str.294, ptr @.str.295, ptr @.str.296, ptr @.str.297, ptr @.str.298, ptr @.str.299, ptr @.str.300, ptr @.str.301, ptr @.str.302, ptr @.str.303, ptr @.str.304, ptr @.str.305, ptr @.str.306, ptr @.str.307, ptr @.str.308], section "llvm.metadata"
@0 = internal global [324 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alg to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @type to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mask to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mode to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sec to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @num_mb to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @klen to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvmem to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcrypt_mod_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1261 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @speed_template_16_24_32 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @speed_template_32_40_48 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @speed_template_32_64 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @des3_speed_template to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @speed_template_24 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @speed_template_32_48_64 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @speed_template_8_32 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @speed_template_8 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @speed_template_16_32 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @speed_template_32_48 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @speed_template_8_16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aead_speed_template_20 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aead_speed_template_19 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aead_speed_template_36 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @speed_template_32 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @speed_template_16 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @generic_hash_speed_template to i32), i32 184, i32 224, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.837 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @poly1305_speed_template to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @speed_template_20_28_36 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.846 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.852 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_skcipher_speed._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1261 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_skcipher_speed._entry.146 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1261 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.894 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.894 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.894 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.894 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_skcipher_speed._entry.151 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1261 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @block_sizes to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_skcipher_speed._entry.154 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1261 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_skcipher_speed._entry.157 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1261 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.915 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.915 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_skcipher_speed._entry.160 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1261 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_skcipher_speed._entry.163 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1261 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.928 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_acipher_jiffies._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1261 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_acipher_cycles._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1261 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_aead_speed._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1261 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_aead_speed._entry.174 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1261 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_aead_speed._entry.177 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1261 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_aead_speed._entry.180 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1261 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_aead_speed._entry.183 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1261 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aead_sizes to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_aead_speed._entry.186 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1261 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_aead_speed._entry.188 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1261 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_aead_speed._entry.191 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1261 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_aead_speed._entry.194 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1261 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_aead_speed._entry.197 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1261 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_aead_jiffies._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1261 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_aead_cycles._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1261 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_mb_aead_speed._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1261 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_mb_aead_speed._entry.204 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1261 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_mb_aead_speed._entry.206 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1261 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_mb_aead_speed._entry.208 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1261 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_mb_aead_speed._entry.210 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1261 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_mb_aead_speed._entry.213 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1261 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.214 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_mb_aead_speed._entry.216 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1261 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1062 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_mb_aead_speed._entry.218 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1261 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_mb_aead_speed._entry.220 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1261 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_mb_aead_speed._entry.222 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1261 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_mb_aead_jiffies._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1261 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.224 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_mult_aead_op._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1261 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.225 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.226 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_mb_aead_cycles._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1261 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.227 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_ahash_speed_common._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1261 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.228 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_ahash_speed_common._entry.229 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1261 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.230 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_ahash_speed_common._entry.232 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1261 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.233 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_ahash_speed_common._entry.235 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1261 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.236 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_ahash_speed_common._entry.238 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1261 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_ahash_speed_common._entry.240 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1261 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.241 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_ahash_speed_common._entry.243 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1261 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.244 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_ahash_jiffies._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1261 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.246 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.247 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_ahash_jiffies_digest._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1261 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.248 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.249 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_ahash_cycles._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1261 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.250 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.251 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_ahash_cycles_digest._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1261 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.252 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_mb_ahash_speed._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1261 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.253 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_mb_ahash_speed._entry.254 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1261 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.255 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_mb_ahash_speed._entry.257 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1261 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.258 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_mb_ahash_speed._entry.260 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1261 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_mb_ahash_speed._entry.262 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1261 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_mb_ahash_speed._entry.264 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1261 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.265 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_mb_ahash_jiffies._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1261 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.267 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_mult_ahash_op._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1261 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.268 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_mb_ahash_cycles._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1261 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.269 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_mb_skcipher_speed._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1261 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.270 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_mb_skcipher_speed._entry.271 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1261 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.272 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_mb_skcipher_speed._entry.274 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1261 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_mb_skcipher_speed._entry.276 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1261 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_mb_skcipher_speed._entry.278 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1261 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_mb_skcipher_speed._entry.280 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1261 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_mb_skcipher_speed._entry.282 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1261 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_mb_acipher_jiffies._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1261 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.284 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_mult_acipher_op._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1261 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.285 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_mb_acipher_cycles._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1261 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.286 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check to i32), i32 164, i32 224, i32 ptrtoint (ptr @___asan_gen_.1258 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_available._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1261 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.287 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.288 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.289 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.290 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.291 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.292 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.293 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.294 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.295 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.296 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.297 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.298 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.299 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.300 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.301 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.302 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.303 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.304 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.305 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.306 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.307 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.308 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @tcrypt_mod_fini() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tcrypt_mod_init() #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.035, 1
  %exitcond.not = icmp eq i32 %inc, 4
  br i1 %exitcond.not, label %for.end, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %entry
  %i.035 = phi i32 [ 0, %entry ], [ %inc, %for.cond.for.body_crit_edge ]
  %call = tail call i32 @__get_free_pages(i32 noundef 3264, i32 noundef 0) #10
  %0 = inttoptr i32 %call to ptr
  %arrayidx = getelementptr [4 x ptr], ptr @tvmem, i32 0, i32 %i.035
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %0, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.body.err_free_tv_crit_edge, label %for.cond

for.body.err_free_tv_crit_edge:                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_free_tv

for.end:                                          ; preds = %for.cond
  %2 = load ptr, ptr @alg, align 4
  %3 = load i32, ptr @type, align 4
  %4 = load i32, ptr @mask, align 4
  %5 = load i32, ptr @mode, align 4
  %6 = load i32, ptr @num_mb, align 4
  %call2 = tail call fastcc i32 @do_test(ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %do.body6, label %do.end

do.end:                                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #13
  br label %err_free_tv

do.body6:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tcrypt_mod_init.__UNIQUE_ID_ddebug231, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tcrypt_mod_init, %if.then12)) #10
          to label %err_free_tv [label %if.then12], !srcloc !700

if.then12:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tcrypt_mod_init.__UNIQUE_ID_ddebug231, ptr noundef nonnull @.str.5) #10
  br label %err_free_tv

err_free_tv:                                      ; preds = %if.then12, %do.body6, %do.end, %for.body.err_free_tv_crit_edge
  %err.0 = phi i32 [ %call2, %do.end ], [ -11, %if.then12 ], [ -11, %do.body6 ], [ -12, %for.body.err_free_tv_crit_edge ]
  br label %land.rhs

land.rhs:                                         ; preds = %for.body21.land.rhs_crit_edge, %err_free_tv
  %i.136 = phi i32 [ 0, %err_free_tv ], [ %inc24, %for.body21.land.rhs_crit_edge ]
  %arrayidx19 = getelementptr [4 x ptr], ptr @tvmem, i32 0, i32 %i.136
  %7 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx19, align 4
  %tobool20.not = icmp eq ptr %8, null
  br i1 %tobool20.not, label %land.rhs.for.end25_crit_edge, label %for.body21

land.rhs.for.end25_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end25

for.body21:                                       ; preds = %land.rhs
  %9 = ptrtoint ptr %8 to i32
  tail call void @free_pages(i32 noundef %9, i32 noundef 0) #10
  %inc24 = add nuw nsw i32 %i.136, 1
  %exitcond37.not = icmp eq i32 %inc24, 4
  br i1 %exitcond37.not, label %for.body21.for.end25_crit_edge, label %for.body21.land.rhs_crit_edge

for.body21.land.rhs_crit_edge:                    ; preds = %for.body21
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs

for.body21.for.end25_crit_edge:                   ; preds = %for.body21
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end25

for.end25:                                        ; preds = %for.body21.for.end25_crit_edge, %land.rhs.for.end25_crit_edge
  ret i32 %err.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__get_free_pages(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @do_test(ptr noundef %alg, i32 noundef %type, i32 noundef %mask, i32 noundef %m, i32 noundef %num_mb) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %m to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %m, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb6
    i32 2, label %sw.bb9
    i32 3, label %sw.bb12
    i32 4, label %sw.bb19
    i32 5, label %sw.bb26
    i32 6, label %sw.bb29
    i32 7, label %sw.bb32
    i32 8, label %sw.bb39
    i32 9, label %sw.bb50
    i32 10, label %sw.bb61
    i32 11, label %sw.bb78
    i32 12, label %sw.bb81
    i32 13, label %sw.bb84
    i32 14, label %sw.bb87
    i32 15, label %sw.bb94
    i32 16, label %sw.bb105
    i32 17, label %sw.bb108
    i32 18, label %sw.bb111
    i32 19, label %sw.bb114
    i32 20, label %sw.bb117
    i32 21, label %sw.bb120
    i32 22, label %sw.bb123
    i32 23, label %sw.bb126
    i32 24, label %sw.bb129
    i32 26, label %sw.bb132
    i32 30, label %sw.bb137
    i32 31, label %sw.bb140
    i32 32, label %sw.bb143
    i32 33, label %sw.bb154
    i32 35, label %sw.bb157
    i32 36, label %sw.bb160
    i32 37, label %sw.bb163
    i32 38, label %sw.bb166
    i32 39, label %sw.bb169
    i32 40, label %sw.bb172
    i32 41, label %sw.bb175
    i32 42, label %sw.bb178
    i32 43, label %sw.bb181
    i32 45, label %sw.bb184
    i32 46, label %sw.bb187
    i32 47, label %sw.bb190
    i32 48, label %sw.bb193
    i32 49, label %sw.bb196
    i32 50, label %sw.bb199
    i32 51, label %sw.bb202
    i32 52, label %sw.bb205
    i32 53, label %sw.bb208
    i32 54, label %sw.bb211
    i32 55, label %sw.bb214
    i32 56, label %sw.bb217
    i32 100, label %sw.bb220
    i32 101, label %sw.bb223
    i32 102, label %sw.bb226
    i32 103, label %sw.bb229
    i32 104, label %sw.bb232
    i32 105, label %sw.bb235
    i32 106, label %sw.bb238
    i32 108, label %sw.bb241
    i32 109, label %sw.bb244
    i32 111, label %sw.bb247
    i32 112, label %sw.bb250
    i32 113, label %sw.bb253
    i32 114, label %sw.bb256
    i32 115, label %sw.bb259
    i32 116, label %sw.bb262
    i32 150, label %sw.bb265
    i32 151, label %sw.bb268
    i32 152, label %sw.bb271
    i32 153, label %sw.bb274
    i32 154, label %sw.bb277
    i32 155, label %sw.bb280
    i32 156, label %sw.bb283
    i32 157, label %sw.bb286
    i32 158, label %sw.bb289
    i32 159, label %sw.bb292
    i32 181, label %sw.bb295
    i32 182, label %sw.bb298
    i32 183, label %sw.bb301
    i32 184, label %sw.bb304
    i32 185, label %sw.bb307
    i32 186, label %sw.bb310
    i32 187, label %sw.bb313
    i32 188, label %sw.bb316
    i32 189, label %sw.bb319
    i32 190, label %sw.bb322
    i32 191, label %sw.bb325
    i32 200, label %sw.bb334
    i32 201, label %sw.bb335
    i32 202, label %sw.bb336
    i32 203, label %sw.bb337
    i32 204, label %sw.bb338
    i32 205, label %sw.bb339
    i32 207, label %sw.bb340
    i32 208, label %sw.bb341
    i32 209, label %sw.bb342
    i32 210, label %sw.bb343
    i32 211, label %sw.bb344
    i32 212, label %sw.bb345
    i32 213, label %sw.bb346
    i32 214, label %sw.bb347
    i32 215, label %sw.bb348
    i32 216, label %sw.bb349
    i32 217, label %sw.bb350
    i32 218, label %sw.bb351
    i32 219, label %sw.bb352
    i32 220, label %sw.bb353
    i32 221, label %sw.bb354
    i32 222, label %sw.bb355
    i32 223, label %sw.bb356
    i32 224, label %sw.bb357
    i32 225, label %sw.bb358
    i32 300, label %sw.bb359
    i32 301, label %entry.sw.bb363_crit_edge
    i32 302, label %entry.sw.bb368_crit_edge
    i32 303, label %entry.sw.bb374_crit_edge
    i32 304, label %entry.sw.bb380_crit_edge
    i32 305, label %entry.sw.bb386_crit_edge
    i32 306, label %entry.sw.bb392_crit_edge
    i32 307, label %entry.sw.bb398_crit_edge
    i32 308, label %entry.sw.bb404_crit_edge
    i32 309, label %entry.sw.bb410_crit_edge
    i32 313, label %entry.sw.bb416_crit_edge
    i32 314, label %entry.sw.bb422_crit_edge
    i32 315, label %entry.sw.bb428_crit_edge
    i32 316, label %entry.sw.bb434_crit_edge
    i32 317, label %entry.sw.bb440_crit_edge
    i32 318, label %entry.sw.bb446_crit_edge
    i32 319, label %entry.sw.bb452_crit_edge
    i32 320, label %entry.sw.bb458_crit_edge
    i32 321, label %entry.sw.bb464_crit_edge
    i32 322, label %entry.sw.bb470_crit_edge
    i32 323, label %entry.sw.bb476_crit_edge
    i32 324, label %entry.sw.bb482_crit_edge
    i32 325, label %entry.sw.bb488_crit_edge
    i32 326, label %entry.sw.bb494_crit_edge
    i32 327, label %entry.sw.bb500_crit_edge
    i32 328, label %entry.sw.bb506_crit_edge
    i32 1000, label %sw.bb681
    i32 400, label %sw.bb512
    i32 401, label %entry.sw.bb516_crit_edge
    i32 402, label %entry.sw.bb522_crit_edge
    i32 403, label %entry.sw.bb528_crit_edge
    i32 404, label %entry.sw.bb534_crit_edge
    i32 405, label %entry.sw.bb540_crit_edge
    i32 406, label %entry.sw.bb546_crit_edge
    i32 407, label %entry.sw.bb552_crit_edge
    i32 408, label %entry.sw.bb558_crit_edge
    i32 409, label %entry.sw.bb564_crit_edge
    i32 413, label %entry.sw.bb570_crit_edge
    i32 414, label %entry.sw.bb576_crit_edge
    i32 415, label %entry.sw.bb582_crit_edge
    i32 416, label %entry.sw.bb588_crit_edge
    i32 417, label %entry.sw.bb594_crit_edge
    i32 418, label %entry.sw.bb600_crit_edge
    i32 419, label %entry.sw.bb606_crit_edge
    i32 420, label %entry.sw.bb612_crit_edge
    i32 421, label %entry.sw.bb618_crit_edge
    i32 422, label %entry.sw.bb624_crit_edge
    i32 423, label %entry.sw.bb630_crit_edge
    i32 424, label %entry.sw.bb636_crit_edge
    i32 425, label %entry.sw.bb642_crit_edge
    i32 426, label %entry.sw.bb648_crit_edge
    i32 427, label %entry.sw.bb654_crit_edge
    i32 609, label %sw.bb680
    i32 500, label %sw.bb660
    i32 501, label %sw.bb661
    i32 502, label %sw.bb662
    i32 503, label %sw.bb663
    i32 504, label %sw.bb664
    i32 505, label %sw.bb665
    i32 506, label %sw.bb666
    i32 507, label %sw.bb667
    i32 508, label %sw.bb668
    i32 509, label %sw.bb669
    i32 518, label %sw.bb670
    i32 600, label %sw.bb671
    i32 601, label %sw.bb672
    i32 602, label %sw.bb673
    i32 603, label %sw.bb674
    i32 604, label %sw.bb675
    i32 605, label %sw.bb676
    i32 606, label %sw.bb677
    i32 607, label %sw.bb678
    i32 608, label %sw.bb679
  ]

entry.sw.bb654_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb654

entry.sw.bb648_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb648

entry.sw.bb642_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb642

entry.sw.bb636_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb636

entry.sw.bb630_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb630

entry.sw.bb624_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb624

entry.sw.bb618_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb618

entry.sw.bb612_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb612

entry.sw.bb606_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb606

entry.sw.bb600_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb600

entry.sw.bb594_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb594

entry.sw.bb588_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb588

entry.sw.bb582_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb582

entry.sw.bb576_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb576

entry.sw.bb570_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb570

entry.sw.bb564_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb564

entry.sw.bb558_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb558

entry.sw.bb552_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb552

entry.sw.bb546_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb546

entry.sw.bb540_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb540

entry.sw.bb534_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb534

entry.sw.bb528_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb528

entry.sw.bb522_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb522

entry.sw.bb516_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb516

entry.sw.bb506_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb506

entry.sw.bb500_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb500

entry.sw.bb494_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb494

entry.sw.bb488_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb488

entry.sw.bb482_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb482

entry.sw.bb476_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb476

entry.sw.bb470_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb470

entry.sw.bb464_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb464

entry.sw.bb458_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb458

entry.sw.bb452_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb452

entry.sw.bb446_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb446

entry.sw.bb440_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb440

entry.sw.bb434_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb434

entry.sw.bb428_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb428

entry.sw.bb422_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb422

entry.sw.bb416_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb416

entry.sw.bb410_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb410

entry.sw.bb404_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb404

entry.sw.bb398_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb398

entry.sw.bb392_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb392

entry.sw.bb386_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb386

entry.sw.bb380_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb380

entry.sw.bb374_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb374

entry.sw.bb368_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb368

entry.sw.bb363_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb363

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %tobool.not = icmp eq ptr %alg, null
  br i1 %tobool.not, label %sw.bb.for.body_crit_edge, label %if.then

sw.bb.for.body_crit_edge:                         ; preds = %sw.bb
  br label %for.body

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mask)
  %tobool1.not = icmp eq i32 %mask, 0
  %. = select i1 %tobool1.not, i32 15, i32 %mask
  %call = tail call i32 @crypto_has_alg(ptr noundef nonnull %alg, i32 noundef %type, i32 noundef %.) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  %spec.select = select i1 %tobool2.not, i32 -2, i32 0
  br label %sw.epilog

for.body:                                         ; preds = %for.body.for.body_crit_edge, %sw.bb.for.body_crit_edge
  %ret.01009 = phi i32 [ %add, %for.body.for.body_crit_edge ], [ 0, %sw.bb.for.body_crit_edge ]
  %i.01008 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 1, %sw.bb.for.body_crit_edge ]
  %call5 = tail call fastcc i32 @do_test(ptr noundef null, i32 noundef 0, i32 noundef 0, i32 noundef %i.01008, i32 noundef %num_mb)
  %add = add i32 %call5, %ret.01009
  %inc = add nuw nsw i32 %i.01008, 1
  %exitcond.not = icmp eq i32 %inc, 200
  br i1 %exitcond.not, label %for.body.sw.epilog_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body.sw.epilog_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call7 = tail call fastcc i32 @tcrypt_test(ptr noundef nonnull @.str.6)
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call10 = tail call fastcc i32 @tcrypt_test(ptr noundef nonnull @.str.7)
  br label %sw.epilog

sw.bb12:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call13 = tail call fastcc i32 @tcrypt_test(ptr noundef nonnull @.str.8)
  %call15 = tail call fastcc i32 @tcrypt_test(ptr noundef nonnull @.str.9)
  %add16 = add i32 %call15, %call13
  %call17 = tail call fastcc i32 @tcrypt_test(ptr noundef nonnull @.str.10)
  %add18 = add i32 %add16, %call17
  br label %sw.epilog

sw.bb19:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call20 = tail call fastcc i32 @tcrypt_test(ptr noundef nonnull @.str.11)
  %call22 = tail call fastcc i32 @tcrypt_test(ptr noundef nonnull @.str.12)
  %add23 = add i32 %call22, %call20
  %call24 = tail call fastcc i32 @tcrypt_test(ptr noundef nonnull @.str.13)
  %add25 = add i32 %add23, %call24
  br label %sw.epilog

sw.bb26:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call27 = tail call fastcc i32 @tcrypt_test(ptr noundef nonnull @.str.14)
  br label %sw.epilog

sw.bb29:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call30 = tail call fastcc i32 @tcrypt_test(ptr noundef nonnull @.str.15)
  br label %sw.epilog

sw.bb32:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call33 = tail call fastcc i32 @tcrypt_test(ptr noundef nonnull @.str.16)
  %call35 = tail call fastcc i32 @tcrypt_test(ptr noundef nonnull @.str.17)
  %add36 = add i32 %call35, %call33
  %call37 = tail call fastcc i32 @tcrypt_test(ptr noundef nonnull @.str.18)
  %add38 = add i32 %add36, %call37
  br label %sw.epilog

sw.bb39:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call40 = tail call fastcc i32 @tcrypt_test(ptr noundef nonnull @.str.19)
  %call42 = tail call fastcc i32 @tcrypt_test(ptr noundef nonnull @.str.20)
  %add43 = add i32 %call42, %call40
  %call44 = tail call fastcc i32 @tcrypt_test(ptr noundef nonnull @.str.21)
  %add45 = add i32 %add43, %call44
  %call46 = tail call fastcc i32 @tcrypt_test(ptr noundef nonnull @.str.22)
  %add47 = add i32 %add45, %call46
  %call48 = tail call fastcc i32 @tcrypt_test(ptr noundef nonnull @.str.23)
  %add49 = add i32 %add47, %call48
  br label %sw.epilog

sw.bb50:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call51 = tail call fastcc i32 @tcrypt_test(ptr noundef nonnull @.str.24)
  %call53 = tail call fastcc i32 @tcrypt_test(ptr noundef nonnull @.str.25)
  %add54 = add i32 %call53, %call51
  %call55 = tail call fastcc i32 @tcrypt_test(ptr noundef nonnull @.str.26)
  %add56 = add i32 %add54, %call55
  %call57 = tail call fastcc i32 @tcrypt_test(ptr noundef nonnull @.str.27)
  %add58 = add i32 %add56, %call57
  %call59 = tail call fastcc i32 @tcrypt_test(ptr noundef nonnull @.str.28)
  %add60 = add i32 %add58, %call59
  br label %sw.epilog

sw.bb61:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call62 = tail call fastcc i32 @tcrypt_test(ptr noundef nonnull @.str.29)
  %call64 = tail call fastcc i32 @tcrypt_test(ptr noundef nonnull @.str.30)
  %add65 = add i32 %call64, %call62
  %call66 = tail call fastcc i32 @tcrypt_test(ptr noundef nonnull @.str.31)
  %add67 = add i32 %add65, %call66
  %call68 = tail call fastcc i32 @tcrypt_test(ptr noundef nonnull @.str.32)
  %add69 = add i32 %add67, %call68
  %call70 = tail call fastcc i32 @tcrypt_test(ptr noundef nonnull @.str.33)
  %add71 = add i32 %add69, %call70
  %call72 = tail call fastcc i32 @tcrypt_test(ptr noundef nonnull @.str.34)
  %add73 = add i32 %add71, %call72
  %call74 = tail call fastcc i32 @tcrypt_test(ptr noundef nonnull @.str.35)
  %add75 = add i32 %add73, %call74
  %call76 = tail call fastcc i32 @tcrypt_test(ptr noundef nonnull @.str.36)
  %add77 = add i32 %add75, %call76
  br label %sw.epilog

sw.bb78:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call79 = tail call fastcc i32 @tcrypt_test(ptr noundef nonnull @.str.37)
  br label %sw.epilog

sw.bb81:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call82 = tail call fastcc i32 @tcrypt_test(ptr noundef nonnull @.str.38)
  br label %sw.epilog

sw.bb84:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call85 = tail call fastcc i32 @tcrypt_test(ptr noundef nonnull @.str.39)
  br label %sw.epilog

sw.bb87:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call88 = tail call fastcc i32 @tcrypt_test(ptr noundef nonnull @.str.40)
  %call90 = tail call fastcc i32 @tcrypt_test(ptr noundef nonnull @.str.41)
  %add91 = add i32 %call90, %call88
  %call92 = tail call fastcc i32 @tcrypt_test(ptr noundef nonnull @.str.42)
  %add93 = add i32 %add91, %call92
  br label %sw.epilog

sw.bb94:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call95 = tail call fastcc i32 @tcrypt_test(ptr noundef nonnull @.str.43)
  %call97 = tail call fastcc i32 @tcrypt_test(ptr noundef nonnull @.str.44)
  %add98 = add i32 %call97, %call95
  %call99 = tail call fastcc i32 @tcrypt_test(ptr noundef nonnull @.str.45)
  %add100 = add i32 %add98, %call99
  %call101 = tail call fastcc i32 @tcrypt_test(ptr noundef nonnull @.str.46)
  %add102 = add i32 %add100, %call101
  %call103 = tail call fastcc i32 @tcrypt_test(ptr noundef nonnull @.str.47)
  %add104 = add i32 %add102, %call103
  br label %sw.epilog

sw.bb105:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call106 = tail call fastcc i32 @tcrypt_test(ptr noundef nonnull @.str.48)
  br label %sw.epilog

sw.bb108:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call109 = tail call fastcc i32 @tcrypt_test(ptr noundef nonnull @.str.49)
  br label %sw.epilog

sw.bb111:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call112 = tail call fastcc i32 @tcrypt_test(ptr noundef nonnull @.str.50)
  br label %sw.epilog

sw.bb114:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call115 = tail call fastcc i32 @tcrypt_test(ptr noundef nonnull @.str.51)
  br label %sw.epilog

sw.bb117:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call118 = tail call fastcc i32 @tcrypt_test(ptr noundef nonnull @.str.52)
  br label %sw.epilog

sw.bb120:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call121 = tail call fastcc i32 @tcrypt_test(ptr noundef nonnull @.str.53)
  br label %sw.epilog

sw.bb123:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call124 = tail call fastcc i32 @tcrypt_test(ptr noundef nonnull @.str.54)
  br label %sw.epilog

sw.bb126:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call127 = tail call fastcc i32 @tcrypt_test(ptr noundef nonnull @.str.55)
  br label %sw.epilog

sw.bb129:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call130 = tail call fastcc i32 @tcrypt_test(ptr noundef nonnull @.str.56)
  br label %sw.epilog

sw.bb132:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call133 = tail call fastcc i32 @tcrypt_test(ptr noundef nonnull @.str.57)
  %call135 = tail call fastcc i32 @tcrypt_test(ptr noundef nonnull @.str.58)
  %add136 = add i32 %call135, %call133
  br label %sw.epilog

sw.bb137:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call138 = tail call fastcc i32 @tcrypt_test(ptr noundef nonnull @.str.59)
  br label %sw.epilog

sw.bb140:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call141 = tail call fastcc i32 @tcrypt_test(ptr noundef nonnull @.str.60)
  br label %sw.epilog

sw.bb143:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call144 = tail call fastcc i32 @tcrypt_test(ptr noundef nonnull @.str.61)
  %call146 = tail call fastcc i32 @tcrypt_test(ptr noundef nonnull @.str.62)
  %add147 = add i32 %call146, %call144
  %call148 = tail call fastcc i32 @tcrypt_test(ptr noundef nonnull @.str.63)
  %add149 = add i32 %add147, %call148
  %call150 = tail call fastcc i32 @tcrypt_test(ptr noundef nonnull @.str.64)
  %add151 = add i32 %add149, %call150
  %call152 = tail call fastcc i32 @tcrypt_test(ptr noundef nonnull @.str.65)
  %add153 = add i32 %add151, %call152
  br label %sw.epilog

sw.bb154:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call155 = tail call fastcc i32 @tcrypt_test(ptr noundef nonnull @.str.66)
  br label %sw.epilog

sw.bb157:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call158 = tail call fastcc i32 @tcrypt_test(ptr noundef nonnull @.str.67)
  br label %sw.epilog

sw.bb160:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call161 = tail call fastcc i32 @tcrypt_test(ptr noundef nonnull @.str.68)
  br label %sw.epilog

sw.bb163:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call164 = tail call fastcc i32 @tcrypt_test(ptr noundef nonnull @.str.69)
  br label %sw.epilog

sw.bb166:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call167 = tail call fastcc i32 @tcrypt_test(ptr noundef nonnull @.str.70)
  br label %sw.epilog

sw.bb169:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call170 = tail call fastcc i32 @tcrypt_test(ptr noundef nonnull @.str.71)
  br label %sw.epilog

sw.bb172:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call173 = tail call fastcc i32 @tcrypt_test(ptr noundef nonnull @.str.72)
  br label %sw.epilog

sw.bb175:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call176 = tail call fastcc i32 @tcrypt_test(ptr noundef nonnull @.str.73)
  br label %sw.epilog

sw.bb178:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call179 = tail call fastcc i32 @tcrypt_test(ptr noundef nonnull @.str.74)
  br label %sw.epilog

sw.bb181:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call182 = tail call fastcc i32 @tcrypt_test(ptr noundef nonnull @.str.75)
  br label %sw.epilog

sw.bb184:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call185 = tail call fastcc i32 @tcrypt_test(ptr noundef nonnull @.str.76)
  br label %sw.epilog

sw.bb187:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call188 = tail call fastcc i32 @tcrypt_test(ptr noundef nonnull @.str.77)
  br label %sw.epilog

sw.bb190:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call191 = tail call fastcc i32 @tcrypt_test(ptr noundef nonnull @.str.78)
  br label %sw.epilog

sw.bb193:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call194 = tail call fastcc i32 @tcrypt_test(ptr noundef nonnull @.str.79)
  br label %sw.epilog

sw.bb196:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call197 = tail call fastcc i32 @tcrypt_test(ptr noundef nonnull @.str.80)
  br label %sw.epilog

sw.bb199:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call200 = tail call fastcc i32 @tcrypt_test(ptr noundef nonnull @.str.81)
  br label %sw.epilog

sw.bb202:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call203 = tail call fastcc i32 @tcrypt_test(ptr noundef nonnull @.str.82)
  br label %sw.epilog

sw.bb205:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call206 = tail call fastcc i32 @tcrypt_test(ptr noundef nonnull @.str.83)
  br label %sw.epilog

sw.bb208:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call209 = tail call fastcc i32 @tcrypt_test(ptr noundef nonnull @.str.84)
  br label %sw.epilog

sw.bb211:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call212 = tail call fastcc i32 @tcrypt_test(ptr noundef nonnull @.str.85)
  br label %sw.epilog

sw.bb214:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call215 = tail call fastcc i32 @tcrypt_test(ptr noundef nonnull @.str.86)
  br label %sw.epilog

sw.bb217:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call218 = tail call fastcc i32 @tcrypt_test(ptr noundef nonnull @.str.87)
  br label %sw.epilog

sw.bb220:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call221 = tail call fastcc i32 @tcrypt_test(ptr noundef nonnull @.str.88)
  br label %sw.epilog

sw.bb223:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call224 = tail call fastcc i32 @tcrypt_test(ptr noundef nonnull @.str.89)
  br label %sw.epilog

sw.bb226:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call227 = tail call fastcc i32 @tcrypt_test(ptr noundef nonnull @.str.90)
  br label %sw.epilog

sw.bb229:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call230 = tail call fastcc i32 @tcrypt_test(ptr noundef nonnull @.str.91)
  br label %sw.epilog

sw.bb232:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call233 = tail call fastcc i32 @tcrypt_test(ptr noundef nonnull @.str.92)
  br label %sw.epilog

sw.bb235:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call236 = tail call fastcc i32 @tcrypt_test(ptr noundef nonnull @.str.93)
  br label %sw.epilog

sw.bb238:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call239 = tail call fastcc i32 @tcrypt_test(ptr noundef nonnull @.str.94)
  br label %sw.epilog

sw.bb241:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call242 = tail call fastcc i32 @tcrypt_test(ptr noundef nonnull @.str.95)
  br label %sw.epilog

sw.bb244:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call245 = tail call fastcc i32 @tcrypt_test(ptr noundef nonnull @.str.96)
  br label %sw.epilog

sw.bb247:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call248 = tail call fastcc i32 @tcrypt_test(ptr noundef nonnull @.str.97)
  br label %sw.epilog

sw.bb250:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call251 = tail call fastcc i32 @tcrypt_test(ptr noundef nonnull @.str.98)
  br label %sw.epilog

sw.bb253:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call254 = tail call fastcc i32 @tcrypt_test(ptr noundef nonnull @.str.99)
  br label %sw.epilog

sw.bb256:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call257 = tail call fastcc i32 @tcrypt_test(ptr noundef nonnull @.str.100)
  br label %sw.epilog

sw.bb259:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call260 = tail call fastcc i32 @tcrypt_test(ptr noundef nonnull @.str.101)
  br label %sw.epilog

sw.bb262:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call263 = tail call fastcc i32 @tcrypt_test(ptr noundef nonnull @.str.102)
  br label %sw.epilog

sw.bb265:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call266 = tail call fastcc i32 @tcrypt_test(ptr noundef nonnull @.str.103)
  br label %sw.epilog

sw.bb268:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call269 = tail call fastcc i32 @tcrypt_test(ptr noundef nonnull @.str.104)
  br label %sw.epilog

sw.bb271:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call272 = tail call fastcc i32 @tcrypt_test(ptr noundef nonnull @.str.105)
  br label %sw.epilog

sw.bb274:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call275 = tail call fastcc i32 @tcrypt_test(ptr noundef nonnull @.str.106)
  br label %sw.epilog

sw.bb277:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call278 = tail call fastcc i32 @tcrypt_test(ptr noundef nonnull @.str.107)
  br label %sw.epilog

sw.bb280:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call281 = tail call fastcc i32 @tcrypt_test(ptr noundef nonnull @.str.108)
  br label %sw.epilog

sw.bb283:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call284 = tail call fastcc i32 @tcrypt_test(ptr noundef nonnull @.str.109)
  br label %sw.epilog

sw.bb286:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call287 = tail call fastcc i32 @tcrypt_test(ptr noundef nonnull @.str.110)
  br label %sw.epilog

sw.bb289:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call290 = tail call fastcc i32 @tcrypt_test(ptr noundef nonnull @.str.111)
  br label %sw.epilog

sw.bb292:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call293 = tail call fastcc i32 @tcrypt_test(ptr noundef nonnull @.str.112)
  br label %sw.epilog

sw.bb295:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call296 = tail call fastcc i32 @tcrypt_test(ptr noundef nonnull @.str.113)
  br label %sw.epilog

sw.bb298:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call299 = tail call fastcc i32 @tcrypt_test(ptr noundef nonnull @.str.114)
  br label %sw.epilog

sw.bb301:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call302 = tail call fastcc i32 @tcrypt_test(ptr noundef nonnull @.str.115)
  br label %sw.epilog

sw.bb304:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call305 = tail call fastcc i32 @tcrypt_test(ptr noundef nonnull @.str.116)
  br label %sw.epilog

sw.bb307:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call308 = tail call fastcc i32 @tcrypt_test(ptr noundef nonnull @.str.117)
  br label %sw.epilog

sw.bb310:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call311 = tail call fastcc i32 @tcrypt_test(ptr noundef nonnull @.str.118)
  br label %sw.epilog

sw.bb313:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call314 = tail call fastcc i32 @tcrypt_test(ptr noundef nonnull @.str.119)
  br label %sw.epilog

sw.bb316:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call317 = tail call fastcc i32 @tcrypt_test(ptr noundef nonnull @.str.120)
  br label %sw.epilog

sw.bb319:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call320 = tail call fastcc i32 @tcrypt_test(ptr noundef nonnull @.str.121)
  br label %sw.epilog

sw.bb322:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call323 = tail call fastcc i32 @tcrypt_test(ptr noundef nonnull @.str.122)
  br label %sw.epilog

sw.bb325:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call326 = tail call fastcc i32 @tcrypt_test(ptr noundef nonnull @.str.123)
  %call328 = tail call fastcc i32 @tcrypt_test(ptr noundef nonnull @.str.124)
  %add329 = add i32 %call328, %call326
  %call330 = tail call fastcc i32 @tcrypt_test(ptr noundef nonnull @.str.125)
  %add331 = add i32 %add329, %call330
  %call332 = tail call fastcc i32 @tcrypt_test(ptr noundef nonnull @.str.126)
  %add333 = add i32 %add331, %call332
  br label %sw.epilog

sw.bb334:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %1 = load i32, ptr @sec, align 4
  tail call fastcc void @test_skcipher_speed(ptr noundef nonnull @.str.29, i32 noundef 1, i32 noundef %1, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_16_24_32, i1 noundef zeroext false) #10
  %2 = load i32, ptr @sec, align 4
  tail call fastcc void @test_skcipher_speed(ptr noundef nonnull @.str.29, i32 noundef 0, i32 noundef %2, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_16_24_32, i1 noundef zeroext false) #10
  %3 = load i32, ptr @sec, align 4
  tail call fastcc void @test_skcipher_speed(ptr noundef nonnull @.str.30, i32 noundef 1, i32 noundef %3, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_16_24_32, i1 noundef zeroext false) #10
  %4 = load i32, ptr @sec, align 4
  tail call fastcc void @test_skcipher_speed(ptr noundef nonnull @.str.30, i32 noundef 0, i32 noundef %4, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_16_24_32, i1 noundef zeroext false) #10
  %5 = load i32, ptr @sec, align 4
  tail call fastcc void @test_skcipher_speed(ptr noundef nonnull @.str.31, i32 noundef 1, i32 noundef %5, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_32_40_48, i1 noundef zeroext false) #10
  %6 = load i32, ptr @sec, align 4
  tail call fastcc void @test_skcipher_speed(ptr noundef nonnull @.str.31, i32 noundef 0, i32 noundef %6, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_32_40_48, i1 noundef zeroext false) #10
  %7 = load i32, ptr @sec, align 4
  tail call fastcc void @test_skcipher_speed(ptr noundef nonnull @.str.32, i32 noundef 1, i32 noundef %7, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_32_64, i1 noundef zeroext false) #10
  %8 = load i32, ptr @sec, align 4
  tail call fastcc void @test_skcipher_speed(ptr noundef nonnull @.str.32, i32 noundef 0, i32 noundef %8, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_32_64, i1 noundef zeroext false) #10
  %9 = load i32, ptr @sec, align 4
  tail call fastcc void @test_skcipher_speed(ptr noundef nonnull @.str.70, i32 noundef 1, i32 noundef %9, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_16_24_32, i1 noundef zeroext false) #10
  %10 = load i32, ptr @sec, align 4
  tail call fastcc void @test_skcipher_speed(ptr noundef nonnull @.str.70, i32 noundef 0, i32 noundef %10, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_16_24_32, i1 noundef zeroext false) #10
  %11 = load i32, ptr @sec, align 4
  tail call fastcc void @test_skcipher_speed(ptr noundef nonnull @.str.33, i32 noundef 1, i32 noundef %11, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_16_24_32, i1 noundef zeroext false) #10
  %12 = load i32, ptr @sec, align 4
  tail call fastcc void @test_skcipher_speed(ptr noundef nonnull @.str.33, i32 noundef 0, i32 noundef %12, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_16_24_32, i1 noundef zeroext false) #10
  %13 = load i32, ptr @sec, align 4
  tail call fastcc void @test_skcipher_speed(ptr noundef nonnull @.str.36, i32 noundef 1, i32 noundef %13, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_16_24_32, i1 noundef zeroext false) #10
  %14 = load i32, ptr @sec, align 4
  tail call fastcc void @test_skcipher_speed(ptr noundef nonnull @.str.36, i32 noundef 0, i32 noundef %14, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_16_24_32, i1 noundef zeroext false) #10
  br label %sw.epilog

sw.bb335:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %15 = load i32, ptr @sec, align 4
  tail call fastcc void @test_skcipher_speed(ptr noundef nonnull @.str.11, i32 noundef 1, i32 noundef %15, ptr noundef nonnull @des3_speed_template, i32 noundef 1, ptr noundef nonnull @speed_template_24, i1 noundef zeroext false) #10
  %16 = load i32, ptr @sec, align 4
  tail call fastcc void @test_skcipher_speed(ptr noundef nonnull @.str.11, i32 noundef 0, i32 noundef %16, ptr noundef nonnull @des3_speed_template, i32 noundef 1, ptr noundef nonnull @speed_template_24, i1 noundef zeroext false) #10
  %17 = load i32, ptr @sec, align 4
  tail call fastcc void @test_skcipher_speed(ptr noundef nonnull @.str.12, i32 noundef 1, i32 noundef %17, ptr noundef nonnull @des3_speed_template, i32 noundef 1, ptr noundef nonnull @speed_template_24, i1 noundef zeroext false) #10
  %18 = load i32, ptr @sec, align 4
  tail call fastcc void @test_skcipher_speed(ptr noundef nonnull @.str.12, i32 noundef 0, i32 noundef %18, ptr noundef nonnull @des3_speed_template, i32 noundef 1, ptr noundef nonnull @speed_template_24, i1 noundef zeroext false) #10
  %19 = load i32, ptr @sec, align 4
  tail call fastcc void @test_skcipher_speed(ptr noundef nonnull @.str.13, i32 noundef 1, i32 noundef %19, ptr noundef nonnull @des3_speed_template, i32 noundef 1, ptr noundef nonnull @speed_template_24, i1 noundef zeroext false) #10
  %20 = load i32, ptr @sec, align 4
  tail call fastcc void @test_skcipher_speed(ptr noundef nonnull @.str.13, i32 noundef 0, i32 noundef %20, ptr noundef nonnull @des3_speed_template, i32 noundef 1, ptr noundef nonnull @speed_template_24, i1 noundef zeroext false) #10
  br label %sw.epilog

sw.bb336:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %21 = load i32, ptr @sec, align 4
  tail call fastcc void @test_skcipher_speed(ptr noundef nonnull @.str.19, i32 noundef 1, i32 noundef %21, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_16_24_32, i1 noundef zeroext false) #10
  %22 = load i32, ptr @sec, align 4
  tail call fastcc void @test_skcipher_speed(ptr noundef nonnull @.str.19, i32 noundef 0, i32 noundef %22, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_16_24_32, i1 noundef zeroext false) #10
  %23 = load i32, ptr @sec, align 4
  tail call fastcc void @test_skcipher_speed(ptr noundef nonnull @.str.20, i32 noundef 1, i32 noundef %23, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_16_24_32, i1 noundef zeroext false) #10
  %24 = load i32, ptr @sec, align 4
  tail call fastcc void @test_skcipher_speed(ptr noundef nonnull @.str.20, i32 noundef 0, i32 noundef %24, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_16_24_32, i1 noundef zeroext false) #10
  %25 = load i32, ptr @sec, align 4
  tail call fastcc void @test_skcipher_speed(ptr noundef nonnull @.str.21, i32 noundef 1, i32 noundef %25, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_16_24_32, i1 noundef zeroext false) #10
  %26 = load i32, ptr @sec, align 4
  tail call fastcc void @test_skcipher_speed(ptr noundef nonnull @.str.21, i32 noundef 0, i32 noundef %26, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_16_24_32, i1 noundef zeroext false) #10
  %27 = load i32, ptr @sec, align 4
  tail call fastcc void @test_skcipher_speed(ptr noundef nonnull @.str.22, i32 noundef 1, i32 noundef %27, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_32_40_48, i1 noundef zeroext false) #10
  %28 = load i32, ptr @sec, align 4
  tail call fastcc void @test_skcipher_speed(ptr noundef nonnull @.str.22, i32 noundef 0, i32 noundef %28, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_32_40_48, i1 noundef zeroext false) #10
  %29 = load i32, ptr @sec, align 4
  tail call fastcc void @test_skcipher_speed(ptr noundef nonnull @.str.23, i32 noundef 1, i32 noundef %29, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_32_48_64, i1 noundef zeroext false) #10
  %30 = load i32, ptr @sec, align 4
  tail call fastcc void @test_skcipher_speed(ptr noundef nonnull @.str.23, i32 noundef 0, i32 noundef %30, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_32_48_64, i1 noundef zeroext false) #10
  br label %sw.epilog

sw.bb337:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %31 = load i32, ptr @sec, align 4
  tail call fastcc void @test_skcipher_speed(ptr noundef nonnull @.str.16, i32 noundef 1, i32 noundef %31, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_8_32, i1 noundef zeroext false) #10
  %32 = load i32, ptr @sec, align 4
  tail call fastcc void @test_skcipher_speed(ptr noundef nonnull @.str.16, i32 noundef 0, i32 noundef %32, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_8_32, i1 noundef zeroext false) #10
  %33 = load i32, ptr @sec, align 4
  tail call fastcc void @test_skcipher_speed(ptr noundef nonnull @.str.17, i32 noundef 1, i32 noundef %33, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_8_32, i1 noundef zeroext false) #10
  %34 = load i32, ptr @sec, align 4
  tail call fastcc void @test_skcipher_speed(ptr noundef nonnull @.str.17, i32 noundef 0, i32 noundef %34, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_8_32, i1 noundef zeroext false) #10
  %35 = load i32, ptr @sec, align 4
  tail call fastcc void @test_skcipher_speed(ptr noundef nonnull @.str.18, i32 noundef 1, i32 noundef %35, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_8_32, i1 noundef zeroext false) #10
  %36 = load i32, ptr @sec, align 4
  tail call fastcc void @test_skcipher_speed(ptr noundef nonnull @.str.18, i32 noundef 0, i32 noundef %36, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_8_32, i1 noundef zeroext false) #10
  br label %sw.epilog

sw.bb338:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %37 = load i32, ptr @sec, align 4
  tail call fastcc void @test_skcipher_speed(ptr noundef nonnull @.str.8, i32 noundef 1, i32 noundef %37, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_8, i1 noundef zeroext false) #10
  %38 = load i32, ptr @sec, align 4
  tail call fastcc void @test_skcipher_speed(ptr noundef nonnull @.str.8, i32 noundef 0, i32 noundef %38, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_8, i1 noundef zeroext false) #10
  %39 = load i32, ptr @sec, align 4
  tail call fastcc void @test_skcipher_speed(ptr noundef nonnull @.str.9, i32 noundef 1, i32 noundef %39, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_8, i1 noundef zeroext false) #10
  %40 = load i32, ptr @sec, align 4
  tail call fastcc void @test_skcipher_speed(ptr noundef nonnull @.str.9, i32 noundef 0, i32 noundef %40, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_8, i1 noundef zeroext false) #10
  br label %sw.epilog

sw.bb339:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %41 = load i32, ptr @sec, align 4
  tail call fastcc void @test_skcipher_speed(ptr noundef nonnull @.str.61, i32 noundef 1, i32 noundef %41, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_16_24_32, i1 noundef zeroext false) #10
  %42 = load i32, ptr @sec, align 4
  tail call fastcc void @test_skcipher_speed(ptr noundef nonnull @.str.61, i32 noundef 0, i32 noundef %42, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_16_24_32, i1 noundef zeroext false) #10
  %43 = load i32, ptr @sec, align 4
  tail call fastcc void @test_skcipher_speed(ptr noundef nonnull @.str.62, i32 noundef 1, i32 noundef %43, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_16_24_32, i1 noundef zeroext false) #10
  %44 = load i32, ptr @sec, align 4
  tail call fastcc void @test_skcipher_speed(ptr noundef nonnull @.str.62, i32 noundef 0, i32 noundef %44, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_16_24_32, i1 noundef zeroext false) #10
  %45 = load i32, ptr @sec, align 4
  tail call fastcc void @test_skcipher_speed(ptr noundef nonnull @.str.63, i32 noundef 1, i32 noundef %45, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_16_24_32, i1 noundef zeroext false) #10
  %46 = load i32, ptr @sec, align 4
  tail call fastcc void @test_skcipher_speed(ptr noundef nonnull @.str.63, i32 noundef 0, i32 noundef %46, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_16_24_32, i1 noundef zeroext false) #10
  %47 = load i32, ptr @sec, align 4
  tail call fastcc void @test_skcipher_speed(ptr noundef nonnull @.str.64, i32 noundef 1, i32 noundef %47, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_32_40_48, i1 noundef zeroext false) #10
  %48 = load i32, ptr @sec, align 4
  tail call fastcc void @test_skcipher_speed(ptr noundef nonnull @.str.64, i32 noundef 0, i32 noundef %48, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_32_40_48, i1 noundef zeroext false) #10
  %49 = load i32, ptr @sec, align 4
  tail call fastcc void @test_skcipher_speed(ptr noundef nonnull @.str.65, i32 noundef 1, i32 noundef %49, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_32_48_64, i1 noundef zeroext false) #10
  %50 = load i32, ptr @sec, align 4
  tail call fastcc void @test_skcipher_speed(ptr noundef nonnull @.str.65, i32 noundef 0, i32 noundef %50, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_32_48_64, i1 noundef zeroext false) #10
  br label %sw.epilog

sw.bb340:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %51 = load i32, ptr @sec, align 4
  tail call fastcc void @test_skcipher_speed(ptr noundef nonnull @.str.24, i32 noundef 1, i32 noundef %51, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_16_32, i1 noundef zeroext false) #10
  %52 = load i32, ptr @sec, align 4
  tail call fastcc void @test_skcipher_speed(ptr noundef nonnull @.str.24, i32 noundef 0, i32 noundef %52, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_16_32, i1 noundef zeroext false) #10
  %53 = load i32, ptr @sec, align 4
  tail call fastcc void @test_skcipher_speed(ptr noundef nonnull @.str.25, i32 noundef 1, i32 noundef %53, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_16_32, i1 noundef zeroext false) #10
  %54 = load i32, ptr @sec, align 4
  tail call fastcc void @test_skcipher_speed(ptr noundef nonnull @.str.25, i32 noundef 0, i32 noundef %54, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_16_32, i1 noundef zeroext false) #10
  %55 = load i32, ptr @sec, align 4
  tail call fastcc void @test_skcipher_speed(ptr noundef nonnull @.str.26, i32 noundef 1, i32 noundef %55, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_16_32, i1 noundef zeroext false) #10
  %56 = load i32, ptr @sec, align 4
  tail call fastcc void @test_skcipher_speed(ptr noundef nonnull @.str.26, i32 noundef 0, i32 noundef %56, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_16_32, i1 noundef zeroext false) #10
  %57 = load i32, ptr @sec, align 4
  tail call fastcc void @test_skcipher_speed(ptr noundef nonnull @.str.27, i32 noundef 1, i32 noundef %57, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_32_48, i1 noundef zeroext false) #10
  %58 = load i32, ptr @sec, align 4
  tail call fastcc void @test_skcipher_speed(ptr noundef nonnull @.str.27, i32 noundef 0, i32 noundef %58, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_32_48, i1 noundef zeroext false) #10
  %59 = load i32, ptr @sec, align 4
  tail call fastcc void @test_skcipher_speed(ptr noundef nonnull @.str.28, i32 noundef 1, i32 noundef %59, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_32_64, i1 noundef zeroext false) #10
  %60 = load i32, ptr @sec, align 4
  tail call fastcc void @test_skcipher_speed(ptr noundef nonnull @.str.28, i32 noundef 0, i32 noundef %60, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_32_64, i1 noundef zeroext false) #10
  br label %sw.epilog

sw.bb341:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %61 = load i32, ptr @sec, align 4
  tail call fastcc void @test_skcipher_speed(ptr noundef nonnull @.str.48, i32 noundef 1, i32 noundef %61, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_8, i1 noundef zeroext false) #10
  br label %sw.epilog

sw.bb342:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %62 = load i32, ptr @sec, align 4
  tail call fastcc void @test_skcipher_speed(ptr noundef nonnull @.str.40, i32 noundef 1, i32 noundef %62, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_8_16, i1 noundef zeroext false) #10
  %63 = load i32, ptr @sec, align 4
  tail call fastcc void @test_skcipher_speed(ptr noundef nonnull @.str.40, i32 noundef 0, i32 noundef %63, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_8_16, i1 noundef zeroext false) #10
  %64 = load i32, ptr @sec, align 4
  tail call fastcc void @test_skcipher_speed(ptr noundef nonnull @.str.41, i32 noundef 1, i32 noundef %64, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_8_16, i1 noundef zeroext false) #10
  %65 = load i32, ptr @sec, align 4
  tail call fastcc void @test_skcipher_speed(ptr noundef nonnull @.str.41, i32 noundef 0, i32 noundef %65, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_8_16, i1 noundef zeroext false) #10
  %66 = load i32, ptr @sec, align 4
  tail call fastcc void @test_skcipher_speed(ptr noundef nonnull @.str.42, i32 noundef 1, i32 noundef %66, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_8_16, i1 noundef zeroext false) #10
  %67 = load i32, ptr @sec, align 4
  tail call fastcc void @test_skcipher_speed(ptr noundef nonnull @.str.42, i32 noundef 0, i32 noundef %67, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_8_16, i1 noundef zeroext false) #10
  br label %sw.epilog

sw.bb343:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %68 = load i32, ptr @sec, align 4
  tail call fastcc void @test_skcipher_speed(ptr noundef nonnull @.str.43, i32 noundef 1, i32 noundef %68, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_16_32, i1 noundef zeroext false) #10
  %69 = load i32, ptr @sec, align 4
  tail call fastcc void @test_skcipher_speed(ptr noundef nonnull @.str.43, i32 noundef 0, i32 noundef %69, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_16_32, i1 noundef zeroext false) #10
  %70 = load i32, ptr @sec, align 4
  tail call fastcc void @test_skcipher_speed(ptr noundef nonnull @.str.44, i32 noundef 1, i32 noundef %70, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_16_32, i1 noundef zeroext false) #10
  %71 = load i32, ptr @sec, align 4
  tail call fastcc void @test_skcipher_speed(ptr noundef nonnull @.str.44, i32 noundef 0, i32 noundef %71, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_16_32, i1 noundef zeroext false) #10
  %72 = load i32, ptr @sec, align 4
  tail call fastcc void @test_skcipher_speed(ptr noundef nonnull @.str.45, i32 noundef 1, i32 noundef %72, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_16_32, i1 noundef zeroext false) #10
  %73 = load i32, ptr @sec, align 4
  tail call fastcc void @test_skcipher_speed(ptr noundef nonnull @.str.45, i32 noundef 0, i32 noundef %73, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_16_32, i1 noundef zeroext false) #10
  %74 = load i32, ptr @sec, align 4
  tail call fastcc void @test_skcipher_speed(ptr noundef nonnull @.str.46, i32 noundef 1, i32 noundef %74, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_32_48, i1 noundef zeroext false) #10
  %75 = load i32, ptr @sec, align 4
  tail call fastcc void @test_skcipher_speed(ptr noundef nonnull @.str.46, i32 noundef 0, i32 noundef %75, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_32_48, i1 noundef zeroext false) #10
  %76 = load i32, ptr @sec, align 4
  tail call fastcc void @test_skcipher_speed(ptr noundef nonnull @.str.47, i32 noundef 1, i32 noundef %76, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_32_64, i1 noundef zeroext false) #10
  %77 = load i32, ptr @sec, align 4
  tail call fastcc void @test_skcipher_speed(ptr noundef nonnull @.str.47, i32 noundef 0, i32 noundef %77, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_32_64, i1 noundef zeroext false) #10
  br label %sw.epilog

sw.bb344:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %78 = load i32, ptr @sec, align 4
  tail call fastcc void @test_aead_speed(ptr noundef nonnull @.str.104, i32 noundef 1, i32 noundef %78, i32 noundef 16, ptr noundef nonnull @aead_speed_template_20)
  %79 = load i32, ptr @sec, align 4
  tail call fastcc void @test_aead_speed(ptr noundef nonnull @.str.67, i32 noundef 1, i32 noundef %79, i32 noundef 8, ptr noundef nonnull @speed_template_16_24_32)
  %80 = load i32, ptr @sec, align 4
  tail call fastcc void @test_aead_speed(ptr noundef nonnull @.str.104, i32 noundef 0, i32 noundef %80, i32 noundef 16, ptr noundef nonnull @aead_speed_template_20)
  %81 = load i32, ptr @sec, align 4
  tail call fastcc void @test_aead_speed(ptr noundef nonnull @.str.67, i32 noundef 0, i32 noundef %81, i32 noundef 8, ptr noundef nonnull @speed_template_16_24_32)
  br label %sw.epilog

sw.bb345:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %82 = load i32, ptr @sec, align 4
  tail call fastcc void @test_aead_speed(ptr noundef nonnull @.str.76, i32 noundef 1, i32 noundef %82, i32 noundef 16, ptr noundef nonnull @aead_speed_template_19)
  %83 = load i32, ptr @sec, align 4
  tail call fastcc void @test_aead_speed(ptr noundef nonnull @.str.76, i32 noundef 0, i32 noundef %83, i32 noundef 16, ptr noundef nonnull @aead_speed_template_19)
  br label %sw.epilog

sw.bb346:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %84 = load i32, ptr @sec, align 4
  tail call fastcc void @test_aead_speed(ptr noundef nonnull @.str.127, i32 noundef 1, i32 noundef %84, i32 noundef 8, ptr noundef nonnull @aead_speed_template_36)
  %85 = load i32, ptr @sec, align 4
  tail call fastcc void @test_aead_speed(ptr noundef nonnull @.str.127, i32 noundef 0, i32 noundef %85, i32 noundef 8, ptr noundef nonnull @aead_speed_template_36)
  br label %sw.epilog

sw.bb347:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %86 = load i32, ptr @sec, align 4
  tail call fastcc void @test_skcipher_speed(ptr noundef nonnull @.str.128, i32 noundef 1, i32 noundef %86, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_32, i1 noundef zeroext false) #10
  br label %sw.epilog

sw.bb348:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %87 = load i32, ptr @sec, align 4
  tail call fastcc void @test_mb_aead_speed(ptr noundef nonnull @.str.104, i32 noundef 1, i32 noundef %87, i32 noundef 16, ptr noundef nonnull @aead_speed_template_20, i32 noundef %num_mb)
  %88 = load i32, ptr @sec, align 4
  tail call fastcc void @test_mb_aead_speed(ptr noundef nonnull @.str.67, i32 noundef 1, i32 noundef %88, i32 noundef 8, ptr noundef nonnull @speed_template_16_24_32, i32 noundef %num_mb)
  %89 = load i32, ptr @sec, align 4
  tail call fastcc void @test_mb_aead_speed(ptr noundef nonnull @.str.104, i32 noundef 0, i32 noundef %89, i32 noundef 16, ptr noundef nonnull @aead_speed_template_20, i32 noundef %num_mb)
  %90 = load i32, ptr @sec, align 4
  tail call fastcc void @test_mb_aead_speed(ptr noundef nonnull @.str.67, i32 noundef 0, i32 noundef %90, i32 noundef 8, ptr noundef nonnull @speed_template_16_24_32, i32 noundef %num_mb)
  br label %sw.epilog

sw.bb349:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %91 = load i32, ptr @sec, align 4
  tail call fastcc void @test_mb_aead_speed(ptr noundef nonnull @.str.76, i32 noundef 1, i32 noundef %91, i32 noundef 16, ptr noundef nonnull @aead_speed_template_19, i32 noundef %num_mb)
  %92 = load i32, ptr @sec, align 4
  tail call fastcc void @test_mb_aead_speed(ptr noundef nonnull @.str.76, i32 noundef 0, i32 noundef %92, i32 noundef 16, ptr noundef nonnull @aead_speed_template_19, i32 noundef %num_mb)
  br label %sw.epilog

sw.bb350:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %93 = load i32, ptr @sec, align 4
  tail call fastcc void @test_mb_aead_speed(ptr noundef nonnull @.str.127, i32 noundef 1, i32 noundef %93, i32 noundef 8, ptr noundef nonnull @aead_speed_template_36, i32 noundef %num_mb)
  %94 = load i32, ptr @sec, align 4
  tail call fastcc void @test_mb_aead_speed(ptr noundef nonnull @.str.127, i32 noundef 0, i32 noundef %94, i32 noundef 8, ptr noundef nonnull @aead_speed_template_36, i32 noundef %num_mb)
  br label %sw.epilog

sw.bb351:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %95 = load i32, ptr @sec, align 4
  tail call fastcc void @test_skcipher_speed(ptr noundef nonnull @.str.123, i32 noundef 1, i32 noundef %95, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_16, i1 noundef zeroext false) #10
  %96 = load i32, ptr @sec, align 4
  tail call fastcc void @test_skcipher_speed(ptr noundef nonnull @.str.123, i32 noundef 0, i32 noundef %96, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_16, i1 noundef zeroext false) #10
  %97 = load i32, ptr @sec, align 4
  tail call fastcc void @test_skcipher_speed(ptr noundef nonnull @.str.124, i32 noundef 1, i32 noundef %97, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_16, i1 noundef zeroext false) #10
  %98 = load i32, ptr @sec, align 4
  tail call fastcc void @test_skcipher_speed(ptr noundef nonnull @.str.124, i32 noundef 0, i32 noundef %98, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_16, i1 noundef zeroext false) #10
  %99 = load i32, ptr @sec, align 4
  tail call fastcc void @test_skcipher_speed(ptr noundef nonnull @.str.125, i32 noundef 1, i32 noundef %99, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_16, i1 noundef zeroext false) #10
  %100 = load i32, ptr @sec, align 4
  tail call fastcc void @test_skcipher_speed(ptr noundef nonnull @.str.125, i32 noundef 0, i32 noundef %100, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_16, i1 noundef zeroext false) #10
  %101 = load i32, ptr @sec, align 4
  tail call fastcc void @test_skcipher_speed(ptr noundef nonnull @.str.126, i32 noundef 1, i32 noundef %101, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_16, i1 noundef zeroext false) #10
  %102 = load i32, ptr @sec, align 4
  tail call fastcc void @test_skcipher_speed(ptr noundef nonnull @.str.126, i32 noundef 0, i32 noundef %102, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_16, i1 noundef zeroext false) #10
  br label %sw.epilog

sw.bb352:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %103 = load i32, ptr @sec, align 4
  tail call fastcc void @test_skcipher_speed(ptr noundef nonnull @.str.129, i32 noundef 1, i32 noundef %103, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_32, i1 noundef zeroext false) #10
  %104 = load i32, ptr @sec, align 4
  tail call fastcc void @test_skcipher_speed(ptr noundef nonnull @.str.129, i32 noundef 0, i32 noundef %104, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_32, i1 noundef zeroext false) #10
  %105 = load i32, ptr @sec, align 4
  tail call fastcc void @test_skcipher_speed(ptr noundef nonnull @.str.130, i32 noundef 1, i32 noundef %105, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_32, i1 noundef zeroext false) #10
  %106 = load i32, ptr @sec, align 4
  tail call fastcc void @test_skcipher_speed(ptr noundef nonnull @.str.130, i32 noundef 0, i32 noundef %106, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_32, i1 noundef zeroext false) #10
  br label %sw.epilog

sw.bb353:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %107 = load i32, ptr @sec, align 4
  tail call fastcc void @test_skcipher_speed(ptr noundef nonnull @.str.131, i32 noundef 1, i32 noundef %107, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_16_24_32, i1 noundef zeroext true) #10
  %108 = load i32, ptr @sec, align 4
  tail call fastcc void @test_skcipher_speed(ptr noundef nonnull @.str.131, i32 noundef 0, i32 noundef %108, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_16_24_32, i1 noundef zeroext true) #10
  br label %sw.epilog

sw.bb354:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %109 = load i32, ptr @sec, align 4
  tail call fastcc void @test_aead_speed(ptr noundef nonnull @.str.132, i32 noundef 1, i32 noundef %109, i32 noundef 8, ptr noundef nonnull @speed_template_16)
  %110 = load i32, ptr @sec, align 4
  tail call fastcc void @test_aead_speed(ptr noundef nonnull @.str.132, i32 noundef 0, i32 noundef %110, i32 noundef 8, ptr noundef nonnull @speed_template_16)
  br label %sw.epilog

sw.bb355:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %111 = load i32, ptr @sec, align 4
  tail call fastcc void @test_aead_speed(ptr noundef nonnull @.str.86, i32 noundef 1, i32 noundef %111, i32 noundef 8, ptr noundef nonnull @speed_template_16)
  %112 = load i32, ptr @sec, align 4
  tail call fastcc void @test_aead_speed(ptr noundef nonnull @.str.86, i32 noundef 0, i32 noundef %112, i32 noundef 8, ptr noundef nonnull @speed_template_16)
  br label %sw.epilog

sw.bb356:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %113 = load i32, ptr @sec, align 4
  tail call fastcc void @test_aead_speed(ptr noundef nonnull @.str.133, i32 noundef 1, i32 noundef %113, i32 noundef 16, ptr noundef nonnull @aead_speed_template_19)
  %114 = load i32, ptr @sec, align 4
  tail call fastcc void @test_aead_speed(ptr noundef nonnull @.str.133, i32 noundef 0, i32 noundef %114, i32 noundef 16, ptr noundef nonnull @aead_speed_template_19)
  br label %sw.epilog

sw.bb357:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %115 = load i32, ptr @sec, align 4
  tail call fastcc void @test_mb_aead_speed(ptr noundef nonnull @.str.86, i32 noundef 1, i32 noundef %115, i32 noundef 8, ptr noundef nonnull @speed_template_16, i32 noundef %num_mb)
  %116 = load i32, ptr @sec, align 4
  tail call fastcc void @test_mb_aead_speed(ptr noundef nonnull @.str.86, i32 noundef 0, i32 noundef %116, i32 noundef 8, ptr noundef nonnull @speed_template_16, i32 noundef %num_mb)
  br label %sw.epilog

sw.bb358:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %117 = load i32, ptr @sec, align 4
  tail call fastcc void @test_mb_aead_speed(ptr noundef nonnull @.str.133, i32 noundef 1, i32 noundef %117, i32 noundef 16, ptr noundef nonnull @aead_speed_template_19, i32 noundef %num_mb)
  %118 = load i32, ptr @sec, align 4
  tail call fastcc void @test_mb_aead_speed(ptr noundef nonnull @.str.133, i32 noundef 0, i32 noundef %118, i32 noundef 16, ptr noundef nonnull @aead_speed_template_19, i32 noundef %num_mb)
  br label %sw.epilog

sw.bb359:                                         ; preds = %entry
  %tobool360.not = icmp eq ptr %alg, null
  br i1 %tobool360.not, label %sw.bb359.sw.bb363_crit_edge, label %if.then361

sw.bb359.sw.bb363_crit_edge:                      ; preds = %sw.bb359
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb363

if.then361:                                       ; preds = %sw.bb359
  call void @__sanitizer_cov_trace_pc() #12
  %119 = load i32, ptr @sec, align 4
  tail call fastcc void @test_ahash_speed_common(ptr noundef nonnull %alg, i32 noundef %119, ptr noundef nonnull @generic_hash_speed_template, i32 noundef 128) #10
  br label %sw.epilog

sw.bb363:                                         ; preds = %sw.bb359.sw.bb363_crit_edge, %entry.sw.bb363_crit_edge
  %120 = load i32, ptr @sec, align 4
  tail call fastcc void @test_ahash_speed_common(ptr noundef nonnull @.str.14, i32 noundef %120, ptr noundef nonnull @generic_hash_speed_template, i32 noundef 128) #10
  %121 = load i32, ptr @mode, align 4
  %122 = add i32 %121, -301
  call void @__sanitizer_cov_trace_const_cmp4(i32 99, i32 %122)
  %123 = icmp ult i32 %122, 99
  br i1 %123, label %sw.bb363.sw.epilog_crit_edge, label %sw.bb363.sw.bb368_crit_edge

sw.bb363.sw.bb368_crit_edge:                      ; preds = %sw.bb363
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb368

sw.bb363.sw.epilog_crit_edge:                     ; preds = %sw.bb363
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb368:                                         ; preds = %sw.bb363.sw.bb368_crit_edge, %entry.sw.bb368_crit_edge
  %124 = load i32, ptr @sec, align 4
  tail call fastcc void @test_ahash_speed_common(ptr noundef nonnull @.str.6, i32 noundef %124, ptr noundef nonnull @generic_hash_speed_template, i32 noundef 128) #10
  %125 = load i32, ptr @mode, align 4
  %126 = add i32 %125, -301
  call void @__sanitizer_cov_trace_const_cmp4(i32 99, i32 %126)
  %127 = icmp ult i32 %126, 99
  br i1 %127, label %sw.bb368.sw.epilog_crit_edge, label %sw.bb368.sw.bb374_crit_edge

sw.bb368.sw.bb374_crit_edge:                      ; preds = %sw.bb368
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb374

sw.bb368.sw.epilog_crit_edge:                     ; preds = %sw.bb368
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb374:                                         ; preds = %sw.bb368.sw.bb374_crit_edge, %entry.sw.bb374_crit_edge
  %128 = load i32, ptr @sec, align 4
  tail call fastcc void @test_ahash_speed_common(ptr noundef nonnull @.str.7, i32 noundef %128, ptr noundef nonnull @generic_hash_speed_template, i32 noundef 128) #10
  %129 = load i32, ptr @mode, align 4
  %130 = add i32 %129, -301
  call void @__sanitizer_cov_trace_const_cmp4(i32 99, i32 %130)
  %131 = icmp ult i32 %130, 99
  br i1 %131, label %sw.bb374.sw.epilog_crit_edge, label %sw.bb374.sw.bb380_crit_edge

sw.bb374.sw.bb380_crit_edge:                      ; preds = %sw.bb374
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb380

sw.bb374.sw.epilog_crit_edge:                     ; preds = %sw.bb374
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb380:                                         ; preds = %sw.bb374.sw.bb380_crit_edge, %entry.sw.bb380_crit_edge
  %132 = load i32, ptr @sec, align 4
  tail call fastcc void @test_ahash_speed_common(ptr noundef nonnull @.str.15, i32 noundef %132, ptr noundef nonnull @generic_hash_speed_template, i32 noundef 128) #10
  %133 = load i32, ptr @mode, align 4
  %134 = add i32 %133, -301
  call void @__sanitizer_cov_trace_const_cmp4(i32 99, i32 %134)
  %135 = icmp ult i32 %134, 99
  br i1 %135, label %sw.bb380.sw.epilog_crit_edge, label %sw.bb380.sw.bb386_crit_edge

sw.bb380.sw.bb386_crit_edge:                      ; preds = %sw.bb380
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb386

sw.bb380.sw.epilog_crit_edge:                     ; preds = %sw.bb380
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb386:                                         ; preds = %sw.bb380.sw.bb386_crit_edge, %entry.sw.bb386_crit_edge
  %136 = load i32, ptr @sec, align 4
  tail call fastcc void @test_ahash_speed_common(ptr noundef nonnull @.str.37, i32 noundef %136, ptr noundef nonnull @generic_hash_speed_template, i32 noundef 128) #10
  %137 = load i32, ptr @mode, align 4
  %138 = add i32 %137, -301
  call void @__sanitizer_cov_trace_const_cmp4(i32 99, i32 %138)
  %139 = icmp ult i32 %138, 99
  br i1 %139, label %sw.bb386.sw.epilog_crit_edge, label %sw.bb386.sw.bb392_crit_edge

sw.bb386.sw.bb392_crit_edge:                      ; preds = %sw.bb386
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb392

sw.bb386.sw.epilog_crit_edge:                     ; preds = %sw.bb386
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb392:                                         ; preds = %sw.bb386.sw.bb392_crit_edge, %entry.sw.bb392_crit_edge
  %140 = load i32, ptr @sec, align 4
  tail call fastcc void @test_ahash_speed_common(ptr noundef nonnull @.str.38, i32 noundef %140, ptr noundef nonnull @generic_hash_speed_template, i32 noundef 128) #10
  %141 = load i32, ptr @mode, align 4
  %142 = add i32 %141, -301
  call void @__sanitizer_cov_trace_const_cmp4(i32 99, i32 %142)
  %143 = icmp ult i32 %142, 99
  br i1 %143, label %sw.bb392.sw.epilog_crit_edge, label %sw.bb392.sw.bb398_crit_edge

sw.bb392.sw.bb398_crit_edge:                      ; preds = %sw.bb392
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb398

sw.bb392.sw.epilog_crit_edge:                     ; preds = %sw.bb392
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb398:                                         ; preds = %sw.bb392.sw.bb398_crit_edge, %entry.sw.bb398_crit_edge
  %144 = load i32, ptr @sec, align 4
  tail call fastcc void @test_ahash_speed_common(ptr noundef nonnull @.str.56, i32 noundef %144, ptr noundef nonnull @generic_hash_speed_template, i32 noundef 128) #10
  %145 = load i32, ptr @mode, align 4
  %146 = add i32 %145, -301
  call void @__sanitizer_cov_trace_const_cmp4(i32 99, i32 %146)
  %147 = icmp ult i32 %146, 99
  br i1 %147, label %sw.bb398.sw.epilog_crit_edge, label %sw.bb398.sw.bb404_crit_edge

sw.bb398.sw.bb404_crit_edge:                      ; preds = %sw.bb398
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb404

sw.bb398.sw.epilog_crit_edge:                     ; preds = %sw.bb398
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb404:                                         ; preds = %sw.bb398.sw.bb404_crit_edge, %entry.sw.bb404_crit_edge
  %148 = load i32, ptr @sec, align 4
  tail call fastcc void @test_ahash_speed_common(ptr noundef nonnull @.str.55, i32 noundef %148, ptr noundef nonnull @generic_hash_speed_template, i32 noundef 128) #10
  %149 = load i32, ptr @mode, align 4
  %150 = add i32 %149, -301
  call void @__sanitizer_cov_trace_const_cmp4(i32 99, i32 %150)
  %151 = icmp ult i32 %150, 99
  br i1 %151, label %sw.bb404.sw.epilog_crit_edge, label %sw.bb404.sw.bb410_crit_edge

sw.bb404.sw.bb410_crit_edge:                      ; preds = %sw.bb404
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb410

sw.bb404.sw.epilog_crit_edge:                     ; preds = %sw.bb404
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb410:                                         ; preds = %sw.bb404.sw.bb410_crit_edge, %entry.sw.bb410_crit_edge
  %152 = load i32, ptr @sec, align 4
  tail call fastcc void @test_ahash_speed_common(ptr noundef nonnull @.str.54, i32 noundef %152, ptr noundef nonnull @generic_hash_speed_template, i32 noundef 128) #10
  %153 = load i32, ptr @mode, align 4
  %154 = add i32 %153, -301
  call void @__sanitizer_cov_trace_const_cmp4(i32 99, i32 %154)
  %155 = icmp ult i32 %154, 99
  br i1 %155, label %sw.bb410.sw.epilog_crit_edge, label %sw.bb410.sw.bb416_crit_edge

sw.bb410.sw.bb416_crit_edge:                      ; preds = %sw.bb410
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb416

sw.bb410.sw.epilog_crit_edge:                     ; preds = %sw.bb410
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb416:                                         ; preds = %sw.bb410.sw.bb416_crit_edge, %entry.sw.bb416_crit_edge
  %156 = load i32, ptr @sec, align 4
  tail call fastcc void @test_ahash_speed_common(ptr noundef nonnull @.str.66, i32 noundef %156, ptr noundef nonnull @generic_hash_speed_template, i32 noundef 128) #10
  %157 = load i32, ptr @mode, align 4
  %158 = add i32 %157, -301
  call void @__sanitizer_cov_trace_const_cmp4(i32 99, i32 %158)
  %159 = icmp ult i32 %158, 99
  br i1 %159, label %sw.bb416.sw.epilog_crit_edge, label %sw.bb416.sw.bb422_crit_edge

sw.bb416.sw.bb422_crit_edge:                      ; preds = %sw.bb416
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb422

sw.bb416.sw.epilog_crit_edge:                     ; preds = %sw.bb416
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb422:                                         ; preds = %sw.bb416.sw.bb422_crit_edge, %entry.sw.bb422_crit_edge
  %160 = load i32, ptr @sec, align 4
  tail call fastcc void @test_ahash_speed_common(ptr noundef nonnull @.str.71, i32 noundef %160, ptr noundef nonnull @generic_hash_speed_template, i32 noundef 128) #10
  %161 = load i32, ptr @mode, align 4
  %162 = add i32 %161, -301
  call void @__sanitizer_cov_trace_const_cmp4(i32 99, i32 %162)
  %163 = icmp ult i32 %162, 99
  br i1 %163, label %sw.bb422.sw.epilog_crit_edge, label %sw.bb422.sw.bb428_crit_edge

sw.bb422.sw.bb428_crit_edge:                      ; preds = %sw.bb422
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb428

sw.bb422.sw.epilog_crit_edge:                     ; preds = %sw.bb422
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb428:                                         ; preds = %sw.bb422.sw.bb428_crit_edge, %entry.sw.bb428_crit_edge
  %164 = load i32, ptr @sec, align 4
  tail call fastcc void @test_ahash_speed_common(ptr noundef nonnull @.str.72, i32 noundef %164, ptr noundef nonnull @generic_hash_speed_template, i32 noundef 128) #10
  %165 = load i32, ptr @mode, align 4
  %166 = add i32 %165, -301
  call void @__sanitizer_cov_trace_const_cmp4(i32 99, i32 %166)
  %167 = icmp ult i32 %166, 99
  br i1 %167, label %sw.bb428.sw.epilog_crit_edge, label %sw.bb428.sw.bb434_crit_edge

sw.bb428.sw.bb434_crit_edge:                      ; preds = %sw.bb428
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb434

sw.bb428.sw.epilog_crit_edge:                     ; preds = %sw.bb428
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb434:                                         ; preds = %sw.bb428.sw.bb434_crit_edge, %entry.sw.bb434_crit_edge
  %168 = load i32, ptr @sec, align 4
  tail call fastcc void @test_ahash_speed_common(ptr noundef nonnull @.str.73, i32 noundef %168, ptr noundef nonnull @generic_hash_speed_template, i32 noundef 128) #10
  %169 = load i32, ptr @mode, align 4
  %170 = add i32 %169, -301
  call void @__sanitizer_cov_trace_const_cmp4(i32 99, i32 %170)
  %171 = icmp ult i32 %170, 99
  br i1 %171, label %sw.bb434.sw.epilog_crit_edge, label %sw.bb434.sw.bb440_crit_edge

sw.bb434.sw.bb440_crit_edge:                      ; preds = %sw.bb434
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb440

sw.bb434.sw.epilog_crit_edge:                     ; preds = %sw.bb434
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb440:                                         ; preds = %sw.bb434.sw.bb440_crit_edge, %entry.sw.bb440_crit_edge
  %172 = load i32, ptr @sec, align 4
  tail call fastcc void @test_ahash_speed_common(ptr noundef nonnull @.str.74, i32 noundef %172, ptr noundef nonnull @generic_hash_speed_template, i32 noundef 128) #10
  %173 = load i32, ptr @mode, align 4
  %174 = add i32 %173, -301
  call void @__sanitizer_cov_trace_const_cmp4(i32 99, i32 %174)
  %175 = icmp ult i32 %174, 99
  br i1 %175, label %sw.bb440.sw.epilog_crit_edge, label %sw.bb440.sw.bb446_crit_edge

sw.bb440.sw.bb446_crit_edge:                      ; preds = %sw.bb440
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb446

sw.bb440.sw.epilog_crit_edge:                     ; preds = %sw.bb440
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb446:                                         ; preds = %sw.bb440.sw.bb446_crit_edge, %entry.sw.bb446_crit_edge
  store i32 16, ptr @klen, align 4
  %176 = load i32, ptr @sec, align 4
  tail call fastcc void @test_ahash_speed_common(ptr noundef nonnull @.str.77, i32 noundef %176, ptr noundef nonnull @generic_hash_speed_template, i32 noundef 128) #10
  %177 = load i32, ptr @mode, align 4
  %178 = add i32 %177, -301
  call void @__sanitizer_cov_trace_const_cmp4(i32 99, i32 %178)
  %179 = icmp ult i32 %178, 99
  br i1 %179, label %sw.bb446.sw.epilog_crit_edge, label %sw.bb446.sw.bb452_crit_edge

sw.bb446.sw.bb452_crit_edge:                      ; preds = %sw.bb446
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb452

sw.bb446.sw.epilog_crit_edge:                     ; preds = %sw.bb446
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb452:                                         ; preds = %sw.bb446.sw.bb452_crit_edge, %entry.sw.bb452_crit_edge
  %180 = load i32, ptr @sec, align 4
  tail call fastcc void @test_ahash_speed_common(ptr noundef nonnull @.str.50, i32 noundef %180, ptr noundef nonnull @generic_hash_speed_template, i32 noundef 128) #10
  %181 = load i32, ptr @mode, align 4
  %182 = add i32 %181, -301
  call void @__sanitizer_cov_trace_const_cmp4(i32 99, i32 %182)
  %183 = icmp ult i32 %182, 99
  br i1 %183, label %sw.bb452.sw.epilog_crit_edge, label %sw.bb452.sw.bb458_crit_edge

sw.bb452.sw.bb458_crit_edge:                      ; preds = %sw.bb452
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb458

sw.bb452.sw.epilog_crit_edge:                     ; preds = %sw.bb452
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb458:                                         ; preds = %sw.bb452.sw.bb458_crit_edge, %entry.sw.bb458_crit_edge
  %184 = load i32, ptr @sec, align 4
  tail call fastcc void @test_ahash_speed_common(ptr noundef nonnull @.str.78, i32 noundef %184, ptr noundef nonnull @generic_hash_speed_template, i32 noundef 128) #10
  %185 = load i32, ptr @mode, align 4
  %186 = add i32 %185, -301
  call void @__sanitizer_cov_trace_const_cmp4(i32 99, i32 %186)
  %187 = icmp ult i32 %186, 99
  br i1 %187, label %sw.bb458.sw.epilog_crit_edge, label %sw.bb458.sw.bb464_crit_edge

sw.bb458.sw.bb464_crit_edge:                      ; preds = %sw.bb458
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb464

sw.bb458.sw.epilog_crit_edge:                     ; preds = %sw.bb458
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb464:                                         ; preds = %sw.bb458.sw.bb464_crit_edge, %entry.sw.bb464_crit_edge
  %188 = load i32, ptr @sec, align 4
  tail call fastcc void @test_ahash_speed_common(ptr noundef nonnull @.str.134, i32 noundef %188, ptr noundef nonnull @poly1305_speed_template, i32 noundef 128) #10
  %189 = load i32, ptr @mode, align 4
  %190 = add i32 %189, -301
  call void @__sanitizer_cov_trace_const_cmp4(i32 99, i32 %190)
  %191 = icmp ult i32 %190, 99
  br i1 %191, label %sw.bb464.sw.epilog_crit_edge, label %sw.bb464.sw.bb470_crit_edge

sw.bb464.sw.bb470_crit_edge:                      ; preds = %sw.bb464
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb470

sw.bb464.sw.epilog_crit_edge:                     ; preds = %sw.bb464
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb470:                                         ; preds = %sw.bb464.sw.bb470_crit_edge, %entry.sw.bb470_crit_edge
  %192 = load i32, ptr @sec, align 4
  tail call fastcc void @test_ahash_speed_common(ptr noundef nonnull @.str.79, i32 noundef %192, ptr noundef nonnull @generic_hash_speed_template, i32 noundef 128) #10
  %193 = load i32, ptr @mode, align 4
  %194 = add i32 %193, -301
  call void @__sanitizer_cov_trace_const_cmp4(i32 99, i32 %194)
  %195 = icmp ult i32 %194, 99
  br i1 %195, label %sw.bb470.sw.epilog_crit_edge, label %sw.bb470.sw.bb476_crit_edge

sw.bb470.sw.bb476_crit_edge:                      ; preds = %sw.bb470
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb476

sw.bb470.sw.epilog_crit_edge:                     ; preds = %sw.bb470
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb476:                                         ; preds = %sw.bb470.sw.bb476_crit_edge, %entry.sw.bb476_crit_edge
  %196 = load i32, ptr @sec, align 4
  tail call fastcc void @test_ahash_speed_common(ptr noundef nonnull @.str.80, i32 noundef %196, ptr noundef nonnull @generic_hash_speed_template, i32 noundef 128) #10
  %197 = load i32, ptr @mode, align 4
  %198 = add i32 %197, -301
  call void @__sanitizer_cov_trace_const_cmp4(i32 99, i32 %198)
  %199 = icmp ult i32 %198, 99
  br i1 %199, label %sw.bb476.sw.epilog_crit_edge, label %sw.bb476.sw.bb482_crit_edge

sw.bb476.sw.bb482_crit_edge:                      ; preds = %sw.bb476
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb482

sw.bb476.sw.epilog_crit_edge:                     ; preds = %sw.bb476
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb482:                                         ; preds = %sw.bb476.sw.bb482_crit_edge, %entry.sw.bb482_crit_edge
  %200 = load i32, ptr @sec, align 4
  tail call fastcc void @test_ahash_speed_common(ptr noundef nonnull @.str.81, i32 noundef %200, ptr noundef nonnull @generic_hash_speed_template, i32 noundef 128) #10
  %201 = load i32, ptr @mode, align 4
  %202 = add i32 %201, -301
  call void @__sanitizer_cov_trace_const_cmp4(i32 99, i32 %202)
  %203 = icmp ult i32 %202, 99
  br i1 %203, label %sw.bb482.sw.epilog_crit_edge, label %sw.bb482.sw.bb488_crit_edge

sw.bb482.sw.bb488_crit_edge:                      ; preds = %sw.bb482
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb488

sw.bb482.sw.epilog_crit_edge:                     ; preds = %sw.bb482
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb488:                                         ; preds = %sw.bb482.sw.bb488_crit_edge, %entry.sw.bb488_crit_edge
  %204 = load i32, ptr @sec, align 4
  tail call fastcc void @test_ahash_speed_common(ptr noundef nonnull @.str.82, i32 noundef %204, ptr noundef nonnull @generic_hash_speed_template, i32 noundef 128) #10
  %205 = load i32, ptr @mode, align 4
  %206 = add i32 %205, -301
  call void @__sanitizer_cov_trace_const_cmp4(i32 99, i32 %206)
  %207 = icmp ult i32 %206, 99
  br i1 %207, label %sw.bb488.sw.epilog_crit_edge, label %sw.bb488.sw.bb494_crit_edge

sw.bb488.sw.bb494_crit_edge:                      ; preds = %sw.bb488
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb494

sw.bb488.sw.epilog_crit_edge:                     ; preds = %sw.bb488
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb494:                                         ; preds = %sw.bb488.sw.bb494_crit_edge, %entry.sw.bb494_crit_edge
  %208 = load i32, ptr @sec, align 4
  tail call fastcc void @test_ahash_speed_common(ptr noundef nonnull @.str.83, i32 noundef %208, ptr noundef nonnull @generic_hash_speed_template, i32 noundef 128) #10
  %209 = load i32, ptr @mode, align 4
  %210 = add i32 %209, -301
  call void @__sanitizer_cov_trace_const_cmp4(i32 99, i32 %210)
  %211 = icmp ult i32 %210, 99
  br i1 %211, label %sw.bb494.sw.epilog_crit_edge, label %sw.bb494.sw.bb500_crit_edge

sw.bb494.sw.bb500_crit_edge:                      ; preds = %sw.bb494
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb500

sw.bb494.sw.epilog_crit_edge:                     ; preds = %sw.bb494
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb500:                                         ; preds = %sw.bb494.sw.bb500_crit_edge, %entry.sw.bb500_crit_edge
  %212 = load i32, ptr @sec, align 4
  tail call fastcc void @test_ahash_speed_common(ptr noundef nonnull @.str.84, i32 noundef %212, ptr noundef nonnull @generic_hash_speed_template, i32 noundef 128) #10
  %213 = load i32, ptr @mode, align 4
  %214 = add i32 %213, -301
  call void @__sanitizer_cov_trace_const_cmp4(i32 99, i32 %214)
  %215 = icmp ult i32 %214, 99
  br i1 %215, label %sw.bb500.sw.epilog_crit_edge, label %sw.bb500.sw.bb506_crit_edge

sw.bb500.sw.bb506_crit_edge:                      ; preds = %sw.bb500
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb506

sw.bb500.sw.epilog_crit_edge:                     ; preds = %sw.bb500
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb506:                                         ; preds = %sw.bb500.sw.bb506_crit_edge, %entry.sw.bb506_crit_edge
  %216 = load i32, ptr @sec, align 4
  tail call fastcc void @test_ahash_speed_common(ptr noundef nonnull @.str.85, i32 noundef %216, ptr noundef nonnull @generic_hash_speed_template, i32 noundef 128) #10
  br label %sw.epilog

sw.bb512:                                         ; preds = %entry
  %tobool513.not = icmp eq ptr %alg, null
  br i1 %tobool513.not, label %sw.bb512.sw.bb516_crit_edge, label %if.then514

sw.bb512.sw.bb516_crit_edge:                      ; preds = %sw.bb512
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb516

if.then514:                                       ; preds = %sw.bb512
  call void @__sanitizer_cov_trace_pc() #12
  %217 = load i32, ptr @sec, align 4
  tail call fastcc void @test_ahash_speed_common(ptr noundef nonnull %alg, i32 noundef %217, ptr noundef nonnull @generic_hash_speed_template, i32 noundef 0) #10
  br label %sw.epilog

sw.bb516:                                         ; preds = %sw.bb512.sw.bb516_crit_edge, %entry.sw.bb516_crit_edge
  %218 = load i32, ptr @sec, align 4
  tail call fastcc void @test_ahash_speed_common(ptr noundef nonnull @.str.14, i32 noundef %218, ptr noundef nonnull @generic_hash_speed_template, i32 noundef 0) #10
  %219 = load i32, ptr @mode, align 4
  %220 = add i32 %219, -401
  call void @__sanitizer_cov_trace_const_cmp4(i32 99, i32 %220)
  %221 = icmp ult i32 %220, 99
  br i1 %221, label %sw.bb516.sw.epilog_crit_edge, label %sw.bb516.sw.bb522_crit_edge

sw.bb516.sw.bb522_crit_edge:                      ; preds = %sw.bb516
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb522

sw.bb516.sw.epilog_crit_edge:                     ; preds = %sw.bb516
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb522:                                         ; preds = %sw.bb516.sw.bb522_crit_edge, %entry.sw.bb522_crit_edge
  %222 = load i32, ptr @sec, align 4
  tail call fastcc void @test_ahash_speed_common(ptr noundef nonnull @.str.6, i32 noundef %222, ptr noundef nonnull @generic_hash_speed_template, i32 noundef 0) #10
  %223 = load i32, ptr @mode, align 4
  %224 = add i32 %223, -401
  call void @__sanitizer_cov_trace_const_cmp4(i32 99, i32 %224)
  %225 = icmp ult i32 %224, 99
  br i1 %225, label %sw.bb522.sw.epilog_crit_edge, label %sw.bb522.sw.bb528_crit_edge

sw.bb522.sw.bb528_crit_edge:                      ; preds = %sw.bb522
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb528

sw.bb522.sw.epilog_crit_edge:                     ; preds = %sw.bb522
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb528:                                         ; preds = %sw.bb522.sw.bb528_crit_edge, %entry.sw.bb528_crit_edge
  %226 = load i32, ptr @sec, align 4
  tail call fastcc void @test_ahash_speed_common(ptr noundef nonnull @.str.7, i32 noundef %226, ptr noundef nonnull @generic_hash_speed_template, i32 noundef 0) #10
  %227 = load i32, ptr @mode, align 4
  %228 = add i32 %227, -401
  call void @__sanitizer_cov_trace_const_cmp4(i32 99, i32 %228)
  %229 = icmp ult i32 %228, 99
  br i1 %229, label %sw.bb528.sw.epilog_crit_edge, label %sw.bb528.sw.bb534_crit_edge

sw.bb528.sw.bb534_crit_edge:                      ; preds = %sw.bb528
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb534

sw.bb528.sw.epilog_crit_edge:                     ; preds = %sw.bb528
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb534:                                         ; preds = %sw.bb528.sw.bb534_crit_edge, %entry.sw.bb534_crit_edge
  %230 = load i32, ptr @sec, align 4
  tail call fastcc void @test_ahash_speed_common(ptr noundef nonnull @.str.15, i32 noundef %230, ptr noundef nonnull @generic_hash_speed_template, i32 noundef 0) #10
  %231 = load i32, ptr @mode, align 4
  %232 = add i32 %231, -401
  call void @__sanitizer_cov_trace_const_cmp4(i32 99, i32 %232)
  %233 = icmp ult i32 %232, 99
  br i1 %233, label %sw.bb534.sw.epilog_crit_edge, label %sw.bb534.sw.bb540_crit_edge

sw.bb534.sw.bb540_crit_edge:                      ; preds = %sw.bb534
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb540

sw.bb534.sw.epilog_crit_edge:                     ; preds = %sw.bb534
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb540:                                         ; preds = %sw.bb534.sw.bb540_crit_edge, %entry.sw.bb540_crit_edge
  %234 = load i32, ptr @sec, align 4
  tail call fastcc void @test_ahash_speed_common(ptr noundef nonnull @.str.37, i32 noundef %234, ptr noundef nonnull @generic_hash_speed_template, i32 noundef 0) #10
  %235 = load i32, ptr @mode, align 4
  %236 = add i32 %235, -401
  call void @__sanitizer_cov_trace_const_cmp4(i32 99, i32 %236)
  %237 = icmp ult i32 %236, 99
  br i1 %237, label %sw.bb540.sw.epilog_crit_edge, label %sw.bb540.sw.bb546_crit_edge

sw.bb540.sw.bb546_crit_edge:                      ; preds = %sw.bb540
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb546

sw.bb540.sw.epilog_crit_edge:                     ; preds = %sw.bb540
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb546:                                         ; preds = %sw.bb540.sw.bb546_crit_edge, %entry.sw.bb546_crit_edge
  %238 = load i32, ptr @sec, align 4
  tail call fastcc void @test_ahash_speed_common(ptr noundef nonnull @.str.38, i32 noundef %238, ptr noundef nonnull @generic_hash_speed_template, i32 noundef 0) #10
  %239 = load i32, ptr @mode, align 4
  %240 = add i32 %239, -401
  call void @__sanitizer_cov_trace_const_cmp4(i32 99, i32 %240)
  %241 = icmp ult i32 %240, 99
  br i1 %241, label %sw.bb546.sw.epilog_crit_edge, label %sw.bb546.sw.bb552_crit_edge

sw.bb546.sw.bb552_crit_edge:                      ; preds = %sw.bb546
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb552

sw.bb546.sw.epilog_crit_edge:                     ; preds = %sw.bb546
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb552:                                         ; preds = %sw.bb546.sw.bb552_crit_edge, %entry.sw.bb552_crit_edge
  %242 = load i32, ptr @sec, align 4
  tail call fastcc void @test_ahash_speed_common(ptr noundef nonnull @.str.56, i32 noundef %242, ptr noundef nonnull @generic_hash_speed_template, i32 noundef 0) #10
  %243 = load i32, ptr @mode, align 4
  %244 = add i32 %243, -401
  call void @__sanitizer_cov_trace_const_cmp4(i32 99, i32 %244)
  %245 = icmp ult i32 %244, 99
  br i1 %245, label %sw.bb552.sw.epilog_crit_edge, label %sw.bb552.sw.bb558_crit_edge

sw.bb552.sw.bb558_crit_edge:                      ; preds = %sw.bb552
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb558

sw.bb552.sw.epilog_crit_edge:                     ; preds = %sw.bb552
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb558:                                         ; preds = %sw.bb552.sw.bb558_crit_edge, %entry.sw.bb558_crit_edge
  %246 = load i32, ptr @sec, align 4
  tail call fastcc void @test_ahash_speed_common(ptr noundef nonnull @.str.55, i32 noundef %246, ptr noundef nonnull @generic_hash_speed_template, i32 noundef 0) #10
  %247 = load i32, ptr @mode, align 4
  %248 = add i32 %247, -401
  call void @__sanitizer_cov_trace_const_cmp4(i32 99, i32 %248)
  %249 = icmp ult i32 %248, 99
  br i1 %249, label %sw.bb558.sw.epilog_crit_edge, label %sw.bb558.sw.bb564_crit_edge

sw.bb558.sw.bb564_crit_edge:                      ; preds = %sw.bb558
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb564

sw.bb558.sw.epilog_crit_edge:                     ; preds = %sw.bb558
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb564:                                         ; preds = %sw.bb558.sw.bb564_crit_edge, %entry.sw.bb564_crit_edge
  %250 = load i32, ptr @sec, align 4
  tail call fastcc void @test_ahash_speed_common(ptr noundef nonnull @.str.54, i32 noundef %250, ptr noundef nonnull @generic_hash_speed_template, i32 noundef 0) #10
  %251 = load i32, ptr @mode, align 4
  %252 = add i32 %251, -401
  call void @__sanitizer_cov_trace_const_cmp4(i32 99, i32 %252)
  %253 = icmp ult i32 %252, 99
  br i1 %253, label %sw.bb564.sw.epilog_crit_edge, label %sw.bb564.sw.bb570_crit_edge

sw.bb564.sw.bb570_crit_edge:                      ; preds = %sw.bb564
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb570

sw.bb564.sw.epilog_crit_edge:                     ; preds = %sw.bb564
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb570:                                         ; preds = %sw.bb564.sw.bb570_crit_edge, %entry.sw.bb570_crit_edge
  %254 = load i32, ptr @sec, align 4
  tail call fastcc void @test_ahash_speed_common(ptr noundef nonnull @.str.66, i32 noundef %254, ptr noundef nonnull @generic_hash_speed_template, i32 noundef 0) #10
  %255 = load i32, ptr @mode, align 4
  %256 = add i32 %255, -401
  call void @__sanitizer_cov_trace_const_cmp4(i32 99, i32 %256)
  %257 = icmp ult i32 %256, 99
  br i1 %257, label %sw.bb570.sw.epilog_crit_edge, label %sw.bb570.sw.bb576_crit_edge

sw.bb570.sw.bb576_crit_edge:                      ; preds = %sw.bb570
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb576

sw.bb570.sw.epilog_crit_edge:                     ; preds = %sw.bb570
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb576:                                         ; preds = %sw.bb570.sw.bb576_crit_edge, %entry.sw.bb576_crit_edge
  %258 = load i32, ptr @sec, align 4
  tail call fastcc void @test_ahash_speed_common(ptr noundef nonnull @.str.71, i32 noundef %258, ptr noundef nonnull @generic_hash_speed_template, i32 noundef 0) #10
  %259 = load i32, ptr @mode, align 4
  %260 = add i32 %259, -401
  call void @__sanitizer_cov_trace_const_cmp4(i32 99, i32 %260)
  %261 = icmp ult i32 %260, 99
  br i1 %261, label %sw.bb576.sw.epilog_crit_edge, label %sw.bb576.sw.bb582_crit_edge

sw.bb576.sw.bb582_crit_edge:                      ; preds = %sw.bb576
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb582

sw.bb576.sw.epilog_crit_edge:                     ; preds = %sw.bb576
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb582:                                         ; preds = %sw.bb576.sw.bb582_crit_edge, %entry.sw.bb582_crit_edge
  %262 = load i32, ptr @sec, align 4
  tail call fastcc void @test_ahash_speed_common(ptr noundef nonnull @.str.72, i32 noundef %262, ptr noundef nonnull @generic_hash_speed_template, i32 noundef 0) #10
  %263 = load i32, ptr @mode, align 4
  %264 = add i32 %263, -401
  call void @__sanitizer_cov_trace_const_cmp4(i32 99, i32 %264)
  %265 = icmp ult i32 %264, 99
  br i1 %265, label %sw.bb582.sw.epilog_crit_edge, label %sw.bb582.sw.bb588_crit_edge

sw.bb582.sw.bb588_crit_edge:                      ; preds = %sw.bb582
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb588

sw.bb582.sw.epilog_crit_edge:                     ; preds = %sw.bb582
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb588:                                         ; preds = %sw.bb582.sw.bb588_crit_edge, %entry.sw.bb588_crit_edge
  %266 = load i32, ptr @sec, align 4
  tail call fastcc void @test_ahash_speed_common(ptr noundef nonnull @.str.73, i32 noundef %266, ptr noundef nonnull @generic_hash_speed_template, i32 noundef 0) #10
  %267 = load i32, ptr @mode, align 4
  %268 = add i32 %267, -401
  call void @__sanitizer_cov_trace_const_cmp4(i32 99, i32 %268)
  %269 = icmp ult i32 %268, 99
  br i1 %269, label %sw.bb588.sw.epilog_crit_edge, label %sw.bb588.sw.bb594_crit_edge

sw.bb588.sw.bb594_crit_edge:                      ; preds = %sw.bb588
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb594

sw.bb588.sw.epilog_crit_edge:                     ; preds = %sw.bb588
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb594:                                         ; preds = %sw.bb588.sw.bb594_crit_edge, %entry.sw.bb594_crit_edge
  %270 = load i32, ptr @sec, align 4
  tail call fastcc void @test_ahash_speed_common(ptr noundef nonnull @.str.74, i32 noundef %270, ptr noundef nonnull @generic_hash_speed_template, i32 noundef 0) #10
  %271 = load i32, ptr @mode, align 4
  %272 = add i32 %271, -401
  call void @__sanitizer_cov_trace_const_cmp4(i32 99, i32 %272)
  %273 = icmp ult i32 %272, 99
  br i1 %273, label %sw.bb594.sw.epilog_crit_edge, label %sw.bb594.sw.bb600_crit_edge

sw.bb594.sw.bb600_crit_edge:                      ; preds = %sw.bb594
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb600

sw.bb594.sw.epilog_crit_edge:                     ; preds = %sw.bb594
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb600:                                         ; preds = %sw.bb594.sw.bb600_crit_edge, %entry.sw.bb600_crit_edge
  %274 = load i32, ptr @sec, align 4
  tail call fastcc void @test_ahash_speed_common(ptr noundef nonnull @.str.79, i32 noundef %274, ptr noundef nonnull @generic_hash_speed_template, i32 noundef 0) #10
  %275 = load i32, ptr @mode, align 4
  %276 = add i32 %275, -401
  call void @__sanitizer_cov_trace_const_cmp4(i32 99, i32 %276)
  %277 = icmp ult i32 %276, 99
  br i1 %277, label %sw.bb600.sw.epilog_crit_edge, label %sw.bb600.sw.bb606_crit_edge

sw.bb600.sw.bb606_crit_edge:                      ; preds = %sw.bb600
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb606

sw.bb600.sw.epilog_crit_edge:                     ; preds = %sw.bb600
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb606:                                         ; preds = %sw.bb600.sw.bb606_crit_edge, %entry.sw.bb606_crit_edge
  %278 = load i32, ptr @sec, align 4
  tail call fastcc void @test_ahash_speed_common(ptr noundef nonnull @.str.80, i32 noundef %278, ptr noundef nonnull @generic_hash_speed_template, i32 noundef 0) #10
  %279 = load i32, ptr @mode, align 4
  %280 = add i32 %279, -401
  call void @__sanitizer_cov_trace_const_cmp4(i32 99, i32 %280)
  %281 = icmp ult i32 %280, 99
  br i1 %281, label %sw.bb606.sw.epilog_crit_edge, label %sw.bb606.sw.bb612_crit_edge

sw.bb606.sw.bb612_crit_edge:                      ; preds = %sw.bb606
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb612

sw.bb606.sw.epilog_crit_edge:                     ; preds = %sw.bb606
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb612:                                         ; preds = %sw.bb606.sw.bb612_crit_edge, %entry.sw.bb612_crit_edge
  %282 = load i32, ptr @sec, align 4
  tail call fastcc void @test_ahash_speed_common(ptr noundef nonnull @.str.81, i32 noundef %282, ptr noundef nonnull @generic_hash_speed_template, i32 noundef 0) #10
  %283 = load i32, ptr @mode, align 4
  %284 = add i32 %283, -401
  call void @__sanitizer_cov_trace_const_cmp4(i32 99, i32 %284)
  %285 = icmp ult i32 %284, 99
  br i1 %285, label %sw.bb612.sw.epilog_crit_edge, label %sw.bb612.sw.bb618_crit_edge

sw.bb612.sw.bb618_crit_edge:                      ; preds = %sw.bb612
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb618

sw.bb612.sw.epilog_crit_edge:                     ; preds = %sw.bb612
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb618:                                         ; preds = %sw.bb612.sw.bb618_crit_edge, %entry.sw.bb618_crit_edge
  %286 = load i32, ptr @sec, align 4
  tail call fastcc void @test_ahash_speed_common(ptr noundef nonnull @.str.82, i32 noundef %286, ptr noundef nonnull @generic_hash_speed_template, i32 noundef 0) #10
  %287 = load i32, ptr @mode, align 4
  %288 = add i32 %287, -401
  call void @__sanitizer_cov_trace_const_cmp4(i32 99, i32 %288)
  %289 = icmp ult i32 %288, 99
  br i1 %289, label %sw.bb618.sw.epilog_crit_edge, label %sw.bb618.sw.bb624_crit_edge

sw.bb618.sw.bb624_crit_edge:                      ; preds = %sw.bb618
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb624

sw.bb618.sw.epilog_crit_edge:                     ; preds = %sw.bb618
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb624:                                         ; preds = %sw.bb618.sw.bb624_crit_edge, %entry.sw.bb624_crit_edge
  %290 = load i32, ptr @sec, align 4
  tail call fastcc void @test_mb_ahash_speed(ptr noundef nonnull @.str.7, i32 noundef %290, i32 noundef %num_mb)
  %291 = load i32, ptr @mode, align 4
  %292 = add i32 %291, -401
  call void @__sanitizer_cov_trace_const_cmp4(i32 99, i32 %292)
  %293 = icmp ult i32 %292, 99
  br i1 %293, label %sw.bb624.sw.epilog_crit_edge, label %sw.bb624.sw.bb630_crit_edge

sw.bb624.sw.bb630_crit_edge:                      ; preds = %sw.bb624
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb630

sw.bb624.sw.epilog_crit_edge:                     ; preds = %sw.bb624
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb630:                                         ; preds = %sw.bb624.sw.bb630_crit_edge, %entry.sw.bb630_crit_edge
  %294 = load i32, ptr @sec, align 4
  tail call fastcc void @test_mb_ahash_speed(ptr noundef nonnull @.str.15, i32 noundef %294, i32 noundef %num_mb)
  %295 = load i32, ptr @mode, align 4
  %296 = add i32 %295, -401
  call void @__sanitizer_cov_trace_const_cmp4(i32 99, i32 %296)
  %297 = icmp ult i32 %296, 99
  br i1 %297, label %sw.bb630.sw.epilog_crit_edge, label %sw.bb630.sw.bb636_crit_edge

sw.bb630.sw.bb636_crit_edge:                      ; preds = %sw.bb630
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb636

sw.bb630.sw.epilog_crit_edge:                     ; preds = %sw.bb630
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb636:                                         ; preds = %sw.bb630.sw.bb636_crit_edge, %entry.sw.bb636_crit_edge
  %298 = load i32, ptr @sec, align 4
  tail call fastcc void @test_mb_ahash_speed(ptr noundef nonnull @.str.38, i32 noundef %298, i32 noundef %num_mb)
  %299 = load i32, ptr @mode, align 4
  %300 = add i32 %299, -401
  call void @__sanitizer_cov_trace_const_cmp4(i32 99, i32 %300)
  %301 = icmp ult i32 %300, 99
  br i1 %301, label %sw.bb636.sw.epilog_crit_edge, label %sw.bb636.sw.bb642_crit_edge

sw.bb636.sw.bb642_crit_edge:                      ; preds = %sw.bb636
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb642

sw.bb636.sw.epilog_crit_edge:                     ; preds = %sw.bb636
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb642:                                         ; preds = %sw.bb636.sw.bb642_crit_edge, %entry.sw.bb642_crit_edge
  %302 = load i32, ptr @sec, align 4
  tail call fastcc void @test_mb_ahash_speed(ptr noundef nonnull @.str.83, i32 noundef %302, i32 noundef %num_mb)
  %303 = load i32, ptr @mode, align 4
  %304 = add i32 %303, -401
  call void @__sanitizer_cov_trace_const_cmp4(i32 99, i32 %304)
  %305 = icmp ult i32 %304, 99
  br i1 %305, label %sw.bb642.sw.epilog_crit_edge, label %sw.bb642.sw.bb648_crit_edge

sw.bb642.sw.bb648_crit_edge:                      ; preds = %sw.bb642
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb648

sw.bb642.sw.epilog_crit_edge:                     ; preds = %sw.bb642
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb648:                                         ; preds = %sw.bb642.sw.bb648_crit_edge, %entry.sw.bb648_crit_edge
  %306 = load i32, ptr @sec, align 4
  tail call fastcc void @test_mb_ahash_speed(ptr noundef nonnull @.str.84, i32 noundef %306, i32 noundef %num_mb)
  %307 = load i32, ptr @mode, align 4
  %308 = add i32 %307, -401
  call void @__sanitizer_cov_trace_const_cmp4(i32 99, i32 %308)
  %309 = icmp ult i32 %308, 99
  br i1 %309, label %sw.bb648.sw.epilog_crit_edge, label %sw.bb648.sw.bb654_crit_edge

sw.bb648.sw.bb654_crit_edge:                      ; preds = %sw.bb648
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb654

sw.bb648.sw.epilog_crit_edge:                     ; preds = %sw.bb648
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb654:                                         ; preds = %sw.bb648.sw.bb654_crit_edge, %entry.sw.bb654_crit_edge
  %310 = load i32, ptr @sec, align 4
  tail call fastcc void @test_mb_ahash_speed(ptr noundef nonnull @.str.85, i32 noundef %310, i32 noundef %num_mb)
  br label %sw.epilog

sw.bb660:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %311 = load i32, ptr @sec, align 4
  tail call fastcc void @test_skcipher_speed(ptr noundef nonnull @.str.29, i32 noundef 1, i32 noundef %311, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_16_24_32, i1 noundef zeroext true) #10
  %312 = load i32, ptr @sec, align 4
  tail call fastcc void @test_skcipher_speed(ptr noundef nonnull @.str.29, i32 noundef 0, i32 noundef %312, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_16_24_32, i1 noundef zeroext true) #10
  %313 = load i32, ptr @sec, align 4
  tail call fastcc void @test_skcipher_speed(ptr noundef nonnull @.str.30, i32 noundef 1, i32 noundef %313, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_16_24_32, i1 noundef zeroext true) #10
  %314 = load i32, ptr @sec, align 4
  tail call fastcc void @test_skcipher_speed(ptr noundef nonnull @.str.30, i32 noundef 0, i32 noundef %314, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_16_24_32, i1 noundef zeroext true) #10
  %315 = load i32, ptr @sec, align 4
  tail call fastcc void @test_skcipher_speed(ptr noundef nonnull @.str.31, i32 noundef 1, i32 noundef %315, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_32_40_48, i1 noundef zeroext true) #10
  %316 = load i32, ptr @sec, align 4
  tail call fastcc void @test_skcipher_speed(ptr noundef nonnull @.str.31, i32 noundef 0, i32 noundef %316, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_32_40_48, i1 noundef zeroext true) #10
  %317 = load i32, ptr @sec, align 4
  tail call fastcc void @test_skcipher_speed(ptr noundef nonnull @.str.32, i32 noundef 1, i32 noundef %317, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_32_64, i1 noundef zeroext true) #10
  %318 = load i32, ptr @sec, align 4
  tail call fastcc void @test_skcipher_speed(ptr noundef nonnull @.str.32, i32 noundef 0, i32 noundef %318, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_32_64, i1 noundef zeroext true) #10
  %319 = load i32, ptr @sec, align 4
  tail call fastcc void @test_skcipher_speed(ptr noundef nonnull @.str.70, i32 noundef 1, i32 noundef %319, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_16_24_32, i1 noundef zeroext true) #10
  %320 = load i32, ptr @sec, align 4
  tail call fastcc void @test_skcipher_speed(ptr noundef nonnull @.str.70, i32 noundef 0, i32 noundef %320, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_16_24_32, i1 noundef zeroext true) #10
  %321 = load i32, ptr @sec, align 4
  tail call fastcc void @test_skcipher_speed(ptr noundef nonnull @.str.33, i32 noundef 1, i32 noundef %321, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_16_24_32, i1 noundef zeroext true) #10
  %322 = load i32, ptr @sec, align 4
  tail call fastcc void @test_skcipher_speed(ptr noundef nonnull @.str.33, i32 noundef 0, i32 noundef %322, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_16_24_32, i1 noundef zeroext true) #10
  %323 = load i32, ptr @sec, align 4
  tail call fastcc void @test_skcipher_speed(ptr noundef nonnull @.str.36, i32 noundef 1, i32 noundef %323, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_16_24_32, i1 noundef zeroext true) #10
  %324 = load i32, ptr @sec, align 4
  tail call fastcc void @test_skcipher_speed(ptr noundef nonnull @.str.36, i32 noundef 0, i32 noundef %324, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_16_24_32, i1 noundef zeroext true) #10
  %325 = load i32, ptr @sec, align 4
  tail call fastcc void @test_skcipher_speed(ptr noundef nonnull @.str.35, i32 noundef 1, i32 noundef %325, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_16_24_32, i1 noundef zeroext true) #10
  %326 = load i32, ptr @sec, align 4
  tail call fastcc void @test_skcipher_speed(ptr noundef nonnull @.str.35, i32 noundef 0, i32 noundef %326, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_16_24_32, i1 noundef zeroext true) #10
  %327 = load i32, ptr @sec, align 4
  tail call fastcc void @test_skcipher_speed(ptr noundef nonnull @.str.34, i32 noundef 1, i32 noundef %327, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_20_28_36, i1 noundef zeroext true) #10
  %328 = load i32, ptr @sec, align 4
  tail call fastcc void @test_skcipher_speed(ptr noundef nonnull @.str.34, i32 noundef 0, i32 noundef %328, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_20_28_36, i1 noundef zeroext true) #10
  br label %sw.epilog

sw.bb661:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %329 = load i32, ptr @sec, align 4
  tail call fastcc void @test_skcipher_speed(ptr noundef nonnull @.str.11, i32 noundef 1, i32 noundef %329, ptr noundef nonnull @des3_speed_template, i32 noundef 1, ptr noundef nonnull @speed_template_24, i1 noundef zeroext true) #10
  %330 = load i32, ptr @sec, align 4
  tail call fastcc void @test_skcipher_speed(ptr noundef nonnull @.str.11, i32 noundef 0, i32 noundef %330, ptr noundef nonnull @des3_speed_template, i32 noundef 1, ptr noundef nonnull @speed_template_24, i1 noundef zeroext true) #10
  %331 = load i32, ptr @sec, align 4
  tail call fastcc void @test_skcipher_speed(ptr noundef nonnull @.str.12, i32 noundef 1, i32 noundef %331, ptr noundef nonnull @des3_speed_template, i32 noundef 1, ptr noundef nonnull @speed_template_24, i1 noundef zeroext true) #10
  %332 = load i32, ptr @sec, align 4
  tail call fastcc void @test_skcipher_speed(ptr noundef nonnull @.str.12, i32 noundef 0, i32 noundef %332, ptr noundef nonnull @des3_speed_template, i32 noundef 1, ptr noundef nonnull @speed_template_24, i1 noundef zeroext true) #10
  %333 = load i32, ptr @sec, align 4
  tail call fastcc void @test_skcipher_speed(ptr noundef nonnull @.str.135, i32 noundef 1, i32 noundef %333, ptr noundef nonnull @des3_speed_template, i32 noundef 1, ptr noundef nonnull @speed_template_24, i1 noundef zeroext true) #10
  %334 = load i32, ptr @sec, align 4
  tail call fastcc void @test_skcipher_speed(ptr noundef nonnull @.str.135, i32 noundef 0, i32 noundef %334, ptr noundef nonnull @des3_speed_template, i32 noundef 1, ptr noundef nonnull @speed_template_24, i1 noundef zeroext true) #10
  %335 = load i32, ptr @sec, align 4
  tail call fastcc void @test_skcipher_speed(ptr noundef nonnull @.str.136, i32 noundef 1, i32 noundef %335, ptr noundef nonnull @des3_speed_template, i32 noundef 1, ptr noundef nonnull @speed_template_24, i1 noundef zeroext true) #10
  %336 = load i32, ptr @sec, align 4
  tail call fastcc void @test_skcipher_speed(ptr noundef nonnull @.str.136, i32 noundef 0, i32 noundef %336, ptr noundef nonnull @des3_speed_template, i32 noundef 1, ptr noundef nonnull @speed_template_24, i1 noundef zeroext true) #10
  br label %sw.epilog

sw.bb662:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %337 = load i32, ptr @sec, align 4
  tail call fastcc void @test_skcipher_speed(ptr noundef nonnull @.str.8, i32 noundef 1, i32 noundef %337, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_8, i1 noundef zeroext true) #10
  %338 = load i32, ptr @sec, align 4
  tail call fastcc void @test_skcipher_speed(ptr noundef nonnull @.str.8, i32 noundef 0, i32 noundef %338, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_8, i1 noundef zeroext true) #10
  %339 = load i32, ptr @sec, align 4
  tail call fastcc void @test_skcipher_speed(ptr noundef nonnull @.str.9, i32 noundef 1, i32 noundef %339, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_8, i1 noundef zeroext true) #10
  %340 = load i32, ptr @sec, align 4
  tail call fastcc void @test_skcipher_speed(ptr noundef nonnull @.str.9, i32 noundef 0, i32 noundef %340, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_8, i1 noundef zeroext true) #10
  %341 = load i32, ptr @sec, align 4
  tail call fastcc void @test_skcipher_speed(ptr noundef nonnull @.str.137, i32 noundef 1, i32 noundef %341, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_8, i1 noundef zeroext true) #10
  %342 = load i32, ptr @sec, align 4
  tail call fastcc void @test_skcipher_speed(ptr noundef nonnull @.str.137, i32 noundef 0, i32 noundef %342, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_8, i1 noundef zeroext true) #10
  %343 = load i32, ptr @sec, align 4
  tail call fastcc void @test_skcipher_speed(ptr noundef nonnull @.str.138, i32 noundef 1, i32 noundef %343, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_8, i1 noundef zeroext true) #10
  %344 = load i32, ptr @sec, align 4
  tail call fastcc void @test_skcipher_speed(ptr noundef nonnull @.str.138, i32 noundef 0, i32 noundef %344, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_8, i1 noundef zeroext true) #10
  br label %sw.epilog

sw.bb663:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %345 = load i32, ptr @sec, align 4
  tail call fastcc void @test_skcipher_speed(ptr noundef nonnull @.str.24, i32 noundef 1, i32 noundef %345, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_16_32, i1 noundef zeroext true) #10
  %346 = load i32, ptr @sec, align 4
  tail call fastcc void @test_skcipher_speed(ptr noundef nonnull @.str.24, i32 noundef 0, i32 noundef %346, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_16_32, i1 noundef zeroext true) #10
  %347 = load i32, ptr @sec, align 4
  tail call fastcc void @test_skcipher_speed(ptr noundef nonnull @.str.25, i32 noundef 1, i32 noundef %347, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_16_32, i1 noundef zeroext true) #10
  %348 = load i32, ptr @sec, align 4
  tail call fastcc void @test_skcipher_speed(ptr noundef nonnull @.str.25, i32 noundef 0, i32 noundef %348, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_16_32, i1 noundef zeroext true) #10
  %349 = load i32, ptr @sec, align 4
  tail call fastcc void @test_skcipher_speed(ptr noundef nonnull @.str.26, i32 noundef 1, i32 noundef %349, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_16_32, i1 noundef zeroext true) #10
  %350 = load i32, ptr @sec, align 4
  tail call fastcc void @test_skcipher_speed(ptr noundef nonnull @.str.26, i32 noundef 0, i32 noundef %350, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_16_32, i1 noundef zeroext true) #10
  %351 = load i32, ptr @sec, align 4
  tail call fastcc void @test_skcipher_speed(ptr noundef nonnull @.str.27, i32 noundef 1, i32 noundef %351, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_32_48, i1 noundef zeroext true) #10
  %352 = load i32, ptr @sec, align 4
  tail call fastcc void @test_skcipher_speed(ptr noundef nonnull @.str.27, i32 noundef 0, i32 noundef %352, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_32_48, i1 noundef zeroext true) #10
  %353 = load i32, ptr @sec, align 4
  tail call fastcc void @test_skcipher_speed(ptr noundef nonnull @.str.28, i32 noundef 1, i32 noundef %353, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_32_64, i1 noundef zeroext true) #10
  %354 = load i32, ptr @sec, align 4
  tail call fastcc void @test_skcipher_speed(ptr noundef nonnull @.str.28, i32 noundef 0, i32 noundef %354, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_32_64, i1 noundef zeroext true) #10
  br label %sw.epilog

sw.bb664:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %355 = load i32, ptr @sec, align 4
  tail call fastcc void @test_skcipher_speed(ptr noundef nonnull @.str.19, i32 noundef 1, i32 noundef %355, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_16_24_32, i1 noundef zeroext true) #10
  %356 = load i32, ptr @sec, align 4
  tail call fastcc void @test_skcipher_speed(ptr noundef nonnull @.str.19, i32 noundef 0, i32 noundef %356, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_16_24_32, i1 noundef zeroext true) #10
  %357 = load i32, ptr @sec, align 4
  tail call fastcc void @test_skcipher_speed(ptr noundef nonnull @.str.20, i32 noundef 1, i32 noundef %357, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_16_24_32, i1 noundef zeroext true) #10
  %358 = load i32, ptr @sec, align 4
  tail call fastcc void @test_skcipher_speed(ptr noundef nonnull @.str.20, i32 noundef 0, i32 noundef %358, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_16_24_32, i1 noundef zeroext true) #10
  %359 = load i32, ptr @sec, align 4
  tail call fastcc void @test_skcipher_speed(ptr noundef nonnull @.str.21, i32 noundef 1, i32 noundef %359, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_16_24_32, i1 noundef zeroext true) #10
  %360 = load i32, ptr @sec, align 4
  tail call fastcc void @test_skcipher_speed(ptr noundef nonnull @.str.21, i32 noundef 0, i32 noundef %360, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_16_24_32, i1 noundef zeroext true) #10
  %361 = load i32, ptr @sec, align 4
  tail call fastcc void @test_skcipher_speed(ptr noundef nonnull @.str.22, i32 noundef 1, i32 noundef %361, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_32_40_48, i1 noundef zeroext true) #10
  %362 = load i32, ptr @sec, align 4
  tail call fastcc void @test_skcipher_speed(ptr noundef nonnull @.str.22, i32 noundef 0, i32 noundef %362, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_32_40_48, i1 noundef zeroext true) #10
  %363 = load i32, ptr @sec, align 4
  tail call fastcc void @test_skcipher_speed(ptr noundef nonnull @.str.23, i32 noundef 1, i32 noundef %363, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_32_48_64, i1 noundef zeroext true) #10
  %364 = load i32, ptr @sec, align 4
  tail call fastcc void @test_skcipher_speed(ptr noundef nonnull @.str.23, i32 noundef 0, i32 noundef %364, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_32_48_64, i1 noundef zeroext true) #10
  br label %sw.epilog

sw.bb665:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %365 = load i32, ptr @sec, align 4
  tail call fastcc void @test_skcipher_speed(ptr noundef nonnull @.str.48, i32 noundef 1, i32 noundef %365, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_8, i1 noundef zeroext true) #10
  br label %sw.epilog

sw.bb666:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %366 = load i32, ptr @sec, align 4
  tail call fastcc void @test_skcipher_speed(ptr noundef nonnull @.str.40, i32 noundef 1, i32 noundef %366, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_8_16, i1 noundef zeroext true) #10
  %367 = load i32, ptr @sec, align 4
  tail call fastcc void @test_skcipher_speed(ptr noundef nonnull @.str.40, i32 noundef 0, i32 noundef %367, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_8_16, i1 noundef zeroext true) #10
  %368 = load i32, ptr @sec, align 4
  tail call fastcc void @test_skcipher_speed(ptr noundef nonnull @.str.41, i32 noundef 1, i32 noundef %368, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_8_16, i1 noundef zeroext true) #10
  %369 = load i32, ptr @sec, align 4
  tail call fastcc void @test_skcipher_speed(ptr noundef nonnull @.str.41, i32 noundef 0, i32 noundef %369, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_8_16, i1 noundef zeroext true) #10
  %370 = load i32, ptr @sec, align 4
  tail call fastcc void @test_skcipher_speed(ptr noundef nonnull @.str.42, i32 noundef 1, i32 noundef %370, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_8_16, i1 noundef zeroext true) #10
  %371 = load i32, ptr @sec, align 4
  tail call fastcc void @test_skcipher_speed(ptr noundef nonnull @.str.42, i32 noundef 0, i32 noundef %371, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_8_16, i1 noundef zeroext true) #10
  br label %sw.epilog

sw.bb667:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %372 = load i32, ptr @sec, align 4
  tail call fastcc void @test_skcipher_speed(ptr noundef nonnull @.str.43, i32 noundef 1, i32 noundef %372, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_16_32, i1 noundef zeroext true) #10
  %373 = load i32, ptr @sec, align 4
  tail call fastcc void @test_skcipher_speed(ptr noundef nonnull @.str.43, i32 noundef 0, i32 noundef %373, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_16_32, i1 noundef zeroext true) #10
  %374 = load i32, ptr @sec, align 4
  tail call fastcc void @test_skcipher_speed(ptr noundef nonnull @.str.44, i32 noundef 1, i32 noundef %374, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_16_32, i1 noundef zeroext true) #10
  %375 = load i32, ptr @sec, align 4
  tail call fastcc void @test_skcipher_speed(ptr noundef nonnull @.str.44, i32 noundef 0, i32 noundef %375, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_16_32, i1 noundef zeroext true) #10
  %376 = load i32, ptr @sec, align 4
  tail call fastcc void @test_skcipher_speed(ptr noundef nonnull @.str.45, i32 noundef 1, i32 noundef %376, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_16_32, i1 noundef zeroext true) #10
  %377 = load i32, ptr @sec, align 4
  tail call fastcc void @test_skcipher_speed(ptr noundef nonnull @.str.45, i32 noundef 0, i32 noundef %377, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_16_32, i1 noundef zeroext true) #10
  %378 = load i32, ptr @sec, align 4
  tail call fastcc void @test_skcipher_speed(ptr noundef nonnull @.str.46, i32 noundef 1, i32 noundef %378, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_32_48, i1 noundef zeroext true) #10
  %379 = load i32, ptr @sec, align 4
  tail call fastcc void @test_skcipher_speed(ptr noundef nonnull @.str.46, i32 noundef 0, i32 noundef %379, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_32_48, i1 noundef zeroext true) #10
  %380 = load i32, ptr @sec, align 4
  tail call fastcc void @test_skcipher_speed(ptr noundef nonnull @.str.47, i32 noundef 1, i32 noundef %380, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_32_64, i1 noundef zeroext true) #10
  %381 = load i32, ptr @sec, align 4
  tail call fastcc void @test_skcipher_speed(ptr noundef nonnull @.str.47, i32 noundef 0, i32 noundef %381, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_32_64, i1 noundef zeroext true) #10
  br label %sw.epilog

sw.bb668:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %382 = load i32, ptr @sec, align 4
  tail call fastcc void @test_skcipher_speed(ptr noundef nonnull @.str.61, i32 noundef 1, i32 noundef %382, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_16_32, i1 noundef zeroext true) #10
  %383 = load i32, ptr @sec, align 4
  tail call fastcc void @test_skcipher_speed(ptr noundef nonnull @.str.61, i32 noundef 0, i32 noundef %383, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_16_32, i1 noundef zeroext true) #10
  %384 = load i32, ptr @sec, align 4
  tail call fastcc void @test_skcipher_speed(ptr noundef nonnull @.str.62, i32 noundef 1, i32 noundef %384, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_16_32, i1 noundef zeroext true) #10
  %385 = load i32, ptr @sec, align 4
  tail call fastcc void @test_skcipher_speed(ptr noundef nonnull @.str.62, i32 noundef 0, i32 noundef %385, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_16_32, i1 noundef zeroext true) #10
  %386 = load i32, ptr @sec, align 4
  tail call fastcc void @test_skcipher_speed(ptr noundef nonnull @.str.63, i32 noundef 1, i32 noundef %386, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_16_32, i1 noundef zeroext true) #10
  %387 = load i32, ptr @sec, align 4
  tail call fastcc void @test_skcipher_speed(ptr noundef nonnull @.str.63, i32 noundef 0, i32 noundef %387, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_16_32, i1 noundef zeroext true) #10
  %388 = load i32, ptr @sec, align 4
  tail call fastcc void @test_skcipher_speed(ptr noundef nonnull @.str.64, i32 noundef 1, i32 noundef %388, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_32_48, i1 noundef zeroext true) #10
  %389 = load i32, ptr @sec, align 4
  tail call fastcc void @test_skcipher_speed(ptr noundef nonnull @.str.64, i32 noundef 0, i32 noundef %389, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_32_48, i1 noundef zeroext true) #10
  %390 = load i32, ptr @sec, align 4
  tail call fastcc void @test_skcipher_speed(ptr noundef nonnull @.str.65, i32 noundef 1, i32 noundef %390, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_32_64, i1 noundef zeroext true) #10
  %391 = load i32, ptr @sec, align 4
  tail call fastcc void @test_skcipher_speed(ptr noundef nonnull @.str.65, i32 noundef 0, i32 noundef %391, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_32_64, i1 noundef zeroext true) #10
  br label %sw.epilog

sw.bb669:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %392 = load i32, ptr @sec, align 4
  tail call fastcc void @test_skcipher_speed(ptr noundef nonnull @.str.16, i32 noundef 1, i32 noundef %392, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_8_32, i1 noundef zeroext true) #10
  %393 = load i32, ptr @sec, align 4
  tail call fastcc void @test_skcipher_speed(ptr noundef nonnull @.str.16, i32 noundef 0, i32 noundef %393, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_8_32, i1 noundef zeroext true) #10
  %394 = load i32, ptr @sec, align 4
  tail call fastcc void @test_skcipher_speed(ptr noundef nonnull @.str.17, i32 noundef 1, i32 noundef %394, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_8_32, i1 noundef zeroext true) #10
  %395 = load i32, ptr @sec, align 4
  tail call fastcc void @test_skcipher_speed(ptr noundef nonnull @.str.17, i32 noundef 0, i32 noundef %395, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_8_32, i1 noundef zeroext true) #10
  %396 = load i32, ptr @sec, align 4
  tail call fastcc void @test_skcipher_speed(ptr noundef nonnull @.str.18, i32 noundef 1, i32 noundef %396, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_8_32, i1 noundef zeroext true) #10
  %397 = load i32, ptr @sec, align 4
  tail call fastcc void @test_skcipher_speed(ptr noundef nonnull @.str.18, i32 noundef 0, i32 noundef %397, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_8_32, i1 noundef zeroext true) #10
  br label %sw.epilog

sw.bb670:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %398 = load i32, ptr @sec, align 4
  tail call fastcc void @test_skcipher_speed(ptr noundef nonnull @.str.123, i32 noundef 1, i32 noundef %398, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_16, i1 noundef zeroext true) #10
  %399 = load i32, ptr @sec, align 4
  tail call fastcc void @test_skcipher_speed(ptr noundef nonnull @.str.123, i32 noundef 0, i32 noundef %399, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_16, i1 noundef zeroext true) #10
  %400 = load i32, ptr @sec, align 4
  tail call fastcc void @test_skcipher_speed(ptr noundef nonnull @.str.124, i32 noundef 1, i32 noundef %400, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_16, i1 noundef zeroext true) #10
  %401 = load i32, ptr @sec, align 4
  tail call fastcc void @test_skcipher_speed(ptr noundef nonnull @.str.124, i32 noundef 0, i32 noundef %401, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_16, i1 noundef zeroext true) #10
  %402 = load i32, ptr @sec, align 4
  tail call fastcc void @test_skcipher_speed(ptr noundef nonnull @.str.125, i32 noundef 1, i32 noundef %402, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_16, i1 noundef zeroext true) #10
  %403 = load i32, ptr @sec, align 4
  tail call fastcc void @test_skcipher_speed(ptr noundef nonnull @.str.125, i32 noundef 0, i32 noundef %403, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_16, i1 noundef zeroext true) #10
  %404 = load i32, ptr @sec, align 4
  tail call fastcc void @test_skcipher_speed(ptr noundef nonnull @.str.126, i32 noundef 1, i32 noundef %404, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_16, i1 noundef zeroext true) #10
  %405 = load i32, ptr @sec, align 4
  tail call fastcc void @test_skcipher_speed(ptr noundef nonnull @.str.126, i32 noundef 0, i32 noundef %405, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_16, i1 noundef zeroext true) #10
  br label %sw.epilog

sw.bb671:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %406 = load i32, ptr @sec, align 4
  tail call fastcc void @test_mb_skcipher_speed(ptr noundef nonnull @.str.29, i32 noundef 1, i32 noundef %406, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_16_24_32, i32 noundef %num_mb)
  %407 = load i32, ptr @sec, align 4
  tail call fastcc void @test_mb_skcipher_speed(ptr noundef nonnull @.str.29, i32 noundef 0, i32 noundef %407, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_16_24_32, i32 noundef %num_mb)
  %408 = load i32, ptr @sec, align 4
  tail call fastcc void @test_mb_skcipher_speed(ptr noundef nonnull @.str.30, i32 noundef 1, i32 noundef %408, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_16_24_32, i32 noundef %num_mb)
  %409 = load i32, ptr @sec, align 4
  tail call fastcc void @test_mb_skcipher_speed(ptr noundef nonnull @.str.30, i32 noundef 0, i32 noundef %409, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_16_24_32, i32 noundef %num_mb)
  %410 = load i32, ptr @sec, align 4
  tail call fastcc void @test_mb_skcipher_speed(ptr noundef nonnull @.str.31, i32 noundef 1, i32 noundef %410, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_32_40_48, i32 noundef %num_mb)
  %411 = load i32, ptr @sec, align 4
  tail call fastcc void @test_mb_skcipher_speed(ptr noundef nonnull @.str.31, i32 noundef 0, i32 noundef %411, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_32_40_48, i32 noundef %num_mb)
  %412 = load i32, ptr @sec, align 4
  tail call fastcc void @test_mb_skcipher_speed(ptr noundef nonnull @.str.32, i32 noundef 1, i32 noundef %412, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_32_64, i32 noundef %num_mb)
  %413 = load i32, ptr @sec, align 4
  tail call fastcc void @test_mb_skcipher_speed(ptr noundef nonnull @.str.32, i32 noundef 0, i32 noundef %413, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_32_64, i32 noundef %num_mb)
  %414 = load i32, ptr @sec, align 4
  tail call fastcc void @test_mb_skcipher_speed(ptr noundef nonnull @.str.70, i32 noundef 1, i32 noundef %414, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_16_24_32, i32 noundef %num_mb)
  %415 = load i32, ptr @sec, align 4
  tail call fastcc void @test_mb_skcipher_speed(ptr noundef nonnull @.str.70, i32 noundef 0, i32 noundef %415, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_16_24_32, i32 noundef %num_mb)
  %416 = load i32, ptr @sec, align 4
  tail call fastcc void @test_mb_skcipher_speed(ptr noundef nonnull @.str.33, i32 noundef 1, i32 noundef %416, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_16_24_32, i32 noundef %num_mb)
  %417 = load i32, ptr @sec, align 4
  tail call fastcc void @test_mb_skcipher_speed(ptr noundef nonnull @.str.33, i32 noundef 0, i32 noundef %417, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_16_24_32, i32 noundef %num_mb)
  %418 = load i32, ptr @sec, align 4
  tail call fastcc void @test_mb_skcipher_speed(ptr noundef nonnull @.str.36, i32 noundef 1, i32 noundef %418, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_16_24_32, i32 noundef %num_mb)
  %419 = load i32, ptr @sec, align 4
  tail call fastcc void @test_mb_skcipher_speed(ptr noundef nonnull @.str.36, i32 noundef 0, i32 noundef %419, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_16_24_32, i32 noundef %num_mb)
  %420 = load i32, ptr @sec, align 4
  tail call fastcc void @test_mb_skcipher_speed(ptr noundef nonnull @.str.35, i32 noundef 1, i32 noundef %420, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_16_24_32, i32 noundef %num_mb)
  %421 = load i32, ptr @sec, align 4
  tail call fastcc void @test_mb_skcipher_speed(ptr noundef nonnull @.str.35, i32 noundef 0, i32 noundef %421, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_16_24_32, i32 noundef %num_mb)
  %422 = load i32, ptr @sec, align 4
  tail call fastcc void @test_mb_skcipher_speed(ptr noundef nonnull @.str.34, i32 noundef 1, i32 noundef %422, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_20_28_36, i32 noundef %num_mb)
  %423 = load i32, ptr @sec, align 4
  tail call fastcc void @test_mb_skcipher_speed(ptr noundef nonnull @.str.34, i32 noundef 0, i32 noundef %423, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_20_28_36, i32 noundef %num_mb)
  br label %sw.epilog

sw.bb672:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %424 = load i32, ptr @sec, align 4
  tail call fastcc void @test_mb_skcipher_speed(ptr noundef nonnull @.str.11, i32 noundef 1, i32 noundef %424, ptr noundef nonnull @des3_speed_template, i32 noundef 1, ptr noundef nonnull @speed_template_24, i32 noundef %num_mb)
  %425 = load i32, ptr @sec, align 4
  tail call fastcc void @test_mb_skcipher_speed(ptr noundef nonnull @.str.11, i32 noundef 0, i32 noundef %425, ptr noundef nonnull @des3_speed_template, i32 noundef 1, ptr noundef nonnull @speed_template_24, i32 noundef %num_mb)
  %426 = load i32, ptr @sec, align 4
  tail call fastcc void @test_mb_skcipher_speed(ptr noundef nonnull @.str.12, i32 noundef 1, i32 noundef %426, ptr noundef nonnull @des3_speed_template, i32 noundef 1, ptr noundef nonnull @speed_template_24, i32 noundef %num_mb)
  %427 = load i32, ptr @sec, align 4
  tail call fastcc void @test_mb_skcipher_speed(ptr noundef nonnull @.str.12, i32 noundef 0, i32 noundef %427, ptr noundef nonnull @des3_speed_template, i32 noundef 1, ptr noundef nonnull @speed_template_24, i32 noundef %num_mb)
  %428 = load i32, ptr @sec, align 4
  tail call fastcc void @test_mb_skcipher_speed(ptr noundef nonnull @.str.135, i32 noundef 1, i32 noundef %428, ptr noundef nonnull @des3_speed_template, i32 noundef 1, ptr noundef nonnull @speed_template_24, i32 noundef %num_mb)
  %429 = load i32, ptr @sec, align 4
  tail call fastcc void @test_mb_skcipher_speed(ptr noundef nonnull @.str.135, i32 noundef 0, i32 noundef %429, ptr noundef nonnull @des3_speed_template, i32 noundef 1, ptr noundef nonnull @speed_template_24, i32 noundef %num_mb)
  %430 = load i32, ptr @sec, align 4
  tail call fastcc void @test_mb_skcipher_speed(ptr noundef nonnull @.str.136, i32 noundef 1, i32 noundef %430, ptr noundef nonnull @des3_speed_template, i32 noundef 1, ptr noundef nonnull @speed_template_24, i32 noundef %num_mb)
  %431 = load i32, ptr @sec, align 4
  tail call fastcc void @test_mb_skcipher_speed(ptr noundef nonnull @.str.136, i32 noundef 0, i32 noundef %431, ptr noundef nonnull @des3_speed_template, i32 noundef 1, ptr noundef nonnull @speed_template_24, i32 noundef %num_mb)
  br label %sw.epilog

sw.bb673:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %432 = load i32, ptr @sec, align 4
  tail call fastcc void @test_mb_skcipher_speed(ptr noundef nonnull @.str.8, i32 noundef 1, i32 noundef %432, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_8, i32 noundef %num_mb)
  %433 = load i32, ptr @sec, align 4
  tail call fastcc void @test_mb_skcipher_speed(ptr noundef nonnull @.str.8, i32 noundef 0, i32 noundef %433, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_8, i32 noundef %num_mb)
  %434 = load i32, ptr @sec, align 4
  tail call fastcc void @test_mb_skcipher_speed(ptr noundef nonnull @.str.9, i32 noundef 1, i32 noundef %434, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_8, i32 noundef %num_mb)
  %435 = load i32, ptr @sec, align 4
  tail call fastcc void @test_mb_skcipher_speed(ptr noundef nonnull @.str.9, i32 noundef 0, i32 noundef %435, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_8, i32 noundef %num_mb)
  %436 = load i32, ptr @sec, align 4
  tail call fastcc void @test_mb_skcipher_speed(ptr noundef nonnull @.str.137, i32 noundef 1, i32 noundef %436, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_8, i32 noundef %num_mb)
  %437 = load i32, ptr @sec, align 4
  tail call fastcc void @test_mb_skcipher_speed(ptr noundef nonnull @.str.137, i32 noundef 0, i32 noundef %437, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_8, i32 noundef %num_mb)
  %438 = load i32, ptr @sec, align 4
  tail call fastcc void @test_mb_skcipher_speed(ptr noundef nonnull @.str.138, i32 noundef 1, i32 noundef %438, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_8, i32 noundef %num_mb)
  %439 = load i32, ptr @sec, align 4
  tail call fastcc void @test_mb_skcipher_speed(ptr noundef nonnull @.str.138, i32 noundef 0, i32 noundef %439, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_8, i32 noundef %num_mb)
  br label %sw.epilog

sw.bb674:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %440 = load i32, ptr @sec, align 4
  tail call fastcc void @test_mb_skcipher_speed(ptr noundef nonnull @.str.24, i32 noundef 1, i32 noundef %440, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_16_32, i32 noundef %num_mb)
  %441 = load i32, ptr @sec, align 4
  tail call fastcc void @test_mb_skcipher_speed(ptr noundef nonnull @.str.24, i32 noundef 0, i32 noundef %441, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_16_32, i32 noundef %num_mb)
  %442 = load i32, ptr @sec, align 4
  tail call fastcc void @test_mb_skcipher_speed(ptr noundef nonnull @.str.25, i32 noundef 1, i32 noundef %442, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_16_32, i32 noundef %num_mb)
  %443 = load i32, ptr @sec, align 4
  tail call fastcc void @test_mb_skcipher_speed(ptr noundef nonnull @.str.25, i32 noundef 0, i32 noundef %443, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_16_32, i32 noundef %num_mb)
  %444 = load i32, ptr @sec, align 4
  tail call fastcc void @test_mb_skcipher_speed(ptr noundef nonnull @.str.26, i32 noundef 1, i32 noundef %444, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_16_32, i32 noundef %num_mb)
  %445 = load i32, ptr @sec, align 4
  tail call fastcc void @test_mb_skcipher_speed(ptr noundef nonnull @.str.26, i32 noundef 0, i32 noundef %445, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_16_32, i32 noundef %num_mb)
  %446 = load i32, ptr @sec, align 4
  tail call fastcc void @test_mb_skcipher_speed(ptr noundef nonnull @.str.27, i32 noundef 1, i32 noundef %446, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_32_48, i32 noundef %num_mb)
  %447 = load i32, ptr @sec, align 4
  tail call fastcc void @test_mb_skcipher_speed(ptr noundef nonnull @.str.27, i32 noundef 0, i32 noundef %447, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_32_48, i32 noundef %num_mb)
  %448 = load i32, ptr @sec, align 4
  tail call fastcc void @test_mb_skcipher_speed(ptr noundef nonnull @.str.28, i32 noundef 1, i32 noundef %448, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_32_64, i32 noundef %num_mb)
  %449 = load i32, ptr @sec, align 4
  tail call fastcc void @test_mb_skcipher_speed(ptr noundef nonnull @.str.28, i32 noundef 0, i32 noundef %449, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_32_64, i32 noundef %num_mb)
  br label %sw.epilog

sw.bb675:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %450 = load i32, ptr @sec, align 4
  tail call fastcc void @test_mb_skcipher_speed(ptr noundef nonnull @.str.19, i32 noundef 1, i32 noundef %450, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_16_24_32, i32 noundef %num_mb)
  %451 = load i32, ptr @sec, align 4
  tail call fastcc void @test_mb_skcipher_speed(ptr noundef nonnull @.str.19, i32 noundef 0, i32 noundef %451, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_16_24_32, i32 noundef %num_mb)
  %452 = load i32, ptr @sec, align 4
  tail call fastcc void @test_mb_skcipher_speed(ptr noundef nonnull @.str.20, i32 noundef 1, i32 noundef %452, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_16_24_32, i32 noundef %num_mb)
  %453 = load i32, ptr @sec, align 4
  tail call fastcc void @test_mb_skcipher_speed(ptr noundef nonnull @.str.20, i32 noundef 0, i32 noundef %453, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_16_24_32, i32 noundef %num_mb)
  %454 = load i32, ptr @sec, align 4
  tail call fastcc void @test_mb_skcipher_speed(ptr noundef nonnull @.str.21, i32 noundef 1, i32 noundef %454, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_16_24_32, i32 noundef %num_mb)
  %455 = load i32, ptr @sec, align 4
  tail call fastcc void @test_mb_skcipher_speed(ptr noundef nonnull @.str.21, i32 noundef 0, i32 noundef %455, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_16_24_32, i32 noundef %num_mb)
  %456 = load i32, ptr @sec, align 4
  tail call fastcc void @test_mb_skcipher_speed(ptr noundef nonnull @.str.22, i32 noundef 1, i32 noundef %456, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_32_40_48, i32 noundef %num_mb)
  %457 = load i32, ptr @sec, align 4
  tail call fastcc void @test_mb_skcipher_speed(ptr noundef nonnull @.str.22, i32 noundef 0, i32 noundef %457, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_32_40_48, i32 noundef %num_mb)
  %458 = load i32, ptr @sec, align 4
  tail call fastcc void @test_mb_skcipher_speed(ptr noundef nonnull @.str.23, i32 noundef 1, i32 noundef %458, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_32_48_64, i32 noundef %num_mb)
  %459 = load i32, ptr @sec, align 4
  tail call fastcc void @test_mb_skcipher_speed(ptr noundef nonnull @.str.23, i32 noundef 0, i32 noundef %459, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_32_48_64, i32 noundef %num_mb)
  br label %sw.epilog

sw.bb676:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %460 = load i32, ptr @sec, align 4
  tail call fastcc void @test_mb_skcipher_speed(ptr noundef nonnull @.str.48, i32 noundef 1, i32 noundef %460, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_8, i32 noundef %num_mb)
  br label %sw.epilog

sw.bb677:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %461 = load i32, ptr @sec, align 4
  tail call fastcc void @test_mb_skcipher_speed(ptr noundef nonnull @.str.40, i32 noundef 1, i32 noundef %461, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_8_16, i32 noundef %num_mb)
  %462 = load i32, ptr @sec, align 4
  tail call fastcc void @test_mb_skcipher_speed(ptr noundef nonnull @.str.40, i32 noundef 0, i32 noundef %462, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_8_16, i32 noundef %num_mb)
  %463 = load i32, ptr @sec, align 4
  tail call fastcc void @test_mb_skcipher_speed(ptr noundef nonnull @.str.41, i32 noundef 1, i32 noundef %463, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_8_16, i32 noundef %num_mb)
  %464 = load i32, ptr @sec, align 4
  tail call fastcc void @test_mb_skcipher_speed(ptr noundef nonnull @.str.41, i32 noundef 0, i32 noundef %464, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_8_16, i32 noundef %num_mb)
  %465 = load i32, ptr @sec, align 4
  tail call fastcc void @test_mb_skcipher_speed(ptr noundef nonnull @.str.42, i32 noundef 1, i32 noundef %465, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_8_16, i32 noundef %num_mb)
  %466 = load i32, ptr @sec, align 4
  tail call fastcc void @test_mb_skcipher_speed(ptr noundef nonnull @.str.42, i32 noundef 0, i32 noundef %466, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_8_16, i32 noundef %num_mb)
  br label %sw.epilog

sw.bb678:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %467 = load i32, ptr @sec, align 4
  tail call fastcc void @test_mb_skcipher_speed(ptr noundef nonnull @.str.43, i32 noundef 1, i32 noundef %467, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_16_32, i32 noundef %num_mb)
  %468 = load i32, ptr @sec, align 4
  tail call fastcc void @test_mb_skcipher_speed(ptr noundef nonnull @.str.43, i32 noundef 0, i32 noundef %468, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_16_32, i32 noundef %num_mb)
  %469 = load i32, ptr @sec, align 4
  tail call fastcc void @test_mb_skcipher_speed(ptr noundef nonnull @.str.44, i32 noundef 1, i32 noundef %469, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_16_32, i32 noundef %num_mb)
  %470 = load i32, ptr @sec, align 4
  tail call fastcc void @test_mb_skcipher_speed(ptr noundef nonnull @.str.44, i32 noundef 0, i32 noundef %470, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_16_32, i32 noundef %num_mb)
  %471 = load i32, ptr @sec, align 4
  tail call fastcc void @test_mb_skcipher_speed(ptr noundef nonnull @.str.45, i32 noundef 1, i32 noundef %471, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_16_32, i32 noundef %num_mb)
  %472 = load i32, ptr @sec, align 4
  tail call fastcc void @test_mb_skcipher_speed(ptr noundef nonnull @.str.45, i32 noundef 0, i32 noundef %472, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_16_32, i32 noundef %num_mb)
  %473 = load i32, ptr @sec, align 4
  tail call fastcc void @test_mb_skcipher_speed(ptr noundef nonnull @.str.46, i32 noundef 1, i32 noundef %473, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_32_48, i32 noundef %num_mb)
  %474 = load i32, ptr @sec, align 4
  tail call fastcc void @test_mb_skcipher_speed(ptr noundef nonnull @.str.46, i32 noundef 0, i32 noundef %474, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_32_48, i32 noundef %num_mb)
  %475 = load i32, ptr @sec, align 4
  tail call fastcc void @test_mb_skcipher_speed(ptr noundef nonnull @.str.47, i32 noundef 1, i32 noundef %475, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_32_64, i32 noundef %num_mb)
  %476 = load i32, ptr @sec, align 4
  tail call fastcc void @test_mb_skcipher_speed(ptr noundef nonnull @.str.47, i32 noundef 0, i32 noundef %476, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_32_64, i32 noundef %num_mb)
  br label %sw.epilog

sw.bb679:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %477 = load i32, ptr @sec, align 4
  tail call fastcc void @test_mb_skcipher_speed(ptr noundef nonnull @.str.61, i32 noundef 1, i32 noundef %477, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_16_32, i32 noundef %num_mb)
  %478 = load i32, ptr @sec, align 4
  tail call fastcc void @test_mb_skcipher_speed(ptr noundef nonnull @.str.61, i32 noundef 0, i32 noundef %478, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_16_32, i32 noundef %num_mb)
  %479 = load i32, ptr @sec, align 4
  tail call fastcc void @test_mb_skcipher_speed(ptr noundef nonnull @.str.62, i32 noundef 1, i32 noundef %479, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_16_32, i32 noundef %num_mb)
  %480 = load i32, ptr @sec, align 4
  tail call fastcc void @test_mb_skcipher_speed(ptr noundef nonnull @.str.62, i32 noundef 0, i32 noundef %480, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_16_32, i32 noundef %num_mb)
  %481 = load i32, ptr @sec, align 4
  tail call fastcc void @test_mb_skcipher_speed(ptr noundef nonnull @.str.63, i32 noundef 1, i32 noundef %481, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_16_32, i32 noundef %num_mb)
  %482 = load i32, ptr @sec, align 4
  tail call fastcc void @test_mb_skcipher_speed(ptr noundef nonnull @.str.63, i32 noundef 0, i32 noundef %482, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_16_32, i32 noundef %num_mb)
  %483 = load i32, ptr @sec, align 4
  tail call fastcc void @test_mb_skcipher_speed(ptr noundef nonnull @.str.64, i32 noundef 1, i32 noundef %483, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_32_48, i32 noundef %num_mb)
  %484 = load i32, ptr @sec, align 4
  tail call fastcc void @test_mb_skcipher_speed(ptr noundef nonnull @.str.64, i32 noundef 0, i32 noundef %484, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_32_48, i32 noundef %num_mb)
  %485 = load i32, ptr @sec, align 4
  tail call fastcc void @test_mb_skcipher_speed(ptr noundef nonnull @.str.65, i32 noundef 1, i32 noundef %485, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_32_64, i32 noundef %num_mb)
  %486 = load i32, ptr @sec, align 4
  tail call fastcc void @test_mb_skcipher_speed(ptr noundef nonnull @.str.65, i32 noundef 0, i32 noundef %486, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_32_64, i32 noundef %num_mb)
  br label %sw.epilog

sw.bb680:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %487 = load i32, ptr @sec, align 4
  tail call fastcc void @test_mb_skcipher_speed(ptr noundef nonnull @.str.16, i32 noundef 1, i32 noundef %487, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_8_32, i32 noundef %num_mb)
  %488 = load i32, ptr @sec, align 4
  tail call fastcc void @test_mb_skcipher_speed(ptr noundef nonnull @.str.16, i32 noundef 0, i32 noundef %488, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_8_32, i32 noundef %num_mb)
  %489 = load i32, ptr @sec, align 4
  tail call fastcc void @test_mb_skcipher_speed(ptr noundef nonnull @.str.17, i32 noundef 1, i32 noundef %489, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_8_32, i32 noundef %num_mb)
  %490 = load i32, ptr @sec, align 4
  tail call fastcc void @test_mb_skcipher_speed(ptr noundef nonnull @.str.17, i32 noundef 0, i32 noundef %490, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_8_32, i32 noundef %num_mb)
  %491 = load i32, ptr @sec, align 4
  tail call fastcc void @test_mb_skcipher_speed(ptr noundef nonnull @.str.18, i32 noundef 1, i32 noundef %491, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_8_32, i32 noundef %num_mb)
  %492 = load i32, ptr @sec, align 4
  tail call fastcc void @test_mb_skcipher_speed(ptr noundef nonnull @.str.18, i32 noundef 0, i32 noundef %492, ptr noundef null, i32 noundef 0, ptr noundef nonnull @speed_template_8_32, i32 noundef %num_mb)
  br label %sw.epilog

sw.bb681:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @test_available()
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb681, %sw.bb680, %sw.bb679, %sw.bb678, %sw.bb677, %sw.bb676, %sw.bb675, %sw.bb674, %sw.bb673, %sw.bb672, %sw.bb671, %sw.bb670, %sw.bb669, %sw.bb668, %sw.bb667, %sw.bb666, %sw.bb665, %sw.bb664, %sw.bb663, %sw.bb662, %sw.bb661, %sw.bb660, %sw.bb654, %sw.bb648.sw.epilog_crit_edge, %sw.bb642.sw.epilog_crit_edge, %sw.bb636.sw.epilog_crit_edge, %sw.bb630.sw.epilog_crit_edge, %sw.bb624.sw.epilog_crit_edge, %sw.bb618.sw.epilog_crit_edge, %sw.bb612.sw.epilog_crit_edge, %sw.bb606.sw.epilog_crit_edge, %sw.bb600.sw.epilog_crit_edge, %sw.bb594.sw.epilog_crit_edge, %sw.bb588.sw.epilog_crit_edge, %sw.bb582.sw.epilog_crit_edge, %sw.bb576.sw.epilog_crit_edge, %sw.bb570.sw.epilog_crit_edge, %sw.bb564.sw.epilog_crit_edge, %sw.bb558.sw.epilog_crit_edge, %sw.bb552.sw.epilog_crit_edge, %sw.bb546.sw.epilog_crit_edge, %sw.bb540.sw.epilog_crit_edge, %sw.bb534.sw.epilog_crit_edge, %sw.bb528.sw.epilog_crit_edge, %sw.bb522.sw.epilog_crit_edge, %sw.bb516.sw.epilog_crit_edge, %if.then514, %sw.bb506, %sw.bb500.sw.epilog_crit_edge, %sw.bb494.sw.epilog_crit_edge, %sw.bb488.sw.epilog_crit_edge, %sw.bb482.sw.epilog_crit_edge, %sw.bb476.sw.epilog_crit_edge, %sw.bb470.sw.epilog_crit_edge, %sw.bb464.sw.epilog_crit_edge, %sw.bb458.sw.epilog_crit_edge, %sw.bb452.sw.epilog_crit_edge, %sw.bb446.sw.epilog_crit_edge, %sw.bb440.sw.epilog_crit_edge, %sw.bb434.sw.epilog_crit_edge, %sw.bb428.sw.epilog_crit_edge, %sw.bb422.sw.epilog_crit_edge, %sw.bb416.sw.epilog_crit_edge, %sw.bb410.sw.epilog_crit_edge, %sw.bb404.sw.epilog_crit_edge, %sw.bb398.sw.epilog_crit_edge, %sw.bb392.sw.epilog_crit_edge, %sw.bb386.sw.epilog_crit_edge, %sw.bb380.sw.epilog_crit_edge, %sw.bb374.sw.epilog_crit_edge, %sw.bb368.sw.epilog_crit_edge, %sw.bb363.sw.epilog_crit_edge, %if.then361, %sw.bb358, %sw.bb357, %sw.bb356, %sw.bb355, %sw.bb354, %sw.bb353, %sw.bb352, %sw.bb351, %sw.bb350, %sw.bb349, %sw.bb348, %sw.bb347, %sw.bb346, %sw.bb345, %sw.bb344, %sw.bb343, %sw.bb342, %sw.bb341, %sw.bb340, %sw.bb339, %sw.bb338, %sw.bb337, %sw.bb336, %sw.bb335, %sw.bb334, %sw.bb325, %sw.bb322, %sw.bb319, %sw.bb316, %sw.bb313, %sw.bb310, %sw.bb307, %sw.bb304, %sw.bb301, %sw.bb298, %sw.bb295, %sw.bb292, %sw.bb289, %sw.bb286, %sw.bb283, %sw.bb280, %sw.bb277, %sw.bb274, %sw.bb271, %sw.bb268, %sw.bb265, %sw.bb262, %sw.bb259, %sw.bb256, %sw.bb253, %sw.bb250, %sw.bb247, %sw.bb244, %sw.bb241, %sw.bb238, %sw.bb235, %sw.bb232, %sw.bb229, %sw.bb226, %sw.bb223, %sw.bb220, %sw.bb217, %sw.bb214, %sw.bb211, %sw.bb208, %sw.bb205, %sw.bb202, %sw.bb199, %sw.bb196, %sw.bb193, %sw.bb190, %sw.bb187, %sw.bb184, %sw.bb181, %sw.bb178, %sw.bb175, %sw.bb172, %sw.bb169, %sw.bb166, %sw.bb163, %sw.bb160, %sw.bb157, %sw.bb154, %sw.bb143, %sw.bb140, %sw.bb137, %sw.bb132, %sw.bb129, %sw.bb126, %sw.bb123, %sw.bb120, %sw.bb117, %sw.bb114, %sw.bb111, %sw.bb108, %sw.bb105, %sw.bb94, %sw.bb87, %sw.bb84, %sw.bb81, %sw.bb78, %sw.bb61, %sw.bb50, %sw.bb39, %sw.bb32, %sw.bb29, %sw.bb26, %sw.bb19, %sw.bb12, %sw.bb9, %sw.bb6, %for.body.sw.epilog_crit_edge, %if.then, %entry.sw.epilog_crit_edge
  %ret.1 = phi i32 [ 0, %entry.sw.epilog_crit_edge ], [ 0, %sw.bb679 ], [ 0, %sw.bb678 ], [ 0, %sw.bb677 ], [ 0, %sw.bb676 ], [ 0, %sw.bb675 ], [ 0, %sw.bb674 ], [ 0, %sw.bb673 ], [ 0, %sw.bb672 ], [ 0, %sw.bb671 ], [ 0, %sw.bb670 ], [ 0, %sw.bb669 ], [ 0, %sw.bb668 ], [ 0, %sw.bb667 ], [ 0, %sw.bb666 ], [ 0, %sw.bb665 ], [ 0, %sw.bb664 ], [ 0, %sw.bb663 ], [ 0, %sw.bb662 ], [ 0, %sw.bb661 ], [ 0, %sw.bb660 ], [ 0, %sw.bb680 ], [ 0, %sw.bb654 ], [ 0, %if.then514 ], [ 0, %sw.bb681 ], [ 0, %sw.bb506 ], [ 0, %if.then361 ], [ 0, %sw.bb358 ], [ 0, %sw.bb357 ], [ 0, %sw.bb356 ], [ 0, %sw.bb355 ], [ 0, %sw.bb354 ], [ 0, %sw.bb353 ], [ 0, %sw.bb352 ], [ 0, %sw.bb351 ], [ 0, %sw.bb350 ], [ 0, %sw.bb349 ], [ 0, %sw.bb348 ], [ 0, %sw.bb347 ], [ 0, %sw.bb346 ], [ 0, %sw.bb345 ], [ 0, %sw.bb344 ], [ 0, %sw.bb343 ], [ 0, %sw.bb342 ], [ 0, %sw.bb341 ], [ 0, %sw.bb340 ], [ 0, %sw.bb339 ], [ 0, %sw.bb338 ], [ 0, %sw.bb337 ], [ 0, %sw.bb336 ], [ 0, %sw.bb335 ], [ 0, %sw.bb334 ], [ %add333, %sw.bb325 ], [ %call323, %sw.bb322 ], [ %call320, %sw.bb319 ], [ %call317, %sw.bb316 ], [ %call314, %sw.bb313 ], [ %call311, %sw.bb310 ], [ %call308, %sw.bb307 ], [ %call305, %sw.bb304 ], [ %call302, %sw.bb301 ], [ %call299, %sw.bb298 ], [ %call296, %sw.bb295 ], [ %call293, %sw.bb292 ], [ %call290, %sw.bb289 ], [ %call287, %sw.bb286 ], [ %call284, %sw.bb283 ], [ %call281, %sw.bb280 ], [ %call278, %sw.bb277 ], [ %call275, %sw.bb274 ], [ %call272, %sw.bb271 ], [ %call269, %sw.bb268 ], [ %call266, %sw.bb265 ], [ %call263, %sw.bb262 ], [ %call260, %sw.bb259 ], [ %call257, %sw.bb256 ], [ %call254, %sw.bb253 ], [ %call251, %sw.bb250 ], [ %call248, %sw.bb247 ], [ %call245, %sw.bb244 ], [ %call242, %sw.bb241 ], [ %call239, %sw.bb238 ], [ %call236, %sw.bb235 ], [ %call233, %sw.bb232 ], [ %call230, %sw.bb229 ], [ %call227, %sw.bb226 ], [ %call224, %sw.bb223 ], [ %call221, %sw.bb220 ], [ %call218, %sw.bb217 ], [ %call215, %sw.bb214 ], [ %call212, %sw.bb211 ], [ %call209, %sw.bb208 ], [ %call206, %sw.bb205 ], [ %call203, %sw.bb202 ], [ %call200, %sw.bb199 ], [ %call197, %sw.bb196 ], [ %call194, %sw.bb193 ], [ %call191, %sw.bb190 ], [ %call188, %sw.bb187 ], [ %call185, %sw.bb184 ], [ %call182, %sw.bb181 ], [ %call179, %sw.bb178 ], [ %call176, %sw.bb175 ], [ %call173, %sw.bb172 ], [ %call170, %sw.bb169 ], [ %call167, %sw.bb166 ], [ %call164, %sw.bb163 ], [ %call161, %sw.bb160 ], [ %call158, %sw.bb157 ], [ %call155, %sw.bb154 ], [ %add153, %sw.bb143 ], [ %call141, %sw.bb140 ], [ %call138, %sw.bb137 ], [ %add136, %sw.bb132 ], [ %call130, %sw.bb129 ], [ %call127, %sw.bb126 ], [ %call124, %sw.bb123 ], [ %call121, %sw.bb120 ], [ %call118, %sw.bb117 ], [ %call115, %sw.bb114 ], [ %call112, %sw.bb111 ], [ %call109, %sw.bb108 ], [ %call106, %sw.bb105 ], [ %add104, %sw.bb94 ], [ %add93, %sw.bb87 ], [ %call85, %sw.bb84 ], [ %call82, %sw.bb81 ], [ %call79, %sw.bb78 ], [ %add77, %sw.bb61 ], [ %add60, %sw.bb50 ], [ %add49, %sw.bb39 ], [ %add38, %sw.bb32 ], [ %call30, %sw.bb29 ], [ %call27, %sw.bb26 ], [ %add25, %sw.bb19 ], [ %add18, %sw.bb12 ], [ %call10, %sw.bb9 ], [ %call7, %sw.bb6 ], [ %spec.select, %if.then ], [ 0, %sw.bb363.sw.epilog_crit_edge ], [ 0, %sw.bb368.sw.epilog_crit_edge ], [ 0, %sw.bb374.sw.epilog_crit_edge ], [ 0, %sw.bb380.sw.epilog_crit_edge ], [ 0, %sw.bb386.sw.epilog_crit_edge ], [ 0, %sw.bb392.sw.epilog_crit_edge ], [ 0, %sw.bb398.sw.epilog_crit_edge ], [ 0, %sw.bb404.sw.epilog_crit_edge ], [ 0, %sw.bb410.sw.epilog_crit_edge ], [ 0, %sw.bb416.sw.epilog_crit_edge ], [ 0, %sw.bb422.sw.epilog_crit_edge ], [ 0, %sw.bb428.sw.epilog_crit_edge ], [ 0, %sw.bb434.sw.epilog_crit_edge ], [ 0, %sw.bb440.sw.epilog_crit_edge ], [ 0, %sw.bb446.sw.epilog_crit_edge ], [ 0, %sw.bb452.sw.epilog_crit_edge ], [ 0, %sw.bb458.sw.epilog_crit_edge ], [ 0, %sw.bb464.sw.epilog_crit_edge ], [ 0, %sw.bb470.sw.epilog_crit_edge ], [ 0, %sw.bb476.sw.epilog_crit_edge ], [ 0, %sw.bb482.sw.epilog_crit_edge ], [ 0, %sw.bb488.sw.epilog_crit_edge ], [ 0, %sw.bb494.sw.epilog_crit_edge ], [ 0, %sw.bb500.sw.epilog_crit_edge ], [ 0, %sw.bb516.sw.epilog_crit_edge ], [ 0, %sw.bb522.sw.epilog_crit_edge ], [ 0, %sw.bb528.sw.epilog_crit_edge ], [ 0, %sw.bb534.sw.epilog_crit_edge ], [ 0, %sw.bb540.sw.epilog_crit_edge ], [ 0, %sw.bb546.sw.epilog_crit_edge ], [ 0, %sw.bb552.sw.epilog_crit_edge ], [ 0, %sw.bb558.sw.epilog_crit_edge ], [ 0, %sw.bb564.sw.epilog_crit_edge ], [ 0, %sw.bb570.sw.epilog_crit_edge ], [ 0, %sw.bb576.sw.epilog_crit_edge ], [ 0, %sw.bb582.sw.epilog_crit_edge ], [ 0, %sw.bb588.sw.epilog_crit_edge ], [ 0, %sw.bb594.sw.epilog_crit_edge ], [ 0, %sw.bb600.sw.epilog_crit_edge ], [ 0, %sw.bb606.sw.epilog_crit_edge ], [ 0, %sw.bb612.sw.epilog_crit_edge ], [ 0, %sw.bb618.sw.epilog_crit_edge ], [ 0, %sw.bb624.sw.epilog_crit_edge ], [ 0, %sw.bb630.sw.epilog_crit_edge ], [ 0, %sw.bb636.sw.epilog_crit_edge ], [ 0, %sw.bb642.sw.epilog_crit_edge ], [ 0, %sw.bb648.sw.epilog_crit_edge ], [ %add, %for.body.sw.epilog_crit_edge ]
  ret i32 %ret.1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_has_alg(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tcrypt_test(ptr noundef %alg) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tcrypt_test.__UNIQUE_ID_ddebug230, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tcrypt_test, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !700

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tcrypt_test.__UNIQUE_ID_ddebug230, ptr noundef nonnull @.str.141, ptr noundef %alg) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call3 = tail call i32 @alg_test(ptr noundef %alg, ptr noundef %alg, i32 noundef 0, i32 noundef 0) #10
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @test_aead_speed(ptr noundef %algo, i32 noundef %enc, i32 noundef %secs, i32 noundef %aad_size, ptr nocapture noundef readonly %keysize) unnamed_addr #4 align 64 {
entry:
  %xbuf = alloca [8 x ptr], align 4
  %xoutbuf = alloca [8 x ptr], align 4
  %axbuf = alloca [8 x ptr], align 4
  %wait = alloca %struct.crypto_wait, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %xbuf) #10
  %0 = getelementptr inbounds [8 x ptr], ptr %xbuf, i32 0, i32 1
  %1 = getelementptr inbounds [8 x ptr], ptr %xbuf, i32 0, i32 2
  %2 = getelementptr inbounds [8 x ptr], ptr %xbuf, i32 0, i32 3
  %3 = getelementptr inbounds [8 x ptr], ptr %xbuf, i32 0, i32 4
  %4 = getelementptr inbounds [8 x ptr], ptr %xbuf, i32 0, i32 5
  %5 = getelementptr inbounds [8 x ptr], ptr %xbuf, i32 0, i32 6
  %6 = getelementptr inbounds [8 x ptr], ptr %xbuf, i32 0, i32 7
  %7 = call ptr @memset(ptr %xbuf, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %xoutbuf) #10
  %8 = getelementptr inbounds [8 x ptr], ptr %xoutbuf, i32 0, i32 1
  %9 = getelementptr inbounds [8 x ptr], ptr %xoutbuf, i32 0, i32 2
  %10 = getelementptr inbounds [8 x ptr], ptr %xoutbuf, i32 0, i32 3
  %11 = getelementptr inbounds [8 x ptr], ptr %xoutbuf, i32 0, i32 4
  %12 = getelementptr inbounds [8 x ptr], ptr %xoutbuf, i32 0, i32 5
  %13 = getelementptr inbounds [8 x ptr], ptr %xoutbuf, i32 0, i32 6
  %14 = getelementptr inbounds [8 x ptr], ptr %xoutbuf, i32 0, i32 7
  %15 = call ptr @memset(ptr %xoutbuf, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %axbuf) #10
  %16 = getelementptr inbounds [8 x ptr], ptr %axbuf, i32 0, i32 1
  %17 = getelementptr inbounds [8 x ptr], ptr %axbuf, i32 0, i32 2
  %18 = getelementptr inbounds [8 x ptr], ptr %axbuf, i32 0, i32 3
  %19 = getelementptr inbounds [8 x ptr], ptr %axbuf, i32 0, i32 4
  %20 = getelementptr inbounds [8 x ptr], ptr %axbuf, i32 0, i32 5
  %21 = getelementptr inbounds [8 x ptr], ptr %axbuf, i32 0, i32 6
  %22 = getelementptr inbounds [8 x ptr], ptr %axbuf, i32 0, i32 7
  %23 = call ptr @memset(ptr %axbuf, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %wait) #10
  %24 = call ptr @memset(ptr %wait, i32 255, i32 60)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %25 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %25, i32 noundef 3520, i32 noundef 32) #14
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup168_crit_edge, label %if.end3

entry.cleanup168_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup168

if.end3:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %enc)
  %cmp4 = icmp eq i32 %enc, 1
  %.str.142..str.143 = select i1 %cmp4, ptr @.str.142, ptr @.str.143
  %call7 = call fastcc i32 @testmgr_alloc_buf(ptr noundef nonnull %xbuf)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.end3.out_noxbuf_crit_edge

if.end3.out_noxbuf_crit_edge:                     ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_noxbuf

if.end10:                                         ; preds = %if.end3
  %call12 = call fastcc i32 @testmgr_alloc_buf(ptr noundef nonnull %axbuf)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.end10.out_noaxbuf_crit_edge

if.end10.out_noaxbuf_crit_edge:                   ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_noaxbuf

if.end15:                                         ; preds = %if.end10
  %call17 = call fastcc i32 @testmgr_alloc_buf(ptr noundef nonnull %xoutbuf)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %if.end15.out_nooutbuf_crit_edge

if.end15.out_nooutbuf_crit_edge:                  ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_nooutbuf

if.end20:                                         ; preds = %if.end15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %26 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %26, i32 noundef 3264, i32 noundef 360) #14
  %tobool22.not = icmp eq ptr %call7.i, null
  br i1 %tobool22.not, label %if.end20.out_nosg_crit_edge, label %if.end24

if.end20.out_nosg_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_nosg

if.end24:                                         ; preds = %if.end20
  %arrayidx = getelementptr %struct.scatterlist, ptr %call7.i, i32 9
  %call25 = tail call ptr @crypto_alloc_aead(ptr noundef %algo, i32 noundef 0, i32 noundef 0) #10
  %cmp.i = icmp ugt ptr %call25, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end30, label %if.end34

do.end30:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  %27 = ptrtoint ptr %call25 to i32
  %call33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.175, ptr noundef %algo, i32 noundef %27) #13
  br label %out_notfm

if.end34:                                         ; preds = %if.end24
  %call35 = tail call i32 @crypto_aead_setauthsize(ptr noundef %call25, i32 noundef 16) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end43, label %do.end40

do.end40:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  %call42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.178, ptr noundef %algo, i32 noundef %call35) #13
  br label %out_noreq

if.end43:                                         ; preds = %if.end34
  %28 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %wait, align 4
  %wait.i.i = getelementptr inbounds %struct.completion, ptr %wait, i32 0, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i.i, ptr noundef nonnull @.str.166, ptr noundef nonnull @init_completion.__key) #10
  %base.i = getelementptr inbounds %struct.crypto_aead, ptr %call25, i32 0, i32 3
  %__crt_alg.i = getelementptr inbounds %struct.crypto_aead, ptr %call25, i32 0, i32 3, i32 3
  %29 = ptrtoint ptr %__crt_alg.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %__crt_alg.i, align 4
  %cra_driver_name.i = getelementptr inbounds %struct.crypto_alg, ptr %30, i32 0, i32 9
  %call50 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.181, ptr noundef %algo, ptr noundef %cra_driver_name.i, ptr noundef nonnull %.str.142..str.143) #13
  %reqsize.i.i = getelementptr inbounds %struct.crypto_aead, ptr %call25, i32 0, i32 1
  %31 = ptrtoint ptr %reqsize.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %reqsize.i.i, align 4
  %add.i = add i32 %32, 128
  %call9.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add.i, i32 noundef 3264) #15
  %tobool.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not.i, label %do.end56, label %if.end59, !prof !701

do.end56:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #12
  %call58 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.184, ptr noundef %algo) #13
  br label %out_noreq

if.end59:                                         ; preds = %if.end43
  %tfm1.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %call9.i.i, i32 0, i32 3
  %33 = ptrtoint ptr %tfm1.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %base.i, ptr %tfm1.i.i, align 16
  %complete.i = getelementptr inbounds %struct.crypto_async_request, ptr %call9.i.i, i32 0, i32 1
  %34 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @crypto_req_done, ptr %complete.i, align 8
  %data2.i = getelementptr inbounds %struct.crypto_async_request, ptr %call9.i.i, i32 0, i32 2
  %35 = ptrtoint ptr %data2.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %wait, ptr %data2.i, align 4
  %flags4.i = getelementptr inbounds %struct.crypto_async_request, ptr %call9.i.i, i32 0, i32 4
  %36 = ptrtoint ptr %flags4.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 1024, ptr %flags4.i, align 4
  %37 = ptrtoint ptr %axbuf to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %axbuf, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enc)
  %tobool110.not = icmp eq i32 %enc, 0
  %spec.select = select i1 %tobool110.not, i32 16, i32 0
  %cond119 = select i1 %tobool110.not, i32 0, i32 16
  %assoclen1.i = getelementptr inbounds %struct.aead_request, ptr %call9.i.i, i32 0, i32 1
  %src1.i = getelementptr inbounds %struct.aead_request, ptr %call9.i.i, i32 0, i32 4
  %dst2.i = getelementptr inbounds %struct.aead_request, ptr %call9.i.i, i32 0, i32 5
  %cryptlen3.i = getelementptr inbounds %struct.aead_request, ptr %call9.i.i, i32 0, i32 2
  %iv4.i = getelementptr inbounds %struct.aead_request, ptr %call9.i.i, i32 0, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %secs)
  %tobool141.not = icmp eq i32 %secs, 0
  br label %do.body60

do.body60:                                        ; preds = %do.end160.do.body60_crit_edge, %if.end59
  %i.0 = phi i32 [ 0, %if.end59 ], [ %i.230, %do.end160.do.body60_crit_edge ]
  %keysize.addr.0 = phi ptr [ %keysize, %if.end59 ], [ %incdec.ptr161, %do.end160.do.body60_crit_edge ]
  %39 = add i32 %i.0, 8
  br label %do.body61

do.body61:                                        ; preds = %do.cond158.do.body61_crit_edge, %do.body60
  %b_size.0 = phi ptr [ @aead_sizes, %do.body60 ], [ %incdec.ptr, %do.cond158.do.body61_crit_edge ]
  %i.1 = phi i32 [ %i.0, %do.body60 ], [ %inc157, %do.cond158.do.body61_crit_edge ]
  %40 = ptrtoint ptr %b_size.0 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %b_size.0, align 4
  %sub = add i32 %41, -1
  %42 = ptrtoint ptr %__crt_alg.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %__crt_alg.i, align 4
  %cra_blocksize.i.i = getelementptr inbounds %struct.crypto_alg, ptr %43, i32 0, i32 3
  %44 = ptrtoint ptr %cra_blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %cra_blocksize.i.i, align 4
  %sub63 = add i32 %45, -1
  %or = or i32 %sub63, %sub
  %add = add i32 %or, 1
  %46 = call ptr @memset(ptr %38, i32 255, i32 %aad_size)
  %47 = ptrtoint ptr %keysize.addr.0 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %keysize.addr.0, align 1
  %conv65 = zext i8 %48 to i32
  %add66 = add i32 %add, %conv65
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %add66)
  %cmp67 = icmp ugt i32 %add66, 16384
  br i1 %cmp67, label %do.end72, label %if.end77

do.end72:                                         ; preds = %do.body61
  call void @__sanitizer_cov_trace_pc() #12
  %call76 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.155, i32 noundef %add66, i32 noundef 16384) #13
  br label %out

if.end77:                                         ; preds = %do.body61
  %49 = load ptr, ptr @tvmem, align 4
  %call89 = call i32 @crypto_aead_setkey(ptr noundef %call25, ptr noundef %49, i32 noundef %conv65) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call89)
  %tobool90.not = icmp eq i32 %call89, 0
  br i1 %tobool90.not, label %if.end98, label %do.end94

do.end94:                                         ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #12
  %50 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %base.i, align 128
  %call97 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.189, i32 noundef %51, i32 noundef %call89) #13
  br label %out

if.end98:                                         ; preds = %if.end77
  %52 = ptrtoint ptr %__crt_alg.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %__crt_alg.i, align 4
  %ivsize.i.i = getelementptr i8, ptr %53, i32 -104
  %54 = ptrtoint ptr %ivsize.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %ivsize.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool100.not = icmp eq i32 %55, 0
  br i1 %tobool100.not, label %if.end98.if.end102_crit_edge, label %if.then101

if.end98.if.end102_crit_edge:                     ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end102

if.then101:                                       ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #12
  %56 = call ptr @memset(ptr %call7.i.i, i32 255, i32 %55)
  br label %if.end102

if.end102:                                        ; preds = %if.then101, %if.end98.if.end102_crit_edge
  %57 = ptrtoint ptr %base.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 0, ptr %base.i, align 128
  %58 = ptrtoint ptr %keysize.addr.0 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %keysize.addr.0, align 1
  %conv107 = zext i8 %59 to i32
  %mul = shl nuw nsw i32 %conv107, 3
  %call108 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.192, i32 noundef %i.1, i32 noundef %mul, i32 noundef %add) #13
  %60 = load ptr, ptr @tvmem, align 4
  %61 = call ptr @memset(ptr %60, i32 255, i32 4096)
  %add112 = add i32 %add, %spec.select
  call fastcc void @sg_init_aead(ptr noundef nonnull %call7.i, ptr noundef nonnull %xbuf, i32 noundef %add112, ptr noundef %38, i32 noundef %aad_size)
  %add120 = add i32 %add, %cond119
  call fastcc void @sg_init_aead(ptr noundef %arrayidx, ptr noundef nonnull %xoutbuf, i32 noundef %add120, ptr noundef %38, i32 noundef %aad_size)
  %62 = ptrtoint ptr %assoclen1.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %aad_size, ptr %assoclen1.i, align 8
  br i1 %tobool110.not, label %if.then122, label %if.end102.if.end133_crit_edge

if.end102.if.end133_crit_edge:                    ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end133

if.then122:                                       ; preds = %if.end102
  %63 = ptrtoint ptr %src1.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %arrayidx, ptr %src1.i, align 4
  %64 = ptrtoint ptr %dst2.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %call7.i, ptr %dst2.i, align 8
  %65 = ptrtoint ptr %cryptlen3.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %add, ptr %cryptlen3.i, align 4
  %66 = ptrtoint ptr %iv4.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %call7.i.i, ptr %iv4.i, align 32
  %call123 = call i32 @crypto_aead_encrypt(ptr noundef nonnull %call9.i.i) #10
  %67 = zext i32 %call123 to i64
  call void @__sanitizer_cov_trace_switch(i64 %67, ptr @__sancov_gen_cov_switch_values.309)
  switch i32 %call123, label %if.then122.do_one_aead_op.exit_crit_edge [
    i32 -115, label %if.then122.sw.bb.i.i_crit_edge
    i32 -16, label %if.then122.sw.bb.i.i_crit_edge108
  ]

if.then122.sw.bb.i.i_crit_edge108:                ; preds = %if.then122
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i.i

if.then122.sw.bb.i.i_crit_edge:                   ; preds = %if.then122
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i.i

if.then122.do_one_aead_op.exit_crit_edge:         ; preds = %if.then122
  call void @__sanitizer_cov_trace_pc() #12
  br label %do_one_aead_op.exit

sw.bb.i.i:                                        ; preds = %if.then122.sw.bb.i.i_crit_edge, %if.then122.sw.bb.i.i_crit_edge108
  %68 = ptrtoint ptr %data2.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %data2.i, align 4
  call void @wait_for_completion(ptr noundef %69) #10
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 0, ptr %69, align 4
  %err2.i.i = getelementptr inbounds %struct.crypto_wait, ptr %69, i32 0, i32 1
  %71 = ptrtoint ptr %err2.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %err2.i.i, align 4
  br label %do_one_aead_op.exit

do_one_aead_op.exit:                              ; preds = %sw.bb.i.i, %if.then122.do_one_aead_op.exit_crit_edge
  %err.addr.0.i.i = phi i32 [ %call123, %if.then122.do_one_aead_op.exit_crit_edge ], [ %72, %sw.bb.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.addr.0.i.i)
  %tobool125.not = icmp eq i32 %err.addr.0.i.i, 0
  br i1 %tobool125.not, label %do_one_aead_op.exit.if.end133_crit_edge, label %do.end129

do_one_aead_op.exit.if.end133_crit_edge:          ; preds = %do_one_aead_op.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end133

do.end129:                                        ; preds = %do_one_aead_op.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call131 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.195, i32 noundef %err.addr.0.i.i) #13
  br label %do.end160

if.end133:                                        ; preds = %do_one_aead_op.exit.if.end133_crit_edge, %if.end102.if.end133_crit_edge
  %73 = ptrtoint ptr %src1.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %call7.i, ptr %src1.i, align 4
  %74 = ptrtoint ptr %dst2.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %arrayidx, ptr %dst2.i, align 8
  %75 = ptrtoint ptr %cryptlen3.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %add112, ptr %cryptlen3.i, align 4
  %76 = ptrtoint ptr %iv4.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %call7.i.i, ptr %iv4.i, align 32
  br i1 %tobool141.not, label %if.else146, label %if.then142

if.then142:                                       ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #12
  %call143 = call fastcc i32 @test_aead_jiffies(ptr noundef nonnull %call9.i.i, i32 noundef %enc, i32 noundef %add, i32 noundef %secs)
  call void @__might_resched(ptr noundef nonnull @.str.2, i32 noundef 678, i32 noundef 0) #10
  %call.i = call i32 @__cond_resched() #10
  br label %if.end148

if.else146:                                       ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #12
  %call147 = call fastcc i32 @test_aead_cycles(ptr noundef nonnull %call9.i.i, i32 noundef %enc, i32 noundef %add)
  br label %if.end148

if.end148:                                        ; preds = %if.else146, %if.then142
  %ret.0 = phi i32 [ %call143, %if.then142 ], [ %call147, %if.else146 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool149.not = icmp eq i32 %ret.0, 0
  br i1 %tobool149.not, label %do.cond158, label %do.end153

do.end153:                                        ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #12
  %call155 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.198, ptr noundef nonnull %.str.142..str.143, i32 noundef %ret.0) #13
  br label %do.end160

do.cond158:                                       ; preds = %if.end148
  %incdec.ptr = getelementptr i32, ptr %b_size.0, i32 1
  %inc157 = add i32 %i.1, 1
  %exitcond = icmp eq i32 %inc157, %39
  br i1 %exitcond, label %do.cond158.do.end160_crit_edge, label %do.cond158.do.body61_crit_edge

do.cond158.do.body61_crit_edge:                   ; preds = %do.cond158
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body61

do.cond158.do.end160_crit_edge:                   ; preds = %do.cond158
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end160

do.end160:                                        ; preds = %do.cond158.do.end160_crit_edge, %do.end153, %do.end129
  %i.230 = phi i32 [ %i.1, %do.end153 ], [ %i.1, %do.end129 ], [ %39, %do.cond158.do.end160_crit_edge ]
  %incdec.ptr161 = getelementptr i8, ptr %keysize.addr.0, i32 1
  %77 = ptrtoint ptr %incdec.ptr161 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %incdec.ptr161, align 1
  %tobool163.not = icmp eq i8 %78, 0
  br i1 %tobool163.not, label %do.end160.out_crit_edge, label %do.end160.do.body60_crit_edge

do.end160.do.body60_crit_edge:                    ; preds = %do.end160
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body60

do.end160.out_crit_edge:                          ; preds = %do.end160
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

out:                                              ; preds = %do.end160.out_crit_edge, %do.end94, %do.end72
  call void @kfree_sensitive(ptr noundef nonnull %call9.i.i) #10
  br label %out_noreq

out_noreq:                                        ; preds = %out, %do.end56, %do.end40
  %base.i.i9 = getelementptr inbounds %struct.crypto_aead, ptr %call25, i32 0, i32 3
  call void @crypto_destroy_tfm(ptr noundef %call25, ptr noundef %base.i.i9) #10
  br label %out_notfm

out_notfm:                                        ; preds = %out_noreq, %do.end30
  call void @kfree(ptr noundef nonnull %call7.i) #10
  br label %out_nosg

out_nosg:                                         ; preds = %out_notfm, %if.end20.out_nosg_crit_edge
  %79 = ptrtoint ptr %xoutbuf to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %xoutbuf, align 4
  %81 = ptrtoint ptr %80 to i32
  call void @free_pages(i32 noundef %81, i32 noundef 0) #10
  %82 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %8, align 4
  %84 = ptrtoint ptr %83 to i32
  call void @free_pages(i32 noundef %84, i32 noundef 0) #10
  %85 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %9, align 4
  %87 = ptrtoint ptr %86 to i32
  call void @free_pages(i32 noundef %87, i32 noundef 0) #10
  %88 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %10, align 4
  %90 = ptrtoint ptr %89 to i32
  call void @free_pages(i32 noundef %90, i32 noundef 0) #10
  %91 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %11, align 4
  %93 = ptrtoint ptr %92 to i32
  call void @free_pages(i32 noundef %93, i32 noundef 0) #10
  %94 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %12, align 4
  %96 = ptrtoint ptr %95 to i32
  call void @free_pages(i32 noundef %96, i32 noundef 0) #10
  %97 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %13, align 4
  %99 = ptrtoint ptr %98 to i32
  call void @free_pages(i32 noundef %99, i32 noundef 0) #10
  %100 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %14, align 4
  %102 = ptrtoint ptr %101 to i32
  call void @free_pages(i32 noundef %102, i32 noundef 0) #10
  br label %out_nooutbuf

out_nooutbuf:                                     ; preds = %out_nosg, %if.end15.out_nooutbuf_crit_edge
  %103 = ptrtoint ptr %axbuf to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %axbuf, align 4
  %105 = ptrtoint ptr %104 to i32
  call void @free_pages(i32 noundef %105, i32 noundef 0) #10
  %106 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %16, align 4
  %108 = ptrtoint ptr %107 to i32
  call void @free_pages(i32 noundef %108, i32 noundef 0) #10
  %109 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %17, align 4
  %111 = ptrtoint ptr %110 to i32
  call void @free_pages(i32 noundef %111, i32 noundef 0) #10
  %112 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %18, align 4
  %114 = ptrtoint ptr %113 to i32
  call void @free_pages(i32 noundef %114, i32 noundef 0) #10
  %115 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %19, align 4
  %117 = ptrtoint ptr %116 to i32
  call void @free_pages(i32 noundef %117, i32 noundef 0) #10
  %118 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %20, align 4
  %120 = ptrtoint ptr %119 to i32
  call void @free_pages(i32 noundef %120, i32 noundef 0) #10
  %121 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %21, align 4
  %123 = ptrtoint ptr %122 to i32
  call void @free_pages(i32 noundef %123, i32 noundef 0) #10
  %124 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %22, align 4
  %126 = ptrtoint ptr %125 to i32
  call void @free_pages(i32 noundef %126, i32 noundef 0) #10
  br label %out_noaxbuf

out_noaxbuf:                                      ; preds = %out_nooutbuf, %if.end10.out_noaxbuf_crit_edge
  %127 = ptrtoint ptr %xbuf to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %xbuf, align 4
  %129 = ptrtoint ptr %128 to i32
  call void @free_pages(i32 noundef %129, i32 noundef 0) #10
  %130 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %0, align 4
  %132 = ptrtoint ptr %131 to i32
  call void @free_pages(i32 noundef %132, i32 noundef 0) #10
  %133 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %1, align 4
  %135 = ptrtoint ptr %134 to i32
  call void @free_pages(i32 noundef %135, i32 noundef 0) #10
  %136 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %2, align 4
  %138 = ptrtoint ptr %137 to i32
  call void @free_pages(i32 noundef %138, i32 noundef 0) #10
  %139 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %3, align 4
  %141 = ptrtoint ptr %140 to i32
  call void @free_pages(i32 noundef %141, i32 noundef 0) #10
  %142 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %4, align 4
  %144 = ptrtoint ptr %143 to i32
  call void @free_pages(i32 noundef %144, i32 noundef 0) #10
  %145 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %5, align 4
  %147 = ptrtoint ptr %146 to i32
  call void @free_pages(i32 noundef %147, i32 noundef 0) #10
  %148 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %6, align 4
  %150 = ptrtoint ptr %149 to i32
  call void @free_pages(i32 noundef %150, i32 noundef 0) #10
  br label %out_noxbuf

out_noxbuf:                                       ; preds = %out_noaxbuf, %if.end3.out_noxbuf_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %cleanup168

cleanup168:                                       ; preds = %out_noxbuf, %entry.cleanup168_crit_edge
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %wait) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %axbuf) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %xoutbuf) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %xbuf) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @test_mb_aead_speed(ptr noundef %algo, i32 noundef %enc, i32 noundef %secs, i32 noundef %aad_size, ptr nocapture noundef readonly %keysize, i32 noundef %num_mb) unnamed_addr #4 align 64 {
entry:
  %c.i = alloca i32, align 4
  %c11.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 32) #14
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup305_crit_edge, label %if.end3

entry.cleanup305_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup305

if.end3:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %enc)
  %cmp4 = icmp eq i32 %enc, 1
  %.str.142..str.143 = select i1 %cmp4, ptr @.str.142, ptr @.str.143
  %1 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %num_mb, i32 480) #10
  %2 = extractvalue { i32, i1 } %1, 1
  br i1 %2, label %if.end3.out_free_iv_crit_edge, label %if.end7.i.i, !prof !701

if.end3.out_free_iv_crit_edge:                    ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_free_iv

if.end7.i.i:                                      ; preds = %if.end3
  %3 = extractvalue { i32, i1 } %1, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %3, i32 noundef 3520) #15
  %tobool8.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool8.not, label %if.end7.i.i.out_free_iv_crit_edge, label %if.end10

if.end7.i.i.out_free_iv_crit_edge:                ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_free_iv

if.end10:                                         ; preds = %if.end7.i.i
  %call11 = tail call ptr @crypto_alloc_aead(ptr noundef %algo, i32 noundef 0, i32 noundef 0) #10
  %cmp.i = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end16, label %if.end20

do.end16:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %call11 to i32
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.144, ptr noundef %algo, i32 noundef %4) #13
  br label %out_free_data

if.end20:                                         ; preds = %if.end10
  %call21 = tail call i32 @crypto_aead_setauthsize(ptr noundef %call11, i32 noundef 16) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %for.cond.preheader, label %do.end26

for.cond.preheader:                               ; preds = %if.end20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_mb)
  %cmp30143.not = icmp eq i32 %num_mb, 0
  br i1 %cmp30143.not, label %for.cond.preheader.do.end122_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.do.end122_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end122

do.end26:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  %call28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.178, ptr noundef %algo, i32 noundef %call21) #13
  br label %out_free_tfm

for.cond40.preheader:                             ; preds = %for.inc
  br i1 %cmp30143.not, label %for.cond40.preheader.do.end122_crit_edge, label %for.cond40.preheader.for.body43_crit_edge

for.cond40.preheader.for.body43_crit_edge:        ; preds = %for.cond40.preheader
  br label %for.body43

for.cond40.preheader.do.end122_crit_edge:         ; preds = %for.cond40.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end122

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0144 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %xbuf = getelementptr %struct.test_mb_aead_data, ptr %call8.i.i, i32 %i.0144, i32 4
  %call32 = tail call fastcc i32 @testmgr_alloc_buf(ptr noundef %xbuf)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %for.inc, label %while.cond.preheader

while.cond.preheader:                             ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0144)
  %tobool35.not170 = icmp eq i32 %i.0144, 0
  br i1 %tobool35.not170, label %while.cond.preheader.out_free_tfm_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.out_free_tfm_crit_edge:      ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_free_tfm

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %i.1171 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ %i.0144, %while.cond.preheader.while.body_crit_edge ]
  %dec = add i32 %i.1171, -1
  %xbuf37 = getelementptr %struct.test_mb_aead_data, ptr %call8.i.i, i32 %dec, i32 4
  %5 = ptrtoint ptr %xbuf37 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %xbuf37, align 32
  %7 = ptrtoint ptr %6 to i32
  tail call void @free_pages(i32 noundef %7, i32 noundef 0) #10
  %arrayidx.1.i = getelementptr ptr, ptr %xbuf37, i32 1
  %8 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.1.i, align 4
  %10 = ptrtoint ptr %9 to i32
  tail call void @free_pages(i32 noundef %10, i32 noundef 0) #10
  %arrayidx.2.i = getelementptr ptr, ptr %xbuf37, i32 2
  %11 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx.2.i, align 8
  %13 = ptrtoint ptr %12 to i32
  tail call void @free_pages(i32 noundef %13, i32 noundef 0) #10
  %arrayidx.3.i = getelementptr ptr, ptr %xbuf37, i32 3
  %14 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.3.i, align 4
  %16 = ptrtoint ptr %15 to i32
  tail call void @free_pages(i32 noundef %16, i32 noundef 0) #10
  %arrayidx.4.i = getelementptr ptr, ptr %xbuf37, i32 4
  %17 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx.4.i, align 16
  %19 = ptrtoint ptr %18 to i32
  tail call void @free_pages(i32 noundef %19, i32 noundef 0) #10
  %arrayidx.5.i = getelementptr ptr, ptr %xbuf37, i32 5
  %20 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.5.i, align 4
  %22 = ptrtoint ptr %21 to i32
  tail call void @free_pages(i32 noundef %22, i32 noundef 0) #10
  %arrayidx.6.i = getelementptr ptr, ptr %xbuf37, i32 6
  %23 = ptrtoint ptr %arrayidx.6.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx.6.i, align 8
  %25 = ptrtoint ptr %24 to i32
  tail call void @free_pages(i32 noundef %25, i32 noundef 0) #10
  %arrayidx.7.i = getelementptr ptr, ptr %xbuf37, i32 7
  %26 = ptrtoint ptr %arrayidx.7.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx.7.i, align 4
  %28 = ptrtoint ptr %27 to i32
  tail call void @free_pages(i32 noundef %28, i32 noundef 0) #10
  %tobool35.not = icmp eq i32 %dec, 0
  br i1 %tobool35.not, label %while.body.out_free_tfm_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.body.out_free_tfm_crit_edge:                ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_free_tfm

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.0144, 1
  %exitcond.not = icmp eq i32 %inc, %num_mb
  br i1 %exitcond.not, label %for.cond40.preheader, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.cond61.preheader:                             ; preds = %for.inc58
  br i1 %cmp30143.not, label %for.cond61.preheader.do.end122_crit_edge, label %for.cond61.preheader.for.body64_crit_edge

for.cond61.preheader.for.body64_crit_edge:        ; preds = %for.cond61.preheader
  br label %for.body64

for.cond61.preheader.do.end122_crit_edge:         ; preds = %for.cond61.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end122

for.body43:                                       ; preds = %for.inc58.for.body43_crit_edge, %for.cond40.preheader.for.body43_crit_edge
  %i.2146 = phi i32 [ %inc59, %for.inc58.for.body43_crit_edge ], [ 0, %for.cond40.preheader.for.body43_crit_edge ]
  %axbuf = getelementptr %struct.test_mb_aead_data, ptr %call8.i.i, i32 %i.2146, i32 6
  %call46 = tail call fastcc i32 @testmgr_alloc_buf(ptr noundef %axbuf)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %for.inc58, label %while.cond49.preheader

while.cond49.preheader:                           ; preds = %for.body43
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.2146)
  %tobool51.not166 = icmp eq i32 %i.2146, 0
  br i1 %tobool51.not166, label %while.cond49.preheader.out_free_xbuf_crit_edge, label %while.cond49.preheader.while.body52_crit_edge

while.cond49.preheader.while.body52_crit_edge:    ; preds = %while.cond49.preheader
  br label %while.body52

while.cond49.preheader.out_free_xbuf_crit_edge:   ; preds = %while.cond49.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_free_xbuf

while.body52:                                     ; preds = %while.body52.while.body52_crit_edge, %while.cond49.preheader.while.body52_crit_edge
  %i.3167 = phi i32 [ %dec50, %while.body52.while.body52_crit_edge ], [ %i.2146, %while.cond49.preheader.while.body52_crit_edge ]
  %dec50 = add i32 %i.3167, -1
  %axbuf54 = getelementptr %struct.test_mb_aead_data, ptr %call8.i.i, i32 %dec50, i32 6
  %29 = ptrtoint ptr %axbuf54 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %axbuf54, align 32
  %31 = ptrtoint ptr %30 to i32
  tail call void @free_pages(i32 noundef %31, i32 noundef 0) #10
  %arrayidx.1.i2 = getelementptr ptr, ptr %axbuf54, i32 1
  %32 = ptrtoint ptr %arrayidx.1.i2 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx.1.i2, align 4
  %34 = ptrtoint ptr %33 to i32
  tail call void @free_pages(i32 noundef %34, i32 noundef 0) #10
  %arrayidx.2.i3 = getelementptr ptr, ptr %axbuf54, i32 2
  %35 = ptrtoint ptr %arrayidx.2.i3 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx.2.i3, align 8
  %37 = ptrtoint ptr %36 to i32
  tail call void @free_pages(i32 noundef %37, i32 noundef 0) #10
  %arrayidx.3.i4 = getelementptr ptr, ptr %axbuf54, i32 3
  %38 = ptrtoint ptr %arrayidx.3.i4 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx.3.i4, align 4
  %40 = ptrtoint ptr %39 to i32
  tail call void @free_pages(i32 noundef %40, i32 noundef 0) #10
  %arrayidx.4.i5 = getelementptr ptr, ptr %axbuf54, i32 4
  %41 = ptrtoint ptr %arrayidx.4.i5 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx.4.i5, align 16
  %43 = ptrtoint ptr %42 to i32
  tail call void @free_pages(i32 noundef %43, i32 noundef 0) #10
  %arrayidx.5.i6 = getelementptr ptr, ptr %axbuf54, i32 5
  %44 = ptrtoint ptr %arrayidx.5.i6 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx.5.i6, align 4
  %46 = ptrtoint ptr %45 to i32
  tail call void @free_pages(i32 noundef %46, i32 noundef 0) #10
  %arrayidx.6.i7 = getelementptr ptr, ptr %axbuf54, i32 6
  %47 = ptrtoint ptr %arrayidx.6.i7 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx.6.i7, align 8
  %49 = ptrtoint ptr %48 to i32
  tail call void @free_pages(i32 noundef %49, i32 noundef 0) #10
  %arrayidx.7.i8 = getelementptr ptr, ptr %axbuf54, i32 7
  %50 = ptrtoint ptr %arrayidx.7.i8 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx.7.i8, align 4
  %52 = ptrtoint ptr %51 to i32
  tail call void @free_pages(i32 noundef %52, i32 noundef 0) #10
  %tobool51.not = icmp eq i32 %dec50, 0
  br i1 %tobool51.not, label %while.body52.out_free_xbuf_crit_edge, label %while.body52.while.body52_crit_edge

while.body52.while.body52_crit_edge:              ; preds = %while.body52
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body52

while.body52.out_free_xbuf_crit_edge:             ; preds = %while.body52
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_free_xbuf

for.inc58:                                        ; preds = %for.body43
  %inc59 = add nuw i32 %i.2146, 1
  %exitcond196.not = icmp eq i32 %inc59, %num_mb
  br i1 %exitcond196.not, label %for.cond61.preheader, label %for.inc58.for.body43_crit_edge

for.inc58.for.body43_crit_edge:                   ; preds = %for.inc58
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body43

for.cond82.preheader:                             ; preds = %for.inc79
  br i1 %cmp30143.not, label %for.cond82.preheader.do.end122_crit_edge, label %for.body85.lr.ph

for.cond82.preheader.do.end122_crit_edge:         ; preds = %for.cond82.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end122

for.body85.lr.ph:                                 ; preds = %for.cond82.preheader
  %reqsize.i.i = getelementptr inbounds %struct.crypto_aead, ptr %call11, i32 0, i32 1
  %base.i.i.i = getelementptr inbounds %struct.crypto_aead, ptr %call11, i32 0, i32 3
  br label %if.end8.i.i

for.body64:                                       ; preds = %for.inc79.for.body64_crit_edge, %for.cond61.preheader.for.body64_crit_edge
  %i.4148 = phi i32 [ %inc80, %for.inc79.for.body64_crit_edge ], [ 0, %for.cond61.preheader.for.body64_crit_edge ]
  %xoutbuf = getelementptr %struct.test_mb_aead_data, ptr %call8.i.i, i32 %i.4148, i32 5
  %call67 = tail call fastcc i32 @testmgr_alloc_buf(ptr noundef %xoutbuf)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %for.inc79, label %while.cond70.preheader

while.cond70.preheader:                           ; preds = %for.body64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.4148)
  %tobool72.not162 = icmp eq i32 %i.4148, 0
  br i1 %tobool72.not162, label %while.cond70.preheader.out_free_axbuf_crit_edge, label %while.cond70.preheader.while.body73_crit_edge

while.cond70.preheader.while.body73_crit_edge:    ; preds = %while.cond70.preheader
  br label %while.body73

while.cond70.preheader.out_free_axbuf_crit_edge:  ; preds = %while.cond70.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_free_axbuf

while.body73:                                     ; preds = %while.body73.while.body73_crit_edge, %while.cond70.preheader.while.body73_crit_edge
  %i.5163 = phi i32 [ %dec71, %while.body73.while.body73_crit_edge ], [ %i.4148, %while.cond70.preheader.while.body73_crit_edge ]
  %dec71 = add i32 %i.5163, -1
  %xoutbuf75 = getelementptr %struct.test_mb_aead_data, ptr %call8.i.i, i32 %dec71, i32 5
  %53 = ptrtoint ptr %xoutbuf75 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %xoutbuf75, align 32
  %55 = ptrtoint ptr %54 to i32
  tail call void @free_pages(i32 noundef %55, i32 noundef 0) #10
  %arrayidx.1.i9 = getelementptr ptr, ptr %xoutbuf75, i32 1
  %56 = ptrtoint ptr %arrayidx.1.i9 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx.1.i9, align 4
  %58 = ptrtoint ptr %57 to i32
  tail call void @free_pages(i32 noundef %58, i32 noundef 0) #10
  %arrayidx.2.i10 = getelementptr ptr, ptr %xoutbuf75, i32 2
  %59 = ptrtoint ptr %arrayidx.2.i10 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %arrayidx.2.i10, align 8
  %61 = ptrtoint ptr %60 to i32
  tail call void @free_pages(i32 noundef %61, i32 noundef 0) #10
  %arrayidx.3.i11 = getelementptr ptr, ptr %xoutbuf75, i32 3
  %62 = ptrtoint ptr %arrayidx.3.i11 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %arrayidx.3.i11, align 4
  %64 = ptrtoint ptr %63 to i32
  tail call void @free_pages(i32 noundef %64, i32 noundef 0) #10
  %arrayidx.4.i12 = getelementptr ptr, ptr %xoutbuf75, i32 4
  %65 = ptrtoint ptr %arrayidx.4.i12 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %arrayidx.4.i12, align 16
  %67 = ptrtoint ptr %66 to i32
  tail call void @free_pages(i32 noundef %67, i32 noundef 0) #10
  %arrayidx.5.i13 = getelementptr ptr, ptr %xoutbuf75, i32 5
  %68 = ptrtoint ptr %arrayidx.5.i13 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %arrayidx.5.i13, align 4
  %70 = ptrtoint ptr %69 to i32
  tail call void @free_pages(i32 noundef %70, i32 noundef 0) #10
  %arrayidx.6.i14 = getelementptr ptr, ptr %xoutbuf75, i32 6
  %71 = ptrtoint ptr %arrayidx.6.i14 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %arrayidx.6.i14, align 8
  %73 = ptrtoint ptr %72 to i32
  tail call void @free_pages(i32 noundef %73, i32 noundef 0) #10
  %arrayidx.7.i15 = getelementptr ptr, ptr %xoutbuf75, i32 7
  %74 = ptrtoint ptr %arrayidx.7.i15 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %arrayidx.7.i15, align 4
  %76 = ptrtoint ptr %75 to i32
  tail call void @free_pages(i32 noundef %76, i32 noundef 0) #10
  %tobool72.not = icmp eq i32 %dec71, 0
  br i1 %tobool72.not, label %while.body73.out_free_axbuf_crit_edge, label %while.body73.while.body73_crit_edge

while.body73.while.body73_crit_edge:              ; preds = %while.body73
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body73

while.body73.out_free_axbuf_crit_edge:            ; preds = %while.body73
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_free_axbuf

for.inc79:                                        ; preds = %for.body64
  %inc80 = add nuw i32 %i.4148, 1
  %exitcond197.not = icmp eq i32 %inc80, %num_mb
  br i1 %exitcond197.not, label %for.cond82.preheader, label %for.inc79.for.body64_crit_edge

for.inc79.for.body64_crit_edge:                   ; preds = %for.inc79
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body64

for.cond108.preheader:                            ; preds = %for.inc105
  br i1 %cmp30143.not, label %for.cond108.preheader.do.end122_crit_edge, label %for.cond108.preheader.for.body111_crit_edge

for.cond108.preheader.for.body111_crit_edge:      ; preds = %for.cond108.preheader
  br label %for.body111

for.cond108.preheader.do.end122_crit_edge:        ; preds = %for.cond108.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end122

if.end8.i.i:                                      ; preds = %for.inc105.if.end8.i.i_crit_edge, %for.body85.lr.ph
  %i.6150 = phi i32 [ 0, %for.body85.lr.ph ], [ %inc106, %for.inc105.if.end8.i.i_crit_edge ]
  %77 = ptrtoint ptr %reqsize.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %reqsize.i.i, align 4
  %add.i = add i32 %78, 128
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i, i32 noundef 3264) #15
  %tobool.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not.i, label %do.end94, label %for.inc105, !prof !701

do.end94:                                         ; preds = %if.end8.i.i
  %req110 = getelementptr %struct.test_mb_aead_data, ptr %call8.i.i, i32 %i.6150, i32 2
  %79 = ptrtoint ptr %req110 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr null, ptr %req110, align 32
  %call96 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.184, ptr noundef %algo) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.6150)
  %tobool99.not158 = icmp eq i32 %i.6150, 0
  br i1 %tobool99.not158, label %do.end94.out_free_xoutbuf_crit_edge, label %do.end94.while.body100_crit_edge

do.end94.while.body100_crit_edge:                 ; preds = %do.end94
  br label %while.body100

do.end94.out_free_xoutbuf_crit_edge:              ; preds = %do.end94
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_free_xoutbuf

while.body100:                                    ; preds = %while.body100.while.body100_crit_edge, %do.end94.while.body100_crit_edge
  %i.7159 = phi i32 [ %dec98, %while.body100.while.body100_crit_edge ], [ %i.6150, %do.end94.while.body100_crit_edge ]
  %dec98 = add i32 %i.7159, -1
  %req102 = getelementptr %struct.test_mb_aead_data, ptr %call8.i.i, i32 %dec98, i32 2
  %80 = ptrtoint ptr %req102 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %req102, align 32
  tail call void @kfree_sensitive(ptr noundef %81) #10
  %tobool99.not = icmp eq i32 %dec98, 0
  br i1 %tobool99.not, label %while.body100.out_free_xoutbuf_crit_edge, label %while.body100.while.body100_crit_edge

while.body100.while.body100_crit_edge:            ; preds = %while.body100
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body100

while.body100.out_free_xoutbuf_crit_edge:         ; preds = %while.body100
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_free_xoutbuf

for.inc105:                                       ; preds = %if.end8.i.i
  %tfm1.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %call9.i.i, i32 0, i32 3
  %82 = ptrtoint ptr %tfm1.i.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %base.i.i.i, ptr %tfm1.i.i, align 16
  %req = getelementptr %struct.test_mb_aead_data, ptr %call8.i.i, i32 %i.6150, i32 2
  %83 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %call9.i.i, ptr %req, align 32
  %inc106 = add nuw i32 %i.6150, 1
  %exitcond198.not = icmp eq i32 %inc106, %num_mb
  br i1 %exitcond198.not, label %for.cond108.preheader, label %for.inc105.if.end8.i.i_crit_edge

for.inc105.if.end8.i.i_crit_edge:                 ; preds = %for.inc105
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.i.i

for.body111:                                      ; preds = %for.body111.for.body111_crit_edge, %for.cond108.preheader.for.body111_crit_edge
  %i.8153 = phi i32 [ %inc118, %for.body111.for.body111_crit_edge ], [ 0, %for.cond108.preheader.for.body111_crit_edge ]
  %wait = getelementptr %struct.test_mb_aead_data, ptr %call8.i.i, i32 %i.8153, i32 3
  %84 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 0, ptr %wait, align 4
  %wait.i.i = getelementptr inbounds %struct.completion, ptr %wait, i32 0, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i.i, ptr noundef nonnull @.str.166, ptr noundef nonnull @init_completion.__key) #10
  %req114 = getelementptr %struct.test_mb_aead_data, ptr %call8.i.i, i32 %i.8153, i32 2
  %85 = ptrtoint ptr %req114 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %req114, align 32
  %complete.i = getelementptr inbounds %struct.crypto_async_request, ptr %86, i32 0, i32 1
  %87 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr @crypto_req_done, ptr %complete.i, align 8
  %data2.i = getelementptr inbounds %struct.crypto_async_request, ptr %86, i32 0, i32 2
  %88 = ptrtoint ptr %data2.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %wait, ptr %data2.i, align 4
  %flags4.i = getelementptr inbounds %struct.crypto_async_request, ptr %86, i32 0, i32 4
  %89 = ptrtoint ptr %flags4.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 1024, ptr %flags4.i, align 4
  %inc118 = add nuw i32 %i.8153, 1
  %exitcond199.not = icmp eq i32 %inc118, %num_mb
  br i1 %exitcond199.not, label %for.body111.do.end122_crit_edge, label %for.body111.for.body111_crit_edge

for.body111.for.body111_crit_edge:                ; preds = %for.body111
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body111

for.body111.do.end122_crit_edge:                  ; preds = %for.body111
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end122

do.end122:                                        ; preds = %for.body111.do.end122_crit_edge, %for.cond108.preheader.do.end122_crit_edge, %for.cond82.preheader.do.end122_crit_edge, %for.cond61.preheader.do.end122_crit_edge, %for.cond40.preheader.do.end122_crit_edge, %for.cond.preheader.do.end122_crit_edge
  %base.i = getelementptr inbounds %struct.crypto_aead, ptr %call11, i32 0, i32 3
  %__crt_alg.i = getelementptr inbounds %struct.crypto_aead, ptr %call11, i32 0, i32 3, i32 3
  %90 = ptrtoint ptr %__crt_alg.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %__crt_alg.i, align 4
  %cra_driver_name.i = getelementptr inbounds %struct.crypto_alg, ptr %91, i32 0, i32 9
  %call126 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.211, ptr noundef %algo, ptr noundef %cra_driver_name.i, ptr noundef nonnull %.str.142..str.143) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enc)
  %tobool190.not = icmp eq i32 %enc, 0
  %spec.select = select i1 %tobool190.not, i32 16, i32 0
  %cond201 = select i1 %tobool190.not, i32 0, i32 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %secs)
  %tobool239.not = icmp eq i32 %secs, 0
  %92 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %num_mb, i32 4) #10
  %93 = extractvalue { i32, i1 } %92, 1
  %94 = extractvalue { i32, i1 } %92, 0
  %mul.neg.i = mul i32 %secs, -100
  %conv8.i = zext i32 %num_mb to i64
  %mul.i = shl i32 %num_mb, 3
  br label %do.body127

do.body127:                                       ; preds = %do.end261.do.body127_crit_edge, %do.end122
  %i.9 = phi i32 [ 0, %do.end122 ], [ %i.11125, %do.end261.do.body127_crit_edge ]
  %keysize.addr.0 = phi ptr [ %keysize, %do.end122 ], [ %incdec.ptr262, %do.end261.do.body127_crit_edge ]
  %95 = add i32 %i.9, 8
  br label %do.body128

do.body128:                                       ; preds = %do.cond259.do.body128_crit_edge, %do.body127
  %b_size.0 = phi ptr [ @aead_sizes, %do.body127 ], [ %incdec.ptr, %do.cond259.do.body128_crit_edge ]
  %i.10 = phi i32 [ %i.9, %do.body127 ], [ %inc255, %do.cond259.do.body128_crit_edge ]
  %96 = ptrtoint ptr %b_size.0 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %b_size.0, align 4
  %sub = add i32 %97, -1
  %98 = ptrtoint ptr %__crt_alg.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %__crt_alg.i, align 4
  %cra_blocksize.i.i = getelementptr inbounds %struct.crypto_alg, ptr %99, i32 0, i32 3
  %100 = ptrtoint ptr %cra_blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %cra_blocksize.i.i, align 4
  %sub130 = add i32 %101, -1
  %or = or i32 %sub130, %sub
  %add = add i32 %or, 1
  %add132 = add i32 %or, 17
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768, i32 %add132)
  %cmp133 = icmp ugt i32 %add132, 32768
  br i1 %cmp133, label %do.end138, label %do.end146

do.end138:                                        ; preds = %do.body128
  call void @__sanitizer_cov_trace_pc() #12
  %call142 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.214, i32 noundef %add132, i32 noundef 32768) #13
  br label %out

do.end146:                                        ; preds = %do.body128
  %102 = ptrtoint ptr %keysize.addr.0 to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %keysize.addr.0, align 1
  %conv148 = zext i8 %103 to i32
  %mul = shl nuw nsw i32 %conv148, 3
  %call149 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.158, i32 noundef %i.10, i32 noundef %mul, i32 noundef %add) #13
  %104 = load ptr, ptr @tvmem, align 4
  %105 = call ptr @memset(ptr %104, i32 255, i32 4096)
  %106 = ptrtoint ptr %base.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 0, ptr %base.i, align 128
  %107 = ptrtoint ptr %keysize.addr.0 to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %keysize.addr.0, align 1
  %conv165 = zext i8 %108 to i32
  %call166 = call i32 @crypto_aead_setkey(ptr noundef %call11, ptr noundef %104, i32 noundef %conv165) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call166)
  %tobool167.not = icmp eq i32 %call166, 0
  br i1 %tobool167.not, label %if.end175, label %do.end171

do.end171:                                        ; preds = %do.end146
  call void @__sanitizer_cov_trace_pc() #12
  %109 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %base.i, align 128
  %call174 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.161, i32 noundef %110) #13
  br label %out

if.end175:                                        ; preds = %do.end146
  %111 = ptrtoint ptr %__crt_alg.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %__crt_alg.i, align 4
  %ivsize.i.i = getelementptr i8, ptr %112, i32 -104
  %113 = ptrtoint ptr %ivsize.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %ivsize.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %114)
  %tobool177.not = icmp eq i32 %114, 0
  br i1 %tobool177.not, label %if.end175.if.end179_crit_edge, label %if.then178

if.end175.if.end179_crit_edge:                    ; preds = %if.end175
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end179

if.then178:                                       ; preds = %if.end175
  call void @__sanitizer_cov_trace_pc() #12
  %115 = call ptr @memset(ptr %call7.i.i, i32 255, i32 %114)
  br label %if.end179

if.end179:                                        ; preds = %if.then178, %if.end175.if.end179_crit_edge
  br i1 %cmp30143.not, label %if.end179.for.end238_crit_edge, label %for.body183.lr.ph

if.end179.for.end238_crit_edge:                   ; preds = %if.end179
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end238

for.body183.lr.ph:                                ; preds = %if.end179
  %add192 = add i32 %add, %spec.select
  %add202 = add i32 %add, %cond201
  br label %for.body183

for.body183:                                      ; preds = %for.inc236.for.body183_crit_edge, %for.body183.lr.ph
  %j.1155 = phi i32 [ 0, %for.body183.lr.ph ], [ %inc237, %for.inc236.for.body183_crit_edge ]
  %arrayidx184 = getelementptr %struct.test_mb_aead_data, ptr %call8.i.i, i32 %j.1155
  %axbuf185 = getelementptr %struct.test_mb_aead_data, ptr %call8.i.i, i32 %j.1155, i32 6
  %116 = ptrtoint ptr %axbuf185 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %axbuf185, align 32
  %118 = call ptr @memset(ptr %117, i32 255, i32 %aad_size)
  %xbuf188 = getelementptr %struct.test_mb_aead_data, ptr %call8.i.i, i32 %j.1155, i32 4
  call fastcc void @sg_init_aead(ptr noundef %arrayidx184, ptr noundef %xbuf188, i32 noundef %add192, ptr noundef %117, i32 noundef %aad_size)
  %sgout = getelementptr %struct.test_mb_aead_data, ptr %call8.i.i, i32 %j.1155, i32 1
  %xoutbuf194 = getelementptr %struct.test_mb_aead_data, ptr %call8.i.i, i32 %j.1155, i32 5
  call fastcc void @sg_init_aead(ptr noundef %sgout, ptr noundef %xoutbuf194, i32 noundef %add202, ptr noundef %117, i32 noundef %aad_size)
  %req203 = getelementptr %struct.test_mb_aead_data, ptr %call8.i.i, i32 %j.1155, i32 2
  %119 = ptrtoint ptr %req203 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %req203, align 32
  %assoclen1.i = getelementptr inbounds %struct.aead_request, ptr %120, i32 0, i32 1
  %121 = ptrtoint ptr %assoclen1.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %aad_size, ptr %assoclen1.i, align 8
  br i1 %tobool190.not, label %if.then205, label %for.body183.for.inc236_crit_edge

for.body183.for.inc236_crit_edge:                 ; preds = %for.body183
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc236

if.then205:                                       ; preds = %for.body183
  %122 = ptrtoint ptr %req203 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %req203, align 32
  %src1.i = getelementptr inbounds %struct.aead_request, ptr %123, i32 0, i32 4
  %124 = ptrtoint ptr %src1.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr %sgout, ptr %src1.i, align 4
  %dst2.i = getelementptr inbounds %struct.aead_request, ptr %123, i32 0, i32 5
  %125 = ptrtoint ptr %dst2.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr %arrayidx184, ptr %dst2.i, align 8
  %cryptlen3.i = getelementptr inbounds %struct.aead_request, ptr %123, i32 0, i32 2
  %126 = ptrtoint ptr %cryptlen3.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %add, ptr %cryptlen3.i, align 4
  %iv4.i = getelementptr inbounds %struct.aead_request, ptr %123, i32 0, i32 3
  %127 = ptrtoint ptr %iv4.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr %call7.i.i, ptr %iv4.i, align 32
  %128 = load ptr, ptr %req203, align 32
  %call212 = call i32 @crypto_aead_encrypt(ptr noundef %128) #10
  %129 = zext i32 %call212 to i64
  call void @__sanitizer_cov_trace_switch(i64 %129, ptr @__sancov_gen_cov_switch_values.310)
  switch i32 %call212, label %if.then205.do_one_aead_op.exit_crit_edge [
    i32 -115, label %if.then205.sw.bb.i.i_crit_edge
    i32 -16, label %if.then205.sw.bb.i.i_crit_edge266
  ]

if.then205.sw.bb.i.i_crit_edge266:                ; preds = %if.then205
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i.i

if.then205.sw.bb.i.i_crit_edge:                   ; preds = %if.then205
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i.i

if.then205.do_one_aead_op.exit_crit_edge:         ; preds = %if.then205
  call void @__sanitizer_cov_trace_pc() #12
  br label %do_one_aead_op.exit

sw.bb.i.i:                                        ; preds = %if.then205.sw.bb.i.i_crit_edge, %if.then205.sw.bb.i.i_crit_edge266
  %130 = ptrtoint ptr %req203 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %req203, align 32
  %data.i = getelementptr inbounds %struct.crypto_async_request, ptr %131, i32 0, i32 2
  %132 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %data.i, align 4
  call void @wait_for_completion(ptr noundef %133) #10
  %134 = ptrtoint ptr %133 to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 0, ptr %133, align 4
  %err2.i.i = getelementptr inbounds %struct.crypto_wait, ptr %133, i32 0, i32 1
  %135 = ptrtoint ptr %err2.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %err2.i.i, align 4
  br label %do_one_aead_op.exit

do_one_aead_op.exit:                              ; preds = %sw.bb.i.i, %if.then205.do_one_aead_op.exit_crit_edge
  %err.addr.0.i.i = phi i32 [ %call212, %if.then205.do_one_aead_op.exit_crit_edge ], [ %136, %sw.bb.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.addr.0.i.i)
  %tobool215.not = icmp eq i32 %err.addr.0.i.i, 0
  br i1 %tobool215.not, label %do_one_aead_op.exit.for.inc236_crit_edge, label %cleanup

do_one_aead_op.exit.for.inc236_crit_edge:         ; preds = %do_one_aead_op.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc236

cleanup:                                          ; preds = %do_one_aead_op.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call221 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.195, i32 noundef %err.addr.0.i.i) #13
  br label %for.end238

for.inc236:                                       ; preds = %do_one_aead_op.exit.for.inc236_crit_edge, %for.body183.for.inc236_crit_edge
  %137 = ptrtoint ptr %req203 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %req203, align 32
  %src1.i23 = getelementptr inbounds %struct.aead_request, ptr %138, i32 0, i32 4
  %139 = ptrtoint ptr %src1.i23 to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr %arrayidx184, ptr %src1.i23, align 4
  %dst2.i24 = getelementptr inbounds %struct.aead_request, ptr %138, i32 0, i32 5
  %140 = ptrtoint ptr %dst2.i24 to i32
  call void @__asan_store4_noabort(i32 %140)
  store ptr %sgout, ptr %dst2.i24, align 8
  %cryptlen3.i25 = getelementptr inbounds %struct.aead_request, ptr %138, i32 0, i32 2
  %141 = ptrtoint ptr %cryptlen3.i25 to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 %add192, ptr %cryptlen3.i25, align 4
  %iv4.i26 = getelementptr inbounds %struct.aead_request, ptr %138, i32 0, i32 3
  %142 = ptrtoint ptr %iv4.i26 to i32
  call void @__asan_store4_noabort(i32 %142)
  store ptr %call7.i.i, ptr %iv4.i26, align 32
  %inc237 = add nuw i32 %j.1155, 1
  %exitcond200.not = icmp eq i32 %inc237, %num_mb
  br i1 %exitcond200.not, label %for.inc236.for.end238_crit_edge, label %for.inc236.for.body183_crit_edge

for.inc236.for.body183_crit_edge:                 ; preds = %for.inc236
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body183

for.inc236.for.end238_crit_edge:                  ; preds = %for.inc236
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end238

for.end238:                                       ; preds = %for.inc236.for.end238_crit_edge, %cleanup, %if.end179.for.end238_crit_edge
  br i1 %tobool239.not, label %if.else244, label %if.then240

if.then240:                                       ; preds = %for.end238
  br i1 %93, label %if.then240.test_mb_aead_jiffies.exit_crit_edge, label %if.end7.i.i.i, !prof !701

if.then240.test_mb_aead_jiffies.exit_crit_edge:   ; preds = %if.then240
  call void @__sanitizer_cov_trace_pc() #12
  br label %test_mb_aead_jiffies.exit

if.end7.i.i.i:                                    ; preds = %if.then240
  %call8.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %94, i32 noundef 3520) #15
  %tobool.not.i31 = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool.not.i31, label %if.end7.i.i.i.test_mb_aead_jiffies.exit_crit_edge, label %if.end.i

if.end7.i.i.i.test_mb_aead_jiffies.exit_crit_edge: ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %test_mb_aead_jiffies.exit

if.end.i:                                         ; preds = %if.end7.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %143 = load volatile i32, ptr @jiffies, align 128
  %add.neg.i = sub i32 %mul.neg.i, %143
  %144 = load volatile i32, ptr @jiffies, align 128
  %sub31.i = add i32 %add.neg.i, %144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub31.i)
  %cmp32.i = icmp slt i32 %sub31.i, 0
  br i1 %cmp32.i, label %if.end.i.for.body.i_crit_edge, label %if.end.i.do.end.i_crit_edge

if.end.i.do.end.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %bcount.033.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end.i.for.body.i_crit_edge ]
  %call1.i = call fastcc i32 @do_mult_aead_op(ptr noundef nonnull %call8.i.i, i32 noundef %enc, i32 noundef %num_mb, ptr noundef nonnull %call8.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %for.inc.i, label %for.body.i.out.i_crit_edge

for.body.i.out.i_crit_edge:                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add i32 %bcount.033.i, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %145 = load volatile i32, ptr @jiffies, align 128
  %sub.i = add i32 %145, %add.neg.i
  %cmp.i32 = icmp slt i32 %sub.i, 0
  br i1 %cmp.i32, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.do.end.i_crit_edge

for.inc.i.do.end.i_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

do.end.i:                                         ; preds = %for.inc.i.do.end.i_crit_edge, %if.end.i.do.end.i_crit_edge
  %bcount.0.lcssa.i = phi i32 [ 0, %if.end.i.do.end.i_crit_edge ], [ %inc.i, %for.inc.i.do.end.i_crit_edge ]
  %mul5.i = mul i32 %bcount.0.lcssa.i, %num_mb
  %conv.i = sext i32 %bcount.0.lcssa.i to i64
  %conv6.i = sext i32 %add to i64
  %mul7.i = mul nsw i64 %conv6.i, %conv8.i
  %mul9.i = mul i64 %mul7.i, %conv.i
  %call10.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.167, i32 noundef %mul5.i, i32 noundef %secs, i64 noundef %mul9.i) #13
  br label %out.i

out.i:                                            ; preds = %do.end.i, %for.body.i.out.i_crit_edge
  %ret.1.i = phi i32 [ 0, %do.end.i ], [ %call1.i, %for.body.i.out.i_crit_edge ]
  call void @kfree(ptr noundef nonnull %call8.i.i.i) #10
  br label %test_mb_aead_jiffies.exit

test_mb_aead_jiffies.exit:                        ; preds = %out.i, %if.end7.i.i.i.test_mb_aead_jiffies.exit_crit_edge, %if.then240.test_mb_aead_jiffies.exit_crit_edge
  %retval.0.i = phi i32 [ %ret.1.i, %out.i ], [ -12, %if.end7.i.i.i.test_mb_aead_jiffies.exit_crit_edge ], [ -12, %if.then240.test_mb_aead_jiffies.exit_crit_edge ]
  call void @__might_resched(ptr noundef nonnull @.str.2, i32 noundef 425, i32 noundef 0) #10
  %call.i = call i32 @__cond_resched() #10
  br label %if.end246

if.else244:                                       ; preds = %for.end238
  br i1 %93, label %if.else244.cleanup256_crit_edge, label %if.end7.i.i.i63, !prof !701

if.else244.cleanup256_crit_edge:                  ; preds = %if.else244
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup256

if.end7.i.i.i63:                                  ; preds = %if.else244
  %call8.i.i.i62 = call noalias align 128 ptr @__kmalloc(i32 noundef %94, i32 noundef 3520) #15
  %tobool.not.i65 = icmp eq ptr %call8.i.i.i62, null
  br i1 %tobool.not.i65, label %if.end7.i.i.i63.cleanup256_crit_edge, label %for.body.preheader.i

if.end7.i.i.i63.cleanup256_crit_edge:             ; preds = %if.end7.i.i.i63
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup256

for.body.preheader.i:                             ; preds = %if.end7.i.i.i63
  %call1.i67 = call fastcc i32 @do_mult_aead_op(ptr noundef nonnull %call8.i.i, i32 noundef %enc, i32 noundef %num_mb, ptr noundef nonnull %call8.i.i.i62) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i67)
  %tobool2.not.i68 = icmp eq i32 %call1.i67, 0
  br i1 %tobool2.not.i68, label %for.cond.i, label %for.body.preheader.i.out.i73_crit_edge

for.body.preheader.i.out.i73_crit_edge:           ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i73

for.cond.i:                                       ; preds = %for.body.preheader.i
  %call1.1.i = call fastcc i32 @do_mult_aead_op(ptr noundef nonnull %call8.i.i, i32 noundef %enc, i32 noundef %num_mb, ptr noundef nonnull %call8.i.i.i62) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i)
  %tobool2.not.1.i = icmp eq i32 %call1.1.i, 0
  br i1 %tobool2.not.1.i, label %for.cond.1.i, label %for.cond.i.out.i73_crit_edge

for.cond.i.out.i73_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i73

for.cond.1.i:                                     ; preds = %for.cond.i
  %call1.2.i = call fastcc i32 @do_mult_aead_op(ptr noundef nonnull %call8.i.i, i32 noundef %enc, i32 noundef %num_mb, ptr noundef nonnull %call8.i.i.i62) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i)
  %tobool2.not.2.i = icmp eq i32 %call1.2.i, 0
  br i1 %tobool2.not.2.i, label %for.cond.2.i, label %for.cond.1.i.out.i73_crit_edge

for.cond.1.i.out.i73_crit_edge:                   ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i73

for.cond.2.i:                                     ; preds = %for.cond.1.i
  %call1.3.i = call fastcc i32 @do_mult_aead_op(ptr noundef nonnull %call8.i.i, i32 noundef %enc, i32 noundef %num_mb, ptr noundef nonnull %call8.i.i.i62) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.3.i)
  %tobool2.not.3.i = icmp eq i32 %call1.3.i, 0
  br i1 %tobool2.not.3.i, label %for.cond.2.i.for.body7.i_crit_edge, label %for.cond.2.i.out.i73_crit_edge

for.cond.2.i.out.i73_crit_edge:                   ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i73

for.cond.2.i.for.body7.i_crit_edge:               ; preds = %for.cond.2.i
  br label %for.body7.i

for.body7.i:                                      ; preds = %for.inc23.i.for.body7.i_crit_edge, %for.cond.2.i.for.body7.i_crit_edge
  %cycles.054.i = phi i32 [ %add.i71, %for.inc23.i.for.body7.i_crit_edge ], [ 0, %for.cond.2.i.for.body7.i_crit_edge ]
  %i.153.i = phi i32 [ %inc24.i, %for.inc23.i.for.body7.i_crit_edge ], [ 0, %for.cond.2.i.for.body7.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %c.i) #10
  %146 = ptrtoint ptr %c.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 -1, ptr %c.i, align 4, !annotation !702
  %call8.i = call i32 @read_current_timer(ptr noundef nonnull %c.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %cond.false.i, label %for.body7.i.cond.end.i_crit_edge

for.body7.i.cond.end.i_crit_edge:                 ; preds = %for.body7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end.i

cond.false.i:                                     ; preds = %for.body7.i
  call void @__sanitizer_cov_trace_pc() #12
  %147 = ptrtoint ptr %c.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %c.i, align 4
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %for.body7.i.cond.end.i_crit_edge
  %cond.i = phi i32 [ %148, %cond.false.i ], [ 0, %for.body7.i.cond.end.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %c.i) #10
  %call10.i69 = call fastcc i32 @do_mult_aead_op(ptr noundef nonnull %call8.i.i, i32 noundef %enc, i32 noundef %num_mb, ptr noundef nonnull %call8.i.i.i62) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %c11.i) #10
  %149 = ptrtoint ptr %c11.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 -1, ptr %c11.i, align 4, !annotation !702
  %call13.i = call i32 @read_current_timer(ptr noundef nonnull %c11.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool14.not.i = icmp eq i32 %call13.i, 0
  br i1 %tobool14.not.i, label %cond.false16.i, label %cond.end.i.cond.end17.i_crit_edge

cond.end.i.cond.end17.i_crit_edge:                ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end17.i

cond.false16.i:                                   ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %150 = ptrtoint ptr %c11.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %c11.i, align 4
  br label %cond.end17.i

cond.end17.i:                                     ; preds = %cond.false16.i, %cond.end.i.cond.end17.i_crit_edge
  %cond18.i = phi i32 [ %151, %cond.false16.i ], [ 0, %cond.end.i.cond.end17.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %c11.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i69)
  %tobool19.not.i = icmp eq i32 %call10.i69, 0
  br i1 %tobool19.not.i, label %for.inc23.i, label %cond.end17.i.out.i73_crit_edge

cond.end17.i.out.i73_crit_edge:                   ; preds = %cond.end17.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i73

for.inc23.i:                                      ; preds = %cond.end17.i
  %sub.i70 = sub i32 %cycles.054.i, %cond.i
  %add.i71 = add i32 %cond18.i, %sub.i70
  %inc24.i = add nuw nsw i32 %i.153.i, 1
  %exitcond.not.i = icmp eq i32 %inc24.i, 8
  br i1 %exitcond.not.i, label %do.end.i72, label %for.inc23.i.for.body7.i_crit_edge

for.inc23.i.for.body7.i_crit_edge:                ; preds = %for.inc23.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body7.i

do.end.i72:                                       ; preds = %for.inc23.i
  call void @__sanitizer_cov_trace_pc() #12
  %add27.i = add i32 %add.i71, 4
  %div.i = udiv i32 %add27.i, %mul.i
  %call28.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.169, i32 noundef %div.i, i32 noundef %add) #13
  br label %out.i73

out.i73:                                          ; preds = %do.end.i72, %cond.end17.i.out.i73_crit_edge, %for.cond.2.i.out.i73_crit_edge, %for.cond.1.i.out.i73_crit_edge, %for.cond.i.out.i73_crit_edge, %for.body.preheader.i.out.i73_crit_edge
  %ret.2.i = phi i32 [ 0, %do.end.i72 ], [ %call1.i67, %for.body.preheader.i.out.i73_crit_edge ], [ %call1.1.i, %for.cond.i.out.i73_crit_edge ], [ %call1.2.i, %for.cond.1.i.out.i73_crit_edge ], [ %call1.3.i, %for.cond.2.i.out.i73_crit_edge ], [ %call10.i69, %cond.end17.i.out.i73_crit_edge ]
  call void @kfree(ptr noundef nonnull %call8.i.i.i62) #10
  br label %if.end246

if.end246:                                        ; preds = %out.i73, %test_mb_aead_jiffies.exit
  %ret.0 = phi i32 [ %retval.0.i, %test_mb_aead_jiffies.exit ], [ %ret.2.i, %out.i73 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool247.not = icmp eq i32 %ret.0, 0
  br i1 %tobool247.not, label %do.cond259, label %if.end246.cleanup256_crit_edge

if.end246.cleanup256_crit_edge:                   ; preds = %if.end246
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup256

cleanup256:                                       ; preds = %if.end246.cleanup256_crit_edge, %if.end7.i.i.i63.cleanup256_crit_edge, %if.else244.cleanup256_crit_edge
  %ret.0116 = phi i32 [ %ret.0, %if.end246.cleanup256_crit_edge ], [ -12, %if.end7.i.i.i63.cleanup256_crit_edge ], [ -12, %if.else244.cleanup256_crit_edge ]
  %call253 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.198, ptr noundef nonnull %.str.142..str.143, i32 noundef %ret.0116) #13
  br label %do.end261

do.cond259:                                       ; preds = %if.end246
  %incdec.ptr = getelementptr i32, ptr %b_size.0, i32 1
  %inc255 = add i32 %i.10, 1
  %exitcond201 = icmp eq i32 %inc255, %95
  br i1 %exitcond201, label %do.cond259.do.end261_crit_edge, label %do.cond259.do.body128_crit_edge

do.cond259.do.body128_crit_edge:                  ; preds = %do.cond259
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body128

do.cond259.do.end261_crit_edge:                   ; preds = %do.cond259
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end261

do.end261:                                        ; preds = %do.cond259.do.end261_crit_edge, %cleanup256
  %i.11125 = phi i32 [ %i.10, %cleanup256 ], [ %95, %do.cond259.do.end261_crit_edge ]
  %incdec.ptr262 = getelementptr i8, ptr %keysize.addr.0, i32 1
  %152 = ptrtoint ptr %incdec.ptr262 to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %incdec.ptr262, align 1
  %tobool264.not = icmp eq i8 %153, 0
  br i1 %tobool264.not, label %do.end261.out_crit_edge, label %do.end261.do.body127_crit_edge

do.end261.do.body127_crit_edge:                   ; preds = %do.end261
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body127

do.end261.out_crit_edge:                          ; preds = %do.end261
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

out:                                              ; preds = %do.end261.out_crit_edge, %do.end171, %do.end138
  br i1 %cmp30143.not, label %out.out_free_tfm_crit_edge, label %out.for.body269_crit_edge

out.for.body269_crit_edge:                        ; preds = %out
  br label %for.body269

out.out_free_tfm_crit_edge:                       ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_free_tfm

for.body269:                                      ; preds = %for.body269.for.body269_crit_edge, %out.for.body269_crit_edge
  %i.12157 = phi i32 [ %inc273, %for.body269.for.body269_crit_edge ], [ 0, %out.for.body269_crit_edge ]
  %req271 = getelementptr %struct.test_mb_aead_data, ptr %call8.i.i, i32 %i.12157, i32 2
  %154 = ptrtoint ptr %req271 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %req271, align 32
  call void @kfree_sensitive(ptr noundef %155) #10
  %inc273 = add nuw i32 %i.12157, 1
  %exitcond202.not = icmp eq i32 %inc273, %num_mb
  br i1 %exitcond202.not, label %for.body269.out_free_xoutbuf_crit_edge, label %for.body269.for.body269_crit_edge

for.body269.for.body269_crit_edge:                ; preds = %for.body269
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body269

for.body269.out_free_xoutbuf_crit_edge:           ; preds = %for.body269
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_free_xoutbuf

out_free_xoutbuf:                                 ; preds = %for.body269.out_free_xoutbuf_crit_edge, %while.body100.out_free_xoutbuf_crit_edge, %do.end94.out_free_xoutbuf_crit_edge
  br i1 %cmp30143.not, label %out_free_xoutbuf.out_free_tfm_crit_edge, label %out_free_xoutbuf.for.body278_crit_edge

out_free_xoutbuf.for.body278_crit_edge:           ; preds = %out_free_xoutbuf
  br label %for.body278

out_free_xoutbuf.out_free_tfm_crit_edge:          ; preds = %out_free_xoutbuf
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_free_tfm

for.body278:                                      ; preds = %for.body278.for.body278_crit_edge, %out_free_xoutbuf.for.body278_crit_edge
  %i.13161 = phi i32 [ %inc283, %for.body278.for.body278_crit_edge ], [ 0, %out_free_xoutbuf.for.body278_crit_edge ]
  %xoutbuf280 = getelementptr %struct.test_mb_aead_data, ptr %call8.i.i, i32 %i.13161, i32 5
  %156 = ptrtoint ptr %xoutbuf280 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %xoutbuf280, align 32
  %158 = ptrtoint ptr %157 to i32
  call void @free_pages(i32 noundef %158, i32 noundef 0) #10
  %arrayidx.1.i75 = getelementptr ptr, ptr %xoutbuf280, i32 1
  %159 = ptrtoint ptr %arrayidx.1.i75 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %arrayidx.1.i75, align 4
  %161 = ptrtoint ptr %160 to i32
  call void @free_pages(i32 noundef %161, i32 noundef 0) #10
  %arrayidx.2.i76 = getelementptr ptr, ptr %xoutbuf280, i32 2
  %162 = ptrtoint ptr %arrayidx.2.i76 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %arrayidx.2.i76, align 8
  %164 = ptrtoint ptr %163 to i32
  call void @free_pages(i32 noundef %164, i32 noundef 0) #10
  %arrayidx.3.i77 = getelementptr ptr, ptr %xoutbuf280, i32 3
  %165 = ptrtoint ptr %arrayidx.3.i77 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %arrayidx.3.i77, align 4
  %167 = ptrtoint ptr %166 to i32
  call void @free_pages(i32 noundef %167, i32 noundef 0) #10
  %arrayidx.4.i78 = getelementptr ptr, ptr %xoutbuf280, i32 4
  %168 = ptrtoint ptr %arrayidx.4.i78 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %arrayidx.4.i78, align 16
  %170 = ptrtoint ptr %169 to i32
  call void @free_pages(i32 noundef %170, i32 noundef 0) #10
  %arrayidx.5.i79 = getelementptr ptr, ptr %xoutbuf280, i32 5
  %171 = ptrtoint ptr %arrayidx.5.i79 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %arrayidx.5.i79, align 4
  %173 = ptrtoint ptr %172 to i32
  call void @free_pages(i32 noundef %173, i32 noundef 0) #10
  %arrayidx.6.i80 = getelementptr ptr, ptr %xoutbuf280, i32 6
  %174 = ptrtoint ptr %arrayidx.6.i80 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %arrayidx.6.i80, align 8
  %176 = ptrtoint ptr %175 to i32
  call void @free_pages(i32 noundef %176, i32 noundef 0) #10
  %arrayidx.7.i81 = getelementptr ptr, ptr %xoutbuf280, i32 7
  %177 = ptrtoint ptr %arrayidx.7.i81 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %arrayidx.7.i81, align 4
  %179 = ptrtoint ptr %178 to i32
  call void @free_pages(i32 noundef %179, i32 noundef 0) #10
  %inc283 = add nuw i32 %i.13161, 1
  %exitcond203.not = icmp eq i32 %inc283, %num_mb
  br i1 %exitcond203.not, label %for.body278.out_free_axbuf_crit_edge, label %for.body278.for.body278_crit_edge

for.body278.for.body278_crit_edge:                ; preds = %for.body278
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body278

for.body278.out_free_axbuf_crit_edge:             ; preds = %for.body278
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_free_axbuf

out_free_axbuf:                                   ; preds = %for.body278.out_free_axbuf_crit_edge, %while.body73.out_free_axbuf_crit_edge, %while.cond70.preheader.out_free_axbuf_crit_edge
  br i1 %cmp30143.not, label %out_free_axbuf.out_free_tfm_crit_edge, label %out_free_axbuf.for.body288_crit_edge

out_free_axbuf.for.body288_crit_edge:             ; preds = %out_free_axbuf
  br label %for.body288

out_free_axbuf.out_free_tfm_crit_edge:            ; preds = %out_free_axbuf
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_free_tfm

for.body288:                                      ; preds = %for.body288.for.body288_crit_edge, %out_free_axbuf.for.body288_crit_edge
  %i.14165 = phi i32 [ %inc293, %for.body288.for.body288_crit_edge ], [ 0, %out_free_axbuf.for.body288_crit_edge ]
  %axbuf290 = getelementptr %struct.test_mb_aead_data, ptr %call8.i.i, i32 %i.14165, i32 6
  %180 = ptrtoint ptr %axbuf290 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %axbuf290, align 32
  %182 = ptrtoint ptr %181 to i32
  call void @free_pages(i32 noundef %182, i32 noundef 0) #10
  %arrayidx.1.i82 = getelementptr ptr, ptr %axbuf290, i32 1
  %183 = ptrtoint ptr %arrayidx.1.i82 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %arrayidx.1.i82, align 4
  %185 = ptrtoint ptr %184 to i32
  call void @free_pages(i32 noundef %185, i32 noundef 0) #10
  %arrayidx.2.i83 = getelementptr ptr, ptr %axbuf290, i32 2
  %186 = ptrtoint ptr %arrayidx.2.i83 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %arrayidx.2.i83, align 8
  %188 = ptrtoint ptr %187 to i32
  call void @free_pages(i32 noundef %188, i32 noundef 0) #10
  %arrayidx.3.i84 = getelementptr ptr, ptr %axbuf290, i32 3
  %189 = ptrtoint ptr %arrayidx.3.i84 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %arrayidx.3.i84, align 4
  %191 = ptrtoint ptr %190 to i32
  call void @free_pages(i32 noundef %191, i32 noundef 0) #10
  %arrayidx.4.i85 = getelementptr ptr, ptr %axbuf290, i32 4
  %192 = ptrtoint ptr %arrayidx.4.i85 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %arrayidx.4.i85, align 16
  %194 = ptrtoint ptr %193 to i32
  call void @free_pages(i32 noundef %194, i32 noundef 0) #10
  %arrayidx.5.i86 = getelementptr ptr, ptr %axbuf290, i32 5
  %195 = ptrtoint ptr %arrayidx.5.i86 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %arrayidx.5.i86, align 4
  %197 = ptrtoint ptr %196 to i32
  call void @free_pages(i32 noundef %197, i32 noundef 0) #10
  %arrayidx.6.i87 = getelementptr ptr, ptr %axbuf290, i32 6
  %198 = ptrtoint ptr %arrayidx.6.i87 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %arrayidx.6.i87, align 8
  %200 = ptrtoint ptr %199 to i32
  call void @free_pages(i32 noundef %200, i32 noundef 0) #10
  %arrayidx.7.i88 = getelementptr ptr, ptr %axbuf290, i32 7
  %201 = ptrtoint ptr %arrayidx.7.i88 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %arrayidx.7.i88, align 4
  %203 = ptrtoint ptr %202 to i32
  call void @free_pages(i32 noundef %203, i32 noundef 0) #10
  %inc293 = add nuw i32 %i.14165, 1
  %exitcond204.not = icmp eq i32 %inc293, %num_mb
  br i1 %exitcond204.not, label %for.body288.out_free_xbuf_crit_edge, label %for.body288.for.body288_crit_edge

for.body288.for.body288_crit_edge:                ; preds = %for.body288
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body288

for.body288.out_free_xbuf_crit_edge:              ; preds = %for.body288
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_free_xbuf

out_free_xbuf:                                    ; preds = %for.body288.out_free_xbuf_crit_edge, %while.body52.out_free_xbuf_crit_edge, %while.cond49.preheader.out_free_xbuf_crit_edge
  br i1 %cmp30143.not, label %out_free_xbuf.out_free_tfm_crit_edge, label %out_free_xbuf.for.body298_crit_edge

out_free_xbuf.for.body298_crit_edge:              ; preds = %out_free_xbuf
  br label %for.body298

out_free_xbuf.out_free_tfm_crit_edge:             ; preds = %out_free_xbuf
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_free_tfm

for.body298:                                      ; preds = %for.body298.for.body298_crit_edge, %out_free_xbuf.for.body298_crit_edge
  %i.15169 = phi i32 [ %inc303, %for.body298.for.body298_crit_edge ], [ 0, %out_free_xbuf.for.body298_crit_edge ]
  %xbuf300 = getelementptr %struct.test_mb_aead_data, ptr %call8.i.i, i32 %i.15169, i32 4
  %204 = ptrtoint ptr %xbuf300 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %xbuf300, align 32
  %206 = ptrtoint ptr %205 to i32
  call void @free_pages(i32 noundef %206, i32 noundef 0) #10
  %arrayidx.1.i89 = getelementptr ptr, ptr %xbuf300, i32 1
  %207 = ptrtoint ptr %arrayidx.1.i89 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %arrayidx.1.i89, align 4
  %209 = ptrtoint ptr %208 to i32
  call void @free_pages(i32 noundef %209, i32 noundef 0) #10
  %arrayidx.2.i90 = getelementptr ptr, ptr %xbuf300, i32 2
  %210 = ptrtoint ptr %arrayidx.2.i90 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %arrayidx.2.i90, align 8
  %212 = ptrtoint ptr %211 to i32
  call void @free_pages(i32 noundef %212, i32 noundef 0) #10
  %arrayidx.3.i91 = getelementptr ptr, ptr %xbuf300, i32 3
  %213 = ptrtoint ptr %arrayidx.3.i91 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %arrayidx.3.i91, align 4
  %215 = ptrtoint ptr %214 to i32
  call void @free_pages(i32 noundef %215, i32 noundef 0) #10
  %arrayidx.4.i92 = getelementptr ptr, ptr %xbuf300, i32 4
  %216 = ptrtoint ptr %arrayidx.4.i92 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %arrayidx.4.i92, align 16
  %218 = ptrtoint ptr %217 to i32
  call void @free_pages(i32 noundef %218, i32 noundef 0) #10
  %arrayidx.5.i93 = getelementptr ptr, ptr %xbuf300, i32 5
  %219 = ptrtoint ptr %arrayidx.5.i93 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %arrayidx.5.i93, align 4
  %221 = ptrtoint ptr %220 to i32
  call void @free_pages(i32 noundef %221, i32 noundef 0) #10
  %arrayidx.6.i94 = getelementptr ptr, ptr %xbuf300, i32 6
  %222 = ptrtoint ptr %arrayidx.6.i94 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %arrayidx.6.i94, align 8
  %224 = ptrtoint ptr %223 to i32
  call void @free_pages(i32 noundef %224, i32 noundef 0) #10
  %arrayidx.7.i95 = getelementptr ptr, ptr %xbuf300, i32 7
  %225 = ptrtoint ptr %arrayidx.7.i95 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %arrayidx.7.i95, align 4
  %227 = ptrtoint ptr %226 to i32
  call void @free_pages(i32 noundef %227, i32 noundef 0) #10
  %inc303 = add nuw i32 %i.15169, 1
  %exitcond205.not = icmp eq i32 %inc303, %num_mb
  br i1 %exitcond205.not, label %for.body298.out_free_tfm_crit_edge, label %for.body298.for.body298_crit_edge

for.body298.for.body298_crit_edge:                ; preds = %for.body298
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body298

for.body298.out_free_tfm_crit_edge:               ; preds = %for.body298
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_free_tfm

out_free_tfm:                                     ; preds = %for.body298.out_free_tfm_crit_edge, %out_free_xbuf.out_free_tfm_crit_edge, %out_free_axbuf.out_free_tfm_crit_edge, %out_free_xoutbuf.out_free_tfm_crit_edge, %out.out_free_tfm_crit_edge, %while.body.out_free_tfm_crit_edge, %while.cond.preheader.out_free_tfm_crit_edge, %do.end26
  %base.i.i96 = getelementptr inbounds %struct.crypto_aead, ptr %call11, i32 0, i32 3
  call void @crypto_destroy_tfm(ptr noundef %call11, ptr noundef %base.i.i96) #10
  br label %out_free_data

out_free_data:                                    ; preds = %out_free_tfm, %do.end16
  call void @kfree(ptr noundef nonnull %call8.i.i) #10
  br label %out_free_iv

out_free_iv:                                      ; preds = %out_free_data, %if.end7.i.i.out_free_iv_crit_edge, %if.end3.out_free_iv_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %cleanup305

cleanup305:                                       ; preds = %out_free_iv, %entry.cleanup305_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @test_mb_ahash_speed(ptr noundef %algo, i32 noundef %secs, i32 noundef %num_mb) unnamed_addr #4 align 64 {
entry:
  %c.i = alloca i32, align 4
  %c11.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %num_mb, i32 320) #10
  %1 = extractvalue { i32, i1 } %0, 1
  br i1 %1, label %entry.cleanup_crit_edge, label %if.end7.i.i, !prof !701

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7.i.i:                                      ; preds = %entry
  %2 = extractvalue { i32, i1 } %0, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %2, i32 noundef 3520) #15
  %tobool.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool.not, label %if.end7.i.i.cleanup_crit_edge, label %if.end

if.end7.i.i.cleanup_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %if.end7.i.i
  %call1 = tail call ptr @crypto_alloc_ahash(ptr noundef %algo, i32 noundef 0, i32 noundef 0) #10
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_mb)
  %cmp107.not = icmp eq i32 %num_mb, 0
  br i1 %cmp107.not, label %for.cond.preheader.do.end47_crit_edge, label %for.body.lr.ph

for.cond.preheader.do.end47_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end47

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %reqsize.i.i = getelementptr inbounds %struct.crypto_ahash, ptr %call1, i32 0, i32 8
  %base.i.i.i = getelementptr inbounds %struct.crypto_ahash, ptr %call1, i32 0, i32 10
  br label %for.body

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %3 = ptrtoint ptr %call1 to i32
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.144, ptr noundef %algo, i32 noundef %3) #13
  br label %free_data

for.body:                                         ; preds = %for.inc42.for.body_crit_edge, %for.body.lr.ph
  %i.0108 = phi i32 [ 0, %for.body.lr.ph ], [ %inc43, %for.inc42.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.test_mb_ahash_data, ptr %call8.i.i, i32 %i.0108
  %xbuf = getelementptr %struct.test_mb_ahash_data, ptr %call8.i.i, i32 %i.0108, i32 4
  %call7 = tail call fastcc i32 @testmgr_alloc_buf(ptr noundef %xbuf)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %for.body.out_crit_edge

for.body.out_crit_edge:                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end10:                                         ; preds = %for.body
  %wait = getelementptr %struct.test_mb_ahash_data, ptr %call8.i.i, i32 %i.0108, i32 3
  %4 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %wait, align 4
  %wait.i.i = getelementptr inbounds %struct.completion, ptr %wait, i32 0, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i.i, ptr noundef nonnull @.str.166, ptr noundef nonnull @init_completion.__key) #10
  %5 = ptrtoint ptr %reqsize.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %reqsize.i.i, align 32
  %add.i = add i32 %6, 128
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i, i32 noundef 3264) #15
  %tobool.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not.i, label %do.end20, label %if.end23, !prof !701

do.end20:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  %req92 = getelementptr %struct.test_mb_ahash_data, ptr %call8.i.i, i32 %i.0108, i32 2
  %7 = ptrtoint ptr %req92 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %req92, align 32
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.255, ptr noundef %algo) #13
  br label %out

if.end23:                                         ; preds = %if.end10
  %tfm1.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %call9.i.i, i32 0, i32 3
  %8 = ptrtoint ptr %tfm1.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %base.i.i.i, ptr %tfm1.i.i, align 16
  %req = getelementptr %struct.test_mb_ahash_data, ptr %call8.i.i, i32 %i.0108, i32 2
  %9 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call9.i.i, ptr %req, align 32
  %complete.i = getelementptr inbounds %struct.crypto_async_request, ptr %call9.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @crypto_req_done, ptr %complete.i, align 8
  %data2.i = getelementptr inbounds %struct.crypto_async_request, ptr %call9.i.i, i32 0, i32 2
  %11 = ptrtoint ptr %data2.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %wait, ptr %data2.i, align 4
  %flags4.i = getelementptr inbounds %struct.crypto_async_request, ptr %call9.i.i, i32 0, i32 4
  %12 = ptrtoint ptr %flags4.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %flags4.i, align 4
  tail call void @sg_init_table(ptr noundef %arrayidx, i32 noundef 8) #10
  br label %for.body32

for.body32:                                       ; preds = %sg_set_buf.exit.for.body32_crit_edge, %if.end23
  %j.0106 = phi i32 [ 0, %if.end23 ], [ %inc, %sg_set_buf.exit.for.body32_crit_edge ]
  %add.ptr = getelementptr %struct.scatterlist, ptr %arrayidx, i32 %j.0106
  %arrayidx38 = getelementptr %struct.test_mb_ahash_data, ptr %call8.i.i, i32 %i.0108, i32 4, i32 %j.0106
  %13 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx38, align 4
  %15 = ptrtoint ptr %14 to i32
  %cmp.i5 = icmp ugt ptr %14, inttoptr (i32 -1073741825 to ptr)
  br i1 %cmp.i5, label %land.lhs.true.i, label %for.body32.do.body5.i_crit_edge, !prof !703

for.body32.do.body5.i_crit_edge:                  ; preds = %for.body32
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body5.i

land.lhs.true.i:                                  ; preds = %for.body32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %16 = load ptr, ptr @high_memory, align 4
  %cmp1.i = icmp ugt ptr %16, %14
  br i1 %cmp1.i, label %land.rhs.i, label %land.lhs.true.i.do.body5.i_crit_edge, !prof !703

land.lhs.true.i.do.body5.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body5.i

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %sub.i = add i32 %15, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %17 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i6 = add i32 %17, %shr.i
  %call.i = tail call i32 @pfn_valid(i32 noundef %add.i6) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.i = icmp eq i32 %call.i, 0
  br i1 %tobool.i, label %land.rhs.i.do.body5.i_crit_edge, label %do.end8.i, !prof !701

land.rhs.i.do.body5.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body5.i

do.body5.i:                                       ; preds = %land.rhs.i.do.body5.i_crit_edge, %land.lhs.true.i.do.body5.i_crit_edge, %for.body32.do.body5.i_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 160, 0\0A.popsection", ""() #10, !srcloc !704
  unreachable

do.end8.i:                                        ; preds = %land.rhs.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %18 = load ptr, ptr @mem_map, align 4
  %add.ptr.i = getelementptr %struct.page, ptr %18, i32 %shr.i
  %19 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %add.ptr, align 4
  %21 = ptrtoint ptr %add.ptr.i to i32
  %and2.i.i.i = and i32 %21, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool.not.i.i.i7 = icmp eq i32 %and2.i.i.i, 0
  br i1 %tobool.not.i.i.i7, label %do.body11.i.i.i, label %do.body5.i.i.i, !prof !703

do.body5.i.i.i:                                   ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #10, !srcloc !705
  unreachable

do.body11.i.i.i:                                  ; preds = %do.end8.i
  %and.i.i.i.i = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.i.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i, label %sg_set_buf.exit, label %do.body19.i.i.i, !prof !703

do.body19.i.i.i:                                  ; preds = %do.body11.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #10, !srcloc !706
  unreachable

sg_set_buf.exit:                                  ; preds = %do.body11.i.i.i
  %and.i = and i32 %15, 4095
  %and.i.i.i = and i32 %20, 3
  %or.i.i.i = or i32 %and.i.i.i, %21
  %22 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %or.i.i.i, ptr %add.ptr, align 4
  %offset1.i.i = getelementptr inbounds %struct.scatterlist, ptr %add.ptr, i32 0, i32 1
  %23 = ptrtoint ptr %offset1.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %and.i, ptr %offset1.i.i, align 4
  %length.i.i = getelementptr inbounds %struct.scatterlist, ptr %add.ptr, i32 0, i32 2
  %24 = ptrtoint ptr %length.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 4096, ptr %length.i.i, align 4
  %25 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx38, align 4
  %27 = call ptr @memset(ptr %26, i32 255, i32 4096)
  %inc = add nuw nsw i32 %j.0106, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.inc42, label %sg_set_buf.exit.for.body32_crit_edge

sg_set_buf.exit.for.body32_crit_edge:             ; preds = %sg_set_buf.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body32

for.inc42:                                        ; preds = %sg_set_buf.exit
  %inc43 = add nuw i32 %i.0108, 1
  %exitcond136.not = icmp eq i32 %inc43, %num_mb
  br i1 %exitcond136.not, label %for.inc42.do.end47_crit_edge, label %for.inc42.for.body_crit_edge

for.inc42.for.body_crit_edge:                     ; preds = %for.inc42
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc42.do.end47_crit_edge:                     ; preds = %for.inc42
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end47

do.end47:                                         ; preds = %for.inc42.do.end47_crit_edge, %for.cond.preheader.do.end47_crit_edge
  %__crt_alg.i = getelementptr inbounds %struct.crypto_ahash, ptr %call1, i32 0, i32 10, i32 3
  %28 = ptrtoint ptr %__crt_alg.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %__crt_alg.i, align 4
  %cra_driver_name.i = getelementptr inbounds %struct.crypto_alg, ptr %29, i32 0, i32 9
  %call51 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.258, ptr noundef %algo, ptr noundef %cra_driver_name.i) #13
  %30 = load i32, ptr @generic_hash_speed_template, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp54.not112 = icmp eq i32 %30, 0
  br i1 %cmp54.not112, label %do.end47.out_crit_edge, label %for.body55.lr.ph

do.end47.out_crit_edge:                           ; preds = %do.end47
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

for.body55.lr.ph:                                 ; preds = %do.end47
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %secs)
  %tobool106.not = icmp eq i32 %secs, 0
  %31 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %num_mb, i32 4) #10
  %32 = extractvalue { i32, i1 } %31, 1
  %33 = extractvalue { i32, i1 } %31, 0
  %mul.neg.i = mul i32 %secs, -100
  %conv8.i = zext i32 %num_mb to i64
  %mul.i = shl i32 %num_mb, 3
  br label %for.body55

for.body55:                                       ; preds = %for.inc125.for.body55_crit_edge, %for.body55.lr.ph
  %34 = phi i32 [ %30, %for.body55.lr.ph ], [ %134, %for.inc125.for.body55_crit_edge ]
  %arrayidx53115 = phi ptr [ @generic_hash_speed_template, %for.body55.lr.ph ], [ %arrayidx53, %for.inc125.for.body55_crit_edge ]
  %i.1113 = phi i32 [ 0, %for.body55.lr.ph ], [ %inc126, %for.inc125.for.body55_crit_edge ]
  %plen = getelementptr %struct.hash_speed, ptr @generic_hash_speed_template, i32 %i.1113, i32 1
  %35 = ptrtoint ptr %plen to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %plen, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %36)
  %cmp59.not = icmp eq i32 %34, %36
  br i1 %cmp59.not, label %if.end61, label %for.body55.for.inc125_crit_edge

for.body55.for.inc125_crit_edge:                  ; preds = %for.body55
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc125

if.end61:                                         ; preds = %for.body55
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768, i32 %34)
  %cmp64 = icmp ugt i32 %34, 32768
  br i1 %cmp64, label %do.end68, label %if.end73

do.end68:                                         ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #12
  %call72 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.155, i32 noundef %34, i32 noundef 32768) #13
  br label %out

if.end73:                                         ; preds = %if.end61
  %37 = load i32, ptr @klen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool74.not = icmp eq i32 %37, 0
  br i1 %tobool74.not, label %if.end73.if.end77_crit_edge, label %if.then75

if.end73.if.end77_crit_edge:                      ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end77

if.then75:                                        ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #12
  %38 = load ptr, ptr @tvmem, align 4
  %call76 = call i32 @crypto_ahash_setkey(ptr noundef %call1, ptr noundef %38, i32 noundef %37) #10
  br label %if.end77

if.end77:                                         ; preds = %if.then75, %if.end73.if.end77_crit_edge
  br i1 %cmp107.not, label %if.end77.do.end95_crit_edge, label %if.end77.for.body80_crit_edge

if.end77.for.body80_crit_edge:                    ; preds = %if.end77
  br label %for.body80

if.end77.do.end95_crit_edge:                      ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end95

for.body80:                                       ; preds = %for.body80.for.body80_crit_edge, %if.end77.for.body80_crit_edge
  %k.0111 = phi i32 [ %inc91, %for.body80.for.body80_crit_edge ], [ 0, %if.end77.for.body80_crit_edge ]
  %arrayidx81 = getelementptr %struct.test_mb_ahash_data, ptr %call8.i.i, i32 %k.0111
  %req82 = getelementptr %struct.test_mb_ahash_data, ptr %call8.i.i, i32 %k.0111, i32 2
  %39 = ptrtoint ptr %req82 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %req82, align 32
  %result = getelementptr %struct.test_mb_ahash_data, ptr %call8.i.i, i32 %k.0111, i32 1
  %41 = ptrtoint ptr %arrayidx53115 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx53115, align 4
  %src1.i = getelementptr inbounds %struct.ahash_request, ptr %40, i32 0, i32 2
  %43 = ptrtoint ptr %src1.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %arrayidx81, ptr %src1.i, align 4
  %nbytes2.i = getelementptr inbounds %struct.ahash_request, ptr %40, i32 0, i32 1
  %44 = ptrtoint ptr %nbytes2.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %42, ptr %nbytes2.i, align 8
  %result3.i = getelementptr inbounds %struct.ahash_request, ptr %40, i32 0, i32 3
  %45 = ptrtoint ptr %result3.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %result, ptr %result3.i, align 32
  %inc91 = add nuw i32 %k.0111, 1
  %exitcond137.not = icmp eq i32 %inc91, %num_mb
  br i1 %exitcond137.not, label %for.body80.do.end95_crit_edge, label %for.body80.for.body80_crit_edge

for.body80.for.body80_crit_edge:                  ; preds = %for.body80
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body80

for.body80.do.end95_crit_edge:                    ; preds = %for.body80
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end95

do.end95:                                         ; preds = %for.body80.do.end95_crit_edge, %if.end77.do.end95_crit_edge
  %46 = ptrtoint ptr %arrayidx53115 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx53115, align 4
  %48 = ptrtoint ptr %plen to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %plen, align 4
  %div = udiv i32 %47, %49
  %call105 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.241, i32 noundef %i.1113, i32 noundef %47, i32 noundef %49, i32 noundef %div) #13
  %50 = ptrtoint ptr %arrayidx53115 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx53115, align 4
  br i1 %tobool106.not, label %if.else, label %if.then107

if.then107:                                       ; preds = %do.end95
  br i1 %32, label %if.then107.test_mb_ahash_jiffies.exit_crit_edge, label %if.end7.i.i.i, !prof !701

if.then107.test_mb_ahash_jiffies.exit_crit_edge:  ; preds = %if.then107
  call void @__sanitizer_cov_trace_pc() #12
  br label %test_mb_ahash_jiffies.exit

if.end7.i.i.i:                                    ; preds = %if.then107
  %call8.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %33, i32 noundef 3520) #15
  %tobool.not.i12 = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool.not.i12, label %if.end7.i.i.i.test_mb_ahash_jiffies.exit_crit_edge, label %if.end.i

if.end7.i.i.i.test_mb_ahash_jiffies.exit_crit_edge: ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %test_mb_ahash_jiffies.exit

if.end.i:                                         ; preds = %if.end7.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %52 = load volatile i32, ptr @jiffies, align 128
  %add.neg.i = sub i32 %mul.neg.i, %52
  %53 = load volatile i32, ptr @jiffies, align 128
  %sub33.i = add i32 %add.neg.i, %53
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub33.i)
  %cmp34.i = icmp slt i32 %sub33.i, 0
  br i1 %cmp34.i, label %if.end.i.for.body.i_crit_edge, label %if.end.i.do.end.i_crit_edge

if.end.i.do.end.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %bcount.035.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end.i.for.body.i_crit_edge ]
  br i1 %cmp107.not, label %for.body.i.for.inc.i_crit_edge, label %for.body.i.for.body.i.i_crit_edge

for.body.i.for.body.i.i_crit_edge:                ; preds = %for.body.i
  br label %for.body.i.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.i.for.body.i.i_crit_edge
  %i.036.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %for.body.i.for.body.i.i_crit_edge ]
  %req.i.i = getelementptr %struct.test_mb_ahash_data, ptr %call8.i.i, i32 %i.036.i.i, i32 2
  %54 = ptrtoint ptr %req.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %req.i.i, align 32
  %call.i.i = call i32 @crypto_ahash_digest(ptr noundef %55) #10
  %arrayidx1.i.i = getelementptr i32, ptr %call8.i.i.i, i32 %i.036.i.i
  %56 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %call.i.i, ptr %arrayidx1.i.i, align 4
  %inc.i.i = add nuw i32 %i.036.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %num_mb
  br i1 %exitcond.not.i.i, label %for.body.i.i.for.body4.i.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

for.body.i.i.for.body4.i.i_crit_edge:             ; preds = %for.body.i.i
  br label %for.body4.i.i

for.body4.i.i:                                    ; preds = %for.inc13.i.i.for.body4.i.i_crit_edge, %for.body.i.i.for.body4.i.i_crit_edge
  %i.139.i.i = phi i32 [ %inc14.i.i, %for.inc13.i.i.for.body4.i.i_crit_edge ], [ 0, %for.body.i.i.for.body4.i.i_crit_edge ]
  %err.038.i.i = phi i32 [ %err.1.i.i, %for.inc13.i.i.for.body4.i.i_crit_edge ], [ 0, %for.body.i.i.for.body4.i.i_crit_edge ]
  %arrayidx5.i.i = getelementptr i32, ptr %call8.i.i.i, i32 %i.139.i.i
  %57 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx5.i.i, align 4
  %59 = zext i32 %58 to i64
  call void @__sanitizer_cov_trace_switch(i64 %59, ptr @__sancov_gen_cov_switch_values.311)
  switch i32 %58, label %for.body4.i.i.crypto_wait_req.exit.i.i_crit_edge [
    i32 -115, label %for.body4.i.i.sw.bb.i.i.i_crit_edge
    i32 -16, label %for.body4.i.i.sw.bb.i.i.i_crit_edge175
  ]

for.body4.i.i.sw.bb.i.i.i_crit_edge175:           ; preds = %for.body4.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i.i.i

for.body4.i.i.sw.bb.i.i.i_crit_edge:              ; preds = %for.body4.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i.i.i

for.body4.i.i.crypto_wait_req.exit.i.i_crit_edge: ; preds = %for.body4.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %crypto_wait_req.exit.i.i

sw.bb.i.i.i:                                      ; preds = %for.body4.i.i.sw.bb.i.i.i_crit_edge, %for.body4.i.i.sw.bb.i.i.i_crit_edge175
  %wait.i.i13 = getelementptr %struct.test_mb_ahash_data, ptr %call8.i.i, i32 %i.139.i.i, i32 3
  call void @wait_for_completion(ptr noundef %wait.i.i13) #10
  %60 = ptrtoint ptr %wait.i.i13 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 0, ptr %wait.i.i13, align 4
  %err2.i.i.i = getelementptr %struct.test_mb_ahash_data, ptr %call8.i.i, i32 %i.139.i.i, i32 3, i32 1
  %61 = ptrtoint ptr %err2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %err2.i.i.i, align 4
  br label %crypto_wait_req.exit.i.i

crypto_wait_req.exit.i.i:                         ; preds = %sw.bb.i.i.i, %for.body4.i.i.crypto_wait_req.exit.i.i_crit_edge
  %err.addr.0.i.i.i = phi i32 [ %58, %for.body4.i.i.crypto_wait_req.exit.i.i_crit_edge ], [ %62, %sw.bb.i.i.i ]
  %63 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %err.addr.0.i.i.i, ptr %arrayidx5.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.addr.0.i.i.i)
  %tobool.not.i.i = icmp eq i32 %err.addr.0.i.i.i, 0
  br i1 %tobool.not.i.i, label %crypto_wait_req.exit.i.i.for.inc13.i.i_crit_edge, label %do.end.i.i

crypto_wait_req.exit.i.i.for.inc13.i.i_crit_edge: ; preds = %crypto_wait_req.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc13.i.i

do.end.i.i:                                       ; preds = %crypto_wait_req.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call11.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.225, i32 noundef %i.139.i.i, i32 noundef %err.addr.0.i.i.i) #13
  %64 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx5.i.i, align 4
  br label %for.inc13.i.i

for.inc13.i.i:                                    ; preds = %do.end.i.i, %crypto_wait_req.exit.i.i.for.inc13.i.i_crit_edge
  %err.1.i.i = phi i32 [ %65, %do.end.i.i ], [ %err.038.i.i, %crypto_wait_req.exit.i.i.for.inc13.i.i_crit_edge ]
  %inc14.i.i = add nuw i32 %i.139.i.i, 1
  %exitcond42.not.i.i = icmp eq i32 %inc14.i.i, %num_mb
  br i1 %exitcond42.not.i.i, label %do_mult_ahash_op.exit.i, label %for.inc13.i.i.for.body4.i.i_crit_edge

for.inc13.i.i.for.body4.i.i_crit_edge:            ; preds = %for.inc13.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body4.i.i

do_mult_ahash_op.exit.i:                          ; preds = %for.inc13.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1.i.i)
  %tobool2.not.i = icmp eq i32 %err.1.i.i, 0
  br i1 %tobool2.not.i, label %do_mult_ahash_op.exit.i.for.inc.i_crit_edge, label %do_mult_ahash_op.exit.i.out.i_crit_edge

do_mult_ahash_op.exit.i.out.i_crit_edge:          ; preds = %do_mult_ahash_op.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i

do_mult_ahash_op.exit.i.for.inc.i_crit_edge:      ; preds = %do_mult_ahash_op.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

for.inc.i:                                        ; preds = %do_mult_ahash_op.exit.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add i32 %bcount.035.i, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %66 = load volatile i32, ptr @jiffies, align 128
  %sub.i14 = add i32 %66, %add.neg.i
  %cmp.i15 = icmp slt i32 %sub.i14, 0
  br i1 %cmp.i15, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.do.end.i_crit_edge

for.inc.i.do.end.i_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

do.end.i:                                         ; preds = %for.inc.i.do.end.i_crit_edge, %if.end.i.do.end.i_crit_edge
  %bcount.0.lcssa.i = phi i32 [ 0, %if.end.i.do.end.i_crit_edge ], [ %inc.i, %for.inc.i.do.end.i_crit_edge ]
  %mul5.i = mul i32 %bcount.0.lcssa.i, %num_mb
  %conv.i = sext i32 %bcount.0.lcssa.i to i64
  %conv6.i = sext i32 %51 to i64
  %mul7.i = mul nsw i64 %conv6.i, %conv8.i
  %mul9.i = mul i64 %mul7.i, %conv.i
  %call10.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.167, i32 noundef %mul5.i, i32 noundef %secs, i64 noundef %mul9.i) #13
  br label %out.i

out.i:                                            ; preds = %do.end.i, %do_mult_ahash_op.exit.i.out.i_crit_edge
  %ret.1.i = phi i32 [ 0, %do.end.i ], [ %err.1.i.i, %do_mult_ahash_op.exit.i.out.i_crit_edge ]
  call void @kfree(ptr noundef nonnull %call8.i.i.i) #10
  br label %test_mb_ahash_jiffies.exit

test_mb_ahash_jiffies.exit:                       ; preds = %out.i, %if.end7.i.i.i.test_mb_ahash_jiffies.exit_crit_edge, %if.then107.test_mb_ahash_jiffies.exit_crit_edge
  %retval.0.i = phi i32 [ %ret.1.i, %out.i ], [ -12, %if.end7.i.i.i.test_mb_ahash_jiffies.exit_crit_edge ], [ -12, %if.then107.test_mb_ahash_jiffies.exit_crit_edge ]
  call void @__might_resched(ptr noundef nonnull @.str.2, i32 noundef 896, i32 noundef 0) #10
  %call.i16 = call i32 @__cond_resched() #10
  br label %if.end116

if.else:                                          ; preds = %do.end95
  br i1 %32, label %if.else.do.end121_crit_edge, label %if.end7.i.i.i47, !prof !701

if.else.do.end121_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end121

if.end7.i.i.i47:                                  ; preds = %if.else
  %call8.i.i.i46 = call noalias align 128 ptr @__kmalloc(i32 noundef %33, i32 noundef 3520) #15
  %tobool.not.i49 = icmp eq ptr %call8.i.i.i46, null
  br i1 %tobool.not.i49, label %if.end7.i.i.i47.do.end121_crit_edge, label %for.cond.preheader.i

if.end7.i.i.i47.do.end121_crit_edge:              ; preds = %if.end7.i.i.i47
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end121

for.cond.preheader.i:                             ; preds = %if.end7.i.i.i47
  br i1 %cmp107.not, label %for.cond.preheader.i.for.body7.i.preheader_crit_edge, label %for.cond.preheader.i.for.body.i.i58_crit_edge

for.cond.preheader.i.for.body.i.i58_crit_edge:    ; preds = %for.cond.preheader.i
  br label %for.body.i.i58

for.cond.preheader.i.for.body7.i.preheader_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body7.i.preheader

for.body.i.i58:                                   ; preds = %for.body.i.i58.for.body.i.i58_crit_edge, %for.cond.preheader.i.for.body.i.i58_crit_edge
  %i.036.i.i52 = phi i32 [ %inc.i.i56, %for.body.i.i58.for.body.i.i58_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i.i58_crit_edge ]
  %req.i.i53 = getelementptr %struct.test_mb_ahash_data, ptr %call8.i.i, i32 %i.036.i.i52, i32 2
  %67 = ptrtoint ptr %req.i.i53 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %req.i.i53, align 32
  %call.i.i54 = call i32 @crypto_ahash_digest(ptr noundef %68) #10
  %arrayidx1.i.i55 = getelementptr i32, ptr %call8.i.i.i46, i32 %i.036.i.i52
  %69 = ptrtoint ptr %arrayidx1.i.i55 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %call.i.i54, ptr %arrayidx1.i.i55, align 4
  %inc.i.i56 = add nuw i32 %i.036.i.i52, 1
  %exitcond.not.i.i57 = icmp eq i32 %inc.i.i56, %num_mb
  br i1 %exitcond.not.i.i57, label %for.body.i.i58.for.body4.i.i62_crit_edge, label %for.body.i.i58.for.body.i.i58_crit_edge

for.body.i.i58.for.body.i.i58_crit_edge:          ; preds = %for.body.i.i58
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i58

for.body.i.i58.for.body4.i.i62_crit_edge:         ; preds = %for.body.i.i58
  br label %for.body4.i.i62

for.body4.i.i62:                                  ; preds = %for.inc13.i.i74.for.body4.i.i62_crit_edge, %for.body.i.i58.for.body4.i.i62_crit_edge
  %i.139.i.i59 = phi i32 [ %inc14.i.i72, %for.inc13.i.i74.for.body4.i.i62_crit_edge ], [ 0, %for.body.i.i58.for.body4.i.i62_crit_edge ]
  %err.038.i.i60 = phi i32 [ %err.1.i.i71, %for.inc13.i.i74.for.body4.i.i62_crit_edge ], [ 0, %for.body.i.i58.for.body4.i.i62_crit_edge ]
  %arrayidx5.i.i61 = getelementptr i32, ptr %call8.i.i.i46, i32 %i.139.i.i59
  %70 = ptrtoint ptr %arrayidx5.i.i61 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx5.i.i61, align 4
  %72 = zext i32 %71 to i64
  call void @__sanitizer_cov_trace_switch(i64 %72, ptr @__sancov_gen_cov_switch_values.312)
  switch i32 %71, label %for.body4.i.i62.crypto_wait_req.exit.i.i68_crit_edge [
    i32 -115, label %for.body4.i.i62.sw.bb.i.i.i65_crit_edge
    i32 -16, label %for.body4.i.i62.sw.bb.i.i.i65_crit_edge176
  ]

for.body4.i.i62.sw.bb.i.i.i65_crit_edge176:       ; preds = %for.body4.i.i62
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i.i.i65

for.body4.i.i62.sw.bb.i.i.i65_crit_edge:          ; preds = %for.body4.i.i62
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i.i.i65

for.body4.i.i62.crypto_wait_req.exit.i.i68_crit_edge: ; preds = %for.body4.i.i62
  call void @__sanitizer_cov_trace_pc() #12
  br label %crypto_wait_req.exit.i.i68

sw.bb.i.i.i65:                                    ; preds = %for.body4.i.i62.sw.bb.i.i.i65_crit_edge, %for.body4.i.i62.sw.bb.i.i.i65_crit_edge176
  %wait.i.i63 = getelementptr %struct.test_mb_ahash_data, ptr %call8.i.i, i32 %i.139.i.i59, i32 3
  call void @wait_for_completion(ptr noundef %wait.i.i63) #10
  %73 = ptrtoint ptr %wait.i.i63 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 0, ptr %wait.i.i63, align 4
  %err2.i.i.i64 = getelementptr %struct.test_mb_ahash_data, ptr %call8.i.i, i32 %i.139.i.i59, i32 3, i32 1
  %74 = ptrtoint ptr %err2.i.i.i64 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %err2.i.i.i64, align 4
  br label %crypto_wait_req.exit.i.i68

crypto_wait_req.exit.i.i68:                       ; preds = %sw.bb.i.i.i65, %for.body4.i.i62.crypto_wait_req.exit.i.i68_crit_edge
  %err.addr.0.i.i.i66 = phi i32 [ %71, %for.body4.i.i62.crypto_wait_req.exit.i.i68_crit_edge ], [ %75, %sw.bb.i.i.i65 ]
  %76 = ptrtoint ptr %arrayidx5.i.i61 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %err.addr.0.i.i.i66, ptr %arrayidx5.i.i61, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.addr.0.i.i.i66)
  %tobool.not.i.i67 = icmp eq i32 %err.addr.0.i.i.i66, 0
  br i1 %tobool.not.i.i67, label %crypto_wait_req.exit.i.i68.for.inc13.i.i74_crit_edge, label %do.end.i.i70

crypto_wait_req.exit.i.i68.for.inc13.i.i74_crit_edge: ; preds = %crypto_wait_req.exit.i.i68
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc13.i.i74

do.end.i.i70:                                     ; preds = %crypto_wait_req.exit.i.i68
  call void @__sanitizer_cov_trace_pc() #12
  %call11.i.i69 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.225, i32 noundef %i.139.i.i59, i32 noundef %err.addr.0.i.i.i66) #13
  %77 = ptrtoint ptr %arrayidx5.i.i61 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %arrayidx5.i.i61, align 4
  br label %for.inc13.i.i74

for.inc13.i.i74:                                  ; preds = %do.end.i.i70, %crypto_wait_req.exit.i.i68.for.inc13.i.i74_crit_edge
  %err.1.i.i71 = phi i32 [ %78, %do.end.i.i70 ], [ %err.038.i.i60, %crypto_wait_req.exit.i.i68.for.inc13.i.i74_crit_edge ]
  %inc14.i.i72 = add nuw i32 %i.139.i.i59, 1
  %exitcond42.not.i.i73 = icmp eq i32 %inc14.i.i72, %num_mb
  br i1 %exitcond42.not.i.i73, label %do_mult_ahash_op.exit.i76, label %for.inc13.i.i74.for.body4.i.i62_crit_edge

for.inc13.i.i74.for.body4.i.i62_crit_edge:        ; preds = %for.inc13.i.i74
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body4.i.i62

do_mult_ahash_op.exit.i76:                        ; preds = %for.inc13.i.i74
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1.i.i71)
  %tobool2.not.i75 = icmp eq i32 %err.1.i.i71, 0
  br i1 %tobool2.not.i75, label %do_mult_ahash_op.exit.i76.for.body.i.1.i_crit_edge, label %do_mult_ahash_op.exit.i76.out.i81_crit_edge

do_mult_ahash_op.exit.i76.out.i81_crit_edge:      ; preds = %do_mult_ahash_op.exit.i76
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i81

do_mult_ahash_op.exit.i76.for.body.i.1.i_crit_edge: ; preds = %do_mult_ahash_op.exit.i76
  br label %for.body.i.1.i

for.body.i.1.i:                                   ; preds = %for.body.i.1.i.for.body.i.1.i_crit_edge, %do_mult_ahash_op.exit.i76.for.body.i.1.i_crit_edge
  %i.036.i.1.i = phi i32 [ %inc.i.1.i, %for.body.i.1.i.for.body.i.1.i_crit_edge ], [ 0, %do_mult_ahash_op.exit.i76.for.body.i.1.i_crit_edge ]
  %req.i.1.i = getelementptr %struct.test_mb_ahash_data, ptr %call8.i.i, i32 %i.036.i.1.i, i32 2
  %79 = ptrtoint ptr %req.i.1.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %req.i.1.i, align 32
  %call.i.1.i = call i32 @crypto_ahash_digest(ptr noundef %80) #10
  %arrayidx1.i.1.i = getelementptr i32, ptr %call8.i.i.i46, i32 %i.036.i.1.i
  %81 = ptrtoint ptr %arrayidx1.i.1.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %call.i.1.i, ptr %arrayidx1.i.1.i, align 4
  %inc.i.1.i = add nuw i32 %i.036.i.1.i, 1
  %exitcond.not.i.1.i = icmp eq i32 %inc.i.1.i, %num_mb
  br i1 %exitcond.not.i.1.i, label %for.body.i.1.i.for.body4.i.1.i_crit_edge, label %for.body.i.1.i.for.body.i.1.i_crit_edge

for.body.i.1.i.for.body.i.1.i_crit_edge:          ; preds = %for.body.i.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.1.i

for.body.i.1.i.for.body4.i.1.i_crit_edge:         ; preds = %for.body.i.1.i
  br label %for.body4.i.1.i

for.body4.i.1.i:                                  ; preds = %for.inc13.i.1.i.for.body4.i.1.i_crit_edge, %for.body.i.1.i.for.body4.i.1.i_crit_edge
  %i.139.i.1.i = phi i32 [ %inc14.i.1.i, %for.inc13.i.1.i.for.body4.i.1.i_crit_edge ], [ 0, %for.body.i.1.i.for.body4.i.1.i_crit_edge ]
  %err.038.i.1.i = phi i32 [ %err.1.i.1.i, %for.inc13.i.1.i.for.body4.i.1.i_crit_edge ], [ 0, %for.body.i.1.i.for.body4.i.1.i_crit_edge ]
  %arrayidx5.i.1.i = getelementptr i32, ptr %call8.i.i.i46, i32 %i.139.i.1.i
  %82 = ptrtoint ptr %arrayidx5.i.1.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %arrayidx5.i.1.i, align 4
  %84 = zext i32 %83 to i64
  call void @__sanitizer_cov_trace_switch(i64 %84, ptr @__sancov_gen_cov_switch_values.313)
  switch i32 %83, label %for.body4.i.1.i.crypto_wait_req.exit.i.1.i_crit_edge [
    i32 -115, label %for.body4.i.1.i.sw.bb.i.i.1.i_crit_edge
    i32 -16, label %for.body4.i.1.i.sw.bb.i.i.1.i_crit_edge177
  ]

for.body4.i.1.i.sw.bb.i.i.1.i_crit_edge177:       ; preds = %for.body4.i.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i.i.1.i

for.body4.i.1.i.sw.bb.i.i.1.i_crit_edge:          ; preds = %for.body4.i.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i.i.1.i

for.body4.i.1.i.crypto_wait_req.exit.i.1.i_crit_edge: ; preds = %for.body4.i.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %crypto_wait_req.exit.i.1.i

sw.bb.i.i.1.i:                                    ; preds = %for.body4.i.1.i.sw.bb.i.i.1.i_crit_edge, %for.body4.i.1.i.sw.bb.i.i.1.i_crit_edge177
  %wait.i.1.i = getelementptr %struct.test_mb_ahash_data, ptr %call8.i.i, i32 %i.139.i.1.i, i32 3
  call void @wait_for_completion(ptr noundef %wait.i.1.i) #10
  %85 = ptrtoint ptr %wait.i.1.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 0, ptr %wait.i.1.i, align 4
  %err2.i.i.1.i = getelementptr %struct.test_mb_ahash_data, ptr %call8.i.i, i32 %i.139.i.1.i, i32 3, i32 1
  %86 = ptrtoint ptr %err2.i.i.1.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %err2.i.i.1.i, align 4
  br label %crypto_wait_req.exit.i.1.i

crypto_wait_req.exit.i.1.i:                       ; preds = %sw.bb.i.i.1.i, %for.body4.i.1.i.crypto_wait_req.exit.i.1.i_crit_edge
  %err.addr.0.i.i.1.i = phi i32 [ %83, %for.body4.i.1.i.crypto_wait_req.exit.i.1.i_crit_edge ], [ %87, %sw.bb.i.i.1.i ]
  %88 = ptrtoint ptr %arrayidx5.i.1.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %err.addr.0.i.i.1.i, ptr %arrayidx5.i.1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.addr.0.i.i.1.i)
  %tobool.not.i.1.i = icmp eq i32 %err.addr.0.i.i.1.i, 0
  br i1 %tobool.not.i.1.i, label %crypto_wait_req.exit.i.1.i.for.inc13.i.1.i_crit_edge, label %do.end.i.1.i

crypto_wait_req.exit.i.1.i.for.inc13.i.1.i_crit_edge: ; preds = %crypto_wait_req.exit.i.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc13.i.1.i

do.end.i.1.i:                                     ; preds = %crypto_wait_req.exit.i.1.i
  call void @__sanitizer_cov_trace_pc() #12
  %call11.i.1.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.225, i32 noundef %i.139.i.1.i, i32 noundef %err.addr.0.i.i.1.i) #13
  %89 = ptrtoint ptr %arrayidx5.i.1.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %arrayidx5.i.1.i, align 4
  br label %for.inc13.i.1.i

for.inc13.i.1.i:                                  ; preds = %do.end.i.1.i, %crypto_wait_req.exit.i.1.i.for.inc13.i.1.i_crit_edge
  %err.1.i.1.i = phi i32 [ %90, %do.end.i.1.i ], [ %err.038.i.1.i, %crypto_wait_req.exit.i.1.i.for.inc13.i.1.i_crit_edge ]
  %inc14.i.1.i = add nuw i32 %i.139.i.1.i, 1
  %exitcond42.not.i.1.i = icmp eq i32 %inc14.i.1.i, %num_mb
  br i1 %exitcond42.not.i.1.i, label %do_mult_ahash_op.exit.1.i, label %for.inc13.i.1.i.for.body4.i.1.i_crit_edge

for.inc13.i.1.i.for.body4.i.1.i_crit_edge:        ; preds = %for.inc13.i.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body4.i.1.i

do_mult_ahash_op.exit.1.i:                        ; preds = %for.inc13.i.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1.i.1.i)
  %tobool2.not.1.i = icmp eq i32 %err.1.i.1.i, 0
  br i1 %tobool2.not.1.i, label %do_mult_ahash_op.exit.1.i.for.body.i.2.i_crit_edge, label %do_mult_ahash_op.exit.1.i.out.i81_crit_edge

do_mult_ahash_op.exit.1.i.out.i81_crit_edge:      ; preds = %do_mult_ahash_op.exit.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i81

do_mult_ahash_op.exit.1.i.for.body.i.2.i_crit_edge: ; preds = %do_mult_ahash_op.exit.1.i
  br label %for.body.i.2.i

for.body.i.2.i:                                   ; preds = %for.body.i.2.i.for.body.i.2.i_crit_edge, %do_mult_ahash_op.exit.1.i.for.body.i.2.i_crit_edge
  %i.036.i.2.i = phi i32 [ %inc.i.2.i, %for.body.i.2.i.for.body.i.2.i_crit_edge ], [ 0, %do_mult_ahash_op.exit.1.i.for.body.i.2.i_crit_edge ]
  %req.i.2.i = getelementptr %struct.test_mb_ahash_data, ptr %call8.i.i, i32 %i.036.i.2.i, i32 2
  %91 = ptrtoint ptr %req.i.2.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %req.i.2.i, align 32
  %call.i.2.i = call i32 @crypto_ahash_digest(ptr noundef %92) #10
  %arrayidx1.i.2.i = getelementptr i32, ptr %call8.i.i.i46, i32 %i.036.i.2.i
  %93 = ptrtoint ptr %arrayidx1.i.2.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %call.i.2.i, ptr %arrayidx1.i.2.i, align 4
  %inc.i.2.i = add nuw i32 %i.036.i.2.i, 1
  %exitcond.not.i.2.i = icmp eq i32 %inc.i.2.i, %num_mb
  br i1 %exitcond.not.i.2.i, label %for.body.i.2.i.for.body4.i.2.i_crit_edge, label %for.body.i.2.i.for.body.i.2.i_crit_edge

for.body.i.2.i.for.body.i.2.i_crit_edge:          ; preds = %for.body.i.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.2.i

for.body.i.2.i.for.body4.i.2.i_crit_edge:         ; preds = %for.body.i.2.i
  br label %for.body4.i.2.i

for.body4.i.2.i:                                  ; preds = %for.inc13.i.2.i.for.body4.i.2.i_crit_edge, %for.body.i.2.i.for.body4.i.2.i_crit_edge
  %i.139.i.2.i = phi i32 [ %inc14.i.2.i, %for.inc13.i.2.i.for.body4.i.2.i_crit_edge ], [ 0, %for.body.i.2.i.for.body4.i.2.i_crit_edge ]
  %err.038.i.2.i = phi i32 [ %err.1.i.2.i, %for.inc13.i.2.i.for.body4.i.2.i_crit_edge ], [ 0, %for.body.i.2.i.for.body4.i.2.i_crit_edge ]
  %arrayidx5.i.2.i = getelementptr i32, ptr %call8.i.i.i46, i32 %i.139.i.2.i
  %94 = ptrtoint ptr %arrayidx5.i.2.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %arrayidx5.i.2.i, align 4
  %96 = zext i32 %95 to i64
  call void @__sanitizer_cov_trace_switch(i64 %96, ptr @__sancov_gen_cov_switch_values.314)
  switch i32 %95, label %for.body4.i.2.i.crypto_wait_req.exit.i.2.i_crit_edge [
    i32 -115, label %for.body4.i.2.i.sw.bb.i.i.2.i_crit_edge
    i32 -16, label %for.body4.i.2.i.sw.bb.i.i.2.i_crit_edge178
  ]

for.body4.i.2.i.sw.bb.i.i.2.i_crit_edge178:       ; preds = %for.body4.i.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i.i.2.i

for.body4.i.2.i.sw.bb.i.i.2.i_crit_edge:          ; preds = %for.body4.i.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i.i.2.i

for.body4.i.2.i.crypto_wait_req.exit.i.2.i_crit_edge: ; preds = %for.body4.i.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %crypto_wait_req.exit.i.2.i

sw.bb.i.i.2.i:                                    ; preds = %for.body4.i.2.i.sw.bb.i.i.2.i_crit_edge, %for.body4.i.2.i.sw.bb.i.i.2.i_crit_edge178
  %wait.i.2.i = getelementptr %struct.test_mb_ahash_data, ptr %call8.i.i, i32 %i.139.i.2.i, i32 3
  call void @wait_for_completion(ptr noundef %wait.i.2.i) #10
  %97 = ptrtoint ptr %wait.i.2.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 0, ptr %wait.i.2.i, align 4
  %err2.i.i.2.i = getelementptr %struct.test_mb_ahash_data, ptr %call8.i.i, i32 %i.139.i.2.i, i32 3, i32 1
  %98 = ptrtoint ptr %err2.i.i.2.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %err2.i.i.2.i, align 4
  br label %crypto_wait_req.exit.i.2.i

crypto_wait_req.exit.i.2.i:                       ; preds = %sw.bb.i.i.2.i, %for.body4.i.2.i.crypto_wait_req.exit.i.2.i_crit_edge
  %err.addr.0.i.i.2.i = phi i32 [ %95, %for.body4.i.2.i.crypto_wait_req.exit.i.2.i_crit_edge ], [ %99, %sw.bb.i.i.2.i ]
  %100 = ptrtoint ptr %arrayidx5.i.2.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %err.addr.0.i.i.2.i, ptr %arrayidx5.i.2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.addr.0.i.i.2.i)
  %tobool.not.i.2.i = icmp eq i32 %err.addr.0.i.i.2.i, 0
  br i1 %tobool.not.i.2.i, label %crypto_wait_req.exit.i.2.i.for.inc13.i.2.i_crit_edge, label %do.end.i.2.i

crypto_wait_req.exit.i.2.i.for.inc13.i.2.i_crit_edge: ; preds = %crypto_wait_req.exit.i.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc13.i.2.i

do.end.i.2.i:                                     ; preds = %crypto_wait_req.exit.i.2.i
  call void @__sanitizer_cov_trace_pc() #12
  %call11.i.2.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.225, i32 noundef %i.139.i.2.i, i32 noundef %err.addr.0.i.i.2.i) #13
  %101 = ptrtoint ptr %arrayidx5.i.2.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %arrayidx5.i.2.i, align 4
  br label %for.inc13.i.2.i

for.inc13.i.2.i:                                  ; preds = %do.end.i.2.i, %crypto_wait_req.exit.i.2.i.for.inc13.i.2.i_crit_edge
  %err.1.i.2.i = phi i32 [ %102, %do.end.i.2.i ], [ %err.038.i.2.i, %crypto_wait_req.exit.i.2.i.for.inc13.i.2.i_crit_edge ]
  %inc14.i.2.i = add nuw i32 %i.139.i.2.i, 1
  %exitcond42.not.i.2.i = icmp eq i32 %inc14.i.2.i, %num_mb
  br i1 %exitcond42.not.i.2.i, label %do_mult_ahash_op.exit.2.i, label %for.inc13.i.2.i.for.body4.i.2.i_crit_edge

for.inc13.i.2.i.for.body4.i.2.i_crit_edge:        ; preds = %for.inc13.i.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body4.i.2.i

do_mult_ahash_op.exit.2.i:                        ; preds = %for.inc13.i.2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1.i.2.i)
  %tobool2.not.2.i = icmp eq i32 %err.1.i.2.i, 0
  br i1 %tobool2.not.2.i, label %do_mult_ahash_op.exit.2.i.for.body.i.3.i_crit_edge, label %do_mult_ahash_op.exit.2.i.out.i81_crit_edge

do_mult_ahash_op.exit.2.i.out.i81_crit_edge:      ; preds = %do_mult_ahash_op.exit.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i81

do_mult_ahash_op.exit.2.i.for.body.i.3.i_crit_edge: ; preds = %do_mult_ahash_op.exit.2.i
  br label %for.body.i.3.i

for.body.i.3.i:                                   ; preds = %for.body.i.3.i.for.body.i.3.i_crit_edge, %do_mult_ahash_op.exit.2.i.for.body.i.3.i_crit_edge
  %i.036.i.3.i = phi i32 [ %inc.i.3.i, %for.body.i.3.i.for.body.i.3.i_crit_edge ], [ 0, %do_mult_ahash_op.exit.2.i.for.body.i.3.i_crit_edge ]
  %req.i.3.i = getelementptr %struct.test_mb_ahash_data, ptr %call8.i.i, i32 %i.036.i.3.i, i32 2
  %103 = ptrtoint ptr %req.i.3.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %req.i.3.i, align 32
  %call.i.3.i = call i32 @crypto_ahash_digest(ptr noundef %104) #10
  %arrayidx1.i.3.i = getelementptr i32, ptr %call8.i.i.i46, i32 %i.036.i.3.i
  %105 = ptrtoint ptr %arrayidx1.i.3.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %call.i.3.i, ptr %arrayidx1.i.3.i, align 4
  %inc.i.3.i = add nuw i32 %i.036.i.3.i, 1
  %exitcond.not.i.3.i = icmp eq i32 %inc.i.3.i, %num_mb
  br i1 %exitcond.not.i.3.i, label %for.body.i.3.i.for.body4.i.3.i_crit_edge, label %for.body.i.3.i.for.body.i.3.i_crit_edge

for.body.i.3.i.for.body.i.3.i_crit_edge:          ; preds = %for.body.i.3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.3.i

for.body.i.3.i.for.body4.i.3.i_crit_edge:         ; preds = %for.body.i.3.i
  br label %for.body4.i.3.i

for.body4.i.3.i:                                  ; preds = %for.inc13.i.3.i.for.body4.i.3.i_crit_edge, %for.body.i.3.i.for.body4.i.3.i_crit_edge
  %i.139.i.3.i = phi i32 [ %inc14.i.3.i, %for.inc13.i.3.i.for.body4.i.3.i_crit_edge ], [ 0, %for.body.i.3.i.for.body4.i.3.i_crit_edge ]
  %err.038.i.3.i = phi i32 [ %err.1.i.3.i, %for.inc13.i.3.i.for.body4.i.3.i_crit_edge ], [ 0, %for.body.i.3.i.for.body4.i.3.i_crit_edge ]
  %arrayidx5.i.3.i = getelementptr i32, ptr %call8.i.i.i46, i32 %i.139.i.3.i
  %106 = ptrtoint ptr %arrayidx5.i.3.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %arrayidx5.i.3.i, align 4
  %108 = zext i32 %107 to i64
  call void @__sanitizer_cov_trace_switch(i64 %108, ptr @__sancov_gen_cov_switch_values.315)
  switch i32 %107, label %for.body4.i.3.i.crypto_wait_req.exit.i.3.i_crit_edge [
    i32 -115, label %for.body4.i.3.i.sw.bb.i.i.3.i_crit_edge
    i32 -16, label %for.body4.i.3.i.sw.bb.i.i.3.i_crit_edge179
  ]

for.body4.i.3.i.sw.bb.i.i.3.i_crit_edge179:       ; preds = %for.body4.i.3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i.i.3.i

for.body4.i.3.i.sw.bb.i.i.3.i_crit_edge:          ; preds = %for.body4.i.3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i.i.3.i

for.body4.i.3.i.crypto_wait_req.exit.i.3.i_crit_edge: ; preds = %for.body4.i.3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %crypto_wait_req.exit.i.3.i

sw.bb.i.i.3.i:                                    ; preds = %for.body4.i.3.i.sw.bb.i.i.3.i_crit_edge, %for.body4.i.3.i.sw.bb.i.i.3.i_crit_edge179
  %wait.i.3.i = getelementptr %struct.test_mb_ahash_data, ptr %call8.i.i, i32 %i.139.i.3.i, i32 3
  call void @wait_for_completion(ptr noundef %wait.i.3.i) #10
  %109 = ptrtoint ptr %wait.i.3.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 0, ptr %wait.i.3.i, align 4
  %err2.i.i.3.i = getelementptr %struct.test_mb_ahash_data, ptr %call8.i.i, i32 %i.139.i.3.i, i32 3, i32 1
  %110 = ptrtoint ptr %err2.i.i.3.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %err2.i.i.3.i, align 4
  br label %crypto_wait_req.exit.i.3.i

crypto_wait_req.exit.i.3.i:                       ; preds = %sw.bb.i.i.3.i, %for.body4.i.3.i.crypto_wait_req.exit.i.3.i_crit_edge
  %err.addr.0.i.i.3.i = phi i32 [ %107, %for.body4.i.3.i.crypto_wait_req.exit.i.3.i_crit_edge ], [ %111, %sw.bb.i.i.3.i ]
  %112 = ptrtoint ptr %arrayidx5.i.3.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %err.addr.0.i.i.3.i, ptr %arrayidx5.i.3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.addr.0.i.i.3.i)
  %tobool.not.i.3.i = icmp eq i32 %err.addr.0.i.i.3.i, 0
  br i1 %tobool.not.i.3.i, label %crypto_wait_req.exit.i.3.i.for.inc13.i.3.i_crit_edge, label %do.end.i.3.i

crypto_wait_req.exit.i.3.i.for.inc13.i.3.i_crit_edge: ; preds = %crypto_wait_req.exit.i.3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc13.i.3.i

do.end.i.3.i:                                     ; preds = %crypto_wait_req.exit.i.3.i
  call void @__sanitizer_cov_trace_pc() #12
  %call11.i.3.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.225, i32 noundef %i.139.i.3.i, i32 noundef %err.addr.0.i.i.3.i) #13
  %113 = ptrtoint ptr %arrayidx5.i.3.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %arrayidx5.i.3.i, align 4
  br label %for.inc13.i.3.i

for.inc13.i.3.i:                                  ; preds = %do.end.i.3.i, %crypto_wait_req.exit.i.3.i.for.inc13.i.3.i_crit_edge
  %err.1.i.3.i = phi i32 [ %114, %do.end.i.3.i ], [ %err.038.i.3.i, %crypto_wait_req.exit.i.3.i.for.inc13.i.3.i_crit_edge ]
  %inc14.i.3.i = add nuw i32 %i.139.i.3.i, 1
  %exitcond42.not.i.3.i = icmp eq i32 %inc14.i.3.i, %num_mb
  br i1 %exitcond42.not.i.3.i, label %do_mult_ahash_op.exit.3.i, label %for.inc13.i.3.i.for.body4.i.3.i_crit_edge

for.inc13.i.3.i.for.body4.i.3.i_crit_edge:        ; preds = %for.inc13.i.3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body4.i.3.i

do_mult_ahash_op.exit.3.i:                        ; preds = %for.inc13.i.3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1.i.3.i)
  %tobool2.not.3.i = icmp eq i32 %err.1.i.3.i, 0
  br i1 %tobool2.not.3.i, label %do_mult_ahash_op.exit.3.i.for.body7.i.preheader_crit_edge, label %do_mult_ahash_op.exit.3.i.out.i81_crit_edge

do_mult_ahash_op.exit.3.i.out.i81_crit_edge:      ; preds = %do_mult_ahash_op.exit.3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i81

do_mult_ahash_op.exit.3.i.for.body7.i.preheader_crit_edge: ; preds = %do_mult_ahash_op.exit.3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body7.i.preheader

for.body7.i.preheader:                            ; preds = %do_mult_ahash_op.exit.3.i.for.body7.i.preheader_crit_edge, %for.cond.preheader.i.for.body7.i.preheader_crit_edge
  br label %for.body7.i

for.body7.i:                                      ; preds = %for.inc23.i.for.body7.i_crit_edge, %for.body7.i.preheader
  %cycles.081.i = phi i32 [ %add.i79, %for.inc23.i.for.body7.i_crit_edge ], [ 0, %for.body7.i.preheader ]
  %i.180.i = phi i32 [ %inc24.i, %for.inc23.i.for.body7.i_crit_edge ], [ 0, %for.body7.i.preheader ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %c.i) #10
  %115 = ptrtoint ptr %c.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 -1, ptr %c.i, align 4, !annotation !702
  %call8.i = call i32 @read_current_timer(ptr noundef nonnull %c.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %cond.false.i, label %for.body7.i.cond.end.i_crit_edge

for.body7.i.cond.end.i_crit_edge:                 ; preds = %for.body7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end.i

cond.false.i:                                     ; preds = %for.body7.i
  call void @__sanitizer_cov_trace_pc() #12
  %116 = ptrtoint ptr %c.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %c.i, align 4
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %for.body7.i.cond.end.i_crit_edge
  %cond.i = phi i32 [ %117, %cond.false.i ], [ 0, %for.body7.i.cond.end.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %c.i) #10
  br i1 %cmp107.not, label %cond.end.i.do_mult_ahash_op.exit72.i_crit_edge, label %cond.end.i.for.body.i54.i_crit_edge

cond.end.i.for.body.i54.i_crit_edge:              ; preds = %cond.end.i
  br label %for.body.i54.i

cond.end.i.do_mult_ahash_op.exit72.i_crit_edge:   ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do_mult_ahash_op.exit72.i

for.body.i54.i:                                   ; preds = %for.body.i54.i.for.body.i54.i_crit_edge, %cond.end.i.for.body.i54.i_crit_edge
  %i.036.i48.i = phi i32 [ %inc.i52.i, %for.body.i54.i.for.body.i54.i_crit_edge ], [ 0, %cond.end.i.for.body.i54.i_crit_edge ]
  %req.i49.i = getelementptr %struct.test_mb_ahash_data, ptr %call8.i.i, i32 %i.036.i48.i, i32 2
  %118 = ptrtoint ptr %req.i49.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %req.i49.i, align 32
  %call.i50.i = call i32 @crypto_ahash_digest(ptr noundef %119) #10
  %arrayidx1.i51.i = getelementptr i32, ptr %call8.i.i.i46, i32 %i.036.i48.i
  %120 = ptrtoint ptr %arrayidx1.i51.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %call.i50.i, ptr %arrayidx1.i51.i, align 4
  %inc.i52.i = add nuw i32 %i.036.i48.i, 1
  %exitcond.not.i53.i = icmp eq i32 %inc.i52.i, %num_mb
  br i1 %exitcond.not.i53.i, label %for.body.i54.i.for.body4.i58.i_crit_edge, label %for.body.i54.i.for.body.i54.i_crit_edge

for.body.i54.i.for.body.i54.i_crit_edge:          ; preds = %for.body.i54.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i54.i

for.body.i54.i.for.body4.i58.i_crit_edge:         ; preds = %for.body.i54.i
  br label %for.body4.i58.i

for.body4.i58.i:                                  ; preds = %for.inc13.i70.i.for.body4.i58.i_crit_edge, %for.body.i54.i.for.body4.i58.i_crit_edge
  %i.139.i55.i = phi i32 [ %inc14.i68.i, %for.inc13.i70.i.for.body4.i58.i_crit_edge ], [ 0, %for.body.i54.i.for.body4.i58.i_crit_edge ]
  %err.038.i56.i = phi i32 [ %err.1.i67.i, %for.inc13.i70.i.for.body4.i58.i_crit_edge ], [ 0, %for.body.i54.i.for.body4.i58.i_crit_edge ]
  %arrayidx5.i57.i = getelementptr i32, ptr %call8.i.i.i46, i32 %i.139.i55.i
  %121 = ptrtoint ptr %arrayidx5.i57.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %arrayidx5.i57.i, align 4
  %123 = zext i32 %122 to i64
  call void @__sanitizer_cov_trace_switch(i64 %123, ptr @__sancov_gen_cov_switch_values.316)
  switch i32 %122, label %for.body4.i58.i.crypto_wait_req.exit.i64.i_crit_edge [
    i32 -115, label %for.body4.i58.i.sw.bb.i.i61.i_crit_edge
    i32 -16, label %for.body4.i58.i.sw.bb.i.i61.i_crit_edge180
  ]

for.body4.i58.i.sw.bb.i.i61.i_crit_edge180:       ; preds = %for.body4.i58.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i.i61.i

for.body4.i58.i.sw.bb.i.i61.i_crit_edge:          ; preds = %for.body4.i58.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i.i61.i

for.body4.i58.i.crypto_wait_req.exit.i64.i_crit_edge: ; preds = %for.body4.i58.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %crypto_wait_req.exit.i64.i

sw.bb.i.i61.i:                                    ; preds = %for.body4.i58.i.sw.bb.i.i61.i_crit_edge, %for.body4.i58.i.sw.bb.i.i61.i_crit_edge180
  %wait.i59.i = getelementptr %struct.test_mb_ahash_data, ptr %call8.i.i, i32 %i.139.i55.i, i32 3
  call void @wait_for_completion(ptr noundef %wait.i59.i) #10
  %124 = ptrtoint ptr %wait.i59.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 0, ptr %wait.i59.i, align 4
  %err2.i.i60.i = getelementptr %struct.test_mb_ahash_data, ptr %call8.i.i, i32 %i.139.i55.i, i32 3, i32 1
  %125 = ptrtoint ptr %err2.i.i60.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %err2.i.i60.i, align 4
  br label %crypto_wait_req.exit.i64.i

crypto_wait_req.exit.i64.i:                       ; preds = %sw.bb.i.i61.i, %for.body4.i58.i.crypto_wait_req.exit.i64.i_crit_edge
  %err.addr.0.i.i62.i = phi i32 [ %122, %for.body4.i58.i.crypto_wait_req.exit.i64.i_crit_edge ], [ %126, %sw.bb.i.i61.i ]
  %127 = ptrtoint ptr %arrayidx5.i57.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %err.addr.0.i.i62.i, ptr %arrayidx5.i57.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.addr.0.i.i62.i)
  %tobool.not.i63.i = icmp eq i32 %err.addr.0.i.i62.i, 0
  br i1 %tobool.not.i63.i, label %crypto_wait_req.exit.i64.i.for.inc13.i70.i_crit_edge, label %do.end.i66.i

crypto_wait_req.exit.i64.i.for.inc13.i70.i_crit_edge: ; preds = %crypto_wait_req.exit.i64.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc13.i70.i

do.end.i66.i:                                     ; preds = %crypto_wait_req.exit.i64.i
  call void @__sanitizer_cov_trace_pc() #12
  %call11.i65.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.225, i32 noundef %i.139.i55.i, i32 noundef %err.addr.0.i.i62.i) #13
  %128 = ptrtoint ptr %arrayidx5.i57.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %arrayidx5.i57.i, align 4
  br label %for.inc13.i70.i

for.inc13.i70.i:                                  ; preds = %do.end.i66.i, %crypto_wait_req.exit.i64.i.for.inc13.i70.i_crit_edge
  %err.1.i67.i = phi i32 [ %129, %do.end.i66.i ], [ %err.038.i56.i, %crypto_wait_req.exit.i64.i.for.inc13.i70.i_crit_edge ]
  %inc14.i68.i = add nuw i32 %i.139.i55.i, 1
  %exitcond42.not.i69.i = icmp eq i32 %inc14.i68.i, %num_mb
  br i1 %exitcond42.not.i69.i, label %for.inc13.i70.i.do_mult_ahash_op.exit72.i_crit_edge, label %for.inc13.i70.i.for.body4.i58.i_crit_edge

for.inc13.i70.i.for.body4.i58.i_crit_edge:        ; preds = %for.inc13.i70.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body4.i58.i

for.inc13.i70.i.do_mult_ahash_op.exit72.i_crit_edge: ; preds = %for.inc13.i70.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do_mult_ahash_op.exit72.i

do_mult_ahash_op.exit72.i:                        ; preds = %for.inc13.i70.i.do_mult_ahash_op.exit72.i_crit_edge, %cond.end.i.do_mult_ahash_op.exit72.i_crit_edge
  %err.0.lcssa.i71.i = phi i32 [ 0, %cond.end.i.do_mult_ahash_op.exit72.i_crit_edge ], [ %err.1.i67.i, %for.inc13.i70.i.do_mult_ahash_op.exit72.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %c11.i) #10
  %130 = ptrtoint ptr %c11.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 -1, ptr %c11.i, align 4, !annotation !702
  %call13.i = call i32 @read_current_timer(ptr noundef nonnull %c11.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool14.not.i = icmp eq i32 %call13.i, 0
  br i1 %tobool14.not.i, label %cond.false16.i, label %do_mult_ahash_op.exit72.i.cond.end17.i_crit_edge

do_mult_ahash_op.exit72.i.cond.end17.i_crit_edge: ; preds = %do_mult_ahash_op.exit72.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end17.i

cond.false16.i:                                   ; preds = %do_mult_ahash_op.exit72.i
  call void @__sanitizer_cov_trace_pc() #12
  %131 = ptrtoint ptr %c11.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %c11.i, align 4
  br label %cond.end17.i

cond.end17.i:                                     ; preds = %cond.false16.i, %do_mult_ahash_op.exit72.i.cond.end17.i_crit_edge
  %cond18.i = phi i32 [ %132, %cond.false16.i ], [ 0, %do_mult_ahash_op.exit72.i.cond.end17.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %c11.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.lcssa.i71.i)
  %tobool19.not.i = icmp eq i32 %err.0.lcssa.i71.i, 0
  br i1 %tobool19.not.i, label %for.inc23.i, label %cond.end17.i.out.i81_crit_edge

cond.end17.i.out.i81_crit_edge:                   ; preds = %cond.end17.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i81

for.inc23.i:                                      ; preds = %cond.end17.i
  %sub.i78 = sub i32 %cycles.081.i, %cond.i
  %add.i79 = add i32 %cond18.i, %sub.i78
  %inc24.i = add nuw nsw i32 %i.180.i, 1
  %exitcond.not.i = icmp eq i32 %inc24.i, 8
  br i1 %exitcond.not.i, label %do.end.i80, label %for.inc23.i.for.body7.i_crit_edge

for.inc23.i.for.body7.i_crit_edge:                ; preds = %for.inc23.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body7.i

do.end.i80:                                       ; preds = %for.inc23.i
  call void @__sanitizer_cov_trace_pc() #12
  %add27.i = add i32 %add.i79, 4
  %div.i = udiv i32 %add27.i, %mul.i
  %call28.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.169, i32 noundef %div.i, i32 noundef %51) #13
  br label %out.i81

out.i81:                                          ; preds = %do.end.i80, %cond.end17.i.out.i81_crit_edge, %do_mult_ahash_op.exit.3.i.out.i81_crit_edge, %do_mult_ahash_op.exit.2.i.out.i81_crit_edge, %do_mult_ahash_op.exit.1.i.out.i81_crit_edge, %do_mult_ahash_op.exit.i76.out.i81_crit_edge
  %ret.2.i = phi i32 [ 0, %do.end.i80 ], [ %err.1.i.i71, %do_mult_ahash_op.exit.i76.out.i81_crit_edge ], [ %err.1.i.1.i, %do_mult_ahash_op.exit.1.i.out.i81_crit_edge ], [ %err.1.i.2.i, %do_mult_ahash_op.exit.2.i.out.i81_crit_edge ], [ %err.1.i.3.i, %do_mult_ahash_op.exit.3.i.out.i81_crit_edge ], [ %err.0.lcssa.i71.i, %cond.end17.i.out.i81_crit_edge ]
  call void @kfree(ptr noundef nonnull %call8.i.i.i46) #10
  br label %if.end116

if.end116:                                        ; preds = %out.i81, %test_mb_ahash_jiffies.exit
  %ret.0 = phi i32 [ %retval.0.i, %test_mb_ahash_jiffies.exit ], [ %ret.2.i, %out.i81 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool117.not = icmp eq i32 %ret.0, 0
  br i1 %tobool117.not, label %if.end116.for.inc125_crit_edge, label %if.end116.do.end121_crit_edge

if.end116.do.end121_crit_edge:                    ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end121

if.end116.for.inc125_crit_edge:                   ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc125

do.end121:                                        ; preds = %if.end116.do.end121_crit_edge, %if.end7.i.i.i47.do.end121_crit_edge, %if.else.do.end121_crit_edge
  %ret.096 = phi i32 [ %ret.0, %if.end116.do.end121_crit_edge ], [ -12, %if.end7.i.i.i47.do.end121_crit_edge ], [ -12, %if.else.do.end121_crit_edge ]
  %call123 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.265, i32 noundef %ret.096) #13
  br label %out

for.inc125:                                       ; preds = %if.end116.for.inc125_crit_edge, %for.body55.for.inc125_crit_edge
  %inc126 = add i32 %i.1113, 1
  %arrayidx53 = getelementptr %struct.hash_speed, ptr @generic_hash_speed_template, i32 %inc126
  %133 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %arrayidx53, align 4
  %cmp54.not = icmp eq i32 %134, 0
  br i1 %cmp54.not, label %for.inc125.out_crit_edge, label %for.inc125.for.body55_crit_edge

for.inc125.for.body55_crit_edge:                  ; preds = %for.inc125
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body55

for.inc125.out_crit_edge:                         ; preds = %for.inc125
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

out:                                              ; preds = %for.inc125.out_crit_edge, %do.end121, %do.end68, %do.end47.out_crit_edge, %do.end20, %for.body.out_crit_edge
  br i1 %cmp107.not, label %out.for.end144_crit_edge, label %out.for.body130_crit_edge

out.for.body130_crit_edge:                        ; preds = %out
  br label %for.body130

out.for.end144_crit_edge:                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end144

for.cond136.preheader:                            ; preds = %for.body130
  br i1 %cmp107.not, label %for.cond136.preheader.for.end144_crit_edge, label %for.cond136.preheader.for.body138_crit_edge

for.cond136.preheader.for.body138_crit_edge:      ; preds = %for.cond136.preheader
  br label %for.body138

for.cond136.preheader.for.end144_crit_edge:       ; preds = %for.cond136.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end144

for.body130:                                      ; preds = %for.body130.for.body130_crit_edge, %out.for.body130_crit_edge
  %k.1117 = phi i32 [ %inc134, %for.body130.for.body130_crit_edge ], [ 0, %out.for.body130_crit_edge ]
  %req132 = getelementptr %struct.test_mb_ahash_data, ptr %call8.i.i, i32 %k.1117, i32 2
  %135 = ptrtoint ptr %req132 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %req132, align 32
  call void @kfree_sensitive(ptr noundef %136) #10
  %inc134 = add nuw i32 %k.1117, 1
  %exitcond138.not = icmp eq i32 %inc134, %num_mb
  br i1 %exitcond138.not, label %for.cond136.preheader, label %for.body130.for.body130_crit_edge

for.body130.for.body130_crit_edge:                ; preds = %for.body130
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body130

for.body138:                                      ; preds = %for.body138.for.body138_crit_edge, %for.cond136.preheader.for.body138_crit_edge
  %k.2119 = phi i32 [ %inc143, %for.body138.for.body138_crit_edge ], [ 0, %for.cond136.preheader.for.body138_crit_edge ]
  %xbuf140 = getelementptr %struct.test_mb_ahash_data, ptr %call8.i.i, i32 %k.2119, i32 4
  %137 = ptrtoint ptr %xbuf140 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %xbuf140, align 32
  %139 = ptrtoint ptr %138 to i32
  call void @free_pages(i32 noundef %139, i32 noundef 0) #10
  %arrayidx.1.i = getelementptr ptr, ptr %xbuf140, i32 1
  %140 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %arrayidx.1.i, align 4
  %142 = ptrtoint ptr %141 to i32
  call void @free_pages(i32 noundef %142, i32 noundef 0) #10
  %arrayidx.2.i = getelementptr ptr, ptr %xbuf140, i32 2
  %143 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %arrayidx.2.i, align 8
  %145 = ptrtoint ptr %144 to i32
  call void @free_pages(i32 noundef %145, i32 noundef 0) #10
  %arrayidx.3.i = getelementptr ptr, ptr %xbuf140, i32 3
  %146 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %arrayidx.3.i, align 4
  %148 = ptrtoint ptr %147 to i32
  call void @free_pages(i32 noundef %148, i32 noundef 0) #10
  %arrayidx.4.i = getelementptr ptr, ptr %xbuf140, i32 4
  %149 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %arrayidx.4.i, align 16
  %151 = ptrtoint ptr %150 to i32
  call void @free_pages(i32 noundef %151, i32 noundef 0) #10
  %arrayidx.5.i = getelementptr ptr, ptr %xbuf140, i32 5
  %152 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %arrayidx.5.i, align 4
  %154 = ptrtoint ptr %153 to i32
  call void @free_pages(i32 noundef %154, i32 noundef 0) #10
  %arrayidx.6.i = getelementptr ptr, ptr %xbuf140, i32 6
  %155 = ptrtoint ptr %arrayidx.6.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %arrayidx.6.i, align 8
  %157 = ptrtoint ptr %156 to i32
  call void @free_pages(i32 noundef %157, i32 noundef 0) #10
  %arrayidx.7.i = getelementptr ptr, ptr %xbuf140, i32 7
  %158 = ptrtoint ptr %arrayidx.7.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %arrayidx.7.i, align 4
  %160 = ptrtoint ptr %159 to i32
  call void @free_pages(i32 noundef %160, i32 noundef 0) #10
  %inc143 = add nuw i32 %k.2119, 1
  %exitcond139.not = icmp eq i32 %inc143, %num_mb
  br i1 %exitcond139.not, label %for.body138.for.end144_crit_edge, label %for.body138.for.body138_crit_edge

for.body138.for.body138_crit_edge:                ; preds = %for.body138
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body138

for.body138.for.end144_crit_edge:                 ; preds = %for.body138
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end144

for.end144:                                       ; preds = %for.body138.for.end144_crit_edge, %for.cond136.preheader.for.end144_crit_edge, %out.for.end144_crit_edge
  %base.i.i = getelementptr inbounds %struct.crypto_ahash, ptr %call1, i32 0, i32 10
  call void @crypto_destroy_tfm(ptr noundef %call1, ptr noundef %base.i.i) #10
  br label %free_data

free_data:                                        ; preds = %for.end144, %do.end
  call void @kfree(ptr noundef nonnull %call8.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %free_data, %if.end7.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @test_mb_skcipher_speed(ptr noundef %algo, i32 noundef %enc, i32 noundef %secs, ptr nocapture noundef readonly %template, i32 noundef %tcount, ptr nocapture noundef readonly %keysize, i32 noundef %num_mb) unnamed_addr #4 align 64 {
entry:
  %c.i = alloca i32, align 4
  %c11.i = alloca i32, align 4
  %iv = alloca [128 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %iv) #10
  %0 = call ptr @memset(ptr %iv, i32 255, i32 128)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %enc)
  %cmp = icmp eq i32 %enc, 1
  %.str.142..str.143 = select i1 %cmp, ptr @.str.142, ptr @.str.143
  %1 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %num_mb, i32 256) #10
  %2 = extractvalue { i32, i1 } %1, 1
  br i1 %2, label %entry.cleanup210_crit_edge, label %if.end7.i.i, !prof !701

entry.cleanup210_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup210

if.end7.i.i:                                      ; preds = %entry
  %3 = extractvalue { i32, i1 } %1, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %3, i32 noundef 3520) #15
  %tobool.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool.not, label %if.end7.i.i.cleanup210_crit_edge, label %if.end2

if.end7.i.i.cleanup210_crit_edge:                 ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup210

if.end2:                                          ; preds = %if.end7.i.i
  %call3 = tail call ptr @crypto_alloc_skcipher(ptr noundef %algo, i32 noundef 0, i32 noundef 0) #10
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_mb)
  %cmp9490.not = icmp eq i32 %num_mb, 0
  br i1 %cmp9490.not, label %for.cond.preheader.do.end77_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.do.end77_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end77

do.end:                                           ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %call3 to i32
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.144, ptr noundef %algo, i32 noundef %4) #13
  br label %out_free_data

for.cond18.preheader:                             ; preds = %for.inc
  br i1 %cmp9490.not, label %for.cond18.preheader.do.end77_crit_edge, label %for.cond18.preheader.for.body20_crit_edge

for.cond18.preheader.for.body20_crit_edge:        ; preds = %for.cond18.preheader
  br label %for.body20

for.cond18.preheader.do.end77_crit_edge:          ; preds = %for.cond18.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end77

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0491 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %xbuf = getelementptr %struct.test_mb_skcipher_data, ptr %call8.i.i, i32 %i.0491, i32 3
  %call10 = tail call fastcc i32 @testmgr_alloc_buf(ptr noundef %xbuf)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %for.inc, label %while.cond.preheader

while.cond.preheader:                             ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0491)
  %tobool13.not514 = icmp eq i32 %i.0491, 0
  br i1 %tobool13.not514, label %while.cond.preheader.out_free_tfm_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.out_free_tfm_crit_edge:      ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_free_tfm

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %i.1515 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ %i.0491, %while.cond.preheader.while.body_crit_edge ]
  %dec = add i32 %i.1515, -1
  %xbuf15 = getelementptr %struct.test_mb_skcipher_data, ptr %call8.i.i, i32 %dec, i32 3
  %5 = ptrtoint ptr %xbuf15 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %xbuf15, align 32
  %7 = ptrtoint ptr %6 to i32
  tail call void @free_pages(i32 noundef %7, i32 noundef 0) #10
  %arrayidx.1.i = getelementptr ptr, ptr %xbuf15, i32 1
  %8 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.1.i, align 4
  %10 = ptrtoint ptr %9 to i32
  tail call void @free_pages(i32 noundef %10, i32 noundef 0) #10
  %arrayidx.2.i = getelementptr ptr, ptr %xbuf15, i32 2
  %11 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx.2.i, align 8
  %13 = ptrtoint ptr %12 to i32
  tail call void @free_pages(i32 noundef %13, i32 noundef 0) #10
  %arrayidx.3.i = getelementptr ptr, ptr %xbuf15, i32 3
  %14 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.3.i, align 4
  %16 = ptrtoint ptr %15 to i32
  tail call void @free_pages(i32 noundef %16, i32 noundef 0) #10
  %arrayidx.4.i = getelementptr ptr, ptr %xbuf15, i32 4
  %17 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx.4.i, align 16
  %19 = ptrtoint ptr %18 to i32
  tail call void @free_pages(i32 noundef %19, i32 noundef 0) #10
  %arrayidx.5.i = getelementptr ptr, ptr %xbuf15, i32 5
  %20 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.5.i, align 4
  %22 = ptrtoint ptr %21 to i32
  tail call void @free_pages(i32 noundef %22, i32 noundef 0) #10
  %arrayidx.6.i = getelementptr ptr, ptr %xbuf15, i32 6
  %23 = ptrtoint ptr %arrayidx.6.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx.6.i, align 8
  %25 = ptrtoint ptr %24 to i32
  tail call void @free_pages(i32 noundef %25, i32 noundef 0) #10
  %arrayidx.7.i = getelementptr ptr, ptr %xbuf15, i32 7
  %26 = ptrtoint ptr %arrayidx.7.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx.7.i, align 4
  %28 = ptrtoint ptr %27 to i32
  tail call void @free_pages(i32 noundef %28, i32 noundef 0) #10
  %tobool13.not = icmp eq i32 %dec, 0
  br i1 %tobool13.not, label %while.body.out_free_tfm_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.body.out_free_tfm_crit_edge:                ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_free_tfm

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.0491, 1
  %exitcond.not = icmp eq i32 %inc, %num_mb
  br i1 %exitcond.not, label %for.cond18.preheader, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.cond39.preheader:                             ; preds = %for.inc36
  br i1 %cmp9490.not, label %for.cond39.preheader.do.end77_crit_edge, label %for.body41.lr.ph

for.cond39.preheader.do.end77_crit_edge:          ; preds = %for.cond39.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end77

for.body41.lr.ph:                                 ; preds = %for.cond39.preheader
  %base.i.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %call3, i32 0, i32 2
  br label %if.end8.i.i

for.body20:                                       ; preds = %for.inc36.for.body20_crit_edge, %for.cond18.preheader.for.body20_crit_edge
  %i.2493 = phi i32 [ %inc37, %for.inc36.for.body20_crit_edge ], [ 0, %for.cond18.preheader.for.body20_crit_edge ]
  %xbuf22 = getelementptr %struct.test_mb_skcipher_data, ptr %call8.i.i, i32 %i.2493, i32 3
  %call24 = tail call fastcc i32 @testmgr_alloc_buf(ptr noundef %xbuf22)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %for.inc36, label %while.cond27.preheader

while.cond27.preheader:                           ; preds = %for.body20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.2493)
  %tobool29.not512 = icmp eq i32 %i.2493, 0
  br i1 %tobool29.not512, label %while.cond27.preheader.out_free_tfm_crit_edge, label %while.cond27.preheader.while.body30_crit_edge

while.cond27.preheader.while.body30_crit_edge:    ; preds = %while.cond27.preheader
  br label %while.body30

while.cond27.preheader.out_free_tfm_crit_edge:    ; preds = %while.cond27.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_free_tfm

while.body30:                                     ; preds = %while.body30.while.body30_crit_edge, %while.cond27.preheader.while.body30_crit_edge
  %i.3513 = phi i32 [ %dec28, %while.body30.while.body30_crit_edge ], [ %i.2493, %while.cond27.preheader.while.body30_crit_edge ]
  %dec28 = add i32 %i.3513, -1
  %xbuf32 = getelementptr %struct.test_mb_skcipher_data, ptr %call8.i.i, i32 %dec28, i32 3
  %29 = ptrtoint ptr %xbuf32 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %xbuf32, align 32
  %31 = ptrtoint ptr %30 to i32
  tail call void @free_pages(i32 noundef %31, i32 noundef 0) #10
  %arrayidx.1.i333 = getelementptr ptr, ptr %xbuf32, i32 1
  %32 = ptrtoint ptr %arrayidx.1.i333 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx.1.i333, align 4
  %34 = ptrtoint ptr %33 to i32
  tail call void @free_pages(i32 noundef %34, i32 noundef 0) #10
  %arrayidx.2.i334 = getelementptr ptr, ptr %xbuf32, i32 2
  %35 = ptrtoint ptr %arrayidx.2.i334 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx.2.i334, align 8
  %37 = ptrtoint ptr %36 to i32
  tail call void @free_pages(i32 noundef %37, i32 noundef 0) #10
  %arrayidx.3.i335 = getelementptr ptr, ptr %xbuf32, i32 3
  %38 = ptrtoint ptr %arrayidx.3.i335 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx.3.i335, align 4
  %40 = ptrtoint ptr %39 to i32
  tail call void @free_pages(i32 noundef %40, i32 noundef 0) #10
  %arrayidx.4.i336 = getelementptr ptr, ptr %xbuf32, i32 4
  %41 = ptrtoint ptr %arrayidx.4.i336 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx.4.i336, align 16
  %43 = ptrtoint ptr %42 to i32
  tail call void @free_pages(i32 noundef %43, i32 noundef 0) #10
  %arrayidx.5.i337 = getelementptr ptr, ptr %xbuf32, i32 5
  %44 = ptrtoint ptr %arrayidx.5.i337 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx.5.i337, align 4
  %46 = ptrtoint ptr %45 to i32
  tail call void @free_pages(i32 noundef %46, i32 noundef 0) #10
  %arrayidx.6.i338 = getelementptr ptr, ptr %xbuf32, i32 6
  %47 = ptrtoint ptr %arrayidx.6.i338 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx.6.i338, align 8
  %49 = ptrtoint ptr %48 to i32
  tail call void @free_pages(i32 noundef %49, i32 noundef 0) #10
  %arrayidx.7.i339 = getelementptr ptr, ptr %xbuf32, i32 7
  %50 = ptrtoint ptr %arrayidx.7.i339 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx.7.i339, align 4
  %52 = ptrtoint ptr %51 to i32
  tail call void @free_pages(i32 noundef %52, i32 noundef 0) #10
  %tobool29.not = icmp eq i32 %dec28, 0
  br i1 %tobool29.not, label %while.body30.out_free_tfm_crit_edge, label %while.body30.while.body30_crit_edge

while.body30.while.body30_crit_edge:              ; preds = %while.body30
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body30

while.body30.out_free_tfm_crit_edge:              ; preds = %while.body30
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_free_tfm

for.inc36:                                        ; preds = %for.body20
  %inc37 = add nuw i32 %i.2493, 1
  %exitcond549.not = icmp eq i32 %inc37, %num_mb
  br i1 %exitcond549.not, label %for.cond39.preheader, label %for.inc36.for.body20_crit_edge

for.inc36.for.body20_crit_edge:                   ; preds = %for.inc36
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body20

for.cond64.preheader:                             ; preds = %for.inc61
  br i1 %cmp9490.not, label %for.cond64.preheader.do.end77_crit_edge, label %for.cond64.preheader.for.body66_crit_edge

for.cond64.preheader.for.body66_crit_edge:        ; preds = %for.cond64.preheader
  br label %for.body66

for.cond64.preheader.do.end77_crit_edge:          ; preds = %for.cond64.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end77

if.end8.i.i:                                      ; preds = %for.inc61.if.end8.i.i_crit_edge, %for.body41.lr.ph
  %i.4495 = phi i32 [ 0, %for.body41.lr.ph ], [ %inc62, %for.inc61.if.end8.i.i_crit_edge ]
  %53 = ptrtoint ptr %call3 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %call3, align 128
  %add.i = add i32 %54, 128
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i, i32 noundef 3264) #15
  %tobool.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not.i, label %do.end50, label %for.inc61, !prof !701

do.end50:                                         ; preds = %if.end8.i.i
  %req444 = getelementptr %struct.test_mb_skcipher_data, ptr %call8.i.i, i32 %i.4495, i32 1
  %55 = ptrtoint ptr %req444 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr null, ptr %req444, align 32
  %call52 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.272, ptr noundef %algo) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.4495)
  %tobool55.not508 = icmp eq i32 %i.4495, 0
  br i1 %tobool55.not508, label %do.end50.out_free_xbuf_crit_edge, label %do.end50.while.body56_crit_edge

do.end50.while.body56_crit_edge:                  ; preds = %do.end50
  br label %while.body56

do.end50.out_free_xbuf_crit_edge:                 ; preds = %do.end50
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_free_xbuf

while.body56:                                     ; preds = %while.body56.while.body56_crit_edge, %do.end50.while.body56_crit_edge
  %i.5509 = phi i32 [ %dec54, %while.body56.while.body56_crit_edge ], [ %i.4495, %do.end50.while.body56_crit_edge ]
  %dec54 = add i32 %i.5509, -1
  %req58 = getelementptr %struct.test_mb_skcipher_data, ptr %call8.i.i, i32 %dec54, i32 1
  %56 = ptrtoint ptr %req58 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %req58, align 32
  tail call void @kfree_sensitive(ptr noundef %57) #10
  %tobool55.not = icmp eq i32 %dec54, 0
  br i1 %tobool55.not, label %while.body56.out_free_xbuf_crit_edge, label %while.body56.while.body56_crit_edge

while.body56.while.body56_crit_edge:              ; preds = %while.body56
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body56

while.body56.out_free_xbuf_crit_edge:             ; preds = %while.body56
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_free_xbuf

for.inc61:                                        ; preds = %if.end8.i.i
  %tfm1.i.i = getelementptr inbounds %struct.skcipher_request, ptr %call9.i.i, i32 0, i32 4, i32 3
  %58 = ptrtoint ptr %tfm1.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %base.i.i.i, ptr %tfm1.i.i, align 32
  %req = getelementptr %struct.test_mb_skcipher_data, ptr %call8.i.i, i32 %i.4495, i32 1
  %59 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %call9.i.i, ptr %req, align 32
  %inc62 = add nuw i32 %i.4495, 1
  %exitcond550.not = icmp eq i32 %inc62, %num_mb
  br i1 %exitcond550.not, label %for.cond64.preheader, label %for.inc61.if.end8.i.i_crit_edge

for.inc61.if.end8.i.i_crit_edge:                  ; preds = %for.inc61
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.i.i

for.body66:                                       ; preds = %for.body66.for.body66_crit_edge, %for.cond64.preheader.for.body66_crit_edge
  %i.6498 = phi i32 [ %inc73, %for.body66.for.body66_crit_edge ], [ 0, %for.cond64.preheader.for.body66_crit_edge ]
  %req68 = getelementptr %struct.test_mb_skcipher_data, ptr %call8.i.i, i32 %i.6498, i32 1
  %60 = ptrtoint ptr %req68 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %req68, align 32
  %wait = getelementptr %struct.test_mb_skcipher_data, ptr %call8.i.i, i32 %i.6498, i32 2
  %complete.i = getelementptr inbounds %struct.skcipher_request, ptr %61, i32 0, i32 4, i32 1
  %62 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr @crypto_req_done, ptr %complete.i, align 8
  %data2.i = getelementptr inbounds %struct.skcipher_request, ptr %61, i32 0, i32 4, i32 2
  %63 = ptrtoint ptr %data2.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %wait, ptr %data2.i, align 4
  %flags4.i = getelementptr inbounds %struct.skcipher_request, ptr %61, i32 0, i32 4, i32 4
  %64 = ptrtoint ptr %flags4.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 1024, ptr %flags4.i, align 4
  %65 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 0, ptr %wait, align 4
  %wait.i.i = getelementptr inbounds %struct.completion, ptr %wait, i32 0, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i.i, ptr noundef nonnull @.str.166, ptr noundef nonnull @init_completion.__key) #10
  %inc73 = add nuw i32 %i.6498, 1
  %exitcond551.not = icmp eq i32 %inc73, %num_mb
  br i1 %exitcond551.not, label %for.body66.do.end77_crit_edge, label %for.body66.for.body66_crit_edge

for.body66.for.body66_crit_edge:                  ; preds = %for.body66
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body66

for.body66.do.end77_crit_edge:                    ; preds = %for.body66
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end77

do.end77:                                         ; preds = %for.body66.do.end77_crit_edge, %for.cond64.preheader.do.end77_crit_edge, %for.cond39.preheader.do.end77_crit_edge, %for.cond18.preheader.do.end77_crit_edge, %for.cond.preheader.do.end77_crit_edge
  %base.i = getelementptr inbounds %struct.crypto_skcipher, ptr %call3, i32 0, i32 2
  %__crt_alg.i = getelementptr inbounds %struct.crypto_skcipher, ptr %call3, i32 0, i32 2, i32 3
  %66 = ptrtoint ptr %__crt_alg.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %__crt_alg.i, align 4
  %cra_driver_name.i = getelementptr inbounds %struct.crypto_alg, ptr %67, i32 0, i32 9
  %call81 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.211, ptr noundef %algo, ptr noundef %cra_driver_name.i, ptr noundef nonnull %.str.142..str.143) #13
  %klen = getelementptr inbounds %struct.cipher_speed_template, ptr %template, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %secs)
  %tobool166.not = icmp eq i32 %secs, 0
  %68 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %num_mb, i32 4) #10
  %69 = extractvalue { i32, i1 } %68, 1
  %70 = extractvalue { i32, i1 } %68, 0
  %mul.neg.i = mul i32 %secs, -100
  %conv8.i = zext i32 %num_mb to i64
  %mul.i = shl i32 %num_mb, 3
  br label %do.body82

do.body82:                                        ; preds = %do.end186.do.body82_crit_edge, %do.end77
  %i.7 = phi i32 [ 0, %do.end77 ], [ %i.9456, %do.end186.do.body82_crit_edge ]
  %keysize.addr.0 = phi ptr [ %keysize, %do.end77 ], [ %incdec.ptr187, %do.end186.do.body82_crit_edge ]
  %71 = add i32 %i.7, 7
  br label %do.body83

do.body83:                                        ; preds = %do.cond184.do.body83_crit_edge, %do.body82
  %b_size.0 = phi ptr [ @block_sizes, %do.body82 ], [ %incdec.ptr, %do.cond184.do.body83_crit_edge ]
  %i.8 = phi i32 [ %i.7, %do.body82 ], [ %inc183, %do.cond184.do.body83_crit_edge ]
  %72 = ptrtoint ptr %b_size.0 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %b_size.0, align 4
  %sub = add i32 %73, -1
  %74 = ptrtoint ptr %__crt_alg.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %__crt_alg.i, align 4
  %cra_blocksize.i.i = getelementptr inbounds %struct.crypto_alg, ptr %75, i32 0, i32 3
  %76 = ptrtoint ptr %cra_blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %cra_blocksize.i.i, align 4
  %sub85 = add i32 %77, -1
  %or = or i32 %sub85, %sub
  %add = add i32 %or, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768, i32 %add)
  %cmp86 = icmp ugt i32 %add, 32768
  br i1 %cmp86, label %do.end90, label %do.end96

do.end90:                                         ; preds = %do.body83
  call void @__sanitizer_cov_trace_pc() #12
  %call92 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.214, i32 noundef %add, i32 noundef 32768) #13
  br label %out

do.end96:                                         ; preds = %do.body83
  %78 = ptrtoint ptr %keysize.addr.0 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %keysize.addr.0, align 1
  %conv = zext i8 %79 to i32
  %mul = shl nuw nsw i32 %conv, 3
  %call98 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.158, i32 noundef %i.8, i32 noundef %mul, i32 noundef %add) #13
  %80 = load ptr, ptr @tvmem, align 4
  %81 = call ptr @memset(ptr %80, i32 255, i32 4096)
  br label %for.cond99

for.cond99:                                       ; preds = %for.body102.for.cond99_crit_edge, %do.end96
  %j.0 = phi i32 [ 0, %do.end96 ], [ 1, %for.body102.for.cond99_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %j.0, i32 %tcount)
  %cmp100 = icmp ult i32 %j.0, %tcount
  br i1 %cmp100, label %for.body102, label %for.cond99.for.end113_crit_edge

for.cond99.for.end113_crit_edge:                  ; preds = %for.cond99
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end113

for.body102:                                      ; preds = %for.cond99
  %82 = ptrtoint ptr %klen to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %klen, align 4
  %84 = ptrtoint ptr %keysize.addr.0 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %keysize.addr.0, align 1
  %conv104 = zext i8 %85 to i32
  %cmp105 = icmp eq i32 %83, %conv104
  br i1 %cmp105, label %if.then107, label %for.body102.for.cond99_crit_edge

for.body102.for.cond99_crit_edge:                 ; preds = %for.body102
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond99

if.then107:                                       ; preds = %for.body102
  call void @__sanitizer_cov_trace_pc() #12
  %86 = ptrtoint ptr %template to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %template, align 4
  br label %for.end113

for.end113:                                       ; preds = %if.then107, %for.cond99.for.end113_crit_edge
  %key.0 = phi ptr [ %87, %if.then107 ], [ %80, %for.cond99.for.end113_crit_edge ]
  %88 = ptrtoint ptr %base.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 0, ptr %base.i, align 128
  %89 = ptrtoint ptr %keysize.addr.0 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %keysize.addr.0, align 1
  %conv114 = zext i8 %90 to i32
  %call115 = call i32 @crypto_skcipher_setkey(ptr noundef %call3, ptr noundef %key.0, i32 noundef %conv114) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call115)
  %tobool116.not = icmp eq i32 %call115, 0
  br i1 %tobool116.not, label %if.end124, label %do.end120

do.end120:                                        ; preds = %for.end113
  call void @__sanitizer_cov_trace_pc() #12
  %91 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %base.i, align 128
  %call123 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.161, i32 noundef %92) #13
  br label %out

if.end124:                                        ; preds = %for.end113
  %93 = ptrtoint ptr %__crt_alg.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %__crt_alg.i, align 4
  %ivsize.i = getelementptr i8, ptr %94, i32 -100
  %95 = ptrtoint ptr %ivsize.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %ivsize.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %tobool126.not = icmp eq i32 %96, 0
  br i1 %tobool126.not, label %if.end124.if.end128_crit_edge, label %if.then127

if.end124.if.end128_crit_edge:                    ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end128

if.then127:                                       ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #12
  %97 = call ptr @memset(ptr %iv, i32 255, i32 %96)
  br label %if.end128

if.end128:                                        ; preds = %if.then127, %if.end124.if.end128_crit_edge
  br i1 %cmp9490.not, label %if.end128.for.end165_crit_edge, label %for.body132.lr.ph

if.end128.for.end165_crit_edge:                   ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end165

for.body132.lr.ph:                                ; preds = %if.end128
  %sub135 = add i32 %or, 4096
  %div332 = lshr i32 %sub135, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add)
  %cmp138499 = icmp ugt i32 %add, 4096
  %98 = add i32 %or, -4096
  %99 = lshr i32 %98, 12
  %100 = add nuw nsw i32 %99, 1
  br label %for.body132

for.body132:                                      ; preds = %sg_set_buf.exit373.for.body132_crit_edge, %for.body132.lr.ph
  %j.1504 = phi i32 [ 0, %for.body132.lr.ph ], [ %inc164, %sg_set_buf.exit373.for.body132_crit_edge ]
  %arrayidx133 = getelementptr %struct.test_mb_skcipher_data, ptr %call8.i.i, i32 %j.1504
  call void @sg_init_table(ptr noundef %arrayidx133, i32 noundef %div332) #10
  br i1 %cmp138499, label %for.body132.while.body140_crit_edge, label %for.body132.while.end149_crit_edge

for.body132.while.end149_crit_edge:               ; preds = %for.body132
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end149

for.body132.while.body140_crit_edge:              ; preds = %for.body132
  br label %while.body140

while.body140:                                    ; preds = %sg_set_buf.exit.while.body140_crit_edge, %for.body132.while.body140_crit_edge
  %p.0501 = phi i32 [ %inc147, %sg_set_buf.exit.while.body140_crit_edge ], [ 0, %for.body132.while.body140_crit_edge ]
  %k.0500 = phi i32 [ %sub148, %sg_set_buf.exit.while.body140_crit_edge ], [ %add, %for.body132.while.body140_crit_edge ]
  %add.ptr = getelementptr %struct.scatterlist, ptr %arrayidx133, i32 %p.0501
  %arrayidx144 = getelementptr %struct.test_mb_skcipher_data, ptr %call8.i.i, i32 %j.1504, i32 3, i32 %p.0501
  %101 = ptrtoint ptr %arrayidx144 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %arrayidx144, align 4
  %103 = ptrtoint ptr %102 to i32
  %cmp.i346 = icmp ugt ptr %102, inttoptr (i32 -1073741825 to ptr)
  br i1 %cmp.i346, label %land.lhs.true.i, label %while.body140.do.body5.i_crit_edge, !prof !703

while.body140.do.body5.i_crit_edge:               ; preds = %while.body140
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body5.i

land.lhs.true.i:                                  ; preds = %while.body140
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %104 = load ptr, ptr @high_memory, align 4
  %cmp1.i = icmp ugt ptr %104, %102
  br i1 %cmp1.i, label %land.rhs.i, label %land.lhs.true.i.do.body5.i_crit_edge, !prof !703

land.lhs.true.i.do.body5.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body5.i

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %sub.i = add i32 %103, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %105 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i347 = add i32 %105, %shr.i
  %call.i = call i32 @pfn_valid(i32 noundef %add.i347) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.i = icmp eq i32 %call.i, 0
  br i1 %tobool.i, label %land.rhs.i.do.body5.i_crit_edge, label %do.end8.i, !prof !701

land.rhs.i.do.body5.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body5.i

do.body5.i:                                       ; preds = %land.rhs.i.do.body5.i_crit_edge, %land.lhs.true.i.do.body5.i_crit_edge, %while.body140.do.body5.i_crit_edge
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 160, 0\0A.popsection", ""() #10, !srcloc !704
  unreachable

do.end8.i:                                        ; preds = %land.rhs.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %106 = load ptr, ptr @mem_map, align 4
  %add.ptr.i = getelementptr %struct.page, ptr %106, i32 %shr.i
  %107 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %add.ptr, align 4
  %109 = ptrtoint ptr %add.ptr.i to i32
  %and2.i.i.i = and i32 %109, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool.not.i.i.i348 = icmp eq i32 %and2.i.i.i, 0
  br i1 %tobool.not.i.i.i348, label %do.body11.i.i.i, label %do.body5.i.i.i, !prof !703

do.body5.i.i.i:                                   ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #10, !srcloc !705
  unreachable

do.body11.i.i.i:                                  ; preds = %do.end8.i
  %and.i.i.i.i = and i32 %108, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.i.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i, label %sg_set_buf.exit, label %do.body19.i.i.i, !prof !703

do.body19.i.i.i:                                  ; preds = %do.body11.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #10, !srcloc !706
  unreachable

sg_set_buf.exit:                                  ; preds = %do.body11.i.i.i
  %and.i = and i32 %103, 4095
  %and.i.i.i = and i32 %108, 3
  %or.i.i.i = or i32 %and.i.i.i, %109
  %110 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %or.i.i.i, ptr %add.ptr, align 4
  %offset1.i.i = getelementptr inbounds %struct.scatterlist, ptr %add.ptr, i32 0, i32 1
  %111 = ptrtoint ptr %offset1.i.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %and.i, ptr %offset1.i.i, align 4
  %length.i.i = getelementptr inbounds %struct.scatterlist, ptr %add.ptr, i32 0, i32 2
  %112 = ptrtoint ptr %length.i.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 4096, ptr %length.i.i, align 4
  %113 = ptrtoint ptr %arrayidx144 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %arrayidx144, align 4
  %115 = call ptr @memset(ptr %114, i32 255, i32 4096)
  %inc147 = add nuw nsw i32 %p.0501, 1
  %sub148 = add i32 %k.0500, -4096
  %exitcond552.not = icmp eq i32 %p.0501, %99
  br i1 %exitcond552.not, label %sg_set_buf.exit.while.end149_crit_edge, label %sg_set_buf.exit.while.body140_crit_edge

sg_set_buf.exit.while.body140_crit_edge:          ; preds = %sg_set_buf.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body140

sg_set_buf.exit.while.end149_crit_edge:           ; preds = %sg_set_buf.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end149

while.end149:                                     ; preds = %sg_set_buf.exit.while.end149_crit_edge, %for.body132.while.end149_crit_edge
  %k.0.lcssa = phi i32 [ %add, %for.body132.while.end149_crit_edge ], [ %sub148, %sg_set_buf.exit.while.end149_crit_edge ]
  %p.0.lcssa = phi i32 [ 0, %for.body132.while.end149_crit_edge ], [ %100, %sg_set_buf.exit.while.end149_crit_edge ]
  %add.ptr152 = getelementptr %struct.scatterlist, ptr %arrayidx133, i32 %p.0.lcssa
  %arrayidx154 = getelementptr %struct.test_mb_skcipher_data, ptr %call8.i.i, i32 %j.1504, i32 3, i32 %p.0.lcssa
  %116 = ptrtoint ptr %arrayidx154 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %arrayidx154, align 4
  %118 = ptrtoint ptr %117 to i32
  %cmp.i349 = icmp ugt ptr %117, inttoptr (i32 -1073741825 to ptr)
  br i1 %cmp.i349, label %land.lhs.true.i351, label %while.end149.do.body5.i358_crit_edge, !prof !703

while.end149.do.body5.i358_crit_edge:             ; preds = %while.end149
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body5.i358

land.lhs.true.i351:                               ; preds = %while.end149
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %119 = load ptr, ptr @high_memory, align 4
  %cmp1.i350 = icmp ugt ptr %119, %117
  br i1 %cmp1.i350, label %land.rhs.i357, label %land.lhs.true.i351.do.body5.i358_crit_edge, !prof !703

land.lhs.true.i351.do.body5.i358_crit_edge:       ; preds = %land.lhs.true.i351
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body5.i358

land.rhs.i357:                                    ; preds = %land.lhs.true.i351
  %sub.i352 = add i32 %118, 1073741824
  %shr.i353 = lshr i32 %sub.i352, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %120 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i354 = add i32 %120, %shr.i353
  %call.i355 = call i32 @pfn_valid(i32 noundef %add.i354) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i355)
  %tobool.i356 = icmp eq i32 %call.i355, 0
  br i1 %tobool.i356, label %land.rhs.i357.do.body5.i358_crit_edge, label %do.end8.i362, !prof !701

land.rhs.i357.do.body5.i358_crit_edge:            ; preds = %land.rhs.i357
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body5.i358

do.body5.i358:                                    ; preds = %land.rhs.i357.do.body5.i358_crit_edge, %land.lhs.true.i351.do.body5.i358_crit_edge, %while.end149.do.body5.i358_crit_edge
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 160, 0\0A.popsection", ""() #10, !srcloc !704
  unreachable

do.end8.i362:                                     ; preds = %land.rhs.i357
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %121 = load ptr, ptr @mem_map, align 4
  %add.ptr.i359 = getelementptr %struct.page, ptr %121, i32 %shr.i353
  %122 = ptrtoint ptr %add.ptr152 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %add.ptr152, align 4
  %124 = ptrtoint ptr %add.ptr.i359 to i32
  %and2.i.i.i360 = and i32 %124, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i360)
  %tobool.not.i.i.i361 = icmp eq i32 %and2.i.i.i360, 0
  br i1 %tobool.not.i.i.i361, label %do.body11.i.i.i366, label %do.body5.i.i.i363, !prof !703

do.body5.i.i.i363:                                ; preds = %do.end8.i362
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #10, !srcloc !705
  unreachable

do.body11.i.i.i366:                               ; preds = %do.end8.i362
  %and.i.i.i.i364 = and i32 %123, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i364)
  %tobool.i.not.i.i.i365 = icmp eq i32 %and.i.i.i.i364, 0
  br i1 %tobool.i.not.i.i.i365, label %sg_set_buf.exit373, label %do.body19.i.i.i367, !prof !703

do.body19.i.i.i367:                               ; preds = %do.body11.i.i.i366
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #10, !srcloc !706
  unreachable

sg_set_buf.exit373:                               ; preds = %do.body11.i.i.i366
  %and.i368 = and i32 %118, 4095
  %and.i.i.i369 = and i32 %123, 3
  %or.i.i.i370 = or i32 %and.i.i.i369, %124
  %125 = ptrtoint ptr %add.ptr152 to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %or.i.i.i370, ptr %add.ptr152, align 4
  %offset1.i.i371 = getelementptr inbounds %struct.scatterlist, ptr %add.ptr152, i32 0, i32 1
  %126 = ptrtoint ptr %offset1.i.i371 to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %and.i368, ptr %offset1.i.i371, align 4
  %length.i.i372 = getelementptr inbounds %struct.scatterlist, ptr %add.ptr152, i32 0, i32 2
  %127 = ptrtoint ptr %length.i.i372 to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %k.0.lcssa, ptr %length.i.i372, align 4
  %128 = ptrtoint ptr %arrayidx154 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %arrayidx154, align 4
  %130 = call ptr @memset(ptr %129, i32 255, i32 %k.0.lcssa)
  %req157 = getelementptr %struct.test_mb_skcipher_data, ptr %call8.i.i, i32 %j.1504, i32 1
  %131 = ptrtoint ptr %req157 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %req157, align 32
  %src1.i = getelementptr inbounds %struct.skcipher_request, ptr %132, i32 0, i32 2
  %133 = ptrtoint ptr %src1.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr %arrayidx133, ptr %src1.i, align 8
  %dst2.i = getelementptr inbounds %struct.skcipher_request, ptr %132, i32 0, i32 3
  %134 = ptrtoint ptr %dst2.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr %arrayidx133, ptr %dst2.i, align 4
  %135 = ptrtoint ptr %132 to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 %add, ptr %132, align 128
  %iv4.i = getelementptr inbounds %struct.skcipher_request, ptr %132, i32 0, i32 1
  %136 = ptrtoint ptr %iv4.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store ptr %iv, ptr %iv4.i, align 4
  %inc164 = add nuw i32 %j.1504, 1
  %exitcond553.not = icmp eq i32 %inc164, %num_mb
  br i1 %exitcond553.not, label %sg_set_buf.exit373.for.end165_crit_edge, label %sg_set_buf.exit373.for.body132_crit_edge

sg_set_buf.exit373.for.body132_crit_edge:         ; preds = %sg_set_buf.exit373
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body132

sg_set_buf.exit373.for.end165_crit_edge:          ; preds = %sg_set_buf.exit373
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end165

for.end165:                                       ; preds = %sg_set_buf.exit373.for.end165_crit_edge, %if.end128.for.end165_crit_edge
  br i1 %tobool166.not, label %if.else171, label %if.then167

if.then167:                                       ; preds = %for.end165
  br i1 %69, label %if.then167.test_mb_acipher_jiffies.exit_crit_edge, label %if.end7.i.i.i, !prof !701

if.then167.test_mb_acipher_jiffies.exit_crit_edge: ; preds = %if.then167
  call void @__sanitizer_cov_trace_pc() #12
  br label %test_mb_acipher_jiffies.exit

if.end7.i.i.i:                                    ; preds = %if.then167
  %call8.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %70, i32 noundef 3520) #15
  %tobool.not.i378 = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool.not.i378, label %if.end7.i.i.i.test_mb_acipher_jiffies.exit_crit_edge, label %if.end.i

if.end7.i.i.i.test_mb_acipher_jiffies.exit_crit_edge: ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %test_mb_acipher_jiffies.exit

if.end.i:                                         ; preds = %if.end7.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %137 = load volatile i32, ptr @jiffies, align 128
  %add.neg.i = sub i32 %mul.neg.i, %137
  %138 = load volatile i32, ptr @jiffies, align 128
  %sub31.i = add i32 %add.neg.i, %138
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub31.i)
  %cmp32.i = icmp slt i32 %sub31.i, 0
  br i1 %cmp32.i, label %if.end.i.for.body.i_crit_edge, label %if.end.i.do.end.i_crit_edge

if.end.i.do.end.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %bcount.033.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end.i.for.body.i_crit_edge ]
  %call1.i = call fastcc i32 @do_mult_acipher_op(ptr noundef nonnull %call8.i.i, i32 noundef %enc, i32 noundef %num_mb, ptr noundef nonnull %call8.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %for.inc.i, label %for.body.i.out.i_crit_edge

for.body.i.out.i_crit_edge:                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add i32 %bcount.033.i, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %139 = load volatile i32, ptr @jiffies, align 128
  %sub.i379 = add i32 %139, %add.neg.i
  %cmp.i380 = icmp slt i32 %sub.i379, 0
  br i1 %cmp.i380, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.do.end.i_crit_edge

for.inc.i.do.end.i_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

do.end.i:                                         ; preds = %for.inc.i.do.end.i_crit_edge, %if.end.i.do.end.i_crit_edge
  %bcount.0.lcssa.i = phi i32 [ 0, %if.end.i.do.end.i_crit_edge ], [ %inc.i, %for.inc.i.do.end.i_crit_edge ]
  %mul5.i = mul i32 %bcount.0.lcssa.i, %num_mb
  %conv.i = sext i32 %bcount.0.lcssa.i to i64
  %conv6.i = sext i32 %add to i64
  %mul7.i = mul nsw i64 %conv6.i, %conv8.i
  %mul9.i = mul i64 %mul7.i, %conv.i
  %call10.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.167, i32 noundef %mul5.i, i32 noundef %secs, i64 noundef %mul9.i) #13
  br label %out.i

out.i:                                            ; preds = %do.end.i, %for.body.i.out.i_crit_edge
  %ret.1.i = phi i32 [ 0, %do.end.i ], [ %call1.i, %for.body.i.out.i_crit_edge ]
  call void @kfree(ptr noundef nonnull %call8.i.i.i) #10
  br label %test_mb_acipher_jiffies.exit

test_mb_acipher_jiffies.exit:                     ; preds = %out.i, %if.end7.i.i.i.test_mb_acipher_jiffies.exit_crit_edge, %if.then167.test_mb_acipher_jiffies.exit_crit_edge
  %retval.0.i = phi i32 [ %ret.1.i, %out.i ], [ -12, %if.end7.i.i.i.test_mb_acipher_jiffies.exit_crit_edge ], [ -12, %if.then167.test_mb_acipher_jiffies.exit_crit_edge ]
  call void @__might_resched(ptr noundef nonnull @.str.2, i32 noundef 1396, i32 noundef 0) #10
  %call.i381 = call i32 @__cond_resched() #10
  br label %if.end173

if.else171:                                       ; preds = %for.end165
  br i1 %69, label %if.else171.cleanup_crit_edge, label %if.end7.i.i.i412, !prof !701

if.else171.cleanup_crit_edge:                     ; preds = %if.else171
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7.i.i.i412:                                 ; preds = %if.else171
  %call8.i.i.i411 = call noalias align 128 ptr @__kmalloc(i32 noundef %70, i32 noundef 3520) #15
  %tobool.not.i414 = icmp eq ptr %call8.i.i.i411, null
  br i1 %tobool.not.i414, label %if.end7.i.i.i412.cleanup_crit_edge, label %for.body.preheader.i

if.end7.i.i.i412.cleanup_crit_edge:               ; preds = %if.end7.i.i.i412
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.preheader.i:                             ; preds = %if.end7.i.i.i412
  %call1.i416 = call fastcc i32 @do_mult_acipher_op(ptr noundef nonnull %call8.i.i, i32 noundef %enc, i32 noundef %num_mb, ptr noundef nonnull %call8.i.i.i411) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i416)
  %tobool2.not.i417 = icmp eq i32 %call1.i416, 0
  br i1 %tobool2.not.i417, label %for.cond.i, label %for.body.preheader.i.out.i422_crit_edge

for.body.preheader.i.out.i422_crit_edge:          ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i422

for.cond.i:                                       ; preds = %for.body.preheader.i
  %call1.1.i = call fastcc i32 @do_mult_acipher_op(ptr noundef nonnull %call8.i.i, i32 noundef %enc, i32 noundef %num_mb, ptr noundef nonnull %call8.i.i.i411) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i)
  %tobool2.not.1.i = icmp eq i32 %call1.1.i, 0
  br i1 %tobool2.not.1.i, label %for.cond.1.i, label %for.cond.i.out.i422_crit_edge

for.cond.i.out.i422_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i422

for.cond.1.i:                                     ; preds = %for.cond.i
  %call1.2.i = call fastcc i32 @do_mult_acipher_op(ptr noundef nonnull %call8.i.i, i32 noundef %enc, i32 noundef %num_mb, ptr noundef nonnull %call8.i.i.i411) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i)
  %tobool2.not.2.i = icmp eq i32 %call1.2.i, 0
  br i1 %tobool2.not.2.i, label %for.cond.2.i, label %for.cond.1.i.out.i422_crit_edge

for.cond.1.i.out.i422_crit_edge:                  ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i422

for.cond.2.i:                                     ; preds = %for.cond.1.i
  %call1.3.i = call fastcc i32 @do_mult_acipher_op(ptr noundef nonnull %call8.i.i, i32 noundef %enc, i32 noundef %num_mb, ptr noundef nonnull %call8.i.i.i411) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.3.i)
  %tobool2.not.3.i = icmp eq i32 %call1.3.i, 0
  br i1 %tobool2.not.3.i, label %for.cond.2.i.for.body7.i_crit_edge, label %for.cond.2.i.out.i422_crit_edge

for.cond.2.i.out.i422_crit_edge:                  ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i422

for.cond.2.i.for.body7.i_crit_edge:               ; preds = %for.cond.2.i
  br label %for.body7.i

for.body7.i:                                      ; preds = %for.inc23.i.for.body7.i_crit_edge, %for.cond.2.i.for.body7.i_crit_edge
  %cycles.054.i = phi i32 [ %add.i420, %for.inc23.i.for.body7.i_crit_edge ], [ 0, %for.cond.2.i.for.body7.i_crit_edge ]
  %i.153.i = phi i32 [ %inc24.i, %for.inc23.i.for.body7.i_crit_edge ], [ 0, %for.cond.2.i.for.body7.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %c.i) #10
  %140 = ptrtoint ptr %c.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 -1, ptr %c.i, align 4, !annotation !702
  %call8.i = call i32 @read_current_timer(ptr noundef nonnull %c.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %cond.false.i, label %for.body7.i.cond.end.i_crit_edge

for.body7.i.cond.end.i_crit_edge:                 ; preds = %for.body7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end.i

cond.false.i:                                     ; preds = %for.body7.i
  call void @__sanitizer_cov_trace_pc() #12
  %141 = ptrtoint ptr %c.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %c.i, align 4
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %for.body7.i.cond.end.i_crit_edge
  %cond.i = phi i32 [ %142, %cond.false.i ], [ 0, %for.body7.i.cond.end.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %c.i) #10
  %call10.i418 = call fastcc i32 @do_mult_acipher_op(ptr noundef nonnull %call8.i.i, i32 noundef %enc, i32 noundef %num_mb, ptr noundef nonnull %call8.i.i.i411) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %c11.i) #10
  %143 = ptrtoint ptr %c11.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 -1, ptr %c11.i, align 4, !annotation !702
  %call13.i = call i32 @read_current_timer(ptr noundef nonnull %c11.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool14.not.i = icmp eq i32 %call13.i, 0
  br i1 %tobool14.not.i, label %cond.false16.i, label %cond.end.i.cond.end17.i_crit_edge

cond.end.i.cond.end17.i_crit_edge:                ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end17.i

cond.false16.i:                                   ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %144 = ptrtoint ptr %c11.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %c11.i, align 4
  br label %cond.end17.i

cond.end17.i:                                     ; preds = %cond.false16.i, %cond.end.i.cond.end17.i_crit_edge
  %cond18.i = phi i32 [ %145, %cond.false16.i ], [ 0, %cond.end.i.cond.end17.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %c11.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i418)
  %tobool19.not.i = icmp eq i32 %call10.i418, 0
  br i1 %tobool19.not.i, label %for.inc23.i, label %cond.end17.i.out.i422_crit_edge

cond.end17.i.out.i422_crit_edge:                  ; preds = %cond.end17.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i422

for.inc23.i:                                      ; preds = %cond.end17.i
  %sub.i419 = sub i32 %cycles.054.i, %cond.i
  %add.i420 = add i32 %cond18.i, %sub.i419
  %inc24.i = add nuw nsw i32 %i.153.i, 1
  %exitcond.not.i = icmp eq i32 %inc24.i, 8
  br i1 %exitcond.not.i, label %do.end.i421, label %for.inc23.i.for.body7.i_crit_edge

for.inc23.i.for.body7.i_crit_edge:                ; preds = %for.inc23.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body7.i

do.end.i421:                                      ; preds = %for.inc23.i
  call void @__sanitizer_cov_trace_pc() #12
  %add27.i = add i32 %add.i420, 4
  %div.i = udiv i32 %add27.i, %mul.i
  %call28.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.169, i32 noundef %div.i, i32 noundef %add) #13
  br label %out.i422

out.i422:                                         ; preds = %do.end.i421, %cond.end17.i.out.i422_crit_edge, %for.cond.2.i.out.i422_crit_edge, %for.cond.1.i.out.i422_crit_edge, %for.cond.i.out.i422_crit_edge, %for.body.preheader.i.out.i422_crit_edge
  %ret.2.i = phi i32 [ 0, %do.end.i421 ], [ %call1.i416, %for.body.preheader.i.out.i422_crit_edge ], [ %call1.1.i, %for.cond.i.out.i422_crit_edge ], [ %call1.2.i, %for.cond.1.i.out.i422_crit_edge ], [ %call1.3.i, %for.cond.2.i.out.i422_crit_edge ], [ %call10.i418, %cond.end17.i.out.i422_crit_edge ]
  call void @kfree(ptr noundef nonnull %call8.i.i.i411) #10
  br label %if.end173

if.end173:                                        ; preds = %out.i422, %test_mb_acipher_jiffies.exit
  %ret.0 = phi i32 [ %retval.0.i, %test_mb_acipher_jiffies.exit ], [ %ret.2.i, %out.i422 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool174.not = icmp eq i32 %ret.0, 0
  br i1 %tobool174.not, label %do.cond184, label %if.end173.cleanup_crit_edge

if.end173.cleanup_crit_edge:                      ; preds = %if.end173
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %if.end173.cleanup_crit_edge, %if.end7.i.i.i412.cleanup_crit_edge, %if.else171.cleanup_crit_edge
  %146 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %base.i, align 128
  %call181 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.164, ptr noundef nonnull %.str.142..str.143, i32 noundef %147) #13
  br label %do.end186

do.cond184:                                       ; preds = %if.end173
  %incdec.ptr = getelementptr i32, ptr %b_size.0, i32 1
  %inc183 = add i32 %i.8, 1
  %exitcond554 = icmp eq i32 %inc183, %71
  br i1 %exitcond554, label %do.cond184.do.end186_crit_edge, label %do.cond184.do.body83_crit_edge

do.cond184.do.body83_crit_edge:                   ; preds = %do.cond184
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body83

do.cond184.do.end186_crit_edge:                   ; preds = %do.cond184
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end186

do.end186:                                        ; preds = %do.cond184.do.end186_crit_edge, %cleanup
  %i.9456 = phi i32 [ %i.8, %cleanup ], [ %71, %do.cond184.do.end186_crit_edge ]
  %incdec.ptr187 = getelementptr i8, ptr %keysize.addr.0, i32 1
  %148 = ptrtoint ptr %incdec.ptr187 to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %incdec.ptr187, align 1
  %tobool189.not = icmp eq i8 %149, 0
  br i1 %tobool189.not, label %do.end186.out_crit_edge, label %do.end186.do.body82_crit_edge

do.end186.do.body82_crit_edge:                    ; preds = %do.end186
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body82

do.end186.out_crit_edge:                          ; preds = %do.end186
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

out:                                              ; preds = %do.end186.out_crit_edge, %do.end120, %do.end90
  br i1 %cmp9490.not, label %out.out_free_tfm_crit_edge, label %out.for.body194_crit_edge

out.for.body194_crit_edge:                        ; preds = %out
  br label %for.body194

out.out_free_tfm_crit_edge:                       ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_free_tfm

for.body194:                                      ; preds = %for.body194.for.body194_crit_edge, %out.for.body194_crit_edge
  %i.10507 = phi i32 [ %inc198, %for.body194.for.body194_crit_edge ], [ 0, %out.for.body194_crit_edge ]
  %req196 = getelementptr %struct.test_mb_skcipher_data, ptr %call8.i.i, i32 %i.10507, i32 1
  %150 = ptrtoint ptr %req196 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %req196, align 32
  call void @kfree_sensitive(ptr noundef %151) #10
  %inc198 = add nuw i32 %i.10507, 1
  %exitcond555.not = icmp eq i32 %inc198, %num_mb
  br i1 %exitcond555.not, label %for.body194.out_free_xbuf_crit_edge, label %for.body194.for.body194_crit_edge

for.body194.for.body194_crit_edge:                ; preds = %for.body194
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body194

for.body194.out_free_xbuf_crit_edge:              ; preds = %for.body194
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_free_xbuf

out_free_xbuf:                                    ; preds = %for.body194.out_free_xbuf_crit_edge, %while.body56.out_free_xbuf_crit_edge, %do.end50.out_free_xbuf_crit_edge
  br i1 %cmp9490.not, label %out_free_xbuf.out_free_tfm_crit_edge, label %out_free_xbuf.for.body203_crit_edge

out_free_xbuf.for.body203_crit_edge:              ; preds = %out_free_xbuf
  br label %for.body203

out_free_xbuf.out_free_tfm_crit_edge:             ; preds = %out_free_xbuf
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_free_tfm

for.body203:                                      ; preds = %for.body203.for.body203_crit_edge, %out_free_xbuf.for.body203_crit_edge
  %i.11511 = phi i32 [ %inc208, %for.body203.for.body203_crit_edge ], [ 0, %out_free_xbuf.for.body203_crit_edge ]
  %xbuf205 = getelementptr %struct.test_mb_skcipher_data, ptr %call8.i.i, i32 %i.11511, i32 3
  %152 = ptrtoint ptr %xbuf205 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %xbuf205, align 32
  %154 = ptrtoint ptr %153 to i32
  call void @free_pages(i32 noundef %154, i32 noundef 0) #10
  %arrayidx.1.i425 = getelementptr ptr, ptr %xbuf205, i32 1
  %155 = ptrtoint ptr %arrayidx.1.i425 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %arrayidx.1.i425, align 4
  %157 = ptrtoint ptr %156 to i32
  call void @free_pages(i32 noundef %157, i32 noundef 0) #10
  %arrayidx.2.i426 = getelementptr ptr, ptr %xbuf205, i32 2
  %158 = ptrtoint ptr %arrayidx.2.i426 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %arrayidx.2.i426, align 8
  %160 = ptrtoint ptr %159 to i32
  call void @free_pages(i32 noundef %160, i32 noundef 0) #10
  %arrayidx.3.i427 = getelementptr ptr, ptr %xbuf205, i32 3
  %161 = ptrtoint ptr %arrayidx.3.i427 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %arrayidx.3.i427, align 4
  %163 = ptrtoint ptr %162 to i32
  call void @free_pages(i32 noundef %163, i32 noundef 0) #10
  %arrayidx.4.i428 = getelementptr ptr, ptr %xbuf205, i32 4
  %164 = ptrtoint ptr %arrayidx.4.i428 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %arrayidx.4.i428, align 16
  %166 = ptrtoint ptr %165 to i32
  call void @free_pages(i32 noundef %166, i32 noundef 0) #10
  %arrayidx.5.i429 = getelementptr ptr, ptr %xbuf205, i32 5
  %167 = ptrtoint ptr %arrayidx.5.i429 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %arrayidx.5.i429, align 4
  %169 = ptrtoint ptr %168 to i32
  call void @free_pages(i32 noundef %169, i32 noundef 0) #10
  %arrayidx.6.i430 = getelementptr ptr, ptr %xbuf205, i32 6
  %170 = ptrtoint ptr %arrayidx.6.i430 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %arrayidx.6.i430, align 8
  %172 = ptrtoint ptr %171 to i32
  call void @free_pages(i32 noundef %172, i32 noundef 0) #10
  %arrayidx.7.i431 = getelementptr ptr, ptr %xbuf205, i32 7
  %173 = ptrtoint ptr %arrayidx.7.i431 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %arrayidx.7.i431, align 4
  %175 = ptrtoint ptr %174 to i32
  call void @free_pages(i32 noundef %175, i32 noundef 0) #10
  %inc208 = add nuw i32 %i.11511, 1
  %exitcond556.not = icmp eq i32 %inc208, %num_mb
  br i1 %exitcond556.not, label %for.body203.out_free_tfm_crit_edge, label %for.body203.for.body203_crit_edge

for.body203.for.body203_crit_edge:                ; preds = %for.body203
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body203

for.body203.out_free_tfm_crit_edge:               ; preds = %for.body203
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_free_tfm

out_free_tfm:                                     ; preds = %for.body203.out_free_tfm_crit_edge, %out_free_xbuf.out_free_tfm_crit_edge, %out.out_free_tfm_crit_edge, %while.body30.out_free_tfm_crit_edge, %while.cond27.preheader.out_free_tfm_crit_edge, %while.body.out_free_tfm_crit_edge, %while.cond.preheader.out_free_tfm_crit_edge
  %base.i.i432 = getelementptr inbounds %struct.crypto_skcipher, ptr %call3, i32 0, i32 2
  call void @crypto_destroy_tfm(ptr noundef %call3, ptr noundef %base.i.i432) #10
  br label %out_free_data

out_free_data:                                    ; preds = %out_free_tfm, %do.end
  call void @kfree(ptr noundef nonnull %call8.i.i) #10
  br label %cleanup210

cleanup210:                                       ; preds = %out_free_data, %if.end7.i.i.cleanup210_crit_edge, %entry.cleanup210_crit_edge
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %iv) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @test_available() unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  br label %do.end

do.end:                                           ; preds = %do.end.do.end_crit_edge, %entry
  %0 = phi ptr [ @.str.291, %entry ], [ %4, %do.end.do.end_crit_edge ]
  %name.011 = phi ptr [ @check, %entry ], [ %incdec.ptr, %do.end.do.end_crit_edge ]
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.287, ptr noundef nonnull %0) #13
  %1 = ptrtoint ptr %name.011 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %name.011, align 4
  %call5 = tail call i32 @crypto_has_alg(ptr noundef %2, i32 noundef 0, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  %cond = select i1 %tobool6.not, ptr @.str.290, ptr @.str.289
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %cond) #13
  %incdec.ptr = getelementptr ptr, ptr %name.011, i32 1
  %3 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %incdec.ptr, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %while.end, label %do.end.do.end_crit_edge

do.end.do.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

while.end:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @alg_test(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @test_skcipher_speed(ptr noundef %algo, i32 noundef %enc, i32 noundef %secs, ptr nocapture noundef readonly %template, i32 noundef %tcount, ptr nocapture noundef readonly %keysize, i1 noundef zeroext %async) unnamed_addr #4 align 64 {
entry:
  %c.i = alloca i32, align 4
  %c20.i = alloca i32, align 4
  %wait = alloca %struct.crypto_wait, align 4
  %iv = alloca [128 x i8], align 1
  %sg = alloca [4 x %struct.scatterlist], align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %wait) #10
  %0 = getelementptr inbounds i8, ptr %wait, i32 4
  %1 = call ptr @memset(ptr %0, i32 255, i32 56)
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %iv) #10
  %2 = call ptr @memset(ptr %iv, i32 255, i32 128)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %enc)
  %cmp = icmp eq i32 %enc, 1
  %.str.142..str.143 = select i1 %cmp, ptr @.str.142, ptr @.str.143
  %3 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %wait, align 4
  %wait.i.i = getelementptr inbounds %struct.completion, ptr %wait, i32 0, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i.i, ptr noundef nonnull @.str.166, ptr noundef nonnull @init_completion.__key) #10
  %cond = select i1 %async, i32 0, i32 128
  %call = call ptr @crypto_alloc_skcipher(ptr noundef %algo, i32 noundef 0, i32 noundef %cond) #10
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %do.end8

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %call to i32
  %call4 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.144, ptr noundef %algo, i32 noundef %4) #13
  br label %cleanup128

do.end8:                                          ; preds = %entry
  %cond11 = select i1 %async, ptr @.str.149, ptr @.str.150
  %base.i = getelementptr inbounds %struct.crypto_skcipher, ptr %call, i32 0, i32 2
  %__crt_alg.i = getelementptr inbounds %struct.crypto_skcipher, ptr %call, i32 0, i32 2, i32 3
  %5 = ptrtoint ptr %__crt_alg.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %__crt_alg.i, align 4
  %cra_driver_name.i = getelementptr inbounds %struct.crypto_alg, ptr %6, i32 0, i32 9
  %call14 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.147, ptr noundef nonnull %cond11, ptr noundef %algo, ptr noundef %cra_driver_name.i, ptr noundef nonnull %.str.142..str.143) #13
  %7 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %call, align 128
  %add.i = add i32 %8, 128
  %call9.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add.i, i32 noundef 3264) #15
  %tobool.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not.i, label %do.end20, label %if.end23, !prof !701

do.end20:                                         ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #12
  %call22 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.152, ptr noundef %algo) #13
  br label %out

if.end23:                                         ; preds = %do.end8
  %tfm1.i.i = getelementptr inbounds %struct.skcipher_request, ptr %call9.i.i, i32 0, i32 4, i32 3
  %9 = ptrtoint ptr %tfm1.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %base.i, ptr %tfm1.i.i, align 32
  %complete.i = getelementptr inbounds %struct.skcipher_request, ptr %call9.i.i, i32 0, i32 4, i32 1
  %10 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @crypto_req_done, ptr %complete.i, align 8
  %data2.i = getelementptr inbounds %struct.skcipher_request, ptr %call9.i.i, i32 0, i32 4, i32 2
  %11 = ptrtoint ptr %data2.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %wait, ptr %data2.i, align 4
  %flags4.i = getelementptr inbounds %struct.skcipher_request, ptr %call9.i.i, i32 0, i32 4, i32 4
  %12 = ptrtoint ptr %flags4.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1024, ptr %flags4.i, align 4
  %klen = getelementptr inbounds %struct.cipher_speed_template, ptr %template, i32 0, i32 1
  %offset1.i.i281 = getelementptr inbounds %struct.scatterlist, ptr %sg, i32 0, i32 1
  %length.i.i282 = getelementptr inbounds %struct.scatterlist, ptr %sg, i32 0, i32 2
  %src1.i = getelementptr inbounds %struct.skcipher_request, ptr %call9.i.i, i32 0, i32 2
  %dst2.i = getelementptr inbounds %struct.skcipher_request, ptr %call9.i.i, i32 0, i32 3
  %iv4.i = getelementptr inbounds %struct.skcipher_request, ptr %call9.i.i, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %secs)
  %tobool102.not = icmp eq i32 %secs, 0
  %mul.neg.i = mul i32 %secs, -100
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enc)
  %tobool.not.i285 = icmp eq i32 %enc, 0
  br label %do.body24

do.body24:                                        ; preds = %do.end123.do.body24_crit_edge, %if.end23
  %i.0 = phi i32 [ 0, %if.end23 ], [ %i.2339, %do.end123.do.body24_crit_edge ]
  %keysize.addr.0 = phi ptr [ %keysize, %if.end23 ], [ %incdec.ptr124, %do.end123.do.body24_crit_edge ]
  %13 = add i32 %i.0, 7
  br label %do.body25

do.body25:                                        ; preds = %do.cond121.do.body25_crit_edge, %do.body24
  %b_size.0 = phi ptr [ @block_sizes, %do.body24 ], [ %incdec.ptr, %do.cond121.do.body25_crit_edge ]
  %i.1 = phi i32 [ %i.0, %do.body24 ], [ %inc119, %do.cond121.do.body25_crit_edge ]
  %14 = ptrtoint ptr %b_size.0 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %b_size.0, align 4
  %sub = add i32 %15, -1
  %16 = ptrtoint ptr %__crt_alg.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__crt_alg.i, align 4
  %cra_blocksize.i.i = getelementptr inbounds %struct.crypto_alg, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %cra_blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cra_blocksize.i.i, align 4
  %sub27 = add i32 %19, -1
  %or = or i32 %sub27, %sub
  %add = add i32 %or, 1
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %sg) #10
  %20 = call ptr @memset(ptr %sg, i32 255, i32 80)
  %21 = ptrtoint ptr %keysize.addr.0 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %keysize.addr.0, align 1
  %conv = zext i8 %22 to i32
  %add28 = add i32 %add, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %add28)
  %cmp29 = icmp ugt i32 %add28, 16384
  br i1 %cmp29, label %do.end34, label %do.end42

do.end34:                                         ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #12
  %call38 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.155, i32 noundef %add28, i32 noundef 16384) #13
  br label %cleanup.thread

do.end42:                                         ; preds = %do.body25
  %mul = shl nuw nsw i32 %conv, 3
  %call45 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.158, i32 noundef %i.1, i32 noundef %mul, i32 noundef %add) #13
  %23 = load ptr, ptr @tvmem, align 4
  %24 = call ptr @memset(ptr %23, i32 255, i32 4096)
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %do.end42
  %j.0 = phi i32 [ 0, %do.end42 ], [ 1, %for.body.for.cond_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %j.0, i32 %tcount)
  %cmp46 = icmp ult i32 %j.0, %tcount
  br i1 %cmp46, label %for.body, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.cond
  %25 = ptrtoint ptr %klen to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %klen, align 4
  %27 = ptrtoint ptr %keysize.addr.0 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %keysize.addr.0, align 1
  %conv48 = zext i8 %28 to i32
  %cmp49 = icmp eq i32 %26, %conv48
  br i1 %cmp49, label %if.then51, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond

if.then51:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %29 = ptrtoint ptr %template to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %template, align 4
  br label %for.end

for.end:                                          ; preds = %if.then51, %for.cond.for.end_crit_edge
  %key.0 = phi ptr [ %30, %if.then51 ], [ %23, %for.cond.for.end_crit_edge ]
  %31 = ptrtoint ptr %base.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %base.i, align 128
  %32 = ptrtoint ptr %keysize.addr.0 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %keysize.addr.0, align 1
  %conv55 = zext i8 %33 to i32
  %call56 = call i32 @crypto_skcipher_setkey(ptr noundef %call, ptr noundef %key.0, i32 noundef %conv55) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %if.end65, label %do.end61

do.end61:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %34 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %base.i, align 128
  %call64 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.161, i32 noundef %35) #13
  br label %cleanup.thread

if.end65:                                         ; preds = %for.end
  %36 = ptrtoint ptr %keysize.addr.0 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %keysize.addr.0, align 1
  %conv66 = zext i8 %37 to i32
  %add67 = add i32 %add, %conv66
  %sub69 = add i32 %add67, 4095
  %div204 = lshr i32 %sub69, 12
  call void @sg_init_table(ptr noundef nonnull %sg, i32 noundef %div204) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add67)
  %cmp70 = icmp ugt i32 %add67, 4096
  %38 = load ptr, ptr @tvmem, align 4
  %39 = ptrtoint ptr %keysize.addr.0 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %keysize.addr.0, align 1
  %conv74 = zext i8 %40 to i32
  %add.ptr = getelementptr i8, ptr %38, i32 %conv74
  br i1 %cmp70, label %if.then72, label %if.else90

if.then72:                                        ; preds = %if.end65
  %sub76 = sub nuw nsw i32 4096, %conv74
  %41 = ptrtoint ptr %add.ptr to i32
  %cmp.i206 = icmp ugt ptr %add.ptr, inttoptr (i32 -1073741825 to ptr)
  br i1 %cmp.i206, label %land.lhs.true.i, label %if.then72.do.body5.i_crit_edge, !prof !703

if.then72.do.body5.i_crit_edge:                   ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body5.i

land.lhs.true.i:                                  ; preds = %if.then72
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %42 = load ptr, ptr @high_memory, align 4
  %cmp1.i = icmp ugt ptr %42, %add.ptr
  br i1 %cmp1.i, label %land.rhs.i, label %land.lhs.true.i.do.body5.i_crit_edge, !prof !703

land.lhs.true.i.do.body5.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body5.i

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %sub.i = add i32 %41, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %43 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i207 = add i32 %43, %shr.i
  %call.i = call i32 @pfn_valid(i32 noundef %add.i207) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.i = icmp eq i32 %call.i, 0
  br i1 %tobool.i, label %land.rhs.i.do.body5.i_crit_edge, label %do.end8.i, !prof !701

land.rhs.i.do.body5.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body5.i

do.body5.i:                                       ; preds = %land.rhs.i.do.body5.i_crit_edge, %land.lhs.true.i.do.body5.i_crit_edge, %if.then72.do.body5.i_crit_edge
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 160, 0\0A.popsection", ""() #10, !srcloc !704
  unreachable

do.end8.i:                                        ; preds = %land.rhs.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %44 = load ptr, ptr @mem_map, align 4
  %add.ptr.i = getelementptr %struct.page, ptr %44, i32 %shr.i
  %45 = ptrtoint ptr %sg to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %sg, align 4
  %47 = ptrtoint ptr %add.ptr.i to i32
  %and2.i.i.i = and i32 %47, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool.not.i.i.i208 = icmp eq i32 %and2.i.i.i, 0
  br i1 %tobool.not.i.i.i208, label %do.body11.i.i.i, label %do.body5.i.i.i, !prof !703

do.body5.i.i.i:                                   ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #10, !srcloc !705
  unreachable

do.body11.i.i.i:                                  ; preds = %do.end8.i
  %and.i.i.i.i = and i32 %46, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.i.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i, label %sg_set_buf.exit, label %do.body19.i.i.i, !prof !703

do.body19.i.i.i:                                  ; preds = %do.body11.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #10, !srcloc !706
  unreachable

sg_set_buf.exit:                                  ; preds = %do.body11.i.i.i
  %and.i = and i32 %41, 4095
  %and.i.i.i = and i32 %46, 3
  %or.i.i.i = or i32 %and.i.i.i, %47
  %48 = ptrtoint ptr %sg to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %or.i.i.i, ptr %sg, align 4
  %49 = ptrtoint ptr %offset1.i.i281 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %and.i, ptr %offset1.i.i281, align 4
  %50 = ptrtoint ptr %length.i.i282 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %sub76, ptr %length.i.i282, align 4
  %k.0382 = add i32 %add67, -4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %k.0382)
  %cmp78383 = icmp ugt i32 %k.0382, 4096
  br i1 %cmp78383, label %while.body.preheader, label %sg_set_buf.exit.while.end_crit_edge

sg_set_buf.exit.while.end_crit_edge:              ; preds = %sg_set_buf.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body.preheader:                             ; preds = %sg_set_buf.exit
  %51 = add i32 %or, -8192
  %52 = add i32 %51, %conv66
  %53 = lshr i32 %52, 12
  %54 = add nuw nsw i32 %53, 2
  br label %while.body

while.body:                                       ; preds = %sg_set_buf.exit233.while.body_crit_edge, %while.body.preheader
  %k.0385 = phi i32 [ %k.0, %sg_set_buf.exit233.while.body_crit_edge ], [ %k.0382, %while.body.preheader ]
  %j.1384 = phi i32 [ %inc84, %sg_set_buf.exit233.while.body_crit_edge ], [ 1, %while.body.preheader ]
  %add.ptr81 = getelementptr %struct.scatterlist, ptr %sg, i32 %j.1384
  %arrayidx82 = getelementptr [4 x ptr], ptr @tvmem, i32 0, i32 %j.1384
  %55 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arrayidx82, align 4
  %57 = ptrtoint ptr %56 to i32
  %cmp.i209 = icmp ugt ptr %56, inttoptr (i32 -1073741825 to ptr)
  br i1 %cmp.i209, label %land.lhs.true.i211, label %while.body.do.body5.i218_crit_edge, !prof !703

while.body.do.body5.i218_crit_edge:               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body5.i218

land.lhs.true.i211:                               ; preds = %while.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %58 = load ptr, ptr @high_memory, align 4
  %cmp1.i210 = icmp ugt ptr %58, %56
  br i1 %cmp1.i210, label %land.rhs.i217, label %land.lhs.true.i211.do.body5.i218_crit_edge, !prof !703

land.lhs.true.i211.do.body5.i218_crit_edge:       ; preds = %land.lhs.true.i211
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body5.i218

land.rhs.i217:                                    ; preds = %land.lhs.true.i211
  %sub.i212 = add i32 %57, 1073741824
  %shr.i213 = lshr i32 %sub.i212, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %59 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i214 = add i32 %59, %shr.i213
  %call.i215 = call i32 @pfn_valid(i32 noundef %add.i214) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i215)
  %tobool.i216 = icmp eq i32 %call.i215, 0
  br i1 %tobool.i216, label %land.rhs.i217.do.body5.i218_crit_edge, label %do.end8.i222, !prof !701

land.rhs.i217.do.body5.i218_crit_edge:            ; preds = %land.rhs.i217
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body5.i218

do.body5.i218:                                    ; preds = %land.rhs.i217.do.body5.i218_crit_edge, %land.lhs.true.i211.do.body5.i218_crit_edge, %while.body.do.body5.i218_crit_edge
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 160, 0\0A.popsection", ""() #10, !srcloc !704
  unreachable

do.end8.i222:                                     ; preds = %land.rhs.i217
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %60 = load ptr, ptr @mem_map, align 4
  %add.ptr.i219 = getelementptr %struct.page, ptr %60, i32 %shr.i213
  %61 = ptrtoint ptr %add.ptr81 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %add.ptr81, align 4
  %63 = ptrtoint ptr %add.ptr.i219 to i32
  %and2.i.i.i220 = and i32 %63, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i220)
  %tobool.not.i.i.i221 = icmp eq i32 %and2.i.i.i220, 0
  br i1 %tobool.not.i.i.i221, label %do.body11.i.i.i226, label %do.body5.i.i.i223, !prof !703

do.body5.i.i.i223:                                ; preds = %do.end8.i222
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #10, !srcloc !705
  unreachable

do.body11.i.i.i226:                               ; preds = %do.end8.i222
  %and.i.i.i.i224 = and i32 %62, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i224)
  %tobool.i.not.i.i.i225 = icmp eq i32 %and.i.i.i.i224, 0
  br i1 %tobool.i.not.i.i.i225, label %sg_set_buf.exit233, label %do.body19.i.i.i227, !prof !703

do.body19.i.i.i227:                               ; preds = %do.body11.i.i.i226
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #10, !srcloc !706
  unreachable

sg_set_buf.exit233:                               ; preds = %do.body11.i.i.i226
  %and.i228 = and i32 %57, 4095
  %and.i.i.i229 = and i32 %62, 3
  %or.i.i.i230 = or i32 %and.i.i.i229, %63
  %64 = ptrtoint ptr %add.ptr81 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %or.i.i.i230, ptr %add.ptr81, align 4
  %offset1.i.i231 = getelementptr %struct.scatterlist, ptr %sg, i32 %j.1384, i32 1
  %65 = ptrtoint ptr %offset1.i.i231 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %and.i228, ptr %offset1.i.i231, align 4
  %length.i.i232 = getelementptr %struct.scatterlist, ptr %sg, i32 %j.1384, i32 2
  %66 = ptrtoint ptr %length.i.i232 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 4096, ptr %length.i.i232, align 4
  %67 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %arrayidx82, align 4
  %69 = call ptr @memset(ptr %68, i32 255, i32 4096)
  %inc84 = add nuw nsw i32 %j.1384, 1
  %k.0 = add i32 %k.0385, -4096
  %exitcond.not = icmp eq i32 %inc84, %54
  br i1 %exitcond.not, label %sg_set_buf.exit233.while.end_crit_edge, label %sg_set_buf.exit233.while.body_crit_edge

sg_set_buf.exit233.while.body_crit_edge:          ; preds = %sg_set_buf.exit233
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

sg_set_buf.exit233.while.end_crit_edge:           ; preds = %sg_set_buf.exit233
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %sg_set_buf.exit233.while.end_crit_edge, %sg_set_buf.exit.while.end_crit_edge
  %j.1.lcssa = phi i32 [ 1, %sg_set_buf.exit.while.end_crit_edge ], [ %54, %sg_set_buf.exit233.while.end_crit_edge ]
  %k.0.lcssa = phi i32 [ %k.0382, %sg_set_buf.exit.while.end_crit_edge ], [ %k.0, %sg_set_buf.exit233.while.end_crit_edge ]
  %add.ptr87 = getelementptr %struct.scatterlist, ptr %sg, i32 %j.1.lcssa
  %arrayidx88 = getelementptr [4 x ptr], ptr @tvmem, i32 0, i32 %j.1.lcssa
  %70 = ptrtoint ptr %arrayidx88 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %arrayidx88, align 4
  %72 = ptrtoint ptr %71 to i32
  %cmp.i234 = icmp ugt ptr %71, inttoptr (i32 -1073741825 to ptr)
  br i1 %cmp.i234, label %land.lhs.true.i236, label %while.end.do.body5.i243_crit_edge, !prof !703

while.end.do.body5.i243_crit_edge:                ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body5.i243

land.lhs.true.i236:                               ; preds = %while.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %73 = load ptr, ptr @high_memory, align 4
  %cmp1.i235 = icmp ugt ptr %73, %71
  br i1 %cmp1.i235, label %land.rhs.i242, label %land.lhs.true.i236.do.body5.i243_crit_edge, !prof !703

land.lhs.true.i236.do.body5.i243_crit_edge:       ; preds = %land.lhs.true.i236
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body5.i243

land.rhs.i242:                                    ; preds = %land.lhs.true.i236
  %sub.i237 = add i32 %72, 1073741824
  %shr.i238 = lshr i32 %sub.i237, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %74 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i239 = add i32 %74, %shr.i238
  %call.i240 = call i32 @pfn_valid(i32 noundef %add.i239) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i240)
  %tobool.i241 = icmp eq i32 %call.i240, 0
  br i1 %tobool.i241, label %land.rhs.i242.do.body5.i243_crit_edge, label %do.end8.i247, !prof !701

land.rhs.i242.do.body5.i243_crit_edge:            ; preds = %land.rhs.i242
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body5.i243

do.body5.i243:                                    ; preds = %land.rhs.i242.do.body5.i243_crit_edge, %land.lhs.true.i236.do.body5.i243_crit_edge, %while.end.do.body5.i243_crit_edge
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 160, 0\0A.popsection", ""() #10, !srcloc !704
  unreachable

do.end8.i247:                                     ; preds = %land.rhs.i242
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %75 = load ptr, ptr @mem_map, align 4
  %add.ptr.i244 = getelementptr %struct.page, ptr %75, i32 %shr.i238
  %76 = ptrtoint ptr %add.ptr87 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %add.ptr87, align 4
  %78 = ptrtoint ptr %add.ptr.i244 to i32
  %and2.i.i.i245 = and i32 %78, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i245)
  %tobool.not.i.i.i246 = icmp eq i32 %and2.i.i.i245, 0
  br i1 %tobool.not.i.i.i246, label %do.body11.i.i.i251, label %do.body5.i.i.i248, !prof !703

do.body5.i.i.i248:                                ; preds = %do.end8.i247
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #10, !srcloc !705
  unreachable

do.body11.i.i.i251:                               ; preds = %do.end8.i247
  %and.i.i.i.i249 = and i32 %77, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i249)
  %tobool.i.not.i.i.i250 = icmp eq i32 %and.i.i.i.i249, 0
  br i1 %tobool.i.not.i.i.i250, label %sg_set_buf.exit258, label %do.body19.i.i.i252, !prof !703

do.body19.i.i.i252:                               ; preds = %do.body11.i.i.i251
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #10, !srcloc !706
  unreachable

sg_set_buf.exit258:                               ; preds = %do.body11.i.i.i251
  call void @__sanitizer_cov_trace_pc() #12
  %and.i253 = and i32 %72, 4095
  %and.i.i.i254 = and i32 %77, 3
  %or.i.i.i255 = or i32 %and.i.i.i254, %78
  %79 = ptrtoint ptr %add.ptr87 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %or.i.i.i255, ptr %add.ptr87, align 4
  %offset1.i.i256 = getelementptr %struct.scatterlist, ptr %sg, i32 %j.1.lcssa, i32 1
  %80 = ptrtoint ptr %offset1.i.i256 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %and.i253, ptr %offset1.i.i256, align 4
  %length.i.i257 = getelementptr %struct.scatterlist, ptr %sg, i32 %j.1.lcssa, i32 2
  %81 = ptrtoint ptr %length.i.i257 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %k.0.lcssa, ptr %length.i.i257, align 4
  %82 = ptrtoint ptr %arrayidx88 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %arrayidx88, align 4
  %84 = call ptr @memset(ptr %83, i32 255, i32 %k.0.lcssa)
  br label %if.end94

if.else90:                                        ; preds = %if.end65
  %85 = ptrtoint ptr %add.ptr to i32
  %cmp.i259 = icmp ugt ptr %add.ptr, inttoptr (i32 -1073741825 to ptr)
  br i1 %cmp.i259, label %land.lhs.true.i261, label %if.else90.do.body5.i268_crit_edge, !prof !703

if.else90.do.body5.i268_crit_edge:                ; preds = %if.else90
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body5.i268

land.lhs.true.i261:                               ; preds = %if.else90
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %86 = load ptr, ptr @high_memory, align 4
  %cmp1.i260 = icmp ugt ptr %86, %add.ptr
  br i1 %cmp1.i260, label %land.rhs.i267, label %land.lhs.true.i261.do.body5.i268_crit_edge, !prof !703

land.lhs.true.i261.do.body5.i268_crit_edge:       ; preds = %land.lhs.true.i261
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body5.i268

land.rhs.i267:                                    ; preds = %land.lhs.true.i261
  %sub.i262 = add i32 %85, 1073741824
  %shr.i263 = lshr i32 %sub.i262, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %87 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i264 = add i32 %87, %shr.i263
  %call.i265 = call i32 @pfn_valid(i32 noundef %add.i264) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i265)
  %tobool.i266 = icmp eq i32 %call.i265, 0
  br i1 %tobool.i266, label %land.rhs.i267.do.body5.i268_crit_edge, label %do.end8.i272, !prof !701

land.rhs.i267.do.body5.i268_crit_edge:            ; preds = %land.rhs.i267
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body5.i268

do.body5.i268:                                    ; preds = %land.rhs.i267.do.body5.i268_crit_edge, %land.lhs.true.i261.do.body5.i268_crit_edge, %if.else90.do.body5.i268_crit_edge
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 160, 0\0A.popsection", ""() #10, !srcloc !704
  unreachable

do.end8.i272:                                     ; preds = %land.rhs.i267
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %88 = load ptr, ptr @mem_map, align 4
  %add.ptr.i269 = getelementptr %struct.page, ptr %88, i32 %shr.i263
  %89 = ptrtoint ptr %sg to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %sg, align 4
  %91 = ptrtoint ptr %add.ptr.i269 to i32
  %and2.i.i.i270 = and i32 %91, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i270)
  %tobool.not.i.i.i271 = icmp eq i32 %and2.i.i.i270, 0
  br i1 %tobool.not.i.i.i271, label %do.body11.i.i.i276, label %do.body5.i.i.i273, !prof !703

do.body5.i.i.i273:                                ; preds = %do.end8.i272
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #10, !srcloc !705
  unreachable

do.body11.i.i.i276:                               ; preds = %do.end8.i272
  %and.i.i.i.i274 = and i32 %90, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i274)
  %tobool.i.not.i.i.i275 = icmp eq i32 %and.i.i.i.i274, 0
  br i1 %tobool.i.not.i.i.i275, label %sg_set_buf.exit283, label %do.body19.i.i.i277, !prof !703

do.body19.i.i.i277:                               ; preds = %do.body11.i.i.i276
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #10, !srcloc !706
  unreachable

sg_set_buf.exit283:                               ; preds = %do.body11.i.i.i276
  call void @__sanitizer_cov_trace_pc() #12
  %and.i278 = and i32 %85, 4095
  %and.i.i.i279 = and i32 %90, 3
  %or.i.i.i280 = or i32 %and.i.i.i279, %91
  %92 = ptrtoint ptr %sg to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %or.i.i.i280, ptr %sg, align 4
  %93 = ptrtoint ptr %offset1.i.i281 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %and.i278, ptr %offset1.i.i281, align 4
  %94 = ptrtoint ptr %length.i.i282 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %add, ptr %length.i.i282, align 4
  br label %if.end94

if.end94:                                         ; preds = %sg_set_buf.exit283, %sg_set_buf.exit258
  %95 = ptrtoint ptr %__crt_alg.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %__crt_alg.i, align 4
  %ivsize.i = getelementptr i8, ptr %96, i32 -100
  %97 = ptrtoint ptr %ivsize.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %ivsize.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %98)
  %tobool96.not = icmp eq i32 %98, 0
  br i1 %tobool96.not, label %if.end94.if.end98_crit_edge, label %if.then97

if.end94.if.end98_crit_edge:                      ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end98

if.then97:                                        ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #12
  %99 = call ptr @memset(ptr %iv, i32 255, i32 %98)
  br label %if.end98

if.end98:                                         ; preds = %if.then97, %if.end94.if.end98_crit_edge
  %100 = ptrtoint ptr %src1.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %sg, ptr %src1.i, align 8
  %101 = ptrtoint ptr %dst2.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %sg, ptr %dst2.i, align 4
  %102 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %add, ptr %call9.i.i, align 128
  %103 = ptrtoint ptr %iv4.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %iv, ptr %iv4.i, align 4
  br i1 %tobool102.not, label %if.else107, label %if.then103

if.then103:                                       ; preds = %if.end98
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %104 = load volatile i32, ptr @jiffies, align 128
  %add.neg.i = sub i32 %mul.neg.i, %104
  %105 = load volatile i32, ptr @jiffies, align 128
  %sub26.i = add i32 %add.neg.i, %105
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub26.i)
  %cmp27.i = icmp slt i32 %sub26.i, 0
  br i1 %cmp27.i, label %if.then103.for.body.i_crit_edge, label %if.then103.do.end.i_crit_edge

if.then103.do.end.i_crit_edge:                    ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

if.then103.for.body.i_crit_edge:                  ; preds = %if.then103
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then103.for.body.i_crit_edge
  %bcount.028.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.then103.for.body.i_crit_edge ]
  br i1 %tobool.not.i285, label %if.else.i, label %if.then.i287

if.then.i287:                                     ; preds = %for.body.i
  %call.i286 = call i32 @crypto_skcipher_encrypt(ptr noundef nonnull %call9.i.i) #10
  %106 = zext i32 %call.i286 to i64
  call void @__sanitizer_cov_trace_switch(i64 %106, ptr @__sancov_gen_cov_switch_values.317)
  switch i32 %call.i286, label %if.then.i287.if.end.i_crit_edge [
    i32 -115, label %if.then.i287.if.end.sink.split.i_crit_edge
    i32 -16, label %if.then.i287.if.end.sink.split.i_crit_edge571
  ]

if.then.i287.if.end.sink.split.i_crit_edge571:    ; preds = %if.then.i287
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.sink.split.i

if.then.i287.if.end.sink.split.i_crit_edge:       ; preds = %if.then.i287
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.sink.split.i

if.then.i287.if.end.i_crit_edge:                  ; preds = %if.then.i287
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.else.i:                                        ; preds = %for.body.i
  %call2.i = call i32 @crypto_skcipher_decrypt(ptr noundef nonnull %call9.i.i) #10
  %107 = zext i32 %call2.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %107, ptr @__sancov_gen_cov_switch_values.318)
  switch i32 %call2.i, label %if.else.i.if.end.i_crit_edge [
    i32 -115, label %if.else.i.if.end.sink.split.i_crit_edge
    i32 -16, label %if.else.i.if.end.sink.split.i_crit_edge572
  ]

if.else.i.if.end.sink.split.i_crit_edge572:       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.sink.split.i

if.else.i.if.end.sink.split.i_crit_edge:          ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.sink.split.i

if.else.i.if.end.i_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.end.sink.split.i:                              ; preds = %if.else.i.if.end.sink.split.i_crit_edge, %if.else.i.if.end.sink.split.i_crit_edge572, %if.then.i287.if.end.sink.split.i_crit_edge, %if.then.i287.if.end.sink.split.i_crit_edge571
  %108 = ptrtoint ptr %data2.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %data2.i, align 4
  call void @wait_for_completion(ptr noundef %109) #10
  %110 = ptrtoint ptr %109 to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 0, ptr %109, align 4
  %err2.i.i21.i = getelementptr inbounds %struct.crypto_wait, ptr %109, i32 0, i32 1
  %111 = ptrtoint ptr %err2.i.i21.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %err2.i.i21.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.end.sink.split.i, %if.else.i.if.end.i_crit_edge, %if.then.i287.if.end.i_crit_edge
  %ret.0.i = phi i32 [ %call.i286, %if.then.i287.if.end.i_crit_edge ], [ %call2.i, %if.else.i.if.end.i_crit_edge ], [ %112, %if.end.sink.split.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %tobool4.not.i = icmp eq i32 %ret.0.i, 0
  br i1 %tobool4.not.i, label %for.inc.i, label %if.end109

for.inc.i:                                        ; preds = %if.end.i
  %inc.i = add i32 %bcount.028.i, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %113 = load volatile i32, ptr @jiffies, align 128
  %sub.i288 = add i32 %113, %add.neg.i
  %cmp.i289 = icmp slt i32 %sub.i288, 0
  br i1 %cmp.i289, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.do.end.i_crit_edge

for.inc.i.do.end.i_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

do.end.i:                                         ; preds = %for.inc.i.do.end.i_crit_edge, %if.then103.do.end.i_crit_edge
  %bcount.0.lcssa.i = phi i32 [ 0, %if.then103.do.end.i_crit_edge ], [ %inc.i, %for.inc.i.do.end.i_crit_edge ]
  %conv.i = sext i32 %bcount.0.lcssa.i to i64
  %conv7.i = sext i32 %add to i64
  %mul8.i = mul nsw i64 %conv.i, %conv7.i
  %call9.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.167, i32 noundef %bcount.0.lcssa.i, i32 noundef %secs, i64 noundef %mul8.i) #13
  call void @__might_resched(ptr noundef nonnull @.str.2, i32 noundef 1612, i32 noundef 0) #10
  %call.i290.c = call i32 @__cond_resched() #10
  br label %do.cond121

if.else107:                                       ; preds = %if.end98
  br i1 %tobool.not.i285, label %if.else.i296, label %if.then.i294

for.cond.i:                                       ; preds = %if.end.i299
  br i1 %tobool.not.i285, label %for.cond.i.if.else.1.i_crit_edge, label %for.cond.i.if.then.1.i_crit_edge

for.cond.i.if.then.1.i_crit_edge:                 ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.1.i

for.cond.i.if.else.1.i_crit_edge:                 ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.1.i

if.then.1.i:                                      ; preds = %if.then.i294.if.then.1.i_crit_edge, %for.cond.i.if.then.1.i_crit_edge
  %call.1.i = call i32 @crypto_skcipher_encrypt(ptr noundef nonnull %call9.i.i) #10
  %114 = zext i32 %call.1.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %114, ptr @__sancov_gen_cov_switch_values.319)
  switch i32 %call.1.i, label %if.then.1.i.cleanup_crit_edge [
    i32 -115, label %if.then.1.i.if.end.1.i_crit_edge
    i32 -16, label %if.then.1.i.if.end.1.i_crit_edge573
    i32 0, label %if.then.1.i.if.then.2.i_crit_edge
  ]

if.then.1.i.if.then.2.i_crit_edge:                ; preds = %if.then.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.2.i

if.then.1.i.if.end.1.i_crit_edge573:              ; preds = %if.then.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.1.i

if.then.1.i.if.end.1.i_crit_edge:                 ; preds = %if.then.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.1.i

if.then.1.i.cleanup_crit_edge:                    ; preds = %if.then.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.else.1.i:                                      ; preds = %if.else.i296.if.else.1.i_crit_edge, %for.cond.i.if.else.1.i_crit_edge
  %call2.1.i = call i32 @crypto_skcipher_decrypt(ptr noundef nonnull %call9.i.i) #10
  %115 = zext i32 %call2.1.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %115, ptr @__sancov_gen_cov_switch_values.320)
  switch i32 %call2.1.i, label %if.else.1.i.cleanup_crit_edge [
    i32 -115, label %if.else.1.i.if.end.1.i_crit_edge
    i32 -16, label %if.else.1.i.if.end.1.i_crit_edge574
    i32 0, label %if.else.1.i.if.else.2.i_crit_edge
  ]

if.else.1.i.if.else.2.i_crit_edge:                ; preds = %if.else.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.2.i

if.else.1.i.if.end.1.i_crit_edge574:              ; preds = %if.else.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.1.i

if.else.1.i.if.end.1.i_crit_edge:                 ; preds = %if.else.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.1.i

if.else.1.i.cleanup_crit_edge:                    ; preds = %if.else.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.1.i:                                       ; preds = %if.else.1.i.if.end.1.i_crit_edge, %if.else.1.i.if.end.1.i_crit_edge574, %if.then.1.i.if.end.1.i_crit_edge, %if.then.1.i.if.end.1.i_crit_edge573
  %116 = ptrtoint ptr %data2.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %data2.i, align 4
  call void @wait_for_completion(ptr noundef %117) #10
  %118 = ptrtoint ptr %117 to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 0, ptr %117, align 4
  %err2.i.i61.1.i = getelementptr inbounds %struct.crypto_wait, ptr %117, i32 0, i32 1
  %119 = ptrtoint ptr %err2.i.i61.1.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %err2.i.i61.1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %120)
  %tobool4.not.1.i = icmp eq i32 %120, 0
  br i1 %tobool4.not.1.i, label %for.cond.1.i, label %if.end.1.i.cleanup_crit_edge

if.end.1.i.cleanup_crit_edge:                     ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond.1.i:                                     ; preds = %if.end.1.i
  br i1 %tobool.not.i285, label %for.cond.1.i.if.else.2.i_crit_edge, label %for.cond.1.i.if.then.2.i_crit_edge

for.cond.1.i.if.then.2.i_crit_edge:               ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.2.i

for.cond.1.i.if.else.2.i_crit_edge:               ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.2.i

if.then.2.i:                                      ; preds = %for.cond.1.i.if.then.2.i_crit_edge, %if.then.1.i.if.then.2.i_crit_edge
  %call.2.i = call i32 @crypto_skcipher_encrypt(ptr noundef nonnull %call9.i.i) #10
  %121 = zext i32 %call.2.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %121, ptr @__sancov_gen_cov_switch_values.321)
  switch i32 %call.2.i, label %if.then.2.i.cleanup_crit_edge [
    i32 -115, label %if.then.2.i.if.end.2.i_crit_edge
    i32 -16, label %if.then.2.i.if.end.2.i_crit_edge575
    i32 0, label %if.then.2.i.if.then.3.i_crit_edge
  ]

if.then.2.i.if.then.3.i_crit_edge:                ; preds = %if.then.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.3.i

if.then.2.i.if.end.2.i_crit_edge575:              ; preds = %if.then.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.2.i

if.then.2.i.if.end.2.i_crit_edge:                 ; preds = %if.then.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.2.i

if.then.2.i.cleanup_crit_edge:                    ; preds = %if.then.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.else.2.i:                                      ; preds = %for.cond.1.i.if.else.2.i_crit_edge, %if.else.1.i.if.else.2.i_crit_edge
  %call2.2.i = call i32 @crypto_skcipher_decrypt(ptr noundef nonnull %call9.i.i) #10
  %122 = zext i32 %call2.2.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %122, ptr @__sancov_gen_cov_switch_values.322)
  switch i32 %call2.2.i, label %if.else.2.i.cleanup_crit_edge [
    i32 -115, label %if.else.2.i.if.end.2.i_crit_edge
    i32 -16, label %if.else.2.i.if.end.2.i_crit_edge576
    i32 0, label %if.else.2.i.if.else.3.i_crit_edge
  ]

if.else.2.i.if.else.3.i_crit_edge:                ; preds = %if.else.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.3.i

if.else.2.i.if.end.2.i_crit_edge576:              ; preds = %if.else.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.2.i

if.else.2.i.if.end.2.i_crit_edge:                 ; preds = %if.else.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.2.i

if.else.2.i.cleanup_crit_edge:                    ; preds = %if.else.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.2.i:                                       ; preds = %if.else.2.i.if.end.2.i_crit_edge, %if.else.2.i.if.end.2.i_crit_edge576, %if.then.2.i.if.end.2.i_crit_edge, %if.then.2.i.if.end.2.i_crit_edge575
  %123 = ptrtoint ptr %data2.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %data2.i, align 4
  call void @wait_for_completion(ptr noundef %124) #10
  %125 = ptrtoint ptr %124 to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 0, ptr %124, align 4
  %err2.i.i61.2.i = getelementptr inbounds %struct.crypto_wait, ptr %124, i32 0, i32 1
  %126 = ptrtoint ptr %err2.i.i61.2.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %err2.i.i61.2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %127)
  %tobool4.not.2.i = icmp eq i32 %127, 0
  br i1 %tobool4.not.2.i, label %for.cond.2.i, label %if.end.2.i.cleanup_crit_edge

if.end.2.i.cleanup_crit_edge:                     ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond.2.i:                                     ; preds = %if.end.2.i
  br i1 %tobool.not.i285, label %for.cond.2.i.if.else.3.i_crit_edge, label %for.cond.2.i.if.then.3.i_crit_edge

for.cond.2.i.if.then.3.i_crit_edge:               ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.3.i

for.cond.2.i.if.else.3.i_crit_edge:               ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.3.i

if.then.3.i:                                      ; preds = %for.cond.2.i.if.then.3.i_crit_edge, %if.then.2.i.if.then.3.i_crit_edge
  %call.3.i = call i32 @crypto_skcipher_encrypt(ptr noundef nonnull %call9.i.i) #10
  %128 = zext i32 %call.3.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %128, ptr @__sancov_gen_cov_switch_values.323)
  switch i32 %call.3.i, label %if.then.3.i.if.end.3.i_crit_edge [
    i32 -115, label %if.then.3.i.if.end.3.sink.split.i_crit_edge
    i32 -16, label %if.then.3.i.if.end.3.sink.split.i_crit_edge577
  ]

if.then.3.i.if.end.3.sink.split.i_crit_edge577:   ; preds = %if.then.3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.3.sink.split.i

if.then.3.i.if.end.3.sink.split.i_crit_edge:      ; preds = %if.then.3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.3.sink.split.i

if.then.3.i.if.end.3.i_crit_edge:                 ; preds = %if.then.3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.3.i

if.else.3.i:                                      ; preds = %for.cond.2.i.if.else.3.i_crit_edge, %if.else.2.i.if.else.3.i_crit_edge
  %call2.3.i = call i32 @crypto_skcipher_decrypt(ptr noundef nonnull %call9.i.i) #10
  %129 = zext i32 %call2.3.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %129, ptr @__sancov_gen_cov_switch_values.324)
  switch i32 %call2.3.i, label %if.else.3.i.if.end.3.i_crit_edge [
    i32 -115, label %if.else.3.i.if.end.3.sink.split.i_crit_edge
    i32 -16, label %if.else.3.i.if.end.3.sink.split.i_crit_edge578
  ]

if.else.3.i.if.end.3.sink.split.i_crit_edge578:   ; preds = %if.else.3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.3.sink.split.i

if.else.3.i.if.end.3.sink.split.i_crit_edge:      ; preds = %if.else.3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.3.sink.split.i

if.else.3.i.if.end.3.i_crit_edge:                 ; preds = %if.else.3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.3.i

if.end.3.sink.split.i:                            ; preds = %if.else.3.i.if.end.3.sink.split.i_crit_edge, %if.else.3.i.if.end.3.sink.split.i_crit_edge578, %if.then.3.i.if.end.3.sink.split.i_crit_edge, %if.then.3.i.if.end.3.sink.split.i_crit_edge577
  %130 = ptrtoint ptr %data2.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %data2.i, align 4
  call void @wait_for_completion(ptr noundef %131) #10
  %132 = ptrtoint ptr %131 to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 0, ptr %131, align 4
  %err2.i.i61.3.i = getelementptr inbounds %struct.crypto_wait, ptr %131, i32 0, i32 1
  %133 = ptrtoint ptr %err2.i.i61.3.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %err2.i.i61.3.i, align 4
  br label %if.end.3.i

if.end.3.i:                                       ; preds = %if.end.3.sink.split.i, %if.else.3.i.if.end.3.i_crit_edge, %if.then.3.i.if.end.3.i_crit_edge
  %ret.1.3.i = phi i32 [ %call.3.i, %if.then.3.i.if.end.3.i_crit_edge ], [ %call2.3.i, %if.else.3.i.if.end.3.i_crit_edge ], [ %134, %if.end.3.sink.split.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1.3.i)
  %tobool4.not.3.i = icmp eq i32 %ret.1.3.i, 0
  br i1 %tobool4.not.3.i, label %if.end.3.i.for.body9.i_crit_edge, label %if.end.3.i.cleanup_crit_edge

if.end.3.i.cleanup_crit_edge:                     ; preds = %if.end.3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.3.i.for.body9.i_crit_edge:                 ; preds = %if.end.3.i
  br label %for.body9.i

if.then.i294:                                     ; preds = %if.else107
  %call.i293 = call i32 @crypto_skcipher_encrypt(ptr noundef nonnull %call9.i.i) #10
  %135 = zext i32 %call.i293 to i64
  call void @__sanitizer_cov_trace_switch(i64 %135, ptr @__sancov_gen_cov_switch_values.325)
  switch i32 %call.i293, label %if.then.i294.cleanup_crit_edge [
    i32 -115, label %if.then.i294.if.end.i299_crit_edge
    i32 -16, label %if.then.i294.if.end.i299_crit_edge579
    i32 0, label %if.then.i294.if.then.1.i_crit_edge
  ]

if.then.i294.if.then.1.i_crit_edge:               ; preds = %if.then.i294
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.1.i

if.then.i294.if.end.i299_crit_edge579:            ; preds = %if.then.i294
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i299

if.then.i294.if.end.i299_crit_edge:               ; preds = %if.then.i294
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i299

if.then.i294.cleanup_crit_edge:                   ; preds = %if.then.i294
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.else.i296:                                     ; preds = %if.else107
  %call2.i295 = call i32 @crypto_skcipher_decrypt(ptr noundef nonnull %call9.i.i) #10
  %136 = zext i32 %call2.i295 to i64
  call void @__sanitizer_cov_trace_switch(i64 %136, ptr @__sancov_gen_cov_switch_values.326)
  switch i32 %call2.i295, label %if.else.i296.cleanup_crit_edge [
    i32 -115, label %if.else.i296.if.end.i299_crit_edge
    i32 -16, label %if.else.i296.if.end.i299_crit_edge580
    i32 0, label %if.else.i296.if.else.1.i_crit_edge
  ]

if.else.i296.if.else.1.i_crit_edge:               ; preds = %if.else.i296
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.1.i

if.else.i296.if.end.i299_crit_edge580:            ; preds = %if.else.i296
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i299

if.else.i296.if.end.i299_crit_edge:               ; preds = %if.else.i296
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i299

if.else.i296.cleanup_crit_edge:                   ; preds = %if.else.i296
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i299:                                      ; preds = %if.else.i296.if.end.i299_crit_edge, %if.else.i296.if.end.i299_crit_edge580, %if.then.i294.if.end.i299_crit_edge, %if.then.i294.if.end.i299_crit_edge579
  %137 = ptrtoint ptr %data2.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %data2.i, align 4
  call void @wait_for_completion(ptr noundef %138) #10
  %139 = ptrtoint ptr %138 to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 0, ptr %138, align 4
  %err2.i.i61.i = getelementptr inbounds %struct.crypto_wait, ptr %138, i32 0, i32 1
  %140 = ptrtoint ptr %err2.i.i61.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %err2.i.i61.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %141)
  %tobool4.not.i298 = icmp eq i32 %141, 0
  br i1 %tobool4.not.i298, label %for.cond.i, label %if.end.i299.cleanup_crit_edge

if.end.i299.cleanup_crit_edge:                    ; preds = %if.end.i299
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body9.i:                                      ; preds = %for.inc32.i.for.body9.i_crit_edge, %if.end.3.i.for.body9.i_crit_edge
  %cycles.083.i = phi i32 [ %add.i301, %for.inc32.i.for.body9.i_crit_edge ], [ 0, %if.end.3.i.for.body9.i_crit_edge ]
  %i.182.i = phi i32 [ %inc33.i, %for.inc32.i.for.body9.i_crit_edge ], [ 0, %if.end.3.i.for.body9.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %c.i) #10
  %142 = ptrtoint ptr %c.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 -1, ptr %c.i, align 4, !annotation !702
  %call10.i = call i32 @read_current_timer(ptr noundef nonnull %c.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool11.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool11.not.i, label %cond.false.i, label %for.body9.i.cond.end.i_crit_edge

for.body9.i.cond.end.i_crit_edge:                 ; preds = %for.body9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end.i

cond.false.i:                                     ; preds = %for.body9.i
  call void @__sanitizer_cov_trace_pc() #12
  %143 = ptrtoint ptr %c.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %c.i, align 4
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %for.body9.i.cond.end.i_crit_edge
  %cond.i = phi i32 [ %144, %cond.false.i ], [ 0, %for.body9.i.cond.end.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %c.i) #10
  br i1 %tobool.not.i285, label %if.else16.i, label %if.then13.i

if.then13.i:                                      ; preds = %cond.end.i
  %call14.i = call i32 @crypto_skcipher_encrypt(ptr noundef nonnull %call9.i.i) #10
  %145 = zext i32 %call14.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %145, ptr @__sancov_gen_cov_switch_values.327)
  switch i32 %call14.i, label %if.then13.i.if.end19.i_crit_edge [
    i32 -115, label %if.then13.i.if.end19.sink.split.i_crit_edge
    i32 -16, label %if.then13.i.if.end19.sink.split.i_crit_edge581
  ]

if.then13.i.if.end19.sink.split.i_crit_edge581:   ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19.sink.split.i

if.then13.i.if.end19.sink.split.i_crit_edge:      ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19.sink.split.i

if.then13.i.if.end19.i_crit_edge:                 ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19.i

if.else16.i:                                      ; preds = %cond.end.i
  %call17.i = call i32 @crypto_skcipher_decrypt(ptr noundef nonnull %call9.i.i) #10
  %146 = zext i32 %call17.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %146, ptr @__sancov_gen_cov_switch_values.328)
  switch i32 %call17.i, label %if.else16.i.if.end19.i_crit_edge [
    i32 -115, label %if.else16.i.if.end19.sink.split.i_crit_edge
    i32 -16, label %if.else16.i.if.end19.sink.split.i_crit_edge582
  ]

if.else16.i.if.end19.sink.split.i_crit_edge582:   ; preds = %if.else16.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19.sink.split.i

if.else16.i.if.end19.sink.split.i_crit_edge:      ; preds = %if.else16.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19.sink.split.i

if.else16.i.if.end19.i_crit_edge:                 ; preds = %if.else16.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19.i

if.end19.sink.split.i:                            ; preds = %if.else16.i.if.end19.sink.split.i_crit_edge, %if.else16.i.if.end19.sink.split.i_crit_edge582, %if.then13.i.if.end19.sink.split.i_crit_edge, %if.then13.i.if.end19.sink.split.i_crit_edge581
  %147 = ptrtoint ptr %data2.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %data2.i, align 4
  call void @wait_for_completion(ptr noundef %148) #10
  %149 = ptrtoint ptr %148 to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 0, ptr %148, align 4
  %err2.i.i71.i = getelementptr inbounds %struct.crypto_wait, ptr %148, i32 0, i32 1
  %150 = ptrtoint ptr %err2.i.i71.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %err2.i.i71.i, align 4
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.end19.sink.split.i, %if.else16.i.if.end19.i_crit_edge, %if.then13.i.if.end19.i_crit_edge
  %ret.3.i = phi i32 [ %call14.i, %if.then13.i.if.end19.i_crit_edge ], [ %call17.i, %if.else16.i.if.end19.i_crit_edge ], [ %151, %if.end19.sink.split.i ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %c20.i) #10
  %152 = ptrtoint ptr %c20.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 -1, ptr %c20.i, align 4, !annotation !702
  %call22.i = call i32 @read_current_timer(ptr noundef nonnull %c20.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i)
  %tobool23.not.i = icmp eq i32 %call22.i, 0
  br i1 %tobool23.not.i, label %cond.false25.i, label %if.end19.i.cond.end26.i_crit_edge

if.end19.i.cond.end26.i_crit_edge:                ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end26.i

cond.false25.i:                                   ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #12
  %153 = ptrtoint ptr %c20.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %c20.i, align 4
  br label %cond.end26.i

cond.end26.i:                                     ; preds = %cond.false25.i, %if.end19.i.cond.end26.i_crit_edge
  %cond27.i = phi i32 [ %154, %cond.false25.i ], [ 0, %if.end19.i.cond.end26.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %c20.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.3.i)
  %tobool28.not.i = icmp eq i32 %ret.3.i, 0
  br i1 %tobool28.not.i, label %for.inc32.i, label %cond.end26.i.cleanup_crit_edge

cond.end26.i.cleanup_crit_edge:                   ; preds = %cond.end26.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.inc32.i:                                      ; preds = %cond.end26.i
  %sub.i300 = sub i32 %cycles.083.i, %cond.i
  %add.i301 = add i32 %cond27.i, %sub.i300
  %inc33.i = add nuw nsw i32 %i.182.i, 1
  %exitcond.not.i = icmp eq i32 %inc33.i, 8
  br i1 %exitcond.not.i, label %if.end109.thread328, label %for.inc32.i.for.body9.i_crit_edge

for.inc32.i.for.body9.i_crit_edge:                ; preds = %for.inc32.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body9.i

if.end109.thread328:                              ; preds = %for.inc32.i
  call void @__sanitizer_cov_trace_pc() #12
  %add38.i = add i32 %add.i301, 4
  %div59.i = lshr i32 %add38.i, 3
  %call39.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.169, i32 noundef %div59.i, i32 noundef %add) #13
  br label %do.cond121

if.end109:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__might_resched(ptr noundef nonnull @.str.2, i32 noundef 1612, i32 noundef 0) #10
  %call.i290 = call i32 @__cond_resched() #10
  br label %cleanup

cleanup.thread:                                   ; preds = %do.end61, %do.end34
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %sg) #10
  br label %out_free_req

cleanup:                                          ; preds = %if.end109, %cond.end26.i.cleanup_crit_edge, %if.end.i299.cleanup_crit_edge, %if.else.i296.cleanup_crit_edge, %if.then.i294.cleanup_crit_edge, %if.end.3.i.cleanup_crit_edge, %if.end.2.i.cleanup_crit_edge, %if.else.2.i.cleanup_crit_edge, %if.then.2.i.cleanup_crit_edge, %if.end.1.i.cleanup_crit_edge, %if.else.1.i.cleanup_crit_edge, %if.then.1.i.cleanup_crit_edge
  %155 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %base.i, align 128
  %call117 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.164, ptr noundef nonnull %.str.142..str.143, i32 noundef %156) #13
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %sg) #10
  br label %do.end123

do.cond121:                                       ; preds = %if.end109.thread328, %do.end.i
  %incdec.ptr = getelementptr i32, ptr %b_size.0, i32 1
  %inc119 = add i32 %i.1, 1
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %sg) #10
  %exitcond423 = icmp eq i32 %inc119, %13
  br i1 %exitcond423, label %do.cond121.do.end123_crit_edge, label %do.cond121.do.body25_crit_edge

do.cond121.do.body25_crit_edge:                   ; preds = %do.cond121
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body25

do.cond121.do.end123_crit_edge:                   ; preds = %do.cond121
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end123

do.end123:                                        ; preds = %do.cond121.do.end123_crit_edge, %cleanup
  %i.2339 = phi i32 [ %i.1, %cleanup ], [ %13, %do.cond121.do.end123_crit_edge ]
  %incdec.ptr124 = getelementptr i8, ptr %keysize.addr.0, i32 1
  %157 = ptrtoint ptr %incdec.ptr124 to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load i8, ptr %incdec.ptr124, align 1
  %tobool126.not = icmp eq i8 %158, 0
  br i1 %tobool126.not, label %do.end123.out_free_req_crit_edge, label %do.end123.do.body24_crit_edge

do.end123.do.body24_crit_edge:                    ; preds = %do.end123
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body24

do.end123.out_free_req_crit_edge:                 ; preds = %do.end123
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_free_req

out_free_req:                                     ; preds = %do.end123.out_free_req_crit_edge, %cleanup.thread
  call void @kfree_sensitive(ptr noundef nonnull %call9.i.i) #10
  br label %out

out:                                              ; preds = %out_free_req, %do.end20
  call void @crypto_destroy_tfm(ptr noundef %call, ptr noundef %base.i) #10
  br label %cleanup128

cleanup128:                                       ; preds = %out, %do.end
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %iv) #10
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %wait) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_alloc_skcipher(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_req_done(ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_skcipher_setkey(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_table(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pfn_valid(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_skcipher_encrypt(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_skcipher_decrypt(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @read_current_timer(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_sensitive(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_destroy_tfm(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @testmgr_alloc_buf(ptr nocapture noundef %buf) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__get_free_pages(i32 noundef 3264, i32 noundef 0) #10
  %0 = inttoptr i32 %call to ptr
  %1 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %0, ptr %buf, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.inc

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.inc:                                          ; preds = %entry
  %call.1 = tail call i32 @__get_free_pages(i32 noundef 3264, i32 noundef 0) #10
  %2 = inttoptr i32 %call.1 to ptr
  %arrayidx.1 = getelementptr ptr, ptr %buf, i32 1
  %3 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %2, ptr %arrayidx.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1)
  %tobool.not.1 = icmp eq i32 %call.1, 0
  br i1 %tobool.not.1, label %for.inc.while.body_crit_edge, label %for.inc.1

for.inc.while.body_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

for.inc.1:                                        ; preds = %for.inc
  %call.2 = tail call i32 @__get_free_pages(i32 noundef 3264, i32 noundef 0) #10
  %4 = inttoptr i32 %call.2 to ptr
  %arrayidx.2 = getelementptr ptr, ptr %buf, i32 2
  %5 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %arrayidx.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2)
  %tobool.not.2 = icmp eq i32 %call.2, 0
  br i1 %tobool.not.2, label %for.inc.1.while.body_crit_edge, label %for.inc.2

for.inc.1.while.body_crit_edge:                   ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

for.inc.2:                                        ; preds = %for.inc.1
  %call.3 = tail call i32 @__get_free_pages(i32 noundef 3264, i32 noundef 0) #10
  %6 = inttoptr i32 %call.3 to ptr
  %arrayidx.3 = getelementptr ptr, ptr %buf, i32 3
  %7 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %arrayidx.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.3)
  %tobool.not.3 = icmp eq i32 %call.3, 0
  br i1 %tobool.not.3, label %for.inc.2.while.body_crit_edge, label %for.inc.3

for.inc.2.while.body_crit_edge:                   ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

for.inc.3:                                        ; preds = %for.inc.2
  %call.4 = tail call i32 @__get_free_pages(i32 noundef 3264, i32 noundef 0) #10
  %8 = inttoptr i32 %call.4 to ptr
  %arrayidx.4 = getelementptr ptr, ptr %buf, i32 4
  %9 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %arrayidx.4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.4)
  %tobool.not.4 = icmp eq i32 %call.4, 0
  br i1 %tobool.not.4, label %for.inc.3.while.body_crit_edge, label %for.inc.4

for.inc.3.while.body_crit_edge:                   ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

for.inc.4:                                        ; preds = %for.inc.3
  %call.5 = tail call i32 @__get_free_pages(i32 noundef 3264, i32 noundef 0) #10
  %10 = inttoptr i32 %call.5 to ptr
  %arrayidx.5 = getelementptr ptr, ptr %buf, i32 5
  %11 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %arrayidx.5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.5)
  %tobool.not.5 = icmp eq i32 %call.5, 0
  br i1 %tobool.not.5, label %for.inc.4.while.body_crit_edge, label %for.inc.5

for.inc.4.while.body_crit_edge:                   ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

for.inc.5:                                        ; preds = %for.inc.4
  %call.6 = tail call i32 @__get_free_pages(i32 noundef 3264, i32 noundef 0) #10
  %12 = inttoptr i32 %call.6 to ptr
  %arrayidx.6 = getelementptr ptr, ptr %buf, i32 6
  %13 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %arrayidx.6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.6)
  %tobool.not.6 = icmp eq i32 %call.6, 0
  br i1 %tobool.not.6, label %for.inc.5.while.body_crit_edge, label %for.inc.6

for.inc.5.while.body_crit_edge:                   ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

for.inc.6:                                        ; preds = %for.inc.5
  %call.7 = tail call i32 @__get_free_pages(i32 noundef 3264, i32 noundef 0) #10
  %14 = inttoptr i32 %call.7 to ptr
  %arrayidx.7 = getelementptr ptr, ptr %buf, i32 7
  %15 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %arrayidx.7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.7)
  %tobool.not.7 = icmp eq i32 %call.7, 0
  br i1 %tobool.not.7, label %for.inc.6.while.body_crit_edge, label %for.inc.6.cleanup_crit_edge

for.inc.6.cleanup_crit_edge:                      ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.inc.6.while.body_crit_edge:                   ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.body:                                       ; preds = %for.inc.6.while.body_crit_edge, %for.inc.5.while.body_crit_edge, %for.inc.4.while.body_crit_edge, %for.inc.3.while.body_crit_edge, %for.inc.2.while.body_crit_edge, %for.inc.1.while.body_crit_edge, %for.inc.while.body_crit_edge
  %i.115.ph = phi i32 [ 1, %for.inc.while.body_crit_edge ], [ 2, %for.inc.1.while.body_crit_edge ], [ 3, %for.inc.2.while.body_crit_edge ], [ 4, %for.inc.3.while.body_crit_edge ], [ 5, %for.inc.4.while.body_crit_edge ], [ 6, %for.inc.5.while.body_crit_edge ], [ 7, %for.inc.6.while.body_crit_edge ]
  %dec = add nsw i32 %i.115.ph, -1
  %arrayidx3 = getelementptr ptr, ptr %buf, i32 %dec
  %16 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx3, align 4
  %18 = ptrtoint ptr %17 to i32
  tail call void @free_pages(i32 noundef %18, i32 noundef 0) #10
  br i1 %tobool.not.1, label %while.body.cleanup_crit_edge, label %while.body.1

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

while.body.1:                                     ; preds = %while.body
  %dec.1 = add nsw i32 %i.115.ph, -2
  %arrayidx3.1 = getelementptr ptr, ptr %buf, i32 %dec.1
  %19 = ptrtoint ptr %arrayidx3.1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx3.1, align 4
  %21 = ptrtoint ptr %20 to i32
  tail call void @free_pages(i32 noundef %21, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec)
  %cmp2.1 = icmp ugt i32 %dec, 1
  br i1 %cmp2.1, label %while.body.2, label %while.body.1.cleanup_crit_edge

while.body.1.cleanup_crit_edge:                   ; preds = %while.body.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

while.body.2:                                     ; preds = %while.body.1
  %dec.2 = add nsw i32 %i.115.ph, -3
  %arrayidx3.2 = getelementptr ptr, ptr %buf, i32 %dec.2
  %22 = ptrtoint ptr %arrayidx3.2 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx3.2, align 4
  %24 = ptrtoint ptr %23 to i32
  tail call void @free_pages(i32 noundef %24, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.1)
  %cmp2.2 = icmp ugt i32 %dec.1, 1
  br i1 %cmp2.2, label %while.body.3, label %while.body.2.cleanup_crit_edge

while.body.2.cleanup_crit_edge:                   ; preds = %while.body.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

while.body.3:                                     ; preds = %while.body.2
  %dec.3 = add nsw i32 %i.115.ph, -4
  %arrayidx3.3 = getelementptr ptr, ptr %buf, i32 %dec.3
  %25 = ptrtoint ptr %arrayidx3.3 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx3.3, align 4
  %27 = ptrtoint ptr %26 to i32
  tail call void @free_pages(i32 noundef %27, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.2)
  %cmp2.3 = icmp ugt i32 %dec.2, 1
  br i1 %cmp2.3, label %while.body.4, label %while.body.3.cleanup_crit_edge

while.body.3.cleanup_crit_edge:                   ; preds = %while.body.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

while.body.4:                                     ; preds = %while.body.3
  %dec.4 = add nsw i32 %i.115.ph, -5
  %arrayidx3.4 = getelementptr ptr, ptr %buf, i32 %dec.4
  %28 = ptrtoint ptr %arrayidx3.4 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx3.4, align 4
  %30 = ptrtoint ptr %29 to i32
  tail call void @free_pages(i32 noundef %30, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.3)
  %cmp2.4 = icmp ugt i32 %dec.3, 1
  br i1 %cmp2.4, label %while.body.5, label %while.body.4.cleanup_crit_edge

while.body.4.cleanup_crit_edge:                   ; preds = %while.body.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

while.body.5:                                     ; preds = %while.body.4
  %dec.5 = add nsw i32 %i.115.ph, -6
  %arrayidx3.5 = getelementptr ptr, ptr %buf, i32 %dec.5
  %31 = ptrtoint ptr %arrayidx3.5 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx3.5, align 4
  %33 = ptrtoint ptr %32 to i32
  tail call void @free_pages(i32 noundef %33, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.4)
  %cmp2.5 = icmp ugt i32 %dec.4, 1
  br i1 %cmp2.5, label %while.body.6, label %while.body.5.cleanup_crit_edge

while.body.5.cleanup_crit_edge:                   ; preds = %while.body.5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

while.body.6:                                     ; preds = %while.body.5
  call void @__sanitizer_cov_trace_pc() #12
  %dec.6 = add nsw i32 %i.115.ph, -7
  %arrayidx3.6 = getelementptr ptr, ptr %buf, i32 %dec.6
  %34 = ptrtoint ptr %arrayidx3.6 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx3.6, align 4
  %36 = ptrtoint ptr %35 to i32
  tail call void @free_pages(i32 noundef %36, i32 noundef 0) #10
  br label %cleanup

cleanup:                                          ; preds = %while.body.6, %while.body.5.cleanup_crit_edge, %while.body.4.cleanup_crit_edge, %while.body.3.cleanup_crit_edge, %while.body.2.cleanup_crit_edge, %while.body.1.cleanup_crit_edge, %while.body.cleanup_crit_edge, %for.inc.6.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ 0, %for.inc.6.cleanup_crit_edge ], [ -12, %while.body.6 ], [ -12, %while.body.5.cleanup_crit_edge ], [ -12, %while.body.4.cleanup_crit_edge ], [ -12, %while.body.3.cleanup_crit_edge ], [ -12, %while.body.2.cleanup_crit_edge ], [ -12, %while.body.1.cleanup_crit_edge ], [ -12, %while.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_alloc_aead(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_aead_setauthsize(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_aead_setkey(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sg_init_aead(ptr noundef %sg, ptr nocapture noundef readonly %xbuf, i32 noundef %buflen, ptr noundef %assoc, i32 noundef %aad_size) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sub = add i32 %buflen, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 36863, i32 %sub)
  %cmp = icmp ugt i32 %sub, 36863
  %div30 = lshr i32 %sub, 12
  %rem1 = and i32 %buflen, 4095
  %np.0 = select i1 %cmp, i32 8, i32 %div30
  %rem.0 = select i1 %cmp, i32 4096, i32 %rem1
  %add2 = add nuw nsw i32 %np.0, 1
  tail call void @sg_init_table(ptr noundef %sg, i32 noundef %add2) #10
  %0 = ptrtoint ptr %assoc to i32
  %cmp.i = icmp ugt ptr %assoc, inttoptr (i32 -1073741825 to ptr)
  br i1 %cmp.i, label %land.lhs.true.i, label %entry.do.body5.i_crit_edge, !prof !703

entry.do.body5.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body5.i

land.lhs.true.i:                                  ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %1 = load ptr, ptr @high_memory, align 4
  %cmp1.i = icmp ugt ptr %1, %assoc
  br i1 %cmp1.i, label %land.rhs.i, label %land.lhs.true.i.do.body5.i_crit_edge, !prof !703

land.lhs.true.i.do.body5.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body5.i

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %sub.i = add i32 %0, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %2 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i = add i32 %2, %shr.i
  %call.i = tail call i32 @pfn_valid(i32 noundef %add.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.i = icmp eq i32 %call.i, 0
  br i1 %tobool.i, label %land.rhs.i.do.body5.i_crit_edge, label %do.end8.i, !prof !701

land.rhs.i.do.body5.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body5.i

do.body5.i:                                       ; preds = %land.rhs.i.do.body5.i_crit_edge, %land.lhs.true.i.do.body5.i_crit_edge, %entry.do.body5.i_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 160, 0\0A.popsection", ""() #10, !srcloc !704
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
  br i1 %tobool.not.i.i.i, label %do.body11.i.i.i, label %do.body5.i.i.i, !prof !703

do.body5.i.i.i:                                   ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #10, !srcloc !705
  unreachable

do.body11.i.i.i:                                  ; preds = %do.end8.i
  %and.i.i.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.i.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i, label %sg_set_buf.exit, label %do.body19.i.i.i, !prof !703

do.body19.i.i.i:                                  ; preds = %do.body11.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #10, !srcloc !706
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
  store i32 %aad_size, ptr %length.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.0)
  %tobool.not = icmp eq i32 %rem.0, 0
  %not.tobool.not = xor i1 %tobool.not, true
  %dec = sext i1 %not.tobool.not to i32
  %np.1 = add nsw i32 %np.0, %dec
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %np.1)
  %cmp584 = icmp sgt i32 %np.1, 0
  br i1 %cmp584, label %sg_set_buf.exit.for.body_crit_edge, label %sg_set_buf.exit.for.end_crit_edge

sg_set_buf.exit.for.end_crit_edge:                ; preds = %sg_set_buf.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

sg_set_buf.exit.for.body_crit_edge:               ; preds = %sg_set_buf.exit
  br label %for.body

for.body:                                         ; preds = %sg_set_buf.exit55.for.body_crit_edge, %sg_set_buf.exit.for.body_crit_edge
  %k.085 = phi i32 [ %add6, %sg_set_buf.exit55.for.body_crit_edge ], [ 0, %sg_set_buf.exit.for.body_crit_edge ]
  %add6 = add nuw nsw i32 %k.085, 1
  %arrayidx7 = getelementptr %struct.scatterlist, ptr %sg, i32 %add6
  %arrayidx8 = getelementptr ptr, ptr %xbuf, i32 %k.085
  %10 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx8, align 4
  %12 = ptrtoint ptr %11 to i32
  %cmp.i31 = icmp ugt ptr %11, inttoptr (i32 -1073741825 to ptr)
  br i1 %cmp.i31, label %land.lhs.true.i33, label %for.body.do.body5.i40_crit_edge, !prof !703

for.body.do.body5.i40_crit_edge:                  ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body5.i40

land.lhs.true.i33:                                ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %13 = load ptr, ptr @high_memory, align 4
  %cmp1.i32 = icmp ugt ptr %13, %11
  br i1 %cmp1.i32, label %land.rhs.i39, label %land.lhs.true.i33.do.body5.i40_crit_edge, !prof !703

land.lhs.true.i33.do.body5.i40_crit_edge:         ; preds = %land.lhs.true.i33
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body5.i40

land.rhs.i39:                                     ; preds = %land.lhs.true.i33
  %sub.i34 = add i32 %12, 1073741824
  %shr.i35 = lshr i32 %sub.i34, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %14 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i36 = add i32 %14, %shr.i35
  %call.i37 = tail call i32 @pfn_valid(i32 noundef %add.i36) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i37)
  %tobool.i38 = icmp eq i32 %call.i37, 0
  br i1 %tobool.i38, label %land.rhs.i39.do.body5.i40_crit_edge, label %do.end8.i44, !prof !701

land.rhs.i39.do.body5.i40_crit_edge:              ; preds = %land.rhs.i39
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body5.i40

do.body5.i40:                                     ; preds = %land.rhs.i39.do.body5.i40_crit_edge, %land.lhs.true.i33.do.body5.i40_crit_edge, %for.body.do.body5.i40_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 160, 0\0A.popsection", ""() #10, !srcloc !704
  unreachable

do.end8.i44:                                      ; preds = %land.rhs.i39
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %15 = load ptr, ptr @mem_map, align 4
  %add.ptr.i41 = getelementptr %struct.page, ptr %15, i32 %shr.i35
  %16 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx7, align 4
  %18 = ptrtoint ptr %add.ptr.i41 to i32
  %and2.i.i.i42 = and i32 %18, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i42)
  %tobool.not.i.i.i43 = icmp eq i32 %and2.i.i.i42, 0
  br i1 %tobool.not.i.i.i43, label %do.body11.i.i.i48, label %do.body5.i.i.i45, !prof !703

do.body5.i.i.i45:                                 ; preds = %do.end8.i44
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #10, !srcloc !705
  unreachable

do.body11.i.i.i48:                                ; preds = %do.end8.i44
  %and.i.i.i.i46 = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i46)
  %tobool.i.not.i.i.i47 = icmp eq i32 %and.i.i.i.i46, 0
  br i1 %tobool.i.not.i.i.i47, label %sg_set_buf.exit55, label %do.body19.i.i.i49, !prof !703

do.body19.i.i.i49:                                ; preds = %do.body11.i.i.i48
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #10, !srcloc !706
  unreachable

sg_set_buf.exit55:                                ; preds = %do.body11.i.i.i48
  %and.i50 = and i32 %12, 4095
  %and.i.i.i51 = and i32 %17, 3
  %or.i.i.i52 = or i32 %and.i.i.i51, %18
  %19 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %or.i.i.i52, ptr %arrayidx7, align 4
  %offset1.i.i53 = getelementptr %struct.scatterlist, ptr %sg, i32 %add6, i32 1
  %20 = ptrtoint ptr %offset1.i.i53 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %and.i50, ptr %offset1.i.i53, align 4
  %length.i.i54 = getelementptr %struct.scatterlist, ptr %sg, i32 %add6, i32 2
  %21 = ptrtoint ptr %length.i.i54 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 4096, ptr %length.i.i54, align 4
  %exitcond.not = icmp eq i32 %add6, %np.1
  br i1 %exitcond.not, label %sg_set_buf.exit55.for.end_crit_edge, label %sg_set_buf.exit55.for.body_crit_edge

sg_set_buf.exit55.for.body_crit_edge:             ; preds = %sg_set_buf.exit55
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

sg_set_buf.exit55.for.end_crit_edge:              ; preds = %sg_set_buf.exit55
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %sg_set_buf.exit55.for.end_crit_edge, %sg_set_buf.exit.for.end_crit_edge
  %k.0.lcssa = phi i32 [ 0, %sg_set_buf.exit.for.end_crit_edge ], [ %np.1, %sg_set_buf.exit55.for.end_crit_edge ]
  br i1 %tobool.not, label %for.end.if.end14_crit_edge, label %if.then10

for.end.if.end14_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

if.then10:                                        ; preds = %for.end
  %add11 = add nuw nsw i32 %k.0.lcssa, 1
  %arrayidx12 = getelementptr %struct.scatterlist, ptr %sg, i32 %add11
  %arrayidx13 = getelementptr ptr, ptr %xbuf, i32 %k.0.lcssa
  %22 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx13, align 4
  %24 = ptrtoint ptr %23 to i32
  %cmp.i56 = icmp ugt ptr %23, inttoptr (i32 -1073741825 to ptr)
  br i1 %cmp.i56, label %land.lhs.true.i58, label %if.then10.do.body5.i65_crit_edge, !prof !703

if.then10.do.body5.i65_crit_edge:                 ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body5.i65

land.lhs.true.i58:                                ; preds = %if.then10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %25 = load ptr, ptr @high_memory, align 4
  %cmp1.i57 = icmp ugt ptr %25, %23
  br i1 %cmp1.i57, label %land.rhs.i64, label %land.lhs.true.i58.do.body5.i65_crit_edge, !prof !703

land.lhs.true.i58.do.body5.i65_crit_edge:         ; preds = %land.lhs.true.i58
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body5.i65

land.rhs.i64:                                     ; preds = %land.lhs.true.i58
  %sub.i59 = add i32 %24, 1073741824
  %shr.i60 = lshr i32 %sub.i59, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %26 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i61 = add i32 %26, %shr.i60
  %call.i62 = tail call i32 @pfn_valid(i32 noundef %add.i61) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i62)
  %tobool.i63 = icmp eq i32 %call.i62, 0
  br i1 %tobool.i63, label %land.rhs.i64.do.body5.i65_crit_edge, label %do.end8.i69, !prof !701

land.rhs.i64.do.body5.i65_crit_edge:              ; preds = %land.rhs.i64
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body5.i65

do.body5.i65:                                     ; preds = %land.rhs.i64.do.body5.i65_crit_edge, %land.lhs.true.i58.do.body5.i65_crit_edge, %if.then10.do.body5.i65_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 160, 0\0A.popsection", ""() #10, !srcloc !704
  unreachable

do.end8.i69:                                      ; preds = %land.rhs.i64
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %27 = load ptr, ptr @mem_map, align 4
  %add.ptr.i66 = getelementptr %struct.page, ptr %27, i32 %shr.i60
  %28 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx12, align 4
  %30 = ptrtoint ptr %add.ptr.i66 to i32
  %and2.i.i.i67 = and i32 %30, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i67)
  %tobool.not.i.i.i68 = icmp eq i32 %and2.i.i.i67, 0
  br i1 %tobool.not.i.i.i68, label %do.body11.i.i.i73, label %do.body5.i.i.i70, !prof !703

do.body5.i.i.i70:                                 ; preds = %do.end8.i69
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #10, !srcloc !705
  unreachable

do.body11.i.i.i73:                                ; preds = %do.end8.i69
  %and.i.i.i.i71 = and i32 %29, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i71)
  %tobool.i.not.i.i.i72 = icmp eq i32 %and.i.i.i.i71, 0
  br i1 %tobool.i.not.i.i.i72, label %sg_set_buf.exit80, label %do.body19.i.i.i74, !prof !703

do.body19.i.i.i74:                                ; preds = %do.body11.i.i.i73
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #10, !srcloc !706
  unreachable

sg_set_buf.exit80:                                ; preds = %do.body11.i.i.i73
  call void @__sanitizer_cov_trace_pc() #12
  %and.i75 = and i32 %24, 4095
  %and.i.i.i76 = and i32 %29, 3
  %or.i.i.i77 = or i32 %and.i.i.i76, %30
  %31 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %or.i.i.i77, ptr %arrayidx12, align 4
  %offset1.i.i78 = getelementptr %struct.scatterlist, ptr %sg, i32 %add11, i32 1
  %32 = ptrtoint ptr %offset1.i.i78 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %and.i75, ptr %offset1.i.i78, align 4
  %length.i.i79 = getelementptr %struct.scatterlist, ptr %sg, i32 %add11, i32 2
  %33 = ptrtoint ptr %length.i.i79 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %rem.0, ptr %length.i.i79, align 4
  br label %if.end14

if.end14:                                         ; preds = %sg_set_buf.exit80, %for.end.if.end14_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_aead_encrypt(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @test_aead_jiffies(ptr noundef %req, i32 noundef %enc, i32 noundef %blen, i32 noundef %secs) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %mul.neg = mul i32 %secs, -100
  %add.neg = sub i32 %mul.neg, %0
  %1 = load volatile i32, ptr @jiffies, align 128
  %sub26 = add i32 %add.neg, %1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub26)
  %cmp27 = icmp slt i32 %sub26, 0
  br i1 %cmp27, label %for.body.lr.ph, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

for.body.lr.ph:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enc)
  %tobool.not = icmp eq i32 %enc, 0
  %data.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %bcount.028 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %for.body
  %call = tail call i32 @crypto_aead_encrypt(ptr noundef %req) #10
  %2 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.329)
  switch i32 %call, label %if.then.if.end_crit_edge [
    i32 -115, label %if.then.if.end.sink.split_crit_edge
    i32 -16, label %if.then.if.end.sink.split_crit_edge36
  ]

if.then.if.end.sink.split_crit_edge36:            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.sink.split

if.then.if.end.sink.split_crit_edge:              ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.sink.split

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.else:                                          ; preds = %for.body
  %call2 = tail call i32 @crypto_aead_decrypt(ptr noundef %req) #10
  %3 = zext i32 %call2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.330)
  switch i32 %call2, label %if.else.if.end_crit_edge [
    i32 -115, label %if.else.if.end.sink.split_crit_edge
    i32 -16, label %if.else.if.end.sink.split_crit_edge37
  ]

if.else.if.end.sink.split_crit_edge37:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.sink.split

if.else.if.end.sink.split_crit_edge:              ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.sink.split

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end.sink.split:                                ; preds = %if.else.if.end.sink.split_crit_edge, %if.else.if.end.sink.split_crit_edge37, %if.then.if.end.sink.split_crit_edge, %if.then.if.end.sink.split_crit_edge36
  %4 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data.i, align 4
  tail call void @wait_for_completion(ptr noundef %5) #10
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %5, align 4
  %err2.i.i21 = getelementptr inbounds %struct.crypto_wait, ptr %5, i32 0, i32 1
  %7 = ptrtoint ptr %err2.i.i21 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %err2.i.i21, align 4
  br label %if.end

if.end:                                           ; preds = %if.end.sink.split, %if.else.if.end_crit_edge, %if.then.if.end_crit_edge
  %ret.0 = phi i32 [ %call, %if.then.if.end_crit_edge ], [ %call2, %if.else.if.end_crit_edge ], [ %8, %if.end.sink.split ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool4.not = icmp eq i32 %ret.0, 0
  br i1 %tobool4.not, label %for.inc, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.inc:                                          ; preds = %if.end
  %inc = add i32 %bcount.028, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %9 = load volatile i32, ptr @jiffies, align 128
  %sub = add i32 %add.neg, %9
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.do.end_crit_edge

for.inc.do.end_crit_edge:                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

do.end:                                           ; preds = %for.inc.do.end_crit_edge, %entry.do.end_crit_edge
  %bcount.0.lcssa = phi i32 [ 0, %entry.do.end_crit_edge ], [ %inc, %for.inc.do.end_crit_edge ]
  %conv = sext i32 %bcount.0.lcssa to i64
  %conv7 = sext i32 %blen to i64
  %mul8 = mul nsw i64 %conv, %conv7
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.167, i32 noundef %bcount.0.lcssa, i32 noundef %secs, i64 noundef %mul8) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end ], [ %ret.0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @test_aead_cycles(ptr noundef %req, i32 noundef %enc, i32 noundef %blen) unnamed_addr #4 align 64 {
entry:
  %c = alloca i32, align 4
  %c20 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enc)
  %tobool.not = icmp eq i32 %enc, 0
  %data.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 2
  br i1 %tobool.not, label %if.else, label %if.then

for.cond:                                         ; preds = %if.end
  br i1 %tobool.not, label %if.else.1, label %if.then.1

if.then.1:                                        ; preds = %for.cond
  %call.1 = tail call i32 @crypto_aead_encrypt(ptr noundef %req) #10
  %0 = zext i32 %call.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.331)
  switch i32 %call.1, label %if.then.1.if.end.1_crit_edge [
    i32 -115, label %if.then.1.if.end.1.sink.split_crit_edge
    i32 -16, label %if.then.1.if.end.1.sink.split_crit_edge105
  ]

if.then.1.if.end.1.sink.split_crit_edge105:       ; preds = %if.then.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.1.sink.split

if.then.1.if.end.1.sink.split_crit_edge:          ; preds = %if.then.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.1.sink.split

if.then.1.if.end.1_crit_edge:                     ; preds = %if.then.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.1

if.else.1:                                        ; preds = %for.cond
  %call2.1 = tail call i32 @crypto_aead_decrypt(ptr noundef %req) #10
  %1 = zext i32 %call2.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.332)
  switch i32 %call2.1, label %if.else.1.if.end.1_crit_edge [
    i32 -115, label %if.else.1.if.end.1.sink.split_crit_edge
    i32 -16, label %if.else.1.if.end.1.sink.split_crit_edge106
  ]

if.else.1.if.end.1.sink.split_crit_edge106:       ; preds = %if.else.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.1.sink.split

if.else.1.if.end.1.sink.split_crit_edge:          ; preds = %if.else.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.1.sink.split

if.else.1.if.end.1_crit_edge:                     ; preds = %if.else.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.1

if.end.1.sink.split:                              ; preds = %if.else.1.if.end.1.sink.split_crit_edge, %if.else.1.if.end.1.sink.split_crit_edge106, %if.then.1.if.end.1.sink.split_crit_edge, %if.then.1.if.end.1.sink.split_crit_edge105
  %2 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data.i, align 4
  tail call void @wait_for_completion(ptr noundef %3) #10
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %3, align 4
  %err2.i.i61.1 = getelementptr inbounds %struct.crypto_wait, ptr %3, i32 0, i32 1
  %5 = ptrtoint ptr %err2.i.i61.1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %err2.i.i61.1, align 4
  br label %if.end.1

if.end.1:                                         ; preds = %if.end.1.sink.split, %if.else.1.if.end.1_crit_edge, %if.then.1.if.end.1_crit_edge
  %ret.1.1 = phi i32 [ %call.1, %if.then.1.if.end.1_crit_edge ], [ %call2.1, %if.else.1.if.end.1_crit_edge ], [ %6, %if.end.1.sink.split ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1.1)
  %tobool4.not.1 = icmp eq i32 %ret.1.1, 0
  br i1 %tobool4.not.1, label %for.cond.1, label %if.end.1.cleanup41_crit_edge

if.end.1.cleanup41_crit_edge:                     ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup41

for.cond.1:                                       ; preds = %if.end.1
  br i1 %tobool.not, label %if.else.2, label %if.then.2

if.then.2:                                        ; preds = %for.cond.1
  %call.2 = tail call i32 @crypto_aead_encrypt(ptr noundef %req) #10
  %7 = zext i32 %call.2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.333)
  switch i32 %call.2, label %if.then.2.if.end.2_crit_edge [
    i32 -115, label %if.then.2.if.end.2.sink.split_crit_edge
    i32 -16, label %if.then.2.if.end.2.sink.split_crit_edge107
  ]

if.then.2.if.end.2.sink.split_crit_edge107:       ; preds = %if.then.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.2.sink.split

if.then.2.if.end.2.sink.split_crit_edge:          ; preds = %if.then.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.2.sink.split

if.then.2.if.end.2_crit_edge:                     ; preds = %if.then.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.2

if.else.2:                                        ; preds = %for.cond.1
  %call2.2 = tail call i32 @crypto_aead_decrypt(ptr noundef %req) #10
  %8 = zext i32 %call2.2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.334)
  switch i32 %call2.2, label %if.else.2.if.end.2_crit_edge [
    i32 -115, label %if.else.2.if.end.2.sink.split_crit_edge
    i32 -16, label %if.else.2.if.end.2.sink.split_crit_edge108
  ]

if.else.2.if.end.2.sink.split_crit_edge108:       ; preds = %if.else.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.2.sink.split

if.else.2.if.end.2.sink.split_crit_edge:          ; preds = %if.else.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.2.sink.split

if.else.2.if.end.2_crit_edge:                     ; preds = %if.else.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.2

if.end.2.sink.split:                              ; preds = %if.else.2.if.end.2.sink.split_crit_edge, %if.else.2.if.end.2.sink.split_crit_edge108, %if.then.2.if.end.2.sink.split_crit_edge, %if.then.2.if.end.2.sink.split_crit_edge107
  %9 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data.i, align 4
  tail call void @wait_for_completion(ptr noundef %10) #10
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %10, align 4
  %err2.i.i61.2 = getelementptr inbounds %struct.crypto_wait, ptr %10, i32 0, i32 1
  %12 = ptrtoint ptr %err2.i.i61.2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %err2.i.i61.2, align 4
  br label %if.end.2

if.end.2:                                         ; preds = %if.end.2.sink.split, %if.else.2.if.end.2_crit_edge, %if.then.2.if.end.2_crit_edge
  %ret.1.2 = phi i32 [ %call.2, %if.then.2.if.end.2_crit_edge ], [ %call2.2, %if.else.2.if.end.2_crit_edge ], [ %13, %if.end.2.sink.split ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1.2)
  %tobool4.not.2 = icmp eq i32 %ret.1.2, 0
  br i1 %tobool4.not.2, label %for.cond.2, label %if.end.2.cleanup41_crit_edge

if.end.2.cleanup41_crit_edge:                     ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup41

for.cond.2:                                       ; preds = %if.end.2
  br i1 %tobool.not, label %if.else.3, label %if.then.3

if.then.3:                                        ; preds = %for.cond.2
  %call.3 = tail call i32 @crypto_aead_encrypt(ptr noundef %req) #10
  %14 = zext i32 %call.3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.335)
  switch i32 %call.3, label %if.then.3.if.end.3_crit_edge [
    i32 -115, label %if.then.3.if.end.3.sink.split_crit_edge
    i32 -16, label %if.then.3.if.end.3.sink.split_crit_edge109
  ]

if.then.3.if.end.3.sink.split_crit_edge109:       ; preds = %if.then.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.3.sink.split

if.then.3.if.end.3.sink.split_crit_edge:          ; preds = %if.then.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.3.sink.split

if.then.3.if.end.3_crit_edge:                     ; preds = %if.then.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.3

if.else.3:                                        ; preds = %for.cond.2
  %call2.3 = tail call i32 @crypto_aead_decrypt(ptr noundef %req) #10
  %15 = zext i32 %call2.3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.336)
  switch i32 %call2.3, label %if.else.3.if.end.3_crit_edge [
    i32 -115, label %if.else.3.if.end.3.sink.split_crit_edge
    i32 -16, label %if.else.3.if.end.3.sink.split_crit_edge110
  ]

if.else.3.if.end.3.sink.split_crit_edge110:       ; preds = %if.else.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.3.sink.split

if.else.3.if.end.3.sink.split_crit_edge:          ; preds = %if.else.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.3.sink.split

if.else.3.if.end.3_crit_edge:                     ; preds = %if.else.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.3

if.end.3.sink.split:                              ; preds = %if.else.3.if.end.3.sink.split_crit_edge, %if.else.3.if.end.3.sink.split_crit_edge110, %if.then.3.if.end.3.sink.split_crit_edge, %if.then.3.if.end.3.sink.split_crit_edge109
  %16 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data.i, align 4
  tail call void @wait_for_completion(ptr noundef %17) #10
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %17, align 4
  %err2.i.i61.3 = getelementptr inbounds %struct.crypto_wait, ptr %17, i32 0, i32 1
  %19 = ptrtoint ptr %err2.i.i61.3 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %err2.i.i61.3, align 4
  br label %if.end.3

if.end.3:                                         ; preds = %if.end.3.sink.split, %if.else.3.if.end.3_crit_edge, %if.then.3.if.end.3_crit_edge
  %ret.1.3 = phi i32 [ %call.3, %if.then.3.if.end.3_crit_edge ], [ %call2.3, %if.else.3.if.end.3_crit_edge ], [ %20, %if.end.3.sink.split ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1.3)
  %tobool4.not.3 = icmp eq i32 %ret.1.3, 0
  br i1 %tobool4.not.3, label %if.end.3.for.body9_crit_edge, label %if.end.3.cleanup41_crit_edge

if.end.3.cleanup41_crit_edge:                     ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup41

if.end.3.for.body9_crit_edge:                     ; preds = %if.end.3
  br label %for.body9

if.then:                                          ; preds = %entry
  %call = tail call i32 @crypto_aead_encrypt(ptr noundef %req) #10
  %21 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.337)
  switch i32 %call, label %if.then.if.end_crit_edge [
    i32 -115, label %if.then.if.end.sink.split_crit_edge
    i32 -16, label %if.then.if.end.sink.split_crit_edge111
  ]

if.then.if.end.sink.split_crit_edge111:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.sink.split

if.then.if.end.sink.split_crit_edge:              ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.sink.split

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.else:                                          ; preds = %entry
  %call2 = tail call i32 @crypto_aead_decrypt(ptr noundef %req) #10
  %22 = zext i32 %call2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.338)
  switch i32 %call2, label %if.else.if.end_crit_edge [
    i32 -115, label %if.else.if.end.sink.split_crit_edge
    i32 -16, label %if.else.if.end.sink.split_crit_edge112
  ]

if.else.if.end.sink.split_crit_edge112:           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.sink.split

if.else.if.end.sink.split_crit_edge:              ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.sink.split

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end.sink.split:                                ; preds = %if.else.if.end.sink.split_crit_edge, %if.else.if.end.sink.split_crit_edge112, %if.then.if.end.sink.split_crit_edge, %if.then.if.end.sink.split_crit_edge111
  %23 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %data.i, align 4
  tail call void @wait_for_completion(ptr noundef %24) #10
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %24, align 4
  %err2.i.i61 = getelementptr inbounds %struct.crypto_wait, ptr %24, i32 0, i32 1
  %26 = ptrtoint ptr %err2.i.i61 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %err2.i.i61, align 4
  br label %if.end

if.end:                                           ; preds = %if.end.sink.split, %if.else.if.end_crit_edge, %if.then.if.end_crit_edge
  %ret.1 = phi i32 [ %call, %if.then.if.end_crit_edge ], [ %call2, %if.else.if.end_crit_edge ], [ %27, %if.end.sink.split ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1)
  %tobool4.not = icmp eq i32 %ret.1, 0
  br i1 %tobool4.not, label %for.cond, label %if.end.cleanup41_crit_edge

if.end.cleanup41_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup41

for.body9:                                        ; preds = %for.inc32.for.body9_crit_edge, %if.end.3.for.body9_crit_edge
  %cycles.083 = phi i32 [ %add, %for.inc32.for.body9_crit_edge ], [ 0, %if.end.3.for.body9_crit_edge ]
  %i.182 = phi i32 [ %inc33, %for.inc32.for.body9_crit_edge ], [ 0, %if.end.3.for.body9_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %c) #10
  %28 = ptrtoint ptr %c to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 -1, ptr %c, align 4, !annotation !702
  %call10 = call i32 @read_current_timer(ptr noundef nonnull %c) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %cond.false, label %for.body9.cond.end_crit_edge

for.body9.cond.end_crit_edge:                     ; preds = %for.body9
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.false:                                       ; preds = %for.body9
  call void @__sanitizer_cov_trace_pc() #12
  %29 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %c, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %for.body9.cond.end_crit_edge
  %cond = phi i32 [ %30, %cond.false ], [ 0, %for.body9.cond.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %c) #10
  br i1 %tobool.not, label %if.else16, label %if.then13

if.then13:                                        ; preds = %cond.end
  %call14 = call i32 @crypto_aead_encrypt(ptr noundef %req) #10
  %31 = zext i32 %call14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.339)
  switch i32 %call14, label %if.then13.if.end19_crit_edge [
    i32 -115, label %if.then13.if.end19.sink.split_crit_edge
    i32 -16, label %if.then13.if.end19.sink.split_crit_edge113
  ]

if.then13.if.end19.sink.split_crit_edge113:       ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19.sink.split

if.then13.if.end19.sink.split_crit_edge:          ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19.sink.split

if.then13.if.end19_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

if.else16:                                        ; preds = %cond.end
  %call17 = call i32 @crypto_aead_decrypt(ptr noundef %req) #10
  %32 = zext i32 %call17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.340)
  switch i32 %call17, label %if.else16.if.end19_crit_edge [
    i32 -115, label %if.else16.if.end19.sink.split_crit_edge
    i32 -16, label %if.else16.if.end19.sink.split_crit_edge114
  ]

if.else16.if.end19.sink.split_crit_edge114:       ; preds = %if.else16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19.sink.split

if.else16.if.end19.sink.split_crit_edge:          ; preds = %if.else16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19.sink.split

if.else16.if.end19_crit_edge:                     ; preds = %if.else16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

if.end19.sink.split:                              ; preds = %if.else16.if.end19.sink.split_crit_edge, %if.else16.if.end19.sink.split_crit_edge114, %if.then13.if.end19.sink.split_crit_edge, %if.then13.if.end19.sink.split_crit_edge113
  %33 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %data.i, align 4
  call void @wait_for_completion(ptr noundef %34) #10
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %34, align 4
  %err2.i.i71 = getelementptr inbounds %struct.crypto_wait, ptr %34, i32 0, i32 1
  %36 = ptrtoint ptr %err2.i.i71 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %err2.i.i71, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.end19.sink.split, %if.else16.if.end19_crit_edge, %if.then13.if.end19_crit_edge
  %ret.3 = phi i32 [ %call14, %if.then13.if.end19_crit_edge ], [ %call17, %if.else16.if.end19_crit_edge ], [ %37, %if.end19.sink.split ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %c20) #10
  %38 = ptrtoint ptr %c20 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 -1, ptr %c20, align 4, !annotation !702
  %call22 = call i32 @read_current_timer(ptr noundef nonnull %c20) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %cond.false25, label %if.end19.cond.end26_crit_edge

if.end19.cond.end26_crit_edge:                    ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end26

cond.false25:                                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  %39 = ptrtoint ptr %c20 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %c20, align 4
  br label %cond.end26

cond.end26:                                       ; preds = %cond.false25, %if.end19.cond.end26_crit_edge
  %cond27 = phi i32 [ %40, %cond.false25 ], [ 0, %if.end19.cond.end26_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %c20) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.3)
  %tobool28.not = icmp eq i32 %ret.3, 0
  br i1 %tobool28.not, label %for.inc32, label %cond.end26.cleanup41_crit_edge

cond.end26.cleanup41_crit_edge:                   ; preds = %cond.end26
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup41

for.inc32:                                        ; preds = %cond.end26
  %sub = sub i32 %cycles.083, %cond
  %add = add i32 %sub, %cond27
  %inc33 = add nuw nsw i32 %i.182, 1
  %exitcond.not = icmp eq i32 %inc33, 8
  br i1 %exitcond.not, label %do.end, label %for.inc32.for.body9_crit_edge

for.inc32.for.body9_crit_edge:                    ; preds = %for.inc32
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body9

do.end:                                           ; preds = %for.inc32
  call void @__sanitizer_cov_trace_pc() #12
  %add38 = add i32 %add, 4
  %div59 = lshr i32 %add38, 3
  %call39 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.201, i32 noundef %div59, i32 noundef %blen) #13
  br label %cleanup41

cleanup41:                                        ; preds = %do.end, %cond.end26.cleanup41_crit_edge, %if.end.cleanup41_crit_edge, %if.end.3.cleanup41_crit_edge, %if.end.2.cleanup41_crit_edge, %if.end.1.cleanup41_crit_edge
  %ret.478 = phi i32 [ 0, %do.end ], [ %ret.1, %if.end.cleanup41_crit_edge ], [ %ret.1.1, %if.end.1.cleanup41_crit_edge ], [ %ret.1.2, %if.end.2.cleanup41_crit_edge ], [ %ret.1.3, %if.end.3.cleanup41_crit_edge ], [ %ret.3, %cond.end26.cleanup41_crit_edge ]
  ret i32 %ret.478
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_aead_decrypt(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @do_mult_aead_op(ptr noundef %data, i32 noundef %enc, i32 noundef %num_mb, ptr nocapture noundef %rc) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_mb)
  %cmp46.not = icmp eq i32 %num_mb, 0
  br i1 %cmp46.not, label %entry.for.end22_crit_edge, label %for.body.lr.ph

entry.for.end22_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end22

for.body.lr.ph:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %enc)
  %cmp1 = icmp eq i32 %enc, 1
  br label %for.body

for.cond7.preheader:                              ; preds = %for.inc
  br i1 %cmp46.not, label %for.cond7.preheader.for.end22_crit_edge, label %for.cond7.preheader.for.body9_crit_edge

for.cond7.preheader.for.body9_crit_edge:          ; preds = %for.cond7.preheader
  br label %for.body9

for.cond7.preheader.for.end22_crit_edge:          ; preds = %for.cond7.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end22

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.047 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %req = getelementptr %struct.test_mb_aead_data, ptr %data, i32 %i.047, i32 2
  %0 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %req, align 4
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 @crypto_aead_encrypt(ptr noundef %1) #10
  br label %for.inc

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %call5 = tail call i32 @crypto_aead_decrypt(ptr noundef %1) #10
  br label %for.inc

for.inc:                                          ; preds = %if.else, %if.then
  %call5.sink = phi i32 [ %call, %if.then ], [ %call5, %if.else ]
  %2 = getelementptr i32, ptr %rc, i32 %i.047
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %call5.sink, ptr %2, align 4
  %inc = add nuw i32 %i.047, 1
  %exitcond.not = icmp eq i32 %inc, %num_mb
  br i1 %exitcond.not, label %for.cond7.preheader, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body9:                                        ; preds = %for.inc20.for.body9_crit_edge, %for.cond7.preheader.for.body9_crit_edge
  %i.151 = phi i32 [ %inc21, %for.inc20.for.body9_crit_edge ], [ 0, %for.cond7.preheader.for.body9_crit_edge ]
  %err.050 = phi i32 [ %err.1, %for.inc20.for.body9_crit_edge ], [ 0, %for.cond7.preheader.for.body9_crit_edge ]
  %arrayidx10 = getelementptr i32, ptr %rc, i32 %i.151
  %4 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx10, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.341)
  switch i32 %5, label %for.body9.crypto_wait_req.exit_crit_edge [
    i32 -115, label %for.body9.sw.bb.i_crit_edge
    i32 -16, label %for.body9.sw.bb.i_crit_edge55
  ]

for.body9.sw.bb.i_crit_edge55:                    ; preds = %for.body9
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i

for.body9.sw.bb.i_crit_edge:                      ; preds = %for.body9
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i

for.body9.crypto_wait_req.exit_crit_edge:         ; preds = %for.body9
  call void @__sanitizer_cov_trace_pc() #12
  br label %crypto_wait_req.exit

sw.bb.i:                                          ; preds = %for.body9.sw.bb.i_crit_edge, %for.body9.sw.bb.i_crit_edge55
  %wait = getelementptr %struct.test_mb_aead_data, ptr %data, i32 %i.151, i32 3
  tail call void @wait_for_completion(ptr noundef %wait) #10
  %7 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %wait, align 4
  %err2.i = getelementptr %struct.test_mb_aead_data, ptr %data, i32 %i.151, i32 3, i32 1
  %8 = ptrtoint ptr %err2.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %err2.i, align 4
  br label %crypto_wait_req.exit

crypto_wait_req.exit:                             ; preds = %sw.bb.i, %for.body9.crypto_wait_req.exit_crit_edge
  %err.addr.0.i = phi i32 [ %5, %for.body9.crypto_wait_req.exit_crit_edge ], [ %9, %sw.bb.i ]
  %10 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %err.addr.0.i, ptr %arrayidx10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.addr.0.i)
  %tobool.not = icmp eq i32 %err.addr.0.i, 0
  br i1 %tobool.not, label %crypto_wait_req.exit.for.inc20_crit_edge, label %do.end

crypto_wait_req.exit.for.inc20_crit_edge:         ; preds = %crypto_wait_req.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc20

do.end:                                           ; preds = %crypto_wait_req.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.225, i32 noundef %i.151, i32 noundef %err.addr.0.i) #13
  %11 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx10, align 4
  br label %for.inc20

for.inc20:                                        ; preds = %do.end, %crypto_wait_req.exit.for.inc20_crit_edge
  %err.1 = phi i32 [ %12, %do.end ], [ %err.050, %crypto_wait_req.exit.for.inc20_crit_edge ]
  %inc21 = add nuw i32 %i.151, 1
  %exitcond54.not = icmp eq i32 %inc21, %num_mb
  br i1 %exitcond54.not, label %for.inc20.for.end22_crit_edge, label %for.inc20.for.body9_crit_edge

for.inc20.for.body9_crit_edge:                    ; preds = %for.inc20
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body9

for.inc20.for.end22_crit_edge:                    ; preds = %for.inc20
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end22

for.end22:                                        ; preds = %for.inc20.for.end22_crit_edge, %for.cond7.preheader.for.end22_crit_edge, %entry.for.end22_crit_edge
  %err.0.lcssa = phi i32 [ 0, %for.cond7.preheader.for.end22_crit_edge ], [ 0, %entry.for.end22_crit_edge ], [ %err.1, %for.inc20.for.end22_crit_edge ]
  ret i32 %err.0.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @test_ahash_speed_common(ptr noundef %algo, i32 noundef %secs, ptr nocapture noundef readonly %speed, i32 noundef %mask) unnamed_addr #4 align 64 {
entry:
  %c.i.i = alloca i32, align 4
  %c12.i.i = alloca i32, align 4
  %c.i = alloca i32, align 4
  %c47.i = alloca i32, align 4
  %sg = alloca [4 x %struct.scatterlist], align 4
  %wait = alloca %struct.crypto_wait, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %sg) #10
  %0 = call ptr @memset(ptr %sg, i32 255, i32 80)
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %wait) #10
  %1 = call ptr @memset(ptr %wait, i32 255, i32 60)
  %call = tail call ptr @crypto_alloc_ahash(ptr noundef %algo, i32 noundef 0, i32 noundef %mask) #10
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %do.end6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %call to i32
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.144, ptr noundef %algo, i32 noundef %2) #13
  br label %cleanup

do.end6:                                          ; preds = %entry
  %base.i = getelementptr inbounds %struct.crypto_ahash, ptr %call, i32 0, i32 10
  %__crt_alg.i = getelementptr inbounds %struct.crypto_ahash, ptr %call, i32 0, i32 10, i32 3
  %3 = ptrtoint ptr %__crt_alg.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %__crt_alg.i, align 4
  %cra_driver_name.i = getelementptr inbounds %struct.crypto_alg, ptr %4, i32 0, i32 9
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.230, ptr noundef %algo, ptr noundef %cra_driver_name.i) #13
  %5 = ptrtoint ptr %__crt_alg.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %__crt_alg.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %6, i32 -128
  %7 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %add.ptr.i.i.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %8)
  %cmp = icmp ugt i32 %8, 64
  br i1 %cmp, label %do.end15, label %if.end19

do.end15:                                         ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #12
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.233, i32 noundef %8, i32 noundef 64) #13
  br label %out

if.end19:                                         ; preds = %do.end6
  call void @sg_init_table(ptr noundef nonnull %sg, i32 noundef 4) #10
  %9 = load ptr, ptr @tvmem, align 4
  %10 = ptrtoint ptr %9 to i32
  %cmp.i.i = icmp ugt ptr %9, inttoptr (i32 -1073741825 to ptr)
  br i1 %cmp.i.i, label %land.lhs.true.i.i, label %if.end19.do.body5.i.i_crit_edge, !prof !703

if.end19.do.body5.i.i_crit_edge:                  ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body5.i.i

land.lhs.true.i.i:                                ; preds = %if.end19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %11 = load ptr, ptr @high_memory, align 4
  %cmp1.i.i = icmp ugt ptr %11, %9
  br i1 %cmp1.i.i, label %land.rhs.i.i, label %land.lhs.true.i.i.do.body5.i.i_crit_edge, !prof !703

land.lhs.true.i.i.do.body5.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body5.i.i

land.rhs.i.i:                                     ; preds = %land.lhs.true.i.i
  %sub.i.i = add i32 %10, 1073741824
  %shr.i.i = lshr i32 %sub.i.i, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %12 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i.i = add i32 %12, %shr.i.i
  %call.i.i = call i32 @pfn_valid(i32 noundef %add.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.i.i, label %land.rhs.i.i.do.body5.i.i_crit_edge, label %do.end8.i.i, !prof !701

land.rhs.i.i.do.body5.i.i_crit_edge:              ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body5.i.i

do.body5.i.i:                                     ; preds = %land.rhs.i.3.i.do.body5.i.i_crit_edge, %land.lhs.true.i.3.i.do.body5.i.i_crit_edge, %sg_set_buf.exit.2.i.do.body5.i.i_crit_edge, %land.rhs.i.2.i.do.body5.i.i_crit_edge, %land.lhs.true.i.2.i.do.body5.i.i_crit_edge, %sg_set_buf.exit.1.i.do.body5.i.i_crit_edge, %land.rhs.i.1.i.do.body5.i.i_crit_edge, %land.lhs.true.i.1.i.do.body5.i.i_crit_edge, %sg_set_buf.exit.i.do.body5.i.i_crit_edge, %land.rhs.i.i.do.body5.i.i_crit_edge, %land.lhs.true.i.i.do.body5.i.i_crit_edge, %if.end19.do.body5.i.i_crit_edge
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 160, 0\0A.popsection", ""() #10, !srcloc !704
  unreachable

do.end8.i.i:                                      ; preds = %land.rhs.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %13 = load ptr, ptr @mem_map, align 4
  %add.ptr.i.i = getelementptr %struct.page, ptr %13, i32 %shr.i.i
  %14 = ptrtoint ptr %sg to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %sg, align 4
  %16 = ptrtoint ptr %add.ptr.i.i to i32
  %and2.i.i.i.i = and i32 %16, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and2.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %do.body11.i.i.i.i, label %do.end8.i.i.do.body5.i.i.i.i_crit_edge, !prof !703

do.end8.i.i.do.body5.i.i.i.i_crit_edge:           ; preds = %do.end8.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body5.i.i.i.i

do.body5.i.i.i.i:                                 ; preds = %do.end8.i.3.i.do.body5.i.i.i.i_crit_edge, %do.end8.i.2.i.do.body5.i.i.i.i_crit_edge, %do.end8.i.1.i.do.body5.i.i.i.i_crit_edge, %do.end8.i.i.do.body5.i.i.i.i_crit_edge
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #10, !srcloc !705
  unreachable

do.body11.i.i.i.i:                                ; preds = %do.end8.i.i
  %and.i.i.i.i.i = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.i.not.i.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i.i, label %sg_set_buf.exit.i, label %do.body11.i.i.i.i.do.body19.i.i.i.i_crit_edge, !prof !703

do.body11.i.i.i.i.do.body19.i.i.i.i_crit_edge:    ; preds = %do.body11.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body19.i.i.i.i

do.body19.i.i.i.i:                                ; preds = %do.body11.i.i.i.3.i.do.body19.i.i.i.i_crit_edge, %do.body11.i.i.i.2.i.do.body19.i.i.i.i_crit_edge, %do.body11.i.i.i.1.i.do.body19.i.i.i.i_crit_edge, %do.body11.i.i.i.i.do.body19.i.i.i.i_crit_edge
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #10, !srcloc !706
  unreachable

sg_set_buf.exit.i:                                ; preds = %do.body11.i.i.i.i
  %and.i.i = and i32 %10, 4095
  %and.i.i.i.i = and i32 %15, 3
  %or.i.i.i.i = or i32 %and.i.i.i.i, %16
  %17 = ptrtoint ptr %sg to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %or.i.i.i.i, ptr %sg, align 4
  %offset1.i.i.i = getelementptr inbounds %struct.scatterlist, ptr %sg, i32 0, i32 1
  %18 = ptrtoint ptr %offset1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %and.i.i, ptr %offset1.i.i.i, align 4
  %length.i.i.i = getelementptr inbounds %struct.scatterlist, ptr %sg, i32 0, i32 2
  %19 = ptrtoint ptr %length.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 4096, ptr %length.i.i.i, align 4
  %20 = load ptr, ptr @tvmem, align 4
  %21 = call ptr @memset(ptr %20, i32 255, i32 4096)
  %add.ptr.1.i = getelementptr inbounds %struct.scatterlist, ptr %sg, i32 1
  %22 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @tvmem, i32 0, i32 1), align 4
  %23 = ptrtoint ptr %22 to i32
  %cmp.i.1.i = icmp ugt ptr %22, inttoptr (i32 -1073741825 to ptr)
  br i1 %cmp.i.1.i, label %land.lhs.true.i.1.i, label %sg_set_buf.exit.i.do.body5.i.i_crit_edge, !prof !703

sg_set_buf.exit.i.do.body5.i.i_crit_edge:         ; preds = %sg_set_buf.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body5.i.i

land.lhs.true.i.1.i:                              ; preds = %sg_set_buf.exit.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %24 = load ptr, ptr @high_memory, align 4
  %cmp1.i.1.i = icmp ugt ptr %24, %22
  br i1 %cmp1.i.1.i, label %land.rhs.i.1.i, label %land.lhs.true.i.1.i.do.body5.i.i_crit_edge, !prof !703

land.lhs.true.i.1.i.do.body5.i.i_crit_edge:       ; preds = %land.lhs.true.i.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body5.i.i

land.rhs.i.1.i:                                   ; preds = %land.lhs.true.i.1.i
  %sub.i.1.i = add i32 %23, 1073741824
  %shr.i.1.i = lshr i32 %sub.i.1.i, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %25 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i.1.i = add i32 %25, %shr.i.1.i
  %call.i.1.i = call i32 @pfn_valid(i32 noundef %add.i.1.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.1.i)
  %tobool.i.1.i = icmp eq i32 %call.i.1.i, 0
  br i1 %tobool.i.1.i, label %land.rhs.i.1.i.do.body5.i.i_crit_edge, label %do.end8.i.1.i, !prof !701

land.rhs.i.1.i.do.body5.i.i_crit_edge:            ; preds = %land.rhs.i.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body5.i.i

do.end8.i.1.i:                                    ; preds = %land.rhs.i.1.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %26 = load ptr, ptr @mem_map, align 4
  %add.ptr.i.1.i = getelementptr %struct.page, ptr %26, i32 %shr.i.1.i
  %27 = ptrtoint ptr %add.ptr.1.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %add.ptr.1.i, align 4
  %29 = ptrtoint ptr %add.ptr.i.1.i to i32
  %and2.i.i.i.1.i = and i32 %29, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i.1.i)
  %tobool.not.i.i.i.1.i = icmp eq i32 %and2.i.i.i.1.i, 0
  br i1 %tobool.not.i.i.i.1.i, label %do.body11.i.i.i.1.i, label %do.end8.i.1.i.do.body5.i.i.i.i_crit_edge, !prof !703

do.end8.i.1.i.do.body5.i.i.i.i_crit_edge:         ; preds = %do.end8.i.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body5.i.i.i.i

do.body11.i.i.i.1.i:                              ; preds = %do.end8.i.1.i
  %and.i.i.i.i.1.i = and i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.1.i)
  %tobool.i.not.i.i.i.1.i = icmp eq i32 %and.i.i.i.i.1.i, 0
  br i1 %tobool.i.not.i.i.i.1.i, label %sg_set_buf.exit.1.i, label %do.body11.i.i.i.1.i.do.body19.i.i.i.i_crit_edge, !prof !703

do.body11.i.i.i.1.i.do.body19.i.i.i.i_crit_edge:  ; preds = %do.body11.i.i.i.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body19.i.i.i.i

sg_set_buf.exit.1.i:                              ; preds = %do.body11.i.i.i.1.i
  %and.i.1.i = and i32 %23, 4095
  %and.i.i.i.1.i = and i32 %28, 3
  %or.i.i.i.1.i = or i32 %and.i.i.i.1.i, %29
  %30 = ptrtoint ptr %add.ptr.1.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %or.i.i.i.1.i, ptr %add.ptr.1.i, align 4
  %offset1.i.i.1.i = getelementptr inbounds %struct.scatterlist, ptr %sg, i32 1, i32 1
  %31 = ptrtoint ptr %offset1.i.i.1.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %and.i.1.i, ptr %offset1.i.i.1.i, align 4
  %length.i.i.1.i = getelementptr inbounds %struct.scatterlist, ptr %sg, i32 1, i32 2
  %32 = ptrtoint ptr %length.i.i.1.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 4096, ptr %length.i.i.1.i, align 4
  %33 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @tvmem, i32 0, i32 1), align 4
  %34 = call ptr @memset(ptr %33, i32 255, i32 4096)
  %add.ptr.2.i = getelementptr inbounds %struct.scatterlist, ptr %sg, i32 2
  %35 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @tvmem, i32 0, i32 2), align 4
  %36 = ptrtoint ptr %35 to i32
  %cmp.i.2.i = icmp ugt ptr %35, inttoptr (i32 -1073741825 to ptr)
  br i1 %cmp.i.2.i, label %land.lhs.true.i.2.i, label %sg_set_buf.exit.1.i.do.body5.i.i_crit_edge, !prof !703

sg_set_buf.exit.1.i.do.body5.i.i_crit_edge:       ; preds = %sg_set_buf.exit.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body5.i.i

land.lhs.true.i.2.i:                              ; preds = %sg_set_buf.exit.1.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %37 = load ptr, ptr @high_memory, align 4
  %cmp1.i.2.i = icmp ugt ptr %37, %35
  br i1 %cmp1.i.2.i, label %land.rhs.i.2.i, label %land.lhs.true.i.2.i.do.body5.i.i_crit_edge, !prof !703

land.lhs.true.i.2.i.do.body5.i.i_crit_edge:       ; preds = %land.lhs.true.i.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body5.i.i

land.rhs.i.2.i:                                   ; preds = %land.lhs.true.i.2.i
  %sub.i.2.i = add i32 %36, 1073741824
  %shr.i.2.i = lshr i32 %sub.i.2.i, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %38 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i.2.i = add i32 %38, %shr.i.2.i
  %call.i.2.i = call i32 @pfn_valid(i32 noundef %add.i.2.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.2.i)
  %tobool.i.2.i = icmp eq i32 %call.i.2.i, 0
  br i1 %tobool.i.2.i, label %land.rhs.i.2.i.do.body5.i.i_crit_edge, label %do.end8.i.2.i, !prof !701

land.rhs.i.2.i.do.body5.i.i_crit_edge:            ; preds = %land.rhs.i.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body5.i.i

do.end8.i.2.i:                                    ; preds = %land.rhs.i.2.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %39 = load ptr, ptr @mem_map, align 4
  %add.ptr.i.2.i = getelementptr %struct.page, ptr %39, i32 %shr.i.2.i
  %40 = ptrtoint ptr %add.ptr.2.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %add.ptr.2.i, align 4
  %42 = ptrtoint ptr %add.ptr.i.2.i to i32
  %and2.i.i.i.2.i = and i32 %42, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i.2.i)
  %tobool.not.i.i.i.2.i = icmp eq i32 %and2.i.i.i.2.i, 0
  br i1 %tobool.not.i.i.i.2.i, label %do.body11.i.i.i.2.i, label %do.end8.i.2.i.do.body5.i.i.i.i_crit_edge, !prof !703

do.end8.i.2.i.do.body5.i.i.i.i_crit_edge:         ; preds = %do.end8.i.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body5.i.i.i.i

do.body11.i.i.i.2.i:                              ; preds = %do.end8.i.2.i
  %and.i.i.i.i.2.i = and i32 %41, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.2.i)
  %tobool.i.not.i.i.i.2.i = icmp eq i32 %and.i.i.i.i.2.i, 0
  br i1 %tobool.i.not.i.i.i.2.i, label %sg_set_buf.exit.2.i, label %do.body11.i.i.i.2.i.do.body19.i.i.i.i_crit_edge, !prof !703

do.body11.i.i.i.2.i.do.body19.i.i.i.i_crit_edge:  ; preds = %do.body11.i.i.i.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body19.i.i.i.i

sg_set_buf.exit.2.i:                              ; preds = %do.body11.i.i.i.2.i
  %and.i.2.i = and i32 %36, 4095
  %and.i.i.i.2.i = and i32 %41, 3
  %or.i.i.i.2.i = or i32 %and.i.i.i.2.i, %42
  %43 = ptrtoint ptr %add.ptr.2.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %or.i.i.i.2.i, ptr %add.ptr.2.i, align 4
  %offset1.i.i.2.i = getelementptr inbounds %struct.scatterlist, ptr %sg, i32 2, i32 1
  %44 = ptrtoint ptr %offset1.i.i.2.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %and.i.2.i, ptr %offset1.i.i.2.i, align 4
  %length.i.i.2.i = getelementptr inbounds %struct.scatterlist, ptr %sg, i32 2, i32 2
  %45 = ptrtoint ptr %length.i.i.2.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 4096, ptr %length.i.i.2.i, align 4
  %46 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @tvmem, i32 0, i32 2), align 4
  %47 = call ptr @memset(ptr %46, i32 255, i32 4096)
  %add.ptr.3.i = getelementptr inbounds %struct.scatterlist, ptr %sg, i32 3
  %48 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @tvmem, i32 0, i32 3), align 4
  %49 = ptrtoint ptr %48 to i32
  %cmp.i.3.i = icmp ugt ptr %48, inttoptr (i32 -1073741825 to ptr)
  br i1 %cmp.i.3.i, label %land.lhs.true.i.3.i, label %sg_set_buf.exit.2.i.do.body5.i.i_crit_edge, !prof !703

sg_set_buf.exit.2.i.do.body5.i.i_crit_edge:       ; preds = %sg_set_buf.exit.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body5.i.i

land.lhs.true.i.3.i:                              ; preds = %sg_set_buf.exit.2.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %50 = load ptr, ptr @high_memory, align 4
  %cmp1.i.3.i = icmp ugt ptr %50, %48
  br i1 %cmp1.i.3.i, label %land.rhs.i.3.i, label %land.lhs.true.i.3.i.do.body5.i.i_crit_edge, !prof !703

land.lhs.true.i.3.i.do.body5.i.i_crit_edge:       ; preds = %land.lhs.true.i.3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body5.i.i

land.rhs.i.3.i:                                   ; preds = %land.lhs.true.i.3.i
  %sub.i.3.i = add i32 %49, 1073741824
  %shr.i.3.i = lshr i32 %sub.i.3.i, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %51 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i.3.i = add i32 %51, %shr.i.3.i
  %call.i.3.i = call i32 @pfn_valid(i32 noundef %add.i.3.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.3.i)
  %tobool.i.3.i = icmp eq i32 %call.i.3.i, 0
  br i1 %tobool.i.3.i, label %land.rhs.i.3.i.do.body5.i.i_crit_edge, label %do.end8.i.3.i, !prof !701

land.rhs.i.3.i.do.body5.i.i_crit_edge:            ; preds = %land.rhs.i.3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body5.i.i

do.end8.i.3.i:                                    ; preds = %land.rhs.i.3.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %52 = load ptr, ptr @mem_map, align 4
  %add.ptr.i.3.i = getelementptr %struct.page, ptr %52, i32 %shr.i.3.i
  %53 = ptrtoint ptr %add.ptr.3.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %add.ptr.3.i, align 4
  %55 = ptrtoint ptr %add.ptr.i.3.i to i32
  %and2.i.i.i.3.i = and i32 %55, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i.3.i)
  %tobool.not.i.i.i.3.i = icmp eq i32 %and2.i.i.i.3.i, 0
  br i1 %tobool.not.i.i.i.3.i, label %do.body11.i.i.i.3.i, label %do.end8.i.3.i.do.body5.i.i.i.i_crit_edge, !prof !703

do.end8.i.3.i.do.body5.i.i.i.i_crit_edge:         ; preds = %do.end8.i.3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body5.i.i.i.i

do.body11.i.i.i.3.i:                              ; preds = %do.end8.i.3.i
  %and.i.i.i.i.3.i = and i32 %54, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.3.i)
  %tobool.i.not.i.i.i.3.i = icmp eq i32 %and.i.i.i.i.3.i, 0
  br i1 %tobool.i.not.i.i.i.3.i, label %test_hash_sg_init.exit, label %do.body11.i.i.i.3.i.do.body19.i.i.i.i_crit_edge, !prof !703

do.body11.i.i.i.3.i.do.body19.i.i.i.i_crit_edge:  ; preds = %do.body11.i.i.i.3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body19.i.i.i.i

test_hash_sg_init.exit:                           ; preds = %do.body11.i.i.i.3.i
  %and.i.3.i = and i32 %49, 4095
  %and.i.i.i.3.i = and i32 %54, 3
  %or.i.i.i.3.i = or i32 %and.i.i.i.3.i, %55
  %56 = ptrtoint ptr %add.ptr.3.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %or.i.i.i.3.i, ptr %add.ptr.3.i, align 4
  %offset1.i.i.3.i = getelementptr inbounds %struct.scatterlist, ptr %sg, i32 3, i32 1
  %57 = ptrtoint ptr %offset1.i.i.3.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %and.i.3.i, ptr %offset1.i.i.3.i, align 4
  %length.i.i.3.i = getelementptr inbounds %struct.scatterlist, ptr %sg, i32 3, i32 2
  %58 = ptrtoint ptr %length.i.i.3.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 4096, ptr %length.i.i.3.i, align 4
  %59 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @tvmem, i32 0, i32 3), align 4
  %60 = call ptr @memset(ptr %59, i32 255, i32 4096)
  %reqsize.i.i = getelementptr inbounds %struct.crypto_ahash, ptr %call, i32 0, i32 8
  %61 = ptrtoint ptr %reqsize.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %reqsize.i.i, align 32
  %add.i = add i32 %62, 128
  %call9.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add.i, i32 noundef 3264) #15
  %tobool.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not.i, label %do.end24, label %if.end27, !prof !701

do.end24:                                         ; preds = %test_hash_sg_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call26 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.236) #13
  br label %out

if.end27:                                         ; preds = %test_hash_sg_init.exit
  %tfm1.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %call9.i.i, i32 0, i32 3
  %63 = ptrtoint ptr %tfm1.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %base.i, ptr %tfm1.i.i, align 16
  %64 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 0, ptr %wait, align 4
  %wait.i.i = getelementptr inbounds %struct.completion, ptr %wait, i32 0, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i.i, ptr noundef nonnull @.str.166, ptr noundef nonnull @init_completion.__key) #10
  %complete.i = getelementptr inbounds %struct.crypto_async_request, ptr %call9.i.i, i32 0, i32 1
  %65 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr @crypto_req_done, ptr %complete.i, align 8
  %data2.i = getelementptr inbounds %struct.crypto_async_request, ptr %call9.i.i, i32 0, i32 2
  %66 = ptrtoint ptr %data2.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %wait, ptr %data2.i, align 4
  %flags4.i = getelementptr inbounds %struct.crypto_async_request, ptr %call9.i.i, i32 0, i32 4
  %67 = ptrtoint ptr %flags4.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 1024, ptr %flags4.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %68 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %68, i32 noundef 3264, i32 noundef 64) #14
  %tobool29.not = icmp eq ptr %call7.i, null
  br i1 %tobool29.not, label %if.end27.out_nomem_crit_edge, label %for.cond.preheader

if.end27.out_nomem_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_nomem

for.cond.preheader:                               ; preds = %if.end27
  %69 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %speed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %cmp32.not220 = icmp eq i32 %70, 0
  br i1 %cmp32.not220, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %src1.i = getelementptr inbounds %struct.ahash_request, ptr %call9.i.i, i32 0, i32 2
  %nbytes2.i = getelementptr inbounds %struct.ahash_request, ptr %call9.i.i, i32 0, i32 1
  %result3.i = getelementptr inbounds %struct.ahash_request, ptr %call9.i.i, i32 0, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %secs)
  %tobool64.not = icmp eq i32 %secs, 0
  %mul.neg.i.i = mul i32 %secs, -100
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %71 = phi i32 [ %70, %for.body.lr.ph ], [ %240, %for.inc.for.body_crit_edge ]
  %arrayidx222 = phi ptr [ %speed, %for.body.lr.ph ], [ %arrayidx, %for.inc.for.body_crit_edge ]
  %i.0221 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %71)
  %cmp35 = icmp ugt i32 %71, 16384
  br i1 %cmp35, label %do.end39, label %if.end44

do.end39:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %call43 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.155, i32 noundef %71, i32 noundef 16384) #13
  br label %for.end

if.end44:                                         ; preds = %for.body
  %72 = load i32, ptr @klen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool45.not = icmp eq i32 %72, 0
  br i1 %tobool45.not, label %if.end44.do.end51_crit_edge, label %if.then46

if.end44.do.end51_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end51

if.then46:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #12
  %73 = load ptr, ptr @tvmem, align 4
  %call47 = call i32 @crypto_ahash_setkey(ptr noundef %call, ptr noundef %73, i32 noundef %72) #10
  br label %do.end51

do.end51:                                         ; preds = %if.then46, %if.end44.do.end51_crit_edge
  %74 = ptrtoint ptr %arrayidx222 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %arrayidx222, align 4
  %plen = getelementptr %struct.hash_speed, ptr %speed, i32 %i.0221, i32 1
  %76 = ptrtoint ptr %plen to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %plen, align 4
  %div = udiv i32 %75, %77
  %call60 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.241, i32 noundef %i.0221, i32 noundef %75, i32 noundef %77, i32 noundef %div) #13
  %78 = ptrtoint ptr %plen to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %plen, align 4
  %80 = ptrtoint ptr %src1.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %sg, ptr %src1.i, align 4
  %81 = ptrtoint ptr %nbytes2.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %79, ptr %nbytes2.i, align 8
  %82 = ptrtoint ptr %result3.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %call7.i, ptr %result3.i, align 32
  %83 = ptrtoint ptr %arrayidx222 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %arrayidx222, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %79, i32 %84)
  %cmp.i149 = icmp eq i32 %79, %84
  br i1 %tobool64.not, label %if.else, label %if.then65

if.then65:                                        ; preds = %do.end51
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %85 = load volatile i32, ptr @jiffies, align 128
  %add.neg.i.i = sub i32 %mul.neg.i.i, %85
  %86 = load volatile i32, ptr @jiffies, align 128
  %sub2.i.i = add i32 %add.neg.i.i, %86
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub2.i.i)
  %cmp3.i.i = icmp slt i32 %sub2.i.i, 0
  br i1 %cmp.i149, label %if.then.i142, label %if.end.i

if.then.i142:                                     ; preds = %if.then65
  br i1 %cmp3.i.i, label %if.then.i142.for.body.i.i_crit_edge, label %if.then.i142.if.end78.sink.split_crit_edge

if.then.i142.if.end78.sink.split_crit_edge:       ; preds = %if.then.i142
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end78.sink.split

if.then.i142.for.body.i.i_crit_edge:              ; preds = %if.then.i142
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.then.i142.for.body.i.i_crit_edge
  %bcount.04.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %if.then.i142.for.body.i.i_crit_edge ]
  %call.i.i143 = call i32 @crypto_ahash_digest(ptr noundef nonnull %call9.i.i) #10
  %87 = zext i32 %call.i.i143 to i64
  call void @__sanitizer_cov_trace_switch(i64 %87, ptr @__sancov_gen_cov_switch_values.342)
  switch i32 %call.i.i143, label %for.body.i.i.do_one_ahash_op.exit.i.i_crit_edge [
    i32 -115, label %for.body.i.i.sw.bb.i.i.i.i_crit_edge
    i32 -16, label %for.body.i.i.sw.bb.i.i.i.i_crit_edge326
  ]

for.body.i.i.sw.bb.i.i.i.i_crit_edge326:          ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i.i.i.i

for.body.i.i.sw.bb.i.i.i.i_crit_edge:             ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i.i.i.i

for.body.i.i.do_one_ahash_op.exit.i.i_crit_edge:  ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do_one_ahash_op.exit.i.i

sw.bb.i.i.i.i:                                    ; preds = %for.body.i.i.sw.bb.i.i.i.i_crit_edge, %for.body.i.i.sw.bb.i.i.i.i_crit_edge326
  %88 = ptrtoint ptr %data2.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %data2.i, align 4
  call void @wait_for_completion(ptr noundef %89) #10
  %90 = ptrtoint ptr %89 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 0, ptr %89, align 4
  %err2.i.i.i.i = getelementptr inbounds %struct.crypto_wait, ptr %89, i32 0, i32 1
  %91 = ptrtoint ptr %err2.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %err2.i.i.i.i, align 4
  br label %do_one_ahash_op.exit.i.i

do_one_ahash_op.exit.i.i:                         ; preds = %sw.bb.i.i.i.i, %for.body.i.i.do_one_ahash_op.exit.i.i_crit_edge
  %err.addr.0.i.i.i.i = phi i32 [ %call.i.i143, %for.body.i.i.do_one_ahash_op.exit.i.i_crit_edge ], [ %92, %sw.bb.i.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.addr.0.i.i.i.i)
  %tobool.not.i.i = icmp eq i32 %err.addr.0.i.i.i.i, 0
  br i1 %tobool.not.i.i, label %for.inc.i.i, label %do_one_ahash_op.exit.i.i.if.end78_crit_edge

do_one_ahash_op.exit.i.i.if.end78_crit_edge:      ; preds = %do_one_ahash_op.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end78

for.inc.i.i:                                      ; preds = %do_one_ahash_op.exit.i.i
  %inc.i.i = add i32 %bcount.04.i.i, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %93 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i144 = add i32 %93, %add.neg.i.i
  %cmp.i.i145 = icmp slt i32 %sub.i.i144, 0
  br i1 %cmp.i.i145, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.if.end78.sink.split_crit_edge

for.inc.i.i.if.end78.sink.split_crit_edge:        ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end78.sink.split

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

if.end.i:                                         ; preds = %if.then65
  br i1 %cmp3.i.i, label %for.body.lr.ph.i, label %if.end.i.if.end78.sink.split_crit_edge

if.end.i.if.end78.sink.split_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end78.sink.split

for.body.lr.ph.i:                                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %cmp722.i = icmp sgt i32 %84, 0
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc20.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %bcount.026.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc20.i.for.body.i_crit_edge ]
  %94 = ptrtoint ptr %tfm1.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %tfm1.i.i, align 16
  %96 = ptrtoint ptr %95 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %95, align 128
  %and.i.i146 = and i32 %97, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i146)
  %tobool.not.i1.i = icmp eq i32 %and.i.i146, 0
  br i1 %tobool.not.i1.i, label %crypto_ahash_init.exit.i, label %for.body.i.if.end78_crit_edge

for.body.i.if.end78_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end78

crypto_ahash_init.exit.i:                         ; preds = %for.body.i
  %add.ptr.i.i.i.i = getelementptr i8, ptr %95, i32 -128
  %98 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %add.ptr.i.i.i.i, align 128
  %call2.i.i = call i32 %99(ptr noundef nonnull %call9.i.i) #10
  %100 = zext i32 %call2.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %100, ptr @__sancov_gen_cov_switch_values.343)
  switch i32 %call2.i.i, label %crypto_ahash_init.exit.i.do_one_ahash_op.exit.i_crit_edge [
    i32 -115, label %crypto_ahash_init.exit.i.sw.bb.i.i.i_crit_edge
    i32 -16, label %crypto_ahash_init.exit.i.sw.bb.i.i.i_crit_edge327
  ]

crypto_ahash_init.exit.i.sw.bb.i.i.i_crit_edge327: ; preds = %crypto_ahash_init.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i.i.i

crypto_ahash_init.exit.i.sw.bb.i.i.i_crit_edge:   ; preds = %crypto_ahash_init.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i.i.i

crypto_ahash_init.exit.i.do_one_ahash_op.exit.i_crit_edge: ; preds = %crypto_ahash_init.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do_one_ahash_op.exit.i

sw.bb.i.i.i:                                      ; preds = %crypto_ahash_init.exit.i.sw.bb.i.i.i_crit_edge, %crypto_ahash_init.exit.i.sw.bb.i.i.i_crit_edge327
  %101 = ptrtoint ptr %data2.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %data2.i, align 4
  call void @wait_for_completion(ptr noundef %102) #10
  %103 = ptrtoint ptr %102 to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 0, ptr %102, align 4
  %err2.i.i.i = getelementptr inbounds %struct.crypto_wait, ptr %102, i32 0, i32 1
  %104 = ptrtoint ptr %err2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %err2.i.i.i, align 4
  br label %do_one_ahash_op.exit.i

do_one_ahash_op.exit.i:                           ; preds = %sw.bb.i.i.i, %crypto_ahash_init.exit.i.do_one_ahash_op.exit.i_crit_edge
  %err.addr.0.i.i.i = phi i32 [ %call2.i.i, %crypto_ahash_init.exit.i.do_one_ahash_op.exit.i_crit_edge ], [ %105, %sw.bb.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.addr.0.i.i.i)
  %tobool.not.i147 = icmp eq i32 %err.addr.0.i.i.i, 0
  br i1 %tobool.not.i147, label %for.cond6.preheader.i, label %do_one_ahash_op.exit.i.if.end78_crit_edge

do_one_ahash_op.exit.i.if.end78_crit_edge:        ; preds = %do_one_ahash_op.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end78

for.cond6.preheader.i:                            ; preds = %do_one_ahash_op.exit.i
  br i1 %cmp722.i, label %for.cond6.preheader.i.for.body8.i_crit_edge, label %for.cond6.preheader.i.for.end.i_crit_edge

for.cond6.preheader.i.for.end.i_crit_edge:        ; preds = %for.cond6.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.cond6.preheader.i.for.body8.i_crit_edge:      ; preds = %for.cond6.preheader.i
  br label %for.body8.i

for.cond6.i:                                      ; preds = %do_one_ahash_op.exit8.i
  %add14.i = add i32 %pcount.023.i, %79
  %cmp7.i = icmp slt i32 %add14.i, %84
  br i1 %cmp7.i, label %for.cond6.i.for.body8.i_crit_edge, label %for.cond6.i.for.end.i_crit_edge

for.cond6.i.for.end.i_crit_edge:                  ; preds = %for.cond6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.cond6.i.for.body8.i_crit_edge:                ; preds = %for.cond6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body8.i

for.body8.i:                                      ; preds = %for.cond6.i.for.body8.i_crit_edge, %for.cond6.preheader.i.for.body8.i_crit_edge
  %pcount.023.i = phi i32 [ %add14.i, %for.cond6.i.for.body8.i_crit_edge ], [ 0, %for.cond6.preheader.i.for.body8.i_crit_edge ]
  %106 = ptrtoint ptr %tfm1.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %tfm1.i.i, align 16
  %__crt_alg.i.i148 = getelementptr i8, ptr %107, i32 12
  %108 = ptrtoint ptr %__crt_alg.i.i148 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %__crt_alg.i.i148, align 4
  %110 = ptrtoint ptr %nbytes2.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %nbytes2.i, align 8
  call void @crypto_stats_get(ptr noundef %109) #10
  %112 = ptrtoint ptr %tfm1.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %tfm1.i.i, align 16
  %update.i.i = getelementptr i8, ptr %113, i32 -124
  %114 = ptrtoint ptr %update.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %update.i.i, align 4
  %call3.i.i = call i32 %115(ptr noundef nonnull %call9.i.i) #10
  call void @crypto_stats_ahash_update(i32 noundef %111, i32 noundef %call3.i.i, ptr noundef %109) #10
  %116 = zext i32 %call3.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %116, ptr @__sancov_gen_cov_switch_values.344)
  switch i32 %call3.i.i, label %for.body8.i.do_one_ahash_op.exit8.i_crit_edge [
    i32 -115, label %for.body8.i.sw.bb.i.i6.i_crit_edge
    i32 -16, label %for.body8.i.sw.bb.i.i6.i_crit_edge328
  ]

for.body8.i.sw.bb.i.i6.i_crit_edge328:            ; preds = %for.body8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i.i6.i

for.body8.i.sw.bb.i.i6.i_crit_edge:               ; preds = %for.body8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i.i6.i

for.body8.i.do_one_ahash_op.exit8.i_crit_edge:    ; preds = %for.body8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do_one_ahash_op.exit8.i

sw.bb.i.i6.i:                                     ; preds = %for.body8.i.sw.bb.i.i6.i_crit_edge, %for.body8.i.sw.bb.i.i6.i_crit_edge328
  %117 = ptrtoint ptr %data2.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %data2.i, align 4
  call void @wait_for_completion(ptr noundef %118) #10
  %119 = ptrtoint ptr %118 to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 0, ptr %118, align 4
  %err2.i.i5.i = getelementptr inbounds %struct.crypto_wait, ptr %118, i32 0, i32 1
  %120 = ptrtoint ptr %err2.i.i5.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %err2.i.i5.i, align 4
  br label %do_one_ahash_op.exit8.i

do_one_ahash_op.exit8.i:                          ; preds = %sw.bb.i.i6.i, %for.body8.i.do_one_ahash_op.exit8.i_crit_edge
  %err.addr.0.i.i7.i = phi i32 [ %call3.i.i, %for.body8.i.do_one_ahash_op.exit8.i_crit_edge ], [ %121, %sw.bb.i.i6.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.addr.0.i.i7.i)
  %tobool11.not.i = icmp eq i32 %err.addr.0.i.i7.i, 0
  br i1 %tobool11.not.i, label %for.cond6.i, label %do_one_ahash_op.exit8.i.if.end78_crit_edge

do_one_ahash_op.exit8.i.if.end78_crit_edge:       ; preds = %do_one_ahash_op.exit8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end78

for.end.i:                                        ; preds = %for.cond6.i.for.end.i_crit_edge, %for.cond6.preheader.i.for.end.i_crit_edge
  %call15.i = call i32 @crypto_ahash_final(ptr noundef nonnull %call9.i.i) #10
  %122 = zext i32 %call15.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %122, ptr @__sancov_gen_cov_switch_values.345)
  switch i32 %call15.i, label %for.end.i.do_one_ahash_op.exit13.i_crit_edge [
    i32 -115, label %for.end.i.sw.bb.i.i11.i_crit_edge
    i32 -16, label %for.end.i.sw.bb.i.i11.i_crit_edge329
  ]

for.end.i.sw.bb.i.i11.i_crit_edge329:             ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i.i11.i

for.end.i.sw.bb.i.i11.i_crit_edge:                ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i.i11.i

for.end.i.do_one_ahash_op.exit13.i_crit_edge:     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do_one_ahash_op.exit13.i

sw.bb.i.i11.i:                                    ; preds = %for.end.i.sw.bb.i.i11.i_crit_edge, %for.end.i.sw.bb.i.i11.i_crit_edge329
  %123 = ptrtoint ptr %data2.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %data2.i, align 4
  call void @wait_for_completion(ptr noundef %124) #10
  %125 = ptrtoint ptr %124 to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 0, ptr %124, align 4
  %err2.i.i10.i = getelementptr inbounds %struct.crypto_wait, ptr %124, i32 0, i32 1
  %126 = ptrtoint ptr %err2.i.i10.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %err2.i.i10.i, align 4
  br label %do_one_ahash_op.exit13.i

do_one_ahash_op.exit13.i:                         ; preds = %sw.bb.i.i11.i, %for.end.i.do_one_ahash_op.exit13.i_crit_edge
  %err.addr.0.i.i12.i = phi i32 [ %call15.i, %for.end.i.do_one_ahash_op.exit13.i_crit_edge ], [ %127, %sw.bb.i.i11.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.addr.0.i.i12.i)
  %tobool17.not.i = icmp eq i32 %err.addr.0.i.i12.i, 0
  br i1 %tobool17.not.i, label %for.inc20.i, label %do_one_ahash_op.exit13.i.if.end78_crit_edge

do_one_ahash_op.exit13.i.if.end78_crit_edge:      ; preds = %do_one_ahash_op.exit13.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end78

for.inc20.i:                                      ; preds = %do_one_ahash_op.exit13.i
  %inc.i = add i32 %bcount.026.i, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %128 = load volatile i32, ptr @jiffies, align 128
  %sub.i = add i32 %128, %add.neg.i.i
  %cmp1.i = icmp slt i32 %sub.i, 0
  br i1 %cmp1.i, label %for.inc20.i.for.body.i_crit_edge, label %for.inc20.i.if.end78.sink.split_crit_edge

for.inc20.i.if.end78.sink.split_crit_edge:        ; preds = %for.inc20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end78.sink.split

for.inc20.i.for.body.i_crit_edge:                 ; preds = %for.inc20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

if.else:                                          ; preds = %do.end51
  br i1 %cmp.i149, label %if.then.i155, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %cmp767.i = icmp sgt i32 %84, 0
  br label %for.body.i166

if.then.i155:                                     ; preds = %if.else
  %call.i.i154 = call i32 @crypto_ahash_digest(ptr noundef nonnull %call9.i.i) #10
  %129 = zext i32 %call.i.i154 to i64
  call void @__sanitizer_cov_trace_switch(i64 %129, ptr @__sancov_gen_cov_switch_values.346)
  switch i32 %call.i.i154, label %if.then.i155.do_one_ahash_op.exit.i.i160_crit_edge [
    i32 -115, label %if.then.i155.sw.bb.i.i.i.i157_crit_edge
    i32 -16, label %if.then.i155.sw.bb.i.i.i.i157_crit_edge330
  ]

if.then.i155.sw.bb.i.i.i.i157_crit_edge330:       ; preds = %if.then.i155
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i.i.i.i157

if.then.i155.sw.bb.i.i.i.i157_crit_edge:          ; preds = %if.then.i155
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i.i.i.i157

if.then.i155.do_one_ahash_op.exit.i.i160_crit_edge: ; preds = %if.then.i155
  call void @__sanitizer_cov_trace_pc() #12
  br label %do_one_ahash_op.exit.i.i160

for.cond.i.i:                                     ; preds = %do_one_ahash_op.exit.i.i160
  %call.1.i.i = call i32 @crypto_ahash_digest(ptr noundef nonnull %call9.i.i) #10
  %130 = zext i32 %call.1.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %130, ptr @__sancov_gen_cov_switch_values.347)
  switch i32 %call.1.i.i, label %for.cond.i.i.do_one_ahash_op.exit.1.i.i_crit_edge [
    i32 -115, label %for.cond.i.i.sw.bb.i.i.1.i.i_crit_edge
    i32 -16, label %for.cond.i.i.sw.bb.i.i.1.i.i_crit_edge331
  ]

for.cond.i.i.sw.bb.i.i.1.i.i_crit_edge331:        ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i.i.1.i.i

for.cond.i.i.sw.bb.i.i.1.i.i_crit_edge:           ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i.i.1.i.i

for.cond.i.i.do_one_ahash_op.exit.1.i.i_crit_edge: ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do_one_ahash_op.exit.1.i.i

sw.bb.i.i.1.i.i:                                  ; preds = %for.cond.i.i.sw.bb.i.i.1.i.i_crit_edge, %for.cond.i.i.sw.bb.i.i.1.i.i_crit_edge331
  %131 = ptrtoint ptr %data2.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %data2.i, align 4
  call void @wait_for_completion(ptr noundef %132) #10
  %133 = ptrtoint ptr %132 to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 0, ptr %132, align 4
  %err2.i.i.1.i.i = getelementptr inbounds %struct.crypto_wait, ptr %132, i32 0, i32 1
  %134 = ptrtoint ptr %err2.i.i.1.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %err2.i.i.1.i.i, align 4
  br label %do_one_ahash_op.exit.1.i.i

do_one_ahash_op.exit.1.i.i:                       ; preds = %sw.bb.i.i.1.i.i, %for.cond.i.i.do_one_ahash_op.exit.1.i.i_crit_edge
  %err.addr.0.i.i.1.i.i = phi i32 [ %call.1.i.i, %for.cond.i.i.do_one_ahash_op.exit.1.i.i_crit_edge ], [ %135, %sw.bb.i.i.1.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.addr.0.i.i.1.i.i)
  %tobool.not.1.i.i = icmp eq i32 %err.addr.0.i.i.1.i.i, 0
  br i1 %tobool.not.1.i.i, label %for.cond.1.i.i, label %do_one_ahash_op.exit.1.i.i.do.end83_crit_edge

do_one_ahash_op.exit.1.i.i.do.end83_crit_edge:    ; preds = %do_one_ahash_op.exit.1.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end83

for.cond.1.i.i:                                   ; preds = %do_one_ahash_op.exit.1.i.i
  %call.2.i.i = call i32 @crypto_ahash_digest(ptr noundef nonnull %call9.i.i) #10
  %136 = zext i32 %call.2.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %136, ptr @__sancov_gen_cov_switch_values.348)
  switch i32 %call.2.i.i, label %for.cond.1.i.i.do_one_ahash_op.exit.2.i.i_crit_edge [
    i32 -115, label %for.cond.1.i.i.sw.bb.i.i.2.i.i_crit_edge
    i32 -16, label %for.cond.1.i.i.sw.bb.i.i.2.i.i_crit_edge332
  ]

for.cond.1.i.i.sw.bb.i.i.2.i.i_crit_edge332:      ; preds = %for.cond.1.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i.i.2.i.i

for.cond.1.i.i.sw.bb.i.i.2.i.i_crit_edge:         ; preds = %for.cond.1.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i.i.2.i.i

for.cond.1.i.i.do_one_ahash_op.exit.2.i.i_crit_edge: ; preds = %for.cond.1.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do_one_ahash_op.exit.2.i.i

sw.bb.i.i.2.i.i:                                  ; preds = %for.cond.1.i.i.sw.bb.i.i.2.i.i_crit_edge, %for.cond.1.i.i.sw.bb.i.i.2.i.i_crit_edge332
  %137 = ptrtoint ptr %data2.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %data2.i, align 4
  call void @wait_for_completion(ptr noundef %138) #10
  %139 = ptrtoint ptr %138 to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 0, ptr %138, align 4
  %err2.i.i.2.i.i = getelementptr inbounds %struct.crypto_wait, ptr %138, i32 0, i32 1
  %140 = ptrtoint ptr %err2.i.i.2.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %err2.i.i.2.i.i, align 4
  br label %do_one_ahash_op.exit.2.i.i

do_one_ahash_op.exit.2.i.i:                       ; preds = %sw.bb.i.i.2.i.i, %for.cond.1.i.i.do_one_ahash_op.exit.2.i.i_crit_edge
  %err.addr.0.i.i.2.i.i = phi i32 [ %call.2.i.i, %for.cond.1.i.i.do_one_ahash_op.exit.2.i.i_crit_edge ], [ %141, %sw.bb.i.i.2.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.addr.0.i.i.2.i.i)
  %tobool.not.2.i.i = icmp eq i32 %err.addr.0.i.i.2.i.i, 0
  br i1 %tobool.not.2.i.i, label %for.cond.2.i.i, label %do_one_ahash_op.exit.2.i.i.do.end83_crit_edge

do_one_ahash_op.exit.2.i.i.do.end83_crit_edge:    ; preds = %do_one_ahash_op.exit.2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end83

for.cond.2.i.i:                                   ; preds = %do_one_ahash_op.exit.2.i.i
  %call.3.i.i = call i32 @crypto_ahash_digest(ptr noundef nonnull %call9.i.i) #10
  %142 = zext i32 %call.3.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %142, ptr @__sancov_gen_cov_switch_values.349)
  switch i32 %call.3.i.i, label %for.cond.2.i.i.do_one_ahash_op.exit.3.i.i_crit_edge [
    i32 -115, label %for.cond.2.i.i.sw.bb.i.i.3.i.i_crit_edge
    i32 -16, label %for.cond.2.i.i.sw.bb.i.i.3.i.i_crit_edge333
  ]

for.cond.2.i.i.sw.bb.i.i.3.i.i_crit_edge333:      ; preds = %for.cond.2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i.i.3.i.i

for.cond.2.i.i.sw.bb.i.i.3.i.i_crit_edge:         ; preds = %for.cond.2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i.i.3.i.i

for.cond.2.i.i.do_one_ahash_op.exit.3.i.i_crit_edge: ; preds = %for.cond.2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do_one_ahash_op.exit.3.i.i

sw.bb.i.i.3.i.i:                                  ; preds = %for.cond.2.i.i.sw.bb.i.i.3.i.i_crit_edge, %for.cond.2.i.i.sw.bb.i.i.3.i.i_crit_edge333
  %143 = ptrtoint ptr %data2.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %data2.i, align 4
  call void @wait_for_completion(ptr noundef %144) #10
  %145 = ptrtoint ptr %144 to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 0, ptr %144, align 4
  %err2.i.i.3.i.i = getelementptr inbounds %struct.crypto_wait, ptr %144, i32 0, i32 1
  %146 = ptrtoint ptr %err2.i.i.3.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %err2.i.i.3.i.i, align 4
  br label %do_one_ahash_op.exit.3.i.i

do_one_ahash_op.exit.3.i.i:                       ; preds = %sw.bb.i.i.3.i.i, %for.cond.2.i.i.do_one_ahash_op.exit.3.i.i_crit_edge
  %err.addr.0.i.i.3.i.i = phi i32 [ %call.3.i.i, %for.cond.2.i.i.do_one_ahash_op.exit.3.i.i_crit_edge ], [ %147, %sw.bb.i.i.3.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.addr.0.i.i.3.i.i)
  %tobool.not.3.i.i = icmp eq i32 %err.addr.0.i.i.3.i.i, 0
  br i1 %tobool.not.3.i.i, label %do_one_ahash_op.exit.3.i.i.for.body4.i.i_crit_edge, label %do_one_ahash_op.exit.3.i.i.do.end83_crit_edge

do_one_ahash_op.exit.3.i.i.do.end83_crit_edge:    ; preds = %do_one_ahash_op.exit.3.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end83

do_one_ahash_op.exit.3.i.i.for.body4.i.i_crit_edge: ; preds = %do_one_ahash_op.exit.3.i.i
  br label %for.body4.i.i

sw.bb.i.i.i.i157:                                 ; preds = %if.then.i155.sw.bb.i.i.i.i157_crit_edge, %if.then.i155.sw.bb.i.i.i.i157_crit_edge330
  %148 = ptrtoint ptr %data2.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %data2.i, align 4
  call void @wait_for_completion(ptr noundef %149) #10
  %150 = ptrtoint ptr %149 to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 0, ptr %149, align 4
  %err2.i.i.i.i156 = getelementptr inbounds %struct.crypto_wait, ptr %149, i32 0, i32 1
  %151 = ptrtoint ptr %err2.i.i.i.i156 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %err2.i.i.i.i156, align 4
  br label %do_one_ahash_op.exit.i.i160

do_one_ahash_op.exit.i.i160:                      ; preds = %sw.bb.i.i.i.i157, %if.then.i155.do_one_ahash_op.exit.i.i160_crit_edge
  %err.addr.0.i.i.i.i158 = phi i32 [ %call.i.i154, %if.then.i155.do_one_ahash_op.exit.i.i160_crit_edge ], [ %152, %sw.bb.i.i.i.i157 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.addr.0.i.i.i.i158)
  %tobool.not.i.i159 = icmp eq i32 %err.addr.0.i.i.i.i158, 0
  br i1 %tobool.not.i.i159, label %for.cond.i.i, label %do_one_ahash_op.exit.i.i160.do.end83_crit_edge

do_one_ahash_op.exit.i.i160.do.end83_crit_edge:   ; preds = %do_one_ahash_op.exit.i.i160
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end83

for.body4.i.i:                                    ; preds = %for.inc21.i.i.for.body4.i.i_crit_edge, %do_one_ahash_op.exit.3.i.i.for.body4.i.i_crit_edge
  %cycles.019.i.i = phi i32 [ %add.i.i163, %for.inc21.i.i.for.body4.i.i_crit_edge ], [ 0, %do_one_ahash_op.exit.3.i.i.for.body4.i.i_crit_edge ]
  %i.118.i.i = phi i32 [ %inc22.i.i, %for.inc21.i.i.for.body4.i.i_crit_edge ], [ 0, %do_one_ahash_op.exit.3.i.i.for.body4.i.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %c.i.i) #10
  %153 = ptrtoint ptr %c.i.i to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 -1, ptr %c.i.i, align 4, !annotation !702
  %call5.i.i = call i32 @read_current_timer(ptr noundef nonnull %c.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %tobool6.not.i.i = icmp eq i32 %call5.i.i, 0
  br i1 %tobool6.not.i.i, label %cond.false.i.i, label %for.body4.i.i.cond.end.i.i_crit_edge

for.body4.i.i.cond.end.i.i_crit_edge:             ; preds = %for.body4.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end.i.i

cond.false.i.i:                                   ; preds = %for.body4.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %154 = ptrtoint ptr %c.i.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %c.i.i, align 4
  br label %cond.end.i.i

cond.end.i.i:                                     ; preds = %cond.false.i.i, %for.body4.i.i.cond.end.i.i_crit_edge
  %cond.i.i = phi i32 [ %155, %cond.false.i.i ], [ 0, %for.body4.i.i.cond.end.i.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %c.i.i) #10
  %call7.i.i161 = call i32 @crypto_ahash_digest(ptr noundef nonnull %call9.i.i) #10
  %156 = zext i32 %call7.i.i161 to i64
  call void @__sanitizer_cov_trace_switch(i64 %156, ptr @__sancov_gen_cov_switch_values.350)
  switch i32 %call7.i.i161, label %cond.end.i.i.do_one_ahash_op.exit6.i.i_crit_edge [
    i32 -115, label %cond.end.i.i.sw.bb.i.i4.i.i_crit_edge
    i32 -16, label %cond.end.i.i.sw.bb.i.i4.i.i_crit_edge334
  ]

cond.end.i.i.sw.bb.i.i4.i.i_crit_edge334:         ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i.i4.i.i

cond.end.i.i.sw.bb.i.i4.i.i_crit_edge:            ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i.i4.i.i

cond.end.i.i.do_one_ahash_op.exit6.i.i_crit_edge: ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do_one_ahash_op.exit6.i.i

sw.bb.i.i4.i.i:                                   ; preds = %cond.end.i.i.sw.bb.i.i4.i.i_crit_edge, %cond.end.i.i.sw.bb.i.i4.i.i_crit_edge334
  %157 = ptrtoint ptr %data2.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %data2.i, align 4
  call void @wait_for_completion(ptr noundef %158) #10
  %159 = ptrtoint ptr %158 to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 0, ptr %158, align 4
  %err2.i.i3.i.i = getelementptr inbounds %struct.crypto_wait, ptr %158, i32 0, i32 1
  %160 = ptrtoint ptr %err2.i.i3.i.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %err2.i.i3.i.i, align 4
  br label %do_one_ahash_op.exit6.i.i

do_one_ahash_op.exit6.i.i:                        ; preds = %sw.bb.i.i4.i.i, %cond.end.i.i.do_one_ahash_op.exit6.i.i_crit_edge
  %err.addr.0.i.i5.i.i = phi i32 [ %call7.i.i161, %cond.end.i.i.do_one_ahash_op.exit6.i.i_crit_edge ], [ %161, %sw.bb.i.i4.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.addr.0.i.i5.i.i)
  %tobool9.not.i.i = icmp eq i32 %err.addr.0.i.i5.i.i, 0
  br i1 %tobool9.not.i.i, label %if.end11.i.i, label %do_one_ahash_op.exit6.i.i.do.end83_crit_edge

do_one_ahash_op.exit6.i.i.do.end83_crit_edge:     ; preds = %do_one_ahash_op.exit6.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end83

if.end11.i.i:                                     ; preds = %do_one_ahash_op.exit6.i.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %c12.i.i) #10
  %162 = ptrtoint ptr %c12.i.i to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 -1, ptr %c12.i.i, align 4, !annotation !702
  %call14.i.i = call i32 @read_current_timer(ptr noundef nonnull %c12.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i.i)
  %tobool15.not.i.i = icmp eq i32 %call14.i.i, 0
  br i1 %tobool15.not.i.i, label %cond.false17.i.i, label %if.end11.i.i.for.inc21.i.i_crit_edge

if.end11.i.i.for.inc21.i.i_crit_edge:             ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc21.i.i

cond.false17.i.i:                                 ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %163 = ptrtoint ptr %c12.i.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %c12.i.i, align 4
  br label %for.inc21.i.i

for.inc21.i.i:                                    ; preds = %cond.false17.i.i, %if.end11.i.i.for.inc21.i.i_crit_edge
  %cond19.i.i = phi i32 [ %164, %cond.false17.i.i ], [ 0, %if.end11.i.i.for.inc21.i.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %c12.i.i) #10
  %sub.i.i162 = sub i32 %cycles.019.i.i, %cond.i.i
  %add.i.i163 = add i32 %cond19.i.i, %sub.i.i162
  %inc22.i.i = add nuw nsw i32 %i.118.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc22.i.i, 8
  br i1 %exitcond.not.i.i, label %for.inc21.i.i.if.end78.thread195_crit_edge, label %for.inc21.i.i.for.body4.i.i_crit_edge

for.inc21.i.i.for.body4.i.i_crit_edge:            ; preds = %for.inc21.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body4.i.i

for.inc21.i.i.if.end78.thread195_crit_edge:       ; preds = %for.inc21.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end78.thread195

for.cond.i:                                       ; preds = %do_one_ahash_op.exit14.i
  %inc.i164 = add nuw nsw i32 %i.069.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i164, 4
  br i1 %exitcond.not.i, label %for.cond.i.for.body23.i_crit_edge, label %for.cond.i.for.body.i166_crit_edge

for.cond.i.for.body.i166_crit_edge:               ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i166

for.cond.i.for.body23.i_crit_edge:                ; preds = %for.cond.i
  br label %for.body23.i

for.body.i166:                                    ; preds = %for.cond.i.for.body.i166_crit_edge, %for.cond.preheader.i
  %i.069.i = phi i32 [ 0, %for.cond.preheader.i ], [ %inc.i164, %for.cond.i.for.body.i166_crit_edge ]
  %165 = ptrtoint ptr %tfm1.i.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %tfm1.i.i, align 16
  %167 = ptrtoint ptr %166 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %166, align 128
  %and.i.i165 = and i32 %168, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i165)
  %tobool.not.i2.i = icmp eq i32 %and.i.i165, 0
  br i1 %tobool.not.i2.i, label %crypto_ahash_init.exit.i169, label %for.body.i166.do.end83_crit_edge

for.body.i166.do.end83_crit_edge:                 ; preds = %for.body.i166
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end83

crypto_ahash_init.exit.i169:                      ; preds = %for.body.i166
  %add.ptr.i.i.i.i167 = getelementptr i8, ptr %166, i32 -128
  %169 = ptrtoint ptr %add.ptr.i.i.i.i167 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %add.ptr.i.i.i.i167, align 128
  %call2.i.i168 = call i32 %170(ptr noundef nonnull %call9.i.i) #10
  %171 = zext i32 %call2.i.i168 to i64
  call void @__sanitizer_cov_trace_switch(i64 %171, ptr @__sancov_gen_cov_switch_values.351)
  switch i32 %call2.i.i168, label %crypto_ahash_init.exit.i169.do_one_ahash_op.exit.i174_crit_edge [
    i32 -115, label %crypto_ahash_init.exit.i169.sw.bb.i.i.i171_crit_edge
    i32 -16, label %crypto_ahash_init.exit.i169.sw.bb.i.i.i171_crit_edge335
  ]

crypto_ahash_init.exit.i169.sw.bb.i.i.i171_crit_edge335: ; preds = %crypto_ahash_init.exit.i169
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i.i.i171

crypto_ahash_init.exit.i169.sw.bb.i.i.i171_crit_edge: ; preds = %crypto_ahash_init.exit.i169
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i.i.i171

crypto_ahash_init.exit.i169.do_one_ahash_op.exit.i174_crit_edge: ; preds = %crypto_ahash_init.exit.i169
  call void @__sanitizer_cov_trace_pc() #12
  br label %do_one_ahash_op.exit.i174

sw.bb.i.i.i171:                                   ; preds = %crypto_ahash_init.exit.i169.sw.bb.i.i.i171_crit_edge, %crypto_ahash_init.exit.i169.sw.bb.i.i.i171_crit_edge335
  %172 = ptrtoint ptr %data2.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %data2.i, align 4
  call void @wait_for_completion(ptr noundef %173) #10
  %174 = ptrtoint ptr %173 to i32
  call void @__asan_store4_noabort(i32 %174)
  store i32 0, ptr %173, align 4
  %err2.i.i.i170 = getelementptr inbounds %struct.crypto_wait, ptr %173, i32 0, i32 1
  %175 = ptrtoint ptr %err2.i.i.i170 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %err2.i.i.i170, align 4
  br label %do_one_ahash_op.exit.i174

do_one_ahash_op.exit.i174:                        ; preds = %sw.bb.i.i.i171, %crypto_ahash_init.exit.i169.do_one_ahash_op.exit.i174_crit_edge
  %err.addr.0.i.i.i172 = phi i32 [ %call2.i.i168, %crypto_ahash_init.exit.i169.do_one_ahash_op.exit.i174_crit_edge ], [ %176, %sw.bb.i.i.i171 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.addr.0.i.i.i172)
  %tobool.not.i173 = icmp eq i32 %err.addr.0.i.i.i172, 0
  br i1 %tobool.not.i173, label %for.cond6.preheader.i175, label %do_one_ahash_op.exit.i174.do.end83_crit_edge

do_one_ahash_op.exit.i174.do.end83_crit_edge:     ; preds = %do_one_ahash_op.exit.i174
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end83

for.cond6.preheader.i175:                         ; preds = %do_one_ahash_op.exit.i174
  br i1 %cmp767.i, label %for.cond6.preheader.i175.for.body8.i182_crit_edge, label %for.cond6.preheader.i175.for.end.i184_crit_edge

for.cond6.preheader.i175.for.end.i184_crit_edge:  ; preds = %for.cond6.preheader.i175
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i184

for.cond6.preheader.i175.for.body8.i182_crit_edge: ; preds = %for.cond6.preheader.i175
  br label %for.body8.i182

for.cond6.i178:                                   ; preds = %do_one_ahash_op.exit9.i
  %add.i176 = add i32 %pcount.068.i, %79
  %cmp7.i177 = icmp slt i32 %add.i176, %84
  br i1 %cmp7.i177, label %for.cond6.i178.for.body8.i182_crit_edge, label %for.cond6.i178.for.end.i184_crit_edge

for.cond6.i178.for.end.i184_crit_edge:            ; preds = %for.cond6.i178
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i184

for.cond6.i178.for.body8.i182_crit_edge:          ; preds = %for.cond6.i178
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body8.i182

for.body8.i182:                                   ; preds = %for.cond6.i178.for.body8.i182_crit_edge, %for.cond6.preheader.i175.for.body8.i182_crit_edge
  %pcount.068.i = phi i32 [ %add.i176, %for.cond6.i178.for.body8.i182_crit_edge ], [ 0, %for.cond6.preheader.i175.for.body8.i182_crit_edge ]
  %177 = ptrtoint ptr %tfm1.i.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %tfm1.i.i, align 16
  %__crt_alg.i.i179 = getelementptr i8, ptr %178, i32 12
  %179 = ptrtoint ptr %__crt_alg.i.i179 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %__crt_alg.i.i179, align 4
  %181 = ptrtoint ptr %nbytes2.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %nbytes2.i, align 8
  call void @crypto_stats_get(ptr noundef %180) #10
  %183 = ptrtoint ptr %tfm1.i.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %tfm1.i.i, align 16
  %update.i.i180 = getelementptr i8, ptr %184, i32 -124
  %185 = ptrtoint ptr %update.i.i180 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %update.i.i180, align 4
  %call3.i.i181 = call i32 %186(ptr noundef nonnull %call9.i.i) #10
  call void @crypto_stats_ahash_update(i32 noundef %182, i32 noundef %call3.i.i181, ptr noundef %180) #10
  %187 = zext i32 %call3.i.i181 to i64
  call void @__sanitizer_cov_trace_switch(i64 %187, ptr @__sancov_gen_cov_switch_values.352)
  switch i32 %call3.i.i181, label %for.body8.i182.do_one_ahash_op.exit9.i_crit_edge [
    i32 -115, label %for.body8.i182.sw.bb.i.i7.i_crit_edge
    i32 -16, label %for.body8.i182.sw.bb.i.i7.i_crit_edge336
  ]

for.body8.i182.sw.bb.i.i7.i_crit_edge336:         ; preds = %for.body8.i182
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i.i7.i

for.body8.i182.sw.bb.i.i7.i_crit_edge:            ; preds = %for.body8.i182
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i.i7.i

for.body8.i182.do_one_ahash_op.exit9.i_crit_edge: ; preds = %for.body8.i182
  call void @__sanitizer_cov_trace_pc() #12
  br label %do_one_ahash_op.exit9.i

sw.bb.i.i7.i:                                     ; preds = %for.body8.i182.sw.bb.i.i7.i_crit_edge, %for.body8.i182.sw.bb.i.i7.i_crit_edge336
  %188 = ptrtoint ptr %data2.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %data2.i, align 4
  call void @wait_for_completion(ptr noundef %189) #10
  %190 = ptrtoint ptr %189 to i32
  call void @__asan_store4_noabort(i32 %190)
  store i32 0, ptr %189, align 4
  %err2.i.i6.i = getelementptr inbounds %struct.crypto_wait, ptr %189, i32 0, i32 1
  %191 = ptrtoint ptr %err2.i.i6.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %err2.i.i6.i, align 4
  br label %do_one_ahash_op.exit9.i

do_one_ahash_op.exit9.i:                          ; preds = %sw.bb.i.i7.i, %for.body8.i182.do_one_ahash_op.exit9.i_crit_edge
  %err.addr.0.i.i8.i = phi i32 [ %call3.i.i181, %for.body8.i182.do_one_ahash_op.exit9.i_crit_edge ], [ %192, %sw.bb.i.i7.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.addr.0.i.i8.i)
  %tobool11.not.i183 = icmp eq i32 %err.addr.0.i.i8.i, 0
  br i1 %tobool11.not.i183, label %for.cond6.i178, label %do_one_ahash_op.exit9.i.do.end83_crit_edge

do_one_ahash_op.exit9.i.do.end83_crit_edge:       ; preds = %do_one_ahash_op.exit9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end83

for.end.i184:                                     ; preds = %for.cond6.i178.for.end.i184_crit_edge, %for.cond6.preheader.i175.for.end.i184_crit_edge
  %call14.i = call i32 @crypto_ahash_final(ptr noundef nonnull %call9.i.i) #10
  %193 = zext i32 %call14.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %193, ptr @__sancov_gen_cov_switch_values.353)
  switch i32 %call14.i, label %for.end.i184.do_one_ahash_op.exit14.i_crit_edge [
    i32 -115, label %for.end.i184.sw.bb.i.i12.i_crit_edge
    i32 -16, label %for.end.i184.sw.bb.i.i12.i_crit_edge337
  ]

for.end.i184.sw.bb.i.i12.i_crit_edge337:          ; preds = %for.end.i184
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i.i12.i

for.end.i184.sw.bb.i.i12.i_crit_edge:             ; preds = %for.end.i184
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i.i12.i

for.end.i184.do_one_ahash_op.exit14.i_crit_edge:  ; preds = %for.end.i184
  call void @__sanitizer_cov_trace_pc() #12
  br label %do_one_ahash_op.exit14.i

sw.bb.i.i12.i:                                    ; preds = %for.end.i184.sw.bb.i.i12.i_crit_edge, %for.end.i184.sw.bb.i.i12.i_crit_edge337
  %194 = ptrtoint ptr %data2.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %data2.i, align 4
  call void @wait_for_completion(ptr noundef %195) #10
  %196 = ptrtoint ptr %195 to i32
  call void @__asan_store4_noabort(i32 %196)
  store i32 0, ptr %195, align 4
  %err2.i.i11.i = getelementptr inbounds %struct.crypto_wait, ptr %195, i32 0, i32 1
  %197 = ptrtoint ptr %err2.i.i11.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %err2.i.i11.i, align 4
  br label %do_one_ahash_op.exit14.i

do_one_ahash_op.exit14.i:                         ; preds = %sw.bb.i.i12.i, %for.end.i184.do_one_ahash_op.exit14.i_crit_edge
  %err.addr.0.i.i13.i = phi i32 [ %call14.i, %for.end.i184.do_one_ahash_op.exit14.i_crit_edge ], [ %198, %sw.bb.i.i12.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.addr.0.i.i13.i)
  %tobool16.not.i = icmp eq i32 %err.addr.0.i.i13.i, 0
  br i1 %tobool16.not.i, label %for.cond.i, label %do_one_ahash_op.exit14.i.do.end83_crit_edge

do_one_ahash_op.exit14.i.do.end83_crit_edge:      ; preds = %do_one_ahash_op.exit14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end83

for.body23.i:                                     ; preds = %for.inc57.i.for.body23.i_crit_edge, %for.cond.i.for.body23.i_crit_edge
  %cycles.073.i = phi i32 [ %add55.i, %for.inc57.i.for.body23.i_crit_edge ], [ 0, %for.cond.i.for.body23.i_crit_edge ]
  %i.172.i = phi i32 [ %inc58.i, %for.inc57.i.for.body23.i_crit_edge ], [ 0, %for.cond.i.for.body23.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %c.i) #10
  %199 = ptrtoint ptr %c.i to i32
  call void @__asan_store4_noabort(i32 %199)
  store i32 -1, ptr %c.i, align 4, !annotation !702
  %call24.i185 = call i32 @read_current_timer(ptr noundef nonnull %c.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i185)
  %tobool25.not.i = icmp eq i32 %call24.i185, 0
  br i1 %tobool25.not.i, label %cond.false.i, label %for.body23.i.cond.end.i_crit_edge

for.body23.i.cond.end.i_crit_edge:                ; preds = %for.body23.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end.i

cond.false.i:                                     ; preds = %for.body23.i
  call void @__sanitizer_cov_trace_pc() #12
  %200 = ptrtoint ptr %c.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %c.i, align 4
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %for.body23.i.cond.end.i_crit_edge
  %cond.i = phi i32 [ %201, %cond.false.i ], [ 0, %for.body23.i.cond.end.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %c.i) #10
  %202 = ptrtoint ptr %tfm1.i.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %tfm1.i.i, align 16
  %204 = ptrtoint ptr %203 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %203, align 128
  %and.i16.i = and i32 %205, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i16.i)
  %tobool.not.i17.i = icmp eq i32 %and.i16.i, 0
  br i1 %tobool.not.i17.i, label %crypto_ahash_init.exit22.i, label %cond.end.i.do.end83_crit_edge

cond.end.i.do.end83_crit_edge:                    ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end83

crypto_ahash_init.exit22.i:                       ; preds = %cond.end.i
  %add.ptr.i.i.i18.i = getelementptr i8, ptr %203, i32 -128
  %206 = ptrtoint ptr %add.ptr.i.i.i18.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %add.ptr.i.i.i18.i, align 128
  %call2.i19.i = call i32 %207(ptr noundef nonnull %call9.i.i) #10
  %208 = zext i32 %call2.i19.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %208, ptr @__sancov_gen_cov_switch_values.354)
  switch i32 %call2.i19.i, label %crypto_ahash_init.exit22.i.do_one_ahash_op.exit27.i_crit_edge [
    i32 -115, label %crypto_ahash_init.exit22.i.sw.bb.i.i25.i_crit_edge
    i32 -16, label %crypto_ahash_init.exit22.i.sw.bb.i.i25.i_crit_edge338
  ]

crypto_ahash_init.exit22.i.sw.bb.i.i25.i_crit_edge338: ; preds = %crypto_ahash_init.exit22.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i.i25.i

crypto_ahash_init.exit22.i.sw.bb.i.i25.i_crit_edge: ; preds = %crypto_ahash_init.exit22.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i.i25.i

crypto_ahash_init.exit22.i.do_one_ahash_op.exit27.i_crit_edge: ; preds = %crypto_ahash_init.exit22.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do_one_ahash_op.exit27.i

sw.bb.i.i25.i:                                    ; preds = %crypto_ahash_init.exit22.i.sw.bb.i.i25.i_crit_edge, %crypto_ahash_init.exit22.i.sw.bb.i.i25.i_crit_edge338
  %209 = ptrtoint ptr %data2.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %data2.i, align 4
  call void @wait_for_completion(ptr noundef %210) #10
  %211 = ptrtoint ptr %210 to i32
  call void @__asan_store4_noabort(i32 %211)
  store i32 0, ptr %210, align 4
  %err2.i.i24.i = getelementptr inbounds %struct.crypto_wait, ptr %210, i32 0, i32 1
  %212 = ptrtoint ptr %err2.i.i24.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %err2.i.i24.i, align 4
  br label %do_one_ahash_op.exit27.i

do_one_ahash_op.exit27.i:                         ; preds = %sw.bb.i.i25.i, %crypto_ahash_init.exit22.i.do_one_ahash_op.exit27.i_crit_edge
  %err.addr.0.i.i26.i = phi i32 [ %call2.i19.i, %crypto_ahash_init.exit22.i.do_one_ahash_op.exit27.i_crit_edge ], [ %213, %sw.bb.i.i25.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.addr.0.i.i26.i)
  %tobool28.not.i = icmp eq i32 %err.addr.0.i.i26.i, 0
  br i1 %tobool28.not.i, label %for.cond31.preheader.i, label %do_one_ahash_op.exit27.i.do.end83_crit_edge

do_one_ahash_op.exit27.i.do.end83_crit_edge:      ; preds = %do_one_ahash_op.exit27.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end83

for.cond31.preheader.i:                           ; preds = %do_one_ahash_op.exit27.i
  br i1 %cmp767.i, label %for.cond31.preheader.i.for.body33.i_crit_edge, label %for.cond31.preheader.i.for.end41.i_crit_edge

for.cond31.preheader.i.for.end41.i_crit_edge:     ; preds = %for.cond31.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end41.i

for.cond31.preheader.i.for.body33.i_crit_edge:    ; preds = %for.cond31.preheader.i
  br label %for.body33.i

for.cond31.i:                                     ; preds = %do_one_ahash_op.exit37.i
  %add40.i = add i32 %pcount.171.i, %79
  %cmp32.i = icmp slt i32 %add40.i, %84
  br i1 %cmp32.i, label %for.cond31.i.for.body33.i_crit_edge, label %for.cond31.i.for.end41.i_crit_edge

for.cond31.i.for.end41.i_crit_edge:               ; preds = %for.cond31.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end41.i

for.cond31.i.for.body33.i_crit_edge:              ; preds = %for.cond31.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body33.i

for.body33.i:                                     ; preds = %for.cond31.i.for.body33.i_crit_edge, %for.cond31.preheader.i.for.body33.i_crit_edge
  %pcount.171.i = phi i32 [ %add40.i, %for.cond31.i.for.body33.i_crit_edge ], [ 0, %for.cond31.preheader.i.for.body33.i_crit_edge ]
  %214 = ptrtoint ptr %tfm1.i.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %tfm1.i.i, align 16
  %__crt_alg.i29.i = getelementptr i8, ptr %215, i32 12
  %216 = ptrtoint ptr %__crt_alg.i29.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %__crt_alg.i29.i, align 4
  %218 = ptrtoint ptr %nbytes2.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %nbytes2.i, align 8
  call void @crypto_stats_get(ptr noundef %217) #10
  %220 = ptrtoint ptr %tfm1.i.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %tfm1.i.i, align 16
  %update.i31.i = getelementptr i8, ptr %221, i32 -124
  %222 = ptrtoint ptr %update.i31.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %update.i31.i, align 4
  %call3.i32.i = call i32 %223(ptr noundef nonnull %call9.i.i) #10
  call void @crypto_stats_ahash_update(i32 noundef %219, i32 noundef %call3.i32.i, ptr noundef %217) #10
  %224 = zext i32 %call3.i32.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %224, ptr @__sancov_gen_cov_switch_values.355)
  switch i32 %call3.i32.i, label %for.body33.i.do_one_ahash_op.exit37.i_crit_edge [
    i32 -115, label %for.body33.i.sw.bb.i.i35.i_crit_edge
    i32 -16, label %for.body33.i.sw.bb.i.i35.i_crit_edge339
  ]

for.body33.i.sw.bb.i.i35.i_crit_edge339:          ; preds = %for.body33.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i.i35.i

for.body33.i.sw.bb.i.i35.i_crit_edge:             ; preds = %for.body33.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i.i35.i

for.body33.i.do_one_ahash_op.exit37.i_crit_edge:  ; preds = %for.body33.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do_one_ahash_op.exit37.i

sw.bb.i.i35.i:                                    ; preds = %for.body33.i.sw.bb.i.i35.i_crit_edge, %for.body33.i.sw.bb.i.i35.i_crit_edge339
  %225 = ptrtoint ptr %data2.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %data2.i, align 4
  call void @wait_for_completion(ptr noundef %226) #10
  %227 = ptrtoint ptr %226 to i32
  call void @__asan_store4_noabort(i32 %227)
  store i32 0, ptr %226, align 4
  %err2.i.i34.i = getelementptr inbounds %struct.crypto_wait, ptr %226, i32 0, i32 1
  %228 = ptrtoint ptr %err2.i.i34.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %err2.i.i34.i, align 4
  br label %do_one_ahash_op.exit37.i

do_one_ahash_op.exit37.i:                         ; preds = %sw.bb.i.i35.i, %for.body33.i.do_one_ahash_op.exit37.i_crit_edge
  %err.addr.0.i.i36.i = phi i32 [ %call3.i32.i, %for.body33.i.do_one_ahash_op.exit37.i_crit_edge ], [ %229, %sw.bb.i.i35.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.addr.0.i.i36.i)
  %tobool36.not.i = icmp eq i32 %err.addr.0.i.i36.i, 0
  br i1 %tobool36.not.i, label %for.cond31.i, label %do_one_ahash_op.exit37.i.do.end83_crit_edge

do_one_ahash_op.exit37.i.do.end83_crit_edge:      ; preds = %do_one_ahash_op.exit37.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end83

for.end41.i:                                      ; preds = %for.cond31.i.for.end41.i_crit_edge, %for.cond31.preheader.i.for.end41.i_crit_edge
  %call42.i = call i32 @crypto_ahash_final(ptr noundef nonnull %call9.i.i) #10
  %230 = zext i32 %call42.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %230, ptr @__sancov_gen_cov_switch_values.356)
  switch i32 %call42.i, label %for.end41.i.do_one_ahash_op.exit42.i_crit_edge [
    i32 -115, label %for.end41.i.sw.bb.i.i40.i_crit_edge
    i32 -16, label %for.end41.i.sw.bb.i.i40.i_crit_edge340
  ]

for.end41.i.sw.bb.i.i40.i_crit_edge340:           ; preds = %for.end41.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i.i40.i

for.end41.i.sw.bb.i.i40.i_crit_edge:              ; preds = %for.end41.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i.i40.i

for.end41.i.do_one_ahash_op.exit42.i_crit_edge:   ; preds = %for.end41.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do_one_ahash_op.exit42.i

sw.bb.i.i40.i:                                    ; preds = %for.end41.i.sw.bb.i.i40.i_crit_edge, %for.end41.i.sw.bb.i.i40.i_crit_edge340
  %231 = ptrtoint ptr %data2.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %data2.i, align 4
  call void @wait_for_completion(ptr noundef %232) #10
  %233 = ptrtoint ptr %232 to i32
  call void @__asan_store4_noabort(i32 %233)
  store i32 0, ptr %232, align 4
  %err2.i.i39.i = getelementptr inbounds %struct.crypto_wait, ptr %232, i32 0, i32 1
  %234 = ptrtoint ptr %err2.i.i39.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %err2.i.i39.i, align 4
  br label %do_one_ahash_op.exit42.i

do_one_ahash_op.exit42.i:                         ; preds = %sw.bb.i.i40.i, %for.end41.i.do_one_ahash_op.exit42.i_crit_edge
  %err.addr.0.i.i41.i = phi i32 [ %call42.i, %for.end41.i.do_one_ahash_op.exit42.i_crit_edge ], [ %235, %sw.bb.i.i40.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.addr.0.i.i41.i)
  %tobool44.not.i = icmp eq i32 %err.addr.0.i.i41.i, 0
  br i1 %tobool44.not.i, label %if.end46.i, label %do_one_ahash_op.exit42.i.do.end83_crit_edge

do_one_ahash_op.exit42.i.do.end83_crit_edge:      ; preds = %do_one_ahash_op.exit42.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end83

if.end46.i:                                       ; preds = %do_one_ahash_op.exit42.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %c47.i) #10
  %236 = ptrtoint ptr %c47.i to i32
  call void @__asan_store4_noabort(i32 %236)
  store i32 -1, ptr %c47.i, align 4, !annotation !702
  %call49.i = call i32 @read_current_timer(ptr noundef nonnull %c47.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49.i)
  %tobool50.not.i = icmp eq i32 %call49.i, 0
  br i1 %tobool50.not.i, label %cond.false52.i, label %if.end46.i.for.inc57.i_crit_edge

if.end46.i.for.inc57.i_crit_edge:                 ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc57.i

cond.false52.i:                                   ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #12
  %237 = ptrtoint ptr %c47.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %c47.i, align 4
  br label %for.inc57.i

for.inc57.i:                                      ; preds = %cond.false52.i, %if.end46.i.for.inc57.i_crit_edge
  %cond54.i = phi i32 [ %238, %cond.false52.i ], [ 0, %if.end46.i.for.inc57.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %c47.i) #10
  %sub.i186 = sub i32 %cycles.073.i, %cond.i
  %add55.i = add i32 %cond54.i, %sub.i186
  %inc58.i = add nuw nsw i32 %i.172.i, 1
  %exitcond82.not.i = icmp eq i32 %inc58.i, 8
  br i1 %exitcond82.not.i, label %for.inc57.i.if.end78.thread195_crit_edge, label %for.inc57.i.for.body23.i_crit_edge

for.inc57.i.for.body23.i_crit_edge:               ; preds = %for.inc57.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body23.i

for.inc57.i.if.end78.thread195_crit_edge:         ; preds = %for.inc57.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end78.thread195

if.end78.thread195:                               ; preds = %for.inc57.i.if.end78.thread195_crit_edge, %for.inc21.i.i.if.end78.thread195_crit_edge
  %add.i.lcssa.sink91.i = phi i32 [ %add.i.i163, %for.inc21.i.i.if.end78.thread195_crit_edge ], [ %add55.i, %for.inc57.i.if.end78.thread195_crit_edge ]
  %div1.i.i = lshr i32 %add.i.lcssa.sink91.i, 3
  %mul.i.i = shl i32 %84, 3
  %div29.i.i = udiv i32 %add.i.lcssa.sink91.i, %mul.i.i
  %call30.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.250, i32 noundef %div1.i.i, i32 noundef %div29.i.i) #13
  br label %for.inc

if.end78.sink.split:                              ; preds = %for.inc20.i.if.end78.sink.split_crit_edge, %if.end.i.if.end78.sink.split_crit_edge, %for.inc.i.i.if.end78.sink.split_crit_edge, %if.then.i142.if.end78.sink.split_crit_edge
  %bcount.0.lcssa.i.sink267 = phi i32 [ 0, %if.then.i142.if.end78.sink.split_crit_edge ], [ 0, %if.end.i.if.end78.sink.split_crit_edge ], [ %inc.i.i, %for.inc.i.i.if.end78.sink.split_crit_edge ], [ %inc.i, %for.inc20.i.if.end78.sink.split_crit_edge ]
  %.str.246.sink = phi ptr [ @.str.248, %if.then.i142.if.end78.sink.split_crit_edge ], [ @.str.246, %if.end.i.if.end78.sink.split_crit_edge ], [ @.str.248, %for.inc.i.i.if.end78.sink.split_crit_edge ], [ @.str.246, %for.inc20.i.if.end78.sink.split_crit_edge ]
  %div.i = sdiv i32 %bcount.0.lcssa.i.sink267, %secs
  %mul22.i = mul i32 %bcount.0.lcssa.i.sink267, %84
  %div23.i = sdiv i32 %mul22.i, %secs
  %call24.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.246.sink, i32 noundef %div.i, i32 noundef %div23.i) #13
  br label %if.end78

if.end78:                                         ; preds = %if.end78.sink.split, %do_one_ahash_op.exit13.i.if.end78_crit_edge, %do_one_ahash_op.exit8.i.if.end78_crit_edge, %do_one_ahash_op.exit.i.if.end78_crit_edge, %for.body.i.if.end78_crit_edge, %do_one_ahash_op.exit.i.i.if.end78_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end78.sink.split ], [ %err.addr.0.i.i7.i, %do_one_ahash_op.exit8.i.if.end78_crit_edge ], [ %err.addr.0.i.i.i.i, %do_one_ahash_op.exit.i.i.if.end78_crit_edge ], [ %err.addr.0.i.i.i, %do_one_ahash_op.exit.i.if.end78_crit_edge ], [ %err.addr.0.i.i12.i, %do_one_ahash_op.exit13.i.if.end78_crit_edge ], [ -126, %for.body.i.if.end78_crit_edge ]
  call void @__might_resched(ptr noundef nonnull @.str.2, i32 noundef 1128, i32 noundef 0) #10
  %call.i = call i32 @__cond_resched() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool79.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool79.not, label %if.end78.for.inc_crit_edge, label %if.end78.do.end83_crit_edge

if.end78.do.end83_crit_edge:                      ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end83

if.end78.for.inc_crit_edge:                       ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

do.end83:                                         ; preds = %if.end78.do.end83_crit_edge, %do_one_ahash_op.exit42.i.do.end83_crit_edge, %do_one_ahash_op.exit37.i.do.end83_crit_edge, %do_one_ahash_op.exit27.i.do.end83_crit_edge, %cond.end.i.do.end83_crit_edge, %do_one_ahash_op.exit14.i.do.end83_crit_edge, %do_one_ahash_op.exit9.i.do.end83_crit_edge, %do_one_ahash_op.exit.i174.do.end83_crit_edge, %for.body.i166.do.end83_crit_edge, %do_one_ahash_op.exit6.i.i.do.end83_crit_edge, %do_one_ahash_op.exit.i.i160.do.end83_crit_edge, %do_one_ahash_op.exit.3.i.i.do.end83_crit_edge, %do_one_ahash_op.exit.2.i.i.do.end83_crit_edge, %do_one_ahash_op.exit.1.i.i.do.end83_crit_edge
  %ret.0194 = phi i32 [ %err.addr.0.i.i36.i, %do_one_ahash_op.exit37.i.do.end83_crit_edge ], [ %err.addr.0.i.i8.i, %do_one_ahash_op.exit9.i.do.end83_crit_edge ], [ %err.addr.0.i.i5.i.i, %do_one_ahash_op.exit6.i.i.do.end83_crit_edge ], [ -126, %cond.end.i.do.end83_crit_edge ], [ %err.addr.0.i.i26.i, %do_one_ahash_op.exit27.i.do.end83_crit_edge ], [ %err.addr.0.i.i41.i, %do_one_ahash_op.exit42.i.do.end83_crit_edge ], [ -126, %for.body.i166.do.end83_crit_edge ], [ %err.addr.0.i.i.i172, %do_one_ahash_op.exit.i174.do.end83_crit_edge ], [ %err.addr.0.i.i13.i, %do_one_ahash_op.exit14.i.do.end83_crit_edge ], [ %err.addr.0.i.i.i.i158, %do_one_ahash_op.exit.i.i160.do.end83_crit_edge ], [ %err.addr.0.i.i.1.i.i, %do_one_ahash_op.exit.1.i.i.do.end83_crit_edge ], [ %err.addr.0.i.i.2.i.i, %do_one_ahash_op.exit.2.i.i.do.end83_crit_edge ], [ %err.addr.0.i.i.3.i.i, %do_one_ahash_op.exit.3.i.i.do.end83_crit_edge ], [ %retval.0.i, %if.end78.do.end83_crit_edge ]
  %call85 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.244, i32 noundef %ret.0194) #13
  br label %for.end

for.inc:                                          ; preds = %if.end78.for.inc_crit_edge, %if.end78.thread195
  %inc = add i32 %i.0221, 1
  %arrayidx = getelementptr %struct.hash_speed, ptr %speed, i32 %inc
  %239 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %arrayidx, align 4
  %cmp32.not = icmp eq i32 %240, 0
  br i1 %cmp32.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end83, %do.end39, %for.cond.preheader.for.end_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i) #10
  br label %out_nomem

out_nomem:                                        ; preds = %for.end, %if.end27.out_nomem_crit_edge
  call void @kfree_sensitive(ptr noundef nonnull %call9.i.i) #10
  br label %out

out:                                              ; preds = %out_nomem, %do.end24, %do.end15
  call void @crypto_destroy_tfm(ptr noundef %call, ptr noundef %base.i) #10
  br label %cleanup

cleanup:                                          ; preds = %out, %do.end
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %wait) #10
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %sg) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_alloc_ahash(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_ahash_setkey(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_ahash_final(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_ahash_digest(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_stats_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_stats_ahash_update(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @do_mult_acipher_op(ptr noundef %data, i32 noundef %enc, i32 noundef %num_mb, ptr nocapture noundef %rc) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_mb)
  %cmp46.not = icmp eq i32 %num_mb, 0
  br i1 %cmp46.not, label %entry.for.end22_crit_edge, label %for.body.lr.ph

entry.for.end22_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end22

for.body.lr.ph:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %enc)
  %cmp1 = icmp eq i32 %enc, 1
  br label %for.body

for.cond7.preheader:                              ; preds = %for.inc
  br i1 %cmp46.not, label %for.cond7.preheader.for.end22_crit_edge, label %for.cond7.preheader.for.body9_crit_edge

for.cond7.preheader.for.body9_crit_edge:          ; preds = %for.cond7.preheader
  br label %for.body9

for.cond7.preheader.for.end22_crit_edge:          ; preds = %for.cond7.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end22

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.047 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %req = getelementptr %struct.test_mb_skcipher_data, ptr %data, i32 %i.047, i32 1
  %0 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %req, align 4
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 @crypto_skcipher_encrypt(ptr noundef %1) #10
  br label %for.inc

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %call5 = tail call i32 @crypto_skcipher_decrypt(ptr noundef %1) #10
  br label %for.inc

for.inc:                                          ; preds = %if.else, %if.then
  %call5.sink = phi i32 [ %call, %if.then ], [ %call5, %if.else ]
  %2 = getelementptr i32, ptr %rc, i32 %i.047
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %call5.sink, ptr %2, align 4
  %inc = add nuw i32 %i.047, 1
  %exitcond.not = icmp eq i32 %inc, %num_mb
  br i1 %exitcond.not, label %for.cond7.preheader, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body9:                                        ; preds = %for.inc20.for.body9_crit_edge, %for.cond7.preheader.for.body9_crit_edge
  %i.151 = phi i32 [ %inc21, %for.inc20.for.body9_crit_edge ], [ 0, %for.cond7.preheader.for.body9_crit_edge ]
  %err.050 = phi i32 [ %err.1, %for.inc20.for.body9_crit_edge ], [ 0, %for.cond7.preheader.for.body9_crit_edge ]
  %arrayidx10 = getelementptr i32, ptr %rc, i32 %i.151
  %4 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx10, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.357)
  switch i32 %5, label %for.body9.crypto_wait_req.exit_crit_edge [
    i32 -115, label %for.body9.sw.bb.i_crit_edge
    i32 -16, label %for.body9.sw.bb.i_crit_edge55
  ]

for.body9.sw.bb.i_crit_edge55:                    ; preds = %for.body9
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i

for.body9.sw.bb.i_crit_edge:                      ; preds = %for.body9
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i

for.body9.crypto_wait_req.exit_crit_edge:         ; preds = %for.body9
  call void @__sanitizer_cov_trace_pc() #12
  br label %crypto_wait_req.exit

sw.bb.i:                                          ; preds = %for.body9.sw.bb.i_crit_edge, %for.body9.sw.bb.i_crit_edge55
  %wait = getelementptr %struct.test_mb_skcipher_data, ptr %data, i32 %i.151, i32 2
  tail call void @wait_for_completion(ptr noundef %wait) #10
  %7 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %wait, align 4
  %err2.i = getelementptr %struct.test_mb_skcipher_data, ptr %data, i32 %i.151, i32 2, i32 1
  %8 = ptrtoint ptr %err2.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %err2.i, align 4
  br label %crypto_wait_req.exit

crypto_wait_req.exit:                             ; preds = %sw.bb.i, %for.body9.crypto_wait_req.exit_crit_edge
  %err.addr.0.i = phi i32 [ %5, %for.body9.crypto_wait_req.exit_crit_edge ], [ %9, %sw.bb.i ]
  %10 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %err.addr.0.i, ptr %arrayidx10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.addr.0.i)
  %tobool.not = icmp eq i32 %err.addr.0.i, 0
  br i1 %tobool.not, label %crypto_wait_req.exit.for.inc20_crit_edge, label %do.end

crypto_wait_req.exit.for.inc20_crit_edge:         ; preds = %crypto_wait_req.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc20

do.end:                                           ; preds = %crypto_wait_req.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.225, i32 noundef %i.151, i32 noundef %err.addr.0.i) #13
  %11 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx10, align 4
  br label %for.inc20

for.inc20:                                        ; preds = %do.end, %crypto_wait_req.exit.for.inc20_crit_edge
  %err.1 = phi i32 [ %12, %do.end ], [ %err.050, %crypto_wait_req.exit.for.inc20_crit_edge ]
  %inc21 = add nuw i32 %i.151, 1
  %exitcond54.not = icmp eq i32 %inc21, %num_mb
  br i1 %exitcond54.not, label %for.inc20.for.end22_crit_edge, label %for.inc20.for.body9_crit_edge

for.inc20.for.body9_crit_edge:                    ; preds = %for.inc20
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body9

for.inc20.for.end22_crit_edge:                    ; preds = %for.inc20
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end22

for.end22:                                        ; preds = %for.inc20.for.end22_crit_edge, %for.cond7.preheader.for.end22_crit_edge, %entry.for.end22_crit_edge
  %err.0.lcssa = phi i32 [ 0, %for.cond7.preheader.for.end22_crit_edge ], [ 0, %entry.for.end22_crit_edge ], [ %err.1, %for.inc20.for.end22_crit_edge ]
  ret i32 %err.0.lcssa
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 324)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 324)
  ret void
}

attributes #0 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !13, !15, !16, !18, !19, !21, !23, !24, !26, !28, !29, !31, !33, !34, !36, !38, !40, !42, !44, !46, !48, !50, !51, !52, !53, !54, !56, !57, !58, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195, !197, !199, !201, !203, !205, !207, !209, !211, !213, !215, !217, !219, !221, !223, !225, !227, !229, !231, !233, !235, !237, !239, !241, !243, !245, !247, !249, !251, !253, !255, !257, !259, !261, !263, !265, !267, !269, !271, !273, !275, !277, !279, !281, !283, !285, !287, !289, !291, !293, !295, !297, !299, !301, !303, !305, !307, !309, !311, !313, !315, !317, !319, !321, !323, !325, !327, !329, !330, !331, !332, !334, !336, !338, !339, !340, !341, !343, !344, !345, !346, !347, !349, !350, !351, !353, !354, !355, !357, !358, !359, !361, !362, !363, !365, !366, !367, !369, !370, !372, !374, !375, !376, !377, !379, !380, !381, !382, !384, !386, !388, !390, !392, !394, !396, !398, !400, !402, !404, !406, !408, !409, !410, !411, !413, !414, !415, !417, !418, !419, !421, !422, !423, !425, !426, !427, !429, !430, !432, !433, !434, !436, !437, !438, !440, !441, !442, !444, !445, !446, !448, !450, !451, !452, !454, !455, !456, !457, !459, !461, !463, !465, !467, !468, !469, !471, !472, !474, !475, !477, !478, !480, !481, !482, !484, !485, !486, !488, !489, !491, !492, !494, !495, !497, !498, !500, !501, !502, !504, !505, !506, !507, !509, !510, !511, !513, !515, !516, !517, !519, !520, !521, !523, !524, !525, !527, !528, !529, !531, !532, !534, !535, !536, !538, !539, !540, !542, !543, !544, !545, !547, !548, !549, !550, !552, !553, !554, !555, !557, !558, !559, !561, !563, !565, !566, !567, !569, !570, !571, !573, !574, !575, !577, !578, !580, !581, !583, !584, !585, !587, !588, !589, !591, !592, !593, !595, !596, !597, !599, !601, !602, !603, !605, !606, !607, !609, !610, !612, !613, !615, !616, !618, !619, !621, !622, !624, !625, !626, !628, !629, !630, !632, !633, !634, !636, !637, !638, !639, !641, !642, !644, !646, !648, !650, !652, !654, !656, !658, !660, !662, !664, !666, !668, !670, !672, !674, !676, !678, !680, !681, !683, !684, !685, !686, !687, !688, !690}
!llvm.module.flags = !{!691, !692, !693, !694, !695, !696, !697, !698}
!llvm.ident = !{!699}

!0 = !{ptr @__initcall__kmod_tcrypt__232_3100_tcrypt_mod_init7, !1, !"__initcall__kmod_tcrypt__232_3100_tcrypt_mod_init7", i1 false, i1 false}
!1 = !{!"../crypto/tcrypt.c", i32 3100, i32 1}
!2 = !{ptr @__exitcall_tcrypt_mod_fini, !3, !"__exitcall_tcrypt_mod_fini", i1 false, i1 false}
!3 = !{!"../crypto/tcrypt.c", i32 3101, i32 1}
!4 = !{ptr @__param_alg, !5, !"__param_alg", i1 false, i1 false}
!5 = !{!"../crypto/tcrypt.c", i32 3103, i32 1}
!6 = !{ptr @__UNIQUE_ID_algtype233, !5, !"__UNIQUE_ID_algtype233", i1 false, i1 false}
!7 = !{ptr @__param_type, !8, !"__param_type", i1 false, i1 false}
!8 = !{!"../crypto/tcrypt.c", i32 3104, i32 1}
!9 = !{ptr @__UNIQUE_ID_typetype234, !8, !"__UNIQUE_ID_typetype234", i1 false, i1 false}
!10 = !{ptr @__param_mask, !11, !"__param_mask", i1 false, i1 false}
!11 = !{!"../crypto/tcrypt.c", i32 3105, i32 1}
!12 = !{ptr @__UNIQUE_ID_masktype235, !11, !"__UNIQUE_ID_masktype235", i1 false, i1 false}
!13 = !{ptr @__param_mode, !14, !"__param_mode", i1 false, i1 false}
!14 = !{!"../crypto/tcrypt.c", i32 3106, i32 1}
!15 = !{ptr @__UNIQUE_ID_modetype236, !14, !"__UNIQUE_ID_modetype236", i1 false, i1 false}
!16 = !{ptr @__param_sec, !17, !"__param_sec", i1 false, i1 false}
!17 = !{!"../crypto/tcrypt.c", i32 3107, i32 1}
!18 = !{ptr @__UNIQUE_ID_sectype237, !17, !"__UNIQUE_ID_sectype237", i1 false, i1 false}
!19 = !{ptr @__UNIQUE_ID_sec238, !20, !"__UNIQUE_ID_sec238", i1 false, i1 false}
!20 = !{!"../crypto/tcrypt.c", i32 3108, i32 1}
!21 = !{ptr @__param_num_mb, !22, !"__param_num_mb", i1 false, i1 false}
!22 = !{!"../crypto/tcrypt.c", i32 3110, i32 1}
!23 = !{ptr @__UNIQUE_ID_num_mbtype239, !22, !"__UNIQUE_ID_num_mbtype239", i1 false, i1 false}
!24 = !{ptr @__UNIQUE_ID_num_mb240, !25, !"__UNIQUE_ID_num_mb240", i1 false, i1 false}
!25 = !{!"../crypto/tcrypt.c", i32 3111, i32 1}
!26 = !{ptr @__param_klen, !27, !"__param_klen", i1 false, i1 false}
!27 = !{!"../crypto/tcrypt.c", i32 3112, i32 1}
!28 = !{ptr @__UNIQUE_ID_klentype241, !27, !"__UNIQUE_ID_klentype241", i1 false, i1 false}
!29 = !{ptr @__UNIQUE_ID_klen242, !30, !"__UNIQUE_ID_klen242", i1 false, i1 false}
!30 = !{!"../crypto/tcrypt.c", i32 3113, i32 1}
!31 = !{ptr @__UNIQUE_ID_file243, !32, !"__UNIQUE_ID_file243", i1 false, i1 false}
!32 = !{!"../crypto/tcrypt.c", i32 3115, i32 1}
!33 = !{ptr @__UNIQUE_ID_license244, !32, !"__UNIQUE_ID_license244", i1 false, i1 false}
!34 = !{ptr @__UNIQUE_ID_description245, !35, !"__UNIQUE_ID_description245", i1 false, i1 false}
!35 = !{!"../crypto/tcrypt.c", i32 3116, i32 1}
!36 = !{ptr @__UNIQUE_ID_author246, !37, !"__UNIQUE_ID_author246", i1 false, i1 false}
!37 = !{!"../crypto/tcrypt.c", i32 3117, i32 1}
!38 = !{ptr @sec, !39, !"sec", i1 false, i1 false}
!39 = !{!"../crypto/tcrypt.c", i32 59, i32 21}
!40 = !{ptr @type, !41, !"type", i1 false, i1 false}
!41 = !{!"../crypto/tcrypt.c", i32 62, i32 12}
!42 = !{ptr @mask, !43, !"mask", i1 false, i1 false}
!43 = !{!"../crypto/tcrypt.c", i32 63, i32 12}
!44 = !{ptr @mode, !45, !"mode", i1 false, i1 false}
!45 = !{!"../crypto/tcrypt.c", i32 64, i32 12}
!46 = !{ptr @klen, !47, !"klen", i1 false, i1 false}
!47 = !{!"../crypto/tcrypt.c", i32 66, i32 21}
!48 = !{ptr @.str, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../crypto/tcrypt.c", i32 3071, i32 3}
!50 = !{ptr @.str.1, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.2, !49, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @tcrypt_mod_init._entry, !49, !"_entry", i1 false, i1 false}
!53 = !{ptr @tcrypt_mod_init._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.3, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../crypto/tcrypt.c", i32 3074, i32 3}
!56 = !{ptr @.str.4, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @tcrypt_mod_init.__UNIQUE_ID_ddebug231, !55, !"__UNIQUE_ID_ddebug231", i1 false, i1 false}
!58 = !{ptr @.str.5, !55, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @tvmem, !60, !"tvmem", i1 false, i1 false}
!60 = !{!"../crypto/tcrypt.c", i32 67, i32 14}
!61 = !{ptr @.str.6, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../crypto/tcrypt.c", i32 1695, i32 22}
!63 = !{ptr @.str.7, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../crypto/tcrypt.c", i32 1699, i32 22}
!65 = !{ptr @.str.8, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../crypto/tcrypt.c", i32 1703, i32 22}
!67 = !{ptr @.str.9, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../crypto/tcrypt.c", i32 1704, i32 22}
!69 = !{ptr @.str.10, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../crypto/tcrypt.c", i32 1705, i32 22}
!71 = !{ptr @.str.11, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../crypto/tcrypt.c", i32 1709, i32 22}
!73 = !{ptr @.str.12, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../crypto/tcrypt.c", i32 1710, i32 22}
!75 = !{ptr @.str.13, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../crypto/tcrypt.c", i32 1711, i32 22}
!77 = !{ptr @.str.14, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../crypto/tcrypt.c", i32 1715, i32 22}
!79 = !{ptr @.str.15, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../crypto/tcrypt.c", i32 1719, i32 22}
!81 = !{ptr @.str.16, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../crypto/tcrypt.c", i32 1723, i32 22}
!83 = !{ptr @.str.17, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../crypto/tcrypt.c", i32 1724, i32 22}
!85 = !{ptr @.str.18, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../crypto/tcrypt.c", i32 1725, i32 22}
!87 = !{ptr @.str.19, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../crypto/tcrypt.c", i32 1729, i32 22}
!89 = !{ptr @.str.20, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../crypto/tcrypt.c", i32 1730, i32 22}
!91 = !{ptr @.str.21, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../crypto/tcrypt.c", i32 1731, i32 22}
!93 = !{ptr @.str.22, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../crypto/tcrypt.c", i32 1732, i32 22}
!95 = !{ptr @.str.23, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../crypto/tcrypt.c", i32 1733, i32 22}
!97 = !{ptr @.str.24, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../crypto/tcrypt.c", i32 1737, i32 22}
!99 = !{ptr @.str.25, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../crypto/tcrypt.c", i32 1738, i32 22}
!101 = !{ptr @.str.26, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../crypto/tcrypt.c", i32 1739, i32 22}
!103 = !{ptr @.str.27, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../crypto/tcrypt.c", i32 1740, i32 22}
!105 = !{ptr @.str.28, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../crypto/tcrypt.c", i32 1741, i32 22}
!107 = !{ptr @.str.29, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../crypto/tcrypt.c", i32 1745, i32 22}
!109 = !{ptr @.str.30, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../crypto/tcrypt.c", i32 1746, i32 22}
!111 = !{ptr @.str.31, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../crypto/tcrypt.c", i32 1747, i32 22}
!113 = !{ptr @.str.32, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../crypto/tcrypt.c", i32 1748, i32 22}
!115 = !{ptr @.str.33, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../crypto/tcrypt.c", i32 1749, i32 22}
!117 = !{ptr @.str.34, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../crypto/tcrypt.c", i32 1750, i32 22}
!119 = !{ptr @.str.35, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../crypto/tcrypt.c", i32 1751, i32 22}
!121 = !{ptr @.str.36, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../crypto/tcrypt.c", i32 1752, i32 22}
!123 = !{ptr @.str.37, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../crypto/tcrypt.c", i32 1756, i32 22}
!125 = !{ptr @.str.38, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../crypto/tcrypt.c", i32 1760, i32 22}
!127 = !{ptr @.str.39, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../crypto/tcrypt.c", i32 1764, i32 22}
!129 = !{ptr @.str.40, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../crypto/tcrypt.c", i32 1768, i32 22}
!131 = !{ptr @.str.41, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../crypto/tcrypt.c", i32 1769, i32 22}
!133 = !{ptr @.str.42, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../crypto/tcrypt.c", i32 1770, i32 22}
!135 = !{ptr @.str.43, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../crypto/tcrypt.c", i32 1774, i32 22}
!137 = !{ptr @.str.44, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../crypto/tcrypt.c", i32 1775, i32 22}
!139 = !{ptr @.str.45, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../crypto/tcrypt.c", i32 1776, i32 22}
!141 = !{ptr @.str.46, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../crypto/tcrypt.c", i32 1777, i32 22}
!143 = !{ptr @.str.47, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../crypto/tcrypt.c", i32 1778, i32 22}
!145 = !{ptr @.str.48, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../crypto/tcrypt.c", i32 1782, i32 22}
!147 = !{ptr @.str.49, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../crypto/tcrypt.c", i32 1786, i32 22}
!149 = !{ptr @.str.50, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../crypto/tcrypt.c", i32 1790, i32 22}
!151 = !{ptr @.str.51, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../crypto/tcrypt.c", i32 1794, i32 22}
!153 = !{ptr @.str.52, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../crypto/tcrypt.c", i32 1798, i32 22}
!155 = !{ptr @.str.53, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../crypto/tcrypt.c", i32 1802, i32 22}
!157 = !{ptr @.str.54, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../crypto/tcrypt.c", i32 1806, i32 22}
!159 = !{ptr @.str.55, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../crypto/tcrypt.c", i32 1810, i32 22}
!161 = !{ptr @.str.56, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../crypto/tcrypt.c", i32 1814, i32 22}
!163 = !{ptr @.str.57, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../crypto/tcrypt.c", i32 1818, i32 22}
!165 = !{ptr @.str.58, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../crypto/tcrypt.c", i32 1819, i32 22}
!167 = !{ptr @.str.59, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../crypto/tcrypt.c", i32 1823, i32 22}
!169 = !{ptr @.str.60, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../crypto/tcrypt.c", i32 1827, i32 22}
!171 = !{ptr @.str.61, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../crypto/tcrypt.c", i32 1831, i32 22}
!173 = !{ptr @.str.62, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../crypto/tcrypt.c", i32 1832, i32 22}
!175 = !{ptr @.str.63, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../crypto/tcrypt.c", i32 1833, i32 22}
!177 = !{ptr @.str.64, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../crypto/tcrypt.c", i32 1834, i32 22}
!179 = !{ptr @.str.65, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../crypto/tcrypt.c", i32 1835, i32 22}
!181 = !{ptr @.str.66, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../crypto/tcrypt.c", i32 1839, i32 22}
!183 = !{ptr @.str.67, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../crypto/tcrypt.c", i32 1843, i32 22}
!185 = !{ptr @.str.68, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../crypto/tcrypt.c", i32 1847, i32 22}
!187 = !{ptr @.str.69, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../crypto/tcrypt.c", i32 1851, i32 22}
!189 = !{ptr @.str.70, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../crypto/tcrypt.c", i32 1855, i32 22}
!191 = !{ptr @.str.71, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../crypto/tcrypt.c", i32 1859, i32 22}
!193 = !{ptr @.str.72, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../crypto/tcrypt.c", i32 1863, i32 22}
!195 = !{ptr @.str.73, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../crypto/tcrypt.c", i32 1867, i32 22}
!197 = !{ptr @.str.74, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../crypto/tcrypt.c", i32 1871, i32 22}
!199 = !{ptr @.str.75, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../crypto/tcrypt.c", i32 1875, i32 22}
!201 = !{ptr @.str.76, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../crypto/tcrypt.c", i32 1879, i32 22}
!203 = !{ptr @.str.77, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../crypto/tcrypt.c", i32 1883, i32 22}
!205 = !{ptr @.str.78, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../crypto/tcrypt.c", i32 1887, i32 22}
!207 = !{ptr @.str.79, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../crypto/tcrypt.c", i32 1891, i32 22}
!209 = !{ptr @.str.80, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../crypto/tcrypt.c", i32 1895, i32 22}
!211 = !{ptr @.str.81, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../crypto/tcrypt.c", i32 1899, i32 22}
!213 = !{ptr @.str.82, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../crypto/tcrypt.c", i32 1903, i32 22}
!215 = !{ptr @.str.83, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../crypto/tcrypt.c", i32 1907, i32 22}
!217 = !{ptr @.str.84, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../crypto/tcrypt.c", i32 1911, i32 22}
!219 = !{ptr @.str.85, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../crypto/tcrypt.c", i32 1915, i32 22}
!221 = !{ptr @.str.86, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../crypto/tcrypt.c", i32 1919, i32 22}
!223 = !{ptr @.str.87, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../crypto/tcrypt.c", i32 1923, i32 22}
!225 = !{ptr @.str.88, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../crypto/tcrypt.c", i32 1927, i32 22}
!227 = !{ptr @.str.89, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../crypto/tcrypt.c", i32 1931, i32 22}
!229 = !{ptr @.str.90, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../crypto/tcrypt.c", i32 1935, i32 22}
!231 = !{ptr @.str.91, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../crypto/tcrypt.c", i32 1939, i32 22}
!233 = !{ptr @.str.92, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../crypto/tcrypt.c", i32 1943, i32 22}
!235 = !{ptr @.str.93, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../crypto/tcrypt.c", i32 1947, i32 22}
!237 = !{ptr @.str.94, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../crypto/tcrypt.c", i32 1951, i32 22}
!239 = !{ptr @.str.95, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../crypto/tcrypt.c", i32 1955, i32 22}
!241 = !{ptr @.str.96, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../crypto/tcrypt.c", i32 1959, i32 22}
!243 = !{ptr @.str.97, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../crypto/tcrypt.c", i32 1963, i32 22}
!245 = !{ptr @.str.98, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../crypto/tcrypt.c", i32 1967, i32 22}
!247 = !{ptr @.str.99, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../crypto/tcrypt.c", i32 1971, i32 22}
!249 = !{ptr @.str.100, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../crypto/tcrypt.c", i32 1975, i32 22}
!251 = !{ptr @.str.101, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../crypto/tcrypt.c", i32 1979, i32 22}
!253 = !{ptr @.str.102, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../crypto/tcrypt.c", i32 1983, i32 22}
!255 = !{ptr @.str.103, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../crypto/tcrypt.c", i32 1987, i32 22}
!257 = !{ptr @.str.104, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../crypto/tcrypt.c", i32 1991, i32 22}
!259 = !{ptr @.str.105, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../crypto/tcrypt.c", i32 1995, i32 22}
!261 = !{ptr @.str.106, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../crypto/tcrypt.c", i32 1999, i32 22}
!263 = !{ptr @.str.107, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../crypto/tcrypt.c", i32 2003, i32 22}
!265 = !{ptr @.str.108, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../crypto/tcrypt.c", i32 2007, i32 22}
!267 = !{ptr @.str.109, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../crypto/tcrypt.c", i32 2011, i32 22}
!269 = !{ptr @.str.110, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../crypto/tcrypt.c", i32 2015, i32 22}
!271 = !{ptr @.str.111, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../crypto/tcrypt.c", i32 2019, i32 22}
!273 = !{ptr @.str.112, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../crypto/tcrypt.c", i32 2023, i32 22}
!275 = !{ptr @.str.113, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../crypto/tcrypt.c", i32 2027, i32 22}
!277 = !{ptr @.str.114, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../crypto/tcrypt.c", i32 2030, i32 22}
!279 = !{ptr @.str.115, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../crypto/tcrypt.c", i32 2033, i32 22}
!281 = !{ptr @.str.116, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../crypto/tcrypt.c", i32 2036, i32 22}
!283 = !{ptr @.str.117, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../crypto/tcrypt.c", i32 2039, i32 22}
!285 = !{ptr @.str.118, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../crypto/tcrypt.c", i32 2042, i32 22}
!287 = !{ptr @.str.119, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../crypto/tcrypt.c", i32 2045, i32 22}
!289 = !{ptr @.str.120, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../crypto/tcrypt.c", i32 2048, i32 22}
!291 = !{ptr @.str.121, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../crypto/tcrypt.c", i32 2051, i32 22}
!293 = !{ptr @.str.122, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../crypto/tcrypt.c", i32 2054, i32 22}
!295 = !{ptr @.str.123, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../crypto/tcrypt.c", i32 2057, i32 22}
!297 = !{ptr @.str.124, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../crypto/tcrypt.c", i32 2058, i32 22}
!299 = !{ptr @.str.125, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../crypto/tcrypt.c", i32 2059, i32 22}
!301 = !{ptr @.str.126, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../crypto/tcrypt.c", i32 2060, i32 22}
!303 = !{ptr @.str.127, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../crypto/tcrypt.c", i32 2271, i32 19}
!305 = !{ptr @.str.128, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../crypto/tcrypt.c", i32 2278, i32 21}
!307 = !{ptr @.str.129, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../crypto/tcrypt.c", i32 2329, i32 21}
!309 = !{ptr @.str.130, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../crypto/tcrypt.c", i32 2333, i32 21}
!311 = !{ptr @.str.131, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../crypto/tcrypt.c", i32 2340, i32 22}
!313 = !{ptr @.str.132, !314, !"<string literal>", i1 false, i1 false}
!314 = !{!"../crypto/tcrypt.c", i32 2349, i32 19}
!315 = !{ptr @.str.133, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../crypto/tcrypt.c", i32 2363, i32 19}
!317 = !{ptr @.str.134, !318, !"<string literal>", i1 false, i1 false}
!318 = !{!"../crypto/tcrypt.c", i32 2459, i32 19}
!319 = !{ptr @.str.135, !320, !"<string literal>", i1 false, i1 false}
!320 = !{!"../crypto/tcrypt.c", i32 2658, i32 22}
!321 = !{ptr @.str.136, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../crypto/tcrypt.c", i32 2664, i32 22}
!323 = !{ptr @.str.137, !324, !"<string literal>", i1 false, i1 false}
!324 = !{!"../crypto/tcrypt.c", i32 2681, i32 22}
!325 = !{ptr @.str.138, !326, !"<string literal>", i1 false, i1 false}
!326 = !{!"../crypto/tcrypt.c", i32 2685, i32 22}
!327 = !{ptr @.str.139, !328, !"<string literal>", i1 false, i1 false}
!328 = !{!"../crypto/tcrypt.c", i32 1667, i32 2}
!329 = !{ptr @.str.140, !328, !"<string literal>", i1 false, i1 false}
!330 = !{ptr @tcrypt_test.__UNIQUE_ID_ddebug230, !328, !"__UNIQUE_ID_ddebug230", i1 false, i1 false}
!331 = !{ptr @.str.141, !328, !"<string literal>", i1 false, i1 false}
!332 = !{ptr @.str.142, !333, !"<string literal>", i1 false, i1 false}
!333 = !{!"../crypto/tcrypt.c", i32 1518, i32 7}
!334 = !{ptr @.str.143, !335, !"<string literal>", i1 false, i1 false}
!335 = !{!"../crypto/tcrypt.c", i32 1520, i32 7}
!336 = !{ptr @.str.144, !337, !"<string literal>", i1 false, i1 false}
!337 = !{!"../crypto/tcrypt.c", i32 1527, i32 3}
!338 = !{ptr @.str.145, !337, !"<string literal>", i1 false, i1 false}
!339 = !{ptr @test_skcipher_speed._entry, !337, !"_entry", i1 false, i1 false}
!340 = !{ptr @test_skcipher_speed._entry_ptr, !337, !"_entry_ptr", i1 false, i1 false}
!341 = !{ptr @.str.147, !342, !"<string literal>", i1 false, i1 false}
!342 = !{!"../crypto/tcrypt.c", i32 1532, i32 2}
!343 = !{ptr @test_skcipher_speed._entry.146, !342, !"_entry", i1 false, i1 false}
!344 = !{ptr @test_skcipher_speed._entry_ptr.148, !342, !"_entry_ptr", i1 false, i1 false}
!345 = !{ptr @.str.149, !342, !"<string literal>", i1 false, i1 false}
!346 = !{ptr @.str.150, !342, !"<string literal>", i1 false, i1 false}
!347 = !{ptr @.str.152, !348, !"<string literal>", i1 false, i1 false}
!348 = !{!"../crypto/tcrypt.c", i32 1537, i32 3}
!349 = !{ptr @test_skcipher_speed._entry.151, !348, !"_entry", i1 false, i1 false}
!350 = !{ptr @test_skcipher_speed._entry_ptr.153, !348, !"_entry_ptr", i1 false, i1 false}
!351 = !{ptr @.str.155, !352, !"<string literal>", i1 false, i1 false}
!352 = !{!"../crypto/tcrypt.c", i32 1554, i32 5}
!353 = !{ptr @test_skcipher_speed._entry.154, !352, !"_entry", i1 false, i1 false}
!354 = !{ptr @test_skcipher_speed._entry_ptr.156, !352, !"_entry_ptr", i1 false, i1 false}
!355 = !{ptr @.str.158, !356, !"<string literal>", i1 false, i1 false}
!356 = !{!"../crypto/tcrypt.c", i32 1560, i32 4}
!357 = !{ptr @test_skcipher_speed._entry.157, !356, !"_entry", i1 false, i1 false}
!358 = !{ptr @test_skcipher_speed._entry_ptr.159, !356, !"_entry_ptr", i1 false, i1 false}
!359 = !{ptr @.str.161, !360, !"<string literal>", i1 false, i1 false}
!360 = !{!"../crypto/tcrypt.c", i32 1578, i32 5}
!361 = !{ptr @test_skcipher_speed._entry.160, !360, !"_entry", i1 false, i1 false}
!362 = !{ptr @test_skcipher_speed._entry_ptr.162, !360, !"_entry_ptr", i1 false, i1 false}
!363 = !{ptr @.str.164, !364, !"<string literal>", i1 false, i1 false}
!364 = !{!"../crypto/tcrypt.c", i32 1619, i32 5}
!365 = !{ptr @test_skcipher_speed._entry.163, !364, !"_entry", i1 false, i1 false}
!366 = !{ptr @test_skcipher_speed._entry_ptr.165, !364, !"_entry_ptr", i1 false, i1 false}
!367 = !{ptr @init_completion.__key, !368, !"__key", i1 false, i1 false}
!368 = !{!"../include/linux/completion.h", i32 87, i32 2}
!369 = !{ptr @.str.166, !368, !"<string literal>", i1 false, i1 false}
!370 = !{ptr @block_sizes, !371, !"block_sizes", i1 false, i1 false}
!371 = !{!"../crypto/tcrypt.c", i32 80, i32 18}
!372 = !{ptr @.str.167, !373, !"<string literal>", i1 false, i1 false}
!373 = !{!"../crypto/tcrypt.c", i32 1452, i32 2}
!374 = !{ptr @.str.168, !373, !"<string literal>", i1 false, i1 false}
!375 = !{ptr @test_acipher_jiffies._entry, !373, !"_entry", i1 false, i1 false}
!376 = !{ptr @test_acipher_jiffies._entry_ptr, !373, !"_entry_ptr", i1 false, i1 false}
!377 = !{ptr @.str.169, !378, !"<string literal>", i1 false, i1 false}
!378 = !{!"../crypto/tcrypt.c", i32 1498, i32 3}
!379 = !{ptr @.str.170, !378, !"<string literal>", i1 false, i1 false}
!380 = !{ptr @test_acipher_cycles._entry, !378, !"_entry", i1 false, i1 false}
!381 = !{ptr @test_acipher_cycles._entry_ptr, !378, !"_entry_ptr", i1 false, i1 false}
!382 = !{ptr @speed_template_16_24_32, !383, !"speed_template_16_24_32", i1 false, i1 false}
!383 = !{!"../crypto/tcrypt.h", i32 53, i32 11}
!384 = !{ptr @speed_template_32_40_48, !385, !"speed_template_32_40_48", i1 false, i1 false}
!385 = !{!"../crypto/tcrypt.h", i32 55, i32 11}
!386 = !{ptr @speed_template_32_64, !387, !"speed_template_32_64", i1 false, i1 false}
!387 = !{!"../crypto/tcrypt.h", i32 58, i32 11}
!388 = !{ptr @.str.171, !389, !"<string literal>", i1 false, i1 false}
!389 = !{!"../crypto/tcrypt.h", i32 37, i32 10}
!390 = !{ptr @des3_speed_template, !391, !"des3_speed_template", i1 false, i1 false}
!391 = !{!"../crypto/tcrypt.h", i32 35, i32 37}
!392 = !{ptr @speed_template_24, !393, !"speed_template_24", i1 false, i1 false}
!393 = !{!"../crypto/tcrypt.h", i32 49, i32 11}
!394 = !{ptr @speed_template_32_48_64, !395, !"speed_template_32_48_64", i1 false, i1 false}
!395 = !{!"../crypto/tcrypt.h", i32 57, i32 11}
!396 = !{ptr @speed_template_8_32, !397, !"speed_template_8_32", i1 false, i1 false}
!397 = !{!"../crypto/tcrypt.h", i32 51, i32 11}
!398 = !{ptr @speed_template_8, !399, !"speed_template_8", i1 false, i1 false}
!399 = !{!"../crypto/tcrypt.h", i32 47, i32 11}
!400 = !{ptr @speed_template_16_32, !401, !"speed_template_16_32", i1 false, i1 false}
!401 = !{!"../crypto/tcrypt.h", i32 52, i32 11}
!402 = !{ptr @speed_template_32_48, !403, !"speed_template_32_48", i1 false, i1 false}
!403 = !{!"../crypto/tcrypt.h", i32 56, i32 11}
!404 = !{ptr @speed_template_8_16, !405, !"speed_template_8_16", i1 false, i1 false}
!405 = !{!"../crypto/tcrypt.h", i32 50, i32 11}
!406 = !{ptr @.str.172, !407, !"<string literal>", i1 false, i1 false}
!407 = !{!"../crypto/tcrypt.c", i32 553, i32 3}
!408 = !{ptr @.str.173, !407, !"<string literal>", i1 false, i1 false}
!409 = !{ptr @test_aead_speed._entry, !407, !"_entry", i1 false, i1 false}
!410 = !{ptr @test_aead_speed._entry_ptr, !407, !"_entry_ptr", i1 false, i1 false}
!411 = !{ptr @.str.175, !412, !"<string literal>", i1 false, i1 false}
!412 = !{!"../crypto/tcrypt.c", i32 576, i32 3}
!413 = !{ptr @test_aead_speed._entry.174, !412, !"_entry", i1 false, i1 false}
!414 = !{ptr @test_aead_speed._entry_ptr.176, !412, !"_entry_ptr", i1 false, i1 false}
!415 = !{ptr @.str.178, !416, !"<string literal>", i1 false, i1 false}
!416 = !{!"../crypto/tcrypt.c", i32 583, i32 3}
!417 = !{ptr @test_aead_speed._entry.177, !416, !"_entry", i1 false, i1 false}
!418 = !{ptr @test_aead_speed._entry_ptr.179, !416, !"_entry_ptr", i1 false, i1 false}
!419 = !{ptr @.str.181, !420, !"<string literal>", i1 false, i1 false}
!420 = !{!"../crypto/tcrypt.c", i32 589, i32 2}
!421 = !{ptr @test_aead_speed._entry.180, !420, !"_entry", i1 false, i1 false}
!422 = !{ptr @test_aead_speed._entry_ptr.182, !420, !"_entry_ptr", i1 false, i1 false}
!423 = !{ptr @.str.184, !424, !"<string literal>", i1 false, i1 false}
!424 = !{!"../crypto/tcrypt.c", i32 594, i32 3}
!425 = !{ptr @test_aead_speed._entry.183, !424, !"_entry", i1 false, i1 false}
!426 = !{ptr @test_aead_speed._entry_ptr.185, !424, !"_entry_ptr", i1 false, i1 false}
!427 = !{ptr @test_aead_speed._entry.186, !428, !"_entry", i1 false, i1 false}
!428 = !{!"../crypto/tcrypt.c", i32 612, i32 5}
!429 = !{ptr @test_aead_speed._entry_ptr.187, !428, !"_entry_ptr", i1 false, i1 false}
!430 = !{ptr @.str.189, !431, !"<string literal>", i1 false, i1 false}
!431 = !{!"../crypto/tcrypt.c", i32 628, i32 5}
!432 = !{ptr @test_aead_speed._entry.188, !431, !"_entry", i1 false, i1 false}
!433 = !{ptr @test_aead_speed._entry_ptr.190, !431, !"_entry_ptr", i1 false, i1 false}
!434 = !{ptr @.str.192, !435, !"<string literal>", i1 false, i1 false}
!435 = !{!"../crypto/tcrypt.c", i32 638, i32 4}
!436 = !{ptr @test_aead_speed._entry.191, !435, !"_entry", i1 false, i1 false}
!437 = !{ptr @test_aead_speed._entry_ptr.193, !435, !"_entry_ptr", i1 false, i1 false}
!438 = !{ptr @.str.195, !439, !"<string literal>", i1 false, i1 false}
!439 = !{!"../crypto/tcrypt.c", i32 665, i32 6}
!440 = !{ptr @test_aead_speed._entry.194, !439, !"_entry", i1 false, i1 false}
!441 = !{ptr @test_aead_speed._entry_ptr.196, !439, !"_entry_ptr", i1 false, i1 false}
!442 = !{ptr @.str.198, !443, !"<string literal>", i1 false, i1 false}
!443 = !{!"../crypto/tcrypt.c", i32 684, i32 5}
!444 = !{ptr @test_aead_speed._entry.197, !443, !"_entry", i1 false, i1 false}
!445 = !{ptr @test_aead_speed._entry_ptr.199, !443, !"_entry_ptr", i1 false, i1 false}
!446 = !{ptr @aead_sizes, !447, !"aead_sizes", i1 false, i1 false}
!447 = !{!"../crypto/tcrypt.c", i32 81, i32 18}
!448 = !{ptr @.str.200, !449, !"<string literal>", i1 false, i1 false}
!449 = !{!"../crypto/tcrypt.c", i32 479, i32 2}
!450 = !{ptr @test_aead_jiffies._entry, !449, !"_entry", i1 false, i1 false}
!451 = !{ptr @test_aead_jiffies._entry_ptr, !449, !"_entry_ptr", i1 false, i1 false}
!452 = !{ptr @.str.201, !453, !"<string literal>", i1 false, i1 false}
!453 = !{!"../crypto/tcrypt.c", i32 520, i32 3}
!454 = !{ptr @.str.202, !453, !"<string literal>", i1 false, i1 false}
!455 = !{ptr @test_aead_cycles._entry, !453, !"_entry", i1 false, i1 false}
!456 = !{ptr @test_aead_cycles._entry_ptr, !453, !"_entry_ptr", i1 false, i1 false}
!457 = !{ptr @aead_speed_template_20, !458, !"aead_speed_template_20", i1 false, i1 false}
!458 = !{!"../crypto/tcrypt.h", i32 65, i32 11}
!459 = !{ptr @aead_speed_template_19, !460, !"aead_speed_template_19", i1 false, i1 false}
!460 = !{!"../crypto/tcrypt.h", i32 64, i32 11}
!461 = !{ptr @aead_speed_template_36, !462, !"aead_speed_template_36", i1 false, i1 false}
!462 = !{!"../crypto/tcrypt.h", i32 66, i32 11}
!463 = !{ptr @speed_template_32, !464, !"speed_template_32", i1 false, i1 false}
!464 = !{!"../crypto/tcrypt.h", i32 59, i32 11}
!465 = !{ptr @.str.203, !466, !"<string literal>", i1 false, i1 false}
!466 = !{!"../crypto/tcrypt.c", i32 268, i32 3}
!467 = !{ptr @test_mb_aead_speed._entry, !466, !"_entry", i1 false, i1 false}
!468 = !{ptr @test_mb_aead_speed._entry_ptr, !466, !"_entry_ptr", i1 false, i1 false}
!469 = !{ptr @test_mb_aead_speed._entry.204, !470, !"_entry", i1 false, i1 false}
!470 = !{!"../crypto/tcrypt.c", i32 287, i32 3}
!471 = !{ptr @test_mb_aead_speed._entry_ptr.205, !470, !"_entry_ptr", i1 false, i1 false}
!472 = !{ptr @test_mb_aead_speed._entry.206, !473, !"_entry", i1 false, i1 false}
!473 = !{!"../crypto/tcrypt.c", i32 294, i32 3}
!474 = !{ptr @test_mb_aead_speed._entry_ptr.207, !473, !"_entry_ptr", i1 false, i1 false}
!475 = !{ptr @test_mb_aead_speed._entry.208, !476, !"_entry", i1 false, i1 false}
!476 = !{!"../crypto/tcrypt.c", i32 323, i32 4}
!477 = !{ptr @test_mb_aead_speed._entry_ptr.209, !476, !"_entry_ptr", i1 false, i1 false}
!478 = !{ptr @.str.211, !479, !"<string literal>", i1 false, i1 false}
!479 = !{!"../crypto/tcrypt.c", i32 338, i32 2}
!480 = !{ptr @test_mb_aead_speed._entry.210, !479, !"_entry", i1 false, i1 false}
!481 = !{ptr @test_mb_aead_speed._entry_ptr.212, !479, !"_entry_ptr", i1 false, i1 false}
!482 = !{ptr @.str.214, !483, !"<string literal>", i1 false, i1 false}
!483 = !{!"../crypto/tcrypt.c", i32 348, i32 5}
!484 = !{ptr @test_mb_aead_speed._entry.213, !483, !"_entry", i1 false, i1 false}
!485 = !{ptr @test_mb_aead_speed._entry_ptr.215, !483, !"_entry_ptr", i1 false, i1 false}
!486 = !{ptr @test_mb_aead_speed._entry.216, !487, !"_entry", i1 false, i1 false}
!487 = !{!"../crypto/tcrypt.c", i32 354, i32 4}
!488 = !{ptr @test_mb_aead_speed._entry_ptr.217, !487, !"_entry_ptr", i1 false, i1 false}
!489 = !{ptr @test_mb_aead_speed._entry.218, !490, !"_entry", i1 false, i1 false}
!490 = !{!"../crypto/tcrypt.c", i32 372, i32 5}
!491 = !{ptr @test_mb_aead_speed._entry_ptr.219, !490, !"_entry_ptr", i1 false, i1 false}
!492 = !{ptr @test_mb_aead_speed._entry.220, !493, !"_entry", i1 false, i1 false}
!493 = !{!"../crypto/tcrypt.c", i32 409, i32 7}
!494 = !{ptr @test_mb_aead_speed._entry_ptr.221, !493, !"_entry_ptr", i1 false, i1 false}
!495 = !{ptr @test_mb_aead_speed._entry.222, !496, !"_entry", i1 false, i1 false}
!496 = !{!"../crypto/tcrypt.c", i32 432, i32 5}
!497 = !{ptr @test_mb_aead_speed._entry_ptr.223, !496, !"_entry_ptr", i1 false, i1 false}
!498 = !{ptr @.str.224, !499, !"<string literal>", i1 false, i1 false}
!499 = !{!"../crypto/tcrypt.c", i32 202, i32 2}
!500 = !{ptr @test_mb_aead_jiffies._entry, !499, !"_entry", i1 false, i1 false}
!501 = !{ptr @test_mb_aead_jiffies._entry_ptr, !499, !"_entry_ptr", i1 false, i1 false}
!502 = !{ptr @.str.225, !503, !"<string literal>", i1 false, i1 false}
!503 = !{!"../crypto/tcrypt.c", i32 175, i32 4}
!504 = !{ptr @.str.226, !503, !"<string literal>", i1 false, i1 false}
!505 = !{ptr @do_mult_aead_op._entry, !503, !"_entry", i1 false, i1 false}
!506 = !{ptr @do_mult_aead_op._entry_ptr, !503, !"_entry_ptr", i1 false, i1 false}
!507 = !{ptr @.str.227, !508, !"<string literal>", i1 false, i1 false}
!508 = !{!"../crypto/tcrypt.c", i32 243, i32 2}
!509 = !{ptr @test_mb_aead_cycles._entry, !508, !"_entry", i1 false, i1 false}
!510 = !{ptr @test_mb_aead_cycles._entry_ptr, !508, !"_entry_ptr", i1 false, i1 false}
!511 = !{ptr @speed_template_16, !512, !"speed_template_16", i1 false, i1 false}
!512 = !{!"../crypto/tcrypt.h", i32 48, i32 11}
!513 = !{ptr @.str.228, !514, !"<string literal>", i1 false, i1 false}
!514 = !{!"../crypto/tcrypt.c", i32 1080, i32 3}
!515 = !{ptr @test_ahash_speed_common._entry, !514, !"_entry", i1 false, i1 false}
!516 = !{ptr @test_ahash_speed_common._entry_ptr, !514, !"_entry_ptr", i1 false, i1 false}
!517 = !{ptr @.str.230, !518, !"<string literal>", i1 false, i1 false}
!518 = !{!"../crypto/tcrypt.c", i32 1085, i32 2}
!519 = !{ptr @test_ahash_speed_common._entry.229, !518, !"_entry", i1 false, i1 false}
!520 = !{ptr @test_ahash_speed_common._entry_ptr.231, !518, !"_entry_ptr", i1 false, i1 false}
!521 = !{ptr @.str.233, !522, !"<string literal>", i1 false, i1 false}
!522 = !{!"../crypto/tcrypt.c", i32 1089, i32 3}
!523 = !{ptr @test_ahash_speed_common._entry.232, !522, !"_entry", i1 false, i1 false}
!524 = !{ptr @test_ahash_speed_common._entry_ptr.234, !522, !"_entry_ptr", i1 false, i1 false}
!525 = !{ptr @.str.236, !526, !"<string literal>", i1 false, i1 false}
!526 = !{!"../crypto/tcrypt.c", i32 1097, i32 3}
!527 = !{ptr @test_ahash_speed_common._entry.235, !526, !"_entry", i1 false, i1 false}
!528 = !{ptr @test_ahash_speed_common._entry_ptr.237, !526, !"_entry_ptr", i1 false, i1 false}
!529 = !{ptr @test_ahash_speed_common._entry.238, !530, !"_entry", i1 false, i1 false}
!530 = !{!"../crypto/tcrypt.c", i32 1111, i32 4}
!531 = !{ptr @test_ahash_speed_common._entry_ptr.239, !530, !"_entry_ptr", i1 false, i1 false}
!532 = !{ptr @.str.241, !533, !"<string literal>", i1 false, i1 false}
!533 = !{!"../crypto/tcrypt.c", i32 1119, i32 3}
!534 = !{ptr @test_ahash_speed_common._entry.240, !533, !"_entry", i1 false, i1 false}
!535 = !{ptr @test_ahash_speed_common._entry_ptr.242, !533, !"_entry_ptr", i1 false, i1 false}
!536 = !{ptr @.str.244, !537, !"<string literal>", i1 false, i1 false}
!537 = !{!"../crypto/tcrypt.c", i32 1135, i32 4}
!538 = !{ptr @test_ahash_speed_common._entry.243, !537, !"_entry", i1 false, i1 false}
!539 = !{ptr @test_ahash_speed_common._entry_ptr.245, !537, !"_entry_ptr", i1 false, i1 false}
!540 = !{ptr @.str.246, !541, !"<string literal>", i1 false, i1 false}
!541 = !{!"../crypto/tcrypt.c", i32 967, i32 2}
!542 = !{ptr @.str.247, !541, !"<string literal>", i1 false, i1 false}
!543 = !{ptr @test_ahash_jiffies._entry, !541, !"_entry", i1 false, i1 false}
!544 = !{ptr @test_ahash_jiffies._entry_ptr, !541, !"_entry_ptr", i1 false, i1 false}
!545 = !{ptr @.str.248, !546, !"<string literal>", i1 false, i1 false}
!546 = !{!"../crypto/tcrypt.c", i32 935, i32 2}
!547 = !{ptr @.str.249, !546, !"<string literal>", i1 false, i1 false}
!548 = !{ptr @test_ahash_jiffies_digest._entry, !546, !"_entry", i1 false, i1 false}
!549 = !{ptr @test_ahash_jiffies_digest._entry_ptr, !546, !"_entry_ptr", i1 false, i1 false}
!550 = !{ptr @.str.250, !551, !"<string literal>", i1 false, i1 false}
!551 = !{!"../crypto/tcrypt.c", i32 1062, i32 2}
!552 = !{ptr @.str.251, !551, !"<string literal>", i1 false, i1 false}
!553 = !{ptr @test_ahash_cycles._entry, !551, !"_entry", i1 false, i1 false}
!554 = !{ptr @test_ahash_cycles._entry_ptr, !551, !"_entry_ptr", i1 false, i1 false}
!555 = !{ptr @.str.252, !556, !"<string literal>", i1 false, i1 false}
!556 = !{!"../crypto/tcrypt.c", i32 1005, i32 2}
!557 = !{ptr @test_ahash_cycles_digest._entry, !556, !"_entry", i1 false, i1 false}
!558 = !{ptr @test_ahash_cycles_digest._entry_ptr, !556, !"_entry_ptr", i1 false, i1 false}
!559 = !{ptr @generic_hash_speed_template, !560, !"generic_hash_speed_template", i1 false, i1 false}
!560 = !{!"../crypto/tcrypt.h", i32 71, i32 26}
!561 = !{ptr @poly1305_speed_template, !562, !"poly1305_speed_template", i1 false, i1 false}
!562 = !{!"../crypto/tcrypt.h", i32 99, i32 26}
!563 = !{ptr @.str.253, !564, !"<string literal>", i1 false, i1 false}
!564 = !{!"../crypto/tcrypt.c", i32 839, i32 3}
!565 = !{ptr @test_mb_ahash_speed._entry, !564, !"_entry", i1 false, i1 false}
!566 = !{ptr @test_mb_ahash_speed._entry_ptr, !564, !"_entry_ptr", i1 false, i1 false}
!567 = !{ptr @.str.255, !568, !"<string literal>", i1 false, i1 false}
!568 = !{!"../crypto/tcrypt.c", i32 852, i32 4}
!569 = !{ptr @test_mb_ahash_speed._entry.254, !568, !"_entry", i1 false, i1 false}
!570 = !{ptr @test_mb_ahash_speed._entry_ptr.256, !568, !"_entry_ptr", i1 false, i1 false}
!571 = !{ptr @.str.258, !572, !"<string literal>", i1 false, i1 false}
!572 = !{!"../crypto/tcrypt.c", i32 867, i32 2}
!573 = !{ptr @test_mb_ahash_speed._entry.257, !572, !"_entry", i1 false, i1 false}
!574 = !{ptr @test_mb_ahash_speed._entry_ptr.259, !572, !"_entry_ptr", i1 false, i1 false}
!575 = !{ptr @test_mb_ahash_speed._entry.260, !576, !"_entry", i1 false, i1 false}
!576 = !{!"../crypto/tcrypt.c", i32 876, i32 4}
!577 = !{ptr @test_mb_ahash_speed._entry_ptr.261, !576, !"_entry_ptr", i1 false, i1 false}
!578 = !{ptr @test_mb_ahash_speed._entry.262, !579, !"_entry", i1 false, i1 false}
!579 = !{!"../crypto/tcrypt.c", i32 888, i32 3}
!580 = !{ptr @test_mb_ahash_speed._entry_ptr.263, !579, !"_entry_ptr", i1 false, i1 false}
!581 = !{ptr @.str.265, !582, !"<string literal>", i1 false, i1 false}
!582 = !{!"../crypto/tcrypt.c", i32 903, i32 4}
!583 = !{ptr @test_mb_ahash_speed._entry.264, !582, !"_entry", i1 false, i1 false}
!584 = !{ptr @test_mb_ahash_speed._entry_ptr.266, !582, !"_entry_ptr", i1 false, i1 false}
!585 = !{ptr @.str.267, !586, !"<string literal>", i1 false, i1 false}
!586 = !{!"../crypto/tcrypt.c", i32 776, i32 2}
!587 = !{ptr @test_mb_ahash_jiffies._entry, !586, !"_entry", i1 false, i1 false}
!588 = !{ptr @test_mb_ahash_jiffies._entry_ptr, !586, !"_entry_ptr", i1 false, i1 false}
!589 = !{ptr @.str.268, !590, !"<string literal>", i1 false, i1 false}
!590 = !{!"../crypto/tcrypt.c", i32 749, i32 4}
!591 = !{ptr @do_mult_ahash_op._entry, !590, !"_entry", i1 false, i1 false}
!592 = !{ptr @do_mult_ahash_op._entry_ptr, !590, !"_entry_ptr", i1 false, i1 false}
!593 = !{ptr @.str.269, !594, !"<string literal>", i1 false, i1 false}
!594 = !{!"../crypto/tcrypt.c", i32 817, i32 2}
!595 = !{ptr @test_mb_ahash_cycles._entry, !594, !"_entry", i1 false, i1 false}
!596 = !{ptr @test_mb_ahash_cycles._entry_ptr, !594, !"_entry_ptr", i1 false, i1 false}
!597 = !{ptr @speed_template_20_28_36, !598, !"speed_template_20_28_36", i1 false, i1 false}
!598 = !{!"../crypto/tcrypt.h", i32 54, i32 11}
!599 = !{ptr @.str.270, !600, !"<string literal>", i1 false, i1 false}
!600 = !{!"../crypto/tcrypt.c", i32 1286, i32 3}
!601 = !{ptr @test_mb_skcipher_speed._entry, !600, !"_entry", i1 false, i1 false}
!602 = !{ptr @test_mb_skcipher_speed._entry_ptr, !600, !"_entry_ptr", i1 false, i1 false}
!603 = !{ptr @.str.272, !604, !"<string literal>", i1 false, i1 false}
!604 = !{!"../crypto/tcrypt.c", i32 1310, i32 4}
!605 = !{ptr @test_mb_skcipher_speed._entry.271, !604, !"_entry", i1 false, i1 false}
!606 = !{ptr @test_mb_skcipher_speed._entry_ptr.273, !604, !"_entry_ptr", i1 false, i1 false}
!607 = !{ptr @test_mb_skcipher_speed._entry.274, !608, !"_entry", i1 false, i1 false}
!608 = !{!"../crypto/tcrypt.c", i32 1325, i32 2}
!609 = !{ptr @test_mb_skcipher_speed._entry_ptr.275, !608, !"_entry_ptr", i1 false, i1 false}
!610 = !{ptr @test_mb_skcipher_speed._entry.276, !611, !"_entry", i1 false, i1 false}
!611 = !{!"../crypto/tcrypt.c", i32 1335, i32 5}
!612 = !{ptr @test_mb_skcipher_speed._entry_ptr.277, !611, !"_entry_ptr", i1 false, i1 false}
!613 = !{ptr @test_mb_skcipher_speed._entry.278, !614, !"_entry", i1 false, i1 false}
!614 = !{!"../crypto/tcrypt.c", i32 1340, i32 4}
!615 = !{ptr @test_mb_skcipher_speed._entry_ptr.279, !614, !"_entry_ptr", i1 false, i1 false}
!616 = !{ptr @test_mb_skcipher_speed._entry.280, !617, !"_entry", i1 false, i1 false}
!617 = !{!"../crypto/tcrypt.c", i32 1358, i32 5}
!618 = !{ptr @test_mb_skcipher_speed._entry_ptr.281, !617, !"_entry_ptr", i1 false, i1 false}
!619 = !{ptr @test_mb_skcipher_speed._entry.282, !620, !"_entry", i1 false, i1 false}
!620 = !{!"../crypto/tcrypt.c", i32 1403, i32 5}
!621 = !{ptr @test_mb_skcipher_speed._entry_ptr.283, !620, !"_entry_ptr", i1 false, i1 false}
!622 = !{ptr @.str.284, !623, !"<string literal>", i1 false, i1 false}
!623 = !{!"../crypto/tcrypt.c", i32 1213, i32 2}
!624 = !{ptr @test_mb_acipher_jiffies._entry, !623, !"_entry", i1 false, i1 false}
!625 = !{ptr @test_mb_acipher_jiffies._entry_ptr, !623, !"_entry_ptr", i1 false, i1 false}
!626 = !{ptr @.str.285, !627, !"<string literal>", i1 false, i1 false}
!627 = !{!"../crypto/tcrypt.c", i32 1186, i32 4}
!628 = !{ptr @do_mult_acipher_op._entry, !627, !"_entry", i1 false, i1 false}
!629 = !{ptr @do_mult_acipher_op._entry_ptr, !627, !"_entry_ptr", i1 false, i1 false}
!630 = !{ptr @.str.286, !631, !"<string literal>", i1 false, i1 false}
!631 = !{!"../crypto/tcrypt.c", i32 1254, i32 2}
!632 = !{ptr @test_mb_acipher_cycles._entry, !631, !"_entry", i1 false, i1 false}
!633 = !{ptr @test_mb_acipher_cycles._entry_ptr, !631, !"_entry_ptr", i1 false, i1 false}
!634 = !{ptr @.str.287, !635, !"<string literal>", i1 false, i1 false}
!635 = !{!"../crypto/tcrypt.c", i32 1656, i32 3}
!636 = !{ptr @.str.288, !635, !"<string literal>", i1 false, i1 false}
!637 = !{ptr @test_available._entry, !635, !"_entry", i1 false, i1 false}
!638 = !{ptr @test_available._entry_ptr, !635, !"_entry_ptr", i1 false, i1 false}
!639 = !{ptr @.str.289, !640, !"<string literal>", i1 false, i1 false}
!640 = !{!"../crypto/tcrypt.c", i32 1657, i32 3}
!641 = !{ptr @.str.290, !640, !"<string literal>", i1 false, i1 false}
!642 = !{ptr @.str.291, !643, !"<string literal>", i1 false, i1 false}
!643 = !{!"../crypto/tcrypt.c", i32 70, i32 2}
!644 = !{ptr @.str.292, !645, !"<string literal>", i1 false, i1 false}
!645 = !{!"../crypto/tcrypt.c", i32 70, i32 16}
!646 = !{ptr @.str.293, !647, !"<string literal>", i1 false, i1 false}
!647 = !{!"../crypto/tcrypt.c", i32 70, i32 28}
!648 = !{ptr @.str.294, !649, !"<string literal>", i1 false, i1 false}
!649 = !{!"../crypto/tcrypt.c", i32 71, i32 2}
!650 = !{ptr @.str.295, !651, !"<string literal>", i1 false, i1 false}
!651 = !{!"../crypto/tcrypt.c", i32 71, i32 14}
!652 = !{ptr @.str.296, !653, !"<string literal>", i1 false, i1 false}
!653 = !{!"../crypto/tcrypt.c", i32 71, i32 25}
!654 = !{ptr @.str.297, !655, !"<string literal>", i1 false, i1 false}
!655 = !{!"../crypto/tcrypt.c", i32 71, i32 63}
!656 = !{ptr @.str.298, !657, !"<string literal>", i1 false, i1 false}
!657 = !{!"../crypto/tcrypt.c", i32 72, i32 2}
!658 = !{ptr @.str.299, !659, !"<string literal>", i1 false, i1 false}
!659 = !{!"../crypto/tcrypt.c", i32 72, i32 11}
!660 = !{ptr @.str.300, !661, !"<string literal>", i1 false, i1 false}
!661 = !{!"../crypto/tcrypt.c", i32 72, i32 55}
!662 = !{ptr @.str.301, !663, !"<string literal>", i1 false, i1 false}
!663 = !{!"../crypto/tcrypt.c", i32 72, i32 62}
!664 = !{ptr @.str.302, !665, !"<string literal>", i1 false, i1 false}
!665 = !{!"../crypto/tcrypt.c", i32 73, i32 2}
!666 = !{ptr @.str.303, !667, !"<string literal>", i1 false, i1 false}
!667 = !{!"../crypto/tcrypt.c", i32 73, i32 39}
!668 = !{ptr @.str.304, !669, !"<string literal>", i1 false, i1 false}
!669 = !{!"../crypto/tcrypt.c", i32 73, i32 48}
!670 = !{ptr @.str.305, !671, !"<string literal>", i1 false, i1 false}
!671 = !{!"../crypto/tcrypt.c", i32 74, i32 2}
!672 = !{ptr @.str.306, !673, !"<string literal>", i1 false, i1 false}
!673 = !{!"../crypto/tcrypt.c", i32 74, i32 14}
!674 = !{ptr @.str.307, !675, !"<string literal>", i1 false, i1 false}
!675 = !{!"../crypto/tcrypt.c", i32 75, i32 9}
!676 = !{ptr @.str.308, !677, !"<string literal>", i1 false, i1 false}
!677 = !{!"../crypto/tcrypt.c", i32 75, i32 20}
!678 = !{ptr @check, !679, !"check", i1 false, i1 false}
!679 = !{!"../crypto/tcrypt.c", i32 69, i32 20}
!680 = !{ptr @__param_str_alg, !5, !"__param_str_alg", i1 false, i1 false}
!681 = !{ptr @alg, !682, !"alg", i1 false, i1 false}
!682 = !{!"../crypto/tcrypt.c", i32 61, i32 14}
!683 = !{ptr @__param_str_type, !8, !"__param_str_type", i1 false, i1 false}
!684 = !{ptr @__param_str_mask, !11, !"__param_str_mask", i1 false, i1 false}
!685 = !{ptr @__param_str_mode, !14, !"__param_str_mode", i1 false, i1 false}
!686 = !{ptr @__param_str_sec, !17, !"__param_str_sec", i1 false, i1 false}
!687 = !{ptr @__param_str_num_mb, !22, !"__param_str_num_mb", i1 false, i1 false}
!688 = !{ptr @num_mb, !689, !"num_mb", i1 false, i1 false}
!689 = !{!"../crypto/tcrypt.c", i32 65, i32 12}
!690 = !{ptr @__param_str_klen, !27, !"__param_str_klen", i1 false, i1 false}
!691 = !{i32 1, !"wchar_size", i32 2}
!692 = !{i32 1, !"min_enum_size", i32 4}
!693 = !{i32 8, !"branch-target-enforcement", i32 0}
!694 = !{i32 8, !"sign-return-address", i32 0}
!695 = !{i32 8, !"sign-return-address-all", i32 0}
!696 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!697 = !{i32 7, !"uwtable", i32 1}
!698 = !{i32 7, !"frame-pointer", i32 2}
!699 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!700 = !{i64 2148817581, i64 2148817586, i64 2148817599, i64 2148817643, i64 2148817677, i64 2148817698}
!701 = !{!"branch_weights", i32 1, i32 2000}
!702 = !{!"auto-init"}
!703 = !{!"branch_weights", i32 2000, i32 1}
!704 = !{i64 2153812270, i64 2153812762, i64 2153812307, i64 2153812363, i64 2153812397, i64 2153812421, i64 2153812462, i64 2153812483, i64 2153812511, i64 2153812545}
!705 = !{i64 2153805951, i64 2153806443, i64 2153805988, i64 2153806044, i64 2153806078, i64 2153806102, i64 2153806143, i64 2153806164, i64 2153806192, i64 2153806226}
!706 = !{i64 2153807561, i64 2153808053, i64 2153807598, i64 2153807654, i64 2153807688, i64 2153807712, i64 2153807753, i64 2153807774, i64 2153807802, i64 2153807836}
