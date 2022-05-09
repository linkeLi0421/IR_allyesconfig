; ModuleID = '/llk/IR_all_yes/security/keys/encrypted-keys/encrypted.c_pt.bc'
source_filename = "../security/keys/encrypted-keys/encrypted.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+key_type_encrypted\22, \22a\22\09"
module asm "\09.weak\09__crc_key_type_encrypted\09\09\09\09"
module asm "\09.long\09__crc_key_type_encrypted\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_key_type_encrypted:\09\09\09\09\09"
module asm "\09.asciz \09\22key_type_encrypted\22\09\09\09\09\09"
module asm "__kstrtabns_key_type_encrypted:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.key_type = type { ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.lock_class_key }
%struct.list_head = type { ptr, ptr }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.match_token = type { i32, ptr }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.key_preparsed_payload = type { ptr, ptr, %union.key_payload, ptr, i32, i32, i64 }
%union.key_payload = type { [4 x ptr] }
%struct.key = type { %struct.refcount_struct, i32, %union.anon, ptr, %struct.rw_semaphore, ptr, ptr, %union.anon.2, i64, %struct.kuid_t, %struct.kgid_t, i32, i16, i16, i16, i32, %union.anon.3, %union.anon.6, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%union.anon = type { %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%union.anon.2 = type { i64 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.3 = type { %struct.keyring_index_key }
%struct.keyring_index_key = type { i32, %union.anon.4, ptr, ptr, ptr }
%union.anon.4 = type { i32 }
%union.anon.6 = type { %union.key_payload }
%struct.encrypted_key_payload = type { %struct.callback_head, ptr, ptr, ptr, ptr, ptr, i16, i16, i16, i16, ptr, [0 x i8] }
%struct.callback_head = type { ptr, ptr }
%struct.crypto_shash = type { i32, [124 x i8], %struct.crypto_tfm }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [112 x i8], [0 x ptr] }
%struct.page = type { i32, %union.anon.11, %union.anon.64, %struct.atomic_t, i32 }
%union.anon.11 = type { %struct.anon.12 }
%struct.anon.12 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.64 = type { %struct.atomic_t }
%struct.skcipher_request = type { i32, ptr, ptr, ptr, %struct.crypto_async_request, [88 x i8], [0 x ptr] }
%struct.crypto_async_request = type { %struct.list_head, ptr, ptr, ptr, i32 }
%struct.crypto_skcipher = type { i32, [124 x i8], %struct.crypto_tfm }
%struct.crypto_alg = type { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, %struct.refcount_struct, [128 x i8], [128 x i8], ptr, %union.anon.8, ptr, ptr, ptr, ptr, %union.anon.68, [120 x i8] }
%union.anon.8 = type { %struct.cipher_alg }
%struct.cipher_alg = type { i32, i32, ptr, ptr, ptr }
%union.anon.68 = type { %struct.crypto_istat_akcipher }
%struct.crypto_istat_akcipher = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%struct.substring_t = type { ptr, ptr }
%struct.user_key_payload = type { %struct.callback_head, i16, [6 x i8], [0 x i8] }

@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"encrypted\00", [22 x i8] zeroinitializer }, align 32
@key_type_encrypted = dso_local global { %struct.key_type, [36 x i8] } { %struct.key_type { ptr @.str, i32 0, i32 0, ptr null, ptr null, ptr null, ptr @encrypted_instantiate, ptr @encrypted_update, ptr null, ptr null, ptr null, ptr @encrypted_destroy, ptr @user_describe, ptr @encrypted_read, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer, %struct.lock_class_key zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__kstrtab_key_type_encrypted = external dso_local constant [0 x i8], align 1
@__kstrtabns_key_type_encrypted = external dso_local constant [0 x i8], align 1
@__ksymtab_key_type_encrypted = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @key_type_encrypted to i32), ptr @__kstrtab_key_type_encrypted, ptr @__kstrtabns_key_type_encrypted }, section "___ksymtab_gpl+key_type_encrypted", align 4
@hash_tfm = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__initcall__kmod_encrypted_keys__248_1007_init_encrypted7 = internal global ptr @init_encrypted, section ".initcall7.init", align 4
@__exitcall_cleanup_encrypted = internal global ptr @cleanup_encrypted, section ".exitcall.exit", align 4
@__UNIQUE_ID_file249 = internal constant [64 x i8] c"encrypted_keys.file=security/keys/encrypted-keys/encrypted-keys\00", section ".modinfo", align 1
@__UNIQUE_ID_license250 = internal constant [27 x i8] c"encrypted_keys.license=GPL\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.1 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c" \09\00", [29 x i8] zeroinitializer }, align 32
@datablob_parse._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 183, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\016trusted_key: encrypted_key: insufficient parameters specified\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"datablob_parse\00", [17 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"security/keys/encrypted-keys/encrypted.c\00", [55 x i8] zeroinitializer }, align 32
@datablob_parse._entry_ptr = internal global ptr @datablob_parse._entry, section ".printk_index", align 4
@key_tokens = internal constant { [4 x %struct.match_token], [32 x i8] } { [4 x %struct.match_token] [%struct.match_token { i32 0, ptr @.str.31 }, %struct.match_token { i32 1, ptr @.str.32 }, %struct.match_token { i32 2, ptr @.str.33 }, %struct.match_token { i32 3, ptr null }], [32 x i8] zeroinitializer }, align 32
@datablob_parse._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.3, ptr @.str.4, i32 191, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\013trusted_key: encrypted_key: insufficient parameters specified\0A\00", [63 x i8] zeroinitializer }, align 32
@datablob_parse._entry_ptr.7 = internal global ptr @datablob_parse._entry.5, section ".printk_index", align 4
@key_format_tokens = internal constant { [4 x %struct.match_token], [32 x i8] } { [4 x %struct.match_token] [%struct.match_token { i32 0, ptr @.str.34 }, %struct.match_token { i32 1, ptr @.str.35 }, %struct.match_token { i32 2, ptr @.str.36 }, %struct.match_token { i32 3, ptr null }], [32 x i8] zeroinitializer }, align 32
@datablob_parse._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 209, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\016trusted_key: encrypted_key: master key parameter is missing\0A\00", [33 x i8] zeroinitializer }, align 32
@datablob_parse._entry_ptr.10 = internal global ptr @datablob_parse._entry.8, section ".printk_index", align 4
@datablob_parse._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.3, ptr @.str.4, i32 215, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\016trusted_key: encrypted_key: master key parameter '%s' is invalid\0A\00", [60 x i8] zeroinitializer }, align 32
@datablob_parse._entry_ptr.13 = internal global ptr @datablob_parse._entry.11, section ".printk_index", align 4
@datablob_parse._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.3, ptr @.str.4, i32 222, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\016trusted_key: encrypted_key: keylen parameter is missing\0A\00", [37 x i8] zeroinitializer }, align 32
@datablob_parse._entry_ptr.16 = internal global ptr @datablob_parse._entry.14, section ".printk_index", align 4
@datablob_parse._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.3, ptr @.str.4, i32 231, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [88 x i8], [40 x i8] } { [88 x i8] c"\016trusted_key: encrypted_key: keyword '%s' not allowed when called from .update method\0A\00", [40 x i8] zeroinitializer }, align 32
@datablob_parse._entry_ptr.19 = internal global ptr @datablob_parse._entry.17, section ".printk_index", align 4
@datablob_parse._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.3, ptr @.str.4, i32 239, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@datablob_parse._entry_ptr.21 = internal global ptr @datablob_parse._entry.20, section ".printk_index", align 4
@datablob_parse._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.3, ptr @.str.4, i32 244, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\016trusted_key: encrypted_key: hex blob is missing\0A\00", [45 x i8] zeroinitializer }, align 32
@datablob_parse._entry_ptr.24 = internal global ptr @datablob_parse._entry.22, section ".printk_index", align 4
@datablob_parse._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.3, ptr @.str.4, i32 253, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [93 x i8], [35 x i8] } { [93 x i8] c"\016trusted_key: encrypted_key: keyword '%s' not allowed when called from .instantiate method\0A\00", [35 x i8] zeroinitializer }, align 32
@datablob_parse._entry_ptr.27 = internal global ptr @datablob_parse._entry.25, section ".printk_index", align 4
@datablob_parse._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.3, ptr @.str.4, i32 260, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\016trusted_key: encrypted_key: keyword '%s' not recognized\0A\00", [37 x i8] zeroinitializer }, align 32
@datablob_parse._entry_ptr.30 = internal global ptr @datablob_parse._entry.28, section ".printk_index", align 4
@.str.31 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"new\00", [28 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"load\00", [27 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"update\00", [25 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"default\00", [24 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ecryptfs\00", [23 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"enc32\00", [26 x i8] zeroinitializer }, align 32
@KEY_TRUSTED_PREFIX = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"trusted:\00", [23 x i8] zeroinitializer }, align 32
@KEY_USER_PREFIX = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"user:\00", [26 x i8] zeroinitializer }, align 32
@key_format_default = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"default\00", [24 x i8] zeroinitializer }, align 32
@key_format_ecryptfs = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ecryptfs\00", [23 x i8] zeroinitializer }, align 32
@encrypted_key_alloc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.4, i32 620, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [88 x i8], [40 x i8] } { [88 x i8] c"\013trusted_key: encrypted_key: keylen for the ecryptfs format must be equal to %d bytes\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"encrypted_key_alloc\00", [44 x i8] zeroinitializer }, align 32
@encrypted_key_alloc._entry_ptr = internal global ptr @encrypted_key_alloc._entry, section ".printk_index", align 4
@key_format_enc32 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"enc32\00", [26 x i8] zeroinitializer }, align 32
@encrypted_key_alloc._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.38, ptr @.str.4, i32 628, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"\013trusted_key: encrypted_key: enc32 key payload incorrect length: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@encrypted_key_alloc._entry_ptr.41 = internal global ptr @encrypted_key_alloc._entry.39, section ".printk_index", align 4
@blksize = internal global { i32, [28 x i8] } zeroinitializer, align 32
@ivsize = internal global { i32, [28 x i8] } zeroinitializer, align 32
@valid_ecryptfs_desc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.4, i32 110, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [86 x i8], [42 x i8] } { [86 x i8] c"\013trusted_key: encrypted_key: key description must be %d hexadecimal characters long\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"valid_ecryptfs_desc\00", [44 x i8] zeroinitializer }, align 32
@valid_ecryptfs_desc._entry_ptr = internal global ptr @valid_ecryptfs_desc._entry, section ".printk_index", align 4
@_ctype = external dso_local local_unnamed_addr constant [0 x i8], align 1
@valid_ecryptfs_desc._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.43, ptr @.str.4, i32 117, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [88 x i8], [40 x i8] } { [88 x i8] c"\013trusted_key: encrypted_key: key description must contain only hexadecimal characters\0A\00", [40 x i8] zeroinitializer }, align 32
@valid_ecryptfs_desc._entry_ptr.46 = internal global ptr @valid_ecryptfs_desc._entry.44, section ".printk_index", align 4
@encrypted_key_decrypt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.4, i32 694, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013trusted_key: encrypted_key: bad hmac (%d)\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"encrypted_key_decrypt\00", [42 x i8] zeroinitializer }, align 32
@encrypted_key_decrypt._entry_ptr = internal global ptr @encrypted_key_decrypt._entry, section ".printk_index", align 4
@encrypted_key_decrypt._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.48, ptr @.str.4, i32 704, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\013trusted_key: encrypted_key: failed to decrypt key (%d)\0A\00", [38 x i8] zeroinitializer }, align 32
@encrypted_key_decrypt._entry_ptr.51 = internal global ptr @encrypted_key_decrypt._entry.49, section ".printk_index", align 4
@request_master_key._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.4, i32 433, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\016trusted_key: encrypted_key: key %s not supported\00", [45 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"request_master_key\00", [45 x i8] zeroinitializer }, align 32
@request_master_key._entry_ptr = internal global ptr @request_master_key._entry, section ".printk_index", align 4
@request_master_key._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.53, ptr @.str.4, i32 436, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\016trusted_key: encrypted_key: key %s not found\00", [49 x i8] zeroinitializer }, align 32
@request_master_key._entry_ptr.56 = internal global ptr @request_master_key._entry.54, section ".printk_index", align 4
@key_type_user = external dso_local global %struct.key_type, align 4
@user_key_payload_locked.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.57 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/keys/user-type.h\00", [39 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@hmac_alg = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"hmac(sha256)\00", [19 x i8] zeroinitializer }, align 32
@calc_hmac._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.62, ptr @.str.4, i32 335, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\013trusted_key: encrypted_key: can't alloc %s transform: %ld\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"calc_hmac\00", [22 x i8] zeroinitializer }, align 32
@calc_hmac._entry_ptr = internal global ptr @calc_hmac._entry, section ".printk_index", align 4
@.str.63 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"AUTH_KEY\00", [23 x i8] zeroinitializer }, align 32
@blkcipher_alg = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"cbc(aes)\00", [23 x i8] zeroinitializer }, align 32
@init_skcipher_req._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.66, ptr @.str.4, i32 387, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\013trusted_key: encrypted_key: failed to load %s transform (%ld)\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"init_skcipher_req\00", [46 x i8] zeroinitializer }, align 32
@init_skcipher_req._entry_ptr = internal global ptr @init_skcipher_req._entry, section ".printk_index", align 4
@init_skcipher_req._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.66, ptr @.str.4, i32 393, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013trusted_key: encrypted_key: failed to setkey (%d)\0A\00", [43 x i8] zeroinitializer }, align 32
@init_skcipher_req._entry_ptr.69 = internal global ptr @init_skcipher_req._entry.67, section ".printk_index", align 4
@init_skcipher_req._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.66, ptr @.str.4, i32 401, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\013trusted_key: encrypted_key: failed to allocate request for %s\0A\00", [63 x i8] zeroinitializer }, align 32
@init_skcipher_req._entry_ptr.72 = internal global ptr @init_skcipher_req._entry.70, section ".printk_index", align 4
@high_memory = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@encrypted_read.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@empty_zero_page = external dso_local local_unnamed_addr global ptr, align 4
@derived_key_encrypt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.74, ptr @.str.4, i32 481, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013trusted_key: encrypted_key: failed to encrypt (%d)\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"derived_key_encrypt\00", [44 x i8] zeroinitializer }, align 32
@derived_key_encrypt._entry_ptr = internal global ptr @derived_key_encrypt._entry, section ".printk_index", align 4
@.str.75 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s %s %s \00", [22 x i8] zeroinitializer }, align 32
@hex_asc = external dso_local local_unnamed_addr constant [0 x i8], align 1
@hash_alg = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sha256\00", [25 x i8] zeroinitializer }, align 32
@init_encrypted._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.77, ptr @.str.4, i32 984, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\013trusted_key: encrypted_key: can't allocate %s transform: %ld\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"init_encrypted\00", [17 x i8] zeroinitializer }, align 32
@init_encrypted._entry_ptr = internal global ptr @init_encrypted._entry, section ".printk_index", align 4
@aes_get_sizes._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.79, ptr @.str.4, i32 88, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\013trusted_key: encrypted_key: failed to alloc_cipher (%ld)\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"aes_get_sizes\00", [18 x i8] zeroinitializer }, align 32
@aes_get_sizes._entry_ptr = internal global ptr @aes_get_sizes._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.80 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 968, i32 10 }
@___asan_gen_.84 = private unnamed_addr constant [19 x i8] c"key_type_encrypted\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 967, i32 17 }
@___asan_gen_.87 = private unnamed_addr constant [9 x i8] c"hash_tfm\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 57, i32 29 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 181, i32 30 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 183, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant [11 x i8] c"key_tokens\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 74, i32 28 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 191, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant [18 x i8] c"key_format_tokens\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 67, i32 28 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 209, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 214, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 222, i32 4 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 230, i32 4 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 238, i32 4 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 244, i32 4 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 251, i32 4 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 259, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 75, i32 12 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 76, i32 13 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 77, i32 15 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 68, i32 16 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 69, i32 17 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 70, i32 14 }
@___asan_gen_.180 = private unnamed_addr constant [19 x i8] c"KEY_TRUSTED_PREFIX\00", align 1
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 38, i32 19 }
@___asan_gen_.183 = private unnamed_addr constant [16 x i8] c"KEY_USER_PREFIX\00", align 1
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 39, i32 19 }
@___asan_gen_.186 = private unnamed_addr constant [19 x i8] c"key_format_default\00", align 1
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 43, i32 19 }
@___asan_gen_.189 = private unnamed_addr constant [20 x i8] c"key_format_ecryptfs\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 44, i32 19 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 619, i32 5 }
@___asan_gen_.201 = private unnamed_addr constant [17 x i8] c"key_format_enc32\00", align 1
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 45, i32 19 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 627, i32 5 }
@___asan_gen_.210 = private unnamed_addr constant [8 x i8] c"blksize\00", align 1
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 47, i32 12 }
@___asan_gen_.213 = private unnamed_addr constant [7 x i8] c"ivsize\00", align 1
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 46, i32 21 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 109, i32 3 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 116, i32 4 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 694, i32 3 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 704, i32 3 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 432, i32 4 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 435, i32 4 }
@___asan_gen_.265 = private unnamed_addr constant [28 x i8] c"../include/keys/user-type.h\00", align 1
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 53, i32 36 }
@___asan_gen_.267 = private unnamed_addr constant [9 x i8] c"hmac_alg\00", align 1
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 41, i32 19 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 334, i32 3 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 365, i32 23 }
@___asan_gen_.282 = private unnamed_addr constant [14 x i8] c"blkcipher_alg\00", align 1
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 42, i32 19 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 386, i32 3 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 393, i32 3 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 400, i32 3 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 481, i32 3 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 285, i32 27 }
@___asan_gen_.318 = private unnamed_addr constant [9 x i8] c"hash_alg\00", align 1
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 40, i32 19 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 983, i32 3 }
@___asan_gen_.330 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.336 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.337 = private constant [44 x i8] c"../security/keys/encrypted-keys/encrypted.c\00", align 1
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 87, i32 3 }
@llvm.compiler.used = appending global [117 x ptr] [ptr @__UNIQUE_ID_file249, ptr @__UNIQUE_ID_license250, ptr @__exitcall_cleanup_encrypted, ptr @__initcall__kmod_encrypted_keys__248_1007_init_encrypted7, ptr @__ksymtab_key_type_encrypted, ptr @aes_get_sizes._entry, ptr @aes_get_sizes._entry_ptr, ptr @calc_hmac._entry, ptr @calc_hmac._entry_ptr, ptr @cleanup_encrypted, ptr @datablob_parse._entry, ptr @datablob_parse._entry.11, ptr @datablob_parse._entry.14, ptr @datablob_parse._entry.17, ptr @datablob_parse._entry.20, ptr @datablob_parse._entry.22, ptr @datablob_parse._entry.25, ptr @datablob_parse._entry.28, ptr @datablob_parse._entry.5, ptr @datablob_parse._entry.8, ptr @datablob_parse._entry_ptr, ptr @datablob_parse._entry_ptr.10, ptr @datablob_parse._entry_ptr.13, ptr @datablob_parse._entry_ptr.16, ptr @datablob_parse._entry_ptr.19, ptr @datablob_parse._entry_ptr.21, ptr @datablob_parse._entry_ptr.24, ptr @datablob_parse._entry_ptr.27, ptr @datablob_parse._entry_ptr.30, ptr @datablob_parse._entry_ptr.7, ptr @derived_key_encrypt._entry, ptr @derived_key_encrypt._entry_ptr, ptr @encrypted_key_alloc._entry, ptr @encrypted_key_alloc._entry.39, ptr @encrypted_key_alloc._entry_ptr, ptr @encrypted_key_alloc._entry_ptr.41, ptr @encrypted_key_decrypt._entry, ptr @encrypted_key_decrypt._entry.49, ptr @encrypted_key_decrypt._entry_ptr, ptr @encrypted_key_decrypt._entry_ptr.51, ptr @init_encrypted._entry, ptr @init_encrypted._entry_ptr, ptr @init_skcipher_req._entry, ptr @init_skcipher_req._entry.67, ptr @init_skcipher_req._entry.70, ptr @init_skcipher_req._entry_ptr, ptr @init_skcipher_req._entry_ptr.69, ptr @init_skcipher_req._entry_ptr.72, ptr @request_master_key._entry, ptr @request_master_key._entry.54, ptr @request_master_key._entry_ptr, ptr @request_master_key._entry_ptr.56, ptr @valid_ecryptfs_desc._entry, ptr @valid_ecryptfs_desc._entry.44, ptr @valid_ecryptfs_desc._entry_ptr, ptr @valid_ecryptfs_desc._entry_ptr.46, ptr @.str, ptr @key_type_encrypted, ptr @hash_tfm, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @key_tokens, ptr @.str.6, ptr @key_format_tokens, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @.str.23, ptr @.str.26, ptr @.str.29, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @KEY_TRUSTED_PREFIX, ptr @KEY_USER_PREFIX, ptr @key_format_default, ptr @key_format_ecryptfs, ptr @.str.37, ptr @.str.38, ptr @key_format_enc32, ptr @.str.40, ptr @blksize, ptr @ivsize, ptr @.str.42, ptr @.str.43, ptr @.str.45, ptr @.str.47, ptr @.str.48, ptr @.str.50, ptr @.str.52, ptr @.str.53, ptr @.str.55, ptr @.str.57, ptr @.str.58, ptr @hmac_alg, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @blkcipher_alg, ptr @.str.65, ptr @.str.66, ptr @.str.68, ptr @.str.71, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @hash_alg, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79], section "llvm.metadata"
@0 = internal global [86 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @key_type_encrypted to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hash_tfm to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @datablob_parse._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @key_tokens to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @datablob_parse._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @key_format_tokens to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @datablob_parse._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @datablob_parse._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @datablob_parse._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @datablob_parse._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @datablob_parse._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @datablob_parse._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @datablob_parse._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 93, i32 128, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @datablob_parse._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @KEY_TRUSTED_PREFIX to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @KEY_USER_PREFIX to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @key_format_default to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @key_format_ecryptfs to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @encrypted_key_alloc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @key_format_enc32 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @encrypted_key_alloc._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @blksize to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivsize to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @valid_ecryptfs_desc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 86, i32 128, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @valid_ecryptfs_desc._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @encrypted_key_decrypt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @encrypted_key_decrypt._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @request_master_key._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @request_master_key._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hmac_alg to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @calc_hmac._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @blkcipher_alg to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_skcipher_req._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_skcipher_req._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_skcipher_req._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @derived_key_encrypt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hash_alg to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_encrypted._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aes_get_sizes._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @encrypted_instantiate(ptr noundef %key, ptr nocapture noundef readonly %prep) #0 align 64 {
entry:
  %sg_in.i.i.i = alloca [1 x %struct.scatterlist], align 4
  %sg_out.i.i.i = alloca [2 x %struct.scatterlist], align 4
  %iv.i.i.i = alloca [16 x i8], align 1
  %derived_key.i.i.i = alloca [32 x i8], align 1
  %digest.i.i.i = alloca [32 x i8], align 1
  %derived_key.i.i = alloca [32 x i8], align 1
  %master_key.i.i = alloca ptr, align 4
  %master_keylen.i.i = alloca i32, align 4
  %format = alloca ptr, align 4
  %master_desc = alloca ptr, align 4
  %decrypted_datalen = alloca ptr, align 4
  %hex_encoded_iv = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %format) #10
  %0 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %format, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %master_desc) #10
  %1 = ptrtoint ptr %master_desc to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %master_desc, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %decrypted_datalen) #10
  %2 = ptrtoint ptr %decrypted_datalen to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %decrypted_datalen, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %hex_encoded_iv) #10
  %3 = ptrtoint ptr %hex_encoded_iv to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %hex_encoded_iv, align 4
  %datalen1 = getelementptr inbounds %struct.key_preparsed_payload, ptr %prep, i32 0, i32 4
  %4 = ptrtoint ptr %datalen1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %datalen1, align 4
  %6 = add i32 %5, -32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 -32767, i32 %6)
  %7 = icmp ult i32 %6, -32767
  br i1 %7, label %entry.cleanup_crit_edge, label %lor.lhs.false3

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false3:                                   ; preds = %entry
  %data = getelementptr inbounds %struct.key_preparsed_payload, ptr %prep, i32 0, i32 3
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data, align 8
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %lor.lhs.false3.cleanup_crit_edge, label %if.end8.i

lor.lhs.false3.cleanup_crit_edge:                 ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end8.i:                                        ; preds = %lor.lhs.false3
  %add = add nuw nsw i32 %5, 1
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3264) #13
  %tobool4.not = icmp eq ptr %call9.i, null
  br i1 %tobool4.not, label %if.end8.i.cleanup_crit_edge, label %if.end6

if.end8.i.cleanup_crit_edge:                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6:                                          ; preds = %if.end8.i
  %arrayidx = getelementptr i8, ptr %call9.i, i32 %5
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %arrayidx, align 1
  %11 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data, align 8
  %13 = call ptr @memcpy(ptr %call9.i, ptr %12, i32 %5)
  %call8 = call fastcc i32 @datablob_parse(ptr noundef nonnull %call9.i, ptr noundef nonnull %format, ptr noundef nonnull %master_desc, ptr noundef nonnull %decrypted_datalen, ptr noundef nonnull %hex_encoded_iv)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %if.end6.out_crit_edge, label %if.end11

if.end6.out_crit_edge:                            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end11:                                         ; preds = %if.end6
  %14 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %format, align 4
  %16 = ptrtoint ptr %master_desc to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %master_desc, align 4
  %18 = ptrtoint ptr %decrypted_datalen to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %decrypted_datalen, align 4
  %call12 = call fastcc ptr @encrypted_key_alloc(ptr noundef %key, ptr noundef %15, ptr noundef %17, ptr noundef %19)
  %cmp.i82 = icmp ugt ptr %call12, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i82, label %if.then14, label %if.end16

if.then14:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %call12 to i32
  br label %out

if.end16:                                         ; preds = %if.end11
  %description = getelementptr inbounds %struct.key, ptr %key, i32 0, i32 16, i32 0, i32 4
  %21 = ptrtoint ptr %description to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %description, align 8
  %23 = ptrtoint ptr %decrypted_datalen to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %decrypted_datalen, align 4
  %25 = ptrtoint ptr %hex_encoded_iv to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %hex_encoded_iv, align 4
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %if.end16.if.end5.i_crit_edge, label %land.lhs.true.i

if.end16.if.end5.i_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5.i

land.lhs.true.i:                                  ; preds = %if.end16
  %call.i = call i32 @strcmp(ptr noundef nonnull %15, ptr noundef nonnull dereferenceable(9) @key_format_ecryptfs) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %if.then.i83, label %land.lhs.true.i.if.end5.i_crit_edge

land.lhs.true.i.if.end5.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5.i

if.then.i83:                                      ; preds = %land.lhs.true.i
  %call.i.i = call i32 @strlen(ptr noundef %22) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %call.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i, 16
  br i1 %cmp.not.i.i, label %for.body.preheader.i.i, label %do.end.i.i

for.body.preheader.i.i:                           ; preds = %if.then.i83
  %27 = ptrtoint ptr %22 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %22, align 1
  %conv.i.i = zext i8 %28 to i32
  %arrayidx3.i.i = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv.i.i
  %29 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx3.i.i, align 1
  %31 = and i8 %30, 68
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %cmp5.not.i.i = icmp eq i8 %31, 0
  br i1 %cmp5.not.i.i, label %for.body.preheader.i.i.do.end10.i.i_crit_edge, label %for.cond.i.i

for.body.preheader.i.i.do.end10.i.i_crit_edge:    ; preds = %for.body.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end10.i.i

do.end.i.i:                                       ; preds = %if.then.i83
  call void @__sanitizer_cov_trace_pc() #12
  %call1.i.i84 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, i32 noundef 16) #15
  br label %if.then19

for.cond.i.i:                                     ; preds = %for.body.preheader.i.i
  %arrayidx.1.i.i = getelementptr i8, ptr %22, i32 1
  %32 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx.1.i.i, align 1
  %conv.1.i.i = zext i8 %33 to i32
  %arrayidx3.1.i.i = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv.1.i.i
  %34 = ptrtoint ptr %arrayidx3.1.i.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx3.1.i.i, align 1
  %36 = and i8 %35, 68
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %cmp5.not.1.i.i = icmp eq i8 %36, 0
  br i1 %cmp5.not.1.i.i, label %for.cond.i.i.do.end10.i.i_crit_edge, label %for.cond.1.i.i

for.cond.i.i.do.end10.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end10.i.i

for.cond.1.i.i:                                   ; preds = %for.cond.i.i
  %arrayidx.2.i.i = getelementptr i8, ptr %22, i32 2
  %37 = ptrtoint ptr %arrayidx.2.i.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx.2.i.i, align 1
  %conv.2.i.i = zext i8 %38 to i32
  %arrayidx3.2.i.i = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv.2.i.i
  %39 = ptrtoint ptr %arrayidx3.2.i.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx3.2.i.i, align 1
  %41 = and i8 %40, 68
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %cmp5.not.2.i.i = icmp eq i8 %41, 0
  br i1 %cmp5.not.2.i.i, label %for.cond.1.i.i.do.end10.i.i_crit_edge, label %for.cond.2.i.i

for.cond.1.i.i.do.end10.i.i_crit_edge:            ; preds = %for.cond.1.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end10.i.i

for.cond.2.i.i:                                   ; preds = %for.cond.1.i.i
  %arrayidx.3.i.i = getelementptr i8, ptr %22, i32 3
  %42 = ptrtoint ptr %arrayidx.3.i.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx.3.i.i, align 1
  %conv.3.i.i = zext i8 %43 to i32
  %arrayidx3.3.i.i = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv.3.i.i
  %44 = ptrtoint ptr %arrayidx3.3.i.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx3.3.i.i, align 1
  %46 = and i8 %45, 68
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %cmp5.not.3.i.i = icmp eq i8 %46, 0
  br i1 %cmp5.not.3.i.i, label %for.cond.2.i.i.do.end10.i.i_crit_edge, label %for.cond.3.i.i

for.cond.2.i.i.do.end10.i.i_crit_edge:            ; preds = %for.cond.2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end10.i.i

for.cond.3.i.i:                                   ; preds = %for.cond.2.i.i
  %arrayidx.4.i.i = getelementptr i8, ptr %22, i32 4
  %47 = ptrtoint ptr %arrayidx.4.i.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx.4.i.i, align 1
  %conv.4.i.i = zext i8 %48 to i32
  %arrayidx3.4.i.i = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv.4.i.i
  %49 = ptrtoint ptr %arrayidx3.4.i.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx3.4.i.i, align 1
  %51 = and i8 %50, 68
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %cmp5.not.4.i.i = icmp eq i8 %51, 0
  br i1 %cmp5.not.4.i.i, label %for.cond.3.i.i.do.end10.i.i_crit_edge, label %for.cond.4.i.i

for.cond.3.i.i.do.end10.i.i_crit_edge:            ; preds = %for.cond.3.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end10.i.i

for.cond.4.i.i:                                   ; preds = %for.cond.3.i.i
  %arrayidx.5.i.i = getelementptr i8, ptr %22, i32 5
  %52 = ptrtoint ptr %arrayidx.5.i.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx.5.i.i, align 1
  %conv.5.i.i = zext i8 %53 to i32
  %arrayidx3.5.i.i = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv.5.i.i
  %54 = ptrtoint ptr %arrayidx3.5.i.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx3.5.i.i, align 1
  %56 = and i8 %55, 68
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %cmp5.not.5.i.i = icmp eq i8 %56, 0
  br i1 %cmp5.not.5.i.i, label %for.cond.4.i.i.do.end10.i.i_crit_edge, label %for.cond.5.i.i

for.cond.4.i.i.do.end10.i.i_crit_edge:            ; preds = %for.cond.4.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end10.i.i

for.cond.5.i.i:                                   ; preds = %for.cond.4.i.i
  %arrayidx.6.i.i = getelementptr i8, ptr %22, i32 6
  %57 = ptrtoint ptr %arrayidx.6.i.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx.6.i.i, align 1
  %conv.6.i.i = zext i8 %58 to i32
  %arrayidx3.6.i.i = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv.6.i.i
  %59 = ptrtoint ptr %arrayidx3.6.i.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx3.6.i.i, align 1
  %61 = and i8 %60, 68
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %cmp5.not.6.i.i = icmp eq i8 %61, 0
  br i1 %cmp5.not.6.i.i, label %for.cond.5.i.i.do.end10.i.i_crit_edge, label %for.cond.6.i.i

for.cond.5.i.i.do.end10.i.i_crit_edge:            ; preds = %for.cond.5.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end10.i.i

for.cond.6.i.i:                                   ; preds = %for.cond.5.i.i
  %arrayidx.7.i.i = getelementptr i8, ptr %22, i32 7
  %62 = ptrtoint ptr %arrayidx.7.i.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx.7.i.i, align 1
  %conv.7.i.i = zext i8 %63 to i32
  %arrayidx3.7.i.i = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv.7.i.i
  %64 = ptrtoint ptr %arrayidx3.7.i.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %arrayidx3.7.i.i, align 1
  %66 = and i8 %65, 68
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %cmp5.not.7.i.i = icmp eq i8 %66, 0
  br i1 %cmp5.not.7.i.i, label %for.cond.6.i.i.do.end10.i.i_crit_edge, label %for.cond.7.i.i

for.cond.6.i.i.do.end10.i.i_crit_edge:            ; preds = %for.cond.6.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end10.i.i

for.cond.7.i.i:                                   ; preds = %for.cond.6.i.i
  %arrayidx.8.i.i = getelementptr i8, ptr %22, i32 8
  %67 = ptrtoint ptr %arrayidx.8.i.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %arrayidx.8.i.i, align 1
  %conv.8.i.i = zext i8 %68 to i32
  %arrayidx3.8.i.i = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv.8.i.i
  %69 = ptrtoint ptr %arrayidx3.8.i.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %arrayidx3.8.i.i, align 1
  %71 = and i8 %70, 68
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %cmp5.not.8.i.i = icmp eq i8 %71, 0
  br i1 %cmp5.not.8.i.i, label %for.cond.7.i.i.do.end10.i.i_crit_edge, label %for.cond.8.i.i

for.cond.7.i.i.do.end10.i.i_crit_edge:            ; preds = %for.cond.7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end10.i.i

for.cond.8.i.i:                                   ; preds = %for.cond.7.i.i
  %arrayidx.9.i.i = getelementptr i8, ptr %22, i32 9
  %72 = ptrtoint ptr %arrayidx.9.i.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %arrayidx.9.i.i, align 1
  %conv.9.i.i = zext i8 %73 to i32
  %arrayidx3.9.i.i = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv.9.i.i
  %74 = ptrtoint ptr %arrayidx3.9.i.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %arrayidx3.9.i.i, align 1
  %76 = and i8 %75, 68
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %76)
  %cmp5.not.9.i.i = icmp eq i8 %76, 0
  br i1 %cmp5.not.9.i.i, label %for.cond.8.i.i.do.end10.i.i_crit_edge, label %for.cond.9.i.i

for.cond.8.i.i.do.end10.i.i_crit_edge:            ; preds = %for.cond.8.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end10.i.i

for.cond.9.i.i:                                   ; preds = %for.cond.8.i.i
  %arrayidx.10.i.i = getelementptr i8, ptr %22, i32 10
  %77 = ptrtoint ptr %arrayidx.10.i.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %arrayidx.10.i.i, align 1
  %conv.10.i.i = zext i8 %78 to i32
  %arrayidx3.10.i.i = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv.10.i.i
  %79 = ptrtoint ptr %arrayidx3.10.i.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %arrayidx3.10.i.i, align 1
  %81 = and i8 %80, 68
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %81)
  %cmp5.not.10.i.i = icmp eq i8 %81, 0
  br i1 %cmp5.not.10.i.i, label %for.cond.9.i.i.do.end10.i.i_crit_edge, label %for.cond.10.i.i

for.cond.9.i.i.do.end10.i.i_crit_edge:            ; preds = %for.cond.9.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end10.i.i

for.cond.10.i.i:                                  ; preds = %for.cond.9.i.i
  %arrayidx.11.i.i = getelementptr i8, ptr %22, i32 11
  %82 = ptrtoint ptr %arrayidx.11.i.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %arrayidx.11.i.i, align 1
  %conv.11.i.i = zext i8 %83 to i32
  %arrayidx3.11.i.i = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv.11.i.i
  %84 = ptrtoint ptr %arrayidx3.11.i.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %arrayidx3.11.i.i, align 1
  %86 = and i8 %85, 68
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %86)
  %cmp5.not.11.i.i = icmp eq i8 %86, 0
  br i1 %cmp5.not.11.i.i, label %for.cond.10.i.i.do.end10.i.i_crit_edge, label %for.cond.11.i.i

for.cond.10.i.i.do.end10.i.i_crit_edge:           ; preds = %for.cond.10.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end10.i.i

for.cond.11.i.i:                                  ; preds = %for.cond.10.i.i
  %arrayidx.12.i.i = getelementptr i8, ptr %22, i32 12
  %87 = ptrtoint ptr %arrayidx.12.i.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %arrayidx.12.i.i, align 1
  %conv.12.i.i = zext i8 %88 to i32
  %arrayidx3.12.i.i = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv.12.i.i
  %89 = ptrtoint ptr %arrayidx3.12.i.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %arrayidx3.12.i.i, align 1
  %91 = and i8 %90, 68
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %91)
  %cmp5.not.12.i.i = icmp eq i8 %91, 0
  br i1 %cmp5.not.12.i.i, label %for.cond.11.i.i.do.end10.i.i_crit_edge, label %for.cond.12.i.i

for.cond.11.i.i.do.end10.i.i_crit_edge:           ; preds = %for.cond.11.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end10.i.i

for.cond.12.i.i:                                  ; preds = %for.cond.11.i.i
  %arrayidx.13.i.i = getelementptr i8, ptr %22, i32 13
  %92 = ptrtoint ptr %arrayidx.13.i.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %arrayidx.13.i.i, align 1
  %conv.13.i.i = zext i8 %93 to i32
  %arrayidx3.13.i.i = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv.13.i.i
  %94 = ptrtoint ptr %arrayidx3.13.i.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %arrayidx3.13.i.i, align 1
  %96 = and i8 %95, 68
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %96)
  %cmp5.not.13.i.i = icmp eq i8 %96, 0
  br i1 %cmp5.not.13.i.i, label %for.cond.12.i.i.do.end10.i.i_crit_edge, label %for.cond.13.i.i

for.cond.12.i.i.do.end10.i.i_crit_edge:           ; preds = %for.cond.12.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end10.i.i

for.cond.13.i.i:                                  ; preds = %for.cond.12.i.i
  %arrayidx.14.i.i = getelementptr i8, ptr %22, i32 14
  %97 = ptrtoint ptr %arrayidx.14.i.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %arrayidx.14.i.i, align 1
  %conv.14.i.i = zext i8 %98 to i32
  %arrayidx3.14.i.i = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv.14.i.i
  %99 = ptrtoint ptr %arrayidx3.14.i.i to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %arrayidx3.14.i.i, align 1
  %101 = and i8 %100, 68
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %101)
  %cmp5.not.14.i.i = icmp eq i8 %101, 0
  br i1 %cmp5.not.14.i.i, label %for.cond.13.i.i.do.end10.i.i_crit_edge, label %for.cond.14.i.i

for.cond.13.i.i.do.end10.i.i_crit_edge:           ; preds = %for.cond.13.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end10.i.i

for.cond.14.i.i:                                  ; preds = %for.cond.13.i.i
  %arrayidx.15.i.i = getelementptr i8, ptr %22, i32 15
  %102 = ptrtoint ptr %arrayidx.15.i.i to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %arrayidx.15.i.i, align 1
  %conv.15.i.i = zext i8 %103 to i32
  %arrayidx3.15.i.i = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv.15.i.i
  %104 = ptrtoint ptr %arrayidx3.15.i.i to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %arrayidx3.15.i.i, align 1
  %106 = and i8 %105, 68
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %106)
  %cmp5.not.15.i.i = icmp eq i8 %106, 0
  br i1 %cmp5.not.15.i.i, label %for.cond.14.i.i.do.end10.i.i_crit_edge, label %if.end.i85

for.cond.14.i.i.do.end10.i.i_crit_edge:           ; preds = %for.cond.14.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end10.i.i

do.end10.i.i:                                     ; preds = %for.cond.14.i.i.do.end10.i.i_crit_edge, %for.cond.13.i.i.do.end10.i.i_crit_edge, %for.cond.12.i.i.do.end10.i.i_crit_edge, %for.cond.11.i.i.do.end10.i.i_crit_edge, %for.cond.10.i.i.do.end10.i.i_crit_edge, %for.cond.9.i.i.do.end10.i.i_crit_edge, %for.cond.8.i.i.do.end10.i.i_crit_edge, %for.cond.7.i.i.do.end10.i.i_crit_edge, %for.cond.6.i.i.do.end10.i.i_crit_edge, %for.cond.5.i.i.do.end10.i.i_crit_edge, %for.cond.4.i.i.do.end10.i.i_crit_edge, %for.cond.3.i.i.do.end10.i.i_crit_edge, %for.cond.2.i.i.do.end10.i.i_crit_edge, %for.cond.1.i.i.do.end10.i.i_crit_edge, %for.cond.i.i.do.end10.i.i_crit_edge, %for.body.preheader.i.i.do.end10.i.i_crit_edge
  %call12.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45) #15
  br label %if.then19

if.end.i85:                                       ; preds = %for.cond.14.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %payload_data.i = getelementptr inbounds %struct.encrypted_key_payload, ptr %call12, i32 0, i32 11
  %call4.i = call i32 @ecryptfs_fill_auth_tok(ptr noundef %payload_data.i, ptr noundef %22) #10
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.end.i85, %land.lhs.true.i.if.end5.i_crit_edge, %if.end16.if.end5.i_crit_edge
  call fastcc void @__ekey_init(ptr noundef %call12, ptr noundef %15, ptr noundef %17, ptr noundef %24) #10
  %tobool6.not.i = icmp eq ptr %26, null
  br i1 %tobool6.not.i, label %encrypted_init.exit.thread93, label %if.else.i

encrypted_init.exit.thread93:                     ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #12
  %iv.i = getelementptr inbounds %struct.encrypted_key_payload, ptr %call12, i32 0, i32 4
  %107 = ptrtoint ptr %iv.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %iv.i, align 4
  %109 = load i32, ptr @ivsize, align 4
  call void @get_random_bytes(ptr noundef %108, i32 noundef %109) #10
  %decrypted_data.i = getelementptr inbounds %struct.encrypted_key_payload, ptr %call12, i32 0, i32 10
  %110 = ptrtoint ptr %decrypted_data.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %decrypted_data.i, align 4
  %decrypted_datalen.i = getelementptr inbounds %struct.encrypted_key_payload, ptr %call12, i32 0, i32 7
  %112 = ptrtoint ptr %decrypted_datalen.i to i32
  call void @__asan_load2_noabort(i32 %112)
  %113 = load i16, ptr %decrypted_datalen.i, align 2
  %conv.i = zext i16 %113 to i32
  call void @get_random_bytes(ptr noundef %111, i32 noundef %conv.i) #10
  br label %do.body21

if.else.i:                                        ; preds = %if.end5.i
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %derived_key.i.i) #10
  %114 = call ptr @memset(ptr %derived_key.i.i, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %master_key.i.i) #10
  %115 = ptrtoint ptr %master_key.i.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr inttoptr (i32 -1 to ptr), ptr %master_key.i.i, align 4, !annotation !188
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %master_keylen.i.i) #10
  %116 = ptrtoint ptr %master_keylen.i.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 -1, ptr %master_keylen.i.i, align 4, !annotation !188
  %117 = load i32, ptr @blksize, align 4
  %decrypted_datalen.i.i = getelementptr inbounds %struct.encrypted_key_payload, ptr %call12, i32 0, i32 7
  %118 = ptrtoint ptr %decrypted_datalen.i.i to i32
  call void @__asan_load2_noabort(i32 %118)
  %119 = load i16, ptr %decrypted_datalen.i.i, align 2
  %conv.i22.i = zext i16 %119 to i32
  %sub.i.i = add i32 %117, -1
  %add.i.i = add i32 %sub.i.i, %conv.i22.i
  %120 = srem i32 %add.i.i, %117
  %mul.i.i = sub i32 %add.i.i, %120
  %121 = load i32, ptr @ivsize, align 4
  %add1.i.i = add i32 %121, 1
  %add2.i.i = add i32 %add1.i.i, %mul.i.i
  %add3.i.i = shl i32 %add2.i.i, 1
  %mul4.i.i = add i32 %add3.i.i, 64
  %call.i23.i = call i32 @strlen(ptr noundef nonnull %26) #14
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i23.i, i32 %mul4.i.i)
  %cmp.not.i24.i = icmp eq i32 %call.i23.i, %mul4.i.i
  br i1 %cmp.not.i24.i, label %if.end.i.i86, label %if.else.i.encrypted_init.exit.thread98_crit_edge

if.else.i.encrypted_init.exit.thread98_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %encrypted_init.exit.thread98

if.end.i.i86:                                     ; preds = %if.else.i
  %mul6.i.i = shl i32 %121, 1
  %add.ptr.i.i = getelementptr i8, ptr %26, i32 %mul6.i.i
  %add.ptr7.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 2
  %iv.i.i = getelementptr inbounds %struct.encrypted_key_payload, ptr %call12, i32 0, i32 4
  %122 = ptrtoint ptr %iv.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %iv.i.i, align 4
  %call8.i.i = call i32 @hex2bin(ptr noundef %123, ptr noundef nonnull %26, i32 noundef %121) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i.i)
  %cmp9.i.i = icmp slt i32 %call8.i.i, 0
  br i1 %cmp9.i.i, label %if.end.i.i86.encrypted_init.exit.thread98_crit_edge, label %if.end12.i.i

if.end.i.i86.encrypted_init.exit.thread98_crit_edge: ; preds = %if.end.i.i86
  call void @__sanitizer_cov_trace_pc() #12
  br label %encrypted_init.exit.thread98

if.end12.i.i:                                     ; preds = %if.end.i.i86
  %encrypted_data.i.i = getelementptr inbounds %struct.encrypted_key_payload, ptr %call12, i32 0, i32 5
  %124 = ptrtoint ptr %encrypted_data.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %encrypted_data.i.i, align 4
  %call13.i.i = call i32 @hex2bin(ptr noundef %125, ptr noundef %add.ptr7.i.i, i32 noundef %mul.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i.i)
  %cmp14.i.i = icmp slt i32 %call13.i.i, 0
  br i1 %cmp14.i.i, label %if.end12.i.i.encrypted_init.exit.thread98_crit_edge, label %if.end17.i.i88

if.end12.i.i.encrypted_init.exit.thread98_crit_edge: ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %encrypted_init.exit.thread98

if.end17.i.i88:                                   ; preds = %if.end12.i.i
  %format18.i.i = getelementptr inbounds %struct.encrypted_key_payload, ptr %call12, i32 0, i32 1
  %126 = ptrtoint ptr %format18.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %format18.i.i, align 4
  %datablob_len.i.i = getelementptr inbounds %struct.encrypted_key_payload, ptr %call12, i32 0, i32 6
  %128 = ptrtoint ptr %datablob_len.i.i to i32
  call void @__asan_load2_noabort(i32 %128)
  %129 = load i16, ptr %datablob_len.i.i, align 4
  %conv19.i.i = zext i16 %129 to i32
  %add.ptr20.i.i = getelementptr i8, ptr %127, i32 %conv19.i.i
  %mul21.i.i = shl i32 %mul.i.i, 1
  %add.ptr22.i.i = getelementptr i8, ptr %add.ptr7.i.i, i32 %mul21.i.i
  %call23.i.i = call i32 @hex2bin(ptr noundef %add.ptr20.i.i, ptr noundef %add.ptr22.i.i, i32 noundef 32) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i.i)
  %cmp24.i.i87 = icmp slt i32 %call23.i.i, 0
  br i1 %cmp24.i.i87, label %if.end17.i.i88.encrypted_init.exit.thread98_crit_edge, label %if.end27.i.i

if.end17.i.i88.encrypted_init.exit.thread98_crit_edge: ; preds = %if.end17.i.i88
  call void @__sanitizer_cov_trace_pc() #12
  br label %encrypted_init.exit.thread98

if.end27.i.i:                                     ; preds = %if.end17.i.i88
  %call28.i.i = call fastcc ptr @request_master_key(ptr noundef %call12, ptr noundef nonnull %master_key.i.i, ptr noundef nonnull %master_keylen.i.i) #10
  %cmp.i.i.i = icmp ugt ptr %call28.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %if.then30.i.i, label %if.end32.i.i

if.then30.i.i:                                    ; preds = %if.end27.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %130 = ptrtoint ptr %call28.i.i to i32
  br label %encrypted_init.exit

if.end32.i.i:                                     ; preds = %if.end27.i.i
  %131 = ptrtoint ptr %master_key.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %master_key.i.i, align 4
  %133 = ptrtoint ptr %master_keylen.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %master_keylen.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %derived_key.i.i.i) #10
  %135 = call ptr @memset(ptr %derived_key.i.i.i, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %digest.i.i.i) #10
  %add.i.i.i.i = add i32 %134, 9
  %136 = call i32 @llvm.umax.i32(i32 %add.i.i.i.i, i32 32) #10
  %137 = call ptr @memset(ptr %digest.i.i.i, i32 255, i32 32)
  %call9.i.i.i.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %136, i32 noundef 3520) #13
  %tobool.not.i.i.i.i = icmp eq ptr %call9.i.i.i.i.i.i, null
  br i1 %tobool.not.i.i.i.i, label %if.end32.i.i.datablob_hmac_verify.exit.i.i_crit_edge, label %get_derived_key.exit.i.i.i

if.end32.i.i.datablob_hmac_verify.exit.i.i_crit_edge: ; preds = %if.end32.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %datablob_hmac_verify.exit.i.i

get_derived_key.exit.i.i.i:                       ; preds = %if.end32.i.i
  %138 = call ptr @memcpy(ptr %call9.i.i.i.i.i.i, ptr @.str.63, i32 9)
  %call8.i.i.i.i = call i32 @strlen(ptr noundef nonnull %call9.i.i.i.i.i.i) #14
  %add.ptr.i.i.i.i = getelementptr i8, ptr %call9.i.i.i.i.i.i, i32 %call8.i.i.i.i
  %add.ptr9.i.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i.i, i32 1
  %139 = call ptr @memcpy(ptr %add.ptr9.i.i.i.i, ptr %132, i32 %134)
  %140 = load ptr, ptr @hash_tfm, align 4
  %call10.i.i.i.i = call i32 @crypto_shash_tfm_digest(ptr noundef %140, ptr noundef nonnull %call9.i.i.i.i.i.i, i32 noundef %136, ptr noundef nonnull %derived_key.i.i.i) #10
  call void @kfree_sensitive(ptr noundef nonnull %call9.i.i.i.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i.i.i.i)
  %cmp.i90.i.i = icmp slt i32 %call10.i.i.i.i, 0
  br i1 %cmp.i90.i.i, label %get_derived_key.exit.i.i.i.datablob_hmac_verify.exit.i.i_crit_edge, label %if.end.i.i.i

get_derived_key.exit.i.i.i.datablob_hmac_verify.exit.i.i_crit_edge: ; preds = %get_derived_key.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %datablob_hmac_verify.exit.i.i

if.end.i.i.i:                                     ; preds = %get_derived_key.exit.i.i.i
  %141 = ptrtoint ptr %datablob_len.i.i to i32
  call void @__asan_load2_noabort(i32 %141)
  %142 = load i16, ptr %datablob_len.i.i, align 4
  br i1 %tobool.not.i, label %if.then1.i.i.i, label %if.end.i.i.i.if.end6.i.i.i_crit_edge

if.end.i.i.i.if.end6.i.i.i_crit_edge:             ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6.i.i.i

if.then1.i.i.i:                                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %master_desc.i.i.i = getelementptr inbounds %struct.encrypted_key_payload, ptr %call12, i32 0, i32 2
  %143 = ptrtoint ptr %format18.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %format18.i.i, align 4
  %call3.i.i.i = call i32 @strlen(ptr noundef %144) #14
  %145 = trunc i32 %call3.i.i.i to i16
  %146 = xor i16 %145, -1
  %conv4.i.i.i = add i16 %142, %146
  br label %if.end6.i.i.i

if.end6.i.i.i:                                    ; preds = %if.then1.i.i.i, %if.end.i.i.i.if.end6.i.i.i_crit_edge
  %p.0.in.i.i.i = phi ptr [ %master_desc.i.i.i, %if.then1.i.i.i ], [ %format18.i.i, %if.end.i.i.i.if.end6.i.i.i_crit_edge ]
  %len.0.i.i.i = phi i16 [ %conv4.i.i.i, %if.then1.i.i.i ], [ %142, %if.end.i.i.i.if.end6.i.i.i_crit_edge ]
  %147 = ptrtoint ptr %p.0.in.i.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %p.0.i.i.i = load ptr, ptr %p.0.in.i.i.i, align 4
  %conv9.i.i.i = zext i16 %len.0.i.i.i to i32
  %call.i.i.i.i = call ptr @crypto_alloc_shash(ptr noundef nonnull @hmac_alg, i32 noundef 0, i32 noundef 0) #10
  %cmp.i.i.i.i.i = icmp ugt ptr %call.i.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i.i.i, label %do.end.i.i.i.i, label %if.end.i.i.i.i

do.end.i.i.i.i:                                   ; preds = %if.end6.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %148 = ptrtoint ptr %call.i.i.i.i to i32
  %call3.i.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61, ptr noundef nonnull @hmac_alg, i32 noundef %148) #15
  br label %calc_hmac.exit.i.i.i

if.end.i.i.i.i:                                   ; preds = %if.end6.i.i.i
  %call5.i.i.i.i = call i32 @crypto_shash_setkey(ptr noundef %call.i.i.i.i, ptr noundef nonnull %derived_key.i.i.i, i32 noundef 32) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i.i.i)
  %tobool.not.i40.i.i.i = icmp eq i32 %call5.i.i.i.i, 0
  br i1 %tobool.not.i40.i.i.i, label %if.then6.i.i.i.i, label %if.end.i.i.i.i.if.end8.i.i.i.i_crit_edge

if.end.i.i.i.i.if.end8.i.i.i.i_crit_edge:         ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.i.i.i.i

if.then6.i.i.i.i:                                 ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call7.i.i.i.i = call i32 @crypto_shash_tfm_digest(ptr noundef %call.i.i.i.i, ptr noundef %p.0.i.i.i, i32 noundef %conv9.i.i.i, ptr noundef nonnull %digest.i.i.i) #10
  br label %if.end8.i.i.i.i

if.end8.i.i.i.i:                                  ; preds = %if.then6.i.i.i.i, %if.end.i.i.i.i.if.end8.i.i.i.i_crit_edge
  %err.0.i.i.i.i = phi i32 [ %call5.i.i.i.i, %if.end.i.i.i.i.if.end8.i.i.i.i_crit_edge ], [ %call7.i.i.i.i, %if.then6.i.i.i.i ]
  %base.i.i.i.i.i.i = getelementptr inbounds %struct.crypto_shash, ptr %call.i.i.i.i, i32 0, i32 2
  call void @crypto_destroy_tfm(ptr noundef %call.i.i.i.i, ptr noundef %base.i.i.i.i.i.i) #10
  br label %calc_hmac.exit.i.i.i

calc_hmac.exit.i.i.i:                             ; preds = %if.end8.i.i.i.i, %do.end.i.i.i.i
  %retval.0.i41.i.i.i = phi i32 [ %148, %do.end.i.i.i.i ], [ %err.0.i.i.i.i, %if.end8.i.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i41.i.i.i)
  %cmp11.i.i.i = icmp slt i32 %retval.0.i41.i.i.i, 0
  br i1 %cmp11.i.i.i, label %calc_hmac.exit.i.i.i.datablob_hmac_verify.exit.i.i_crit_edge, label %if.end14.i.i.i

calc_hmac.exit.i.i.i.datablob_hmac_verify.exit.i.i_crit_edge: ; preds = %calc_hmac.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %datablob_hmac_verify.exit.i.i

if.end14.i.i.i:                                   ; preds = %calc_hmac.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %149 = ptrtoint ptr %format18.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %format18.i.i, align 4
  %151 = ptrtoint ptr %datablob_len.i.i to i32
  call void @__asan_load2_noabort(i32 %151)
  %152 = load i16, ptr %datablob_len.i.i, align 4
  %conv18.i.i.i = zext i16 %152 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %150, i32 %conv18.i.i.i
  %call.i42.i.i.i = call i32 @__crypto_memneq(ptr noundef nonnull %digest.i.i.i, ptr noundef %add.ptr.i.i.i, i32 noundef 32) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i42.i.i.i)
  %cmp.not.i.not.i.i.i = icmp eq i32 %call.i42.i.i.i, 0
  %spec.select = select i1 %cmp.not.i.not.i.i.i, i32 0, i32 -22
  br label %datablob_hmac_verify.exit.i.i

datablob_hmac_verify.exit.i.i:                    ; preds = %if.end14.i.i.i, %calc_hmac.exit.i.i.i.datablob_hmac_verify.exit.i.i_crit_edge, %get_derived_key.exit.i.i.i.datablob_hmac_verify.exit.i.i_crit_edge, %if.end32.i.i.datablob_hmac_verify.exit.i.i_crit_edge
  %ret.0.i.i.i = phi i32 [ %call10.i.i.i.i, %get_derived_key.exit.i.i.i.datablob_hmac_verify.exit.i.i_crit_edge ], [ %retval.0.i41.i.i.i, %calc_hmac.exit.i.i.i.datablob_hmac_verify.exit.i.i_crit_edge ], [ -12, %if.end32.i.i.datablob_hmac_verify.exit.i.i_crit_edge ], [ %spec.select, %if.end14.i.i.i ]
  %153 = call ptr @memset(ptr %derived_key.i.i.i, i32 0, i32 32)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %derived_key.i.i.i) #10, !srcloc !189
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %digest.i.i.i) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %derived_key.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i.i.i)
  %cmp34.i.i = icmp slt i32 %ret.0.i.i.i, 0
  br i1 %cmp34.i.i, label %do.end.i25.i, label %if.end39.i.i

do.end.i25.i:                                     ; preds = %datablob_hmac_verify.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call38.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, i32 noundef %ret.0.i.i.i) #15
  br label %out.i.i

if.end39.i.i:                                     ; preds = %datablob_hmac_verify.exit.i.i
  %154 = ptrtoint ptr %master_key.i.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %master_key.i.i, align 4
  %156 = ptrtoint ptr %master_keylen.i.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %master_keylen.i.i, align 4
  %add.i.i.i = add i32 %157, 9
  %158 = call i32 @llvm.umax.i32(i32 %add.i.i.i, i32 32) #10
  %call9.i.i.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %158, i32 noundef 3520) #13
  %tobool.not.i94.i.i = icmp eq ptr %call9.i.i.i.i.i, null
  br i1 %tobool.not.i94.i.i, label %if.end39.i.i.out.i.i_crit_edge, label %get_derived_key.exit.i.i

if.end39.i.i.out.i.i_crit_edge:                   ; preds = %if.end39.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i.i

get_derived_key.exit.i.i:                         ; preds = %if.end39.i.i
  %159 = ptrtoint ptr %call9.i.i.i.i.i to i32
  call void @__asan_store8_noabort(i32 %159)
  store i64 4994003113364248832, ptr %call9.i.i.i.i.i, align 128
  %call8.i.i.i = call i32 @strlen(ptr noundef nonnull %call9.i.i.i.i.i) #14
  %add.ptr.i96.i.i = getelementptr i8, ptr %call9.i.i.i.i.i, i32 %call8.i.i.i
  %add.ptr9.i.i.i = getelementptr i8, ptr %add.ptr.i96.i.i, i32 1
  %160 = call ptr @memcpy(ptr %add.ptr9.i.i.i, ptr %155, i32 %157)
  %161 = load ptr, ptr @hash_tfm, align 4
  %call10.i.i.i = call i32 @crypto_shash_tfm_digest(ptr noundef %161, ptr noundef nonnull %call9.i.i.i.i.i, i32 noundef %158, ptr noundef nonnull %derived_key.i.i) #10
  call void @kfree_sensitive(ptr noundef nonnull %call9.i.i.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i.i.i)
  %cmp41.i.i = icmp slt i32 %call10.i.i.i, 0
  br i1 %cmp41.i.i, label %get_derived_key.exit.i.i.out.i.i_crit_edge, label %if.end44.i.i

get_derived_key.exit.i.i.out.i.i_crit_edge:       ; preds = %get_derived_key.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i.i

if.end44.i.i:                                     ; preds = %get_derived_key.exit.i.i
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %sg_in.i.i.i) #10
  %162 = getelementptr inbounds %struct.scatterlist, ptr %sg_in.i.i.i, i32 0, i32 1
  %163 = getelementptr inbounds %struct.scatterlist, ptr %sg_in.i.i.i, i32 0, i32 2
  %164 = call ptr @memset(ptr %sg_in.i.i.i, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %sg_out.i.i.i) #10
  %165 = call ptr @memset(ptr %sg_out.i.i.i, i32 255, i32 40)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %iv.i.i.i) #10
  %166 = call ptr @memset(ptr %iv.i.i.i, i32 255, i32 16)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %167 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i97.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %167, i32 noundef 3264, i32 noundef 16) #16
  %tobool.not.i98.i.i = icmp eq ptr %call7.i.i97.i.i, null
  br i1 %tobool.not.i98.i.i, label %derived_key_decrypt.exit.thread.i.i, label %if.end.i99.i.i

derived_key_decrypt.exit.thread.i.i:              ; preds = %if.end44.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %iv.i.i.i) #10
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %sg_out.i.i.i) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg_in.i.i.i) #10
  br label %do.end52.i.i

if.end.i99.i.i:                                   ; preds = %if.end44.i.i
  %168 = load i32, ptr @blksize, align 4
  %169 = ptrtoint ptr %decrypted_datalen.i.i to i32
  call void @__asan_load2_noabort(i32 %169)
  %170 = load i16, ptr %decrypted_datalen.i.i, align 2
  %call1.i.i.i = call fastcc ptr @init_skcipher_req(ptr noundef nonnull %derived_key.i.i) #10
  %171 = ptrtoint ptr %call1.i.i.i to i32
  %cmp.i.i.i.i = icmp ugt ptr %call1.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i.i, label %if.end.i99.i.i.derived_key_decrypt.exit.i.i_crit_edge, label %if.end5.i.i.i

if.end.i99.i.i.derived_key_decrypt.exit.i.i_crit_edge: ; preds = %if.end.i99.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %derived_key_decrypt.exit.i.i

if.end5.i.i.i:                                    ; preds = %if.end.i99.i.i
  %sub.i.i.i = add i32 %168, -1
  %conv.i.i.i = zext i16 %170 to i32
  %add.i100.i.i = add i32 %sub.i.i.i, %conv.i.i.i
  %172 = srem i32 %add.i100.i.i, %168
  %mul.i.i.i = sub i32 %add.i100.i.i, %172
  call void @sg_init_table(ptr noundef nonnull %sg_in.i.i.i, i32 noundef 1) #10
  call void @sg_init_table(ptr noundef nonnull %sg_out.i.i.i, i32 noundef 2) #10
  %173 = ptrtoint ptr %encrypted_data.i.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %encrypted_data.i.i, align 4
  %175 = ptrtoint ptr %174 to i32
  %cmp.i1.i.i.i = icmp ugt ptr %174, inttoptr (i32 -1073741825 to ptr)
  br i1 %cmp.i1.i.i.i, label %land.lhs.true.i.i.i.i, label %if.end5.i.i.i.do.body5.i.i.i.i_crit_edge, !prof !190

if.end5.i.i.i.do.body5.i.i.i.i_crit_edge:         ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body5.i.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %if.end5.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %176 = load ptr, ptr @high_memory, align 4
  %cmp1.i.i.i.i = icmp ugt ptr %176, %174
  br i1 %cmp1.i.i.i.i, label %land.rhs.i.i.i.i, label %land.lhs.true.i.i.i.i.do.body5.i.i.i.i_crit_edge, !prof !190

land.lhs.true.i.i.i.i.do.body5.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body5.i.i.i.i

land.rhs.i.i.i.i:                                 ; preds = %land.lhs.true.i.i.i.i
  %sub.i.i.i.i89 = add i32 %175, 1073741824
  %shr.i.i.i.i = lshr i32 %sub.i.i.i.i89, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %177 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i.i101.i.i = add i32 %177, %shr.i.i.i.i
  %call.i.i102.i.i = call i32 @pfn_valid(i32 noundef %add.i.i101.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i102.i.i)
  %tobool.i.i.i.i = icmp eq i32 %call.i.i102.i.i, 0
  br i1 %tobool.i.i.i.i, label %land.rhs.i.i.i.i.do.body5.i.i.i.i_crit_edge, label %do.end8.i.i.i.i, !prof !191

land.rhs.i.i.i.i.do.body5.i.i.i.i_crit_edge:      ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body5.i.i.i.i

do.body5.i.i.i.i:                                 ; preds = %land.rhs.i.i.i.i.do.body5.i.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.do.body5.i.i.i.i_crit_edge, %if.end5.i.i.i.do.body5.i.i.i.i_crit_edge
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 160, 0\0A.popsection", ""() #10, !srcloc !192
  unreachable

do.end8.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %178 = load ptr, ptr @mem_map, align 4
  %add.ptr.i.i103.i.i = getelementptr %struct.page, ptr %178, i32 %shr.i.i.i.i
  %179 = ptrtoint ptr %sg_in.i.i.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %sg_in.i.i.i, align 4
  %181 = ptrtoint ptr %add.ptr.i.i103.i.i to i32
  %and2.i.i.i.i.i.i = and i32 %181, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i.i.i.i)
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %and2.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i, label %do.body11.i.i.i.i.i.i, label %do.body5.i.i.i.i.i.i, !prof !190

do.body5.i.i.i.i.i.i:                             ; preds = %do.end8.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #10, !srcloc !193
  unreachable

do.body11.i.i.i.i.i.i:                            ; preds = %do.end8.i.i.i.i
  %and.i.i.i.i.i.i.i = and i32 %180, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i.i.i)
  %tobool.i.not.i.i.i.i.i.i = icmp eq i32 %and.i.i.i.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i.i.i.i, label %sg_set_buf.exit.i.i.i, label %do.body19.i.i.i.i.i.i, !prof !190

do.body19.i.i.i.i.i.i:                            ; preds = %do.body11.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #10, !srcloc !194
  unreachable

sg_set_buf.exit.i.i.i:                            ; preds = %do.body11.i.i.i.i.i.i
  %and.i.i.i.i = and i32 %175, 4095
  %and.i.i.i.i.i.i = and i32 %180, 3
  %or.i.i.i.i.i.i = or i32 %and.i.i.i.i.i.i, %181
  %182 = ptrtoint ptr %sg_in.i.i.i to i32
  call void @__asan_store4_noabort(i32 %182)
  store i32 %or.i.i.i.i.i.i, ptr %sg_in.i.i.i, align 4
  %183 = ptrtoint ptr %162 to i32
  call void @__asan_store4_noabort(i32 %183)
  store i32 %and.i.i.i.i, ptr %162, align 4
  %184 = ptrtoint ptr %163 to i32
  call void @__asan_store4_noabort(i32 %184)
  store i32 %mul.i.i.i, ptr %163, align 4
  %decrypted_data.i.i.i = getelementptr inbounds %struct.encrypted_key_payload, ptr %call12, i32 0, i32 10
  %185 = ptrtoint ptr %decrypted_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %decrypted_data.i.i.i, align 4
  %187 = ptrtoint ptr %decrypted_datalen.i.i to i32
  call void @__asan_load2_noabort(i32 %187)
  %188 = load i16, ptr %decrypted_datalen.i.i, align 2
  %conv9.i104.i.i = zext i16 %188 to i32
  %189 = ptrtoint ptr %186 to i32
  %cmp.i2.i.i.i = icmp ugt ptr %186, inttoptr (i32 -1073741825 to ptr)
  br i1 %cmp.i2.i.i.i, label %land.lhs.true.i4.i.i.i, label %sg_set_buf.exit.i.i.i.do.body5.i11.i.i.i_crit_edge, !prof !190

sg_set_buf.exit.i.i.i.do.body5.i11.i.i.i_crit_edge: ; preds = %sg_set_buf.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body5.i11.i.i.i

land.lhs.true.i4.i.i.i:                           ; preds = %sg_set_buf.exit.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %190 = load ptr, ptr @high_memory, align 4
  %cmp1.i3.i.i.i = icmp ugt ptr %190, %186
  br i1 %cmp1.i3.i.i.i, label %land.rhs.i10.i.i.i, label %land.lhs.true.i4.i.i.i.do.body5.i11.i.i.i_crit_edge, !prof !190

land.lhs.true.i4.i.i.i.do.body5.i11.i.i.i_crit_edge: ; preds = %land.lhs.true.i4.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body5.i11.i.i.i

land.rhs.i10.i.i.i:                               ; preds = %land.lhs.true.i4.i.i.i
  %sub.i5.i.i.i = add i32 %189, 1073741824
  %shr.i6.i.i.i = lshr i32 %sub.i5.i.i.i, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %191 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i7.i.i.i = add i32 %191, %shr.i6.i.i.i
  %call.i8.i.i.i = call i32 @pfn_valid(i32 noundef %add.i7.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i8.i.i.i)
  %tobool.i9.i.i.i = icmp eq i32 %call.i8.i.i.i, 0
  br i1 %tobool.i9.i.i.i, label %land.rhs.i10.i.i.i.do.body5.i11.i.i.i_crit_edge, label %do.end8.i15.i.i.i, !prof !191

land.rhs.i10.i.i.i.do.body5.i11.i.i.i_crit_edge:  ; preds = %land.rhs.i10.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body5.i11.i.i.i

do.body5.i11.i.i.i:                               ; preds = %land.rhs.i10.i.i.i.do.body5.i11.i.i.i_crit_edge, %land.lhs.true.i4.i.i.i.do.body5.i11.i.i.i_crit_edge, %sg_set_buf.exit.i.i.i.do.body5.i11.i.i.i_crit_edge
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 160, 0\0A.popsection", ""() #10, !srcloc !192
  unreachable

do.end8.i15.i.i.i:                                ; preds = %land.rhs.i10.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %192 = load ptr, ptr @mem_map, align 4
  %add.ptr.i12.i.i.i = getelementptr %struct.page, ptr %192, i32 %shr.i6.i.i.i
  %193 = ptrtoint ptr %sg_out.i.i.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %sg_out.i.i.i, align 4
  %195 = ptrtoint ptr %add.ptr.i12.i.i.i to i32
  %and2.i.i.i13.i.i.i = and i32 %195, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i13.i.i.i)
  %tobool.not.i.i.i14.i.i.i = icmp eq i32 %and2.i.i.i13.i.i.i, 0
  br i1 %tobool.not.i.i.i14.i.i.i, label %do.body11.i.i.i19.i.i.i, label %do.body5.i.i.i16.i.i.i, !prof !190

do.body5.i.i.i16.i.i.i:                           ; preds = %do.end8.i15.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #10, !srcloc !193
  unreachable

do.body11.i.i.i19.i.i.i:                          ; preds = %do.end8.i15.i.i.i
  %and.i.i.i.i17.i.i.i = and i32 %194, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i17.i.i.i)
  %tobool.i.not.i.i.i18.i.i.i = icmp eq i32 %and.i.i.i.i17.i.i.i, 0
  br i1 %tobool.i.not.i.i.i18.i.i.i, label %sg_set_buf.exit26.i.i.i, label %do.body19.i.i.i20.i.i.i, !prof !190

do.body19.i.i.i20.i.i.i:                          ; preds = %do.body11.i.i.i19.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #10, !srcloc !194
  unreachable

sg_set_buf.exit26.i.i.i:                          ; preds = %do.body11.i.i.i19.i.i.i
  %and.i21.i.i.i = and i32 %189, 4095
  %and.i.i.i22.i.i.i = and i32 %194, 3
  %or.i.i.i23.i.i.i = or i32 %and.i.i.i22.i.i.i, %195
  %196 = ptrtoint ptr %sg_out.i.i.i to i32
  call void @__asan_store4_noabort(i32 %196)
  store i32 %or.i.i.i23.i.i.i, ptr %sg_out.i.i.i, align 4
  %offset1.i.i24.i.i.i = getelementptr inbounds %struct.scatterlist, ptr %sg_out.i.i.i, i32 0, i32 1
  %197 = ptrtoint ptr %offset1.i.i24.i.i.i to i32
  call void @__asan_store4_noabort(i32 %197)
  store i32 %and.i21.i.i.i, ptr %offset1.i.i24.i.i.i, align 4
  %length.i.i25.i.i.i = getelementptr inbounds %struct.scatterlist, ptr %sg_out.i.i.i, i32 0, i32 2
  %198 = ptrtoint ptr %length.i.i25.i.i.i to i32
  call void @__asan_store4_noabort(i32 %198)
  store i32 %conv9.i104.i.i, ptr %length.i.i25.i.i.i, align 4
  %arrayidx10.i.i.i = getelementptr inbounds [2 x %struct.scatterlist], ptr %sg_out.i.i.i, i32 0, i32 1
  %199 = ptrtoint ptr %call7.i.i97.i.i to i32
  %cmp.i27.i.i.i = icmp ugt ptr %call7.i.i97.i.i, inttoptr (i32 -1073741825 to ptr)
  br i1 %cmp.i27.i.i.i, label %land.lhs.true.i29.i.i.i, label %sg_set_buf.exit26.i.i.i.do.body5.i36.i.i.i_crit_edge, !prof !190

sg_set_buf.exit26.i.i.i.do.body5.i36.i.i.i_crit_edge: ; preds = %sg_set_buf.exit26.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body5.i36.i.i.i

land.lhs.true.i29.i.i.i:                          ; preds = %sg_set_buf.exit26.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %200 = load ptr, ptr @high_memory, align 4
  %cmp1.i28.i.i.i = icmp ugt ptr %200, %call7.i.i97.i.i
  br i1 %cmp1.i28.i.i.i, label %land.rhs.i35.i.i.i, label %land.lhs.true.i29.i.i.i.do.body5.i36.i.i.i_crit_edge, !prof !190

land.lhs.true.i29.i.i.i.do.body5.i36.i.i.i_crit_edge: ; preds = %land.lhs.true.i29.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body5.i36.i.i.i

land.rhs.i35.i.i.i:                               ; preds = %land.lhs.true.i29.i.i.i
  %sub.i30.i.i.i = add i32 %199, 1073741824
  %shr.i31.i.i.i = lshr i32 %sub.i30.i.i.i, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %201 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i32.i.i.i = add i32 %201, %shr.i31.i.i.i
  %call.i33.i.i.i = call i32 @pfn_valid(i32 noundef %add.i32.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i33.i.i.i)
  %tobool.i34.i.i.i = icmp eq i32 %call.i33.i.i.i, 0
  br i1 %tobool.i34.i.i.i, label %land.rhs.i35.i.i.i.do.body5.i36.i.i.i_crit_edge, label %do.end8.i40.i.i.i, !prof !191

land.rhs.i35.i.i.i.do.body5.i36.i.i.i_crit_edge:  ; preds = %land.rhs.i35.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body5.i36.i.i.i

do.body5.i36.i.i.i:                               ; preds = %land.rhs.i35.i.i.i.do.body5.i36.i.i.i_crit_edge, %land.lhs.true.i29.i.i.i.do.body5.i36.i.i.i_crit_edge, %sg_set_buf.exit26.i.i.i.do.body5.i36.i.i.i_crit_edge
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 160, 0\0A.popsection", ""() #10, !srcloc !192
  unreachable

do.end8.i40.i.i.i:                                ; preds = %land.rhs.i35.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %202 = load ptr, ptr @mem_map, align 4
  %add.ptr.i37.i.i.i = getelementptr %struct.page, ptr %202, i32 %shr.i31.i.i.i
  %203 = ptrtoint ptr %arrayidx10.i.i.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %arrayidx10.i.i.i, align 4
  %205 = ptrtoint ptr %add.ptr.i37.i.i.i to i32
  %and2.i.i.i38.i.i.i = and i32 %205, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i38.i.i.i)
  %tobool.not.i.i.i39.i.i.i = icmp eq i32 %and2.i.i.i38.i.i.i, 0
  br i1 %tobool.not.i.i.i39.i.i.i, label %do.body11.i.i.i44.i.i.i, label %do.body5.i.i.i41.i.i.i, !prof !190

do.body5.i.i.i41.i.i.i:                           ; preds = %do.end8.i40.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #10, !srcloc !193
  unreachable

do.body11.i.i.i44.i.i.i:                          ; preds = %do.end8.i40.i.i.i
  %and.i.i.i.i42.i.i.i = and i32 %204, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i42.i.i.i)
  %tobool.i.not.i.i.i43.i.i.i = icmp eq i32 %and.i.i.i.i42.i.i.i, 0
  br i1 %tobool.i.not.i.i.i43.i.i.i, label %sg_set_buf.exit51.i.i.i, label %do.body19.i.i.i45.i.i.i, !prof !190

do.body19.i.i.i45.i.i.i:                          ; preds = %do.body11.i.i.i44.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #10, !srcloc !194
  unreachable

sg_set_buf.exit51.i.i.i:                          ; preds = %do.body11.i.i.i44.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %and.i46.i.i.i = and i32 %199, 4088
  %and.i.i.i47.i.i.i = and i32 %204, 3
  %or.i.i.i48.i.i.i = or i32 %and.i.i.i47.i.i.i, %205
  %206 = ptrtoint ptr %arrayidx10.i.i.i to i32
  call void @__asan_store4_noabort(i32 %206)
  store i32 %or.i.i.i48.i.i.i, ptr %arrayidx10.i.i.i, align 4
  %offset1.i.i49.i.i.i = getelementptr inbounds [2 x %struct.scatterlist], ptr %sg_out.i.i.i, i32 0, i32 1, i32 1
  %207 = ptrtoint ptr %offset1.i.i49.i.i.i to i32
  call void @__asan_store4_noabort(i32 %207)
  store i32 %and.i46.i.i.i, ptr %offset1.i.i49.i.i.i, align 4
  %length.i.i50.i.i.i = getelementptr inbounds [2 x %struct.scatterlist], ptr %sg_out.i.i.i, i32 0, i32 1, i32 2
  %208 = ptrtoint ptr %length.i.i50.i.i.i to i32
  call void @__asan_store4_noabort(i32 %208)
  store i32 16, ptr %length.i.i50.i.i.i, align 4
  %209 = ptrtoint ptr %iv.i.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %iv.i.i, align 4
  %211 = call ptr @memcpy(ptr %iv.i.i.i, ptr %210, i32 16)
  %src1.i.i.i.i = getelementptr inbounds %struct.skcipher_request, ptr %call1.i.i.i, i32 0, i32 2
  %212 = ptrtoint ptr %src1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %212)
  store ptr %sg_in.i.i.i, ptr %src1.i.i.i.i, align 8
  %dst2.i.i.i.i = getelementptr inbounds %struct.skcipher_request, ptr %call1.i.i.i, i32 0, i32 3
  %213 = ptrtoint ptr %dst2.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %213)
  store ptr %sg_out.i.i.i, ptr %dst2.i.i.i.i, align 4
  %214 = ptrtoint ptr %call1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %214)
  store i32 %mul.i.i.i, ptr %call1.i.i.i, align 128
  %iv4.i.i.i.i = getelementptr inbounds %struct.skcipher_request, ptr %call1.i.i.i, i32 0, i32 1
  %215 = ptrtoint ptr %iv4.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %215)
  store ptr %iv.i.i.i, ptr %iv4.i.i.i.i, align 4
  %call16.i.i.i = call i32 @crypto_skcipher_decrypt(ptr noundef %call1.i.i.i) #10
  %tfm.i.i.i.i = getelementptr inbounds %struct.skcipher_request, ptr %call1.i.i.i, i32 0, i32 4, i32 3
  %216 = ptrtoint ptr %tfm.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %tfm.i.i.i.i, align 16
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %217, i32 -128
  call void @kfree_sensitive(ptr noundef %call1.i.i.i) #10
  call void @crypto_destroy_tfm(ptr noundef %add.ptr.i.i.i.i.i, ptr noundef %217) #10
  br label %derived_key_decrypt.exit.i.i

derived_key_decrypt.exit.i.i:                     ; preds = %sg_set_buf.exit51.i.i.i, %if.end.i99.i.i.derived_key_decrypt.exit.i.i_crit_edge
  %ret.0.i105.i.i = phi i32 [ %171, %if.end.i99.i.i.derived_key_decrypt.exit.i.i_crit_edge ], [ %call16.i.i.i, %sg_set_buf.exit51.i.i.i ]
  call void @kfree(ptr noundef nonnull %call7.i.i97.i.i) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %iv.i.i.i) #10
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %sg_out.i.i.i) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg_in.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i105.i.i)
  %cmp47.i.i = icmp slt i32 %ret.0.i105.i.i, 0
  br i1 %cmp47.i.i, label %derived_key_decrypt.exit.i.i.do.end52.i.i_crit_edge, label %derived_key_decrypt.exit.i.i.out.i.i_crit_edge

derived_key_decrypt.exit.i.i.out.i.i_crit_edge:   ; preds = %derived_key_decrypt.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i.i

derived_key_decrypt.exit.i.i.do.end52.i.i_crit_edge: ; preds = %derived_key_decrypt.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end52.i.i

do.end52.i.i:                                     ; preds = %derived_key_decrypt.exit.i.i.do.end52.i.i_crit_edge, %derived_key_decrypt.exit.thread.i.i
  %retval.0.i106111.i.i = phi i32 [ -12, %derived_key_decrypt.exit.thread.i.i ], [ %ret.0.i105.i.i, %derived_key_decrypt.exit.i.i.do.end52.i.i_crit_edge ]
  %call54.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, i32 noundef %retval.0.i106111.i.i) #15
  br label %out.i.i

out.i.i:                                          ; preds = %do.end52.i.i, %derived_key_decrypt.exit.i.i.out.i.i_crit_edge, %get_derived_key.exit.i.i.out.i.i_crit_edge, %if.end39.i.i.out.i.i_crit_edge, %do.end.i25.i
  %ret.0.i.i = phi i32 [ %ret.0.i.i.i, %do.end.i25.i ], [ %call10.i.i.i, %get_derived_key.exit.i.i.out.i.i_crit_edge ], [ %retval.0.i106111.i.i, %do.end52.i.i ], [ %ret.0.i105.i.i, %derived_key_decrypt.exit.i.i.out.i.i_crit_edge ], [ -12, %if.end39.i.i.out.i.i_crit_edge ]
  %sem.i.i = getelementptr inbounds %struct.key, ptr %call28.i.i, i32 0, i32 4
  call void @up_read(ptr noundef %sem.i.i) #10
  call void @key_put(ptr noundef %call28.i.i) #10
  %218 = call ptr @memset(ptr %derived_key.i.i, i32 0, i32 32)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %derived_key.i.i) #10, !srcloc !189
  br label %encrypted_init.exit

encrypted_init.exit.thread98:                     ; preds = %if.end17.i.i88.encrypted_init.exit.thread98_crit_edge, %if.end12.i.i.encrypted_init.exit.thread98_crit_edge, %if.end.i.i86.encrypted_init.exit.thread98_crit_edge, %if.else.i.encrypted_init.exit.thread98_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %master_keylen.i.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %master_key.i.i) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %derived_key.i.i) #10
  br label %if.then19

encrypted_init.exit:                              ; preds = %out.i.i, %if.then30.i.i
  %retval.0.i26.i = phi i32 [ %130, %if.then30.i.i ], [ %ret.0.i.i, %out.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %master_keylen.i.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %master_key.i.i) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %derived_key.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i26.i)
  %cmp18 = icmp slt i32 %retval.0.i26.i, 0
  br i1 %cmp18, label %encrypted_init.exit.if.then19_crit_edge, label %encrypted_init.exit.do.body21_crit_edge

encrypted_init.exit.do.body21_crit_edge:          ; preds = %encrypted_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body21

encrypted_init.exit.if.then19_crit_edge:          ; preds = %encrypted_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then19

if.then19:                                        ; preds = %encrypted_init.exit.if.then19_crit_edge, %encrypted_init.exit.thread98, %do.end10.i.i, %do.end.i.i
  %retval.0.i92 = phi i32 [ %retval.0.i26.i, %encrypted_init.exit.if.then19_crit_edge ], [ -22, %encrypted_init.exit.thread98 ], [ -22, %do.end.i.i ], [ -22, %do.end10.i.i ]
  call void @kfree_sensitive(ptr noundef %call12) #10
  br label %out

do.body21:                                        ; preds = %encrypted_init.exit.do.body21_crit_edge, %encrypted_init.exit.thread93
  %retval.0.i96 = phi i32 [ 0, %encrypted_init.exit.thread93 ], [ %retval.0.i26.i, %encrypted_init.exit.do.body21_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !195
  %219 = getelementptr inbounds %struct.key, ptr %key, i32 0, i32 17
  %220 = ptrtoint ptr %219 to i32
  call void @__asan_store4_noabort(i32 %220)
  store volatile ptr %call12, ptr %219, align 4
  br label %out

out:                                              ; preds = %do.body21, %if.then19, %if.then14, %if.end6.out_crit_edge
  %ret.0 = phi i32 [ %call8, %if.end6.out_crit_edge ], [ %20, %if.then14 ], [ %retval.0.i92, %if.then19 ], [ %retval.0.i96, %do.body21 ]
  call void @kfree_sensitive(ptr noundef nonnull %call9.i) #10
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end8.i.cleanup_crit_edge, %lor.lhs.false3.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out ], [ -22, %lor.lhs.false3.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end8.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hex_encoded_iv) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %decrypted_datalen) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %master_desc) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %format) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @encrypted_update(ptr noundef %key, ptr nocapture noundef readonly %prep) #0 align 64 {
entry:
  %new_master_desc = alloca ptr, align 4
  %format = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.key, ptr %key, i32 0, i32 17
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %new_master_desc) #10
  %3 = ptrtoint ptr %new_master_desc to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %new_master_desc, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %format) #10
  %datalen1 = getelementptr inbounds %struct.key_preparsed_payload, ptr %prep, i32 0, i32 4
  %4 = ptrtoint ptr %datalen1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %datalen1, align 4
  %state.i.i = getelementptr inbounds %struct.key, ptr %key, i32 0, i32 14
  %6 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load volatile i16, ptr %state.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !196
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %cmp.i103 = icmp slt i16 %7, 0
  br i1 %cmp.i103, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = add i32 %5, -32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 -32767, i32 %8)
  %9 = icmp ult i32 %8, -32767
  br i1 %9, label %if.end.cleanup_crit_edge, label %lor.lhs.false3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false3:                                   ; preds = %if.end
  %data = getelementptr inbounds %struct.key_preparsed_payload, ptr %prep, i32 0, i32 3
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data, align 8
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %lor.lhs.false3.cleanup_crit_edge, label %if.end8.i

lor.lhs.false3.cleanup_crit_edge:                 ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end8.i:                                        ; preds = %lor.lhs.false3
  %add = add nuw nsw i32 %5, 1
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3264) #13
  %tobool7.not = icmp eq ptr %call9.i, null
  br i1 %tobool7.not, label %if.end8.i.cleanup_crit_edge, label %if.end9

if.end8.i.cleanup_crit_edge:                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end9:                                          ; preds = %if.end8.i
  %arrayidx10 = getelementptr i8, ptr %call9.i, i32 %5
  %12 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %arrayidx10, align 1
  %13 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data, align 8
  %15 = call ptr @memcpy(ptr %call9.i, ptr %14, i32 %5)
  %call12 = call fastcc i32 @datablob_parse(ptr noundef nonnull %call9.i, ptr noundef nonnull %format, ptr noundef nonnull %new_master_desc, ptr noundef null, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %if.end9.out_crit_edge, label %if.end15

if.end9.out_crit_edge:                            ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end15:                                         ; preds = %if.end9
  %16 = ptrtoint ptr %new_master_desc to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %new_master_desc, align 4
  %master_desc = getelementptr inbounds %struct.encrypted_key_payload, ptr %2, i32 0, i32 2
  %18 = ptrtoint ptr %master_desc to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %master_desc, align 4
  %call.i = tail call i32 @strncmp(ptr noundef %17, ptr noundef nonnull dereferenceable(9) @KEY_TRUSTED_PREFIX, i32 noundef 8) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end15.if.end5.i_crit_edge, label %if.else.i

if.end15.if.end5.i_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5.i

if.else.i:                                        ; preds = %if.end15
  %call1.i = tail call i32 @strncmp(ptr noundef %17, ptr noundef nonnull dereferenceable(6) @KEY_USER_PREFIX, i32 noundef 5) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.else.i.if.end5.i_crit_edge, label %if.else.i.out_crit_edge

if.else.i.out_crit_edge:                          ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.else.i.if.end5.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.else.i.if.end5.i_crit_edge, %if.end15.if.end5.i_crit_edge
  %prefix_len.0.i = phi i32 [ 8, %if.end15.if.end5.i_crit_edge ], [ 5, %if.else.i.if.end5.i_crit_edge ]
  %arrayidx.i = getelementptr i8, ptr %17, i32 %prefix_len.0.i
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool6.not.i = icmp eq i8 %21, 0
  br i1 %tobool6.not.i, label %if.end5.i.out_crit_edge, label %if.end8.i104

if.end5.i.out_crit_edge:                          ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end8.i104:                                     ; preds = %if.end5.i
  %tobool9.not.i = icmp eq ptr %19, null
  br i1 %tobool9.not.i, label %if.end8.i104.if.end19_crit_edge, label %land.lhs.true.i

if.end8.i104.if.end19_crit_edge:                  ; preds = %if.end8.i104
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

land.lhs.true.i:                                  ; preds = %if.end8.i104
  %call10.i = tail call i32 @strncmp(ptr noundef %17, ptr noundef nonnull %19, i32 noundef %prefix_len.0.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool11.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool11.not.i, label %land.lhs.true.i.if.end19_crit_edge, label %land.lhs.true.i.out_crit_edge

land.lhs.true.i.out_crit_edge:                    ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

land.lhs.true.i.if.end19_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

if.end19:                                         ; preds = %land.lhs.true.i.if.end19_crit_edge, %if.end8.i104.if.end19_crit_edge
  %format20 = getelementptr inbounds %struct.encrypted_key_payload, ptr %2, i32 0, i32 1
  %22 = ptrtoint ptr %format20 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %format20, align 4
  %datalen21 = getelementptr inbounds %struct.encrypted_key_payload, ptr %2, i32 0, i32 3
  %24 = ptrtoint ptr %datalen21 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %datalen21, align 4
  %call22 = tail call fastcc ptr @encrypted_key_alloc(ptr noundef %key, ptr noundef %23, ptr noundef %17, ptr noundef %25)
  %cmp.i105 = icmp ugt ptr %call22, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i105, label %if.then24, label %if.end26

if.then24:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  %26 = ptrtoint ptr %call22 to i32
  br label %out

if.end26:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  %27 = ptrtoint ptr %format20 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %format20, align 4
  %29 = ptrtoint ptr %datalen21 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %datalen21, align 4
  tail call fastcc void @__ekey_init(ptr noundef %call22, ptr noundef %28, ptr noundef %17, ptr noundef %30)
  %iv = getelementptr inbounds %struct.encrypted_key_payload, ptr %call22, i32 0, i32 4
  %31 = ptrtoint ptr %iv to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %iv, align 4
  %iv29 = getelementptr inbounds %struct.encrypted_key_payload, ptr %2, i32 0, i32 4
  %33 = ptrtoint ptr %iv29 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %iv29, align 4
  %35 = load i32, ptr @ivsize, align 4
  %36 = call ptr @memcpy(ptr %32, ptr %34, i32 %35)
  %payload_data = getelementptr inbounds %struct.encrypted_key_payload, ptr %call22, i32 0, i32 11
  %payload_data30 = getelementptr inbounds %struct.encrypted_key_payload, ptr %2, i32 0, i32 11
  %payload_datalen = getelementptr inbounds %struct.encrypted_key_payload, ptr %2, i32 0, i32 8
  %37 = ptrtoint ptr %payload_datalen to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %payload_datalen, align 4
  %conv = zext i16 %38 to i32
  %39 = call ptr @memcpy(ptr %payload_data, ptr %payload_data30, i32 %conv)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !197
  %40 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %call22, ptr %0, align 4
  tail call void @call_rcu(ptr noundef %2, ptr noundef nonnull @encrypted_rcu_free) #10
  br label %out

out:                                              ; preds = %if.end26, %if.then24, %land.lhs.true.i.out_crit_edge, %if.end5.i.out_crit_edge, %if.else.i.out_crit_edge, %if.end9.out_crit_edge
  %ret.0 = phi i32 [ %call12, %if.end9.out_crit_edge ], [ %26, %if.then24 ], [ 0, %if.end26 ], [ -22, %if.else.i.out_crit_edge ], [ -22, %if.end5.i.out_crit_edge ], [ -22, %land.lhs.true.i.out_crit_edge ]
  tail call void @kfree_sensitive(ptr noundef nonnull %call9.i) #10
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end8.i.cleanup_crit_edge, %lor.lhs.false3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out ], [ -126, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false3.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -12, %if.end8.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %format) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %new_master_desc) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @encrypted_destroy(ptr nocapture noundef readonly %key) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.key, ptr %key, i32 0, i32 17
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  tail call void @kfree_sensitive(ptr noundef %2) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @user_describe(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @encrypted_read(ptr noundef %key, ptr noundef writeonly %buffer, i32 noundef %buflen) #0 align 64 {
entry:
  %derived_key.i = alloca [32 x i8], align 1
  %sg_in.i = alloca [2 x %struct.scatterlist], align 4
  %sg_out.i = alloca [1 x %struct.scatterlist], align 4
  %iv.i = alloca [16 x i8], align 1
  %master_key = alloca ptr, align 4
  %master_keylen = alloca i32, align 4
  %derived_key = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %master_key) #10
  %0 = ptrtoint ptr %master_key to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %master_key, align 4, !annotation !188
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %master_keylen) #10
  %1 = ptrtoint ptr %master_keylen to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %master_keylen, align 4, !annotation !188
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %derived_key) #10
  %sem = getelementptr inbounds %struct.key, ptr %key, i32 0, i32 4
  %2 = call ptr @memset(ptr %derived_key, i32 255, i32 32)
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %sem, i32 noundef 4) #10
  %3 = ptrtoint ptr %sem to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %sem, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp.i.not = icmp eq i32 %4, 0
  br i1 %cmp.i.not, label %land.lhs.true, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b74 = load i1, ptr @encrypted_read.__warned, align 1
  br i1 %.b74, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @encrypted_read.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 912, ptr noundef nonnull @.str.58) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %5 = getelementptr inbounds %struct.key, ptr %key, i32 0, i32 17
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %datablob_len = getelementptr inbounds %struct.encrypted_key_payload, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %datablob_len to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %datablob_len, align 4
  %conv = zext i16 %9 to i32
  %10 = load i32, ptr @ivsize, align 4
  %11 = load i32, ptr @blksize, align 4
  %decrypted_datalen = getelementptr inbounds %struct.encrypted_key_payload, ptr %7, i32 0, i32 7
  %12 = ptrtoint ptr %decrypted_datalen to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %decrypted_datalen, align 2
  %conv7 = zext i16 %13 to i32
  %sub = add i32 %11, -1
  %add8 = add i32 %sub, %conv7
  %14 = srem i32 %add8, %11
  %mul = sub i32 %add8, %14
  %add = add nuw nsw i32 %conv, 1
  %add5 = add i32 %add, %10
  %add9 = add i32 %add5, %mul
  %add10 = add i32 %add9, 64
  %tobool11.not = icmp eq ptr %buffer, null
  call void @__sanitizer_cov_trace_cmp4(i32 %add10, i32 %buflen)
  %cmp = icmp ugt i32 %add10, %buflen
  %or.cond = select i1 %tobool11.not, i1 true, i1 %cmp
  br i1 %or.cond, label %do.end.cleanup_crit_edge, label %if.end14

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end14:                                         ; preds = %do.end
  %call15 = call fastcc ptr @request_master_key(ptr noundef %7, ptr noundef nonnull %master_key, ptr noundef nonnull %master_keylen)
  %cmp.i75 = icmp ugt ptr %call15, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i75, label %if.then17, label %if.end19

if.then17:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  %15 = ptrtoint ptr %call15 to i32
  br label %cleanup

if.end19:                                         ; preds = %if.end14
  %16 = ptrtoint ptr %master_key to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %master_key, align 4
  %18 = ptrtoint ptr %master_keylen to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %master_keylen, align 4
  %add.i = add i32 %19, 9
  %20 = call i32 @llvm.umax.i32(i32 %add.i, i32 32) #10
  %call9.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %20, i32 noundef 3520) #13
  %tobool.not.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool.not.i, label %if.end19.out_crit_edge, label %get_derived_key.exit

if.end19.out_crit_edge:                           ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

get_derived_key.exit:                             ; preds = %if.end19
  %21 = ptrtoint ptr %call9.i.i.i to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 4994003113364248832, ptr %call9.i.i.i, align 128
  %call8.i = call i32 @strlen(ptr noundef nonnull %call9.i.i.i) #14
  %add.ptr.i = getelementptr i8, ptr %call9.i.i.i, i32 %call8.i
  %add.ptr9.i = getelementptr i8, ptr %add.ptr.i, i32 1
  %22 = call ptr @memcpy(ptr %add.ptr9.i, ptr %17, i32 %19)
  %23 = load ptr, ptr @hash_tfm, align 4
  %call10.i = call i32 @crypto_shash_tfm_digest(ptr noundef %23, ptr noundef nonnull %call9.i.i.i, i32 noundef %20, ptr noundef nonnull %derived_key) #10
  call void @kfree_sensitive(ptr noundef nonnull %call9.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %cmp21 = icmp slt i32 %call10.i, 0
  br i1 %cmp21, label %get_derived_key.exit.out_crit_edge, label %if.end24

get_derived_key.exit.out_crit_edge:               ; preds = %get_derived_key.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end24:                                         ; preds = %get_derived_key.exit
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %sg_in.i) #10
  %24 = call ptr @memset(ptr %sg_in.i, i32 255, i32 40)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %sg_out.i) #10
  %25 = getelementptr inbounds %struct.scatterlist, ptr %sg_out.i, i32 0, i32 1
  %26 = getelementptr inbounds %struct.scatterlist, ptr %sg_out.i, i32 0, i32 2
  %27 = call ptr @memset(ptr %sg_out.i, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %iv.i) #10
  %28 = load i32, ptr @blksize, align 4
  %29 = ptrtoint ptr %decrypted_datalen to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %decrypted_datalen, align 2
  %call.i = call fastcc ptr @init_skcipher_req(ptr noundef nonnull %derived_key) #10
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %derived_key_encrypt.exit, label %if.end.i

if.end.i:                                         ; preds = %if.end24
  %sub.i = add i32 %28, -1
  %conv.i76 = zext i16 %30 to i32
  %add.i77 = add i32 %sub.i, %conv.i76
  %31 = srem i32 %add.i77, %28
  %mul.i = sub i32 %add.i77, %31
  call void @sg_init_table(ptr noundef nonnull %sg_in.i, i32 noundef 2) #10
  %decrypted_data.i = getelementptr inbounds %struct.encrypted_key_payload, ptr %7, i32 0, i32 10
  %32 = ptrtoint ptr %decrypted_data.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %decrypted_data.i, align 4
  %34 = ptrtoint ptr %decrypted_datalen to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %decrypted_datalen, align 2
  %conv4.i = zext i16 %35 to i32
  %36 = ptrtoint ptr %33 to i32
  %cmp.i1.i = icmp ugt ptr %33, inttoptr (i32 -1073741825 to ptr)
  br i1 %cmp.i1.i, label %land.lhs.true.i.i, label %if.end.i.do.body5.i.i_crit_edge, !prof !190

if.end.i.do.body5.i.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body5.i.i

land.lhs.true.i.i:                                ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %37 = load ptr, ptr @high_memory, align 4
  %cmp1.i.i = icmp ugt ptr %37, %33
  br i1 %cmp1.i.i, label %land.rhs.i.i, label %land.lhs.true.i.i.do.body5.i.i_crit_edge, !prof !190

land.lhs.true.i.i.do.body5.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body5.i.i

land.rhs.i.i:                                     ; preds = %land.lhs.true.i.i
  %sub.i.i = add i32 %36, 1073741824
  %shr.i.i = lshr i32 %sub.i.i, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %38 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i.i = add i32 %38, %shr.i.i
  %call.i.i = call i32 @pfn_valid(i32 noundef %add.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.i.i, label %land.rhs.i.i.do.body5.i.i_crit_edge, label %do.end8.i.i, !prof !191

land.rhs.i.i.do.body5.i.i_crit_edge:              ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body5.i.i

do.body5.i.i:                                     ; preds = %land.rhs.i.i.do.body5.i.i_crit_edge, %land.lhs.true.i.i.do.body5.i.i_crit_edge, %if.end.i.do.body5.i.i_crit_edge
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 160, 0\0A.popsection", ""() #10, !srcloc !192
  unreachable

do.end8.i.i:                                      ; preds = %land.rhs.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %39 = load ptr, ptr @mem_map, align 4
  %add.ptr.i.i = getelementptr %struct.page, ptr %39, i32 %shr.i.i
  %40 = ptrtoint ptr %sg_in.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %sg_in.i, align 4
  %42 = ptrtoint ptr %add.ptr.i.i to i32
  %and2.i.i.i.i = and i32 %42, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and2.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %do.body11.i.i.i.i, label %do.body5.i.i.i.i, !prof !190

do.body5.i.i.i.i:                                 ; preds = %do.end8.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #10, !srcloc !193
  unreachable

do.body11.i.i.i.i:                                ; preds = %do.end8.i.i
  %and.i.i.i.i.i = and i32 %41, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.i.not.i.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i.i, label %sg_set_buf.exit.i, label %do.body19.i.i.i.i, !prof !190

do.body19.i.i.i.i:                                ; preds = %do.body11.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #10, !srcloc !194
  unreachable

sg_set_buf.exit.i:                                ; preds = %do.body11.i.i.i.i
  %and.i.i = and i32 %36, 4095
  %and.i.i.i.i = and i32 %41, 3
  %or.i.i.i.i = or i32 %and.i.i.i.i, %42
  %43 = ptrtoint ptr %sg_in.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %or.i.i.i.i, ptr %sg_in.i, align 4
  %offset1.i.i.i = getelementptr inbounds %struct.scatterlist, ptr %sg_in.i, i32 0, i32 1
  %44 = ptrtoint ptr %offset1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %and.i.i, ptr %offset1.i.i.i, align 4
  %length.i.i.i = getelementptr inbounds %struct.scatterlist, ptr %sg_in.i, i32 0, i32 2
  %45 = ptrtoint ptr %length.i.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %conv4.i, ptr %length.i.i.i, align 4
  %arrayidx5.i = getelementptr inbounds [2 x %struct.scatterlist], ptr %sg_in.i, i32 0, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @empty_zero_page to i32))
  %46 = load ptr, ptr @empty_zero_page, align 4
  %47 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx5.i, align 4
  %49 = ptrtoint ptr %46 to i32
  %and2.i.i.i = and i32 %49, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and2.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %do.body11.i.i.i, label %do.body5.i.i.i, !prof !190

do.body5.i.i.i:                                   ; preds = %sg_set_buf.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #10, !srcloc !193
  unreachable

do.body11.i.i.i:                                  ; preds = %sg_set_buf.exit.i
  %and.i.i.i2.i = and i32 %48, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i2.i)
  %tobool.i.not.i.i.i = icmp eq i32 %and.i.i.i2.i, 0
  br i1 %tobool.i.not.i.i.i, label %sg_set_page.exit.i, label %do.body19.i.i.i, !prof !190

do.body19.i.i.i:                                  ; preds = %do.body11.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #10, !srcloc !194
  unreachable

sg_set_page.exit.i:                               ; preds = %do.body11.i.i.i
  %and.i.i.i = and i32 %48, 3
  %or.i.i.i = or i32 %and.i.i.i, %49
  %50 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %or.i.i.i, ptr %arrayidx5.i, align 4
  %offset1.i.i = getelementptr inbounds [2 x %struct.scatterlist], ptr %sg_in.i, i32 0, i32 1, i32 1
  %51 = ptrtoint ptr %offset1.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %offset1.i.i, align 4
  %length.i.i = getelementptr inbounds [2 x %struct.scatterlist], ptr %sg_in.i, i32 0, i32 1, i32 2
  %52 = ptrtoint ptr %length.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 16, ptr %length.i.i, align 4
  call void @sg_init_table(ptr noundef nonnull %sg_out.i, i32 noundef 1) #10
  %encrypted_data.i = getelementptr inbounds %struct.encrypted_key_payload, ptr %7, i32 0, i32 5
  %53 = ptrtoint ptr %encrypted_data.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %encrypted_data.i, align 4
  %55 = ptrtoint ptr %54 to i32
  %cmp.i3.i = icmp ugt ptr %54, inttoptr (i32 -1073741825 to ptr)
  br i1 %cmp.i3.i, label %land.lhs.true.i5.i, label %sg_set_page.exit.i.do.body5.i12.i_crit_edge, !prof !190

sg_set_page.exit.i.do.body5.i12.i_crit_edge:      ; preds = %sg_set_page.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body5.i12.i

land.lhs.true.i5.i:                               ; preds = %sg_set_page.exit.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %56 = load ptr, ptr @high_memory, align 4
  %cmp1.i4.i = icmp ugt ptr %56, %54
  br i1 %cmp1.i4.i, label %land.rhs.i11.i, label %land.lhs.true.i5.i.do.body5.i12.i_crit_edge, !prof !190

land.lhs.true.i5.i.do.body5.i12.i_crit_edge:      ; preds = %land.lhs.true.i5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body5.i12.i

land.rhs.i11.i:                                   ; preds = %land.lhs.true.i5.i
  %sub.i6.i = add i32 %55, 1073741824
  %shr.i7.i = lshr i32 %sub.i6.i, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %57 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i8.i = add i32 %57, %shr.i7.i
  %call.i9.i = call i32 @pfn_valid(i32 noundef %add.i8.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i9.i)
  %tobool.i10.i = icmp eq i32 %call.i9.i, 0
  br i1 %tobool.i10.i, label %land.rhs.i11.i.do.body5.i12.i_crit_edge, label %do.end8.i16.i, !prof !191

land.rhs.i11.i.do.body5.i12.i_crit_edge:          ; preds = %land.rhs.i11.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body5.i12.i

do.body5.i12.i:                                   ; preds = %land.rhs.i11.i.do.body5.i12.i_crit_edge, %land.lhs.true.i5.i.do.body5.i12.i_crit_edge, %sg_set_page.exit.i.do.body5.i12.i_crit_edge
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 160, 0\0A.popsection", ""() #10, !srcloc !192
  unreachable

do.end8.i16.i:                                    ; preds = %land.rhs.i11.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %58 = load ptr, ptr @mem_map, align 4
  %add.ptr.i13.i = getelementptr %struct.page, ptr %58, i32 %shr.i7.i
  %59 = ptrtoint ptr %sg_out.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %sg_out.i, align 4
  %61 = ptrtoint ptr %add.ptr.i13.i to i32
  %and2.i.i.i14.i = and i32 %61, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i14.i)
  %tobool.not.i.i.i15.i = icmp eq i32 %and2.i.i.i14.i, 0
  br i1 %tobool.not.i.i.i15.i, label %do.body11.i.i.i20.i, label %do.body5.i.i.i17.i, !prof !190

do.body5.i.i.i17.i:                               ; preds = %do.end8.i16.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #10, !srcloc !193
  unreachable

do.body11.i.i.i20.i:                              ; preds = %do.end8.i16.i
  %and.i.i.i.i18.i = and i32 %60, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i18.i)
  %tobool.i.not.i.i.i19.i = icmp eq i32 %and.i.i.i.i18.i, 0
  br i1 %tobool.i.not.i.i.i19.i, label %sg_set_buf.exit27.i, label %do.body19.i.i.i21.i, !prof !190

do.body19.i.i.i21.i:                              ; preds = %do.body11.i.i.i20.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #10, !srcloc !194
  unreachable

sg_set_buf.exit27.i:                              ; preds = %do.body11.i.i.i20.i
  %and.i22.i = and i32 %55, 4095
  %and.i.i.i23.i = and i32 %60, 3
  %or.i.i.i24.i = or i32 %and.i.i.i23.i, %61
  %62 = ptrtoint ptr %sg_out.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %or.i.i.i24.i, ptr %sg_out.i, align 4
  %63 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %and.i22.i, ptr %25, align 4
  %64 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %mul.i, ptr %26, align 4
  %iv9.i = getelementptr inbounds %struct.encrypted_key_payload, ptr %7, i32 0, i32 4
  %65 = ptrtoint ptr %iv9.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %iv9.i, align 4
  %67 = call ptr @memcpy(ptr %iv.i, ptr %66, i32 16)
  %src1.i.i = getelementptr inbounds %struct.skcipher_request, ptr %call.i, i32 0, i32 2
  %68 = ptrtoint ptr %src1.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %sg_in.i, ptr %src1.i.i, align 8
  %dst2.i.i = getelementptr inbounds %struct.skcipher_request, ptr %call.i, i32 0, i32 3
  %69 = ptrtoint ptr %dst2.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %sg_out.i, ptr %dst2.i.i, align 4
  %70 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %mul.i, ptr %call.i, align 128
  %iv4.i.i = getelementptr inbounds %struct.skcipher_request, ptr %call.i, i32 0, i32 1
  %71 = ptrtoint ptr %iv4.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %iv.i, ptr %iv4.i.i, align 4
  %call13.i = call i32 @crypto_skcipher_encrypt(ptr noundef %call.i) #10
  %tfm.i.i = getelementptr inbounds %struct.skcipher_request, ptr %call.i, i32 0, i32 4, i32 3
  %72 = ptrtoint ptr %tfm.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %tfm.i.i, align 16
  %add.ptr.i.i.i = getelementptr i8, ptr %73, i32 -128
  call void @kfree_sensitive(ptr noundef %call.i) #10
  call void @crypto_destroy_tfm(ptr noundef %add.ptr.i.i.i, ptr noundef %73) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %cmp.i78 = icmp slt i32 %call13.i, 0
  br i1 %cmp.i78, label %derived_key_encrypt.exit.thread, label %derived_key_encrypt.exit.thread107

derived_key_encrypt.exit.thread107:               ; preds = %sg_set_buf.exit27.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %iv.i) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg_out.i) #10
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %sg_in.i) #10
  br label %if.end30

derived_key_encrypt.exit.thread:                  ; preds = %sg_set_buf.exit27.i
  call void @__sanitizer_cov_trace_pc() #12
  %call18.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.73, i32 noundef %call13.i) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %iv.i) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg_out.i) #10
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %sg_in.i) #10
  br label %out

derived_key_encrypt.exit:                         ; preds = %if.end24
  %74 = ptrtoint ptr %call.i to i32
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %iv.i) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg_out.i) #10
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %sg_in.i) #10
  %cmp27 = icmp slt ptr %call.i, null
  br i1 %cmp27, label %derived_key_encrypt.exit.out_crit_edge, label %derived_key_encrypt.exit.if.end30_crit_edge

derived_key_encrypt.exit.if.end30_crit_edge:      ; preds = %derived_key_encrypt.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

derived_key_encrypt.exit.out_crit_edge:           ; preds = %derived_key_encrypt.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end30:                                         ; preds = %derived_key_encrypt.exit.if.end30_crit_edge, %derived_key_encrypt.exit.thread107
  %75 = ptrtoint ptr %master_key to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %master_key, align 4
  %77 = ptrtoint ptr %master_keylen to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %master_keylen, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %derived_key.i) #10
  %add.i.i79 = add i32 %78, 9
  %79 = call i32 @llvm.umax.i32(i32 %add.i.i79, i32 32) #10
  %80 = call ptr @memset(ptr %derived_key.i, i32 255, i32 32)
  %call9.i.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %79, i32 noundef 3520) #13
  %tobool.not.i.i = icmp eq ptr %call9.i.i.i.i, null
  br i1 %tobool.not.i.i, label %if.end30.datablob_hmac_append.exit_crit_edge, label %get_derived_key.exit.i

if.end30.datablob_hmac_append.exit_crit_edge:     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %datablob_hmac_append.exit

get_derived_key.exit.i:                           ; preds = %if.end30
  %81 = call ptr @memcpy(ptr %call9.i.i.i.i, ptr @.str.63, i32 9)
  %call8.i.i = call i32 @strlen(ptr noundef nonnull %call9.i.i.i.i) #14
  %add.ptr.i.i82 = getelementptr i8, ptr %call9.i.i.i.i, i32 %call8.i.i
  %add.ptr9.i.i = getelementptr i8, ptr %add.ptr.i.i82, i32 1
  %82 = call ptr @memcpy(ptr %add.ptr9.i.i, ptr %76, i32 %78)
  %83 = load ptr, ptr @hash_tfm, align 4
  %call10.i.i = call i32 @crypto_shash_tfm_digest(ptr noundef %83, ptr noundef nonnull %call9.i.i.i.i, i32 noundef %79, ptr noundef nonnull %derived_key.i) #10
  call void @kfree_sensitive(ptr noundef nonnull %call9.i.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i.i)
  %cmp.i83 = icmp slt i32 %call10.i.i, 0
  br i1 %cmp.i83, label %get_derived_key.exit.i.datablob_hmac_append.exit_crit_edge, label %if.end.i88

get_derived_key.exit.i.datablob_hmac_append.exit_crit_edge: ; preds = %get_derived_key.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %datablob_hmac_append.exit

if.end.i88:                                       ; preds = %get_derived_key.exit.i
  %format.i = getelementptr inbounds %struct.encrypted_key_payload, ptr %7, i32 0, i32 1
  %84 = ptrtoint ptr %format.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %format.i, align 4
  %86 = ptrtoint ptr %datablob_len to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %datablob_len, align 4
  %conv.i84 = zext i16 %87 to i32
  %add.ptr.i85 = getelementptr i8, ptr %85, i32 %conv.i84
  %call.i.i86 = call ptr @crypto_alloc_shash(ptr noundef nonnull @hmac_alg, i32 noundef 0, i32 noundef 0) #10
  %cmp.i.i.i87 = icmp ugt ptr %call.i.i86, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i87, label %do.end.i.i, label %if.end.i.i

do.end.i.i:                                       ; preds = %if.end.i88
  call void @__sanitizer_cov_trace_pc() #12
  %88 = ptrtoint ptr %call.i.i86 to i32
  %call3.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61, ptr noundef nonnull @hmac_alg, i32 noundef %88) #15
  br label %datablob_hmac_append.exit

if.end.i.i:                                       ; preds = %if.end.i88
  %call5.i.i = call i32 @crypto_shash_setkey(ptr noundef %call.i.i86, ptr noundef nonnull %derived_key.i, i32 noundef 32) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %tobool.not.i15.i = icmp eq i32 %call5.i.i, 0
  br i1 %tobool.not.i15.i, label %if.then6.i.i, label %if.end.i.i.if.end8.i.i_crit_edge

if.end.i.i.if.end8.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.i.i

if.then6.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call7.i.i = call i32 @crypto_shash_tfm_digest(ptr noundef %call.i.i86, ptr noundef %85, i32 noundef %conv.i84, ptr noundef %add.ptr.i85) #10
  br label %if.end8.i.i

if.end8.i.i:                                      ; preds = %if.then6.i.i, %if.end.i.i.if.end8.i.i_crit_edge
  %err.0.i.i = phi i32 [ %call5.i.i, %if.end.i.i.if.end8.i.i_crit_edge ], [ %call7.i.i, %if.then6.i.i ]
  %base.i.i.i.i = getelementptr inbounds %struct.crypto_shash, ptr %call.i.i86, i32 0, i32 2
  call void @crypto_destroy_tfm(ptr noundef %call.i.i86, ptr noundef %base.i.i.i.i) #10
  br label %datablob_hmac_append.exit

datablob_hmac_append.exit:                        ; preds = %if.end8.i.i, %do.end.i.i, %get_derived_key.exit.i.datablob_hmac_append.exit_crit_edge, %if.end30.datablob_hmac_append.exit_crit_edge
  %ret.0.i89 = phi i32 [ %call10.i.i, %get_derived_key.exit.i.datablob_hmac_append.exit_crit_edge ], [ -12, %if.end30.datablob_hmac_append.exit_crit_edge ], [ %88, %do.end.i.i ], [ %err.0.i.i, %if.end8.i.i ]
  %89 = call ptr @memset(ptr %derived_key.i, i32 0, i32 32)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %derived_key.i) #10, !srcloc !189
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %derived_key.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i89)
  %cmp32 = icmp slt i32 %ret.0.i89, 0
  br i1 %cmp32, label %datablob_hmac_append.exit.out_crit_edge, label %if.end35

datablob_hmac_append.exit.out_crit_edge:          ; preds = %datablob_hmac_append.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end35:                                         ; preds = %datablob_hmac_append.exit
  %iv1.i = getelementptr inbounds %struct.encrypted_key_payload, ptr %7, i32 0, i32 4
  %90 = ptrtoint ptr %iv1.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %iv1.i, align 4
  %add.i90 = add i32 %add9, 65
  %call9.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add.i90, i32 noundef 3264) #13
  %tobool.not.i99 = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not.i99, label %if.end35.out_crit_edge, label %if.end.i102

if.end35.out_crit_edge:                           ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end.i102:                                      ; preds = %if.end35
  %arrayidx.i = getelementptr i8, ptr %call9.i.i, i32 %add10
  %92 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 0, ptr %arrayidx.i, align 1
  %format.i100 = getelementptr inbounds %struct.encrypted_key_payload, ptr %7, i32 0, i32 1
  %93 = ptrtoint ptr %format.i100 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %format.i100, align 4
  %master_desc.i = getelementptr inbounds %struct.encrypted_key_payload, ptr %7, i32 0, i32 2
  %95 = ptrtoint ptr %master_desc.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %master_desc.i, align 4
  %datalen.i = getelementptr inbounds %struct.encrypted_key_payload, ptr %7, i32 0, i32 3
  %97 = ptrtoint ptr %datalen.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %datalen.i, align 4
  %call2.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %call9.i.i, ptr noundef nonnull @.str.75, ptr noundef %94, ptr noundef %96, ptr noundef %98) #10
  %sub.i101 = sub i32 %add10, %call2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sub.i101)
  %cmp23.not.i = icmp ult i32 %sub.i101, 2
  br i1 %cmp23.not.i, label %if.end.i102.if.end39_crit_edge, label %for.body.preheader.i

if.end.i102.if.end39_crit_edge:                   ; preds = %if.end.i102
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end39

for.body.preheader.i:                             ; preds = %if.end.i102
  %div18.i = lshr i32 %sub.i101, 1
  %arrayidx3.i = getelementptr i8, ptr %call9.i.i, i32 %call2.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.preheader.i
  %i.025.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %bufp.024.i = phi ptr [ %incdec.ptr4.i.i, %for.body.i.for.body.i_crit_edge ], [ %arrayidx3.i, %for.body.preheader.i ]
  %arrayidx4.i = getelementptr i8, ptr %91, i32 %i.025.i
  %99 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %arrayidx4.i, align 1
  %conv.i.i = zext i8 %100 to i32
  %101 = lshr i32 %conv.i.i, 4
  %arrayidx.i.i = getelementptr [0 x i8], ptr @hex_asc, i32 0, i32 %101
  %102 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %arrayidx.i.i, align 1
  %incdec.ptr.i.i = getelementptr i8, ptr %bufp.024.i, i32 1
  %104 = ptrtoint ptr %bufp.024.i to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 %103, ptr %bufp.024.i, align 1
  %and2.i.i = and i32 %conv.i.i, 15
  %arrayidx3.i.i = getelementptr [0 x i8], ptr @hex_asc, i32 0, i32 %and2.i.i
  %105 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %arrayidx3.i.i, align 1
  %incdec.ptr4.i.i = getelementptr i8, ptr %bufp.024.i, i32 2
  %107 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 %106, ptr %incdec.ptr.i.i, align 1
  %inc.i = add nuw nsw i32 %i.025.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %div18.i
  br i1 %exitcond.not.i, label %for.body.i.if.end39_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.body.i.if.end39_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end39

if.end39:                                         ; preds = %for.body.i.if.end39_crit_edge, %if.end.i102.if.end39_crit_edge
  %sem40 = getelementptr inbounds %struct.key, ptr %call15, i32 0, i32 4
  call void @up_read(ptr noundef %sem40) #10
  call void @key_put(ptr noundef %call15) #10
  %108 = call ptr @memset(ptr %derived_key, i32 0, i32 32)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %derived_key) #10, !srcloc !189
  %109 = call ptr @memcpy(ptr %buffer, ptr %call9.i.i, i32 %add10)
  call void @kfree_sensitive(ptr noundef nonnull %call9.i.i) #10
  br label %cleanup

out:                                              ; preds = %if.end35.out_crit_edge, %datablob_hmac_append.exit.out_crit_edge, %derived_key_encrypt.exit.out_crit_edge, %derived_key_encrypt.exit.thread, %get_derived_key.exit.out_crit_edge, %if.end19.out_crit_edge
  %ret.0 = phi i32 [ %call10.i, %get_derived_key.exit.out_crit_edge ], [ %74, %derived_key_encrypt.exit.out_crit_edge ], [ %ret.0.i89, %datablob_hmac_append.exit.out_crit_edge ], [ %call13.i, %derived_key_encrypt.exit.thread ], [ -12, %if.end19.out_crit_edge ], [ -12, %if.end35.out_crit_edge ]
  %sem42 = getelementptr inbounds %struct.key, ptr %call15, i32 0, i32 4
  call void @up_read(ptr noundef %sem42) #10
  call void @key_put(ptr noundef %call15) #10
  %110 = call ptr @memset(ptr %derived_key, i32 0, i32 32)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %derived_key) #10, !srcloc !189
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end39, %if.then17, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %15, %if.then17 ], [ %ret.0, %out ], [ %add10, %if.end39 ], [ %add10, %do.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %derived_key) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %master_keylen) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %master_key) #10
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cleanup_encrypted() #2 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %0 = load ptr, ptr @hash_tfm, align 4
  %base.i.i = getelementptr inbounds %struct.crypto_shash, ptr %0, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef %0, ptr noundef %base.i.i) #10
  tail call void @unregister_key_type(ptr noundef nonnull @key_type_encrypted) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_key_type(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @init_encrypted() #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @crypto_alloc_shash(ptr noundef nonnull @hash_alg, i32 noundef 0, i32 noundef 0) #10
  store ptr %call, ptr @hash_tfm, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %0 = ptrtoint ptr %call to i32
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76, ptr noundef nonnull @hash_alg, i32 noundef %0) #15
  %1 = load ptr, ptr @hash_tfm, align 4
  %2 = ptrtoint ptr %1 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call ptr @crypto_alloc_skcipher(ptr noundef nonnull @blkcipher_alg, i32 noundef 0, i32 noundef 128) #10
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %aes_get_sizes.exit, label %aes_get_sizes.exit.thread

aes_get_sizes.exit.thread:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %__crt_alg.i.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %call.i, i32 0, i32 2, i32 3
  %3 = ptrtoint ptr %__crt_alg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %__crt_alg.i.i.i, align 4
  %ivsize.i.i = getelementptr i8, ptr %4, i32 -100
  %5 = ptrtoint ptr %ivsize.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ivsize.i.i, align 4
  store i32 %6, ptr @ivsize, align 4
  %cra_blocksize.i.i.i = getelementptr inbounds %struct.crypto_alg, ptr %4, i32 0, i32 3
  %7 = ptrtoint ptr %cra_blocksize.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cra_blocksize.i.i.i, align 4
  store i32 %8, ptr @blksize, align 4
  %base.i.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %call.i, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef %call.i, ptr noundef %base.i.i.i) #10
  br label %if.end7

aes_get_sizes.exit:                               ; preds = %if.end
  %9 = ptrtoint ptr %call.i to i32
  %call3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, i32 noundef %9) #15
  %cmp = icmp slt ptr %call.i, null
  br i1 %cmp, label %aes_get_sizes.exit.out_crit_edge, label %aes_get_sizes.exit.if.end7_crit_edge

aes_get_sizes.exit.if.end7_crit_edge:             ; preds = %aes_get_sizes.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

aes_get_sizes.exit.out_crit_edge:                 ; preds = %aes_get_sizes.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end7:                                          ; preds = %aes_get_sizes.exit.if.end7_crit_edge, %aes_get_sizes.exit.thread
  %call8 = tail call i32 @register_key_type(ptr noundef nonnull @key_type_encrypted) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %if.end7.out_crit_edge, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7.out_crit_edge:                            ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

out:                                              ; preds = %if.end7.out_crit_edge, %aes_get_sizes.exit.out_crit_edge
  %ret.0 = phi i32 [ %9, %aes_get_sizes.exit.out_crit_edge ], [ %call8, %if.end7.out_crit_edge ]
  %10 = load ptr, ptr @hash_tfm, align 4
  %base.i.i = getelementptr inbounds %struct.crypto_shash, ptr %10, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef %10, ptr noundef %base.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end7.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %2, %do.end ], [ %ret.0, %out ], [ 0, %if.end7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @datablob_parse(ptr noundef %datablob, ptr nocapture noundef writeonly %format, ptr nocapture noundef %master_desc, ptr noundef writeonly %decrypted_datalen, ptr nocapture noundef writeonly %hex_encoded_iv) unnamed_addr #0 align 64 {
entry:
  %datablob.addr = alloca ptr, align 4
  %args = alloca [3 x %struct.substring_t], align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %datablob.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %datablob, ptr %datablob.addr, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %args) #10
  %1 = call ptr @memset(ptr %args, i32 255, i32 24)
  %call = call ptr @strsep(ptr noundef nonnull %datablob.addr, ptr noundef nonnull @.str.1) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = call i32 @match_token(ptr noundef nonnull %call, ptr noundef nonnull @key_tokens, ptr noundef nonnull %args) #10
  %call3 = call ptr @strsep(ptr noundef nonnull %datablob.addr, ptr noundef nonnull @.str.1) #10
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %do.end8, label %if.end11

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call10 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #15
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %call13 = call i32 @match_token(ptr noundef nonnull %call3, ptr noundef nonnull @key_format_tokens, ptr noundef nonnull %args) #10
  %2 = zext i32 %call13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call13, label %sw.epilogthread-pre-split [
    i32 1, label %if.end11.sw.bb_crit_edge
    i32 2, label %if.end11.sw.bb_crit_edge115
    i32 0, label %if.end11.sw.bb_crit_edge116
    i32 3, label %sw.epilog.thread
  ]

if.end11.sw.bb_crit_edge116:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.end11.sw.bb_crit_edge115:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.end11.sw.bb_crit_edge:                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

sw.bb:                                            ; preds = %if.end11.sw.bb_crit_edge, %if.end11.sw.bb_crit_edge115, %if.end11.sw.bb_crit_edge116
  %3 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call3, ptr %format, align 4
  %call14 = call ptr @strsep(ptr noundef nonnull %datablob.addr, ptr noundef nonnull @.str.1) #10
  %4 = ptrtoint ptr %master_desc to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call14, ptr %master_desc, align 4
  br label %sw.epilog

sw.epilog.thread:                                 ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  %5 = ptrtoint ptr %master_desc to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call3, ptr %master_desc, align 4
  br label %if.end23

sw.epilogthread-pre-split:                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %master_desc to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pr = load ptr, ptr %master_desc, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilogthread-pre-split, %sw.bb
  %7 = phi ptr [ %.pr, %sw.epilogthread-pre-split ], [ %call14, %sw.bb ]
  %tobool16.not = icmp eq ptr %7, null
  br i1 %tobool16.not, label %do.end20, label %sw.epilog.if.end23_crit_edge

sw.epilog.if.end23_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

do.end20:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  %call22 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #15
  br label %cleanup

if.end23:                                         ; preds = %sw.epilog.if.end23_crit_edge, %sw.epilog.thread
  %8 = phi ptr [ %call3, %sw.epilog.thread ], [ %7, %sw.epilog.if.end23_crit_edge ]
  %call.i = call i32 @strncmp(ptr noundef nonnull %8, ptr noundef nonnull dereferenceable(9) @KEY_TRUSTED_PREFIX, i32 noundef 8) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end23.if.end5.i_crit_edge, label %if.else.i

if.end23.if.end5.i_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5.i

if.else.i:                                        ; preds = %if.end23
  %call1.i = call i32 @strncmp(ptr noundef nonnull %8, ptr noundef nonnull dereferenceable(6) @KEY_USER_PREFIX, i32 noundef 5) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.else.i.if.end5.i_crit_edge, label %if.else.i.do.end28_crit_edge

if.else.i.do.end28_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end28

if.else.i.if.end5.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.else.i.if.end5.i_crit_edge, %if.end23.if.end5.i_crit_edge
  %prefix_len.0.i = phi i32 [ 8, %if.end23.if.end5.i_crit_edge ], [ 5, %if.else.i.if.end5.i_crit_edge ]
  %arrayidx.i = getelementptr i8, ptr %8, i32 %prefix_len.0.i
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool6.not.i = icmp eq i8 %10, 0
  br i1 %tobool6.not.i, label %if.end5.i.do.end28_crit_edge, label %if.end31

if.end5.i.do.end28_crit_edge:                     ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end28

do.end28:                                         ; preds = %if.end5.i.do.end28_crit_edge, %if.else.i.do.end28_crit_edge
  %call30 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull %8) #15
  br label %cleanup

if.end31:                                         ; preds = %if.end5.i
  %tobool32.not = icmp eq ptr %decrypted_datalen, null
  br i1 %tobool32.not, label %if.end31.if.end43_crit_edge, label %if.then33

if.end31.if.end43_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end43

if.then33:                                        ; preds = %if.end31
  %call34 = call ptr @strsep(ptr noundef nonnull %datablob.addr, ptr noundef nonnull @.str.1) #10
  %11 = ptrtoint ptr %decrypted_datalen to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call34, ptr %decrypted_datalen, align 4
  %tobool35.not = icmp eq ptr %call34, null
  br i1 %tobool35.not, label %do.end39, label %if.then33.if.end43_crit_edge

if.then33.if.end43_crit_edge:                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end43

do.end39:                                         ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #12
  %call41 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #15
  br label %cleanup

if.end43:                                         ; preds = %if.then33.if.end43_crit_edge, %if.end31.if.end43_crit_edge
  %12 = zext i32 %call2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.80)
  switch i32 %call2, label %if.end43.cleanup_crit_edge [
    i32 0, label %sw.bb44
    i32 1, label %sw.bb53
    i32 2, label %sw.bb71
    i32 3, label %do.end83
  ]

if.end43.cleanup_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb44:                                          ; preds = %if.end43
  br i1 %tobool32.not, label %do.end49, label %sw.bb44.cleanup_crit_edge

sw.bb44.cleanup_crit_edge:                        ; preds = %sw.bb44
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end49:                                         ; preds = %sw.bb44
  call void @__sanitizer_cov_trace_pc() #12
  %call51 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull %call) #15
  br label %cleanup

sw.bb53:                                          ; preds = %if.end43
  br i1 %tobool32.not, label %do.end58, label %if.end61

do.end58:                                         ; preds = %sw.bb53
  call void @__sanitizer_cov_trace_pc() #12
  %call60 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull %call) #15
  br label %cleanup

if.end61:                                         ; preds = %sw.bb53
  %call62 = call ptr @strsep(ptr noundef nonnull %datablob.addr, ptr noundef nonnull @.str.1) #10
  %13 = ptrtoint ptr %hex_encoded_iv to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call62, ptr %hex_encoded_iv, align 4
  %tobool63.not = icmp eq ptr %call62, null
  br i1 %tobool63.not, label %do.end67, label %if.end61.cleanup_crit_edge

if.end61.cleanup_crit_edge:                       ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end67:                                         ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #12
  %call69 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23) #15
  br label %cleanup

sw.bb71:                                          ; preds = %if.end43
  br i1 %tobool32.not, label %sw.bb71.cleanup_crit_edge, label %do.end76

sw.bb71.cleanup_crit_edge:                        ; preds = %sw.bb71
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end76:                                         ; preds = %sw.bb71
  call void @__sanitizer_cov_trace_pc() #12
  %call78 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef nonnull %call) #15
  br label %cleanup

do.end83:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #12
  %call85 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull %call) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end83, %do.end76, %sw.bb71.cleanup_crit_edge, %do.end67, %if.end61.cleanup_crit_edge, %do.end58, %do.end49, %sw.bb44.cleanup_crit_edge, %if.end43.cleanup_crit_edge, %do.end39, %do.end28, %do.end20, %do.end8, %do.end
  %retval.0 = phi i32 [ -22, %do.end8 ], [ -22, %do.end ], [ -22, %do.end28 ], [ -22, %if.end43.cleanup_crit_edge ], [ -22, %do.end83 ], [ -22, %do.end76 ], [ -22, %do.end67 ], [ -22, %do.end58 ], [ -22, %do.end49 ], [ -22, %do.end39 ], [ -22, %do.end20 ], [ 0, %sw.bb44.cleanup_crit_edge ], [ 0, %if.end61.cleanup_crit_edge ], [ 0, %sw.bb71.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %args) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @encrypted_key_alloc(ptr noundef %key, ptr noundef readonly %format, ptr nocapture noundef readonly %master_desc, ptr noundef %datalen) unnamed_addr #0 align 64 {
entry:
  %dlen = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dlen) #10
  %0 = ptrtoint ptr %dlen to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %dlen, align 4, !annotation !188
  %call.i = call i32 @_kstrtol(ptr noundef %datalen, i32 noundef 10, ptr noundef nonnull %dlen) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %1 = ptrtoint ptr %dlen to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %dlen, align 4
  %3 = add i32 %2, -4097
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4077, i32 %3)
  %4 = icmp ult i32 %3, -4077
  br i1 %4, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %tobool.not = icmp eq ptr %format, null
  br i1 %tobool.not, label %cond.end.thread, label %if.then8

cond.end.thread:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %conv103 = trunc i32 %2 to i16
  br label %if.end35

if.then8:                                         ; preds = %if.end
  %call6 = call i32 @strlen(ptr noundef nonnull %format) #17
  %phi.bo = add i32 %call6, 1
  %call9 = call i32 @strcmp(ptr noundef nonnull %format, ptr noundef nonnull dereferenceable(9) @key_format_ecryptfs) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.then11, label %if.else

if.then11:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %2)
  %cmp12.not = icmp eq i32 %2, 64
  br i1 %cmp12.not, label %if.then11.if.end35_crit_edge, label %do.end

if.then11.if.end35_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end35

do.end:                                           ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #12
  %call15 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, i32 noundef 64) #15
  br label %cleanup

if.else:                                          ; preds = %if.then8
  %conv = trunc i32 %2 to i16
  %call18 = call i32 @strcmp(ptr noundef nonnull %format, ptr noundef nonnull dereferenceable(6) @key_format_enc32) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp ne i32 %call18, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %2)
  %cmp22.not = icmp eq i32 %2, 32
  %or.cond105 = select i1 %tobool19.not, i1 true, i1 %cmp22.not
  br i1 %or.cond105, label %if.else.if.end35_crit_edge, label %do.end27

if.else.if.end35_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end35

do.end27:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %call30 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, i32 noundef %2) #15
  br label %cleanup

if.end35:                                         ; preds = %if.else.if.end35_crit_edge, %if.then11.if.end35_crit_edge, %cond.end.thread
  %cond104 = phi i32 [ %phi.bo, %if.else.if.end35_crit_edge ], [ %phi.bo, %if.then11.if.end35_crit_edge ], [ 8, %cond.end.thread ]
  %payload_datalen.0 = phi i16 [ %conv, %if.else.if.end35_crit_edge ], [ 740, %if.then11.if.end35_crit_edge ], [ %conv103, %cond.end.thread ]
  %decrypted_datalen.0 = phi i16 [ %conv, %if.else.if.end35_crit_edge ], [ 64, %if.then11.if.end35_crit_edge ], [ %conv103, %cond.end.thread ]
  %5 = load i32, ptr @blksize, align 4
  %conv37 = zext i16 %decrypted_datalen.0 to i32
  %sub = add i32 %5, -1
  %add = add i32 %sub, %conv37
  %6 = srem i32 %add, %5
  %mul = sub i32 %add, %6
  %call39 = call i32 @strlen(ptr noundef %master_desc) #17
  %call42 = call i32 @strlen(ptr noundef %datalen) #17
  %7 = load i32, ptr @ivsize, align 4
  %add43 = add i32 %cond104, 3
  %add44 = add i32 %add43, %call39
  %add45 = add i32 %add44, %call42
  %add46 = add i32 %add45, %mul
  %add47 = add i32 %add46, %7
  %conv48 = trunc i32 %add47 to i16
  %conv49 = zext i16 %payload_datalen.0 to i32
  %conv50 = and i32 %add47, 65535
  %add51 = add nuw nsw i32 %conv50, %conv49
  %add53 = add nuw nsw i32 %add51, 33
  %call54 = call i32 @key_payload_reserve(ptr noundef %key, i32 noundef %add53) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %cmp55 = icmp slt i32 %call54, 0
  br i1 %cmp55, label %if.then57, label %if.end8.i.i

if.then57:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  %8 = inttoptr i32 %call54 to ptr
  br label %cleanup

if.end8.i.i:                                      ; preds = %if.end35
  %add65 = add nuw nsw i32 %add51, 73
  %call9.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add65, i32 noundef 3520) #13
  %tobool67.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool67.not, label %if.end8.i.i.cleanup_crit_edge, label %if.end70

if.end8.i.i.cleanup_crit_edge:                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end70:                                         ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %payload_datalen71 = getelementptr inbounds %struct.encrypted_key_payload, ptr %call9.i.i, i32 0, i32 8
  %9 = ptrtoint ptr %payload_datalen71 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %payload_datalen.0, ptr %payload_datalen71, align 32
  %decrypted_datalen72 = getelementptr inbounds %struct.encrypted_key_payload, ptr %call9.i.i, i32 0, i32 7
  %10 = ptrtoint ptr %decrypted_datalen72 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %decrypted_datalen.0, ptr %decrypted_datalen72, align 2
  %datablob_len73 = getelementptr inbounds %struct.encrypted_key_payload, ptr %call9.i.i, i32 0, i32 6
  %11 = ptrtoint ptr %datablob_len73 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv48, ptr %datablob_len73, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end70, %if.end8.i.i.cleanup_crit_edge, %if.then57, %do.end27, %do.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %8, %if.then57 ], [ %call9.i.i, %if.end70 ], [ inttoptr (i32 -22 to ptr), %do.end27 ], [ inttoptr (i32 -22 to ptr), %do.end ], [ inttoptr (i32 -22 to ptr), %lor.lhs.false.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end8.i.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dlen) #10
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_sensitive(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strsep(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @match_token(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @key_payload_reserve(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtol(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ecryptfs_fill_auth_tok(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__ekey_init(ptr noundef %epayload, ptr noundef readonly %format, ptr nocapture noundef readonly %master_desc, ptr nocapture noundef readonly %datalen) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %format, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.false

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1 = tail call i32 @strlen(ptr noundef nonnull %format) #17
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %cond = phi i32 [ %call1, %cond.false ], [ 7, %entry.cond.end_crit_edge ]
  %payload_data = getelementptr inbounds %struct.encrypted_key_payload, ptr %epayload, i32 0, i32 11
  %payload_datalen = getelementptr inbounds %struct.encrypted_key_payload, ptr %epayload, i32 0, i32 8
  %0 = ptrtoint ptr %payload_datalen to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %payload_datalen, align 4
  %conv = zext i16 %1 to i32
  %add.ptr = getelementptr i8, ptr %payload_data, i32 %conv
  %format2 = getelementptr inbounds %struct.encrypted_key_payload, ptr %epayload, i32 0, i32 1
  %2 = ptrtoint ptr %format2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %add.ptr, ptr %format2, align 4
  %add.ptr4 = getelementptr i8, ptr %add.ptr, i32 %cond
  %add.ptr5 = getelementptr i8, ptr %add.ptr4, i32 1
  %master_desc6 = getelementptr inbounds %struct.encrypted_key_payload, ptr %epayload, i32 0, i32 2
  %3 = ptrtoint ptr %master_desc6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %add.ptr5, ptr %master_desc6, align 4
  %call8 = tail call i32 @strlen(ptr noundef %master_desc) #17
  %add.ptr9 = getelementptr i8, ptr %add.ptr5, i32 %call8
  %add.ptr10 = getelementptr i8, ptr %add.ptr9, i32 1
  %datalen11 = getelementptr inbounds %struct.encrypted_key_payload, ptr %epayload, i32 0, i32 3
  %4 = ptrtoint ptr %datalen11 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %add.ptr10, ptr %datalen11, align 4
  %call13 = tail call i32 @strlen(ptr noundef %datalen) #17
  %add.ptr14 = getelementptr i8, ptr %add.ptr10, i32 %call13
  %add.ptr15 = getelementptr i8, ptr %add.ptr14, i32 1
  %iv = getelementptr inbounds %struct.encrypted_key_payload, ptr %epayload, i32 0, i32 4
  %5 = ptrtoint ptr %iv to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %add.ptr15, ptr %iv, align 4
  %6 = load i32, ptr @ivsize, align 4
  %add.ptr17 = getelementptr i8, ptr %add.ptr15, i32 %6
  %add.ptr18 = getelementptr i8, ptr %add.ptr17, i32 1
  %encrypted_data = getelementptr inbounds %struct.encrypted_key_payload, ptr %epayload, i32 0, i32 5
  %7 = ptrtoint ptr %encrypted_data to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %add.ptr18, ptr %encrypted_data, align 4
  %decrypted_data = getelementptr inbounds %struct.encrypted_key_payload, ptr %epayload, i32 0, i32 10
  %8 = ptrtoint ptr %decrypted_data to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %payload_data, ptr %decrypted_data, align 4
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  %9 = call ptr @memcpy(ptr %add.ptr, ptr @key_format_default, i32 %cond)
  br label %if.end31

if.else:                                          ; preds = %cond.end
  %call23 = tail call i32 @strcmp(ptr noundef nonnull %format, ptr noundef nonnull dereferenceable(9) @key_format_ecryptfs) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.then25, label %if.else.if.end_crit_edge

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then25:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %call28 = tail call ptr @ecryptfs_get_auth_tok_key(ptr noundef %payload_data) #10
  %10 = ptrtoint ptr %decrypted_data to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call28, ptr %decrypted_data, align 4
  br label %if.end

if.end:                                           ; preds = %if.then25, %if.else.if.end_crit_edge
  %11 = ptrtoint ptr %format2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %format2, align 4
  %13 = call ptr @memcpy(ptr %12, ptr %format, i32 %cond)
  br label %if.end31

if.end31:                                         ; preds = %if.end, %if.then
  %14 = ptrtoint ptr %master_desc6 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %master_desc6, align 4
  %call33 = tail call i32 @strlen(ptr noundef %master_desc) #17
  %16 = call ptr @memcpy(ptr %15, ptr %master_desc, i32 %call33)
  %17 = ptrtoint ptr %datalen11 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %datalen11, align 4
  %call35 = tail call i32 @strlen(ptr noundef %datalen) #17
  %19 = call ptr @memcpy(ptr %18, ptr %datalen, i32 %call35)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ecryptfs_get_auth_tok_key(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hex2bin(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @request_master_key(ptr nocapture noundef readonly %epayload, ptr noundef %master_key, ptr noundef %master_keylen) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %master_desc = getelementptr inbounds %struct.encrypted_key_payload, ptr %epayload, i32 0, i32 2
  %0 = ptrtoint ptr %master_desc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master_desc, align 4
  %call1 = tail call i32 @strncmp(ptr noundef %1, ptr noundef nonnull dereferenceable(9) @KEY_TRUSTED_PREFIX, i32 noundef 8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr = getelementptr i8, ptr %1, i32 8
  %call3 = tail call ptr @request_trusted_key(ptr noundef %add.ptr, ptr noundef %master_key, ptr noundef %master_keylen) #10
  br label %if.end12

if.else:                                          ; preds = %entry
  %call5 = tail call i32 @strncmp(ptr noundef %1, ptr noundef nonnull dereferenceable(6) @KEY_USER_PREFIX, i32 noundef 5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.then7, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then7:                                         ; preds = %if.else
  %add.ptr9 = getelementptr i8, ptr %1, i32 5
  %call.i.i = tail call ptr @request_key_tag(ptr noundef nonnull @key_type_user, ptr noundef %add.ptr9, ptr noundef null, ptr noundef null) #10
  %cmp.i.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then7.if.end12_crit_edge, label %if.end.i

if.then7.if.end12_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

if.end.i:                                         ; preds = %if.then7
  %sem.i = getelementptr inbounds %struct.key, ptr %call.i.i, i32 0, i32 4
  tail call void @down_read(ptr noundef %sem.i) #10
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %sem.i, i32 noundef 4) #10
  %2 = ptrtoint ptr %sem.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %sem.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i.not.i.i = icmp eq i32 %3, 0
  br i1 %cmp.i.not.i.i, label %land.lhs.true.i.i, label %if.end.i.user_key_payload_locked.exit.i_crit_edge

if.end.i.user_key_payload_locked.exit.i_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %user_key_payload_locked.exit.i

land.lhs.true.i.i:                                ; preds = %if.end.i
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %land.lhs.true.i.i.user_key_payload_locked.exit.i_crit_edge, label %land.lhs.true3.i.i

land.lhs.true.i.i.user_key_payload_locked.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %user_key_payload_locked.exit.i

land.lhs.true3.i.i:                               ; preds = %land.lhs.true.i.i
  %.b6.i.i = load i1, ptr @user_key_payload_locked.__warned, align 1
  br i1 %.b6.i.i, label %land.lhs.true3.i.i.user_key_payload_locked.exit.i_crit_edge, label %if.then.i.i

land.lhs.true3.i.i.user_key_payload_locked.exit.i_crit_edge: ; preds = %land.lhs.true3.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %user_key_payload_locked.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true3.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @user_key_payload_locked.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.57, i32 noundef 53, ptr noundef nonnull @.str.58) #10
  br label %user_key_payload_locked.exit.i

user_key_payload_locked.exit.i:                   ; preds = %if.then.i.i, %land.lhs.true3.i.i.user_key_payload_locked.exit.i_crit_edge, %land.lhs.true.i.i.user_key_payload_locked.exit.i_crit_edge, %if.end.i.user_key_payload_locked.exit.i_crit_edge
  %4 = getelementptr inbounds %struct.key, ptr %call.i.i, i32 0, i32 17
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %if.then14.thread, label %if.end6.i

if.then14.thread:                                 ; preds = %user_key_payload_locked.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @up_read(ptr noundef %sem.i) #10
  tail call void @key_put(ptr noundef %call.i.i) #10
  br label %do.end22

if.end6.i:                                        ; preds = %user_key_payload_locked.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %data.i = getelementptr inbounds %struct.user_key_payload, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %master_key to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %data.i, ptr %master_key, align 4
  %datalen.i = getelementptr inbounds %struct.user_key_payload, ptr %6, i32 0, i32 1
  %8 = ptrtoint ptr %datalen.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %datalen.i, align 8
  %conv.i = zext i16 %9 to i32
  %10 = ptrtoint ptr %master_keylen to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %conv.i, ptr %master_keylen, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.end6.i, %if.then7.if.end12_crit_edge, %if.then
  %mkey.0 = phi ptr [ %call3, %if.then ], [ %call.i.i, %if.then7.if.end12_crit_edge ], [ %call.i.i, %if.end6.i ]
  %cmp.i = icmp ugt ptr %mkey.0, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then14, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then14:                                        ; preds = %if.end12
  %cmp = icmp eq ptr %mkey.0, inttoptr (i32 -524 to ptr)
  br i1 %cmp, label %if.then14.cleanup.sink.split_crit_edge, label %if.then14.do.end22_crit_edge

if.then14.do.end22_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end22

if.then14.cleanup.sink.split_crit_edge:           ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

do.end22:                                         ; preds = %if.then14.do.end22_crit_edge, %if.then14.thread
  %mkey.04144 = phi ptr [ inttoptr (i32 -128 to ptr), %if.then14.thread ], [ %mkey.0, %if.then14.do.end22_crit_edge ]
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %do.end22, %if.then14.cleanup.sink.split_crit_edge
  %.str.55.sink = phi ptr [ @.str.55, %do.end22 ], [ @.str.52, %if.then14.cleanup.sink.split_crit_edge ]
  %mkey.1.ph = phi ptr [ %mkey.04144, %do.end22 ], [ inttoptr (i32 -524 to ptr), %if.then14.cleanup.sink.split_crit_edge ]
  %11 = ptrtoint ptr %master_desc to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %master_desc, align 4
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.55.sink, ptr noundef %12) #15
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end12.cleanup_crit_edge, %if.else.cleanup_crit_edge
  %mkey.1 = phi ptr [ inttoptr (i32 -22 to ptr), %if.else.cleanup_crit_edge ], [ %mkey.0, %if.end12.cleanup_crit_edge ], [ %mkey.1.ph, %cleanup.sink.split ]
  ret ptr %mkey.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @key_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @request_trusted_key(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @request_key_tag(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_alloc_shash(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_shash_setkey(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_shash_tfm_digest(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__crypto_memneq(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @init_skcipher_req(ptr noundef %key) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @crypto_alloc_skcipher(ptr noundef nonnull @blkcipher_alg, i32 noundef 0, i32 noundef 128) #10
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %0 = ptrtoint ptr %call to i32
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, ptr noundef nonnull @blkcipher_alg, i32 noundef %0) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %call5 = tail call i32 @crypto_skcipher_setkey(ptr noundef %call, ptr noundef %key, i32 noundef 32) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp = icmp slt i32 %call5, 0
  br i1 %cmp, label %do.end9, label %if.end8.i.i

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68, i32 noundef %call5) #15
  %base.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %call, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef %call, ptr noundef %base.i.i) #10
  %1 = inttoptr i32 %call5 to ptr
  br label %cleanup

if.end8.i.i:                                      ; preds = %if.end
  %2 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %call, align 128
  %add.i = add i32 %3, 128
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i, i32 noundef 3264) #13
  %tobool.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not.i, label %do.end18, label %if.end22, !prof !191

do.end18:                                         ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71, ptr noundef nonnull @blkcipher_alg) #15
  %base.i.i1 = getelementptr inbounds %struct.crypto_skcipher, ptr %call, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef %call, ptr noundef %base.i.i1) #10
  br label %cleanup

if.end22:                                         ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %base.i.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %call, i32 0, i32 2
  %tfm1.i.i = getelementptr inbounds %struct.skcipher_request, ptr %call9.i.i, i32 0, i32 4, i32 3
  %4 = ptrtoint ptr %tfm1.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %base.i.i.i, ptr %tfm1.i.i, align 32
  %complete.i = getelementptr inbounds %struct.skcipher_request, ptr %call9.i.i, i32 0, i32 4, i32 1
  %5 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %complete.i, align 8
  %data2.i = getelementptr inbounds %struct.skcipher_request, ptr %call9.i.i, i32 0, i32 4, i32 2
  %6 = ptrtoint ptr %data2.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %data2.i, align 4
  %flags4.i = getelementptr inbounds %struct.skcipher_request, ptr %call9.i.i, i32 0, i32 4, i32 4
  %7 = ptrtoint ptr %flags4.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %flags4.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %do.end18, %do.end9, %do.end
  %retval.0 = phi ptr [ %call, %do.end ], [ %1, %do.end9 ], [ %call9.i.i, %if.end22 ], [ inttoptr (i32 -12 to ptr), %do.end18 ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_table(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_skcipher_decrypt(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_alloc_skcipher(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_skcipher_setkey(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pfn_valid(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_destroy_tfm(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @encrypted_rcu_free(ptr noundef %rcu) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree_sensitive(ptr noundef %rcu) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_skcipher_encrypt(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_key_type(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 86)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 86)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { nobuiltin nounwind }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(2) }
attributes #17 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !15, !17, !19, !20, !21, !22, !23, !25, !26, !27, !29, !30, !31, !33, !34, !35, !37, !38, !39, !41, !42, !43, !45, !46, !48, !49, !50, !52, !53, !54, !56, !57, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !81, !82, !83, !85, !86, !87, !89, !91, !93, !95, !97, !99, !100, !101, !102, !104, !105, !106, !108, !109, !110, !111, !113, !114, !115, !117, !118, !119, !120, !122, !123, !124, !126, !127, !128, !130, !132, !134, !135, !136, !137, !139, !141, !143, !145, !146, !147, !148, !150, !151, !152, !154, !155, !156, !158, !160, !162, !163, !164, !165, !167, !169, !170, !171, !172, !174, !176, !177, !178}
!llvm.module.flags = !{!179, !180, !181, !182, !183, !184, !185, !186}
!llvm.ident = !{!187}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../security/keys/encrypted-keys/encrypted.c", i32 968, i32 10}
!2 = !{ptr @key_type_encrypted, !3, !"key_type_encrypted", i1 false, i1 false}
!3 = !{!"../security/keys/encrypted-keys/encrypted.c", i32 967, i32 17}
!4 = !{ptr @__ksymtab_key_type_encrypted, !5, !"__ksymtab_key_type_encrypted", i1 false, i1 false}
!5 = !{!"../security/keys/encrypted-keys/encrypted.c", i32 975, i32 1}
!6 = !{ptr @__initcall__kmod_encrypted_keys__248_1007_init_encrypted7, !7, !"__initcall__kmod_encrypted_keys__248_1007_init_encrypted7", i1 false, i1 false}
!7 = !{!"../security/keys/encrypted-keys/encrypted.c", i32 1007, i32 1}
!8 = !{ptr @__exitcall_cleanup_encrypted, !9, !"__exitcall_cleanup_encrypted", i1 false, i1 false}
!9 = !{!"../security/keys/encrypted-keys/encrypted.c", i32 1008, i32 1}
!10 = !{ptr @__UNIQUE_ID_file249, !11, !"__UNIQUE_ID_file249", i1 false, i1 false}
!11 = !{!"../security/keys/encrypted-keys/encrypted.c", i32 1010, i32 1}
!12 = !{ptr @__UNIQUE_ID_license250, !11, !"__UNIQUE_ID_license250", i1 false, i1 false}
!13 = !{ptr @hash_tfm, !14, !"hash_tfm", i1 false, i1 false}
!14 = !{!"../security/keys/encrypted-keys/encrypted.c", i32 57, i32 29}
!15 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../security/keys/encrypted-keys/encrypted.c", i32 181, i32 30}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../security/keys/encrypted-keys/encrypted.c", i32 183, i32 3}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @datablob_parse._entry, !18, !"_entry", i1 false, i1 false}
!22 = !{ptr @datablob_parse._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../security/keys/encrypted-keys/encrypted.c", i32 191, i32 3}
!25 = !{ptr @datablob_parse._entry.5, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @datablob_parse._entry_ptr.7, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../security/keys/encrypted-keys/encrypted.c", i32 209, i32 3}
!29 = !{ptr @datablob_parse._entry.8, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @datablob_parse._entry_ptr.10, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../security/keys/encrypted-keys/encrypted.c", i32 214, i32 3}
!33 = !{ptr @datablob_parse._entry.11, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @datablob_parse._entry_ptr.13, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../security/keys/encrypted-keys/encrypted.c", i32 222, i32 4}
!37 = !{ptr @datablob_parse._entry.14, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @datablob_parse._entry_ptr.16, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.18, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../security/keys/encrypted-keys/encrypted.c", i32 230, i32 4}
!41 = !{ptr @datablob_parse._entry.17, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @datablob_parse._entry_ptr.19, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @datablob_parse._entry.20, !44, !"_entry", i1 false, i1 false}
!44 = !{!"../security/keys/encrypted-keys/encrypted.c", i32 238, i32 4}
!45 = !{ptr @datablob_parse._entry_ptr.21, !44, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../security/keys/encrypted-keys/encrypted.c", i32 244, i32 4}
!48 = !{ptr @datablob_parse._entry.22, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @datablob_parse._entry_ptr.24, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.26, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../security/keys/encrypted-keys/encrypted.c", i32 251, i32 4}
!52 = !{ptr @datablob_parse._entry.25, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @datablob_parse._entry_ptr.27, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.29, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../security/keys/encrypted-keys/encrypted.c", i32 259, i32 3}
!56 = !{ptr @datablob_parse._entry.28, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @datablob_parse._entry_ptr.30, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.31, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../security/keys/encrypted-keys/encrypted.c", i32 75, i32 12}
!60 = !{ptr @.str.32, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../security/keys/encrypted-keys/encrypted.c", i32 76, i32 13}
!62 = !{ptr @.str.33, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../security/keys/encrypted-keys/encrypted.c", i32 77, i32 15}
!64 = !{ptr @key_tokens, !65, !"key_tokens", i1 false, i1 false}
!65 = !{!"../security/keys/encrypted-keys/encrypted.c", i32 74, i32 28}
!66 = !{ptr @.str.34, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../security/keys/encrypted-keys/encrypted.c", i32 68, i32 16}
!68 = !{ptr @.str.35, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../security/keys/encrypted-keys/encrypted.c", i32 69, i32 17}
!70 = !{ptr @.str.36, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../security/keys/encrypted-keys/encrypted.c", i32 70, i32 14}
!72 = !{ptr @key_format_tokens, !73, !"key_format_tokens", i1 false, i1 false}
!73 = !{!"../security/keys/encrypted-keys/encrypted.c", i32 67, i32 28}
!74 = !{ptr @KEY_TRUSTED_PREFIX, !75, !"KEY_TRUSTED_PREFIX", i1 false, i1 false}
!75 = !{!"../security/keys/encrypted-keys/encrypted.c", i32 38, i32 19}
!76 = !{ptr @KEY_USER_PREFIX, !77, !"KEY_USER_PREFIX", i1 false, i1 false}
!77 = !{!"../security/keys/encrypted-keys/encrypted.c", i32 39, i32 19}
!78 = !{ptr @.str.37, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../security/keys/encrypted-keys/encrypted.c", i32 619, i32 5}
!80 = !{ptr @.str.38, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @encrypted_key_alloc._entry, !79, !"_entry", i1 false, i1 false}
!82 = !{ptr @encrypted_key_alloc._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.40, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../security/keys/encrypted-keys/encrypted.c", i32 627, i32 5}
!85 = !{ptr @encrypted_key_alloc._entry.39, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @encrypted_key_alloc._entry_ptr.41, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @key_format_default, !88, !"key_format_default", i1 false, i1 false}
!88 = !{!"../security/keys/encrypted-keys/encrypted.c", i32 43, i32 19}
!89 = !{ptr @key_format_ecryptfs, !90, !"key_format_ecryptfs", i1 false, i1 false}
!90 = !{!"../security/keys/encrypted-keys/encrypted.c", i32 44, i32 19}
!91 = !{ptr @key_format_enc32, !92, !"key_format_enc32", i1 false, i1 false}
!92 = !{!"../security/keys/encrypted-keys/encrypted.c", i32 45, i32 19}
!93 = !{ptr @blksize, !94, !"blksize", i1 false, i1 false}
!94 = !{!"../security/keys/encrypted-keys/encrypted.c", i32 47, i32 12}
!95 = !{ptr @ivsize, !96, !"ivsize", i1 false, i1 false}
!96 = !{!"../security/keys/encrypted-keys/encrypted.c", i32 46, i32 21}
!97 = !{ptr @.str.42, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../security/keys/encrypted-keys/encrypted.c", i32 109, i32 3}
!99 = !{ptr @.str.43, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @valid_ecryptfs_desc._entry, !98, !"_entry", i1 false, i1 false}
!101 = !{ptr @valid_ecryptfs_desc._entry_ptr, !98, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.45, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../security/keys/encrypted-keys/encrypted.c", i32 116, i32 4}
!104 = !{ptr @valid_ecryptfs_desc._entry.44, !103, !"_entry", i1 false, i1 false}
!105 = !{ptr @valid_ecryptfs_desc._entry_ptr.46, !103, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.47, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../security/keys/encrypted-keys/encrypted.c", i32 694, i32 3}
!108 = !{ptr @.str.48, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @encrypted_key_decrypt._entry, !107, !"_entry", i1 false, i1 false}
!110 = !{ptr @encrypted_key_decrypt._entry_ptr, !107, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.50, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../security/keys/encrypted-keys/encrypted.c", i32 704, i32 3}
!113 = !{ptr @encrypted_key_decrypt._entry.49, !112, !"_entry", i1 false, i1 false}
!114 = !{ptr @encrypted_key_decrypt._entry_ptr.51, !112, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.52, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../security/keys/encrypted-keys/encrypted.c", i32 432, i32 4}
!117 = !{ptr @.str.53, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @request_master_key._entry, !116, !"_entry", i1 false, i1 false}
!119 = !{ptr @request_master_key._entry_ptr, !116, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.55, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../security/keys/encrypted-keys/encrypted.c", i32 435, i32 4}
!122 = !{ptr @request_master_key._entry.54, !121, !"_entry", i1 false, i1 false}
!123 = !{ptr @request_master_key._entry_ptr.56, !121, !"_entry_ptr", i1 false, i1 false}
!124 = distinct !{null, !125, !"__warned", i1 false, i1 false}
!125 = !{!"../include/keys/user-type.h", i32 53, i32 36}
!126 = !{ptr @.str.57, !125, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @.str.58, !125, !"<string literal>", i1 false, i1 false}
!128 = distinct !{null, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../security/keys/encrypted-keys/encrypted.c", i32 538, i32 13}
!130 = distinct !{null, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../security/keys/encrypted-keys/encrypted.c", i32 541, i32 13}
!132 = !{ptr @.str.61, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../security/keys/encrypted-keys/encrypted.c", i32 334, i32 3}
!134 = !{ptr @.str.62, !133, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @calc_hmac._entry, !133, !"_entry", i1 false, i1 false}
!136 = !{ptr @calc_hmac._entry_ptr, !133, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @hmac_alg, !138, !"hmac_alg", i1 false, i1 false}
!138 = !{!"../security/keys/encrypted-keys/encrypted.c", i32 41, i32 19}
!139 = !{ptr @.str.63, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../security/keys/encrypted-keys/encrypted.c", i32 365, i32 23}
!141 = distinct !{null, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../security/keys/encrypted-keys/encrypted.c", i32 367, i32 23}
!143 = !{ptr @.str.65, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../security/keys/encrypted-keys/encrypted.c", i32 386, i32 3}
!145 = !{ptr @.str.66, !144, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @init_skcipher_req._entry, !144, !"_entry", i1 false, i1 false}
!147 = !{ptr @init_skcipher_req._entry_ptr, !144, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @.str.68, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../security/keys/encrypted-keys/encrypted.c", i32 393, i32 3}
!150 = !{ptr @init_skcipher_req._entry.67, !149, !"_entry", i1 false, i1 false}
!151 = !{ptr @init_skcipher_req._entry_ptr.69, !149, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @.str.71, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../security/keys/encrypted-keys/encrypted.c", i32 400, i32 3}
!154 = !{ptr @init_skcipher_req._entry.70, !153, !"_entry", i1 false, i1 false}
!155 = !{ptr @init_skcipher_req._entry_ptr.72, !153, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @blkcipher_alg, !157, !"blkcipher_alg", i1 false, i1 false}
!157 = !{!"../security/keys/encrypted-keys/encrypted.c", i32 42, i32 19}
!158 = distinct !{null, !159, !"__warned", i1 false, i1 false}
!159 = !{!"../security/keys/encrypted-keys/encrypted.c", i32 912, i32 13}
!160 = !{ptr @.str.73, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../security/keys/encrypted-keys/encrypted.c", i32 481, i32 3}
!162 = !{ptr @.str.74, !161, !"<string literal>", i1 false, i1 false}
!163 = !{ptr @derived_key_encrypt._entry, !161, !"_entry", i1 false, i1 false}
!164 = !{ptr @derived_key_encrypt._entry_ptr, !161, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @.str.75, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../security/keys/encrypted-keys/encrypted.c", i32 285, i32 27}
!167 = !{ptr @.str.76, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../security/keys/encrypted-keys/encrypted.c", i32 983, i32 3}
!169 = !{ptr @.str.77, !168, !"<string literal>", i1 false, i1 false}
!170 = !{ptr @init_encrypted._entry, !168, !"_entry", i1 false, i1 false}
!171 = !{ptr @init_encrypted._entry_ptr, !168, !"_entry_ptr", i1 false, i1 false}
!172 = !{ptr @hash_alg, !173, !"hash_alg", i1 false, i1 false}
!173 = !{!"../security/keys/encrypted-keys/encrypted.c", i32 40, i32 19}
!174 = !{ptr @.str.78, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../security/keys/encrypted-keys/encrypted.c", i32 87, i32 3}
!176 = !{ptr @.str.79, !175, !"<string literal>", i1 false, i1 false}
!177 = !{ptr @aes_get_sizes._entry, !175, !"_entry", i1 false, i1 false}
!178 = !{ptr @aes_get_sizes._entry_ptr, !175, !"_entry_ptr", i1 false, i1 false}
!179 = !{i32 1, !"wchar_size", i32 2}
!180 = !{i32 1, !"min_enum_size", i32 4}
!181 = !{i32 8, !"branch-target-enforcement", i32 0}
!182 = !{i32 8, !"sign-return-address", i32 0}
!183 = !{i32 8, !"sign-return-address-all", i32 0}
!184 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!185 = !{i32 7, !"uwtable", i32 1}
!186 = !{i32 7, !"frame-pointer", i32 2}
!187 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!188 = !{!"auto-init"}
!189 = !{i64 2149231563}
!190 = !{!"branch_weights", i32 2000, i32 1}
!191 = !{!"branch_weights", i32 1, i32 2000}
!192 = !{i64 2154739624, i64 2154740116, i64 2154739661, i64 2154739717, i64 2154739751, i64 2154739775, i64 2154739816, i64 2154739837, i64 2154739865, i64 2154739899}
!193 = !{i64 2154729244, i64 2154729736, i64 2154729281, i64 2154729337, i64 2154729371, i64 2154729395, i64 2154729436, i64 2154729457, i64 2154729485, i64 2154729519}
!194 = !{i64 2154734915, i64 2154735407, i64 2154734952, i64 2154735008, i64 2154735042, i64 2154735066, i64 2154735107, i64 2154735128, i64 2154735156, i64 2154735190}
!195 = !{i64 2154932966}
!196 = !{i64 2152523599}
!197 = !{i64 2154943284}
