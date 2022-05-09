; ModuleID = '/llk/IR_all_yes/fs/crypto/keysetup.c_pt.bc'
source_filename = "../fs/crypto/keysetup.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+fscrypt_prepare_new_inode\22, \22a\22\09"
module asm "\09.weak\09__crc_fscrypt_prepare_new_inode\09\09\09\09"
module asm "\09.long\09__crc_fscrypt_prepare_new_inode\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fscrypt_prepare_new_inode:\09\09\09\09\09"
module asm "\09.asciz \09\22fscrypt_prepare_new_inode\22\09\09\09\09\09"
module asm "__kstrtabns_fscrypt_prepare_new_inode:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+fscrypt_put_encryption_info\22, \22a\22\09"
module asm "\09.weak\09__crc_fscrypt_put_encryption_info\09\09\09\09"
module asm "\09.long\09__crc_fscrypt_put_encryption_info\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fscrypt_put_encryption_info:\09\09\09\09\09"
module asm "\09.asciz \09\22fscrypt_put_encryption_info\22\09\09\09\09\09"
module asm "__kstrtabns_fscrypt_put_encryption_info:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+fscrypt_free_inode\22, \22a\22\09"
module asm "\09.weak\09__crc_fscrypt_free_inode\09\09\09\09"
module asm "\09.long\09__crc_fscrypt_free_inode\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fscrypt_free_inode:\09\09\09\09\09"
module asm "\09.asciz \09\22fscrypt_free_inode\22\09\09\09\09\09"
module asm "__kstrtabns_fscrypt_free_inode:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+fscrypt_drop_inode\22, \22a\22\09"
module asm "\09.weak\09__crc_fscrypt_drop_inode\09\09\09\09"
module asm "\09.long\09__crc_fscrypt_drop_inode\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fscrypt_drop_inode:\09\09\09\09\09"
module asm "\09.asciz \09\22fscrypt_drop_inode\22\09\09\09\09\09"
module asm "__kstrtabns_fscrypt_drop_inode:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.fscrypt_mode = type { ptr, ptr, i32, i32, i32, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.fscrypt_info = type { %struct.fscrypt_prepared_key, i8, i8, ptr, ptr, ptr, %struct.list_head, ptr, %struct.siphash_key_t, i8, %union.fscrypt_policy, [16 x i8], i32 }
%struct.fscrypt_prepared_key = type { ptr, ptr }
%struct.siphash_key_t = type { [2 x i64] }
%union.fscrypt_policy = type { %struct.fscrypt_policy_v2 }
%struct.fscrypt_policy_v2 = type { i8, i8, i8, i8, [4 x i8], [16 x i8] }
%struct.crypto_skcipher = type { i32, [124 x i8], %struct.crypto_tfm }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [112 x i8], [0 x ptr] }
%struct.crypto_alg = type { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, %struct.refcount_struct, [128 x i8], [128 x i8], ptr, %union.anon, ptr, ptr, ptr, ptr, %union.anon.72, [120 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%union.anon = type { %struct.cipher_alg }
%struct.cipher_alg = type { i32, i32, ptr, ptr, ptr }
%union.anon.72 = type { %struct.crypto_istat_akcipher }
%struct.crypto_istat_akcipher = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.73, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.74, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.75, ptr, %struct.address_space, %struct.list_head, %union.anon.76, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.73 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%union.anon.74 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%union.anon.75 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.76 = type { ptr }
%struct.fscrypt_master_key = type { %struct.fscrypt_master_key_secret, %struct.fscrypt_key_specifier, ptr, %struct.refcount_struct, %struct.list_head, %struct.spinlock, [10 x %struct.fscrypt_prepared_key], [10 x %struct.fscrypt_prepared_key], [10 x %struct.fscrypt_prepared_key], %struct.siphash_key_t, i8 }
%struct.fscrypt_master_key_secret = type { %struct.fscrypt_hkdf, i32, [64 x i8] }
%struct.fscrypt_hkdf = type { ptr }
%struct.fscrypt_key_specifier = type { i32, i32, %union.anon.77 }
%union.anon.77 = type { [32 x i8] }
%union.fscrypt_context = type { %struct.fscrypt_context_v2 }
%struct.fscrypt_context_v2 = type { i8, i8, i8, i8, [4 x i8], [16 x i8], [16 x i8] }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.hlist_bl_head = type { ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t, %struct.lockdep_map }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.fscrypt_operations = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fscrypt_context_v1 = type { i8, i8, i8, i8, [8 x i8], [16 x i8] }
%struct.key = type { %struct.refcount_struct, i32, %union.anon.22, ptr, %struct.rw_semaphore, ptr, ptr, %union.anon.23, i64, %struct.kuid_t, %struct.kgid_t, i32, i16, i16, i16, i32, %union.anon.24, %union.anon.28, ptr }
%union.anon.22 = type { %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }
%union.anon.23 = type { i64 }
%union.anon.24 = type { %struct.keyring_index_key }
%struct.keyring_index_key = type { i32, %union.anon.25, ptr, ptr, ptr }
%union.anon.25 = type { i32 }
%union.anon.28 = type { %union.key_payload }
%union.key_payload = type { [4 x ptr] }

@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"AES-256-XTS\00", [20 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"xts(aes)\00", [23 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"AES-256-CTS-CBC\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"cts(cbc(aes))\00", [18 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"AES-128-CBC-ESSIV\00", [46 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"essiv(cbc(aes),sha256)\00", [41 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"AES-128-CTS-CBC\00", [16 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Adiantum\00", [23 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"adiantum(xchacha12,aes)\00", [40 x i8] zeroinitializer }, align 32
@fscrypt_modes = dso_local global { [10 x %struct.fscrypt_mode], [72 x i8] } { [10 x %struct.fscrypt_mode] [%struct.fscrypt_mode zeroinitializer, %struct.fscrypt_mode { ptr @.str, ptr @.str.1, i32 64, i32 32, i32 16, i32 0, i32 1 }, %struct.fscrypt_mode zeroinitializer, %struct.fscrypt_mode zeroinitializer, %struct.fscrypt_mode { ptr @.str.2, ptr @.str.3, i32 32, i32 32, i32 16, i32 0, i32 0 }, %struct.fscrypt_mode { ptr @.str.4, ptr @.str.5, i32 16, i32 16, i32 16, i32 0, i32 2 }, %struct.fscrypt_mode { ptr @.str.6, ptr @.str.3, i32 16, i32 16, i32 16, i32 0, i32 0 }, %struct.fscrypt_mode zeroinitializer, %struct.fscrypt_mode zeroinitializer, %struct.fscrypt_mode { ptr @.str.7, ptr @.str.8, i32 32, i32 32, i32 32, i32 0, i32 3 }], [72 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"fs/crypto/keysetup.c\00", [43 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Error %d getting encryption context\00", [60 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Unrecognized or corrupt encryption context\00", [53 x i8] zeroinitializer }, align 32
@fscrypt_prepare_new_inode.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_fscrypt_prepare_new_inode = external dso_local constant [0 x i8], align 1
@__kstrtabns_fscrypt_prepare_new_inode = external dso_local constant [0 x i8], align 1
@__ksymtab_fscrypt_prepare_new_inode = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fscrypt_prepare_new_inode to i32), ptr @__kstrtab_fscrypt_prepare_new_inode, ptr @__kstrtabns_fscrypt_prepare_new_inode }, section "___ksymtab_gpl+fscrypt_prepare_new_inode", align 4
@__kstrtab_fscrypt_put_encryption_info = external dso_local constant [0 x i8], align 1
@__kstrtabns_fscrypt_put_encryption_info = external dso_local constant [0 x i8], align 1
@__ksymtab_fscrypt_put_encryption_info = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fscrypt_put_encryption_info to i32), ptr @__kstrtab_fscrypt_put_encryption_info, ptr @__kstrtabns_fscrypt_put_encryption_info }, section "___ksymtab+fscrypt_put_encryption_info", align 4
@__kstrtab_fscrypt_free_inode = external dso_local constant [0 x i8], align 1
@__kstrtabns_fscrypt_free_inode = external dso_local constant [0 x i8], align 1
@__ksymtab_fscrypt_free_inode = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fscrypt_free_inode to i32), ptr @__kstrtab_fscrypt_free_inode, ptr @__kstrtabns_fscrypt_free_inode }, section "___ksymtab+fscrypt_free_inode", align 4
@__kstrtab_fscrypt_drop_inode = external dso_local constant [0 x i8], align 1
@__kstrtabns_fscrypt_drop_inode = external dso_local constant [0 x i8], align 1
@__ksymtab_fscrypt_drop_inode = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fscrypt_drop_inode to i32), ptr @__kstrtab_fscrypt_drop_inode, ptr @__kstrtabns_fscrypt_drop_inode }, section "___ksymtab_gpl+fscrypt_drop_inode", align 4
@.str.13 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Missing crypto API support for %s (API name: \22%s\22)\00", [45 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Error allocating '%s' transform: %ld\00", [59 x i8] zeroinitializer }, align 32
@fscrypt_allocate_skcipher._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.9, i32 105, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016fscrypt: %s using implementation \22%s\22\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"fscrypt_allocate_skcipher\00", [38 x i8] zeroinitializer }, align 32
@fscrypt_allocate_skcipher._entry_ptr = internal global ptr @fscrypt_allocate_skcipher._entry, section ".printk_index", align 4
@fscrypt_info_cachep = external dso_local local_unnamed_addr global ptr, align 4
@select_encryption_mode.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.18 = internal constant { [106 x i8], [54 x i8] } { [106 x i8] c"fscrypt: filesystem tried to load encryption info for inode %lu, which is not encryptable (file type %d)\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"key with %s %*phN is too short (got %u bytes, need %u+ bytes)\00", [34 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"descriptor\00", [21 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"identifier\00", [21 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"[unknown]\00", [22 x i8] zeroinitializer }, align 32
@fscrypt_mode_key_setup_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.23, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @fscrypt_mode_key_setup_mutex, i64 52), ptr getelementptr (i8, ptr @fscrypt_mode_key_setup_mutex, i64 52) }, ptr @fscrypt_mode_key_setup_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.24, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"fscrypt_mode_key_setup_mutex.wait_lock\00", [57 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"fscrypt_mode_key_setup_mutex\00", [35 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"fs/crypto/fscrypt_private.h\00", [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.26 = internal global [5 x i64] [i64 3, i64 16, i64 16384, i64 32768, i64 40960]
@__sancov_gen_cov_switch_values.27 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 2]
@__sancov_gen_cov_switch_values.28 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 2]
@__sancov_gen_cov_switch_values.29 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 2]
@__sancov_gen_cov_switch_values.30 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 2]
@__sancov_gen_cov_switch_values.31 = internal global [5 x i64] [i64 3, i64 16, i64 16384, i64 32768, i64 40960]
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 19, i32 20 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 20, i32 17 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 27, i32 20 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 28, i32 17 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 34, i32 20 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 35, i32 17 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 42, i32 20 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 49, i32 20 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 50, i32 17 }
@___asan_gen_.59 = private unnamed_addr constant [14 x i8] c"fscrypt_modes\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 17, i32 21 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 262, i32 2 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 635, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 643, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 88, i32 4 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 93, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 104, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 72, i32 2 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 394, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 526, i32 10 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 528, i32 10 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 530, i32 9 }
@___asan_gen_.107 = private unnamed_addr constant [29 x i8] c"fscrypt_mode_key_setup_mutex\00", align 1
@___asan_gen_.114 = private constant [24 x i8] c"../fs/crypto/keysetup.c\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 58, i32 8 }
@___asan_gen_.116 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.117 = private unnamed_addr constant [31 x i8] c"../fs/crypto/fscrypt_private.h\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 104, i32 2 }
@llvm.compiler.used = appending global [34 x ptr] [ptr @__ksymtab_fscrypt_drop_inode, ptr @__ksymtab_fscrypt_free_inode, ptr @__ksymtab_fscrypt_prepare_new_inode, ptr @__ksymtab_fscrypt_put_encryption_info, ptr @fscrypt_allocate_skcipher._entry, ptr @fscrypt_allocate_skcipher._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @fscrypt_modes, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @fscrypt_mode_key_setup_mutex, ptr @.str.23, ptr @.str.24, ptr @.str.25], section "llvm.metadata"
@0 = internal global [29 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fscrypt_modes to i32), i32 280, i32 352, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fscrypt_allocate_skcipher._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 106, i32 160, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fscrypt_mode_key_setup_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fscrypt_prepare_key(ptr noundef %prep_key, ptr noundef %raw_key, ptr noundef %ci) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ci_inlinecrypt.i = getelementptr inbounds %struct.fscrypt_info, ptr %ci, i32 0, i32 2
  %0 = ptrtoint ptr %ci_inlinecrypt.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ci_inlinecrypt.i, align 1, !range !73
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.i.not = icmp eq i8 %1, 0
  br i1 %tobool.i.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call1 = tail call i32 @fscrypt_prepare_inline_crypt_key(ptr noundef %prep_key, ptr noundef %raw_key, ptr noundef %ci) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %ci_mode = getelementptr inbounds %struct.fscrypt_info, ptr %ci, i32 0, i32 3
  %2 = ptrtoint ptr %ci_mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ci_mode, align 4
  %ci_inode = getelementptr inbounds %struct.fscrypt_info, ptr %ci, i32 0, i32 4
  %4 = ptrtoint ptr %ci_inode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ci_inode, align 8
  %cipher_str.i = getelementptr inbounds %struct.fscrypt_mode, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %cipher_str.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cipher_str.i, align 4
  %call.i = tail call ptr @crypto_alloc_skcipher(ptr noundef %7, i32 noundef 0, i32 noundef 0) #7
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then.i, label %if.end8.i

if.then.i:                                        ; preds = %if.end
  %cmp.i = icmp eq ptr %call.i, inttoptr (i32 -2 to ptr)
  br i1 %cmp.i, label %fscrypt_allocate_skcipher.exit.thread, label %if.end.i

fscrypt_allocate_skcipher.exit.thread:            ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 4
  %10 = ptrtoint ptr %cipher_str.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cipher_str.i, align 4
  tail call void (ptr, ptr, ptr, ...) @fscrypt_msg(ptr noundef %5, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.13, ptr noundef %9, ptr noundef %11) #10
  br label %if.then4

if.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %call.i to i32
  %13 = ptrtoint ptr %cipher_str.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cipher_str.i, align 4
  tail call void (ptr, ptr, ptr, ...) @fscrypt_msg(ptr noundef %5, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, ptr noundef %14, i32 noundef %12) #10
  br label %fscrypt_allocate_skcipher.exit

if.end8.i:                                        ; preds = %if.end
  %logged_impl_name.i = getelementptr inbounds %struct.fscrypt_mode, ptr %3, i32 0, i32 5
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %logged_impl_name.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !74
  tail call void @llvm.prefetch.p0(ptr %logged_impl_name.i, i32 1, i32 3, i32 1) #7
  %15 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 1, ptr %logged_impl_name.i) #7, !srcloc !75
  %asmresult.i.i = extractvalue { i32, i32 } %15, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !76
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %tobool.not.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %tobool.not.i, label %do.end27.i, label %if.end8.i.if.end32.i_crit_edge

if.end8.i.if.end32.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32.i

do.end27.i:                                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %3, align 4
  %__crt_alg.i.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %call.i, i32 0, i32 2, i32 3
  %18 = ptrtoint ptr %__crt_alg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %__crt_alg.i.i.i, align 4
  %cra_driver_name.i.i.i = getelementptr inbounds %struct.crypto_alg, ptr %19, i32 0, i32 9
  %call31.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef %17, ptr noundef %cra_driver_name.i.i.i) #10
  br label %if.end32.i

if.end32.i:                                       ; preds = %do.end27.i, %if.end8.i.if.end32.i_crit_edge
  %__crt_alg.i.i89.i = getelementptr inbounds %struct.crypto_skcipher, ptr %call.i, i32 0, i32 2, i32 3
  %20 = ptrtoint ptr %__crt_alg.i.i89.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %__crt_alg.i.i89.i, align 4
  %ivsize.i.i = getelementptr i8, ptr %21, i32 -100
  %22 = ptrtoint ptr %ivsize.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ivsize.i.i, align 4
  %ivsize.i = getelementptr inbounds %struct.fscrypt_mode, ptr %3, i32 0, i32 4
  %24 = ptrtoint ptr %ivsize.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %ivsize.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %25)
  %cmp34.not.i = icmp eq i32 %23, %25
  br i1 %cmp34.not.i, label %if.end62.i, label %do.end46.i, !prof !77

do.end46.i:                                       ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 107, i32 noundef 9, ptr noundef null) #7
  br label %err_free_tfm.i

if.end62.i:                                       ; preds = %if.end32.i
  %base.i.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %call.i, i32 0, i32 2
  %26 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %base.i.i.i, align 128
  %or.i.i.i = or i32 %27, 256
  store i32 %or.i.i.i, ptr %base.i.i.i, align 128
  %keysize.i = getelementptr inbounds %struct.fscrypt_mode, ptr %3, i32 0, i32 2
  %28 = ptrtoint ptr %keysize.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %keysize.i, align 4
  %call63.i = tail call i32 @crypto_skcipher_setkey(ptr noundef %call.i, ptr noundef %raw_key, i32 noundef %29) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63.i)
  %tobool64.not.i = icmp eq i32 %call63.i, 0
  br i1 %tobool64.not.i, label %if.end62.i.fscrypt_allocate_skcipher.exit_crit_edge, label %if.end62.i.err_free_tfm.i_crit_edge

if.end62.i.err_free_tfm.i_crit_edge:              ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_free_tfm.i

if.end62.i.fscrypt_allocate_skcipher.exit_crit_edge: ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fscrypt_allocate_skcipher.exit

err_free_tfm.i:                                   ; preds = %if.end62.i.err_free_tfm.i_crit_edge, %do.end46.i
  %err.0.i = phi i32 [ -22, %do.end46.i ], [ %call63.i, %if.end62.i.err_free_tfm.i_crit_edge ]
  %base.i.i90.i = getelementptr inbounds %struct.crypto_skcipher, ptr %call.i, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef %call.i, ptr noundef %base.i.i90.i) #7
  %30 = inttoptr i32 %err.0.i to ptr
  br label %fscrypt_allocate_skcipher.exit

fscrypt_allocate_skcipher.exit:                   ; preds = %err_free_tfm.i, %if.end62.i.fscrypt_allocate_skcipher.exit_crit_edge, %if.end.i
  %retval.0.i = phi ptr [ %call.i, %if.end.i ], [ %30, %err_free_tfm.i ], [ %call.i, %if.end62.i.fscrypt_allocate_skcipher.exit_crit_edge ]
  %cmp.i33 = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i33, label %fscrypt_allocate_skcipher.exit.if.then4_crit_edge, label %do.end11

fscrypt_allocate_skcipher.exit.if.then4_crit_edge: ; preds = %fscrypt_allocate_skcipher.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then4

if.then4:                                         ; preds = %fscrypt_allocate_skcipher.exit.if.then4_crit_edge, %fscrypt_allocate_skcipher.exit.thread
  %retval.0.i36 = phi ptr [ inttoptr (i32 -65 to ptr), %fscrypt_allocate_skcipher.exit.thread ], [ %retval.0.i, %fscrypt_allocate_skcipher.exit.if.then4_crit_edge ]
  %31 = ptrtoint ptr %retval.0.i36 to i32
  br label %cleanup

do.end11:                                         ; preds = %fscrypt_allocate_skcipher.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !78
  %32 = ptrtoint ptr %prep_key to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %retval.0.i, ptr %prep_key, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end11, %if.then4, %if.then
  %retval.0 = phi i32 [ %call1, %if.then ], [ %31, %if.then4 ], [ 0, %do.end11 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fscrypt_prepare_inline_crypt_key(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fscrypt_destroy_prepared_key(ptr noundef %prep_key) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %prep_key to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prep_key, align 4
  %base.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %1, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef %1, ptr noundef %base.i.i) #7
  tail call void @fscrypt_destroy_inline_crypt_key(ptr noundef %prep_key) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fscrypt_destroy_inline_crypt_key(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fscrypt_set_per_file_enc_key(ptr noundef %ci, ptr noundef %raw_key) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ci_owns_key = getelementptr inbounds %struct.fscrypt_info, ptr %ci, i32 0, i32 1
  %0 = ptrtoint ptr %ci_owns_key to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %ci_owns_key, align 8
  %call = tail call i32 @fscrypt_prepare_key(ptr noundef %ci, ptr noundef %raw_key, ptr noundef %ci)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fscrypt_derive_dirhash_key(ptr noundef %ci, ptr noundef %mk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ci_nonce = getelementptr inbounds %struct.fscrypt_info, ptr %ci, i32 0, i32 11
  %ci_dirhash_key = getelementptr inbounds %struct.fscrypt_info, ptr %ci, i32 0, i32 8
  %call.i = tail call i32 @fscrypt_hkdf_expand(ptr noundef %mk, i8 noundef zeroext 5, ptr noundef %ci_nonce, i32 noundef 16, ptr noundef %ci_dirhash_key, i32 noundef 16) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %ci_dirhash_key to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %ci_dirhash_key, align 8
  %2 = tail call i64 @llvm.bswap.i64(i64 %1) #7
  %3 = ptrtoint ptr %ci_dirhash_key to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %2, ptr %ci_dirhash_key, align 8
  %arrayidx6.i = getelementptr %struct.fscrypt_info, ptr %ci, i32 0, i32 8, i32 0, i32 1
  %4 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %arrayidx6.i, align 8
  %6 = tail call i64 @llvm.bswap.i64(i64 %5) #7
  %7 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %6, ptr %arrayidx6.i, align 8
  %ci_dirhash_key_initialized = getelementptr inbounds %struct.fscrypt_info, ptr %ci, i32 0, i32 9
  %8 = ptrtoint ptr %ci_dirhash_key_initialized to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %ci_dirhash_key_initialized, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fscrypt_hash_inode_number(ptr nocapture noundef %ci, ptr noundef %mk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ci_inode = getelementptr inbounds %struct.fscrypt_info, ptr %ci, i32 0, i32 4
  %0 = ptrtoint ptr %ci_inode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ci_inode, align 8
  %i_ino = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %i_ino, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge, !prof !79

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 262, i32 noundef 9, ptr noundef null) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %mk_ino_hash_key_initialized = getelementptr inbounds %struct.fscrypt_master_key, ptr %mk, i32 0, i32 10
  %4 = ptrtoint ptr %mk_ino_hash_key_initialized to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %mk_ino_hash_key_initialized, align 8, !range !73
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool20.not = icmp eq i8 %5, 0
  br i1 %tobool20.not, label %do.end38, label %if.end.if.end44_crit_edge, !prof !79

if.end.if.end44_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end44

do.end38:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 263, i32 noundef 9, ptr noundef null) #7
  br label %if.end44

if.end44:                                         ; preds = %do.end38, %if.end.if.end44_crit_edge
  %6 = ptrtoint ptr %ci_inode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ci_inode, align 8
  %i_ino53 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 11
  %8 = ptrtoint ptr %i_ino53 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %i_ino53, align 8
  %conv = zext i32 %9 to i64
  %mk_ino_hash_key = getelementptr inbounds %struct.fscrypt_master_key, ptr %mk, i32 0, i32 9
  %call = tail call i64 @siphash_1u64(i64 noundef %conv, ptr noundef %mk_ino_hash_key) #7
  %conv54 = trunc i64 %call to i32
  %ci_hashed_ino = getelementptr inbounds %struct.fscrypt_info, ptr %ci, i32 0, i32 12
  %10 = ptrtoint ptr %ci_hashed_ino to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %conv54, ptr %ci_hashed_ino, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @siphash_1u64(i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fscrypt_get_encryption_info(ptr noundef %inode, i1 noundef zeroext %allow_unsupported) local_unnamed_addr #0 align 64 {
entry:
  %ctx = alloca %union.fscrypt_context, align 1
  %policy = alloca %union.fscrypt_policy, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %ctx) #7
  %0 = call ptr @memset(ptr %ctx, i32 255, i32 40)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %policy) #7
  %i_crypt_info.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 52
  %1 = call ptr @memset(ptr %policy, i32 255, i32 24)
  %2 = ptrtoint ptr %i_crypt_info.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %i_crypt_info.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !80
  %cmp.i.not = icmp eq ptr %3, null
  br i1 %cmp.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %4 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_sb, align 4
  %s_cop = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 19
  %6 = ptrtoint ptr %s_cop to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_cop, align 4
  %get_context = getelementptr inbounds %struct.fscrypt_operations, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %get_context to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %get_context, align 4
  %call1 = call i32 %9(ptr noundef %inode, ptr noundef nonnull %ctx, i32 noundef 40) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.then2, label %if.end6

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 -34, i32 %call1)
  %cmp3 = icmp eq i32 %call1, -34
  %10 = and i1 %cmp3, %allow_unsupported
  br i1 %10, label %if.then2.cleanup_crit_edge, label %if.end5

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ptr, ...) @fscrypt_msg(ptr noundef %inode, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, i32 noundef %call1) #10
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call7 = call i32 @fscrypt_policy_from_context(ptr noundef nonnull %policy, ptr noundef nonnull %ctx, i32 noundef %call1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end13, label %if.then9

if.then9:                                         ; preds = %if.end6
  br i1 %allow_unsupported, label %if.then9.cleanup_crit_edge, label %if.end12

if.then9.cleanup_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end12:                                         ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ptr, ...) @fscrypt_msg(ptr noundef %inode, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.12) #10
  br label %cleanup

if.end13:                                         ; preds = %if.end6
  %call14 = call zeroext i1 @fscrypt_supported_policy(ptr noundef nonnull %policy, ptr noundef %inode) #7
  br i1 %call14, label %if.end19, label %if.then15

if.then15:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  %. = select i1 %allow_unsupported, i32 0, i32 -22
  br label %cleanup

if.end19:                                         ; preds = %if.end13
  %11 = ptrtoint ptr %ctx to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %ctx, align 1
  %13 = zext i8 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values)
  switch i8 %12, label %do.end.i [
    i8 1, label %sw.bb.i
    i8 2, label %sw.bb1.i
  ]

sw.bb.i:                                          ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  %nonce.i = getelementptr inbounds %struct.fscrypt_context_v1, ptr %ctx, i32 0, i32 5
  br label %fscrypt_context_nonce.exit

sw.bb1.i:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  %nonce2.i = getelementptr inbounds %struct.fscrypt_context_v2, ptr %ctx, i32 0, i32 6
  br label %fscrypt_context_nonce.exit

do.end.i:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.25, i32 noundef 104, i32 noundef 9, ptr noundef null) #7
  br label %fscrypt_context_nonce.exit

fscrypt_context_nonce.exit:                       ; preds = %do.end.i, %sw.bb1.i, %sw.bb.i
  %retval.0.i = phi ptr [ null, %do.end.i ], [ %nonce2.i, %sw.bb1.i ], [ %nonce.i, %sw.bb.i ]
  %i_flags = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 4
  %14 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %i_flags, align 4
  %and = and i32 %15, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool21.not = icmp eq i32 %and, 0
  br i1 %tobool21.not, label %fscrypt_context_nonce.exit.land.end_crit_edge, label %land.rhs

fscrypt_context_nonce.exit.land.end_crit_edge:    ; preds = %fscrypt_context_nonce.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.end

land.rhs:                                         ; preds = %fscrypt_context_nonce.exit
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %inode, align 8
  %18 = and i16 %17, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %18)
  %cmp23 = icmp eq i16 %18, 16384
  br label %land.end

land.end:                                         ; preds = %land.rhs, %fscrypt_context_nonce.exit.land.end_crit_edge
  %19 = phi i1 [ false, %fscrypt_context_nonce.exit.land.end_crit_edge ], [ %cmp23, %land.rhs ]
  %call25 = call fastcc i32 @fscrypt_setup_encryption_info(ptr noundef %inode, ptr noundef nonnull %policy, ptr noundef %retval.0.i, i1 noundef zeroext %19)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -65, i32 %call25)
  %cmp26 = icmp eq i32 %call25, -65
  %spec.select = select i1 %allow_unsupported, i32 0, i32 -65
  %res.0 = select i1 %cmp26, i32 %spec.select, i32 %call25
  call void @__sanitizer_cov_trace_const_cmp4(i32 -126, i32 %res.0)
  %cmp33 = icmp eq i32 %res.0, -126
  %spec.store.select = select i1 %cmp33, i32 0, i32 %res.0
  br label %cleanup

cleanup:                                          ; preds = %land.end, %if.then15, %if.end12, %if.then9.cleanup_crit_edge, %if.end5, %if.then2.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end5 ], [ %call7, %if.end12 ], [ %spec.store.select, %land.end ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.then2.cleanup_crit_edge ], [ 0, %if.then9.cleanup_crit_edge ], [ %., %if.then15 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %policy) #7
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %ctx) #7
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @fscrypt_msg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fscrypt_policy_from_context(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @fscrypt_supported_policy(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fscrypt_setup_encryption_info(ptr noundef %inode, ptr nocapture noundef readonly %policy, ptr nocapture noundef readonly %nonce, i1 noundef zeroext %need_dirhash_key) unnamed_addr #0 align 64 {
entry:
  %mk_spec.i = alloca %struct.fscrypt_key_specifier, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_cop = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %s_cop to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_cop, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %call = tail call i32 @fscrypt_initialize(i32 noundef %5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fscrypt_info_cachep to i32))
  %6 = load ptr, ptr @fscrypt_info_cachep, align 4
  %call.i89 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %6, i32 noundef 3520) #7
  %tobool2.not = icmp eq ptr %call.i89, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %ci_inode = getelementptr inbounds %struct.fscrypt_info, ptr %call.i89, i32 0, i32 4
  %7 = ptrtoint ptr %ci_inode to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %inode, ptr %ci_inode, align 8
  %ci_policy = getelementptr inbounds %struct.fscrypt_info, ptr %call.i89, i32 0, i32 10
  %8 = call ptr @memcpy(ptr %ci_policy, ptr %policy, i32 24)
  %ci_nonce = getelementptr inbounds %struct.fscrypt_info, ptr %call.i89, i32 0, i32 11
  %9 = call ptr @memcpy(ptr %ci_nonce, ptr %nonce, i32 16)
  %10 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %inode, align 8
  %12 = and i16 %11, -4096
  %13 = zext i16 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.26)
  switch i16 %12, label %land.end.i [
    i16 -32768, label %if.then.i
    i16 16384, label %if.end4.if.then12.i_crit_edge
    i16 -24576, label %if.end4.if.then12.i_crit_edge122
  ]

if.end4.if.then12.i_crit_edge122:                 ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then12.i

if.end4.if.then12.i_crit_edge:                    ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then12.i

if.then.i:                                        ; preds = %if.end4
  %14 = ptrtoint ptr %ci_policy to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %ci_policy, align 1
  %16 = zext i8 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.27)
  switch i8 %15, label %do.body.i.i [
    i8 0, label %if.then.i.fscrypt_policy_contents_mode.exit.i_crit_edge
    i8 2, label %if.then.i.fscrypt_policy_contents_mode.exit.i_crit_edge123
  ]

if.then.i.fscrypt_policy_contents_mode.exit.i_crit_edge123: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fscrypt_policy_contents_mode.exit.i

if.then.i.fscrypt_policy_contents_mode.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fscrypt_policy_contents_mode.exit.i

do.body.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/crypto/fscrypt_private.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 139, 0\0A.popsection", ""() #7, !srcloc !81
  unreachable

fscrypt_policy_contents_mode.exit.i:              ; preds = %if.then.i.fscrypt_policy_contents_mode.exit.i_crit_edge, %if.then.i.fscrypt_policy_contents_mode.exit.i_crit_edge123
  %retval.0.in.i.i = getelementptr inbounds %struct.fscrypt_info, ptr %call.i89, i32 0, i32 10, i32 0, i32 1
  br label %select_encryption_mode.exit

if.then12.i:                                      ; preds = %if.end4.if.then12.i_crit_edge, %if.end4.if.then12.i_crit_edge122
  %17 = ptrtoint ptr %ci_policy to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %ci_policy, align 1
  %19 = zext i8 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.28)
  switch i8 %18, label %do.body.i68.i [
    i8 0, label %if.then12.i.fscrypt_policy_fnames_mode.exit.i_crit_edge
    i8 2, label %if.then12.i.fscrypt_policy_fnames_mode.exit.i_crit_edge124
  ]

if.then12.i.fscrypt_policy_fnames_mode.exit.i_crit_edge124: ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fscrypt_policy_fnames_mode.exit.i

if.then12.i.fscrypt_policy_fnames_mode.exit.i_crit_edge: ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fscrypt_policy_fnames_mode.exit.i

do.body.i68.i:                                    ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/crypto/fscrypt_private.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 152, 0\0A.popsection", ""() #7, !srcloc !82
  unreachable

fscrypt_policy_fnames_mode.exit.i:                ; preds = %if.then12.i.fscrypt_policy_fnames_mode.exit.i_crit_edge, %if.then12.i.fscrypt_policy_fnames_mode.exit.i_crit_edge124
  %retval.0.in.i69.i = getelementptr inbounds %struct.fscrypt_info, ptr %call.i89, i32 0, i32 10, i32 0, i32 2
  br label %select_encryption_mode.exit

land.end.i:                                       ; preds = %if.end4
  %.b65.i = load i1, ptr @select_encryption_mode.__already_done, align 1
  br i1 %.b65.i, label %land.end.i.if.then8_crit_edge, label %if.then22.i, !prof !77

land.end.i.if.then8_crit_edge:                    ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then8

if.then22.i:                                      ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @select_encryption_mode.__already_done, align 1
  %i_ino.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %20 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %i_ino.i, align 8
  %and36.i = zext i16 %12 to i32
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 73, i32 noundef 9, ptr noundef nonnull @.str.18, i32 noundef %21, i32 noundef %and36.i) #7
  br label %if.then8

select_encryption_mode.exit:                      ; preds = %fscrypt_policy_fnames_mode.exit.i, %fscrypt_policy_contents_mode.exit.i
  %idxprom.i.pn.in.in = phi ptr [ %retval.0.in.i.i, %fscrypt_policy_contents_mode.exit.i ], [ %retval.0.in.i69.i, %fscrypt_policy_fnames_mode.exit.i ]
  %22 = ptrtoint ptr %idxprom.i.pn.in.in to i32
  call void @__asan_load1_noabort(i32 %22)
  %idxprom.i.pn.in = load i8, ptr %idxprom.i.pn.in.in, align 1
  %idxprom.i.pn = zext i8 %idxprom.i.pn.in to i32
  %retval.0.i = getelementptr [10 x %struct.fscrypt_mode], ptr @fscrypt_modes, i32 0, i32 %idxprom.i.pn
  %cmp.i = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %select_encryption_mode.exit.if.then8_crit_edge, label %if.end10

select_encryption_mode.exit.if.then8_crit_edge:   ; preds = %select_encryption_mode.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then8

if.then8:                                         ; preds = %select_encryption_mode.exit.if.then8_crit_edge, %if.then22.i, %land.end.i.if.then8_crit_edge
  %retval.0.i99 = phi ptr [ %retval.0.i, %select_encryption_mode.exit.if.then8_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.then22.i ], [ inttoptr (i32 -22 to ptr), %land.end.i.if.then8_crit_edge ]
  %23 = ptrtoint ptr %retval.0.i99 to i32
  br label %if.end60

if.end10:                                         ; preds = %select_encryption_mode.exit
  %ivsize = getelementptr [10 x %struct.fscrypt_mode], ptr @fscrypt_modes, i32 0, i32 %idxprom.i.pn, i32 4
  %24 = ptrtoint ptr %ivsize to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %ivsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %25)
  %cmp = icmp sgt i32 %25, 32
  br i1 %cmp, label %do.end, label %if.end10.if.end25_crit_edge, !prof !79

if.end10.if.end25_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25

do.end:                                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 562, i32 noundef 9, ptr noundef null) #7
  br label %if.end25

if.end25:                                         ; preds = %do.end, %if.end10.if.end25_crit_edge
  %ci_mode = getelementptr inbounds %struct.fscrypt_info, ptr %call.i89, i32 0, i32 3
  %26 = ptrtoint ptr %ci_mode to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %retval.0.i, ptr %ci_mode, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %mk_spec.i) #7
  %27 = call ptr @memset(ptr %mk_spec.i, i32 255, i32 40)
  %call.i90 = tail call i32 @fscrypt_select_encryption_impl(ptr noundef nonnull %call.i89) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i90)
  %tobool.not.i = icmp eq i32 %call.i90, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end25.setup_file_encryption_key.exit.thread_crit_edge

if.end25.setup_file_encryption_key.exit.thread_crit_edge: ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %setup_file_encryption_key.exit.thread

if.end.i:                                         ; preds = %if.end25
  %28 = ptrtoint ptr %ci_policy to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %ci_policy, align 1
  %30 = zext i8 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.29)
  switch i8 %29, label %do.end.i [
    i8 0, label %sw.bb.i
    i8 2, label %sw.bb3.i
  ]

sw.bb.i:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %31 = ptrtoint ptr %mk_spec.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 1, ptr %mk_spec.i, align 4
  %u.i = getelementptr inbounds %struct.fscrypt_key_specifier, ptr %mk_spec.i, i32 0, i32 2
  %master_key_descriptor.i = getelementptr inbounds %struct.fscrypt_info, ptr %call.i89, i32 0, i32 10, i32 0, i32 4
  %32 = ptrtoint ptr %master_key_descriptor.i to i32
  call void @__asan_loadN_noabort(i32 %32, i32 8)
  %33 = load i64, ptr %master_key_descriptor.i, align 1
  %34 = ptrtoint ptr %u.i to i32
  call void @__asan_storeN_noabort(i32 %34, i32 8)
  store i64 %33, ptr %u.i, align 4
  br label %sw.epilog.i

sw.bb3.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %35 = ptrtoint ptr %mk_spec.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 2, ptr %mk_spec.i, align 4
  %u5.i = getelementptr inbounds %struct.fscrypt_key_specifier, ptr %mk_spec.i, i32 0, i32 2
  %master_key_identifier.i = getelementptr inbounds %struct.fscrypt_info, ptr %call.i89, i32 0, i32 10, i32 0, i32 5
  %36 = call ptr @memcpy(ptr %u5.i, ptr %master_key_identifier.i, i32 16)
  br label %sw.epilog.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 442, i32 noundef 9, ptr noundef null) #7
  br label %setup_file_encryption_key.exit.thread

sw.epilog.i:                                      ; preds = %sw.bb3.i, %sw.bb.i
  %37 = ptrtoint ptr %ci_inode to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ci_inode, align 8
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %38, i32 0, i32 8
  %39 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %i_sb.i, align 4
  %call26.i = call ptr @fscrypt_find_master_key(ptr noundef %40, ptr noundef nonnull %mk_spec.i) #7
  %cmp.i.i = icmp ugt ptr %call26.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then28.i, label %if.end39.i

if.then28.i:                                      ; preds = %sw.epilog.i
  %cmp.not.i = icmp eq ptr %call26.i, inttoptr (i32 -126 to ptr)
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %if.then28.i.if.then35.i_crit_edge

if.then28.i.if.then35.i_crit_edge:                ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then35.i

lor.lhs.false.i:                                  ; preds = %if.then28.i
  %41 = ptrtoint ptr %ci_policy to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %ci_policy, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %cmp33.not.i = icmp eq i8 %42, 0
  br i1 %cmp33.not.i, label %if.end37.i, label %lor.lhs.false.i.if.then35.i_crit_edge

lor.lhs.false.i.if.then35.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then35.i

if.then35.i:                                      ; preds = %lor.lhs.false.i.if.then35.i_crit_edge, %if.then28.i.if.then35.i_crit_edge
  %43 = ptrtoint ptr %call26.i to i32
  br label %setup_file_encryption_key.exit

if.end37.i:                                       ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  %call38.i = call i32 @fscrypt_setup_v1_file_key_via_subscribed_keyrings(ptr noundef nonnull %call.i89) #7
  br label %setup_file_encryption_key.exit

if.end39.i:                                       ; preds = %sw.epilog.i
  %44 = getelementptr inbounds %struct.key, ptr %call26.i, i32 0, i32 17
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %44, align 4
  %sem.i = getelementptr inbounds %struct.key, ptr %call26.i, i32 0, i32 4
  call void @down_read(ptr noundef %sem.i) #7
  %size.i.i = getelementptr inbounds %struct.fscrypt_master_key_secret, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %size.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp.i115.not.i = icmp eq i32 %48, 0
  br i1 %cmp.i115.not.i, label %if.end39.i.out_release_key.i_crit_edge, label %if.end42.i

if.end39.i.out_release_key.i_crit_edge:           ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_release_key.i

if.end42.i:                                       ; preds = %if.end39.i
  %49 = ptrtoint ptr %ci_policy to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %ci_policy, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %cmp.i116.i = icmp eq i8 %50, 0
  %51 = ptrtoint ptr %ci_mode to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ci_mode, align 4
  %keysize.i.i = getelementptr inbounds %struct.fscrypt_mode, ptr %52, i32 0, i32 2
  %security_strength.i.i = getelementptr inbounds %struct.fscrypt_mode, ptr %52, i32 0, i32 3
  %min_keysize.0.in.i.i = select i1 %cmp.i116.i, ptr %keysize.i.i, ptr %security_strength.i.i
  %53 = ptrtoint ptr %min_keysize.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %min_keysize.0.i.i = load i32, ptr %min_keysize.0.in.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %48, i32 %min_keysize.0.i.i)
  %cmp3.i.i = icmp ult i32 %48, %min_keysize.0.i.i
  br i1 %cmp3.i.i, label %fscrypt_valid_master_key_size.exit.i, label %if.end45.i

fscrypt_valid_master_key_size.exit.i:             ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #9
  %mk_spec.i.i = getelementptr inbounds %struct.fscrypt_master_key, ptr %46, i32 0, i32 1
  %54 = ptrtoint ptr %mk_spec.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %mk_spec.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %55)
  %switch.selectcmp.i.i.i = icmp eq i32 %55, 2
  %switch.select.i.i.i = select i1 %switch.selectcmp.i.i.i, ptr @.str.21, ptr @.str.22
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %55)
  %switch.selectcmp2.i.i.i = icmp eq i32 %55, 1
  %switch.select3.i.i.i = select i1 %switch.selectcmp2.i.i.i, ptr @.str.20, ptr %switch.select.i.i.i
  %switch.select.i20.i.i = select i1 %switch.selectcmp.i.i.i, i32 16, i32 0
  %switch.select3.i22.i.i = select i1 %switch.selectcmp2.i.i.i, i32 8, i32 %switch.select.i20.i.i
  %u.i.i = getelementptr inbounds %struct.fscrypt_master_key, ptr %46, i32 0, i32 1, i32 2
  call void (ptr, ptr, ptr, ...) @fscrypt_msg(ptr noundef null, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.19, ptr noundef nonnull %switch.select3.i.i.i, i32 noundef %switch.select3.i22.i.i, ptr noundef %u.i.i, i32 noundef %48, i32 noundef %min_keysize.0.i.i) #10
  br label %out_release_key.i

if.end45.i:                                       ; preds = %if.end42.i
  %56 = zext i8 %50 to i64
  call void @__sanitizer_cov_trace_switch(i64 %56, ptr @__sancov_gen_cov_switch_values.30)
  switch i8 %50, label %sw.epilog82.thread.i [
    i8 0, label %sw.bb48.i
    i8 2, label %sw.bb52.i
  ]

sw.bb48.i:                                        ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #9
  %raw.i = getelementptr inbounds %struct.fscrypt_master_key_secret, ptr %46, i32 0, i32 2
  %call51.i = call i32 @fscrypt_setup_v1_file_key(ptr noundef nonnull %call.i89, ptr noundef %raw.i) #7
  br label %sw.epilog82.i

sw.bb52.i:                                        ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #9
  %call54.i = call fastcc i32 @fscrypt_setup_v2_file_key(ptr noundef nonnull %call.i89, ptr noundef %46, i1 noundef zeroext %need_dirhash_key) #7
  br label %sw.epilog82.i

sw.epilog82.thread.i:                             ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 483, i32 noundef 9, ptr noundef null) #7
  br label %out_release_key.i

sw.epilog82.i:                                    ; preds = %sw.bb52.i, %sw.bb48.i
  %err.0.i = phi i32 [ %call54.i, %sw.bb52.i ], [ %call51.i, %sw.bb48.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.i)
  %tobool83.not.i = icmp eq i32 %err.0.i, 0
  br i1 %tobool83.not.i, label %setup_file_encryption_key.exit.thread103, label %sw.epilog82.i.out_release_key.i_crit_edge

sw.epilog82.i.out_release_key.i_crit_edge:        ; preds = %sw.epilog82.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_release_key.i

setup_file_encryption_key.exit.thread103:         ; preds = %sw.epilog82.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %mk_spec.i) #7
  br label %if.end36

out_release_key.i:                                ; preds = %sw.epilog82.i.out_release_key.i_crit_edge, %sw.epilog82.thread.i, %fscrypt_valid_master_key_size.exit.i, %if.end39.i.out_release_key.i_crit_edge
  %err.1.i = phi i32 [ %err.0.i, %sw.epilog82.i.out_release_key.i_crit_edge ], [ -126, %if.end39.i.out_release_key.i_crit_edge ], [ -126, %fscrypt_valid_master_key_size.exit.i ], [ -22, %sw.epilog82.thread.i ]
  call void @up_read(ptr noundef %sem.i) #7
  call void @key_put(ptr noundef %call26.i) #7
  br label %setup_file_encryption_key.exit.thread

setup_file_encryption_key.exit.thread:            ; preds = %out_release_key.i, %do.end.i, %if.end25.setup_file_encryption_key.exit.thread_crit_edge
  %retval.0.i91.ph = phi i32 [ %call.i90, %if.end25.setup_file_encryption_key.exit.thread_crit_edge ], [ %err.1.i, %out_release_key.i ], [ -22, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %mk_spec.i) #7
  br label %if.end60

setup_file_encryption_key.exit:                   ; preds = %if.end37.i, %if.then35.i
  %retval.0.i91 = phi i32 [ %43, %if.then35.i ], [ %call38.i, %if.end37.i ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %mk_spec.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i91)
  %tobool34.not = icmp eq i32 %retval.0.i91, 0
  br i1 %tobool34.not, label %setup_file_encryption_key.exit.if.end36_crit_edge, label %setup_file_encryption_key.exit.if.end60_crit_edge

setup_file_encryption_key.exit.if.end60_crit_edge: ; preds = %setup_file_encryption_key.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end60

setup_file_encryption_key.exit.if.end36_crit_edge: ; preds = %setup_file_encryption_key.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36

if.end36:                                         ; preds = %setup_file_encryption_key.exit.if.end36_crit_edge, %setup_file_encryption_key.exit.thread103
  %master_key.0107 = phi ptr [ %call26.i, %setup_file_encryption_key.exit.thread103 ], [ null, %setup_file_encryption_key.exit.if.end36_crit_edge ]
  %i_crypt_info = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 52
  %call.i = call zeroext i1 @__kasan_check_write(ptr noundef %i_crypt_info, i32 noundef 4) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !83
  %57 = ptrtoint ptr %call.i89 to i32
  call void @llvm.prefetch.p0(ptr %i_crypt_info, i32 1, i32 3, i32 1) #7
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %if.end36
  %58 = call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %i_crypt_info, i32 0, i32 %57) #7, !srcloc !84
  %asmresult.i = extractvalue { i32, i32 } %58, 0
  %tobool.not.i92 = icmp eq i32 %asmresult.i, 0
  br i1 %tobool.not.i92, label %__cmpxchg.exit, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

__cmpxchg.exit:                                   ; preds = %do.body.i
  %asmresult1.i = extractvalue { i32, i32 } %58, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult1.i)
  %cmp50 = icmp eq i32 %asmresult1.i, 0
  %tobool52.not = icmp eq ptr %master_key.0107, null
  br i1 %cmp50, label %if.then51, label %out

if.then51:                                        ; preds = %__cmpxchg.exit
  br i1 %tobool52.not, label %if.then51.if.end60_crit_edge, label %if.then53

if.then51.if.end60_crit_edge:                     ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end60

if.then53:                                        ; preds = %if.then51
  %59 = getelementptr inbounds %struct.key, ptr %master_key.0107, i32 0, i32 17
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %59, align 4
  %mk_refcount = getelementptr inbounds %struct.fscrypt_master_key, ptr %61, i32 0, i32 3
  call fastcc void @refcount_inc(ptr noundef %mk_refcount)
  %call54 = call fastcc ptr @key_get(ptr noundef nonnull %master_key.0107)
  %ci_master_key = getelementptr inbounds %struct.fscrypt_info, ptr %call.i89, i32 0, i32 5
  %62 = ptrtoint ptr %ci_master_key to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %call54, ptr %ci_master_key, align 4
  %mk_decrypted_inodes_lock = getelementptr inbounds %struct.fscrypt_master_key, ptr %61, i32 0, i32 5
  call void @_raw_spin_lock(ptr noundef %mk_decrypted_inodes_lock) #7
  %ci_master_key_link = getelementptr inbounds %struct.fscrypt_info, ptr %call.i89, i32 0, i32 6
  %mk_decrypted_inodes = getelementptr inbounds %struct.fscrypt_master_key, ptr %61, i32 0, i32 4
  %63 = ptrtoint ptr %mk_decrypted_inodes to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %mk_decrypted_inodes, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %ci_master_key_link, ptr noundef %mk_decrypted_inodes, ptr noundef %64) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.then53.out.thread114_crit_edge

if.then53.out.thread114_crit_edge:                ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.thread114

if.end.i.i:                                       ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #9
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %64, i32 0, i32 1
  %65 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %ci_master_key_link, ptr %prev1.i.i, align 4
  %66 = ptrtoint ptr %ci_master_key_link to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %64, ptr %ci_master_key_link, align 8
  %prev3.i.i = getelementptr inbounds %struct.fscrypt_info, ptr %call.i89, i32 0, i32 6, i32 1
  %67 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %mk_decrypted_inodes, ptr %prev3.i.i, align 4
  %68 = ptrtoint ptr %mk_decrypted_inodes to i32
  call void @__asan_store4_noabort(i32 %68)
  store volatile ptr %ci_master_key_link, ptr %mk_decrypted_inodes, align 4
  br label %out.thread114

out.thread114:                                    ; preds = %if.end.i.i, %if.then53.out.thread114_crit_edge
  call void @_raw_spin_unlock(ptr noundef %mk_decrypted_inodes_lock) #7
  br label %if.then59

out:                                              ; preds = %__cmpxchg.exit
  br i1 %tobool52.not, label %out.if.end60_crit_edge, label %out.if.then59_crit_edge

out.if.then59_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then59

out.if.end60_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end60

if.then59:                                        ; preds = %out.if.then59_crit_edge, %out.thread114
  %crypt_info.1121 = phi ptr [ null, %out.thread114 ], [ %call.i89, %out.if.then59_crit_edge ]
  %sem = getelementptr inbounds %struct.key, ptr %master_key.0107, i32 0, i32 4
  call void @up_read(ptr noundef %sem) #7
  call void @key_put(ptr noundef nonnull %master_key.0107) #7
  br label %if.end60

if.end60:                                         ; preds = %if.then59, %out.if.end60_crit_edge, %if.then51.if.end60_crit_edge, %setup_file_encryption_key.exit.if.end60_crit_edge, %setup_file_encryption_key.exit.thread, %if.then8
  %crypt_info.1113 = phi ptr [ %crypt_info.1121, %if.then59 ], [ %call.i89, %out.if.end60_crit_edge ], [ %call.i89, %setup_file_encryption_key.exit.thread ], [ null, %if.then51.if.end60_crit_edge ], [ %call.i89, %setup_file_encryption_key.exit.if.end60_crit_edge ], [ %call.i89, %if.then8 ]
  %res.0112 = phi i32 [ 0, %if.then59 ], [ 0, %out.if.end60_crit_edge ], [ %retval.0.i91.ph, %setup_file_encryption_key.exit.thread ], [ 0, %if.then51.if.end60_crit_edge ], [ %retval.0.i91, %setup_file_encryption_key.exit.if.end60_crit_edge ], [ %23, %if.then8 ]
  call fastcc void @put_crypt_info(ptr noundef %crypt_info.1113)
  br label %cleanup

cleanup:                                          ; preds = %if.end60, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %res.0112, %if.end60 ], [ %call, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fscrypt_prepare_new_inode(ptr noundef %dir, ptr noundef %inode, ptr nocapture noundef writeonly %encrypt_ret) #0 align 64 {
entry:
  %nonce = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %nonce) #7
  %0 = call ptr @memset(ptr %nonce, i32 255, i32 16)
  %call = tail call ptr @fscrypt_policy_to_inherit(ptr noundef %dir) #7
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %1 = ptrtoint ptr %call to i32
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %2 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %inode, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp5 = icmp eq i16 %3, 0
  br i1 %cmp5, label %land.rhs, label %if.end46

land.rhs:                                         ; preds = %if.end4
  %.b87 = load i1, ptr @fscrypt_prepare_new_inode.__already_done, align 1
  br i1 %.b87, label %land.rhs.cleanup_crit_edge, label %if.then14, !prof !77

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then14:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @fscrypt_prepare_new_inode.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 699, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

if.end46:                                         ; preds = %if.end4
  %4 = and i16 %3, -4096
  %5 = zext i16 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.31)
  switch i16 %4, label %if.end46.cleanup_crit_edge [
    i16 -32768, label %if.end46.if.end63_crit_edge
    i16 16384, label %if.end46.if.end63_crit_edge89
    i16 -24576, label %if.end46.if.end63_crit_edge90
  ]

if.end46.if.end63_crit_edge90:                    ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end63

if.end46.if.end63_crit_edge89:                    ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end63

if.end46.if.end63_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end63

if.end46.cleanup_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end63:                                         ; preds = %if.end46.if.end63_crit_edge, %if.end46.if.end63_crit_edge89, %if.end46.if.end63_crit_edge90
  %6 = ptrtoint ptr %encrypt_ret to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %encrypt_ret, align 1
  call void @get_random_bytes(ptr noundef nonnull %nonce, i32 noundef 16) #7
  %i_flags = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 4
  %7 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %i_flags, align 4
  %and65 = and i32 %8, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and65)
  %tobool66.not = icmp eq i32 %and65, 0
  br i1 %tobool66.not, label %if.end63.land.end73_crit_edge, label %land.rhs67

if.end63.land.end73_crit_edge:                    ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.end73

land.rhs67:                                       ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %inode, align 8
  %11 = and i16 %10, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %11)
  %cmp71 = icmp eq i16 %11, 16384
  br label %land.end73

land.end73:                                       ; preds = %land.rhs67, %if.end63.land.end73_crit_edge
  %12 = phi i1 [ false, %if.end63.land.end73_crit_edge ], [ %cmp71, %land.rhs67 ]
  %call74 = call fastcc i32 @fscrypt_setup_encryption_info(ptr noundef %inode, ptr noundef nonnull %call, ptr noundef nonnull %nonce, i1 noundef zeroext %12)
  br label %cleanup

cleanup:                                          ; preds = %land.end73, %if.end46.cleanup_crit_edge, %if.then14, %land.rhs.cleanup_crit_edge, %if.then2, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %1, %if.then2 ], [ %call74, %land.end73 ], [ 0, %entry.cleanup_crit_edge ], [ -22, %if.then14 ], [ 0, %if.end46.cleanup_crit_edge ], [ -22, %land.rhs.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %nonce) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fscrypt_policy_to_inherit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fscrypt_put_encryption_info(ptr nocapture noundef %inode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %i_crypt_info = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 52
  %0 = ptrtoint ptr %i_crypt_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_crypt_info, align 4
  tail call fastcc void @put_crypt_info(ptr noundef %1)
  %2 = ptrtoint ptr %i_crypt_info to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %i_crypt_info, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @put_crypt_info(ptr noundef %ci) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ci, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %ci_direct_key = getelementptr inbounds %struct.fscrypt_info, ptr %ci, i32 0, i32 7
  %0 = ptrtoint ptr %ci_direct_key to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ci_direct_key, align 8
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @fscrypt_put_direct_key(ptr noundef nonnull %1) #7
  br label %if.end7

if.else:                                          ; preds = %if.end
  %ci_owns_key = getelementptr inbounds %struct.fscrypt_info, ptr %ci, i32 0, i32 1
  %2 = ptrtoint ptr %ci_owns_key to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %ci_owns_key, align 8, !range !73
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool4.not = icmp eq i8 %3, 0
  br i1 %tobool4.not, label %if.else.if.end7_crit_edge, label %if.then5

if.else.if.end7_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.then5:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %ci to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ci, align 4
  %base.i.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %5, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef %5, ptr noundef %base.i.i.i) #7
  tail call void @fscrypt_destroy_inline_crypt_key(ptr noundef nonnull %ci) #7
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.else.if.end7_crit_edge, %if.then2
  %ci_master_key = getelementptr inbounds %struct.fscrypt_info, ptr %ci, i32 0, i32 5
  %6 = ptrtoint ptr %ci_master_key to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ci_master_key, align 4
  %tobool8.not = icmp eq ptr %7, null
  br i1 %tobool8.not, label %if.end7.if.end13_crit_edge, label %if.then9

if.end7.if.end13_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.then9:                                         ; preds = %if.end7
  %8 = getelementptr inbounds %struct.key, ptr %7, i32 0, i32 17
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %mk_decrypted_inodes_lock = getelementptr inbounds %struct.fscrypt_master_key, ptr %10, i32 0, i32 5
  tail call void @_raw_spin_lock(ptr noundef %mk_decrypted_inodes_lock) #7
  %ci_master_key_link = getelementptr inbounds %struct.fscrypt_info, ptr %ci, i32 0, i32 6
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %ci_master_key_link) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.then9.list_del.exit_crit_edge

if.then9.list_del.exit_crit_edge:                 ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.fscrypt_info, ptr %ci, i32 0, i32 6, i32 1
  %11 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prev.i.i, align 4
  %13 = ptrtoint ptr %ci_master_key_link to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ci_master_key_link, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %prev1.i.i.i, align 4
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %14, ptr %12, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then9.list_del.exit_crit_edge
  %17 = ptrtoint ptr %ci_master_key_link to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 256 to ptr), ptr %ci_master_key_link, align 4
  %prev.i = getelementptr inbounds %struct.fscrypt_info, ptr %ci, i32 0, i32 6, i32 1
  %18 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %mk_decrypted_inodes_lock) #7
  %mk_refcount = getelementptr inbounds %struct.fscrypt_master_key, ptr %10, i32 0, i32 3
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %mk_refcount, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !85
  tail call void @llvm.prefetch.p0(ptr %mk_refcount, i32 1, i32 3, i32 1) #7
  %19 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %mk_refcount, ptr %mk_refcount, i32 1, ptr elementtype(i32) %mk_refcount) #7, !srcloc !86
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %19, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.then11, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.if.end12_crit_edge, label %if.then10.i.i.i, !prof !77

if.end5.i.i.i.if.end12_crit_edge:                 ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @refcount_warn_saturate(ptr noundef %mk_refcount, i32 noundef 3) #7
  br label %if.end12

if.then11:                                        ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !87
  tail call void @key_invalidate(ptr noundef nonnull %7) #7
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.then10.i.i.i, %if.end5.i.i.i.if.end12_crit_edge
  tail call void @key_put(ptr noundef nonnull %7) #7
  br label %if.end13

if.end13:                                         ; preds = %if.end12, %if.end7.if.end13_crit_edge
  %20 = call ptr @memset(ptr %ci, i32 0, i32 104)
  tail call void asm sideeffect "", "r,~{memory}"(ptr nonnull %ci) #7, !srcloc !88
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fscrypt_info_cachep to i32))
  %21 = load ptr, ptr @fscrypt_info_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %21, ptr noundef nonnull %ci) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fscrypt_free_inode(ptr nocapture noundef %inode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %i_flags = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 4
  %0 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i_flags, align 4
  %and = and i32 %1, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %inode, align 8
  %4 = and i16 %3, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -24576, i16 %4)
  %cmp = icmp eq i16 %4, -24576
  br i1 %cmp, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %5 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 48
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  tail call void @kfree(ptr noundef %7) #7
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %5, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fscrypt_drop_inode(ptr noundef %inode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %i_crypt_info.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 52
  %0 = ptrtoint ptr %i_crypt_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %i_crypt_info.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !80
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %ci_master_key = getelementptr inbounds %struct.fscrypt_info, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %ci_master_key to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ci_master_key, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %i_state = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 24
  %4 = ptrtoint ptr %i_state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %i_state, align 8
  %and = and i32 %5, 2055
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %6 = getelementptr inbounds %struct.key, ptr %3, i32 0, i32 17
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %size.i = getelementptr inbounds %struct.fscrypt_master_key_secret, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.i.not = icmp eq i32 %10, 0
  %lnot.ext = zext i1 %cmp.i.not to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %lnot.ext, %if.end5 ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_alloc_skcipher(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_skcipher_setkey(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_destroy_tfm(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fscrypt_hkdf_expand(ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fscrypt_initialize(i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @refcount_inc(ptr noundef %r) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %r, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %r, i32 1, i32 3, i32 1) #7
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %r, ptr %r, i32 1, ptr elementtype(i32) %r) #7, !srcloc !89
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %tobool1.not.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %tobool1.not.i.i, label %entry.if.end15.sink.split.i.i_crit_edge, label %if.else.i.i, !prof !79

entry.if.end15.sink.split.i.i_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i.i

if.else.i.i:                                      ; preds = %entry
  %add.i.i = add i32 %asmresult.i.i.i.i, 1
  %1 = or i32 %add.i.i, %asmresult.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %.not.i.i = icmp sgt i32 %1, -1
  br i1 %.not.i.i, label %if.else.i.i.__refcount_inc.exit_crit_edge, label %if.else.i.i.if.end15.sink.split.i.i_crit_edge, !prof !77

if.else.i.i.if.end15.sink.split.i.i_crit_edge:    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i.i

if.else.i.i.__refcount_inc.exit_crit_edge:        ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__refcount_inc.exit

if.end15.sink.split.i.i:                          ; preds = %if.else.i.i.if.end15.sink.split.i.i_crit_edge, %entry.if.end15.sink.split.i.i_crit_edge
  %.sink.i.i = phi i32 [ 2, %entry.if.end15.sink.split.i.i_crit_edge ], [ 1, %if.else.i.i.if.end15.sink.split.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %r, i32 noundef %.sink.i.i) #7
  br label %__refcount_inc.exit

__refcount_inc.exit:                              ; preds = %if.end15.sink.split.i.i, %if.else.i.i.__refcount_inc.exit_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @key_get(ptr noundef %key) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %tobool.not = icmp eq ptr %key, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.true:                                        ; preds = %entry
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %key, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr nonnull %key, i32 1, i32 3, i32 1) #7
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %key, ptr nonnull %key, i32 1, ptr nonnull elementtype(i32) %key) #7, !srcloc !89
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %cond.true.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !79

cond.true.if.end15.sink.split.i.i.i.i_crit_edge:  ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %cond.true
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %1 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %.not.i.i.i.i = icmp sgt i32 %1, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.cond.end_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !77

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.cond.end_crit_edge:               ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %cond.true.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %cond.true.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %key, i32 noundef %.sink.i.i.i.i) #7
  br label %cond.end

cond.end:                                         ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.cond.end_crit_edge, %entry.cond.end_crit_edge
  ret ptr %key
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @key_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fscrypt_select_encryption_impl(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fscrypt_find_master_key(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fscrypt_setup_v1_file_key_via_subscribed_keyrings(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fscrypt_setup_v1_file_key(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fscrypt_setup_v2_file_key(ptr noundef %ci, ptr noundef %mk, i1 noundef zeroext %need_dirhash_key) unnamed_addr #0 align 64 {
entry:
  %derived_key = alloca [64 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.fscrypt_info, ptr %ci, i32 0, i32 10, i32 0, i32 3
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %flags, align 1
  %conv = zext i8 %1 to i32
  %and = and i32 %conv, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %mk_direct_keys = getelementptr inbounds %struct.fscrypt_master_key, ptr %mk, i32 0, i32 6
  %call = tail call fastcc i32 @setup_per_mode_enc_key(ptr noundef %ci, ptr noundef %mk, ptr noundef %mk_direct_keys, i8 noundef zeroext 3, i1 noundef zeroext false)
  br label %if.end30

if.else:                                          ; preds = %entry
  %and4 = and i32 %conv, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.else9, label %if.then6

if.then6:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %mk_iv_ino_lblk_64_keys = getelementptr inbounds %struct.fscrypt_master_key, ptr %mk, i32 0, i32 7
  %call8 = tail call fastcc i32 @setup_per_mode_enc_key(ptr noundef %ci, ptr noundef %mk, ptr noundef %mk_iv_ino_lblk_64_keys, i8 noundef zeroext 4, i1 noundef zeroext true)
  br label %if.end30

if.else9:                                         ; preds = %if.else
  %and13 = and i32 %conv, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.else17, label %if.then15

if.then15:                                        ; preds = %if.else9
  %mk_iv_ino_lblk_32_keys.i = getelementptr inbounds %struct.fscrypt_master_key, ptr %mk, i32 0, i32 8
  %call.i = tail call fastcc i32 @setup_per_mode_enc_key(ptr noundef %ci, ptr noundef %mk, ptr noundef %mk_iv_ino_lblk_32_keys.i, i8 noundef zeroext 6, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then15.cleanup41_crit_edge

if.then15.cleanup41_crit_edge:                    ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup41

if.end.i:                                         ; preds = %if.then15
  %mk_ino_hash_key_initialized.i = getelementptr inbounds %struct.fscrypt_master_key, ptr %mk, i32 0, i32 10
  %2 = ptrtoint ptr %mk_ino_hash_key_initialized.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load volatile i8, ptr %mk_ino_hash_key_initialized.i, align 8, !range !73
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not.i = icmp eq i8 %3, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !90
  br i1 %tobool1.not.i, label %if.then11.i, label %if.end.i.if.end45.i_crit_edge

if.end.i.if.end45.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end45.i

if.then11.i:                                      ; preds = %if.end.i
  tail call void @mutex_lock_nested(ptr noundef nonnull @fscrypt_mode_key_setup_mutex, i32 noundef 0) #7
  %4 = ptrtoint ptr %mk_ino_hash_key_initialized.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %mk_ino_hash_key_initialized.i, align 8, !range !73
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool13.not.i = icmp eq i8 %5, 0
  br i1 %tobool13.not.i, label %if.end15.i, label %if.then11.i.unlock.thread.i_crit_edge

if.then11.i.unlock.thread.i_crit_edge:            ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %unlock.thread.i

if.end15.i:                                       ; preds = %if.then11.i
  %mk_ino_hash_key.i = getelementptr inbounds %struct.fscrypt_master_key, ptr %mk, i32 0, i32 9
  %call.i.i = tail call i32 @fscrypt_hkdf_expand(ptr noundef %mk, i8 noundef zeroext 7, ptr noundef null, i32 noundef 0, ptr noundef %mk_ino_hash_key.i, i32 noundef 16) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %do.end27.i, label %unlock.i

do.end27.i:                                       ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %mk_ino_hash_key.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %mk_ino_hash_key.i, align 8
  %8 = tail call i64 @llvm.bswap.i64(i64 %7) #7
  %9 = ptrtoint ptr %mk_ino_hash_key.i to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %8, ptr %mk_ino_hash_key.i, align 8
  %arrayidx6.i.i = getelementptr %struct.fscrypt_master_key, ptr %mk, i32 0, i32 9, i32 0, i32 1
  %10 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %arrayidx6.i.i, align 8
  %12 = tail call i64 @llvm.bswap.i64(i64 %11) #7
  %13 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %12, ptr %arrayidx6.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !91
  %14 = ptrtoint ptr %mk_ino_hash_key_initialized.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store volatile i8 1, ptr %mk_ino_hash_key_initialized.i, align 8
  br label %unlock.thread.i

unlock.thread.i:                                  ; preds = %do.end27.i, %if.then11.i.unlock.thread.i_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @fscrypt_mode_key_setup_mutex) #7
  br label %if.end45.i

unlock.i:                                         ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @mutex_unlock(ptr noundef nonnull @fscrypt_mode_key_setup_mutex) #7
  br label %cleanup41

if.end45.i:                                       ; preds = %unlock.thread.i, %if.end.i.if.end45.i_crit_edge
  %ci_inode.i = getelementptr inbounds %struct.fscrypt_info, ptr %ci, i32 0, i32 4
  %15 = ptrtoint ptr %ci_inode.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ci_inode.i, align 8
  %i_ino.i = getelementptr inbounds %struct.inode, ptr %16, i32 0, i32 11
  %17 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %i_ino.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool46.not.i = icmp eq i32 %18, 0
  br i1 %tobool46.not.i, label %if.end45.i.if.end33_crit_edge, label %if.end.i.i

if.end45.i.if.end33_crit_edge:                    ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33

if.end.i.i:                                       ; preds = %if.end45.i
  %19 = ptrtoint ptr %mk_ino_hash_key_initialized.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %mk_ino_hash_key_initialized.i, align 8, !range !73
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool20.not.i.i = icmp eq i8 %20, 0
  br i1 %tobool20.not.i.i, label %do.end38.i.i, label %if.end.i.i.fscrypt_hash_inode_number.exit.i_crit_edge, !prof !79

if.end.i.i.fscrypt_hash_inode_number.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fscrypt_hash_inode_number.exit.i

do.end38.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 263, i32 noundef 9, ptr noundef null) #7
  br label %fscrypt_hash_inode_number.exit.i

fscrypt_hash_inode_number.exit.i:                 ; preds = %do.end38.i.i, %if.end.i.i.fscrypt_hash_inode_number.exit.i_crit_edge
  %21 = ptrtoint ptr %ci_inode.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ci_inode.i, align 8
  %i_ino53.i.i = getelementptr inbounds %struct.inode, ptr %22, i32 0, i32 11
  %23 = ptrtoint ptr %i_ino53.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %i_ino53.i.i, align 8
  %conv.i.i = zext i32 %24 to i64
  %mk_ino_hash_key.i.i = getelementptr inbounds %struct.fscrypt_master_key, ptr %mk, i32 0, i32 9
  %call.i62.i = tail call i64 @siphash_1u64(i64 noundef %conv.i.i, ptr noundef %mk_ino_hash_key.i.i) #7
  %conv54.i.i = trunc i64 %call.i62.i to i32
  %ci_hashed_ino.i.i = getelementptr inbounds %struct.fscrypt_info, ptr %ci, i32 0, i32 12
  %25 = ptrtoint ptr %ci_hashed_ino.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %conv54.i.i, ptr %ci_hashed_ino.i.i, align 4
  br label %if.end33

if.else17:                                        ; preds = %if.else9
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %derived_key) #7
  %26 = call ptr @memset(ptr %derived_key, i32 255, i32 64)
  %ci_nonce = getelementptr inbounds %struct.fscrypt_info, ptr %ci, i32 0, i32 11
  %ci_mode = getelementptr inbounds %struct.fscrypt_info, ptr %ci, i32 0, i32 3
  %27 = ptrtoint ptr %ci_mode to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ci_mode, align 4
  %keysize = getelementptr inbounds %struct.fscrypt_mode, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %keysize to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %keysize, align 4
  %call20 = call i32 @fscrypt_hkdf_expand(ptr noundef %mk, i8 noundef zeroext 2, ptr noundef %ci_nonce, i32 noundef 16, ptr noundef nonnull %derived_key, i32 noundef %30) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %cleanup.thread, label %cleanup

cleanup.thread:                                   ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #9
  %ci_owns_key.i = getelementptr inbounds %struct.fscrypt_info, ptr %ci, i32 0, i32 1
  %31 = ptrtoint ptr %ci_owns_key.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 1, ptr %ci_owns_key.i, align 8
  %call.i63 = call i32 @fscrypt_prepare_key(ptr noundef %ci, ptr noundef nonnull %derived_key, ptr noundef %ci) #7
  %32 = ptrtoint ptr %ci_mode to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ci_mode, align 4
  %keysize27 = getelementptr inbounds %struct.fscrypt_mode, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %keysize27 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %keysize27, align 4
  %36 = call ptr @memset(ptr %derived_key, i32 0, i32 %35)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %derived_key) #7, !srcloc !88
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %derived_key) #7
  br label %if.end30

cleanup:                                          ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %derived_key) #7
  br label %cleanup41

if.end30:                                         ; preds = %cleanup.thread, %if.then6, %if.then
  %err.1 = phi i32 [ %call, %if.then ], [ %call8, %if.then6 ], [ %call.i63, %cleanup.thread ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1)
  %tobool31.not = icmp eq i32 %err.1, 0
  %37 = and i1 %tobool31.not, %need_dirhash_key
  br i1 %37, label %if.end30.if.then35_crit_edge, label %if.end30.cleanup41_crit_edge

if.end30.cleanup41_crit_edge:                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup41

if.end30.if.then35_crit_edge:                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then35

if.end33:                                         ; preds = %fscrypt_hash_inode_number.exit.i, %if.end45.i.if.end33_crit_edge
  br i1 %need_dirhash_key, label %if.end33.if.then35_crit_edge, label %if.end33.cleanup41_crit_edge

if.end33.cleanup41_crit_edge:                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup41

if.end33.if.then35_crit_edge:                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then35

if.then35:                                        ; preds = %if.end33.if.then35_crit_edge, %if.end30.if.then35_crit_edge
  %ci_nonce.i = getelementptr inbounds %struct.fscrypt_info, ptr %ci, i32 0, i32 11
  %ci_dirhash_key.i = getelementptr inbounds %struct.fscrypt_info, ptr %ci, i32 0, i32 8
  %call.i.i64 = call i32 @fscrypt_hkdf_expand(ptr noundef %mk, i8 noundef zeroext 5, ptr noundef %ci_nonce.i, i32 noundef 16, ptr noundef %ci_dirhash_key.i, i32 noundef 16) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i64)
  %tobool.not.i.i65 = icmp eq i32 %call.i.i64, 0
  br i1 %tobool.not.i.i65, label %fscrypt_derive_dirhash_key.exit.thread, label %if.then35.cleanup41_crit_edge

if.then35.cleanup41_crit_edge:                    ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup41

fscrypt_derive_dirhash_key.exit.thread:           ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #9
  %38 = ptrtoint ptr %ci_dirhash_key.i to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %ci_dirhash_key.i, align 8
  %40 = call i64 @llvm.bswap.i64(i64 %39) #7
  %41 = ptrtoint ptr %ci_dirhash_key.i to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 %40, ptr %ci_dirhash_key.i, align 8
  %arrayidx6.i.i66 = getelementptr %struct.fscrypt_info, ptr %ci, i32 0, i32 8, i32 0, i32 1
  %42 = ptrtoint ptr %arrayidx6.i.i66 to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %arrayidx6.i.i66, align 8
  %44 = call i64 @llvm.bswap.i64(i64 %43) #7
  %45 = ptrtoint ptr %arrayidx6.i.i66 to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 %44, ptr %arrayidx6.i.i66, align 8
  %ci_dirhash_key_initialized.i = getelementptr inbounds %struct.fscrypt_info, ptr %ci, i32 0, i32 9
  %46 = ptrtoint ptr %ci_dirhash_key_initialized.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 1, ptr %ci_dirhash_key_initialized.i, align 8
  br label %cleanup41

cleanup41:                                        ; preds = %fscrypt_derive_dirhash_key.exit.thread, %if.then35.cleanup41_crit_edge, %if.end33.cleanup41_crit_edge, %if.end30.cleanup41_crit_edge, %cleanup, %unlock.i, %if.then15.cleanup41_crit_edge
  %retval.1 = phi i32 [ %call20, %cleanup ], [ %err.1, %if.end30.cleanup41_crit_edge ], [ %call.i.i64, %if.then35.cleanup41_crit_edge ], [ 0, %fscrypt_derive_dirhash_key.exit.thread ], [ 0, %if.end33.cleanup41_crit_edge ], [ %call.i.i, %unlock.i ], [ %call.i, %if.then15.cleanup41_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @setup_per_mode_enc_key(ptr noundef %ci, ptr noundef %mk, ptr noundef %keys, i8 noundef zeroext %hkdf_context, i1 noundef zeroext %include_fs_uuid) unnamed_addr #0 align 64 {
entry:
  %mode_key = alloca [64 x i8], align 1
  %hkdf_info = alloca [17 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ci_inode = getelementptr inbounds %struct.fscrypt_info, ptr %ci, i32 0, i32 4
  %0 = ptrtoint ptr %ci_inode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ci_inode, align 8
  %i_sb = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb, align 4
  %ci_mode = getelementptr inbounds %struct.fscrypt_info, ptr %ci, i32 0, i32 3
  %4 = ptrtoint ptr %ci_mode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ci_mode, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %5 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, ptrtoint (ptr @fscrypt_modes to i32)
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 28
  %conv = trunc i32 %sub.ptr.div to i8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %mode_key) #7
  %6 = call ptr @memset(ptr %mode_key, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %hkdf_info) #7
  %7 = getelementptr inbounds [17 x i8], ptr %hkdf_info, i32 0, i32 1
  %conv1 = and i32 %sub.ptr.div, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %conv1)
  %cmp = icmp ugt i32 %conv1, 9
  %8 = call ptr @memset(ptr %hkdf_info, i32 255, i32 17)
  br i1 %cmp, label %do.end, label %if.end23, !prof !79

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 179, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

if.end23:                                         ; preds = %entry
  %arrayidx = getelementptr %struct.fscrypt_prepared_key, ptr %keys, i32 %conv1
  %ci_inlinecrypt.i.i = getelementptr inbounds %struct.fscrypt_info, ptr %ci, i32 0, i32 2
  %9 = ptrtoint ptr %ci_inlinecrypt.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %ci_inlinecrypt.i.i, align 1, !range !73
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.i.not.i = icmp eq i8 %10, 0
  br i1 %tobool.i.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  %blk_key.i = getelementptr %struct.fscrypt_prepared_key, ptr %keys, i32 %conv1, i32 1
  %11 = ptrtoint ptr %blk_key.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %blk_key.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !92
  br label %fscrypt_is_key_prepared.exit

if.end.i:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %arrayidx, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !93
  br label %fscrypt_is_key_prepared.exit

fscrypt_is_key_prepared.exit:                     ; preds = %if.end.i, %if.then.i
  %retval.0.in.i = phi ptr [ %12, %if.then.i ], [ %14, %if.end.i ]
  %retval.0.i.not = icmp eq ptr %retval.0.in.i, null
  br i1 %retval.0.i.not, label %if.end25, label %if.then24

if.then24:                                        ; preds = %fscrypt_is_key_prepared.exit
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %15, i32 8)
  %16 = load i64, ptr %arrayidx, align 4
  %17 = ptrtoint ptr %ci to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %16, ptr %ci, align 8
  br label %cleanup

if.end25:                                         ; preds = %fscrypt_is_key_prepared.exit
  tail call void @mutex_lock_nested(ptr noundef nonnull @fscrypt_mode_key_setup_mutex, i32 noundef 0) #7
  %18 = ptrtoint ptr %ci_inlinecrypt.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %ci_inlinecrypt.i.i, align 1, !range !73
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.i.not.i85 = icmp eq i8 %19, 0
  br i1 %tobool.i.not.i85, label %if.end.i88, label %if.then.i87

if.then.i87:                                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  %blk_key.i86 = getelementptr %struct.fscrypt_prepared_key, ptr %keys, i32 %conv1, i32 1
  %20 = ptrtoint ptr %blk_key.i86 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile ptr, ptr %blk_key.i86, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !92
  br label %fscrypt_is_key_prepared.exit91

if.end.i88:                                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile ptr, ptr %arrayidx, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !93
  br label %fscrypt_is_key_prepared.exit91

fscrypt_is_key_prepared.exit91:                   ; preds = %if.end.i88, %if.then.i87
  %retval.0.in.i89 = phi ptr [ %21, %if.then.i87 ], [ %23, %if.end.i88 ]
  %retval.0.i90.not = icmp eq ptr %retval.0.in.i89, null
  br i1 %retval.0.i90.not, label %do.end37, label %fscrypt_is_key_prepared.exit91.done_unlock_crit_edge

fscrypt_is_key_prepared.exit91.done_unlock_crit_edge: ; preds = %fscrypt_is_key_prepared.exit91
  call void @__sanitizer_cov_trace_pc() #9
  br label %done_unlock

do.end37:                                         ; preds = %fscrypt_is_key_prepared.exit91
  %24 = ptrtoint ptr %hkdf_info to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv, ptr %hkdf_info, align 1
  br i1 %include_fs_uuid, label %if.then40, label %do.end37.if.end42_crit_edge

do.end37.if.end42_crit_edge:                      ; preds = %do.end37
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end42

if.then40:                                        ; preds = %do.end37
  call void @__sanitizer_cov_trace_pc() #9
  %s_uuid = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 40
  %25 = call ptr @memcpy(ptr %7, ptr %s_uuid, i32 16)
  br label %if.end42

if.end42:                                         ; preds = %if.then40, %do.end37.if.end42_crit_edge
  %hkdf_infolen.0 = phi i32 [ 17, %if.then40 ], [ 1, %do.end37.if.end42_crit_edge ]
  %keysize = getelementptr inbounds %struct.fscrypt_mode, ptr %5, i32 0, i32 2
  %26 = ptrtoint ptr %keysize to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %keysize, align 4
  %call44 = call i32 @fscrypt_hkdf_expand(ptr noundef %mk, i8 noundef zeroext %hkdf_context, ptr noundef nonnull %hkdf_info, i32 noundef %hkdf_infolen.0, ptr noundef nonnull %mode_key, i32 noundef %27) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.end47, label %if.end42.out_unlock_crit_edge

if.end42.out_unlock_crit_edge:                    ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_unlock

if.end47:                                         ; preds = %if.end42
  %call49 = call i32 @fscrypt_prepare_key(ptr noundef %arrayidx, ptr noundef nonnull %mode_key, ptr noundef %ci)
  %28 = ptrtoint ptr %keysize to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %keysize, align 4
  %30 = call ptr @memset(ptr %mode_key, i32 0, i32 %29)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %mode_key) #7, !srcloc !88
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool52.not = icmp eq i32 %call49, 0
  br i1 %tobool52.not, label %if.end47.done_unlock_crit_edge, label %if.end47.out_unlock_crit_edge

if.end47.out_unlock_crit_edge:                    ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_unlock

if.end47.done_unlock_crit_edge:                   ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #9
  br label %done_unlock

done_unlock:                                      ; preds = %if.end47.done_unlock_crit_edge, %fscrypt_is_key_prepared.exit91.done_unlock_crit_edge
  %31 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %31, i32 8)
  %32 = load i64, ptr %arrayidx, align 4
  %33 = ptrtoint ptr %ci to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %32, ptr %ci, align 8
  br label %out_unlock

out_unlock:                                       ; preds = %done_unlock, %if.end47.out_unlock_crit_edge, %if.end42.out_unlock_crit_edge
  %err.0 = phi i32 [ 0, %done_unlock ], [ %call44, %if.end42.out_unlock_crit_edge ], [ %call49, %if.end47.out_unlock_crit_edge ]
  call void @mutex_unlock(ptr noundef nonnull @fscrypt_mode_key_setup_mutex) #7
  br label %cleanup

cleanup:                                          ; preds = %out_unlock, %if.then24, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.then24 ], [ %err.0, %out_unlock ]
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %hkdf_info) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %mode_key) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @fscrypt_put_direct_key(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @key_invalidate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !25, !27, !29, !31, !33, !35, !37, !39, !41, !42, !44, !45, !46, !47, !49, !50, !52, !54, !56, !58, !60, !61, !62}
!llvm.module.flags = !{!64, !65, !66, !67, !68, !69, !70, !71}
!llvm.ident = !{!72}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/crypto/keysetup.c", i32 19, i32 20}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/crypto/keysetup.c", i32 20, i32 17}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/crypto/keysetup.c", i32 27, i32 20}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/crypto/keysetup.c", i32 28, i32 17}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/crypto/keysetup.c", i32 34, i32 20}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/crypto/keysetup.c", i32 35, i32 17}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/crypto/keysetup.c", i32 42, i32 20}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/crypto/keysetup.c", i32 49, i32 20}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../fs/crypto/keysetup.c", i32 50, i32 17}
!18 = !{ptr @fscrypt_modes, !19, !"fscrypt_modes", i1 false, i1 false}
!19 = !{!"../fs/crypto/keysetup.c", i32 17, i32 21}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../fs/crypto/keysetup.c", i32 262, i32 2}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../fs/crypto/keysetup.c", i32 635, i32 3}
!24 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.12, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../fs/crypto/keysetup.c", i32 643, i32 3}
!27 = distinct !{null, !28, !"__already_done", i1 false, i1 false}
!28 = !{!"../fs/crypto/keysetup.c", i32 699, i32 6}
!29 = !{ptr @__ksymtab_fscrypt_prepare_new_inode, !30, !"__ksymtab_fscrypt_prepare_new_inode", i1 false, i1 false}
!30 = !{!"../fs/crypto/keysetup.c", i32 718, i32 1}
!31 = !{ptr @__ksymtab_fscrypt_put_encryption_info, !32, !"__ksymtab_fscrypt_put_encryption_info", i1 false, i1 false}
!32 = !{!"../fs/crypto/keysetup.c", i32 732, i32 1}
!33 = !{ptr @__ksymtab_fscrypt_free_inode, !34, !"__ksymtab_fscrypt_free_inode", i1 false, i1 false}
!34 = !{!"../fs/crypto/keysetup.c", i32 748, i32 1}
!35 = !{ptr @__ksymtab_fscrypt_drop_inode, !36, !"__ksymtab_fscrypt_drop_inode", i1 false, i1 false}
!36 = !{!"../fs/crypto/keysetup.c", i32 794, i32 1}
!37 = !{ptr @.str.13, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../fs/crypto/keysetup.c", i32 88, i32 4}
!39 = !{ptr @.str.14, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../fs/crypto/keysetup.c", i32 93, i32 3}
!41 = !{ptr @.str.15, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../fs/crypto/keysetup.c", i32 104, i32 3}
!44 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @fscrypt_allocate_skcipher._entry, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @fscrypt_allocate_skcipher._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!47 = distinct !{null, !48, !"__already_done", i1 false, i1 false}
!48 = !{!"../fs/crypto/keysetup.c", i32 72, i32 2}
!49 = !{ptr @.str.18, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.19, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../fs/crypto/keysetup.c", i32 394, i32 3}
!52 = !{ptr @.str.20, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../fs/crypto/fscrypt_private.h", i32 526, i32 10}
!54 = !{ptr @.str.21, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../fs/crypto/fscrypt_private.h", i32 528, i32 10}
!56 = !{ptr @.str.22, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../fs/crypto/fscrypt_private.h", i32 530, i32 9}
!58 = !{ptr @.str.23, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../fs/crypto/keysetup.c", i32 58, i32 8}
!60 = !{ptr @.str.24, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @fscrypt_mode_key_setup_mutex, !59, !"fscrypt_mode_key_setup_mutex", i1 false, i1 false}
!62 = !{ptr @.str.25, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../fs/crypto/fscrypt_private.h", i32 104, i32 2}
!64 = !{i32 1, !"wchar_size", i32 2}
!65 = !{i32 1, !"min_enum_size", i32 4}
!66 = !{i32 8, !"branch-target-enforcement", i32 0}
!67 = !{i32 8, !"sign-return-address", i32 0}
!68 = !{i32 8, !"sign-return-address-all", i32 0}
!69 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!70 = !{i32 7, !"uwtable", i32 1}
!71 = !{i32 7, !"frame-pointer", i32 2}
!72 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!73 = !{i8 0, i8 2}
!74 = !{i64 2154525542}
!75 = !{i64 710370, i64 710387, i64 710411, i64 710437, i64 710455}
!76 = !{i64 2154525885}
!77 = !{!"branch_weights", i32 2000, i32 1}
!78 = !{i64 2154530329}
!79 = !{!"branch_weights", i32 1, i32 2000}
!80 = !{i64 2153469288}
!81 = !{i64 2154497877, i64 2154498369, i64 2154497914, i64 2154497970, i64 2154498004, i64 2154498028, i64 2154498069, i64 2154498090, i64 2154498118, i64 2154498152}
!82 = !{i64 2154499552, i64 2154500044, i64 2154499589, i64 2154499645, i64 2154499679, i64 2154499703, i64 2154499744, i64 2154499765, i64 2154499793, i64 2154499827}
!83 = !{i64 2154555866}
!84 = !{i64 713094, i64 713115, i64 713138, i64 713157, i64 713176}
!85 = !{i64 2148293133}
!86 = !{i64 2148207597, i64 2148207629, i64 2148207658, i64 2148207692, i64 2148207723, i64 2148207746}
!87 = !{i64 2148903746}
!88 = !{i64 2149251074}
!89 = !{i64 2148205132, i64 2148205164, i64 2148205193, i64 2148205227, i64 2148205258, i64 2148205281}
!90 = !{i64 2154547953}
!91 = !{i64 2154550483}
!92 = !{i64 2154508951}
!93 = !{i64 2154514781}
