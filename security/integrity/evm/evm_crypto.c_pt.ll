; ModuleID = '/llk/IR_all_yes/security/integrity/evm/evm_crypto.c_pt.bc'
source_filename = "../security/integrity/evm/evm_crypto.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+evm_set_key\22, \22a\22\09"
module asm "\09.weak\09__crc_evm_set_key\09\09\09\09"
module asm "\09.long\09__crc_evm_set_key\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_evm_set_key:\09\09\09\09\09"
module asm "\09.asciz \09\22evm_set_key\22\09\09\09\09\09"
module asm "__kstrtabns_evm_set_key:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, ptr, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [16 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.4 }
%union.anon.4 = type { [5 x %struct.uid_gid_extent] }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.atomic_t = type { i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.14, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.14 = type { %struct.anon.15 }
%struct.anon.15 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.key_type = type opaque
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.70, %struct.list_head, %struct.list_head, %union.anon.71 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.2, ptr }
%union.anon.2 = type { i64 }
%struct.lockref = type { %union.anon.68 }
%union.anon.68 = type { %struct.anon.69 }
%struct.anon.69 = type { %struct.spinlock, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%union.anon.70 = type { %struct.list_head }
%union.anon.71 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.64, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.65, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.66, ptr, %struct.address_space, %struct.list_head, %union.anon.67, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.64 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.65 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.66 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.67 = type { ptr }
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
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.crypto_shash = type { i32, [124 x i8], %struct.crypto_tfm }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [112 x i8], [0 x ptr] }
%struct.ima_digest_data = type { i8, i8, %union.anon.72, [0 x i8] }
%union.anon.72 = type { %struct.anon.73 }
%struct.anon.73 = type { i8, i8 }
%struct.evm_digest = type { %struct.ima_digest_data, [64 x i8] }
%struct.xattr_list = type { %struct.list_head, ptr, i8 }
%struct.integrity_iint_cache = type { %struct.rb_node, %struct.mutex, ptr, i64, i32, i32, i32, i24, ptr }
%struct.rb_node = type { i32, ptr, ptr }
%struct.xattr = type { ptr, ptr, i32 }
%struct.h_misc = type { i32, i32, i32, i32, i16 }
%struct.key = type { %struct.refcount_struct, i32, %union.anon.6, ptr, %struct.rw_semaphore, ptr, ptr, %union.anon.7, i64, %struct.kuid_t, %struct.kgid_t, i32, i16, i16, i16, i32, %union.anon.8, %union.anon.12, ptr }
%union.anon.6 = type { %struct.rb_node }
%union.anon.7 = type { i64 }
%union.anon.8 = type { %struct.keyring_index_key }
%struct.keyring_index_key = type { i32, %union.anon.9, ptr, ptr, ptr }
%union.anon.9 = type { i32 }
%union.anon.12 = type { %union.key_payload }
%union.key_payload = type { [4 x ptr] }
%struct.encrypted_key_payload = type { %struct.callback_head, ptr, ptr, ptr, ptr, ptr, i16, i16, i16, i16, ptr, [0 x i8] }

@evm_set_key_flags = internal global { i32, [28 x i8] } zeroinitializer, align 32
@evmkey = internal global { [128 x i8], [32 x i8] } zeroinitializer, align 32
@evm_initialized = external dso_local local_unnamed_addr global i32, align 4
@evm_set_key._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 64, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\016evm: key initialized\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"evm_set_key\00", [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"security/integrity/evm/evm_crypto.c\00", [60 x i8] zeroinitializer }, align 32
@evm_set_key._entry_ptr = internal global ptr @evm_set_key._entry, section ".printk_index", align 4
@evm_set_key._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 69, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013evm: key initialization failed\0A\00", [62 x i8] zeroinitializer }, align 32
@evm_set_key._entry_ptr.5 = internal global ptr @evm_set_key._entry.3, section ".printk_index", align 4
@__kstrtab_evm_set_key = external dso_local constant [0 x i8], align 1
@__kstrtabns_evm_set_key = external dso_local constant [0 x i8], align 1
@__ksymtab_evm_set_key = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @evm_set_key to i32), ptr @__kstrtab_evm_set_key, ptr @__kstrtabns_evm_set_key }, section "___ksymtab_gpl+evm_set_key", align 4
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"security.evm\00", [19 x i8] zeroinitializer }, align 32
@evm_init_hmac._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.2, i32 398, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\016evm: init_desc failed\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"evm_init_hmac\00", [18 x i8] zeroinitializer }, align 32
@evm_init_hmac._entry_ptr = internal global ptr @evm_init_hmac._entry, section ".printk_index", align 4
@key_type_encrypted = external dso_local global %struct.key_type, align 1
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"evm-key\00", [24 x i8] zeroinitializer }, align 32
@hmac_tfm = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@evm_config_xattrnames = external dso_local global %struct.list_head, align 4
@.str.10 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"security.ima\00", [19 x i8] zeroinitializer }, align 32
@evm_calc_hmac_or_hash.__UNIQUE_ID_ddebug227 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.12, ptr @.str.2, ptr @.str.13, i8 0, i8 66, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"evm\00", [28 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"evm_calc_hmac_or_hash\00", [42 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s: (%zu) [%*phN]\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"evm: %s: (%zu) [%*phN]\0A\00", [40 x i8] zeroinitializer }, align 32
@evm_calc_hmac_or_hash.__UNIQUE_ID_ddebug228 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.12, ptr @.str.2, ptr @.str.15, i8 0, i8 71, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"file %s: xattr %s size mismatch (kernel: %d, user: %d)\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"evm: file %s: xattr %s size mismatch (kernel: %d, user: %d)\0A\00", [35 x i8] zeroinitializer }, align 32
@evm_calc_hmac_or_hash.__UNIQUE_ID_ddebug229 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.12, ptr @.str.2, ptr @.str.17, i8 0, i8 73, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s: (%zu) [%*phN]\00", [46 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"evm: %s: (%zu) [%*phN]\00", [41 x i8] zeroinitializer }, align 32
@dump_security_xattr.__UNIQUE_ID_ddebug224 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.19, ptr @.str.2, ptr @.str.20, i8 0, i8 50, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"dump_security_xattr\00", [44 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s: (%zu) %.*s\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"evm: %s: (%zu) %.*s\0A\00", [43 x i8] zeroinitializer }, align 32
@init_desc.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@init_desc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.2, i32 83, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\013evm: HMAC key is not set\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"init_desc\00", [22 x i8] zeroinitializer }, align 32
@init_desc._entry_ptr = internal global ptr @init_desc._entry, section ".printk_index", align 4
@evm_hmac = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"hmac(sha1)\00", [21 x i8] zeroinitializer }, align 32
@evm_tfm = internal global { [20 x ptr], [48 x i8] } zeroinitializer, align 32
@hash_algo_name = external dso_local local_unnamed_addr constant [20 x ptr], align 4
@mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.27, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @mutex, i64 52), ptr getelementptr (i8, ptr @mutex, i64 52) }, ptr @mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.28, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@init_desc._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.23, ptr @.str.2, i32 105, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013evm: Can not allocate %s (reason: %ld)\0A\00", [54 x i8] zeroinitializer }, align 32
@init_desc._entry_ptr.26 = internal global ptr @init_desc._entry.24, section ".printk_index", align 4
@.str.27 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mutex.wait_lock\00", [16 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"mutex\00", [26 x i8] zeroinitializer }, align 32
@evm_hmac_attrs = external dso_local local_unnamed_addr global i32, align 4
@hmac_add_misc.__UNIQUE_ID_ddebug223 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.29, ptr @.str.2, ptr @.str.30, i8 0, i8 45, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"hmac_add_misc\00", [18 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"hmac_misc: (%zu) [%*phN]\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"evm: hmac_misc: (%zu) [%*phN]\0A\00", [33 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 6]
@__sancov_gen_cov_switch_values.32 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967235]
@__sancov_gen_cov_switch_values.33 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967235]
@___asan_gen_.34 = private unnamed_addr constant [18 x i8] c"evm_set_key_flags\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 36, i32 22 }
@___asan_gen_.37 = private unnamed_addr constant [7 x i8] c"evmkey\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 26, i32 22 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 64, i32 2 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 69, i32 2 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 382, i32 9 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 398, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 417, i32 45 }
@___asan_gen_.73 = private unnamed_addr constant [9 x i8] c"hmac_tfm\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 29, i32 22 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 242, i32 27 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 261, i32 5 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 283, i32 4 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 293, i32 4 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 201, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 83, i32 4 }
@___asan_gen_.121 = private unnamed_addr constant [9 x i8] c"evm_hmac\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 38, i32 19 }
@___asan_gen_.124 = private unnamed_addr constant [8 x i8] c"evm_tfm\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 30, i32 29 }
@___asan_gen_.127 = private unnamed_addr constant [6 x i8] c"mutex\00", align 1
@___asan_gen_.130 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 104, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 32, i32 8 }
@___asan_gen_.148 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.149 = private constant [39 x i8] c"../security/integrity/evm/evm_crypto.c\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 181, i32 2 }
@llvm.compiler.used = appending global [45 x ptr] [ptr @__ksymtab_evm_set_key, ptr @evm_init_hmac._entry, ptr @evm_init_hmac._entry_ptr, ptr @evm_set_key._entry, ptr @evm_set_key._entry.3, ptr @evm_set_key._entry_ptr, ptr @evm_set_key._entry_ptr.5, ptr @init_desc._entry, ptr @init_desc._entry.24, ptr @init_desc._entry_ptr, ptr @init_desc._entry_ptr.26, ptr @evm_set_key_flags, ptr @evmkey, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @hmac_tfm, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @evm_hmac, ptr @evm_tfm, ptr @mutex, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31], section "llvm.metadata"
@0 = internal global [39 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @evm_set_key_flags to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @evmkey to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @evm_set_key._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @evm_set_key._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @evm_init_hmac._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hmac_tfm to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_desc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @evm_hmac to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @evm_tfm to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_desc._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @evm_set_key(ptr nocapture noundef readonly %key, i32 noundef %keylen) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef nonnull @evm_set_key_flags) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %keylen)
  %cmp = icmp ugt i32 %keylen, 128
  br i1 %cmp, label %inval, label %if.end2

if.end2:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %0 = call ptr @memcpy(ptr @evmkey, ptr %key, i32 %keylen)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @evm_initialized to i32))
  %1 = load i32, ptr @evm_initialized, align 4
  %or = or i32 %1, 1
  store i32 %or, ptr @evm_initialized, align 4
  br label %cleanup

inval:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_clear_bit(i32 noundef 0, ptr noundef nonnull @evm_set_key_flags) #6
  br label %cleanup

cleanup:                                          ; preds = %inval, %if.end2, %entry.cleanup_crit_edge
  %.str.4.sink = phi ptr [ @.str, %if.end2 ], [ @.str.4, %inval ], [ @.str.4, %entry.cleanup_crit_edge ]
  %retval.0 = phi i32 [ 0, %if.end2 ], [ -22, %inval ], [ -16, %entry.cleanup_crit_edge ]
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.4.sink) #9
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @evm_calc_hmac(ptr noundef %dentry, ptr noundef %req_xattr_name, ptr noundef %req_xattr_value, i32 noundef %req_xattr_value_len, ptr noundef %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @evm_calc_hmac_or_hash(ptr noundef %dentry, ptr noundef %req_xattr_name, ptr noundef %req_xattr_value, i32 noundef %req_xattr_value_len, i8 noundef zeroext 2, ptr noundef %data)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @evm_calc_hmac_or_hash(ptr noundef %dentry, ptr noundef %req_xattr_name, ptr noundef %req_xattr_value, i32 noundef %req_xattr_value_len, i8 noundef zeroext %type, ptr noundef %data) unnamed_addr #0 align 64 {
entry:
  %xattr_value = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %xattr_value) #6
  %2 = ptrtoint ptr %xattr_value to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %xattr_value, align 4
  %i_opflags = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %i_opflags to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %i_opflags, align 2
  %5 = and i16 %4, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool.not = icmp eq i16 %5, 0
  br i1 %tobool.not, label %entry.cleanup127_crit_edge, label %lor.lhs.false

entry.cleanup127_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup127

lor.lhs.false:                                    ; preds = %entry
  %i_sb = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i_sb, align 4
  %s_user_ns = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 53
  %8 = ptrtoint ptr %s_user_ns to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s_user_ns, align 8
  %cmp.not = icmp eq ptr %9, @init_user_ns
  br i1 %cmp.not, label %if.end, label %lor.lhs.false.cleanup127_crit_edge

lor.lhs.false.cleanup127_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup127

if.end:                                           ; preds = %lor.lhs.false
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %data, align 1
  %call2 = tail call fastcc ptr @init_desc(i8 noundef zeroext %type, i8 noundef zeroext %11)
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %call2 to i32
  br label %cleanup127

if.end6:                                          ; preds = %if.end
  %13 = ptrtoint ptr %call2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %call2, align 8
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_shash, ptr %14, i32 0, i32 2, i32 3
  %15 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %__crt_alg.i.i, align 4
  %digestsize.i = getelementptr i8, ptr %16, i32 -128
  %17 = ptrtoint ptr %digestsize.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %digestsize.i, align 128
  %conv8 = trunc i32 %18 to i8
  %length = getelementptr inbounds %struct.ima_digest_data, ptr %data, i32 0, i32 1
  %19 = ptrtoint ptr %length to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv8, ptr %length, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @evm_config_xattrnames to i32))
  %xattr.0251 = load volatile ptr, ptr @evm_config_xattrnames, align 4
  %cmp11.not252 = icmp eq ptr %xattr.0251, @evm_config_xattrnames
  br i1 %cmp11.not252, label %for.end.thread, label %for.body.lr.ph

for.end.thread:                                   ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %digest267 = getelementptr inbounds %struct.evm_digest, ptr %data, i32 0, i32 1
  call fastcc void @hmac_add_misc(ptr noundef %call2, ptr noundef %1, i8 noundef zeroext %type, ptr noundef %digest267)
  br label %44

for.body.lr.ph:                                   ; preds = %if.end6
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %type)
  %cmp19.not = icmp eq i8 %type, 5
  %tobool24.not = icmp eq ptr %req_xattr_name, null
  %tobool26.not = icmp eq ptr %req_xattr_value, null
  %or.cond = or i1 %tobool24.not, %tobool26.not
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %req_xattr_value_len)
  %cmp36 = icmp ult i32 %req_xattr_value_len, 64
  %mul.i = shl i32 %req_xattr_value_len, 1
  %add.i = or i32 %mul.i, 1
  %name79 = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %xattr.0260 = phi ptr [ %xattr.0251, %for.body.lr.ph ], [ %xattr.0, %for.inc.for.body_crit_edge ]
  %xattr_size.0257 = phi i32 [ 0, %for.body.lr.ph ], [ %xattr_size.1241, %for.inc.for.body_crit_edge ]
  %error.0255 = phi i32 [ -61, %for.body.lr.ph ], [ %error.1240, %for.inc.for.body_crit_edge ]
  %ima_present.0.off0253 = phi i1 [ false, %for.body.lr.ph ], [ %ima_present.3.off0239, %for.inc.for.body_crit_edge ]
  %name = getelementptr inbounds %struct.xattr_list, ptr %xattr.0260, i32 0, i32 1
  %20 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %name, align 4
  %call13 = call i32 @strcmp(ptr noundef %21, ptr noundef nonnull dereferenceable(13) @.str.10) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14 = icmp eq i32 %call13, 0
  br i1 %cmp19.not, label %for.body.if.end23_crit_edge, label %land.lhs.true

for.body.if.end23_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23

land.lhs.true:                                    ; preds = %for.body
  %enabled = getelementptr inbounds %struct.xattr_list, ptr %xattr.0260, i32 0, i32 2
  %22 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %enabled, align 4, !range !80
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool21.not = icmp eq i8 %23, 0
  br i1 %tobool21.not, label %land.lhs.true.for.inc_crit_edge, label %land.lhs.true.if.end23_crit_edge

land.lhs.true.if.end23_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end23:                                         ; preds = %land.lhs.true.if.end23_crit_edge, %for.body.if.end23_crit_edge
  br i1 %or.cond, label %if.end23.if.end50_crit_edge, label %land.lhs.true27

if.end23.if.end50_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end50

land.lhs.true27:                                  ; preds = %if.end23
  %call29 = call i32 @strcmp(ptr noundef %21, ptr noundef nonnull %req_xattr_name) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.then31, label %land.lhs.true27.if.end50_crit_edge

land.lhs.true27.if.end50_crit_edge:               ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end50

if.then31:                                        ; preds = %land.lhs.true27
  %call32 = call i32 @crypto_shash_update(ptr noundef %call2, ptr noundef nonnull %req_xattr_value, i32 noundef %req_xattr_value_len) #6
  %spec.select = select i1 %cmp14, i1 true, i1 %ima_present.0.off0253
  br i1 %cmp36, label %do.body39, label %if.end8.i.i

do.body39:                                        ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @evm_calc_hmac_or_hash.__UNIQUE_ID_ddebug227, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@evm_calc_hmac_or_hash, %if.then45)) #6
          to label %cleanup [label %if.then45], !srcloc !81

if.then45:                                        ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @evm_calc_hmac_or_hash.__UNIQUE_ID_ddebug227, ptr noundef nonnull @.str.14, ptr noundef nonnull %req_xattr_name, i32 noundef %req_xattr_value_len, i32 noundef %req_xattr_value_len, ptr noundef nonnull %req_xattr_value) #6
  br label %for.inc

if.end8.i.i:                                      ; preds = %if.then31
  %call9.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add.i, i32 noundef 3264) #11
  %tobool.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not.i, label %if.end8.i.i.for.inc_crit_edge, label %if.end.i

if.end8.i.i.for.inc_crit_edge:                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end.i:                                         ; preds = %if.end8.i.i
  %call1.i = call ptr @bin2hex(ptr noundef nonnull %call9.i.i, ptr noundef nonnull %req_xattr_value, i32 noundef %req_xattr_value_len) #6
  %24 = ptrtoint ptr %call1.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %call1.i, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dump_security_xattr.__UNIQUE_ID_ddebug224, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@evm_calc_hmac_or_hash, %if.then6.i)) #6
          to label %do.end.i [label %if.then6.i], !srcloc !81

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dump_security_xattr.__UNIQUE_ID_ddebug224, ptr noundef nonnull @.str.21, ptr noundef nonnull %req_xattr_name, i32 noundef %req_xattr_value_len, i32 noundef %mul.i, ptr noundef nonnull %call9.i.i) #6
  br label %do.end.i

do.end.i:                                         ; preds = %if.then6.i, %if.end.i
  call void @kfree(ptr noundef nonnull %call9.i.i) #6
  br label %for.inc

if.end50:                                         ; preds = %land.lhs.true27.if.end50_crit_edge, %if.end23.if.end50_crit_edge
  %call52 = call i32 @vfs_getxattr_alloc(ptr noundef nonnull @init_user_ns, ptr noundef %dentry, ptr noundef %21, ptr noundef nonnull %xattr_value, i32 noundef %xattr_size.0257, i32 noundef 3136) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -12, i32 %call52)
  %cmp53 = icmp eq i32 %call52, -12
  br i1 %cmp53, label %if.end50.out_crit_edge, label %if.end56

if.end50.out_crit_edge:                           ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end56:                                         ; preds = %if.end50
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %cmp57 = icmp slt i32 %call52, 0
  br i1 %cmp57, label %if.end56.for.inc_crit_edge, label %if.end60

if.end56.for.inc_crit_edge:                       ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end60:                                         ; preds = %if.end56
  %25 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %name, align 4
  %call62 = call i32 @vfs_getxattr(ptr noundef nonnull @init_user_ns, ptr noundef %dentry, ptr noundef %26, ptr noundef null, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_cmp4(i32 %call62, i32 %call52)
  %cmp63.not = icmp eq i32 %call62, %call52
  br i1 %cmp63.not, label %if.end60.if.end84_crit_edge, label %do.body66

if.end60.if.end84_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end84

do.body66:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @evm_calc_hmac_or_hash.__UNIQUE_ID_ddebug228, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@evm_calc_hmac_or_hash, %if.then78)) #6
          to label %if.end84 [label %if.then78], !srcloc !81

if.then78:                                        ; preds = %do.body66
  call void @__sanitizer_cov_trace_pc() #8
  %27 = ptrtoint ptr %name79 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %name79, align 8
  %29 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %name, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @evm_calc_hmac_or_hash.__UNIQUE_ID_ddebug228, ptr noundef nonnull @.str.16, ptr noundef %28, ptr noundef %30, i32 noundef %call52, i32 noundef %call62) #6
  br label %if.end84

if.end84:                                         ; preds = %if.then78, %do.body66, %if.end60.if.end84_crit_edge
  %31 = ptrtoint ptr %xattr_value to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %xattr_value, align 4
  %call85 = call i32 @crypto_shash_update(ptr noundef %call2, ptr noundef %32, i32 noundef %call52) #6
  %spec.select189 = select i1 %cmp14, i1 true, i1 %ima_present.0.off0253
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %call52)
  %cmp89 = icmp ult i32 %call52, 64
  br i1 %cmp89, label %do.body92, label %if.else109

do.body92:                                        ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @evm_calc_hmac_or_hash.__UNIQUE_ID_ddebug229, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@evm_calc_hmac_or_hash, %if.then104)) #6
          to label %cleanup [label %if.then104], !srcloc !81

if.then104:                                       ; preds = %do.body92
  call void @__sanitizer_cov_trace_pc() #8
  %33 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %name, align 4
  %35 = ptrtoint ptr %xattr_value to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %xattr_value, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @evm_calc_hmac_or_hash.__UNIQUE_ID_ddebug229, ptr noundef nonnull @.str.18, ptr noundef %34, i32 noundef %call52, i32 noundef %call52, ptr noundef %36) #6
  br label %for.inc

if.else109:                                       ; preds = %if.end84
  %37 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %name, align 4
  %39 = ptrtoint ptr %xattr_value to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %xattr_value, align 4
  %mul.i198 = shl nuw i32 %call52, 1
  %add.i199 = or i32 %mul.i198, 1
  %call9.i.i222 = call noalias align 128 ptr @__kmalloc(i32 noundef %add.i199, i32 noundef 3264) #11
  %tobool.not.i225 = icmp eq ptr %call9.i.i222, null
  br i1 %tobool.not.i225, label %if.else109.for.inc_crit_edge, label %if.end.i228

if.else109.for.inc_crit_edge:                     ; preds = %if.else109
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end.i228:                                      ; preds = %if.else109
  %call1.i227 = call ptr @bin2hex(ptr noundef nonnull %call9.i.i222, ptr noundef %40, i32 noundef %call52) #6
  %41 = ptrtoint ptr %call1.i227 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 0, ptr %call1.i227, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dump_security_xattr.__UNIQUE_ID_ddebug224, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@evm_calc_hmac_or_hash, %if.then6.i229)) #6
          to label %do.end.i230 [label %if.then6.i229], !srcloc !81

if.then6.i229:                                    ; preds = %if.end.i228
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dump_security_xattr.__UNIQUE_ID_ddebug224, ptr noundef nonnull @.str.21, ptr noundef %38, i32 noundef %call52, i32 noundef %mul.i198, ptr noundef nonnull %call9.i.i222) #6
  br label %do.end.i230

do.end.i230:                                      ; preds = %if.then6.i229, %if.end.i228
  call void @kfree(ptr noundef nonnull %call9.i.i222) #6
  br label %for.inc

cleanup:                                          ; preds = %do.body92, %do.body39
  %cleanup.dest.slot.0 = phi i32 [ 6, %do.body39 ], [ 0, %do.body92 ]
  %ima_present.3.off0 = phi i1 [ %spec.select, %do.body39 ], [ %spec.select189, %do.body92 ]
  %xattr_size.1 = phi i32 [ %xattr_size.0257, %do.body39 ], [ %call52, %do.body92 ]
  %42 = zext i32 %cleanup.dest.slot.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cleanup.dest.slot.0, label %cleanup.cleanup127_crit_edge [
    i32 0, label %cleanup.for.inc_crit_edge
    i32 6, label %cleanup.for.inc_crit_edge272
  ]

cleanup.for.inc_crit_edge272:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

cleanup.for.inc_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

cleanup.cleanup127_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup127

for.inc:                                          ; preds = %cleanup.for.inc_crit_edge, %cleanup.for.inc_crit_edge272, %do.end.i230, %if.else109.for.inc_crit_edge, %if.then104, %if.end56.for.inc_crit_edge, %do.end.i, %if.end8.i.i.for.inc_crit_edge, %if.then45, %land.lhs.true.for.inc_crit_edge
  %xattr_size.1241 = phi i32 [ %xattr_size.1, %cleanup.for.inc_crit_edge ], [ %xattr_size.1, %cleanup.for.inc_crit_edge272 ], [ %call52, %do.end.i230 ], [ %call52, %if.else109.for.inc_crit_edge ], [ %xattr_size.0257, %do.end.i ], [ %xattr_size.0257, %if.end8.i.i.for.inc_crit_edge ], [ %call52, %if.then104 ], [ %xattr_size.0257, %if.end56.for.inc_crit_edge ], [ %xattr_size.0257, %if.then45 ], [ %xattr_size.0257, %land.lhs.true.for.inc_crit_edge ]
  %error.1240 = phi i32 [ 0, %cleanup.for.inc_crit_edge ], [ 0, %cleanup.for.inc_crit_edge272 ], [ 0, %do.end.i230 ], [ 0, %if.else109.for.inc_crit_edge ], [ 0, %do.end.i ], [ 0, %if.end8.i.i.for.inc_crit_edge ], [ 0, %if.then104 ], [ %error.0255, %if.end56.for.inc_crit_edge ], [ 0, %if.then45 ], [ %error.0255, %land.lhs.true.for.inc_crit_edge ]
  %ima_present.3.off0239 = phi i1 [ %ima_present.3.off0, %cleanup.for.inc_crit_edge ], [ %ima_present.3.off0, %cleanup.for.inc_crit_edge272 ], [ %spec.select189, %do.end.i230 ], [ %spec.select189, %if.else109.for.inc_crit_edge ], [ %spec.select, %do.end.i ], [ %spec.select, %if.end8.i.i.for.inc_crit_edge ], [ %spec.select189, %if.then104 ], [ %ima_present.0.off0253, %if.end56.for.inc_crit_edge ], [ %spec.select, %if.then45 ], [ %ima_present.0.off0253, %land.lhs.true.for.inc_crit_edge ]
  %43 = ptrtoint ptr %xattr.0260 to i32
  call void @__asan_load4_noabort(i32 %43)
  %xattr.0 = load volatile ptr, ptr %xattr.0260, align 4
  %cmp11.not = icmp eq ptr %xattr.0, @evm_config_xattrnames
  br i1 %cmp11.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  %digest = getelementptr inbounds %struct.evm_digest, ptr %data, i32 0, i32 1
  call fastcc void @hmac_add_misc(ptr noundef %call2, ptr noundef %1, i8 noundef zeroext %type, ptr noundef %digest)
  %spec.select271 = select i1 %ima_present.3.off0239, i32 %error.1240, i32 -1
  br label %44

44:                                               ; preds = %for.end, %for.end.thread
  %error.0.lcssa269 = phi i32 [ -61, %for.end.thread ], [ %error.1240, %for.end ]
  %45 = phi i32 [ -1, %for.end.thread ], [ %spec.select271, %for.end ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %type)
  %cmp121270 = icmp eq i8 %type, 5
  %spec.select191 = select i1 %cmp121270, i32 %45, i32 %error.0.lcssa269
  br label %out

out:                                              ; preds = %44, %if.end50.out_crit_edge
  %error.2 = phi i32 [ %spec.select191, %44 ], [ -12, %if.end50.out_crit_edge ]
  %46 = ptrtoint ptr %xattr_value to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %xattr_value, align 4
  call void @kfree(ptr noundef %47) #6
  call void @kfree(ptr noundef %call2) #6
  br label %cleanup127

cleanup127:                                       ; preds = %out, %cleanup.cleanup127_crit_edge, %if.then4, %lor.lhs.false.cleanup127_crit_edge, %entry.cleanup127_crit_edge
  %retval.0 = phi i32 [ %12, %if.then4 ], [ %error.2, %out ], [ -95, %lor.lhs.false.cleanup127_crit_edge ], [ -95, %entry.cleanup127_crit_edge ], [ undef, %cleanup.cleanup127_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %xattr_value) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @evm_calc_hash(ptr noundef %dentry, ptr noundef %req_xattr_name, ptr noundef %req_xattr_value, i32 noundef %req_xattr_value_len, i8 noundef zeroext %type, ptr noundef %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @evm_calc_hmac_or_hash(ptr noundef %dentry, ptr noundef %req_xattr_name, ptr noundef %req_xattr_value, i32 noundef %req_xattr_value_len, i8 noundef zeroext %type, ptr noundef %data)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @evm_update_evmxattr(ptr noundef %dentry, ptr noundef %xattr_name, ptr noundef %xattr_value, i32 noundef %xattr_value_len) local_unnamed_addr #0 align 64 {
entry:
  %xattr_data.i = alloca ptr, align 4
  %data = alloca %struct.evm_digest, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %data) #6
  %2 = getelementptr inbounds i8, ptr %data, i32 1
  %3 = call ptr @memset(ptr %2, i32 255, i32 67)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %xattr_data.i) #6
  %4 = ptrtoint ptr %xattr_data.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %xattr_data.i, align 4
  %call.i = tail call ptr @integrity_iint_find(ptr noundef %1) #6
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %land.lhs.true.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %entry
  %flags.i = getelementptr inbounds %struct.integrity_iint_cache, ptr %call.i, i32 0, i32 4
  %5 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %6, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %if.end.thread38

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.end.thread38:                                  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %xattr_data.i) #6
  br label %cleanup

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %call2.i = call i32 @vfs_getxattr_alloc(ptr noundef nonnull @init_user_ns, ptr noundef %dentry, ptr noundef nonnull @.str.6, ptr noundef nonnull %xattr_data.i, i32 noundef 0, i32 noundef 3136) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call2.i)
  %cmp.i = icmp slt i32 %call2.i, 1
  br i1 %cmp.i, label %if.then3.i, label %if.end

if.then3.i:                                       ; preds = %if.end.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %xattr_data.i) #6
  %7 = zext i32 %call2.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %call2.i, label %if.then3.i.cleanup_crit_edge [
    i32 -61, label %if.then3.i.if.end3_crit_edge
    i32 0, label %if.then3.i.if.end3_crit_edge41
  ]

if.then3.i.if.end3_crit_edge41:                   ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end3

if.then3.i.if.end3_crit_edge:                     ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end3

if.then3.i.cleanup_crit_edge:                     ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %8 = ptrtoint ptr %xattr_data.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %xattr_data.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %9, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %11)
  %cmp8.i.not = icmp eq i8 %11, 5
  call void @kfree(ptr noundef %9) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %xattr_data.i) #6
  br i1 %cmp8.i.not, label %if.end.cleanup_crit_edge, label %if.end.if.end3_crit_edge

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3:                                          ; preds = %if.end.if.end3_crit_edge, %if.then3.i.if.end3_crit_edge, %if.then3.i.if.end3_crit_edge41
  %12 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 2, ptr %data, align 1
  %call.i29 = call fastcc i32 @evm_calc_hmac_or_hash(ptr noundef %dentry, ptr noundef %xattr_name, ptr noundef %xattr_value, i32 noundef %xattr_value_len, i8 noundef zeroext 2, ptr noundef nonnull %data) #6
  %13 = zext i32 %call.i29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %call.i29, label %if.end3.cleanup_crit_edge [
    i32 0, label %if.then6
    i32 -61, label %land.lhs.true
  ]

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then6:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  %type = getelementptr inbounds %struct.ima_digest_data, ptr %data, i32 0, i32 2, i32 0, i32 1
  %14 = ptrtoint ptr %type to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 2, ptr %type, align 1
  %call10 = call i32 @__vfs_setxattr_noperm(ptr noundef nonnull @init_user_ns, ptr noundef %dentry, ptr noundef nonnull @.str.6, ptr noundef %type, i32 noundef 21, i32 noundef 0) #6
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end3
  %i_opflags = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 1
  %15 = ptrtoint ptr %i_opflags to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %i_opflags, align 2
  %17 = and i16 %16, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %tobool12.not = icmp eq i16 %17, 0
  br i1 %tobool12.not, label %land.lhs.true.cleanup_crit_edge, label %if.then13

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then13:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %call14 = call i32 @__vfs_removexattr(ptr noundef nonnull @init_user_ns, ptr noundef %dentry, ptr noundef nonnull @.str.6) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then13, %land.lhs.true.cleanup_crit_edge, %if.then6, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then3.i.cleanup_crit_edge, %if.end.thread38
  %retval.0 = phi i32 [ -1, %if.end.cleanup_crit_edge ], [ %call10, %if.then6 ], [ %call14, %if.then13 ], [ -61, %land.lhs.true.cleanup_crit_edge ], [ %call.i29, %if.end3.cleanup_crit_edge ], [ -1, %if.end.thread38 ], [ %call2.i, %if.then3.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %data) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__vfs_setxattr_noperm(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__vfs_removexattr(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @evm_init_hmac(ptr nocapture noundef readonly %inode, ptr nocapture noundef readonly %lsm_xattr, ptr noundef %hmac_val) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @init_desc(i8 noundef zeroext 2, i8 noundef zeroext 2)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #9
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %value = getelementptr inbounds %struct.xattr, ptr %lsm_xattr, i32 0, i32 1
  %1 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %value, align 4
  %value_len = getelementptr inbounds %struct.xattr, ptr %lsm_xattr, i32 0, i32 2
  %3 = ptrtoint ptr %value_len to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %value_len, align 4
  %call4 = tail call i32 @crypto_shash_update(ptr noundef %call, ptr noundef %2, i32 noundef %4) #6
  tail call fastcc void @hmac_add_misc(ptr noundef %call, ptr noundef %inode, i8 noundef zeroext 2, ptr noundef %hmac_val)
  tail call void @kfree(ptr noundef %call) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ %0, %do.end ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @init_desc(i8 noundef zeroext %type, i8 noundef zeroext %hash_algo) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %type)
  %cmp = icmp eq i8 %type, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @evm_initialized to i32))
  %0 = load i32, ptr @evm_initialized, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.end, label %if.then.if.end27_crit_edge

if.then.if.end27_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27

land.end:                                         ; preds = %if.then
  %.b94 = load i1, ptr @init_desc.__already_done, align 1
  br i1 %.b94, label %land.end.cleanup_crit_edge, label %if.then9, !prof !82

land.end.cleanup_crit_edge:                       ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then9:                                         ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @init_desc.__already_done, align 1
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22) #9
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 19, i8 %hash_algo)
  %cmp20 = icmp ugt i8 %hash_algo, 19
  br i1 %cmp20, label %if.else.cleanup_crit_edge, label %if.end24

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end24:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %conv19 = zext i8 %hash_algo to i32
  %arrayidx = getelementptr [20 x ptr], ptr @evm_tfm, i32 0, i32 %conv19
  %arrayidx26 = getelementptr [20 x ptr], ptr @hash_algo_name, i32 0, i32 %conv19
  %1 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx26, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.end24, %if.then.if.end27_crit_edge
  %tfm.0 = phi ptr [ %arrayidx, %if.end24 ], [ @hmac_tfm, %if.then.if.end27_crit_edge ]
  %algo.0 = phi ptr [ %2, %if.end24 ], [ @evm_hmac, %if.then.if.end27_crit_edge ]
  %3 = ptrtoint ptr %tfm.0 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %tfm.0, align 4
  %tobool28.not = icmp eq ptr %4, null
  br i1 %tobool28.not, label %if.end30, label %if.end27.if.end8.i_crit_edge

if.end27.if.end8.i_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8.i

if.end30:                                         ; preds = %if.end27
  tail call void @mutex_lock_nested(ptr noundef nonnull @mutex, i32 noundef 0) #6
  %5 = ptrtoint ptr %tfm.0 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %tfm.0, align 4
  %tobool31.not = icmp eq ptr %6, null
  br i1 %tobool31.not, label %if.end33, label %if.end30.unlock_crit_edge

if.end30.unlock_crit_edge:                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  br label %unlock

if.end33:                                         ; preds = %if.end30
  %call34 = tail call ptr @crypto_alloc_shash(ptr noundef %algo.0, i32 noundef 0, i32 noundef 32768) #6
  %cmp.i95 = icmp ugt ptr %call34, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i95, label %do.end39, label %if.end44

do.end39:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %call34 to i32
  %call42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef %algo.0, i32 noundef %7) #9
  tail call void @mutex_unlock(ptr noundef nonnull @mutex) #6
  br label %cleanup

if.end44:                                         ; preds = %if.end33
  br i1 %cmp, label %if.then48, label %if.end44.if.end54_crit_edge

if.end44.if.end54_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end54

if.then48:                                        ; preds = %if.end44
  %call49 = tail call i32 @crypto_shash_setkey(ptr noundef %call34, ptr noundef nonnull @evmkey, i32 noundef 128) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.then48.if.end54_crit_edge, label %if.then51

if.then48.if.end54_crit_edge:                     ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end54

if.then51:                                        ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #8
  %base.i.i = getelementptr inbounds %struct.crypto_shash, ptr %call34, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef %call34, ptr noundef %base.i.i) #6
  tail call void @mutex_unlock(ptr noundef nonnull @mutex) #6
  %8 = inttoptr i32 %call49 to ptr
  br label %cleanup

if.end54:                                         ; preds = %if.then48.if.end54_crit_edge, %if.end44.if.end54_crit_edge
  %9 = ptrtoint ptr %tfm.0 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call34, ptr %tfm.0, align 4
  br label %unlock

unlock:                                           ; preds = %if.end54, %if.end30.unlock_crit_edge
  %tmp_tfm.0 = phi ptr [ null, %if.end30.unlock_crit_edge ], [ %call34, %if.end54 ]
  tail call void @mutex_unlock(ptr noundef nonnull @mutex) #6
  br label %if.end8.i

if.end8.i:                                        ; preds = %unlock, %if.end27.if.end8.i_crit_edge
  %tmp_tfm.1 = phi ptr [ null, %if.end27.if.end8.i_crit_edge ], [ %tmp_tfm.0, %unlock ]
  %10 = ptrtoint ptr %tfm.0 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tfm.0, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 128
  %add = add i32 %13, 8
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3264) #11
  %tobool57.not = icmp eq ptr %call9.i, null
  br i1 %tobool57.not, label %if.then58, label %if.end60

if.then58:                                        ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  %base.i.i96 = getelementptr inbounds %struct.crypto_shash, ptr %tmp_tfm.1, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef %tmp_tfm.1, ptr noundef %base.i.i96) #6
  br label %cleanup

if.end60:                                         ; preds = %if.end8.i
  %14 = ptrtoint ptr %tfm.0 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tfm.0, align 4
  %16 = ptrtoint ptr %call9.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %call9.i, align 128
  %base.i.i.i = getelementptr inbounds %struct.crypto_shash, ptr %15, i32 0, i32 2
  %17 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %base.i.i.i, align 128
  %and.i = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %crypto_shash_init.exit, label %if.end60.if.then64_crit_edge

if.end60.if.then64_crit_edge:                     ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then64

crypto_shash_init.exit:                           ; preds = %if.end60
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_shash, ptr %15, i32 0, i32 2, i32 3
  %19 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %__crt_alg.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %20, i32 -256
  %21 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %add.ptr.i.i.i, align 128
  %call3.i = tail call i32 %22(ptr noundef nonnull %call9.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool63.not = icmp eq i32 %call3.i, 0
  br i1 %tobool63.not, label %crypto_shash_init.exit.cleanup_crit_edge, label %crypto_shash_init.exit.if.then64_crit_edge

crypto_shash_init.exit.if.then64_crit_edge:       ; preds = %crypto_shash_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then64

crypto_shash_init.exit.cleanup_crit_edge:         ; preds = %crypto_shash_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then64:                                        ; preds = %crypto_shash_init.exit.if.then64_crit_edge, %if.end60.if.then64_crit_edge
  %retval.0.i104 = phi i32 [ %call3.i, %crypto_shash_init.exit.if.then64_crit_edge ], [ -126, %if.end60.if.then64_crit_edge ]
  %base.i.i98 = getelementptr inbounds %struct.crypto_shash, ptr %tmp_tfm.1, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef %tmp_tfm.1, ptr noundef %base.i.i98) #6
  tail call void @kfree(ptr noundef nonnull %call9.i) #6
  %23 = inttoptr i32 %retval.0.i104 to ptr
  br label %cleanup

cleanup:                                          ; preds = %if.then64, %crypto_shash_init.exit.cleanup_crit_edge, %if.then58, %if.then51, %do.end39, %if.else.cleanup_crit_edge, %if.then9, %land.end.cleanup_crit_edge
  %retval.0 = phi ptr [ %23, %if.then64 ], [ inttoptr (i32 -12 to ptr), %if.then58 ], [ %call34, %do.end39 ], [ %8, %if.then51 ], [ %call9.i, %crypto_shash_init.exit.cleanup_crit_edge ], [ inttoptr (i32 -126 to ptr), %if.then9 ], [ inttoptr (i32 -126 to ptr), %land.end.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.else.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_shash_update(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hmac_add_misc(ptr noundef %desc, ptr nocapture noundef readonly %inode, i8 noundef zeroext %type, ptr noundef %digest) unnamed_addr #0 align 64 {
entry:
  %hmac_misc = alloca %struct.h_misc, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %hmac_misc) #6
  %0 = call ptr @memset(ptr %hmac_misc, i32 0, i32 20)
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %type)
  %cmp.not = icmp eq i8 %type, 5
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %1 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %i_ino, align 8
  %3 = ptrtoint ptr %hmac_misc to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %hmac_misc, align 4
  %i_generation = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 49
  %4 = ptrtoint ptr %i_generation to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %i_generation, align 8
  %generation = getelementptr inbounds %struct.h_misc, ptr %hmac_misc, i32 0, i32 1
  %6 = ptrtoint ptr %generation to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %generation, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %i_uid = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 2
  %7 = ptrtoint ptr %i_uid to i32
  call void @__asan_load4_noabort(i32 %7)
  %.unpack = load i32, ptr %i_uid, align 4
  %8 = insertvalue [1 x i32] undef, i32 %.unpack, 0
  %call = tail call i32 @from_kuid(ptr noundef nonnull @init_user_ns, [1 x i32] %8) #6
  %uid = getelementptr inbounds %struct.h_misc, ptr %hmac_misc, i32 0, i32 2
  %9 = ptrtoint ptr %uid to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %call, ptr %uid, align 4
  %i_gid = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 3
  %10 = ptrtoint ptr %i_gid to i32
  call void @__asan_load4_noabort(i32 %10)
  %.unpack26 = load i32, ptr %i_gid, align 8
  %11 = insertvalue [1 x i32] undef, i32 %.unpack26, 0
  %call3 = tail call i32 @from_kgid(ptr noundef nonnull @init_user_ns, [1 x i32] %11) #6
  %gid = getelementptr inbounds %struct.h_misc, ptr %hmac_misc, i32 0, i32 3
  %12 = ptrtoint ptr %gid to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %call3, ptr %gid, align 4
  %13 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %inode, align 8
  %mode = getelementptr inbounds %struct.h_misc, ptr %hmac_misc, i32 0, i32 4
  %15 = ptrtoint ptr %mode to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %14, ptr %mode, align 4
  %call4 = call i32 @crypto_shash_update(ptr noundef %desc, ptr noundef nonnull %hmac_misc, i32 noundef 20) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @evm_hmac_attrs to i32))
  %16 = load i32, ptr @evm_hmac_attrs, align 4
  %and = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %brmerge = or i1 %cmp.not, %tobool.not
  br i1 %brmerge, label %if.end.if.end10_crit_edge, label %if.then8

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %17 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %i_sb, align 4
  %s_uuid = getelementptr inbounds %struct.super_block, ptr %18, i32 0, i32 40
  %call9 = call i32 @crypto_shash_update(ptr noundef %desc, ptr noundef %s_uuid, i32 noundef 16) #6
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end.if.end10_crit_edge
  %call11 = call i32 @crypto_shash_final(ptr noundef %desc, ptr noundef %digest) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hmac_add_misc.__UNIQUE_ID_ddebug223, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hmac_add_misc, %if.then16)) #6
          to label %do.end [label %if.then16], !srcloc !81

if.then16:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hmac_add_misc.__UNIQUE_ID_ddebug223, ptr noundef nonnull @.str.31, i32 noundef 20, i32 noundef 20, ptr noundef nonnull %hmac_misc) #6
  br label %do.end

do.end:                                           ; preds = %if.then16, %if.end10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %hmac_misc) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @evm_init_key() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @request_key_tag(ptr noundef nonnull @key_type_encrypted, ptr noundef nonnull @.str.9, ptr noundef null, ptr noundef null) #6
  %cmp.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %sem = getelementptr inbounds %struct.key, ptr %call.i, i32 0, i32 4
  tail call void @down_read(ptr noundef %sem) #6
  %0 = getelementptr inbounds %struct.key, ptr %call.i, i32 0, i32 17
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %decrypted_data = getelementptr inbounds %struct.encrypted_key_payload, ptr %2, i32 0, i32 10
  %3 = ptrtoint ptr %decrypted_data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %decrypted_data, align 4
  %decrypted_datalen = getelementptr inbounds %struct.encrypted_key_payload, ptr %2, i32 0, i32 7
  %5 = ptrtoint ptr %decrypted_datalen to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %decrypted_datalen, align 2
  %conv = zext i16 %6 to i32
  %call.i16 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef nonnull @evm_set_key_flags) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i16)
  %tobool.not.i = icmp eq i32 %call.i16, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.evm_set_key.exit_crit_edge

if.end.evm_set_key.exit_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %evm_set_key.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp2(i16 128, i16 %6)
  %cmp.i17 = icmp ugt i16 %6, 128
  br i1 %cmp.i17, label %inval.i, label %if.end2.i

if.end2.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %7 = call ptr @memcpy(ptr @evmkey, ptr %4, i32 %conv)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @evm_initialized to i32))
  %8 = load i32, ptr @evm_initialized, align 4
  %or.i = or i32 %8, 1
  store i32 %or.i, ptr @evm_initialized, align 4
  br label %evm_set_key.exit

inval.i:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_clear_bit(i32 noundef 0, ptr noundef nonnull @evm_set_key_flags) #6
  br label %evm_set_key.exit

evm_set_key.exit:                                 ; preds = %inval.i, %if.end2.i, %if.end.evm_set_key.exit_crit_edge
  %.str.4.sink.i = phi ptr [ @.str, %if.end2.i ], [ @.str.4, %inval.i ], [ @.str.4, %if.end.evm_set_key.exit_crit_edge ]
  %retval.0.i = phi i32 [ 0, %if.end2.i ], [ -22, %inval.i ], [ -16, %if.end.evm_set_key.exit_crit_edge ]
  %call8.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.4.sink.i) #9
  %9 = ptrtoint ptr %decrypted_data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %decrypted_data, align 4
  %11 = ptrtoint ptr %decrypted_datalen to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %decrypted_datalen, align 2
  %conv5 = zext i16 %12 to i32
  %13 = call ptr @memset(ptr %10, i32 0, i32 %conv5)
  tail call void @up_read(ptr noundef %sem) #6
  tail call void @key_put(ptr noundef %call.i) #6
  br label %cleanup

cleanup:                                          ; preds = %evm_set_key.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %evm_set_key.exit ], [ -2, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @key_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_getxattr_alloc(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_getxattr(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bin2hex(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @integrity_iint_find(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_alloc_shash(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_shash_setkey(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_destroy_tfm(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kuid(ptr noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kgid(ptr noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_shash_final(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @request_key_tag(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nobuiltin }
attributes #11 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !14, !16, !17, !18, !19, !21, !23, !25, !27, !29, !31, !32, !33, !34, !35, !37, !38, !39, !41, !42, !43, !45, !46, !47, !48, !50, !51, !52, !53, !54, !56, !57, !58, !60, !62, !64, !65, !66, !68, !69, !70}
!llvm.module.flags = !{!71, !72, !73, !74, !75, !76, !77, !78}
!llvm.ident = !{!79}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../security/integrity/evm/evm_crypto.c", i32 64, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @evm_set_key._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @evm_set_key._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../security/integrity/evm/evm_crypto.c", i32 69, i32 2}
!8 = !{ptr @evm_set_key._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @evm_set_key._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @__ksymtab_evm_set_key, !11, !"__ksymtab_evm_set_key", i1 false, i1 false}
!11 = !{!"../security/integrity/evm/evm_crypto.c", i32 72, i32 1}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../security/integrity/evm/evm_crypto.c", i32 382, i32 9}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../security/integrity/evm/evm_crypto.c", i32 398, i32 3}
!16 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @evm_init_hmac._entry, !15, !"_entry", i1 false, i1 false}
!18 = !{ptr @evm_init_hmac._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../security/integrity/evm/evm_crypto.c", i32 417, i32 45}
!21 = !{ptr @evmkey, !22, !"evmkey", i1 false, i1 false}
!22 = !{!"../security/integrity/evm/evm_crypto.c", i32 26, i32 22}
!23 = !{ptr @hmac_tfm, !24, !"hmac_tfm", i1 false, i1 false}
!24 = !{!"../security/integrity/evm/evm_crypto.c", i32 29, i32 22}
!25 = !{ptr @evm_set_key_flags, !26, !"evm_set_key_flags", i1 false, i1 false}
!26 = !{!"../security/integrity/evm/evm_crypto.c", i32 36, i32 22}
!27 = !{ptr @.str.10, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../security/integrity/evm/evm_crypto.c", i32 242, i32 27}
!29 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../security/integrity/evm/evm_crypto.c", i32 261, i32 5}
!31 = !{ptr @.str.12, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.13, !30, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @evm_calc_hmac_or_hash.__UNIQUE_ID_ddebug227, !30, !"__UNIQUE_ID_ddebug227", i1 false, i1 false}
!34 = !{ptr @.str.14, !30, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../security/integrity/evm/evm_crypto.c", i32 283, i32 4}
!37 = !{ptr @evm_calc_hmac_or_hash.__UNIQUE_ID_ddebug228, !36, !"__UNIQUE_ID_ddebug228", i1 false, i1 false}
!38 = !{ptr @.str.16, !36, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../security/integrity/evm/evm_crypto.c", i32 293, i32 4}
!41 = !{ptr @evm_calc_hmac_or_hash.__UNIQUE_ID_ddebug229, !40, !"__UNIQUE_ID_ddebug229", i1 false, i1 false}
!42 = !{ptr @.str.18, !40, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.19, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../security/integrity/evm/evm_crypto.c", i32 201, i32 2}
!45 = !{ptr @.str.20, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @dump_security_xattr.__UNIQUE_ID_ddebug224, !44, !"__UNIQUE_ID_ddebug224", i1 false, i1 false}
!47 = !{ptr @.str.21, !44, !"<string literal>", i1 false, i1 false}
!48 = distinct !{null, !49, !"__already_done", i1 false, i1 false}
!49 = !{!"../security/integrity/evm/evm_crypto.c", i32 83, i32 4}
!50 = !{ptr @.str.22, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.23, !49, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @init_desc._entry, !49, !"_entry", i1 false, i1 false}
!53 = !{ptr @init_desc._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.25, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../security/integrity/evm/evm_crypto.c", i32 104, i32 3}
!56 = !{ptr @init_desc._entry.24, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @init_desc._entry_ptr.26, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @evm_hmac, !59, !"evm_hmac", i1 false, i1 false}
!59 = !{!"../security/integrity/evm/evm_crypto.c", i32 38, i32 19}
!60 = !{ptr @evm_tfm, !61, !"evm_tfm", i1 false, i1 false}
!61 = !{!"../security/integrity/evm/evm_crypto.c", i32 30, i32 29}
!62 = !{ptr @.str.27, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../security/integrity/evm/evm_crypto.c", i32 32, i32 8}
!64 = !{ptr @.str.28, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @mutex, !63, !"mutex", i1 false, i1 false}
!66 = !{ptr @.str.29, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../security/integrity/evm/evm_crypto.c", i32 181, i32 2}
!68 = !{ptr @.str.30, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @hmac_add_misc.__UNIQUE_ID_ddebug223, !67, !"__UNIQUE_ID_ddebug223", i1 false, i1 false}
!70 = !{ptr @.str.31, !67, !"<string literal>", i1 false, i1 false}
!71 = !{i32 1, !"wchar_size", i32 2}
!72 = !{i32 1, !"min_enum_size", i32 4}
!73 = !{i32 8, !"branch-target-enforcement", i32 0}
!74 = !{i32 8, !"sign-return-address", i32 0}
!75 = !{i32 8, !"sign-return-address-all", i32 0}
!76 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!77 = !{i32 7, !"uwtable", i32 1}
!78 = !{i32 7, !"frame-pointer", i32 2}
!79 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!80 = !{i8 0, i8 2}
!81 = !{i64 2148728404, i64 2148728409, i64 2148728422, i64 2148728466, i64 2148728500, i64 2148728521}
!82 = !{!"branch_weights", i32 2000, i32 1}
