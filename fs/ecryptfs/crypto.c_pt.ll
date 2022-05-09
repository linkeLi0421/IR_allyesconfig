; ModuleID = '/llk/IR_all_yes/fs/ecryptfs/crypto.c_pt.bc'
source_filename = "../fs/ecryptfs/crypto.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ecryptfs_cipher_code_str_map_elem = type { [16 x i8], i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, ptr, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [16 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.36 }
%union.anon.36 = type { [5 x %struct.uid_gid_extent] }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.38, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.38 = type { %struct.anon.39 }
%struct.anon.39 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.ecryptfs_crypt_stat = type { i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, [32 x i8], [64 x i8], [16 x i8], %struct.list_head, %struct.mutex, %struct.mutex, %struct.mutex }
%struct.crypto_skcipher = type { i32, [124 x i8], %struct.crypto_tfm }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [112 x i8], [0 x ptr] }
%struct.crypto_shash = type { i32, [124 x i8], %struct.crypto_tfm }
%struct.ecryptfs_mount_crypt_stat = type { i32, %struct.list_head, %struct.mutex, i32, i32, [32 x i8], [32 x i8], [17 x i8] }
%struct.page = type { i32, %union.anon.3, %union.anon.74, %struct.atomic_t, i32 }
%union.anon.3 = type { %struct.anon.4 }
%struct.anon.4 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.74 = type { %struct.atomic_t }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.ecryptfs_inode_info = type { %struct.inode, ptr, %struct.mutex, %struct.atomic_t, ptr, %struct.ecryptfs_crypt_stat }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.78, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.79, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.80, ptr, %struct.address_space, %struct.list_head, %union.anon.81, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.78 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.seqcount = type { i32, %struct.lockdep_map }
%union.anon.79 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.80 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.81 = type { ptr }
%struct.extent_crypt_result = type { %struct.completion, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.skcipher_request = type { i32, ptr, ptr, ptr, %struct.crypto_async_request, [88 x i8], [0 x ptr] }
%struct.crypto_async_request = type { %struct.list_head, ptr, ptr, ptr, i32 }
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
%struct.ecryptfs_sb_info = type { ptr, %struct.ecryptfs_mount_crypt_stat }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.65, %struct.list_head, %struct.list_head, %union.anon.66 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.17, ptr }
%union.anon.17 = type { i64 }
%struct.lockref = type { %union.anon.19 }
%union.anon.19 = type { %struct.anon.20 }
%struct.anon.20 = type { %struct.spinlock, i32 }
%union.anon.65 = type { %struct.list_head }
%union.anon.66 = type { %struct.hlist_node }
%struct.path = type { ptr, ptr }
%struct.file = type { %union.anon.16, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.16 = type { %struct.callback_head }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.ecryptfs_key_tfm = type { ptr, i32, %struct.mutex, %struct.list_head, [32 x i8] }
%struct.ecryptfs_filename = type { %struct.list_head, i32, i32, ptr, ptr, i32, i32, [16 x i8], [57 x i8] }
%struct.crypto_alg = type { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, %struct.refcount_struct, [128 x i8], [128 x i8], ptr, %union.anon.1, ptr, ptr, ptr, ptr, %union.anon.77, [120 x i8] }
%union.anon.1 = type { %struct.cipher_alg }
%struct.cipher_alg = type { i32, i32, ptr, ptr, ptr }
%union.anon.77 = type { %struct.crypto_istat_akcipher }
%struct.crypto_istat_akcipher = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }

@ecryptfs_verbosity = external dso_local local_unnamed_addr global i32, align 4
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\017%s: root iv:\0A\00", [16 x i8] zeroinitializer }, align 32
@__func__.ecryptfs_derive_iv = private unnamed_addr constant [19 x i8] c"ecryptfs_derive_iv\00", align 1
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%lld\00", [27 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"\017%s: source:\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"\014%s: Error attempting to compute MD5 while generating IV for a page\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\017%s: derived iv:\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"md5\00", [28 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\013%s: Error attempting to allocate crypto context; rc = [%d]\0A\00", [34 x i8] zeroinitializer }, align 32
@__func__.ecryptfs_init_crypt_stat = private unnamed_addr constant [25 x i8] c"ecryptfs_init_crypt_stat\00", align 1
@ecryptfs_init_crypt_stat.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"&crypt_stat->keysig_list_mutex\00", [33 x i8] zeroinitializer }, align 32
@ecryptfs_init_crypt_stat.__key.8 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&crypt_stat->cs_mutex\00", [42 x i8] zeroinitializer }, align 32
@ecryptfs_init_crypt_stat.__key.10 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"&crypt_stat->cs_tfm_mutex\00", [38 x i8] zeroinitializer }, align 32
@ecryptfs_key_sig_cache = external dso_local local_unnamed_addr global ptr, align 4
@ecryptfs_global_auth_tok_cache = external dso_local local_unnamed_addr global ptr, align 4
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@.str.12 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013%s: Error allocating memory for encrypted extent\0A\00", [44 x i8] zeroinitializer }, align 32
@__func__.ecryptfs_encrypt_page = private unnamed_addr constant [22 x i8] c"ecryptfs_encrypt_page\00", align 1
@ecryptfs_encrypt_page._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @__func__.ecryptfs_encrypt_page, ptr @.str.14, i32 462, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013%s: Error encrypting extent; rc = [%d]\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"fs/ecryptfs/crypto.c\00", [43 x i8] zeroinitializer }, align 32
@ecryptfs_encrypt_page._entry_ptr = internal global ptr @ecryptfs_encrypt_page._entry, section ".printk_index", align 4
@.str.15 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013%s: Error attempting to write lower page; rc = [%d]\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013%s: Error attempting to read lower page; rc = [%d]\0A\00", [42 x i8] zeroinitializer }, align 32
@__func__.ecryptfs_decrypt_page = private unnamed_addr constant [22 x i8] c"ecryptfs_decrypt_page\00", align 1
@ecryptfs_decrypt_page._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @__func__.ecryptfs_decrypt_page, ptr @.str.14, i32 535, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013%s: Error decrypting extent; rc = [%d]\0A\00", [54 x i8] zeroinitializer }, align 32
@ecryptfs_decrypt_page._entry_ptr = internal global ptr @ecryptfs_decrypt_page._entry, section ".printk_index", align 4
@.str.18 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"\017%s: Initializing cipher [%s]; strlen = [%d]; key_size_bits = [%zd]\0A\00", [58 x i8] zeroinitializer }, align 32
@__func__.ecryptfs_init_crypt_ctx = private unnamed_addr constant [24 x i8] c"ecryptfs_init_crypt_ctx\00", align 1
@.str.19 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"cbc\00", [28 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\013%s: cryptfs: init_crypt_ctx(): Error initializing cipher [%s]\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\014%s: Session key not valid; cannot generate root IV\0A\00", [42 x i8] zeroinitializer }, align 32
@__func__.ecryptfs_compute_root_iv = private unnamed_addr constant [25 x i8] c"ecryptfs_compute_root_iv\00", align 1
@.str.22 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\014%s: Error attempting to compute MD5 while generating root IV\0A\00", [32 x i8] zeroinitializer }, align 32
@ecryptfs_new_file_context._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.14, i32 785, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"\013Error attempting to copy mount-wide key sigs to the inode key sigs; rc = [%d]\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ecryptfs_new_file_context\00", [38 x i8] zeroinitializer }, align 32
@ecryptfs_new_file_context._entry_ptr = internal global ptr @ecryptfs_new_file_context._entry, section ".printk_index", align 4
@.str.25 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"\013%s: Error initializing cryptographic context for cipher [%s]: rc = [%d]\0A\00", [53 x i8] zeroinitializer }, align 32
@ecryptfs_cipher_code_str_map = internal global { [8 x %struct.ecryptfs_cipher_code_str_map_elem], [56 x i8] } { [8 x %struct.ecryptfs_cipher_code_str_map_elem] [%struct.ecryptfs_cipher_code_str_map_elem { [16 x i8] c"aes\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 7 }, %struct.ecryptfs_cipher_code_str_map_elem { [16 x i8] c"blowfish\00\00\00\00\00\00\00\00", i8 4 }, %struct.ecryptfs_cipher_code_str_map_elem { [16 x i8] c"des3_ede\00\00\00\00\00\00\00\00", i8 2 }, %struct.ecryptfs_cipher_code_str_map_elem { [16 x i8] c"cast5\00\00\00\00\00\00\00\00\00\00\00", i8 3 }, %struct.ecryptfs_cipher_code_str_map_elem { [16 x i8] c"twofish\00\00\00\00\00\00\00\00\00", i8 10 }, %struct.ecryptfs_cipher_code_str_map_elem { [16 x i8] c"cast6\00\00\00\00\00\00\00\00\00\00\00", i8 11 }, %struct.ecryptfs_cipher_code_str_map_elem { [16 x i8] c"aes\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 8 }, %struct.ecryptfs_cipher_code_str_map_elem { [16 x i8] c"aes\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 9 }], [56 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"aes\00", [28 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\014%s: Cipher code not recognized: [%d]\0A\00", [56 x i8] zeroinitializer }, align 32
@__func__.ecryptfs_cipher_code_to_string = private unnamed_addr constant [31 x i8] c"ecryptfs_cipher_code_to_string\00", align 1
@ecryptfs_write_metadata._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.14, i32 1154, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013Key is invalid; bailing out\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ecryptfs_write_metadata\00", [40 x i8] zeroinitializer }, align 32
@ecryptfs_write_metadata._entry_ptr = internal global ptr @ecryptfs_write_metadata._entry, section ".printk_index", align 4
@ecryptfs_write_metadata._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.29, ptr @.str.14, i32 1160, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\014%s: Encrypted flag not set\0A\00", [34 x i8] zeroinitializer }, align 32
@ecryptfs_write_metadata._entry_ptr.32 = internal global ptr @ecryptfs_write_metadata._entry.30, section ".printk_index", align 4
@ecryptfs_write_metadata._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.29, ptr @.str.14, i32 1169, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\013%s: Out of memory\0A\00", [43 x i8] zeroinitializer }, align 32
@ecryptfs_write_metadata._entry_ptr.35 = internal global ptr @ecryptfs_write_metadata._entry.33, section ".printk_index", align 4
@ecryptfs_write_metadata._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.29, ptr @.str.14, i32 1178, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013%s: Error whilst writing headers; rc = [%d]\0A\00", [49 x i8] zeroinitializer }, align 32
@ecryptfs_write_metadata._entry_ptr.38 = internal global ptr @ecryptfs_write_metadata._entry.36, section ".printk_index", align 4
@ecryptfs_write_metadata._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.29, ptr @.str.14, i32 1189, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\013%s: Error writing metadata out to lower file; rc = [%d]\0A\00", [37 x i8] zeroinitializer }, align 32
@ecryptfs_write_metadata._entry_ptr.41 = internal global ptr @ecryptfs_write_metadata._entry.39, section ".printk_index", align 4
@.str.42 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"user.ecryptfs\00", [18 x i8] zeroinitializer }, align 32
@ecryptfs_read_xattr_region._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.14, i32 1339, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [85 x i8], [43 x i8] } { [85 x i8] c"\016Error attempting to read the [%s] xattr from the lower file; return value = [%zd]\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ecryptfs_read_xattr_region\00", [37 x i8] zeroinitializer }, align 32
@ecryptfs_read_xattr_region._entry_ptr = internal global ptr @ecryptfs_read_xattr_region._entry, section ".printk_index", align 4
@ecryptfs_header_cache = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@ecryptfs_read_metadata._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.14, i32 1412, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [85 x i8], [43 x i8] } { [85 x i8] c"\017Valid eCryptfs headers not found in file header region or xattr region, inode %lu\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ecryptfs_read_metadata\00", [41 x i8] zeroinitializer }, align 32
@ecryptfs_read_metadata._entry_ptr = internal global ptr @ecryptfs_read_metadata._entry, section ".printk_index", align 4
@ecryptfs_read_metadata._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.46, ptr @.str.14, i32 1422, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"\017Valid eCryptfs headers not found in file xattr region either, inode %lu\0A\00", [53 x i8] zeroinitializer }, align 32
@ecryptfs_read_metadata._entry_ptr.49 = internal global ptr @ecryptfs_read_metadata._entry.47, section ".printk_index", align 4
@ecryptfs_read_metadata._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.46, ptr @.str.14, i32 1434, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [205 x i8], [51 x i8] } { [205 x i8] c"\014Attempt to access file with crypto metadata only in the extended attribute region, but eCryptfs was mounted without xattr support enabled. eCryptfs will not treat this like an encrypted file, inode %lu\0A\00", [51 x i8] zeroinitializer }, align 32
@ecryptfs_read_metadata._entry_ptr.52 = internal global ptr @ecryptfs_read_metadata._entry.50, section ".printk_index", align 4
@.str.53 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"key_tfm_list_mutex.wait_lock\00", [35 x i8] zeroinitializer }, align 32
@key_tfm_list_mutex = dso_local global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.53, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @key_tfm_list_mutex, i64 52), ptr getelementptr (i8, ptr @key_tfm_list_mutex, i64 52) }, ptr @key_tfm_list_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.54, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"key_tfm_list_mutex\00", [45 x i8] zeroinitializer }, align 32
@key_tfm_list = internal global { %struct.list_head, [24 x i8] } zeroinitializer, align 32
@ecryptfs_key_tfm_cache = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@ecryptfs_add_new_key_tfm.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.55 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"&tmp_tfm->key_tfm_mutex\00", [40 x i8] zeroinitializer }, align 32
@ecryptfs_add_new_key_tfm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.57, ptr @.str.14, i32 1643, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"\013Error attempting to initialize key TFM cipher with name = [%s]; rc = [%d]\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ecryptfs_add_new_key_tfm\00", [39 x i8] zeroinitializer }, align 32
@ecryptfs_add_new_key_tfm._entry_ptr = internal global ptr @ecryptfs_add_new_key_tfm._entry, section ".printk_index", align 4
@ecryptfs_get_tfm_and_mutex_for_cipher_name._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.59, ptr @.str.14, i32 1708, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013Error adding new key_tfm to list; rc = [%d]\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"ecryptfs_get_tfm_and_mutex_for_cipher_name\00", [53 x i8] zeroinitializer }, align 32
@ecryptfs_get_tfm_and_mutex_for_cipher_name._entry_ptr = internal global ptr @ecryptfs_get_tfm_and_mutex_for_cipher_name._entry, section ".printk_index", align 4
@ecryptfs_encrypt_and_encode_filename._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.61, ptr @.str.14, i32 1913, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013%s: Error attempting to encrypt filename; rc = [%d]\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"ecryptfs_encrypt_and_encode_filename\00", [59 x i8] zeroinitializer }, align 32
@ecryptfs_encrypt_and_encode_filename._entry_ptr = internal global ptr @ecryptfs_encrypt_and_encode_filename._entry, section ".printk_index", align 4
@.str.62 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ECRYPTFS_FNEK_ENCRYPTED.\00", [39 x i8] zeroinitializer }, align 32
@ecryptfs_encrypt_and_encode_filename._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.61, ptr @.str.14, i32 1960, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\013%s: Error attempting to encode encrypted filename; rc = [%d]\0A\00", [32 x i8] zeroinitializer }, align 32
@ecryptfs_encrypt_and_encode_filename._entry_ptr.65 = internal global ptr @ecryptfs_encrypt_and_encode_filename._entry.63, section ".printk_index", align 4
@.str.66 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\017%s: %s: Could not parse tag 70 packet from filename\0A\00", [41 x i8] zeroinitializer }, align 32
@__func__.ecryptfs_decode_and_decrypt_filename = private unnamed_addr constant [37 x i8] c"ecryptfs_decode_and_decrypt_filename\00", align 1
@ecryptfs_calculate_md5._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.68, ptr @.str.14, i32 70, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013%s: Error computing crypto hash; rc = [%d]\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ecryptfs_calculate_md5\00", [41 x i8] zeroinitializer }, align 32
@ecryptfs_calculate_md5._entry_ptr = internal global ptr @ecryptfs_calculate_md5._entry, section ".printk_index", align 4
@.str.70 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"\013%s: Error attempting to derive IV for extent [0x%.16llx]; rc = [%d]\0A\00", [57 x i8] zeroinitializer }, align 32
@__func__.crypt_extent = private unnamed_addr constant [13 x i8] c"crypt_extent\00", align 1
@crypt_extent._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @__func__.crypt_extent, ptr @.str.14, i32 409, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [96 x i8], [32 x i8] } { [96 x i8] c"\013%s: Error attempting to crypt page with page_index = [%ld], extent_offset = [%ld]; rc = [%d]\0A\00", [32 x i8] zeroinitializer }, align 32
@crypt_extent._entry_ptr = internal global ptr @crypt_extent._entry, section ".printk_index", align 4
@.str.72 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\017%s: Key size [%zd]; key:\0A\00", [36 x i8] zeroinitializer }, align 32
@__func__.crypt_scatterlist = private unnamed_addr constant [18 x i8] c"crypt_scatterlist\00", align 1
@.str.73 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013%s: Error setting key; rc = [%d]\0A\00", [60 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.74 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"./../include/linux/highmem-internal.h\00", [58 x i8] zeroinitializer }, align 32
@movable_zone = external dso_local local_unnamed_addr global i32, align 4
@.str.76 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%s(%s)\00", [25 x i8] zeroinitializer }, align 32
@ecryptfs_copy_mount_wide_sigs_to_inode_sigs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.78, ptr @.str.14, i32 716, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013Error adding keysig; rc = [%d]\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"ecryptfs_copy_mount_wide_sigs_to_inode_sigs\00", [52 x i8] zeroinitializer }, align 32
@ecryptfs_copy_mount_wide_sigs_to_inode_sigs._entry_ptr = internal global ptr @ecryptfs_copy_mount_wide_sigs_to_inode_sigs._entry, section ".printk_index", align 4
@.str.79 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\017%s: Generated new session key:\0A\00", [62 x i8] zeroinitializer }, align 32
@__func__.ecryptfs_generate_new_key = private unnamed_addr constant [26 x i8] c"ecryptfs_generate_new_key\00", align 1
@.str.80 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"\017%s: m_1 = [0x%.8x]; m_2 = [0x%.8x]; MAGIC_ECRYPTFS_MARKER = [0x%.8x]\0A\00", [56 x i8] zeroinitializer }, align 32
@__func__.ecryptfs_validate_marker = private unnamed_addr constant [25 x i8] c"ecryptfs_validate_marker\00", align 1
@.str.81 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\017%s: (m_1 ^ MAGIC_ECRYPTFS_MARKER) = [0x%.8x]\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\014%s: Error generating key packet set; rc = [%d]\0A\00", [46 x i8] zeroinitializer }, align 32
@__func__.ecryptfs_write_headers_virt = private unnamed_addr constant [28 x i8] c"ecryptfs_write_headers_virt\00", align 1
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@ecryptfs_write_metadata_to_contents._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.84, ptr @.str.14, i32 1087, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"\013%s: Error attempting to write header information to lower file; rc = [%d]\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"ecryptfs_write_metadata_to_contents\00", [60 x i8] zeroinitializer }, align 32
@ecryptfs_write_metadata_to_contents._entry_ptr = internal global ptr @ecryptfs_write_metadata_to_contents._entry, section ".printk_index", align 4
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.85 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [93 x i8], [35 x i8] } { [93 x i8] c"\014%s: File version is [%d]; only file version [%d] is supported by this version of eCryptfs\0A\00", [35 x i8] zeroinitializer }, align 32
@__func__.ecryptfs_read_headers_virt = private unnamed_addr constant [27 x i8] c"ecryptfs_read_headers_virt\00", align 1
@.str.87 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\014%s: Error reading header metadata; rc = [%d]\0A\00", [48 x i8] zeroinitializer }, align 32
@parse_header_metadata._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.89, ptr @.str.14, i32 1219, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\014Invalid header size: [%zd]\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"parse_header_metadata\00", [42 x i8] zeroinitializer }, align 32
@parse_header_metadata._entry_ptr = internal global ptr @parse_header_metadata._entry, section ".printk_index", align 4
@ecryptfs_process_key_cipher._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.91, ptr @.str.14, i32 1555, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\013Requested key size is [%zd] bytes; maximum allowable is [%d]\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ecryptfs_process_key_cipher\00", [36 x i8] zeroinitializer }, align 32
@ecryptfs_process_key_cipher._entry_ptr = internal global ptr @ecryptfs_process_key_cipher._entry, section ".printk_index", align 4
@.str.92 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ecb\00", [28 x i8] zeroinitializer }, align 32
@ecryptfs_process_key_cipher._entry.93 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.91, ptr @.str.14, i32 1566, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\013Unable to allocate crypto cipher with name [%s]; rc = [%d]\0A\00", [34 x i8] zeroinitializer }, align 32
@ecryptfs_process_key_cipher._entry_ptr.95 = internal global ptr @ecryptfs_process_key_cipher._entry.93, section ".printk_index", align 4
@ecryptfs_process_key_cipher._entry.96 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.91, ptr @.str.14, i32 1577, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"\013Error attempting to set key of size [%zd] for cipher [%s]; rc = [%d]\0A\00", [56 x i8] zeroinitializer }, align 32
@ecryptfs_process_key_cipher._entry_ptr.98 = internal global ptr @ecryptfs_process_key_cipher._entry.96, section ".printk_index", align 4
@ecryptfs_encrypt_filename._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.100, ptr @.str.14, i32 1476, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\013%s: Error attempting to get packet size for tag 72; rc = [%d]\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ecryptfs_encrypt_filename\00", [38 x i8] zeroinitializer }, align 32
@ecryptfs_encrypt_filename._entry_ptr = internal global ptr @ecryptfs_encrypt_filename._entry, section ".printk_index", align 4
@ecryptfs_encrypt_filename._entry.101 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.100, ptr @.str.14, i32 1496, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\013%s: Error attempting to generate tag 70 packet; rc = [%d]\0A\00", [35 x i8] zeroinitializer }, align 32
@ecryptfs_encrypt_filename._entry_ptr.103 = internal global ptr @ecryptfs_encrypt_filename._entry.101, section ".printk_index", align 4
@ecryptfs_encrypt_filename._entry.104 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @.str.100, ptr @.str.14, i32 1505, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"\013%s: No support for requested filename encryption method in this release\0A\00", [53 x i8] zeroinitializer }, align 32
@ecryptfs_encrypt_filename._entry_ptr.106 = internal global ptr @ecryptfs_encrypt_filename._entry.104, section ".printk_index", align 4
@.str.107 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"-.0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz\00", [63 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@filename_rev_map = internal constant { <{ [123 x i8], [133 x i8] }>, [64 x i8] } { <{ [123 x i8], [133 x i8] }> <{ [123 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\02\03\04\05\06\07\08\09\0A\0B\00\00\00\00\00\00\00\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\1C\1D\1E\1F !\22#$%\00\00\00\00\00\00&'()*+,-./0123456789:;<=>?", [133 x i8] zeroinitializer }>, [64 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.109 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.110 = internal global [4 x i64] [i64 2, i64 32, i64 4294967181, i64 4294967280]
@__sancov_gen_cov_switch_values.111 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.112 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.113 = internal global [5 x i64] [i64 3, i64 32, i64 16, i64 24, i64 32]
@__sancov_gen_cov_switch_values.114 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.115 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.116 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 2, i64 4, i64 6]
@__sancov_gen_cov_switch_values.117 = internal global [4 x i64] [i64 2, i64 32, i64 8, i64 16]
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.479, i32 118, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.479, i32 127, i32 45 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.479, i32 129, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.479, i32 135, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.479, i32 141, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.479, i32 159, i32 27 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.479, i32 162, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.479, i32 170, i32 2 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.479, i32 171, i32 2 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.479, i32 172, i32 2 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.479, i32 450, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.479, i32 461, i32 4 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.479, i32 473, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.479, i32 522, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.479, i32 534, i32 4 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.479, i32 559, i32 2 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.479, i32 570, i32 31 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.479, i32 577, i32 3 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.479, i32 640, i32 3 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.479, i32 647, i32 3 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.479, i32 784, i32 3 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.479, i32 799, i32 3 }
@___asan_gen_.208 = private unnamed_addr constant [29 x i8] c"ecryptfs_cipher_code_str_map\00", align 1
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.479, i32 908, i32 1 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.479, i32 933, i32 26 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.479, i32 971, i32 3 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.479, i32 1154, i32 4 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.479, i32 1159, i32 3 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.479, i32 1169, i32 3 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.479, i32 1177, i32 3 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.479, i32 1188, i32 3 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.479, i32 1333, i32 12 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.479, i32 1337, i32 4 }
@___asan_gen_.262 = private unnamed_addr constant [22 x i8] c"ecryptfs_header_cache\00", align 1
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.479, i32 1013, i32 20 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.479, i32 1410, i32 4 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.479, i32 1420, i32 4 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.479, i32 1429, i32 4 }
@___asan_gen_.289 = private unnamed_addr constant [19 x i8] c"key_tfm_list_mutex\00", align 1
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.479, i32 1588, i32 1 }
@___asan_gen_.295 = private unnamed_addr constant [13 x i8] c"key_tfm_list\00", align 1
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.479, i32 1587, i32 25 }
@___asan_gen_.298 = private unnamed_addr constant [23 x i8] c"ecryptfs_key_tfm_cache\00", align 1
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.479, i32 1586, i32 20 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.479, i32 1632, i32 2 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.479, i32 1641, i32 3 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.479, i32 1707, i32 4 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.479, i32 1912, i32 4 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.479, i32 1942, i32 11 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.479, i32 1958, i32 4 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.479, i32 2044, i32 4 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.479, i32 68, i32 3 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.479, i32 390, i32 3 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.479, i32 407, i32 3 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.479, i32 300, i32 3 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.479, i32 324, i32 4 }
@___asan_gen_.370 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.374 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 87, i32 2 }
@___asan_gen_.377 = private unnamed_addr constant [38 x i8] c"./../include/linux/highmem-internal.h\00", align 1
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 44, i32 2 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.479, i32 92, i32 48 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.479, i32 716, i32 4 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.479, i32 666, i32 3 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.479, i32 820, i32 2 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.479, i32 823, i32 2 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.479, i32 1068, i32 3 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.479, i32 1086, i32 3 }
@___asan_gen_.413 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 271, i32 2 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.479, i32 1289, i32 3 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.479, i32 1302, i32 4 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.479, i32 1218, i32 3 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.479, i32 1554, i32 3 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.479, i32 1559, i32 11 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.479, i32 1565, i32 3 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.479, i32 1575, i32 3 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.479, i32 1474, i32 4 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.479, i32 1494, i32 4 }
@___asan_gen_.469 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.479, i32 1504, i32 3 }
@___asan_gen_.475 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.479, i32 1720, i32 50 }
@___asan_gen_.478 = private unnamed_addr constant [17 x i8] c"filename_rev_map\00", align 1
@___asan_gen_.479 = private constant [24 x i8] c"../fs/ecryptfs/crypto.c\00", align 1
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.479, i32 1727, i32 28 }
@llvm.compiler.used = appending global [148 x ptr] [ptr @crypt_extent._entry, ptr @crypt_extent._entry_ptr, ptr @ecryptfs_add_new_key_tfm._entry, ptr @ecryptfs_add_new_key_tfm._entry_ptr, ptr @ecryptfs_calculate_md5._entry, ptr @ecryptfs_calculate_md5._entry_ptr, ptr @ecryptfs_copy_mount_wide_sigs_to_inode_sigs._entry, ptr @ecryptfs_copy_mount_wide_sigs_to_inode_sigs._entry_ptr, ptr @ecryptfs_decrypt_page._entry, ptr @ecryptfs_decrypt_page._entry_ptr, ptr @ecryptfs_encrypt_and_encode_filename._entry, ptr @ecryptfs_encrypt_and_encode_filename._entry.63, ptr @ecryptfs_encrypt_and_encode_filename._entry_ptr, ptr @ecryptfs_encrypt_and_encode_filename._entry_ptr.65, ptr @ecryptfs_encrypt_filename._entry, ptr @ecryptfs_encrypt_filename._entry.101, ptr @ecryptfs_encrypt_filename._entry.104, ptr @ecryptfs_encrypt_filename._entry_ptr, ptr @ecryptfs_encrypt_filename._entry_ptr.103, ptr @ecryptfs_encrypt_filename._entry_ptr.106, ptr @ecryptfs_encrypt_page._entry, ptr @ecryptfs_encrypt_page._entry_ptr, ptr @ecryptfs_get_tfm_and_mutex_for_cipher_name._entry, ptr @ecryptfs_get_tfm_and_mutex_for_cipher_name._entry_ptr, ptr @ecryptfs_new_file_context._entry, ptr @ecryptfs_new_file_context._entry_ptr, ptr @ecryptfs_process_key_cipher._entry, ptr @ecryptfs_process_key_cipher._entry.93, ptr @ecryptfs_process_key_cipher._entry.96, ptr @ecryptfs_process_key_cipher._entry_ptr, ptr @ecryptfs_process_key_cipher._entry_ptr.95, ptr @ecryptfs_process_key_cipher._entry_ptr.98, ptr @ecryptfs_read_metadata._entry, ptr @ecryptfs_read_metadata._entry.47, ptr @ecryptfs_read_metadata._entry.50, ptr @ecryptfs_read_metadata._entry_ptr, ptr @ecryptfs_read_metadata._entry_ptr.49, ptr @ecryptfs_read_metadata._entry_ptr.52, ptr @ecryptfs_read_xattr_region._entry, ptr @ecryptfs_read_xattr_region._entry_ptr, ptr @ecryptfs_write_metadata._entry, ptr @ecryptfs_write_metadata._entry.30, ptr @ecryptfs_write_metadata._entry.33, ptr @ecryptfs_write_metadata._entry.36, ptr @ecryptfs_write_metadata._entry.39, ptr @ecryptfs_write_metadata._entry_ptr, ptr @ecryptfs_write_metadata._entry_ptr.32, ptr @ecryptfs_write_metadata._entry_ptr.35, ptr @ecryptfs_write_metadata._entry_ptr.38, ptr @ecryptfs_write_metadata._entry_ptr.41, ptr @ecryptfs_write_metadata_to_contents._entry, ptr @ecryptfs_write_metadata_to_contents._entry_ptr, ptr @parse_header_metadata._entry, ptr @parse_header_metadata._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @ecryptfs_init_crypt_stat.__key, ptr @.str.7, ptr @ecryptfs_init_crypt_stat.__key.8, ptr @.str.9, ptr @ecryptfs_init_crypt_stat.__key.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @ecryptfs_cipher_code_str_map, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.31, ptr @.str.34, ptr @.str.37, ptr @.str.40, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @ecryptfs_header_cache, ptr @.str.45, ptr @.str.46, ptr @.str.48, ptr @.str.51, ptr @.str.53, ptr @key_tfm_list_mutex, ptr @.str.54, ptr @key_tfm_list, ptr @ecryptfs_key_tfm_cache, ptr @ecryptfs_add_new_key_tfm.__key, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.64, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @init_completion.__key, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.94, ptr @.str.97, ptr @.str.99, ptr @.str.100, ptr @.str.102, ptr @.str.105, ptr @.str.107, ptr @filename_rev_map], section "llvm.metadata"
@0 = internal global [121 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecryptfs_init_crypt_stat.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecryptfs_init_crypt_stat.__key.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecryptfs_init_crypt_stat.__key.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecryptfs_encrypt_page._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecryptfs_decrypt_page._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecryptfs_new_file_context._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecryptfs_cipher_code_str_map to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecryptfs_write_metadata._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecryptfs_write_metadata._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecryptfs_write_metadata._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecryptfs_write_metadata._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecryptfs_write_metadata._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecryptfs_read_xattr_region._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 85, i32 128, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecryptfs_header_cache to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecryptfs_read_metadata._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 85, i32 128, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecryptfs_read_metadata._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecryptfs_read_metadata._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 205, i32 256, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @key_tfm_list_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @key_tfm_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecryptfs_key_tfm_cache to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecryptfs_add_new_key_tfm.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecryptfs_add_new_key_tfm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecryptfs_get_tfm_and_mutex_for_cipher_name._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecryptfs_encrypt_and_encode_filename._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecryptfs_encrypt_and_encode_filename._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecryptfs_calculate_md5._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @crypt_extent._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecryptfs_copy_mount_wide_sigs_to_inode_sigs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecryptfs_write_metadata_to_contents._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 93, i32 128, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_header_metadata._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecryptfs_process_key_cipher._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecryptfs_process_key_cipher._entry.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecryptfs_process_key_cipher._entry.96 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecryptfs_encrypt_filename._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecryptfs_encrypt_filename._entry.101 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecryptfs_encrypt_filename._entry.104 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @filename_rev_map to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ecryptfs_from_hex(ptr nocapture noundef writeonly %dst, ptr nocapture noundef readonly %src, i32 noundef %dst_size) local_unnamed_addr #0 align 64 {
entry:
  %tmp = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %tmp) #16
  %0 = getelementptr inbounds i8, ptr %tmp, i32 2
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %0, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dst_size)
  %cmp11 = icmp sgt i32 %dst_size, 0
  br i1 %cmp11, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %arrayidx4 = getelementptr inbounds [3 x i8], ptr %tmp, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %x.012 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %mul = shl nuw i32 %x.012, 1
  %arrayidx = getelementptr i8, ptr %src, i32 %mul
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %4 = ptrtoint ptr %tmp to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %3, ptr %tmp, align 1
  %add = or i32 %mul, 1
  %arrayidx3 = getelementptr i8, ptr %src, i32 %add
  %5 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx3, align 1
  %7 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %6, ptr %arrayidx4, align 1
  %call = call i32 @simple_strtol(ptr noundef nonnull %tmp, ptr noundef null, i32 noundef 16) #16
  %conv = trunc i32 %call to i8
  %arrayidx5 = getelementptr i8, ptr %dst, i32 %x.012
  %8 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv, ptr %arrayidx5, align 1
  %inc = add nuw nsw i32 %x.012, 1
  %exitcond.not = icmp eq i32 %inc, %dst_size
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %tmp) #16
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ecryptfs_derive_iv(ptr noundef %iv, ptr noundef %crypt_stat, i64 noundef %offset) local_unnamed_addr #0 align 64 {
entry:
  %dst = alloca [16 x i8], align 1
  %src = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %dst) #16
  %0 = call ptr @memset(ptr %dst, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %src) #16
  %1 = call ptr @memset(ptr %src, i32 255, i32 32)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ecryptfs_verbosity to i32))
  %2 = load i32, ptr @ecryptfs_verbosity, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp = icmp sgt i32 %2, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge, !prof !252

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ...) @__ecryptfs_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.ecryptfs_derive_iv) #16
  %root_iv = getelementptr inbounds %struct.ecryptfs_crypt_stat, ptr %crypt_stat, i32 0, i32 13
  %iv_bytes = getelementptr inbounds %struct.ecryptfs_crypt_stat, ptr %crypt_stat, i32 0, i32 2
  %3 = ptrtoint ptr %iv_bytes to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %iv_bytes, align 4
  tail call void @ecryptfs_dump_hex(ptr noundef %root_iv, i32 noundef %4) #16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %root_iv3 = getelementptr inbounds %struct.ecryptfs_crypt_stat, ptr %crypt_stat, i32 0, i32 13
  %iv_bytes5 = getelementptr inbounds %struct.ecryptfs_crypt_stat, ptr %crypt_stat, i32 0, i32 2
  %5 = ptrtoint ptr %iv_bytes5 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %iv_bytes5, align 4
  %7 = call ptr @memcpy(ptr %src, ptr %root_iv3, i32 %6)
  %add.ptr = getelementptr i8, ptr %src, i32 %6
  %8 = call ptr @memset(ptr %add.ptr, i32 0, i32 16)
  %call = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr, i32 noundef 16, ptr noundef nonnull @.str.1, i64 noundef %offset)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ecryptfs_verbosity to i32))
  %9 = load i32, ptr @ecryptfs_verbosity, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp11 = icmp sgt i32 %9, 0
  br i1 %cmp11, label %if.then18, label %if.end.if.end21_crit_edge, !prof !252

if.end.if.end21_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end21

if.then18:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ...) @__ecryptfs_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.ecryptfs_derive_iv) #16
  %10 = ptrtoint ptr %iv_bytes5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %iv_bytes5, align 4
  %add = add i32 %11, 16
  call void @ecryptfs_dump_hex(ptr noundef nonnull %src, i32 noundef %add) #16
  br label %if.end21

if.end21:                                         ; preds = %if.then18, %if.end.if.end21_crit_edge
  %12 = ptrtoint ptr %iv_bytes5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %iv_bytes5, align 4
  %add25 = add i32 %13, 16
  %hash_tfm.i = getelementptr inbounds %struct.ecryptfs_crypt_stat, ptr %crypt_stat, i32 0, i32 10
  %14 = ptrtoint ptr %hash_tfm.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hash_tfm.i, align 4
  %call.i = call i32 @crypto_shash_tfm_digest(ptr noundef %15, ptr noundef nonnull %src, i32 noundef %add25, ptr noundef nonnull %dst) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end29, label %if.then28

if.then28:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #18
  %call1.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.68, i32 noundef %call.i) #19
  call void (ptr, ...) @__ecryptfs_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.ecryptfs_derive_iv) #16
  br label %out

if.end29:                                         ; preds = %if.end21
  %16 = ptrtoint ptr %iv_bytes5 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %iv_bytes5, align 4
  %18 = call ptr @memcpy(ptr %iv, ptr %dst, i32 %17)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ecryptfs_verbosity to i32))
  %19 = load i32, ptr @ecryptfs_verbosity, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp32 = icmp sgt i32 %19, 0
  br i1 %cmp32, label %if.then39, label %if.end29.out_crit_edge, !prof !252

if.end29.out_crit_edge:                           ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.then39:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, ...) @__ecryptfs_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.ecryptfs_derive_iv) #16
  %20 = ptrtoint ptr %iv_bytes5 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %iv_bytes5, align 4
  call void @ecryptfs_dump_hex(ptr noundef %iv, i32 noundef %21) #16
  br label %out

out:                                              ; preds = %if.then39, %if.end29.out_crit_edge, %if.then28
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %src) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %dst) #16
  ret i32 %call.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ecryptfs_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ecryptfs_dump_hex(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ecryptfs_init_crypt_stat(ptr noundef %crypt_stat) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @crypto_alloc_shash(ptr noundef nonnull @.str.5, i32 noundef 0, i32 noundef 0) #16
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %0 = ptrtoint ptr %call to i32
  tail call void (ptr, ...) @__ecryptfs_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.ecryptfs_init_crypt_stat, i32 noundef %0) #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %1 = call ptr @memset(ptr %crypt_stat, i32 0, i32 440)
  %keysig_list = getelementptr inbounds %struct.ecryptfs_crypt_stat, ptr %crypt_stat, i32 0, i32 14
  %2 = ptrtoint ptr %keysig_list to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %keysig_list, ptr %keysig_list, align 4
  %prev.i = getelementptr inbounds %struct.ecryptfs_crypt_stat, ptr %crypt_stat, i32 0, i32 14, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %keysig_list, ptr %prev.i, align 4
  %keysig_list_mutex = getelementptr inbounds %struct.ecryptfs_crypt_stat, ptr %crypt_stat, i32 0, i32 15
  tail call void @__mutex_init(ptr noundef %keysig_list_mutex, ptr noundef nonnull @.str.7, ptr noundef nonnull @ecryptfs_init_crypt_stat.__key) #16
  %cs_mutex = getelementptr inbounds %struct.ecryptfs_crypt_stat, ptr %crypt_stat, i32 0, i32 17
  tail call void @__mutex_init(ptr noundef %cs_mutex, ptr noundef nonnull @.str.9, ptr noundef nonnull @ecryptfs_init_crypt_stat.__key.8) #16
  %cs_tfm_mutex = getelementptr inbounds %struct.ecryptfs_crypt_stat, ptr %crypt_stat, i32 0, i32 16
  tail call void @__mutex_init(ptr noundef %cs_tfm_mutex, ptr noundef nonnull @.str.11, ptr noundef nonnull @ecryptfs_init_crypt_stat.__key.10) #16
  %hash_tfm = getelementptr inbounds %struct.ecryptfs_crypt_stat, ptr %crypt_stat, i32 0, i32 10
  %4 = ptrtoint ptr %hash_tfm to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call, ptr %hash_tfm, align 4
  %5 = ptrtoint ptr %crypt_stat to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %crypt_stat, align 4
  %or = or i32 %6, 1
  store i32 %or, ptr %crypt_stat, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_alloc_shash(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ecryptfs_destroy_crypt_stat(ptr noundef %crypt_stat) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm = getelementptr inbounds %struct.ecryptfs_crypt_stat, ptr %crypt_stat, i32 0, i32 9
  %0 = ptrtoint ptr %tfm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm, align 4
  %base.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %1, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef %1, ptr noundef %base.i.i) #16
  %hash_tfm = getelementptr inbounds %struct.ecryptfs_crypt_stat, ptr %crypt_stat, i32 0, i32 10
  %2 = ptrtoint ptr %hash_tfm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hash_tfm, align 4
  %base.i.i21 = getelementptr inbounds %struct.crypto_shash, ptr %3, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef %3, ptr noundef %base.i.i21) #16
  %keysig_list = getelementptr inbounds %struct.ecryptfs_crypt_stat, ptr %crypt_stat, i32 0, i32 14
  %4 = ptrtoint ptr %keysig_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %keysig_list, align 4
  %cmp.not22 = icmp eq ptr %5, %keysig_list
  br i1 %cmp.not22, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %key_sig.023 = phi ptr [ %key_sig_tmp.0, %list_del.exit.for.body_crit_edge ], [ %5, %entry.for.body_crit_edge ]
  %6 = ptrtoint ptr %key_sig.023 to i32
  call void @__asan_load4_noabort(i32 %6)
  %key_sig_tmp.0 = load ptr, ptr %key_sig.023, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %key_sig.023) #16
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %key_sig.023, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i.i, align 4
  %9 = ptrtoint ptr %key_sig.023 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %key_sig.023, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev1.i.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %10, ptr %8, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %13 = ptrtoint ptr %key_sig.023 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 256 to ptr), ptr %key_sig.023, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %key_sig.023, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ecryptfs_key_sig_cache to i32))
  %15 = load ptr, ptr @ecryptfs_key_sig_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %15, ptr noundef %key_sig.023) #16
  %cmp.not = icmp eq ptr %key_sig_tmp.0, %keysig_list
  br i1 %cmp.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %16 = call ptr @memset(ptr %crypt_stat, i32 0, i32 440)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ecryptfs_destroy_mount_crypt_stat(ptr noundef %mount_crypt_stat) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mount_crypt_stat to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mount_crypt_stat, align 4
  %and = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %global_auth_tok_list_mutex = getelementptr inbounds %struct.ecryptfs_mount_crypt_stat, ptr %mount_crypt_stat, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %global_auth_tok_list_mutex, i32 noundef 0) #16
  %global_auth_tok_list = getelementptr inbounds %struct.ecryptfs_mount_crypt_stat, ptr %mount_crypt_stat, i32 0, i32 1
  %2 = ptrtoint ptr %global_auth_tok_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %global_auth_tok_list, align 4
  %cmp.not34 = icmp eq ptr %3, %global_auth_tok_list
  br i1 %cmp.not34, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body:                                         ; preds = %if.end12.for.body_crit_edge, %if.end.for.body_crit_edge
  %.pn.in35 = phi ptr [ %.pn38, %if.end12.for.body_crit_edge ], [ %3, %if.end.for.body_crit_edge ]
  %auth_tok.037 = getelementptr i8, ptr %.pn.in35, i32 -4
  %4 = ptrtoint ptr %.pn.in35 to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn38 = load ptr, ptr %.pn.in35, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in35) #16
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in35, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i, align 4
  %7 = ptrtoint ptr %.pn.in35 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %.pn.in35, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %11 = ptrtoint ptr %.pn.in35 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in35, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in35, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %13 = ptrtoint ptr %auth_tok.037 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %auth_tok.037, align 4
  %and9 = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.then11, label %list_del.exit.if.end12_crit_edge

list_del.exit.if.end12_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end12

if.then11:                                        ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #18
  %global_auth_tok_key = getelementptr i8, ptr %.pn.in35, i32 8
  %15 = ptrtoint ptr %global_auth_tok_key to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %global_auth_tok_key, align 4
  tail call void @key_put(ptr noundef %16) #16
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %list_del.exit.if.end12_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ecryptfs_global_auth_tok_cache to i32))
  %17 = load ptr, ptr @ecryptfs_global_auth_tok_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %17, ptr noundef %auth_tok.037) #16
  %cmp.not = icmp eq ptr %.pn38, %global_auth_tok_list
  br i1 %cmp.not, label %if.end12.for.end_crit_edge, label %if.end12.for.body_crit_edge

if.end12.for.body_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

if.end12.for.end_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.end:                                          ; preds = %if.end12.for.end_crit_edge, %if.end.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %global_auth_tok_list_mutex) #16
  %18 = call ptr @memset(ptr %mount_crypt_stat, i32 0, i32 196)
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @key_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @virt_to_scatterlist(ptr noundef %addr, i32 noundef %size, ptr noundef %sg, i32 noundef %sg_size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @sg_init_table(ptr noundef %sg, i32 noundef %sg_size) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %cmp42 = icmp sgt i32 %size, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sg_size)
  %cmp143 = icmp sgt i32 %sg_size, 0
  %or.cond44 = and i1 %cmp42, %cmp143
  br i1 %or.cond44, label %entry.while.body_crit_edge, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %entry.while.body_crit_edge
  %i.047 = phi i32 [ %inc, %if.end.while.body_crit_edge ], [ 0, %entry.while.body_crit_edge ]
  %addr.addr.046 = phi ptr [ %addr.addr.1, %if.end.while.body_crit_edge ], [ %addr, %entry.while.body_crit_edge ]
  %size.addr.045 = phi i32 [ %sub7, %if.end.while.body_crit_edge ], [ %size, %entry.while.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %0 = load ptr, ptr @mem_map, align 4
  %1 = ptrtoint ptr %addr.addr.046 to i32
  %sub = add i32 %1, 1073741824
  %shr = lshr i32 %sub, 12
  %add.ptr = getelementptr %struct.page, ptr %0, i32 %shr
  %and = and i32 %1, 4095
  %arrayidx = getelementptr %struct.scatterlist, ptr %sg, i32 %i.047
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %4 = ptrtoint ptr %add.ptr to i32
  %and2.i.i = and i32 %4, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %tobool.not.i.i = icmp eq i32 %and2.i.i, 0
  br i1 %tobool.not.i.i, label %do.body11.i.i, label %do.body5.i.i, !prof !253

do.body5.i.i:                                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #16, !srcloc !254
  unreachable

do.body11.i.i:                                    ; preds = %while.body
  %and.i.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %sg_set_page.exit, label %do.body19.i.i, !prof !253

do.body19.i.i:                                    ; preds = %do.body11.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #16, !srcloc !255
  unreachable

sg_set_page.exit:                                 ; preds = %do.body11.i.i
  %and.i.i = and i32 %3, 3
  %or.i.i = or i32 %and.i.i, %4
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %or.i.i, ptr %arrayidx, align 4
  %offset1.i = getelementptr %struct.scatterlist, ptr %sg, i32 %i.047, i32 1
  %6 = ptrtoint ptr %offset1.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %and, ptr %offset1.i, align 4
  %length.i = getelementptr %struct.scatterlist, ptr %sg, i32 %i.047, i32 2
  %7 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %length.i, align 4
  %sub3 = sub nuw nsw i32 4096, %and
  call void @__sanitizer_cov_trace_cmp4(i32 %size.addr.045, i32 %sub3)
  %cmp4.not = icmp ult i32 %size.addr.045, %sub3
  br i1 %cmp4.not, label %while.end.thread, label %if.end

while.end.thread:                                 ; preds = %sg_set_page.exit
  call void @__sanitizer_cov_trace_pc() #18
  %8 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %size.addr.045, ptr %length.i, align 4
  %inc54 = add nuw nsw i32 %i.047, 1
  br label %10

if.end:                                           ; preds = %sg_set_page.exit
  %sub7 = sub nsw i32 %size.addr.045, %sub3
  %9 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %sub3, ptr %length.i, align 4
  %addr.addr.1 = getelementptr i8, ptr %addr.addr.046, i32 %sub3
  %inc = add nuw nsw i32 %i.047, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub7)
  %cmp = icmp sgt i32 %sub7, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %sg_size)
  %cmp1 = icmp slt i32 %inc, %sg_size
  %or.cond = select i1 %cmp, i1 %cmp1, i1 false
  br i1 %or.cond, label %if.end.while.body_crit_edge, label %if.end.while.end_crit_edge

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body

while.end:                                        ; preds = %if.end.while.end_crit_edge, %entry.while.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %entry.while.end_crit_edge ], [ %inc, %if.end.while.end_crit_edge ]
  %cmp.lcssa = phi i1 [ %cmp42, %entry.while.end_crit_edge ], [ %cmp, %if.end.while.end_crit_edge ]
  %spec.select = select i1 %cmp.lcssa, i32 -12, i32 %i.0.lcssa
  br label %10

10:                                               ; preds = %while.end, %while.end.thread
  %11 = phi i32 [ %inc54, %while.end.thread ], [ %spec.select, %while.end ]
  ret i32 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_table(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ecryptfs_encrypt_page(ptr noundef %page) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %mapping = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 1
  %0 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mapping, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %crypt_stat1 = getelementptr inbounds %struct.ecryptfs_inode_info, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %crypt_stat1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %crypt_stat1, align 4
  %and = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body5, label %do.end10, !prof !252

do.body5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ecryptfs/crypto.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 446, 0\0A.popsection", ""() #16, !srcloc !256
  unreachable

do.end10:                                         ; preds = %entry
  %call38.i.i.i = tail call ptr @__alloc_pages(i32 noundef 1051840, i32 noundef 0, i32 noundef 0, ptr noundef null) #16
  %tobool12.not = icmp eq ptr %call38.i.i.i, null
  br i1 %tobool12.not, label %out.thread, label %for.cond.preheader

for.cond.preheader:                               ; preds = %do.end10
  %extent_size = getelementptr inbounds %struct.ecryptfs_inode_info, ptr %3, i32 0, i32 5, i32 4
  %6 = ptrtoint ptr %extent_size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %extent_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %7)
  %cmp59.not = icmp ugt i32 %7, 4096
  br i1 %cmp59.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

out.thread:                                       ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ...) @__ecryptfs_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.ecryptfs_encrypt_page) #16
  br label %if.end34

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i64 %extent_offset.060, 1
  %8 = ptrtoint ptr %extent_size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %extent_size, align 4
  %div = udiv i32 4096, %9
  %conv = zext i32 %div to i64
  %cmp = icmp ult i64 %inc, %conv
  br i1 %cmp, label %for.cond.for.body_crit_edge, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %extent_offset.060 = phi i64 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %conv16 = trunc i64 %extent_offset.060 to i32
  %call17 = tail call fastcc i32 @crypt_extent(ptr noundef %crypt_stat1, ptr noundef nonnull %call38.i.i.i, ptr noundef %page, i32 noundef %conv16, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %for.cond, label %do.end22

do.end22:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @__func__.ecryptfs_encrypt_page, i32 noundef %call17) #19
  br label %if.then33

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %10 = ptrtoint ptr %crypt_stat1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %crypt_stat1, align 4
  %and.i.i = and i32 %11, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %for.end.lower_offset_for_page.exit_crit_edge

for.end.lower_offset_for_page.exit_crit_edge:     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %lower_offset_for_page.exit

if.end.i.i:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  %metadata_size.i.i = getelementptr inbounds %struct.ecryptfs_inode_info, ptr %3, i32 0, i32 5, i32 3
  %12 = ptrtoint ptr %metadata_size.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %metadata_size.i.i, align 4
  br label %lower_offset_for_page.exit

lower_offset_for_page.exit:                       ; preds = %if.end.i.i, %for.end.lower_offset_for_page.exit_crit_edge
  %retval.0.i.i = phi i32 [ %13, %if.end.i.i ], [ 0, %for.end.lower_offset_for_page.exit_crit_edge ]
  %conv.i = zext i32 %retval.0.i.i to i64
  %index.i = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 2
  %14 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %index.i, align 4
  %conv1.i = zext i32 %15 to i64
  %shl.i = shl nuw nsw i64 %conv1.i, 12
  %add.i = add nuw nsw i64 %shl.i, %conv.i
  tail call void @__might_sleep(ptr noundef nonnull @.str.75, i32 noundef 44) #16
  %16 = ptrtoint ptr %call38.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %call38.i.i.i, align 4
  %shr.i.i = lshr i32 %17, 30
  %18 = zext i32 %shr.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values)
  switch i32 %shr.i.i, label %lower_offset_for_page.exit.if.then.i_crit_edge [
    i32 2, label %lower_offset_for_page.exit.if.else.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i
  ]

lower_offset_for_page.exit.if.else.i_crit_edge:   ; preds = %lower_offset_for_page.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else.i

lower_offset_for_page.exit.if.then.i_crit_edge:   ; preds = %lower_offset_for_page.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i

is_highmem_idx.exit.i:                            ; preds = %lower_offset_for_page.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %19 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %19)
  %cmp2.i.not.i = icmp eq i32 %19, 2
  br i1 %cmp2.i.not.i, label %is_highmem_idx.exit.i.if.else.i_crit_edge, label %is_highmem_idx.exit.i.if.then.i_crit_edge

is_highmem_idx.exit.i.if.then.i_crit_edge:        ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i

is_highmem_idx.exit.i.if.else.i_crit_edge:        ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else.i

if.then.i:                                        ; preds = %is_highmem_idx.exit.i.if.then.i_crit_edge, %lower_offset_for_page.exit.if.then.i_crit_edge
  %call5.i = tail call ptr @page_address(ptr noundef nonnull %call38.i.i.i) #16
  br label %kmap.exit

if.else.i:                                        ; preds = %is_highmem_idx.exit.i.if.else.i_crit_edge, %lower_offset_for_page.exit.if.else.i_crit_edge
  %call6.i = tail call ptr @kmap_high(ptr noundef nonnull %call38.i.i.i) #16
  br label %kmap.exit

kmap.exit:                                        ; preds = %if.else.i, %if.then.i
  %addr.0.i = phi ptr [ %call6.i, %if.else.i ], [ %call5.i, %if.then.i ]
  %call27 = tail call i32 @ecryptfs_write_lower(ptr noundef %3, ptr noundef %addr.0.i, i64 noundef %add.i, i32 noundef 4096) #16
  tail call void @__might_sleep(ptr noundef nonnull @.str.75, i32 noundef 55) #16
  %20 = ptrtoint ptr %call38.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %call38.i.i.i, align 4
  %shr.i.i52 = lshr i32 %21, 30
  %22 = zext i32 %shr.i.i52 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.109)
  switch i32 %shr.i.i52, label %kmap.exit.kunmap.exit_crit_edge [
    i32 2, label %kmap.exit.if.end.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i54
  ]

kmap.exit.if.end.i_crit_edge:                     ; preds = %kmap.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i

kmap.exit.kunmap.exit_crit_edge:                  ; preds = %kmap.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %kunmap.exit

is_highmem_idx.exit.i54:                          ; preds = %kmap.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %23 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %23)
  %cmp2.i.not.i53 = icmp eq i32 %23, 2
  br i1 %cmp2.i.not.i53, label %is_highmem_idx.exit.i54.if.end.i_crit_edge, label %is_highmem_idx.exit.i54.kunmap.exit_crit_edge

is_highmem_idx.exit.i54.kunmap.exit_crit_edge:    ; preds = %is_highmem_idx.exit.i54
  call void @__sanitizer_cov_trace_pc() #18
  br label %kunmap.exit

is_highmem_idx.exit.i54.if.end.i_crit_edge:       ; preds = %is_highmem_idx.exit.i54
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i

if.end.i:                                         ; preds = %is_highmem_idx.exit.i54.if.end.i_crit_edge, %kmap.exit.if.end.i_crit_edge
  tail call void @kunmap_high(ptr noundef nonnull %call38.i.i.i) #16
  br label %kunmap.exit

kunmap.exit:                                      ; preds = %if.end.i, %is_highmem_idx.exit.i54.kunmap.exit_crit_edge, %kmap.exit.kunmap.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %cmp28 = icmp slt i32 %call27, 0
  br i1 %cmp28, label %if.then30, label %kunmap.exit.if.then33_crit_edge

kunmap.exit.if.then33_crit_edge:                  ; preds = %kunmap.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then33

if.then30:                                        ; preds = %kunmap.exit
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ...) @__ecryptfs_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @__func__.ecryptfs_encrypt_page, i32 noundef %call27) #16
  br label %if.then33

if.then33:                                        ; preds = %if.then30, %kunmap.exit.if.then33_crit_edge, %do.end22
  %rc.0 = phi i32 [ %call17, %do.end22 ], [ %call27, %if.then30 ], [ 0, %kunmap.exit.if.then33_crit_edge ]
  tail call void @__free_pages(ptr noundef nonnull %call38.i.i.i, i32 noundef 0) #16
  br label %if.end34

if.end34:                                         ; preds = %if.then33, %out.thread
  %rc.056 = phi i32 [ -12, %out.thread ], [ %rc.0, %if.then33 ]
  ret i32 %rc.056
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @crypt_extent(ptr noundef %crypt_stat, ptr noundef %dst_page, ptr noundef %src_page, i32 noundef %extent_offset, i32 noundef %op) unnamed_addr #0 align 64 {
entry:
  %ecr.i = alloca %struct.extent_crypt_result, align 4
  %extent_iv = alloca [16 x i8], align 1
  %src_sg = alloca %struct.scatterlist, align 4
  %dst_sg = alloca %struct.scatterlist, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %op)
  %cmp = icmp eq i32 %op, 1
  %src_page.dst_page = select i1 %cmp, ptr %src_page, ptr %dst_page
  %cond.in = getelementptr inbounds %struct.page, ptr %src_page.dst_page, i32 0, i32 1, i32 0, i32 2
  %0 = ptrtoint ptr %cond.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %cond = load i32, ptr %cond.in, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %extent_iv) #16
  %1 = call ptr @memset(ptr %extent_iv, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %src_sg) #16
  %2 = getelementptr inbounds %struct.scatterlist, ptr %src_sg, i32 0, i32 1
  %3 = getelementptr inbounds %struct.scatterlist, ptr %src_sg, i32 0, i32 2
  %4 = call ptr @memset(ptr %src_sg, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %dst_sg) #16
  %5 = getelementptr inbounds %struct.scatterlist, ptr %dst_sg, i32 0, i32 1
  %6 = getelementptr inbounds %struct.scatterlist, ptr %dst_sg, i32 0, i32 2
  %extent_size2 = getelementptr inbounds %struct.ecryptfs_crypt_stat, ptr %crypt_stat, i32 0, i32 4
  %7 = call ptr @memset(ptr %dst_sg, i32 255, i32 20)
  %8 = ptrtoint ptr %extent_size2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %extent_size2, align 4
  %conv = zext i32 %cond to i64
  %div = udiv i32 4096, %9
  %conv3 = zext i32 %div to i64
  %mul = mul nuw nsw i64 %conv3, %conv
  %conv4 = zext i32 %extent_offset to i64
  %add = add nuw nsw i64 %mul, %conv4
  %call = call i32 @ecryptfs_derive_iv(ptr noundef nonnull %extent_iv, ptr noundef %crypt_stat, i64 noundef %add)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, ...) @__ecryptfs_printk(ptr noundef nonnull @.str.70, ptr noundef nonnull @__func__.crypt_extent, i64 noundef %add, i32 noundef %call) #16
  br label %out

if.end:                                           ; preds = %entry
  call void @sg_init_table(ptr noundef nonnull %src_sg, i32 noundef 1) #16
  call void @sg_init_table(ptr noundef nonnull %dst_sg, i32 noundef 1) #16
  %mul7 = mul i32 %9, %extent_offset
  %10 = ptrtoint ptr %src_sg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %src_sg, align 4
  %12 = ptrtoint ptr %src_page to i32
  %and2.i.i = and i32 %12, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %tobool.not.i.i = icmp eq i32 %and2.i.i, 0
  br i1 %tobool.not.i.i, label %do.body11.i.i, label %do.body5.i.i, !prof !253

do.body5.i.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #16, !srcloc !254
  unreachable

do.body11.i.i:                                    ; preds = %if.end
  %and.i.i.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %sg_set_page.exit, label %do.body19.i.i, !prof !253

do.body19.i.i:                                    ; preds = %do.body11.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #16, !srcloc !255
  unreachable

sg_set_page.exit:                                 ; preds = %do.body11.i.i
  %and.i.i = and i32 %11, 3
  %or.i.i = or i32 %and.i.i, %12
  %13 = ptrtoint ptr %src_sg to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %or.i.i, ptr %src_sg, align 4
  %14 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %mul7, ptr %2, align 4
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %9, ptr %3, align 4
  %16 = ptrtoint ptr %dst_sg to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dst_sg, align 4
  %18 = ptrtoint ptr %dst_page to i32
  %and2.i.i36 = and i32 %18, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i36)
  %tobool.not.i.i37 = icmp eq i32 %and2.i.i36, 0
  br i1 %tobool.not.i.i37, label %do.body11.i.i41, label %do.body5.i.i38, !prof !253

do.body5.i.i38:                                   ; preds = %sg_set_page.exit
  call void @__sanitizer_cov_trace_pc() #18
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #16, !srcloc !254
  unreachable

do.body11.i.i41:                                  ; preds = %sg_set_page.exit
  %and.i.i.i39 = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i39)
  %tobool.i.not.i.i40 = icmp eq i32 %and.i.i.i39, 0
  br i1 %tobool.i.not.i.i40, label %sg_set_page.exit47, label %do.body19.i.i42, !prof !253

do.body19.i.i42:                                  ; preds = %do.body11.i.i41
  call void @__sanitizer_cov_trace_pc() #18
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #16, !srcloc !255
  unreachable

sg_set_page.exit47:                               ; preds = %do.body11.i.i41
  %and.i.i43 = and i32 %17, 3
  %or.i.i44 = or i32 %and.i.i43, %18
  %19 = ptrtoint ptr %dst_sg to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %or.i.i44, ptr %dst_sg, align 4
  %20 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %mul7, ptr %5, align 4
  %21 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %9, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %ecr.i) #16
  %22 = getelementptr inbounds i8, ptr %ecr.i, i32 4
  %23 = call ptr @memset(ptr %22, i32 255, i32 56)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ecryptfs_verbosity to i32))
  %24 = load i32, ptr @ecryptfs_verbosity, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp.i = icmp sgt i32 %24, 0
  br i1 %cmp.i, label %if.then.i, label %sg_set_page.exit47.if.end.i_crit_edge, !prof !252

sg_set_page.exit47.if.end.i_crit_edge:            ; preds = %sg_set_page.exit47
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i

if.then.i:                                        ; preds = %sg_set_page.exit47
  call void @__sanitizer_cov_trace_pc() #18
  %key_size.i = getelementptr inbounds %struct.ecryptfs_crypt_stat, ptr %crypt_stat, i32 0, i32 5
  %25 = ptrtoint ptr %key_size.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %key_size.i, align 4
  call void (ptr, ...) @__ecryptfs_printk(ptr noundef nonnull @.str.72, ptr noundef nonnull @__func__.crypt_scatterlist, i32 noundef %26) #16
  %key.i = getelementptr inbounds %struct.ecryptfs_crypt_stat, ptr %crypt_stat, i32 0, i32 12
  %27 = ptrtoint ptr %key_size.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %key_size.i, align 4
  call void @ecryptfs_dump_hex(ptr noundef %key.i, i32 noundef %28) #16
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %sg_set_page.exit47.if.end.i_crit_edge
  %29 = ptrtoint ptr %ecr.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %ecr.i, align 4
  call void @__init_swait_queue_head(ptr noundef %22, ptr noundef nonnull @.str.74, ptr noundef nonnull @init_completion.__key) #16
  %cs_tfm_mutex.i = getelementptr inbounds %struct.ecryptfs_crypt_stat, ptr %crypt_stat, i32 0, i32 16
  call void @mutex_lock_nested(ptr noundef %cs_tfm_mutex.i, i32 noundef 0) #16
  %tfm.i = getelementptr inbounds %struct.ecryptfs_crypt_stat, ptr %crypt_stat, i32 0, i32 9
  %30 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %tfm.i, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %31, align 128
  %add.i.i = add i32 %33, 128
  %call9.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add.i.i, i32 noundef 3136) #20
  %tobool.not.i.i48 = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool.not.i.i48, label %if.end.i.crypt_scatterlist.exit.thread_crit_edge, label %if.end6.i, !prof !252

if.end.i.crypt_scatterlist.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %crypt_scatterlist.exit.thread

if.end6.i:                                        ; preds = %if.end.i
  %base.i.i.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %31, i32 0, i32 2
  %tfm1.i.i.i = getelementptr inbounds %struct.skcipher_request, ptr %call9.i.i.i, i32 0, i32 4, i32 3
  %34 = ptrtoint ptr %tfm1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %base.i.i.i.i, ptr %tfm1.i.i.i, align 32
  %complete.i.i = getelementptr inbounds %struct.skcipher_request, ptr %call9.i.i.i, i32 0, i32 4, i32 1
  %35 = ptrtoint ptr %complete.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @extent_crypt_complete, ptr %complete.i.i, align 8
  %data2.i.i = getelementptr inbounds %struct.skcipher_request, ptr %call9.i.i.i, i32 0, i32 4, i32 2
  %36 = ptrtoint ptr %data2.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %ecr.i, ptr %data2.i.i, align 4
  %flags4.i.i = getelementptr inbounds %struct.skcipher_request, ptr %call9.i.i.i, i32 0, i32 4, i32 4
  %37 = ptrtoint ptr %flags4.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 1536, ptr %flags4.i.i, align 4
  %38 = ptrtoint ptr %crypt_stat to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %crypt_stat, align 4
  %and.i = and i32 %39, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool7.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool7.not.i, label %if.then8.i, label %if.end6.i.if.end19.i_crit_edge

if.end6.i.if.end19.i_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end19.i

if.then8.i:                                       ; preds = %if.end6.i
  %40 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %tfm.i, align 4
  %key10.i = getelementptr inbounds %struct.ecryptfs_crypt_stat, ptr %crypt_stat, i32 0, i32 12
  %key_size12.i = getelementptr inbounds %struct.ecryptfs_crypt_stat, ptr %crypt_stat, i32 0, i32 5
  %42 = ptrtoint ptr %key_size12.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %key_size12.i, align 4
  %call13.i = call i32 @crypto_skcipher_setkey(ptr noundef %41, ptr noundef %key10.i, i32 noundef %43) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool14.not.i = icmp eq i32 %call13.i, 0
  br i1 %tobool14.not.i, label %if.end17.i, label %if.then15.i

if.then15.i:                                      ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, ...) @__ecryptfs_printk(ptr noundef nonnull @.str.73, ptr noundef nonnull @__func__.crypt_scatterlist, i32 noundef %call13.i) #16
  br label %crypt_scatterlist.exit.thread

if.end17.i:                                       ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #18
  %44 = ptrtoint ptr %crypt_stat to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %crypt_stat, align 4
  %or.i = or i32 %45, 512
  store i32 %or.i, ptr %crypt_stat, align 4
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.end17.i, %if.end6.i.if.end19.i_crit_edge
  call void @mutex_unlock(ptr noundef %cs_tfm_mutex.i) #16
  %src1.i.i = getelementptr inbounds %struct.skcipher_request, ptr %call9.i.i.i, i32 0, i32 2
  %46 = ptrtoint ptr %src1.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %src_sg, ptr %src1.i.i, align 8
  %dst2.i.i = getelementptr inbounds %struct.skcipher_request, ptr %call9.i.i.i, i32 0, i32 3
  %47 = ptrtoint ptr %dst2.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %dst_sg, ptr %dst2.i.i, align 4
  %48 = ptrtoint ptr %call9.i.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %9, ptr %call9.i.i.i, align 128
  %iv4.i.i = getelementptr inbounds %struct.skcipher_request, ptr %call9.i.i.i, i32 0, i32 1
  %49 = ptrtoint ptr %iv4.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %extent_iv, ptr %iv4.i.i, align 4
  br i1 %cmp, label %cond.true.i, label %cond.false.i

cond.true.i:                                      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #18
  %call22.i = call i32 @crypto_skcipher_encrypt(ptr noundef nonnull %call9.i.i.i) #16
  br label %cond.end.i

cond.false.i:                                     ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #18
  %call23.i = call i32 @crypto_skcipher_decrypt(ptr noundef nonnull %call9.i.i.i) #16
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %cond.true.i
  %cond.i = phi i32 [ %call22.i, %cond.true.i ], [ %call23.i, %cond.false.i ]
  %50 = zext i32 %cond.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %50, ptr @__sancov_gen_cov_switch_values.110)
  switch i32 %cond.i, label %cond.end.i.crypt_scatterlist.exit_crit_edge [
    i32 -115, label %cond.end.i.if.then26.i_crit_edge
    i32 -16, label %cond.end.i.if.then26.i_crit_edge53
  ]

cond.end.i.if.then26.i_crit_edge53:               ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then26.i

cond.end.i.if.then26.i_crit_edge:                 ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then26.i

cond.end.i.crypt_scatterlist.exit_crit_edge:      ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %crypt_scatterlist.exit

if.then26.i:                                      ; preds = %cond.end.i.if.then26.i_crit_edge, %cond.end.i.if.then26.i_crit_edge53
  %51 = ptrtoint ptr %data2.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %data2.i.i, align 4
  call void @wait_for_completion(ptr noundef %52) #16
  %rc29.i = getelementptr inbounds %struct.extent_crypt_result, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %rc29.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %rc29.i, align 4
  %55 = ptrtoint ptr %52 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 0, ptr %52, align 4
  br label %crypt_scatterlist.exit

crypt_scatterlist.exit.thread:                    ; preds = %if.then15.i, %if.end.i.crypt_scatterlist.exit.thread_crit_edge
  %retval.1.i4.i58.i.ph = phi ptr [ %call9.i.i.i, %if.then15.i ], [ null, %if.end.i.crypt_scatterlist.exit.thread_crit_edge ]
  %rc.0.i.ph = phi i32 [ -22, %if.then15.i ], [ -12, %if.end.i.crypt_scatterlist.exit.thread_crit_edge ]
  call void @mutex_unlock(ptr noundef %cs_tfm_mutex.i) #16
  call void @kfree_sensitive(ptr noundef %retval.1.i4.i58.i.ph) #16
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %ecr.i) #16
  br label %do.end

crypt_scatterlist.exit:                           ; preds = %if.then26.i, %cond.end.i.crypt_scatterlist.exit_crit_edge
  %rc.0.i = phi i32 [ %54, %if.then26.i ], [ %cond.i, %cond.end.i.crypt_scatterlist.exit_crit_edge ]
  call void @kfree_sensitive(ptr noundef nonnull %call9.i.i.i) #16
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %ecr.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.0.i)
  %cmp11 = icmp slt i32 %rc.0.i, 0
  br i1 %cmp11, label %crypt_scatterlist.exit.do.end_crit_edge, label %crypt_scatterlist.exit.out_crit_edge

crypt_scatterlist.exit.out_crit_edge:             ; preds = %crypt_scatterlist.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

crypt_scatterlist.exit.do.end_crit_edge:          ; preds = %crypt_scatterlist.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

do.end:                                           ; preds = %crypt_scatterlist.exit.do.end_crit_edge, %crypt_scatterlist.exit.thread
  %rc.0.i52 = phi i32 [ %rc.0.i.ph, %crypt_scatterlist.exit.thread ], [ %rc.0.i, %crypt_scatterlist.exit.do.end_crit_edge ]
  %call14 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71, ptr noundef nonnull @__func__.crypt_extent, i32 noundef %cond, i32 noundef %extent_offset, i32 noundef %rc.0.i52) #19
  br label %out

out:                                              ; preds = %do.end, %crypt_scatterlist.exit.out_crit_edge, %if.then
  %rc.0 = phi i32 [ %call, %if.then ], [ %rc.0.i52, %do.end ], [ 0, %crypt_scatterlist.exit.out_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %dst_sg) #16
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %src_sg) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %extent_iv) #16
  ret i32 %rc.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ecryptfs_write_lower(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_pages(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ecryptfs_decrypt_page(ptr noundef %page) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %mapping = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 1
  %0 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mapping, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %crypt_stat1 = getelementptr inbounds %struct.ecryptfs_inode_info, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %crypt_stat1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %crypt_stat1, align 4
  %and = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body5, label %do.end10, !prof !252

do.body5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ecryptfs/crypto.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 514, 0\0A.popsection", ""() #16, !srcloc !257
  unreachable

do.end10:                                         ; preds = %entry
  %and.i.i = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end10.lower_offset_for_page.exit_crit_edge

do.end10.lower_offset_for_page.exit_crit_edge:    ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #18
  br label %lower_offset_for_page.exit

if.end.i.i:                                       ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #18
  %metadata_size.i.i = getelementptr inbounds %struct.ecryptfs_inode_info, ptr %3, i32 0, i32 5, i32 3
  %6 = ptrtoint ptr %metadata_size.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %metadata_size.i.i, align 4
  br label %lower_offset_for_page.exit

lower_offset_for_page.exit:                       ; preds = %if.end.i.i, %do.end10.lower_offset_for_page.exit_crit_edge
  %retval.0.i.i = phi i32 [ %7, %if.end.i.i ], [ 0, %do.end10.lower_offset_for_page.exit_crit_edge ]
  %conv.i = zext i32 %retval.0.i.i to i64
  %index.i = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 2
  %8 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %index.i, align 4
  %conv1.i = zext i32 %9 to i64
  %shl.i = shl nuw nsw i64 %conv1.i, 12
  %add.i = add nuw nsw i64 %shl.i, %conv.i
  tail call void @__might_sleep(ptr noundef nonnull @.str.75, i32 noundef 44) #16
  %10 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %page, align 4
  %shr.i.i = lshr i32 %11, 30
  %12 = zext i32 %shr.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.111)
  switch i32 %shr.i.i, label %lower_offset_for_page.exit.if.then.i_crit_edge [
    i32 2, label %lower_offset_for_page.exit.if.else.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i
  ]

lower_offset_for_page.exit.if.else.i_crit_edge:   ; preds = %lower_offset_for_page.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else.i

lower_offset_for_page.exit.if.then.i_crit_edge:   ; preds = %lower_offset_for_page.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i

is_highmem_idx.exit.i:                            ; preds = %lower_offset_for_page.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %13 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %13)
  %cmp2.i.not.i = icmp eq i32 %13, 2
  br i1 %cmp2.i.not.i, label %is_highmem_idx.exit.i.if.else.i_crit_edge, label %is_highmem_idx.exit.i.if.then.i_crit_edge

is_highmem_idx.exit.i.if.then.i_crit_edge:        ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i

is_highmem_idx.exit.i.if.else.i_crit_edge:        ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else.i

if.then.i:                                        ; preds = %is_highmem_idx.exit.i.if.then.i_crit_edge, %lower_offset_for_page.exit.if.then.i_crit_edge
  %call5.i = tail call ptr @page_address(ptr noundef %page) #16
  br label %kmap.exit

if.else.i:                                        ; preds = %is_highmem_idx.exit.i.if.else.i_crit_edge, %lower_offset_for_page.exit.if.else.i_crit_edge
  %call6.i = tail call ptr @kmap_high(ptr noundef %page) #16
  br label %kmap.exit

kmap.exit:                                        ; preds = %if.else.i, %if.then.i
  %addr.0.i = phi ptr [ %call6.i, %if.else.i ], [ %call5.i, %if.then.i ]
  %call13 = tail call i32 @ecryptfs_read_lower(ptr noundef %addr.0.i, i64 noundef %add.i, i32 noundef 4096, ptr noundef %3) #16
  tail call void @__might_sleep(ptr noundef nonnull @.str.75, i32 noundef 55) #16
  %14 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %page, align 4
  %shr.i.i40 = lshr i32 %15, 30
  %16 = zext i32 %shr.i.i40 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.112)
  switch i32 %shr.i.i40, label %kmap.exit.kunmap.exit_crit_edge [
    i32 2, label %kmap.exit.if.end.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i42
  ]

kmap.exit.if.end.i_crit_edge:                     ; preds = %kmap.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i

kmap.exit.kunmap.exit_crit_edge:                  ; preds = %kmap.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %kunmap.exit

is_highmem_idx.exit.i42:                          ; preds = %kmap.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %17 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %17)
  %cmp2.i.not.i41 = icmp eq i32 %17, 2
  br i1 %cmp2.i.not.i41, label %is_highmem_idx.exit.i42.if.end.i_crit_edge, label %is_highmem_idx.exit.i42.kunmap.exit_crit_edge

is_highmem_idx.exit.i42.kunmap.exit_crit_edge:    ; preds = %is_highmem_idx.exit.i42
  call void @__sanitizer_cov_trace_pc() #18
  br label %kunmap.exit

is_highmem_idx.exit.i42.if.end.i_crit_edge:       ; preds = %is_highmem_idx.exit.i42
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i

if.end.i:                                         ; preds = %is_highmem_idx.exit.i42.if.end.i_crit_edge, %kmap.exit.if.end.i_crit_edge
  tail call void @kunmap_high(ptr noundef %page) #16
  br label %kunmap.exit

kunmap.exit:                                      ; preds = %if.end.i, %is_highmem_idx.exit.i42.kunmap.exit_crit_edge, %kmap.exit.kunmap.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp = icmp slt i32 %call13, 0
  br i1 %cmp, label %if.then14, label %for.cond.preheader

for.cond.preheader:                               ; preds = %kunmap.exit
  %extent_size = getelementptr inbounds %struct.ecryptfs_inode_info, ptr %3, i32 0, i32 5, i32 4
  %18 = ptrtoint ptr %extent_size to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %extent_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %19)
  %cmp1645.not = icmp ugt i32 %19, 4096
  br i1 %cmp1645.not, label %for.cond.preheader.out_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.out_crit_edge:                 ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.then14:                                        ; preds = %kunmap.exit
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ...) @__ecryptfs_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.ecryptfs_decrypt_page, i32 noundef %call13) #16
  br label %out

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %extent_offset.046, 1
  %20 = ptrtoint ptr %extent_size to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %extent_size, align 4
  %div = udiv i32 4096, %21
  %cmp16 = icmp ult i32 %inc, %div
  br i1 %cmp16, label %for.cond.for.body_crit_edge, label %for.cond.out_crit_edge

for.cond.out_crit_edge:                           ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %extent_offset.046 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %call17 = tail call fastcc i32 @crypt_extent(ptr noundef %crypt_stat1, ptr noundef %page, ptr noundef %page, i32 noundef %extent_offset.046, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %for.cond, label %do.end22

do.end22:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @__func__.ecryptfs_decrypt_page, i32 noundef %call17) #19
  br label %out

out:                                              ; preds = %do.end22, %for.cond.out_crit_edge, %if.then14, %for.cond.preheader.out_crit_edge
  %rc.1 = phi i32 [ %call13, %if.then14 ], [ %call17, %do.end22 ], [ %call13, %for.cond.preheader.out_crit_edge ], [ 0, %for.cond.out_crit_edge ]
  ret i32 %rc.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ecryptfs_read_lower(ptr noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ecryptfs_init_crypt_ctx(ptr noundef %crypt_stat) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %cipher = getelementptr inbounds %struct.ecryptfs_crypt_stat, ptr %crypt_stat, i32 0, i32 11
  %call = tail call i32 @strlen(ptr noundef %cipher) #21
  %key_size = getelementptr inbounds %struct.ecryptfs_crypt_stat, ptr %crypt_stat, i32 0, i32 5
  %0 = ptrtoint ptr %key_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %key_size, align 4
  %shl = shl i32 %1, 3
  tail call void (ptr, ...) @__ecryptfs_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @__func__.ecryptfs_init_crypt_ctx, ptr noundef %cipher, i32 noundef %call, i32 noundef %shl) #16
  %cs_tfm_mutex = getelementptr inbounds %struct.ecryptfs_crypt_stat, ptr %crypt_stat, i32 0, i32 16
  tail call void @mutex_lock_nested(ptr noundef %cs_tfm_mutex, i32 noundef 0) #16
  %tfm = getelementptr inbounds %struct.ecryptfs_crypt_stat, ptr %crypt_stat, i32 0, i32 9
  %2 = ptrtoint ptr %tfm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tfm, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.end, label %entry.out_unlock_crit_edge

entry.out_unlock_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_unlock

if.end:                                           ; preds = %entry
  %call.i = tail call i32 @strlen(ptr noundef %cipher) #22
  %add2.i = add i32 %call.i, 6
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add2.i, i32 noundef 3264) #20
  %tobool.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not.i, label %if.end.out_unlock_crit_edge, label %if.end8

if.end.out_unlock_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_unlock

if.end8:                                          ; preds = %if.end
  %call4.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %call9.i.i, i32 noundef %add2.i, ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.19, ptr noundef %cipher) #16
  %call9 = tail call ptr @crypto_alloc_skcipher(ptr noundef nonnull %call9.i.i, i32 noundef 0, i32 noundef 0) #16
  %4 = ptrtoint ptr %tfm to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call9, ptr %tfm, align 4
  %cmp.i = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then13, label %if.end17

if.then13:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #18
  %5 = ptrtoint ptr %call9 to i32
  %6 = ptrtoint ptr %tfm to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %tfm, align 4
  tail call void (ptr, ...) @__ecryptfs_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @__func__.ecryptfs_init_crypt_ctx, ptr noundef nonnull %call9.i.i) #16
  br label %out_free

if.end17:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #18
  %base.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %call9, i32 0, i32 2
  %7 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %base.i.i, align 128
  %or.i.i = or i32 %8, 256
  store i32 %or.i.i, ptr %base.i.i, align 128
  br label %out_free

out_free:                                         ; preds = %if.end17, %if.then13
  %rc.0 = phi i32 [ %5, %if.then13 ], [ 0, %if.end17 ]
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #16
  br label %out_unlock

out_unlock:                                       ; preds = %out_free, %if.end.out_unlock_crit_edge, %entry.out_unlock_crit_edge
  %rc.1 = phi i32 [ %rc.0, %out_free ], [ 0, %entry.out_unlock_crit_edge ], [ -12, %if.end.out_unlock_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %cs_tfm_mutex) #16
  ret i32 %rc.1
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_alloc_skcipher(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ecryptfs_set_default_sizes(ptr nocapture noundef %crypt_stat) local_unnamed_addr #6 align 64 {
while.body.lr.ph.i:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %extent_size = getelementptr inbounds %struct.ecryptfs_crypt_stat, ptr %crypt_stat, i32 0, i32 4
  %0 = ptrtoint ptr %extent_size to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 4096, ptr %extent_size, align 4
  %extent_mask.i = getelementptr inbounds %struct.ecryptfs_crypt_stat, ptr %crypt_stat, i32 0, i32 7
  %extent_shift.i = getelementptr inbounds %struct.ecryptfs_crypt_stat, ptr %crypt_stat, i32 0, i32 6
  %1 = ptrtoint ptr %extent_mask.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -4096, ptr %extent_mask.i, align 4
  %2 = ptrtoint ptr %extent_shift.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 12, ptr %extent_shift.i, align 4
  %iv_bytes = getelementptr inbounds %struct.ecryptfs_crypt_stat, ptr %crypt_stat, i32 0, i32 2
  %3 = ptrtoint ptr %iv_bytes to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 16, ptr %iv_bytes, align 4
  %4 = getelementptr inbounds %struct.ecryptfs_crypt_stat, ptr %crypt_stat, i32 0, i32 3
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 8192, ptr %4, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ecryptfs_compute_root_iv(ptr noundef %crypt_stat) local_unnamed_addr #0 align 64 {
entry:
  %dst = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %dst) #16
  %iv_bytes = getelementptr inbounds %struct.ecryptfs_crypt_stat, ptr %crypt_stat, i32 0, i32 2
  %0 = call ptr @memset(ptr %dst, i32 255, i32 16)
  %1 = ptrtoint ptr %iv_bytes to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %iv_bytes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %2)
  %cmp = icmp ugt i32 %2, 16
  br i1 %cmp, label %do.body2, label %do.body8, !prof !252

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ecryptfs/crypto.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 636, 0\0A.popsection", ""() #16, !srcloc !258
  unreachable

do.body8:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp10 = icmp eq i32 %2, 0
  br i1 %cmp10, label %do.body18, label %do.end26, !prof !252

do.body18:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ecryptfs/crypto.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 637, 0\0A.popsection", ""() #16, !srcloc !259
  unreachable

do.end26:                                         ; preds = %do.body8
  %3 = ptrtoint ptr %crypt_stat to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %crypt_stat, align 4
  %and = and i32 %4, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool27.not = icmp eq i32 %and, 0
  br i1 %tobool27.not, label %if.then28, label %if.end29

if.then28:                                        ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ...) @__ecryptfs_printk(ptr noundef nonnull @.str.21, ptr noundef nonnull @__func__.ecryptfs_compute_root_iv) #16
  br label %if.then38

if.end29:                                         ; preds = %do.end26
  %key = getelementptr inbounds %struct.ecryptfs_crypt_stat, ptr %crypt_stat, i32 0, i32 12
  %key_size = getelementptr inbounds %struct.ecryptfs_crypt_stat, ptr %crypt_stat, i32 0, i32 5
  %5 = ptrtoint ptr %key_size to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %key_size, align 4
  %hash_tfm.i = getelementptr inbounds %struct.ecryptfs_crypt_stat, ptr %crypt_stat, i32 0, i32 10
  %7 = ptrtoint ptr %hash_tfm.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hash_tfm.i, align 4
  %call.i = call i32 @crypto_shash_tfm_digest(ptr noundef %8, ptr noundef %key, i32 noundef %6, ptr noundef nonnull %dst) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %out, label %if.then32

if.then32:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #18
  %call1.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.68, i32 noundef %call.i) #19
  call void (ptr, ...) @__ecryptfs_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @__func__.ecryptfs_compute_root_iv) #16
  br label %if.then38

out:                                              ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #18
  %root_iv = getelementptr inbounds %struct.ecryptfs_crypt_stat, ptr %crypt_stat, i32 0, i32 13
  %9 = ptrtoint ptr %iv_bytes to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %iv_bytes, align 4
  %11 = call ptr @memcpy(ptr %root_iv, ptr %dst, i32 %10)
  br label %if.end43

if.then38:                                        ; preds = %if.then32, %if.then28
  %rc.0.ph = phi i32 [ -22, %if.then28 ], [ %call.i, %if.then32 ]
  %root_iv39 = getelementptr inbounds %struct.ecryptfs_crypt_stat, ptr %crypt_stat, i32 0, i32 13
  %12 = ptrtoint ptr %iv_bytes to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %iv_bytes, align 4
  %14 = call ptr @memset(ptr %root_iv39, i32 0, i32 %13)
  %15 = ptrtoint ptr %crypt_stat to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %crypt_stat, align 4
  %or = or i32 %16, 8
  store i32 %or, ptr %crypt_stat, align 4
  br label %if.end43

if.end43:                                         ; preds = %if.then38, %out
  %rc.059 = phi i32 [ %rc.0.ph, %if.then38 ], [ 0, %out ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %dst) #16
  ret i32 %rc.059
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ecryptfs_new_file_context(ptr noundef %ecryptfs_inode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %crypt_stat1 = getelementptr inbounds %struct.ecryptfs_inode_info, ptr %ecryptfs_inode, i32 0, i32 5
  %i_sb = getelementptr inbounds %struct.inode, ptr %ecryptfs_inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %mount_crypt_stat3 = getelementptr inbounds %struct.ecryptfs_sb_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %mount_crypt_stat3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mount_crypt_stat3, align 4
  %and.i.i = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %entry.if.end.i.i_crit_edge, label %if.then.i.i

entry.if.end.i.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %6 = ptrtoint ptr %crypt_stat1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %crypt_stat1, align 4
  %or.i.i = or i32 %7, 128
  store i32 %or.i.i, ptr %crypt_stat1, align 4
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %entry.if.end.i.i_crit_edge
  %8 = ptrtoint ptr %mount_crypt_stat3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mount_crypt_stat3, align 4
  %and3.i.i = and i32 %9, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i.i)
  %tobool4.not.i.i = icmp eq i32 %and3.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end.i.i.if.end8.i.i_crit_edge, label %if.then5.i.i

if.end.i.i.if.end8.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end8.i.i

if.then5.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %10 = ptrtoint ptr %crypt_stat1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %crypt_stat1, align 4
  %or7.i.i = or i32 %11, 256
  store i32 %or7.i.i, ptr %crypt_stat1, align 4
  br label %if.end8.i.i

if.end8.i.i:                                      ; preds = %if.then5.i.i, %if.end.i.i.if.end8.i.i_crit_edge
  %12 = ptrtoint ptr %mount_crypt_stat3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mount_crypt_stat3, align 4
  %and10.i.i = and i32 %13, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i.i)
  %tobool11.not.i.i = icmp eq i32 %and10.i.i, 0
  br i1 %tobool11.not.i.i, label %if.end8.i.i.ecryptfs_set_default_crypt_stat_vals.exit_crit_edge, label %if.then12.i.i

if.end8.i.i.ecryptfs_set_default_crypt_stat_vals.exit_crit_edge: ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ecryptfs_set_default_crypt_stat_vals.exit

if.then12.i.i:                                    ; preds = %if.end8.i.i
  %14 = ptrtoint ptr %crypt_stat1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %crypt_stat1, align 4
  %or14.i.i = or i32 %15, 1024
  store i32 %or14.i.i, ptr %crypt_stat1, align 4
  %16 = ptrtoint ptr %mount_crypt_stat3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %mount_crypt_stat3, align 4
  %and16.i.i = and i32 %17, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i.i)
  %tobool17.not.i.i = icmp eq i32 %and16.i.i, 0
  br i1 %tobool17.not.i.i, label %if.else.i.i, label %if.then12.i.i.if.end29.sink.split.i.i_crit_edge

if.then12.i.i.if.end29.sink.split.i.i_crit_edge:  ; preds = %if.then12.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end29.sink.split.i.i

if.else.i.i:                                      ; preds = %if.then12.i.i
  %and22.i.i = and i32 %17, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22.i.i)
  %tobool23.not.i.i = icmp eq i32 %and22.i.i, 0
  br i1 %tobool23.not.i.i, label %if.else.i.i.ecryptfs_set_default_crypt_stat_vals.exit_crit_edge, label %if.else.i.i.if.end29.sink.split.i.i_crit_edge

if.else.i.i.if.end29.sink.split.i.i_crit_edge:    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end29.sink.split.i.i

if.else.i.i.ecryptfs_set_default_crypt_stat_vals.exit_crit_edge: ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ecryptfs_set_default_crypt_stat_vals.exit

if.end29.sink.split.i.i:                          ; preds = %if.else.i.i.if.end29.sink.split.i.i_crit_edge, %if.then12.i.i.if.end29.sink.split.i.i_crit_edge
  %.sink.i.i = phi i32 [ 3072, %if.then12.i.i.if.end29.sink.split.i.i_crit_edge ], [ 5120, %if.else.i.i.if.end29.sink.split.i.i_crit_edge ]
  %or20.i.i = or i32 %.sink.i.i, %15
  %18 = ptrtoint ptr %crypt_stat1 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %or20.i.i, ptr %crypt_stat1, align 4
  br label %ecryptfs_set_default_crypt_stat_vals.exit

ecryptfs_set_default_crypt_stat_vals.exit:        ; preds = %if.end29.sink.split.i.i, %if.else.i.i.ecryptfs_set_default_crypt_stat_vals.exit_crit_edge, %if.end8.i.i.ecryptfs_set_default_crypt_stat_vals.exit_crit_edge
  %extent_size.i.i = getelementptr inbounds %struct.ecryptfs_inode_info, ptr %ecryptfs_inode, i32 0, i32 5, i32 4
  %19 = ptrtoint ptr %extent_size.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 4096, ptr %extent_size.i.i, align 4
  %extent_mask.i.i.i = getelementptr inbounds %struct.ecryptfs_inode_info, ptr %ecryptfs_inode, i32 0, i32 5, i32 7
  %extent_shift.i.i.i = getelementptr inbounds %struct.ecryptfs_inode_info, ptr %ecryptfs_inode, i32 0, i32 5, i32 6
  %20 = ptrtoint ptr %extent_mask.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -4096, ptr %extent_mask.i.i.i, align 4
  %21 = ptrtoint ptr %extent_shift.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 12, ptr %extent_shift.i.i.i, align 4
  %iv_bytes.i.i = getelementptr inbounds %struct.ecryptfs_inode_info, ptr %ecryptfs_inode, i32 0, i32 5, i32 2
  %22 = ptrtoint ptr %iv_bytes.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 16, ptr %iv_bytes.i.i, align 4
  %23 = getelementptr inbounds %struct.ecryptfs_inode_info, ptr %ecryptfs_inode, i32 0, i32 5, i32 3
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 8192, ptr %23, align 4
  %cipher.i = getelementptr inbounds %struct.ecryptfs_inode_info, ptr %ecryptfs_inode, i32 0, i32 5, i32 11
  %25 = ptrtoint ptr %cipher.i to i32
  call void @__asan_storeN_noabort(i32 %25, i32 4)
  store i32 1634038528, ptr %cipher.i, align 1
  %key_size.i = getelementptr inbounds %struct.ecryptfs_inode_info, ptr %ecryptfs_inode, i32 0, i32 5, i32 5
  %26 = ptrtoint ptr %key_size.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 16, ptr %key_size.i, align 4
  %27 = ptrtoint ptr %crypt_stat1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %crypt_stat1, align 4
  %file_version.i = getelementptr inbounds %struct.ecryptfs_inode_info, ptr %ecryptfs_inode, i32 0, i32 5, i32 1
  %29 = ptrtoint ptr %file_version.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 3, ptr %file_version.i, align 4
  %mount_crypt_stat1.i = getelementptr inbounds %struct.ecryptfs_inode_info, ptr %ecryptfs_inode, i32 0, i32 5, i32 8
  %30 = ptrtoint ptr %mount_crypt_stat1.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %mount_crypt_stat3, ptr %mount_crypt_stat1.i, align 4
  %or = or i32 %28, 68
  store i32 %or, ptr %crypt_stat1, align 4
  %31 = ptrtoint ptr %mount_crypt_stat3 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %mount_crypt_stat3, align 4
  %and.i37 = and i32 %32, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i37)
  %tobool.not.i = icmp eq i32 %and.i37, 0
  br i1 %tobool.not.i, label %ecryptfs_set_default_crypt_stat_vals.exit.if.end.i_crit_edge, label %if.then.i

ecryptfs_set_default_crypt_stat_vals.exit.if.end.i_crit_edge: ; preds = %ecryptfs_set_default_crypt_stat_vals.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i

if.then.i:                                        ; preds = %ecryptfs_set_default_crypt_stat_vals.exit
  call void @__sanitizer_cov_trace_pc() #18
  %or.i = or i32 %28, 196
  %33 = ptrtoint ptr %crypt_stat1 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %or.i, ptr %crypt_stat1, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %ecryptfs_set_default_crypt_stat_vals.exit.if.end.i_crit_edge
  %34 = ptrtoint ptr %mount_crypt_stat3 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %mount_crypt_stat3, align 4
  %and3.i = and i32 %35, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool4.not.i = icmp eq i32 %and3.i, 0
  br i1 %tobool4.not.i, label %if.end.i.if.end8.i_crit_edge, label %if.then5.i

if.end.i.if.end8.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end8.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  %36 = ptrtoint ptr %crypt_stat1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %crypt_stat1, align 4
  %or7.i = or i32 %37, 256
  store i32 %or7.i, ptr %crypt_stat1, align 4
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then5.i, %if.end.i.if.end8.i_crit_edge
  %38 = ptrtoint ptr %mount_crypt_stat3 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %mount_crypt_stat3, align 4
  %and10.i = and i32 %39, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i)
  %tobool11.not.i = icmp eq i32 %and10.i, 0
  br i1 %tobool11.not.i, label %if.end8.i.ecryptfs_copy_mount_wide_flags_to_inode_flags.exit_crit_edge, label %if.then12.i

if.end8.i.ecryptfs_copy_mount_wide_flags_to_inode_flags.exit_crit_edge: ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ecryptfs_copy_mount_wide_flags_to_inode_flags.exit

if.then12.i:                                      ; preds = %if.end8.i
  %40 = ptrtoint ptr %crypt_stat1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %crypt_stat1, align 4
  %or14.i = or i32 %41, 1024
  store i32 %or14.i, ptr %crypt_stat1, align 4
  %42 = ptrtoint ptr %mount_crypt_stat3 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %mount_crypt_stat3, align 4
  %and16.i = and i32 %43, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i)
  %tobool17.not.i = icmp eq i32 %and16.i, 0
  br i1 %tobool17.not.i, label %if.else.i, label %if.then12.i.if.end29.sink.split.i_crit_edge

if.then12.i.if.end29.sink.split.i_crit_edge:      ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end29.sink.split.i

if.else.i:                                        ; preds = %if.then12.i
  %and22.i = and i32 %43, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22.i)
  %tobool23.not.i = icmp eq i32 %and22.i, 0
  br i1 %tobool23.not.i, label %if.else.i.ecryptfs_copy_mount_wide_flags_to_inode_flags.exit_crit_edge, label %if.else.i.if.end29.sink.split.i_crit_edge

if.else.i.if.end29.sink.split.i_crit_edge:        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end29.sink.split.i

if.else.i.ecryptfs_copy_mount_wide_flags_to_inode_flags.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ecryptfs_copy_mount_wide_flags_to_inode_flags.exit

if.end29.sink.split.i:                            ; preds = %if.else.i.if.end29.sink.split.i_crit_edge, %if.then12.i.if.end29.sink.split.i_crit_edge
  %.sink.i = phi i32 [ 3072, %if.then12.i.if.end29.sink.split.i_crit_edge ], [ 5120, %if.else.i.if.end29.sink.split.i_crit_edge ]
  %or20.i = or i32 %.sink.i, %41
  %44 = ptrtoint ptr %crypt_stat1 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %or20.i, ptr %crypt_stat1, align 4
  br label %ecryptfs_copy_mount_wide_flags_to_inode_flags.exit

ecryptfs_copy_mount_wide_flags_to_inode_flags.exit: ; preds = %if.end29.sink.split.i, %if.else.i.ecryptfs_copy_mount_wide_flags_to_inode_flags.exit_crit_edge, %if.end8.i.ecryptfs_copy_mount_wide_flags_to_inode_flags.exit_crit_edge
  %keysig_list_mutex.i = getelementptr inbounds %struct.ecryptfs_inode_info, ptr %ecryptfs_inode, i32 0, i32 5, i32 15
  tail call void @mutex_lock_nested(ptr noundef %keysig_list_mutex.i, i32 noundef 0) #16
  %global_auth_tok_list_mutex.i = getelementptr inbounds %struct.ecryptfs_sb_info, ptr %3, i32 0, i32 1, i32 2
  tail call void @mutex_lock_nested(ptr noundef %global_auth_tok_list_mutex.i, i32 noundef 0) #16
  %global_auth_tok_list.i = getelementptr inbounds %struct.ecryptfs_sb_info, ptr %3, i32 0, i32 1, i32 1
  %45 = ptrtoint ptr %global_auth_tok_list.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %.pn24.i = load ptr, ptr %global_auth_tok_list.i, align 4
  %cmp.not25.i = icmp eq ptr %.pn24.i, %global_auth_tok_list.i
  br i1 %cmp.not25.i, label %ecryptfs_copy_mount_wide_flags_to_inode_flags.exit.ecryptfs_copy_mount_wide_sigs_to_inode_sigs.exit_crit_edge, label %ecryptfs_copy_mount_wide_flags_to_inode_flags.exit.for.body.i_crit_edge

ecryptfs_copy_mount_wide_flags_to_inode_flags.exit.for.body.i_crit_edge: ; preds = %ecryptfs_copy_mount_wide_flags_to_inode_flags.exit
  br label %for.body.i

ecryptfs_copy_mount_wide_flags_to_inode_flags.exit.ecryptfs_copy_mount_wide_sigs_to_inode_sigs.exit_crit_edge: ; preds = %ecryptfs_copy_mount_wide_flags_to_inode_flags.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %ecryptfs_copy_mount_wide_sigs_to_inode_sigs.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %ecryptfs_copy_mount_wide_flags_to_inode_flags.exit.for.body.i_crit_edge
  %.pn26.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn24.i, %ecryptfs_copy_mount_wide_flags_to_inode_flags.exit.for.body.i_crit_edge ]
  %global_auth_tok.0.i = getelementptr i8, ptr %.pn26.i, i32 -4
  %46 = ptrtoint ptr %global_auth_tok.0.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %global_auth_tok.0.i, align 4
  %and.i38 = and i32 %47, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i38)
  %tobool.not.i39 = icmp eq i32 %and.i38, 0
  br i1 %tobool.not.i39, label %if.end.i40, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i

if.end.i40:                                       ; preds = %for.body.i
  %sig.i = getelementptr i8, ptr %.pn26.i, i32 12
  %call.i = tail call i32 @ecryptfs_add_keysig(ptr noundef %crypt_stat1, ptr noundef %sig.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool2.not.i, label %if.end.i40.for.inc.i_crit_edge, label %do.end.i

if.end.i40.for.inc.i_crit_edge:                   ; preds = %if.end.i40
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i

do.end.i:                                         ; preds = %if.end.i40
  call void @__sanitizer_cov_trace_pc() #18
  %call5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77, i32 noundef %call.i) #19
  br label %ecryptfs_copy_mount_wide_sigs_to_inode_sigs.exit

for.inc.i:                                        ; preds = %if.end.i40.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %48 = ptrtoint ptr %.pn26.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %.pn.i = load ptr, ptr %.pn26.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %global_auth_tok_list.i
  br i1 %cmp.not.i, label %for.inc.i.ecryptfs_copy_mount_wide_sigs_to_inode_sigs.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

for.inc.i.ecryptfs_copy_mount_wide_sigs_to_inode_sigs.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ecryptfs_copy_mount_wide_sigs_to_inode_sigs.exit

ecryptfs_copy_mount_wide_sigs_to_inode_sigs.exit: ; preds = %for.inc.i.ecryptfs_copy_mount_wide_sigs_to_inode_sigs.exit_crit_edge, %do.end.i, %ecryptfs_copy_mount_wide_flags_to_inode_flags.exit.ecryptfs_copy_mount_wide_sigs_to_inode_sigs.exit_crit_edge
  %rc.2.i = phi i32 [ %call.i, %do.end.i ], [ 0, %ecryptfs_copy_mount_wide_flags_to_inode_flags.exit.ecryptfs_copy_mount_wide_sigs_to_inode_sigs.exit_crit_edge ], [ 0, %for.inc.i.ecryptfs_copy_mount_wide_sigs_to_inode_sigs.exit_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %global_auth_tok_list_mutex.i) #16
  tail call void @mutex_unlock(ptr noundef %keysig_list_mutex.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.2.i)
  %tobool.not = icmp eq i32 %rc.2.i, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %ecryptfs_copy_mount_wide_sigs_to_inode_sigs.exit
  call void @__sanitizer_cov_trace_pc() #18
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, i32 noundef %rc.2.i) #19
  br label %out

if.end:                                           ; preds = %ecryptfs_copy_mount_wide_sigs_to_inode_sigs.exit
  %global_default_cipher_name = getelementptr inbounds %struct.ecryptfs_sb_info, ptr %3, i32 0, i32 1, i32 5
  %call6 = tail call i32 @strlen(ptr noundef %global_default_cipher_name) #21
  %49 = call ptr @memcpy(ptr %cipher.i, ptr %global_default_cipher_name, i32 %call6)
  %arrayidx = getelementptr %struct.ecryptfs_inode_info, ptr %ecryptfs_inode, i32 0, i32 5, i32 11, i32 %call6
  %50 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 0, ptr %arrayidx, align 1
  %global_default_cipher_key_size = getelementptr inbounds %struct.ecryptfs_sb_info, ptr %3, i32 0, i32 1, i32 3
  %51 = ptrtoint ptr %global_default_cipher_key_size to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %global_default_cipher_key_size, align 4
  %53 = ptrtoint ptr %key_size.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %key_size.i, align 4
  %key.i = getelementptr inbounds %struct.ecryptfs_inode_info, ptr %ecryptfs_inode, i32 0, i32 5, i32 12
  tail call void @get_random_bytes(ptr noundef %key.i, i32 noundef %52) #16
  %54 = ptrtoint ptr %crypt_stat1 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %crypt_stat1, align 4
  %or.i42 = or i32 %55, 64
  store i32 %or.i42, ptr %crypt_stat1, align 4
  %call.i43 = tail call i32 @ecryptfs_compute_root_iv(ptr noundef %crypt_stat1) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ecryptfs_verbosity to i32))
  %56 = load i32, ptr @ecryptfs_verbosity, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %cmp.i = icmp sgt i32 %56, 0
  br i1 %cmp.i, label %if.then.i44, label %if.end.ecryptfs_generate_new_key.exit_crit_edge, !prof !252

if.end.ecryptfs_generate_new_key.exit_crit_edge:  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %ecryptfs_generate_new_key.exit

if.then.i44:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ...) @__ecryptfs_printk(ptr noundef nonnull @.str.79, ptr noundef nonnull @__func__.ecryptfs_generate_new_key) #16
  %57 = ptrtoint ptr %key_size.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %key_size.i, align 4
  tail call void @ecryptfs_dump_hex(ptr noundef %key.i, i32 noundef %58) #16
  br label %ecryptfs_generate_new_key.exit

ecryptfs_generate_new_key.exit:                   ; preds = %if.then.i44, %if.end.ecryptfs_generate_new_key.exit_crit_edge
  %call11 = tail call i32 @ecryptfs_init_crypt_ctx(ptr noundef %crypt_stat1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %ecryptfs_generate_new_key.exit.out_crit_edge, label %if.then13

ecryptfs_generate_new_key.exit.out_crit_edge:     ; preds = %ecryptfs_generate_new_key.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.then13:                                        ; preds = %ecryptfs_generate_new_key.exit
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ...) @__ecryptfs_printk(ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.24, ptr noundef %cipher.i, i32 noundef %call11) #16
  br label %out

out:                                              ; preds = %if.then13, %ecryptfs_generate_new_key.exit.out_crit_edge, %do.end
  %rc.0 = phi i32 [ %rc.2.i, %do.end ], [ %call11, %if.then13 ], [ 0, %ecryptfs_generate_new_key.exit.out_crit_edge ]
  ret i32 %rc.0
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ecryptfs_write_crypt_stat_flags(ptr nocapture noundef writeonly %page_virt, ptr nocapture noundef readonly %crypt_stat, ptr nocapture noundef writeonly %written) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %crypt_stat to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %crypt_stat, align 4
  %and = lshr i32 %1, 4
  %and.lobit = and i32 %and, 1
  %and.1 = lshr i32 %1, 1
  %2 = and i32 %and.1, 2
  %3 = or i32 %2, %and.lobit
  %and.2 = lshr i32 %1, 5
  %4 = and i32 %and.2, 4
  %5 = or i32 %4, %3
  %and.3 = lshr i32 %1, 7
  %6 = and i32 %and.3, 8
  %7 = or i32 %6, %5
  %file_version = getelementptr inbounds %struct.ecryptfs_crypt_stat, ptr %crypt_stat, i32 0, i32 1
  %8 = ptrtoint ptr %file_version to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %file_version, align 4
  %shl = shl i32 %9, 24
  %or5 = or i32 %shl, %7
  %10 = ptrtoint ptr %page_virt to i32
  call void @__asan_storeN_noabort(i32 %10, i32 4)
  store i32 %or5, ptr %page_virt, align 1
  %11 = ptrtoint ptr %written to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 4, ptr %written, align 4
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @ecryptfs_code_for_cipher_string(ptr nocapture noundef readonly %cipher_name, i32 noundef %key_bytes) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @strcmp(ptr noundef %cipher_name, ptr noundef nonnull dereferenceable(4) @.str.26) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %for.body.preheader

for.body.preheader:                               ; preds = %entry
  %call4 = tail call i32 @strcmp(ptr noundef %cipher_name, ptr noundef nonnull @ecryptfs_cipher_code_str_map) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp eq i32 %call4, 0
  br i1 %cmp5, label %for.body.preheader.if.then6_crit_edge, label %for.inc

for.body.preheader.if.then6_crit_edge:            ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then6

if.then:                                          ; preds = %entry
  %0 = zext i32 %key_bytes to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.113)
  switch i32 %key_bytes, label %if.then.if.end8_crit_edge [
    i32 16, label %sw.bb
    i32 24, label %sw.bb1
    i32 32, label %sw.bb2
  ]

if.then.if.end8_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end8

sw.bb:                                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end8

sw.bb1:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end8

sw.bb2:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end8

if.then6:                                         ; preds = %for.inc.6.if.then6_crit_edge, %for.inc.5.if.then6_crit_edge, %for.inc.4.if.then6_crit_edge, %for.inc.3.if.then6_crit_edge, %for.inc.2.if.then6_crit_edge, %for.inc.1.if.then6_crit_edge, %for.inc.if.then6_crit_edge, %for.body.preheader.if.then6_crit_edge
  %i.015.lcssa = phi i32 [ 0, %for.body.preheader.if.then6_crit_edge ], [ 1, %for.inc.if.then6_crit_edge ], [ 2, %for.inc.1.if.then6_crit_edge ], [ 3, %for.inc.2.if.then6_crit_edge ], [ 4, %for.inc.3.if.then6_crit_edge ], [ 5, %for.inc.4.if.then6_crit_edge ], [ 6, %for.inc.5.if.then6_crit_edge ], [ 7, %for.inc.6.if.then6_crit_edge ]
  %cipher_code = getelementptr %struct.ecryptfs_cipher_code_str_map_elem, ptr @ecryptfs_cipher_code_str_map, i32 %i.015.lcssa, i32 1
  %1 = ptrtoint ptr %cipher_code to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %cipher_code, align 1
  br label %if.end8

for.inc:                                          ; preds = %for.body.preheader
  %call4.1 = tail call i32 @strcmp(ptr noundef %cipher_name, ptr noundef getelementptr inbounds ([8 x %struct.ecryptfs_cipher_code_str_map_elem], ptr @ecryptfs_cipher_code_str_map, i32 0, i32 1)) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.1)
  %cmp5.1 = icmp eq i32 %call4.1, 0
  br i1 %cmp5.1, label %for.inc.if.then6_crit_edge, label %for.inc.1

for.inc.if.then6_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then6

for.inc.1:                                        ; preds = %for.inc
  %call4.2 = tail call i32 @strcmp(ptr noundef %cipher_name, ptr noundef getelementptr inbounds ([8 x %struct.ecryptfs_cipher_code_str_map_elem], ptr @ecryptfs_cipher_code_str_map, i32 0, i32 2)) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.2)
  %cmp5.2 = icmp eq i32 %call4.2, 0
  br i1 %cmp5.2, label %for.inc.1.if.then6_crit_edge, label %for.inc.2

for.inc.1.if.then6_crit_edge:                     ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then6

for.inc.2:                                        ; preds = %for.inc.1
  %call4.3 = tail call i32 @strcmp(ptr noundef %cipher_name, ptr noundef getelementptr inbounds ([8 x %struct.ecryptfs_cipher_code_str_map_elem], ptr @ecryptfs_cipher_code_str_map, i32 0, i32 3)) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.3)
  %cmp5.3 = icmp eq i32 %call4.3, 0
  br i1 %cmp5.3, label %for.inc.2.if.then6_crit_edge, label %for.inc.3

for.inc.2.if.then6_crit_edge:                     ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then6

for.inc.3:                                        ; preds = %for.inc.2
  %call4.4 = tail call i32 @strcmp(ptr noundef %cipher_name, ptr noundef getelementptr inbounds ([8 x %struct.ecryptfs_cipher_code_str_map_elem], ptr @ecryptfs_cipher_code_str_map, i32 0, i32 4)) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.4)
  %cmp5.4 = icmp eq i32 %call4.4, 0
  br i1 %cmp5.4, label %for.inc.3.if.then6_crit_edge, label %for.inc.4

for.inc.3.if.then6_crit_edge:                     ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then6

for.inc.4:                                        ; preds = %for.inc.3
  %call4.5 = tail call i32 @strcmp(ptr noundef %cipher_name, ptr noundef getelementptr inbounds ([8 x %struct.ecryptfs_cipher_code_str_map_elem], ptr @ecryptfs_cipher_code_str_map, i32 0, i32 5)) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.5)
  %cmp5.5 = icmp eq i32 %call4.5, 0
  br i1 %cmp5.5, label %for.inc.4.if.then6_crit_edge, label %for.inc.5

for.inc.4.if.then6_crit_edge:                     ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then6

for.inc.5:                                        ; preds = %for.inc.4
  %call4.6 = tail call i32 @strcmp(ptr noundef %cipher_name, ptr noundef getelementptr inbounds ([8 x %struct.ecryptfs_cipher_code_str_map_elem], ptr @ecryptfs_cipher_code_str_map, i32 0, i32 6)) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.6)
  %cmp5.6 = icmp eq i32 %call4.6, 0
  br i1 %cmp5.6, label %for.inc.5.if.then6_crit_edge, label %for.inc.6

for.inc.5.if.then6_crit_edge:                     ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then6

for.inc.6:                                        ; preds = %for.inc.5
  %call4.7 = tail call i32 @strcmp(ptr noundef %cipher_name, ptr noundef getelementptr inbounds ([8 x %struct.ecryptfs_cipher_code_str_map_elem], ptr @ecryptfs_cipher_code_str_map, i32 0, i32 7)) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.7)
  %cmp5.7 = icmp eq i32 %call4.7, 0
  br i1 %cmp5.7, label %for.inc.6.if.then6_crit_edge, label %for.inc.6.if.end8_crit_edge

for.inc.6.if.end8_crit_edge:                      ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end8

for.inc.6.if.then6_crit_edge:                     ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then6

if.end8:                                          ; preds = %for.inc.6.if.end8_crit_edge, %if.then6, %sw.bb2, %sw.bb1, %sw.bb, %if.then.if.end8_crit_edge
  %code.0 = phi i8 [ 0, %if.then.if.end8_crit_edge ], [ 9, %sw.bb2 ], [ 8, %sw.bb1 ], [ 7, %sw.bb ], [ %2, %if.then6 ], [ 0, %for.inc.6.if.end8_crit_edge ]
  ret i8 %code.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ecryptfs_cipher_code_to_string(ptr noundef %str, i8 noundef zeroext %cipher_code) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %str to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %str, align 1
  %1 = load i8, ptr getelementptr inbounds ([8 x %struct.ecryptfs_cipher_code_str_map_elem], ptr @ecryptfs_cipher_code_str_map, i32 0, i32 0, i32 1), align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %1, i8 %cipher_code)
  %cmp4 = icmp eq i8 %1, %cipher_code
  br i1 %cmp4, label %if.then, label %entry.for.inc_crit_edge

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %call = tail call ptr @strcpy(ptr noundef %str, ptr noundef nonnull @ecryptfs_cipher_code_str_map) #21
  br label %for.inc

for.inc:                                          ; preds = %if.then, %entry.for.inc_crit_edge
  %2 = load i8, ptr getelementptr inbounds ([8 x %struct.ecryptfs_cipher_code_str_map_elem], ptr @ecryptfs_cipher_code_str_map, i32 0, i32 1, i32 1), align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %2, i8 %cipher_code)
  %cmp4.1 = icmp eq i8 %2, %cipher_code
  br i1 %cmp4.1, label %if.then.1, label %for.inc.for.inc.1_crit_edge

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.1

if.then.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  %call.1 = tail call ptr @strcpy(ptr noundef %str, ptr noundef getelementptr inbounds ([8 x %struct.ecryptfs_cipher_code_str_map_elem], ptr @ecryptfs_cipher_code_str_map, i32 0, i32 1)) #21
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then.1, %for.inc.for.inc.1_crit_edge
  %3 = load i8, ptr getelementptr inbounds ([8 x %struct.ecryptfs_cipher_code_str_map_elem], ptr @ecryptfs_cipher_code_str_map, i32 0, i32 2, i32 1), align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %3, i8 %cipher_code)
  %cmp4.2 = icmp eq i8 %3, %cipher_code
  br i1 %cmp4.2, label %if.then.2, label %for.inc.1.for.inc.2_crit_edge

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.2

if.then.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #18
  %call.2 = tail call ptr @strcpy(ptr noundef %str, ptr noundef getelementptr inbounds ([8 x %struct.ecryptfs_cipher_code_str_map_elem], ptr @ecryptfs_cipher_code_str_map, i32 0, i32 2)) #21
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then.2, %for.inc.1.for.inc.2_crit_edge
  %4 = load i8, ptr getelementptr inbounds ([8 x %struct.ecryptfs_cipher_code_str_map_elem], ptr @ecryptfs_cipher_code_str_map, i32 0, i32 3, i32 1), align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %4, i8 %cipher_code)
  %cmp4.3 = icmp eq i8 %4, %cipher_code
  br i1 %cmp4.3, label %if.then.3, label %for.inc.2.for.inc.3_crit_edge

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.3

if.then.3:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #18
  %call.3 = tail call ptr @strcpy(ptr noundef %str, ptr noundef getelementptr inbounds ([8 x %struct.ecryptfs_cipher_code_str_map_elem], ptr @ecryptfs_cipher_code_str_map, i32 0, i32 3)) #21
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then.3, %for.inc.2.for.inc.3_crit_edge
  %5 = load i8, ptr getelementptr inbounds ([8 x %struct.ecryptfs_cipher_code_str_map_elem], ptr @ecryptfs_cipher_code_str_map, i32 0, i32 4, i32 1), align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %5, i8 %cipher_code)
  %cmp4.4 = icmp eq i8 %5, %cipher_code
  br i1 %cmp4.4, label %if.then.4, label %for.inc.3.for.inc.4_crit_edge

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.4

if.then.4:                                        ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #18
  %call.4 = tail call ptr @strcpy(ptr noundef %str, ptr noundef getelementptr inbounds ([8 x %struct.ecryptfs_cipher_code_str_map_elem], ptr @ecryptfs_cipher_code_str_map, i32 0, i32 4)) #21
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.then.4, %for.inc.3.for.inc.4_crit_edge
  %6 = load i8, ptr getelementptr inbounds ([8 x %struct.ecryptfs_cipher_code_str_map_elem], ptr @ecryptfs_cipher_code_str_map, i32 0, i32 5, i32 1), align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %6, i8 %cipher_code)
  %cmp4.5 = icmp eq i8 %6, %cipher_code
  br i1 %cmp4.5, label %if.then.5, label %for.inc.4.for.inc.5_crit_edge

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.5

if.then.5:                                        ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #18
  %call.5 = tail call ptr @strcpy(ptr noundef %str, ptr noundef getelementptr inbounds ([8 x %struct.ecryptfs_cipher_code_str_map_elem], ptr @ecryptfs_cipher_code_str_map, i32 0, i32 5)) #21
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.then.5, %for.inc.4.for.inc.5_crit_edge
  %7 = load i8, ptr getelementptr inbounds ([8 x %struct.ecryptfs_cipher_code_str_map_elem], ptr @ecryptfs_cipher_code_str_map, i32 0, i32 6, i32 1), align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %7, i8 %cipher_code)
  %cmp4.6 = icmp eq i8 %7, %cipher_code
  br i1 %cmp4.6, label %if.then.6, label %for.inc.5.for.inc.6_crit_edge

for.inc.5.for.inc.6_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.6

if.then.6:                                        ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #18
  %call.6 = tail call ptr @strcpy(ptr noundef %str, ptr noundef getelementptr inbounds ([8 x %struct.ecryptfs_cipher_code_str_map_elem], ptr @ecryptfs_cipher_code_str_map, i32 0, i32 6)) #21
  br label %for.inc.6

for.inc.6:                                        ; preds = %if.then.6, %for.inc.5.for.inc.6_crit_edge
  %8 = load i8, ptr getelementptr inbounds ([8 x %struct.ecryptfs_cipher_code_str_map_elem], ptr @ecryptfs_cipher_code_str_map, i32 0, i32 7, i32 1), align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %8, i8 %cipher_code)
  %cmp4.7 = icmp eq i8 %8, %cipher_code
  br i1 %cmp4.7, label %if.then.7, label %for.inc.6.for.inc.7_crit_edge

for.inc.6.for.inc.7_crit_edge:                    ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.7

if.then.7:                                        ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #18
  %call.7 = tail call ptr @strcpy(ptr noundef %str, ptr noundef getelementptr inbounds ([8 x %struct.ecryptfs_cipher_code_str_map_elem], ptr @ecryptfs_cipher_code_str_map, i32 0, i32 7)) #21
  br label %for.inc.7

for.inc.7:                                        ; preds = %if.then.7, %for.inc.6.for.inc.7_crit_edge
  %9 = ptrtoint ptr %str to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %str, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %cmp9 = icmp eq i8 %10, 0
  br i1 %cmp9, label %if.then11, label %for.inc.7.if.end13_crit_edge

for.inc.7.if.end13_crit_edge:                     ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end13

if.then11:                                        ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #18
  %conv12 = zext i8 %cipher_code to i32
  tail call void (ptr, ...) @__ecryptfs_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull @__func__.ecryptfs_cipher_code_to_string, i32 noundef %conv12) #16
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %for.inc.7.if.end13_crit_edge
  %rc.0 = phi i32 [ -22, %if.then11 ], [ 0, %for.inc.7.if.end13_crit_edge ]
  ret i32 %rc.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ecryptfs_read_and_validate_header_region(ptr noundef %inode) local_unnamed_addr #0 align 64 {
entry:
  %file_size = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %file_size) #16
  %0 = getelementptr inbounds [16 x i8], ptr %file_size, i32 0, i32 8
  %1 = getelementptr inbounds [16 x i8], ptr %file_size, i32 0, i32 12
  %2 = call ptr @memset(ptr %file_size, i32 255, i32 16)
  %call = call i32 @ecryptfs_read_lower(ptr noundef nonnull %file_size, i64 noundef 0, i32 noundef 16, ptr noundef %inode) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.else

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %call)
  %cmp2 = icmp ult i32 %call, 16
  br i1 %cmp2, label %if.else.cleanup_crit_edge, label %if.end4

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end4:                                          ; preds = %if.else
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_loadN_noabort(i32 %3, i32 4)
  %4 = load i32, ptr %0, align 1
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_loadN_noabort(i32 %5, i32 4)
  %6 = load i32, ptr %1, align 1
  %xor.i = xor i32 %4, 1015134197
  call void @__sanitizer_cov_trace_cmp4(i32 %xor.i, i32 %6)
  %cmp.i = icmp eq i32 %xor.i, %6
  br i1 %cmp.i, label %if.then6, label %ecryptfs_validate_marker.exit

ecryptfs_validate_marker.exit:                    ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, ...) @__ecryptfs_printk(ptr noundef nonnull @.str.80, ptr noundef nonnull @__func__.ecryptfs_validate_marker, i32 noundef %4, i32 noundef %6, i32 noundef 1015134197) #16
  call void (ptr, ...) @__ecryptfs_printk(ptr noundef nonnull @.str.81, ptr noundef nonnull @__func__.ecryptfs_validate_marker, i32 noundef %xor.i) #16
  br label %cleanup

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #18
  call void @ecryptfs_i_size_init(ptr noundef nonnull %file_size, ptr noundef %inode)
  br label %cleanup

cleanup:                                          ; preds = %if.then6, %ecryptfs_validate_marker.exit, %if.else.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ -22, %if.else.cleanup_crit_edge ], [ 0, %if.then6 ], [ -22, %ecryptfs_validate_marker.exit ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %file_size) #16
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ecryptfs_i_size_init(ptr nocapture noundef readonly %page_virt, ptr noundef %inode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %crypt_stat1 = getelementptr inbounds %struct.ecryptfs_inode_info, ptr %inode, i32 0, i32 5
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %mount_crypt_stat3 = getelementptr inbounds %struct.ecryptfs_sb_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %mount_crypt_stat3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mount_crypt_stat3, align 4
  %and = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %wii_inode.i = getelementptr inbounds %struct.ecryptfs_inode_info, ptr %inode, i32 0, i32 1
  %6 = ptrtoint ptr %wii_inode.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %wii_inode.i, align 8
  %i_size_seqcount.i = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 23
  %dep_map.c48.i.i = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 23, i32 1
  %i_size18.i = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 14
  br label %do.body.i

do.body.i:                                        ; preds = %while.end.i.do.body.i_crit_edge, %if.then
  %8 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !260
  %and.i.i.i = and i32 %8, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %do.body24.critedge.i.i

if.then.i.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @trace_hardirqs_off() #16
  %9 = tail call ptr @llvm.returnaddress(i32 0) #16
  %10 = ptrtoint ptr %9 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %10) #16
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i, i32 noundef %10) #16
  tail call void @trace_hardirqs_on() #16
  br label %do.body24.i.i

do.body24.critedge.i.i:                           ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #18
  %11 = tail call ptr @llvm.returnaddress(i32 0) #16
  %12 = ptrtoint ptr %11 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %12) #16
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i, i32 noundef %12) #16
  br label %do.body24.i.i

do.body24.i.i:                                    ; preds = %do.body24.critedge.i.i, %if.then.i.i
  %13 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #16, !srcloc !261
  %and.i.i.i.i = and i32 %13, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool32.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool32.not.i.i, label %if.then36.i.i, label %do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge, !prof !252

do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge: ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %seqcount_lockdep_reader_access.exit.i

if.then36.i.i:                                    ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @warn_bogus_irq_restore() #16
  br label %seqcount_lockdep_reader_access.exit.i

seqcount_lockdep_reader_access.exit.i:            ; preds = %if.then36.i.i, %do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %8) #16, !srcloc !262
  %14 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %i_size_seqcount.i, align 4
  %and29.i = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i)
  %tobool.not30.i = icmp eq i32 %and29.i, 0
  br i1 %tobool.not30.i, label %seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge, label %seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge

seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i
  br label %do.end.i

seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end.i

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !263
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #16, !srcloc !264
  %16 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %i_size_seqcount.i, align 4
  %and.i = and i32 %17, 1
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.end.i.while.end.i_crit_edge, label %do.end.i.do.end.i_crit_edge

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end.i

do.end.i.while.end.i_crit_edge:                   ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end.i

while.end.i:                                      ; preds = %do.end.i.while.end.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge
  %.lcssa.i = phi i32 [ %15, %seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge ], [ %17, %do.end.i.while.end.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !265
  %18 = ptrtoint ptr %i_size18.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %i_size18.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !266
  %20 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %i_size_seqcount.i, align 4
  %cmp.i.i.not.i = icmp eq i32 %21, %.lcssa.i
  br i1 %cmp.i.i.not.i, label %i_size_read.exit, label %while.end.i.do.body.i_crit_edge

while.end.i.do.body.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body.i

i_size_read.exit:                                 ; preds = %while.end.i
  %22 = ptrtoint ptr %crypt_stat1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %crypt_stat1, align 4
  %and7 = and i32 %23, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %i_size_read.exit.if.end11_crit_edge, label %if.then9

i_size_read.exit.if.end11_crit_edge:              ; preds = %i_size_read.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end11

if.then9:                                         ; preds = %i_size_read.exit
  call void @__sanitizer_cov_trace_pc() #18
  %metadata_size = getelementptr inbounds %struct.ecryptfs_inode_info, ptr %inode, i32 0, i32 5, i32 3
  %24 = ptrtoint ptr %metadata_size to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %metadata_size, align 4
  %conv = zext i32 %25 to i64
  %add = add i64 %19, %conv
  br label %if.end11

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %26 = ptrtoint ptr %page_virt to i32
  call void @__asan_loadN_noabort(i32 %26, i32 8)
  %27 = load i64, ptr %page_virt, align 1
  br label %if.end11

if.end11:                                         ; preds = %if.else, %if.then9, %i_size_read.exit.if.end11_crit_edge
  %file_size.0 = phi i64 [ %add, %if.then9 ], [ %19, %i_size_read.exit.if.end11_crit_edge ], [ %27, %if.else ]
  %28 = tail call i32 @llvm.read_register.i32(metadata !242) #16
  %and.i.i.i.i19 = and i32 %28, -16384
  %29 = inttoptr i32 %and.i.i.i.i19 to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %31, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !267
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %32 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.not.i.i20 = icmp eq i32 %32, 0
  br i1 %tobool.not.i.i20, label %if.end11.i_size_write.exit_crit_edge, label %land.lhs.true.i.i

if.end11.i_size_write.exit_crit_edge:             ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #18
  br label %i_size_write.exit

land.lhs.true.i.i:                                ; preds = %if.end11
  %33 = tail call i32 @llvm.read_register.i32(metadata !242) #16
  %and.i.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %36, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !268
  %37 = tail call i32 @llvm.read_register.i32(metadata !242) #16
  %and.i.i.i21 = and i32 %37, -16384
  %38 = inttoptr i32 %and.i.i.i21 to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 3
  %39 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %40
  %41 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx.i.i, align 4
  %add.i28.i = add i32 %42, ptrtoint (ptr @lockdep_recursion to i32)
  %43 = inttoptr i32 %add.i28.i to ptr
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %43, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !269
  %46 = tail call i32 @llvm.read_register.i32(metadata !242) #16
  %and.i.i.i7.i.i = and i32 %46, -16384
  %47 = inttoptr i32 %and.i.i.i7.i.i to ptr
  %preempt_count.i.i8.i.i = getelementptr inbounds %struct.thread_info, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %preempt_count.i.i8.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %preempt_count.i.i8.i.i, align 4
  %sub.i.i.i = add i32 %49, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i8.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool20.not.i.i = icmp eq i32 %45, 0
  br i1 %tobool20.not.i.i, label %land.rhs.i.i, label %land.lhs.true.i.i.i_size_write.exit_crit_edge

land.lhs.true.i.i.i_size_write.exit_crit_edge:    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %i_size_write.exit

land.rhs.i.i:                                     ; preds = %land.lhs.true.i.i
  %50 = tail call i32 @llvm.read_register.i32(metadata !242) #16
  %and.i.i.i29.i = and i32 %50, -16384
  %51 = inttoptr i32 %and.i.i.i29.i to ptr
  %preempt_count.i.i30.i = getelementptr inbounds %struct.thread_info, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %preempt_count.i.i30.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %preempt_count.i.i30.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %cmp.i.i = icmp eq i32 %53, 0
  br i1 %cmp.i.i, label %land.rhs22.i.i, label %land.rhs.i.i.i_size_write.exit_crit_edge

land.rhs.i.i.i_size_write.exit_crit_edge:         ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %i_size_write.exit

land.rhs22.i.i:                                   ; preds = %land.rhs.i.i
  %54 = tail call i32 @llvm.read_register.i32(metadata !242) #16
  %and.i.i.i9.i.i = and i32 %54, -16384
  %55 = inttoptr i32 %and.i.i.i9.i.i to ptr
  %preempt_count.i.i10.i.i = getelementptr inbounds %struct.thread_info, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %preempt_count.i.i10.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %preempt_count.i.i10.i.i, align 4
  %add.i11.i.i = add i32 %57, 1
  store volatile i32 %add.i11.i.i, ptr %preempt_count.i.i10.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !270
  %58 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %cpu.i.i, align 4
  %arrayidx46.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %59
  %60 = ptrtoint ptr %arrayidx46.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx46.i.i, align 4
  %add47.i.i = add i32 %61, ptrtoint (ptr @hardirqs_enabled to i32)
  %62 = inttoptr i32 %add47.i.i to ptr
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load volatile i32, ptr %62, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !271
  %65 = tail call i32 @llvm.read_register.i32(metadata !242) #16
  %and.i.i.i12.i.i = and i32 %65, -16384
  %66 = inttoptr i32 %and.i.i.i12.i.i to ptr
  %preempt_count.i.i13.i.i = getelementptr inbounds %struct.thread_info, ptr %66, i32 0, i32 1
  %67 = ptrtoint ptr %preempt_count.i.i13.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load volatile i32, ptr %preempt_count.i.i13.i.i, align 4
  %sub.i14.i.i = add i32 %68, -1
  store volatile i32 %sub.i14.i.i, ptr %preempt_count.i.i13.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool54.not.i.i = icmp eq i32 %64, 0
  br i1 %tobool54.not.i.i, label %land.rhs22.i.i.i_size_write.exit_crit_edge, label %land.rhs58.i.i

land.rhs22.i.i.i_size_write.exit_crit_edge:       ; preds = %land.rhs22.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %i_size_write.exit

land.rhs58.i.i:                                   ; preds = %land.rhs22.i.i
  %.b1.i.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs58.i.i.i_size_write.exit_crit_edge, label %if.then.i.i22, !prof !253

land.rhs58.i.i.i_size_write.exit_crit_edge:       ; preds = %land.rhs58.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %i_size_write.exit

if.then.i.i22:                                    ; preds = %land.rhs58.i.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.85, i32 noundef 271, i32 noundef 9, ptr noundef null) #16
  br label %i_size_write.exit

i_size_write.exit:                                ; preds = %if.then.i.i22, %land.rhs58.i.i.i_size_write.exit_crit_edge, %land.rhs22.i.i.i_size_write.exit_crit_edge, %land.rhs.i.i.i_size_write.exit_crit_edge, %land.lhs.true.i.i.i_size_write.exit_crit_edge, %if.end11.i_size_write.exit_crit_edge
  %i_size_seqcount.i23 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23
  %69 = ptrtoint ptr %i_size_seqcount.i23 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %i_size_seqcount.i23, align 4
  %inc.i.i.i.i = add i32 %70, 1
  store i32 %inc.i.i.i.i, ptr %i_size_seqcount.i23, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !272
  %dep_map.i.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23, i32 1
  %71 = tail call ptr @llvm.returnaddress(i32 0) #16
  %72 = ptrtoint ptr %71 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %72) #16
  %i_size8.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  %73 = ptrtoint ptr %i_size8.i to i32
  call void @__asan_store8_noabort(i32 %73)
  store i64 %file_size.0, ptr %i_size8.i, align 8
  tail call void @lock_release(ptr noundef %dep_map.i.i.i, i32 noundef %72) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !273
  %74 = ptrtoint ptr %i_size_seqcount.i23 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %i_size_seqcount.i23, align 4
  %inc.i.i.i = add i32 %75, 1
  store i32 %inc.i.i.i, ptr %i_size_seqcount.i23, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !274
  %76 = tail call i32 @llvm.read_register.i32(metadata !242) #16
  %and.i.i.i26.i = and i32 %76, -16384
  %77 = inttoptr i32 %and.i.i.i26.i to ptr
  %preempt_count.i.i27.i = getelementptr inbounds %struct.thread_info, ptr %77, i32 0, i32 1
  %78 = ptrtoint ptr %preempt_count.i.i27.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load volatile i32, ptr %preempt_count.i.i27.i, align 4
  %sub.i.i = add i32 %79, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i27.i, align 4
  %80 = ptrtoint ptr %crypt_stat1 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %crypt_stat1, align 4
  %or = or i32 %81, 16384
  store i32 %or, ptr %crypt_stat1, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @ecryptfs_write_header_metadata(ptr nocapture noundef writeonly %virt, ptr nocapture noundef readonly %crypt_stat, ptr nocapture noundef writeonly %written) local_unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %extent_size = getelementptr inbounds %struct.ecryptfs_crypt_stat, ptr %crypt_stat, i32 0, i32 4
  %0 = ptrtoint ptr %extent_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %extent_size, align 4
  %metadata_size = getelementptr inbounds %struct.ecryptfs_crypt_stat, ptr %crypt_stat, i32 0, i32 3
  %2 = ptrtoint ptr %metadata_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %metadata_size, align 4
  %div = udiv i32 %3, %1
  %conv = trunc i32 %div to i16
  %4 = ptrtoint ptr %virt to i32
  call void @__asan_storeN_noabort(i32 %4, i32 4)
  store i32 %1, ptr %virt, align 1
  %add.ptr = getelementptr i8, ptr %virt, i32 4
  %5 = ptrtoint ptr %add.ptr to i32
  call void @__asan_storeN_noabort(i32 %5, i32 2)
  store i16 %conv, ptr %add.ptr, align 1
  %6 = ptrtoint ptr %written to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 6, ptr %written, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ecryptfs_write_metadata(ptr noundef %ecryptfs_dentry, ptr noundef %ecryptfs_inode) local_unnamed_addr #0 align 64 {
entry:
  %m_1.i.i = alloca i32, align 4
  %written.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %crypt_stat1 = getelementptr inbounds %struct.ecryptfs_inode_info, ptr %ecryptfs_inode, i32 0, i32 5
  %0 = ptrtoint ptr %crypt_stat1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %crypt_stat1, align 4
  %and = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end11, label %if.then, !prof !252

if.then:                                          ; preds = %entry
  %and5 = and i32 %1, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %do.end, label %if.end14

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28) #19
  br label %out

do.end11:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.29) #19
  br label %out

if.end14:                                         ; preds = %if.then
  %metadata_size = getelementptr inbounds %struct.ecryptfs_inode_info, ptr %ecryptfs_inode, i32 0, i32 5, i32 3
  %2 = ptrtoint ptr %metadata_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %metadata_size, align 4
  %dec.i = add i32 %3, -1
  %shr.i = lshr i32 %dec.i, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %dec.i)
  %tobool.not.i.i = icmp ult i32 %dec.i, 4096
  %4 = tail call i32 @llvm.ctlz.i32(i32 %shr.i, i1 true) #16, !range !275
  %sub.i.i = sub nuw nsw i32 32, %4
  %cond.i.i = select i1 %tobool.not.i.i, i32 0, i32 %sub.i.i
  %call38.i.i.i.i = tail call ptr @__alloc_pages(i32 noundef 3520, i32 noundef %cond.i.i, i32 noundef 0, ptr noundef null) #16
  %tobool.not.i74 = icmp eq ptr %call38.i.i.i.i, null
  br i1 %tobool.not.i74, label %if.end14.do.end21_crit_edge, label %ecryptfs_get_zeroed_pages.exit

if.end14.do.end21_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end21

ecryptfs_get_zeroed_pages.exit:                   ; preds = %if.end14
  %call1.i = tail call ptr @page_address(ptr noundef nonnull %call38.i.i.i.i) #16
  %5 = ptrtoint ptr %call1.i to i32
  %tobool17.not = icmp eq ptr %call1.i, null
  br i1 %tobool17.not, label %ecryptfs_get_zeroed_pages.exit.do.end21_crit_edge, label %if.end24

ecryptfs_get_zeroed_pages.exit.do.end21_crit_edge: ; preds = %ecryptfs_get_zeroed_pages.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end21

do.end21:                                         ; preds = %ecryptfs_get_zeroed_pages.exit.do.end21_crit_edge, %if.end14.do.end21_crit_edge
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.29) #19
  br label %out

if.end24:                                         ; preds = %ecryptfs_get_zeroed_pages.exit
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %written.i) #16
  %add.ptr.i = getelementptr i8, ptr %call1.i, i32 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %m_1.i.i) #16
  %6 = ptrtoint ptr %m_1.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %m_1.i.i, align 4, !annotation !276
  call void @get_random_bytes(ptr noundef nonnull %m_1.i.i, i32 noundef 4) #16
  %7 = ptrtoint ptr %m_1.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %m_1.i.i, align 4
  %xor.i.i = xor i32 %8, 1015134197
  %9 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_storeN_noabort(i32 %9, i32 4)
  store i32 %8, ptr %add.ptr.i, align 1
  %add.ptr.i.i = getelementptr i8, ptr %call1.i, i32 12
  %10 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_storeN_noabort(i32 %10, i32 4)
  store i32 %xor.i.i, ptr %add.ptr.i.i, align 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %m_1.i.i) #16
  %add.ptr1.i = getelementptr i8, ptr %call1.i, i32 16
  %11 = ptrtoint ptr %crypt_stat1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %crypt_stat1, align 4
  %and.i.i = lshr i32 %12, 4
  %and.lobit.i.i = and i32 %and.i.i, 1
  %and.1.i.i = lshr i32 %12, 1
  %13 = and i32 %and.1.i.i, 2
  %and.2.i.i = lshr i32 %12, 5
  %14 = and i32 %and.2.i.i, 4
  %and.3.i.i = lshr i32 %12, 7
  %15 = and i32 %and.3.i.i, 8
  %file_version.i.i = getelementptr inbounds %struct.ecryptfs_inode_info, ptr %ecryptfs_inode, i32 0, i32 5, i32 1
  %16 = ptrtoint ptr %file_version.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %file_version.i.i, align 4
  %shl.i.i = shl i32 %17, 24
  %18 = or i32 %13, %and.lobit.i.i
  %19 = or i32 %18, %14
  %20 = or i32 %19, %15
  %or5.i.i = or i32 %20, %shl.i.i
  %21 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_storeN_noabort(i32 %21, i32 4)
  store i32 %or5.i.i, ptr %add.ptr1.i, align 1
  %add.ptr3.i = getelementptr i8, ptr %call1.i, i32 20
  %extent_size.i.i = getelementptr inbounds %struct.ecryptfs_inode_info, ptr %ecryptfs_inode, i32 0, i32 5, i32 4
  %22 = ptrtoint ptr %extent_size.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %extent_size.i.i, align 4
  %24 = ptrtoint ptr %metadata_size to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %metadata_size, align 4
  %div.i.i = udiv i32 %25, %23
  %conv.i.i = trunc i32 %div.i.i to i16
  %26 = ptrtoint ptr %add.ptr3.i to i32
  call void @__asan_storeN_noabort(i32 %26, i32 4)
  store i32 %23, ptr %add.ptr3.i, align 1
  %add.ptr.i27.i = getelementptr i8, ptr %call1.i, i32 24
  %27 = ptrtoint ptr %add.ptr.i27.i to i32
  call void @__asan_storeN_noabort(i32 %27, i32 2)
  store i16 %conv.i.i, ptr %add.ptr.i27.i, align 1
  %28 = ptrtoint ptr %written.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 6, ptr %written.i, align 4
  %add.ptr5.i = getelementptr i8, ptr %call1.i, i32 26
  %sub.i77 = add i32 %3, -26
  %call.i = call i32 @ecryptfs_generate_key_packet_set(ptr noundef %add.ptr5.i, ptr noundef %crypt_stat1, ptr noundef %ecryptfs_dentry, ptr noundef nonnull %written.i, i32 noundef %sub.i77) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i78 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i78, label %if.end39, label %do.end36

do.end36:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, ...) @__ecryptfs_printk(ptr noundef nonnull @.str.82, ptr noundef nonnull @__func__.ecryptfs_write_headers_virt, i32 noundef %call.i) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %written.i) #16
  %call38 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.29, i32 noundef %call.i) #19
  br label %out_free

if.end39:                                         ; preds = %if.end24
  %29 = ptrtoint ptr %written.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %written.i, align 4
  %add8.i90 = add i32 %30, 26
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %written.i) #16
  %31 = ptrtoint ptr %crypt_stat1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %crypt_stat1, align 4
  %and41 = and i32 %32, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  br i1 %tobool42.not, label %if.else45, label %if.then43

if.then43:                                        ; preds = %if.end39
  %d_fsdata.i.i = getelementptr inbounds %struct.dentry, ptr %ecryptfs_dentry, i32 0, i32 11
  %33 = ptrtoint ptr %d_fsdata.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %d_fsdata.i.i, align 4
  %dentry1.i.i = getelementptr inbounds %struct.path, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %dentry1.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dentry1.i.i, align 4
  %d_inode.i.i = getelementptr inbounds %struct.dentry, ptr %36, i32 0, i32 5
  %37 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %d_inode.i.i, align 8
  %i_opflags.i = getelementptr inbounds %struct.inode, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %i_opflags.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %i_opflags.i, align 2
  %41 = and i16 %40, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %41)
  %tobool.not.i81 = icmp eq i16 %41, 0
  br i1 %tobool.not.i81, label %if.then43.do.end52_crit_edge, label %if.end.i82

if.then43.do.end52_crit_edge:                     ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end52

if.end.i82:                                       ; preds = %if.then43
  %i_rwsem.i.i = getelementptr inbounds %struct.inode, ptr %38, i32 0, i32 25
  call void @down_write(ptr noundef %i_rwsem.i.i) #16
  %call2.i = call i32 @__vfs_setxattr(ptr noundef nonnull @init_user_ns, ptr noundef %36, ptr noundef %38, ptr noundef nonnull @.str.42, ptr noundef nonnull %call1.i, i32 noundef %add8.i90, i32 noundef 0) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp ne i32 %call2.i, 0
  %tobool4.not.i = icmp eq ptr %ecryptfs_inode, null
  %or.cond.i = or i1 %tobool4.not.i, %tobool3.not.i
  br i1 %or.cond.i, label %if.end47, label %if.end47.thread98

if.end47.thread98:                                ; preds = %if.end.i82
  call void @__sanitizer_cov_trace_pc() #18
  call void @fsstack_copy_attr_all(ptr noundef nonnull %ecryptfs_inode, ptr noundef %38) #16
  call void @up_write(ptr noundef %i_rwsem.i.i) #16
  br label %out_free

if.else45:                                        ; preds = %if.end39
  %call.i83 = call i32 @ecryptfs_write_lower(ptr noundef %ecryptfs_inode, ptr noundef nonnull %call1.i, i64 noundef 0, i32 noundef %3) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i83)
  %cmp.i84 = icmp slt i32 %call.i83, 0
  br i1 %cmp.i84, label %do.end.i, label %if.else45.out_free_crit_edge

if.else45.out_free_crit_edge:                     ; preds = %if.else45
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_free

do.end.i:                                         ; preds = %if.else45
  call void @__sanitizer_cov_trace_pc() #18
  %call1.i85 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.84, i32 noundef %call.i83) #19
  br label %do.end52

if.end47:                                         ; preds = %if.end.i82
  call void @up_write(ptr noundef %i_rwsem.i.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool48.not = icmp eq i32 %call2.i, 0
  br i1 %tobool48.not, label %if.end47.out_free_crit_edge, label %if.end47.do.end52_crit_edge

if.end47.do.end52_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end52

if.end47.out_free_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_free

do.end52:                                         ; preds = %if.end47.do.end52_crit_edge, %do.end.i, %if.then43.do.end52_crit_edge
  %rc.094 = phi i32 [ %call2.i, %if.end47.do.end52_crit_edge ], [ %call.i83, %do.end.i ], [ -95, %if.then43.do.end52_crit_edge ]
  %call54 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.29, i32 noundef %rc.094) #19
  br label %out_free

out_free:                                         ; preds = %do.end52, %if.end47.out_free_crit_edge, %if.else45.out_free_crit_edge, %if.end47.thread98, %do.end36
  %rc.1 = phi i32 [ %call.i, %do.end36 ], [ %rc.094, %do.end52 ], [ 0, %if.end47.out_free_crit_edge ], [ 0, %if.end47.thread98 ], [ 0, %if.else45.out_free_crit_edge ]
  call void @free_pages(i32 noundef %5, i32 noundef %cond.i.i) #16
  br label %out

out:                                              ; preds = %out_free, %do.end21, %do.end11, %do.end
  %rc.2 = phi i32 [ %rc.1, %out_free ], [ -12, %do.end21 ], [ -22, %do.end ], [ -22, %do.end11 ]
  ret i32 %rc.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ecryptfs_read_xattr_region(ptr noundef %page_virt, ptr nocapture noundef readonly %ecryptfs_inode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %lower_file = getelementptr inbounds %struct.ecryptfs_inode_info, ptr %ecryptfs_inode, i32 0, i32 4
  %0 = ptrtoint ptr %lower_file to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lower_file, align 4
  %dentry = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dentry, align 4
  %wii_inode.i = getelementptr inbounds %struct.ecryptfs_inode_info, ptr %ecryptfs_inode, i32 0, i32 1
  %4 = ptrtoint ptr %wii_inode.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wii_inode.i, align 8
  %call2 = tail call i32 @ecryptfs_getxattr_lower(ptr noundef %3, ptr noundef %5, ptr noundef nonnull @.str.42, ptr noundef %page_virt, i32 noundef 4096) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %if.then, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.then:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ecryptfs_verbosity to i32))
  %6 = load i32, ptr @ecryptfs_verbosity, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp3 = icmp sgt i32 %6, 0
  br i1 %cmp3, label %do.end, label %if.then.out_crit_edge, !prof !252

if.then.out_crit_edge:                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.42, i32 noundef %call2) #19
  br label %out

out:                                              ; preds = %do.end, %if.then.out_crit_edge, %entry.out_crit_edge
  %rc.0 = phi i32 [ 0, %entry.out_crit_edge ], [ -22, %do.end ], [ -22, %if.then.out_crit_edge ]
  ret i32 %rc.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ecryptfs_getxattr_lower(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ecryptfs_read_and_validate_xattr_region(ptr nocapture noundef readonly %dentry, ptr noundef %inode) local_unnamed_addr #0 align 64 {
entry:
  %file_size = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %file_size) #16
  %0 = getelementptr inbounds [16 x i8], ptr %file_size, i32 0, i32 8
  %1 = getelementptr inbounds [16 x i8], ptr %file_size, i32 0, i32 12
  %d_fsdata.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 11
  %2 = call ptr @memset(ptr %file_size, i32 255, i32 16)
  %3 = ptrtoint ptr %d_fsdata.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %d_fsdata.i, align 4
  %dentry1.i = getelementptr inbounds %struct.path, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %dentry1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dentry1.i, align 4
  %wii_inode.i = getelementptr inbounds %struct.ecryptfs_inode_info, ptr %inode, i32 0, i32 1
  %7 = ptrtoint ptr %wii_inode.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %wii_inode.i, align 8
  %call3 = call i32 @ecryptfs_getxattr_lower(ptr noundef %6, ptr noundef %8, ptr noundef nonnull @.str.42, ptr noundef nonnull %file_size, i32 noundef 16) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.else

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %call3)
  %cmp4 = icmp ult i32 %call3, 16
  br i1 %cmp4, label %if.else.cleanup_crit_edge, label %if.end6

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end6:                                          ; preds = %if.else
  %9 = ptrtoint ptr %0 to i32
  call void @__asan_loadN_noabort(i32 %9, i32 4)
  %10 = load i32, ptr %0, align 1
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %12 = load i32, ptr %1, align 1
  %xor.i = xor i32 %10, 1015134197
  call void @__sanitizer_cov_trace_cmp4(i32 %xor.i, i32 %12)
  %cmp.i = icmp eq i32 %xor.i, %12
  br i1 %cmp.i, label %if.then8, label %ecryptfs_validate_marker.exit

ecryptfs_validate_marker.exit:                    ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, ...) @__ecryptfs_printk(ptr noundef nonnull @.str.80, ptr noundef nonnull @__func__.ecryptfs_validate_marker, i32 noundef %10, i32 noundef %12, i32 noundef 1015134197) #16
  call void (ptr, ...) @__ecryptfs_printk(ptr noundef nonnull @.str.81, ptr noundef nonnull @__func__.ecryptfs_validate_marker, i32 noundef %xor.i) #16
  br label %cleanup

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #18
  call void @ecryptfs_i_size_init(ptr noundef nonnull %file_size, ptr noundef %inode)
  br label %cleanup

cleanup:                                          ; preds = %if.then8, %ecryptfs_validate_marker.exit, %if.else.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %entry.cleanup_crit_edge ], [ -22, %if.else.cleanup_crit_edge ], [ 0, %if.then8 ], [ -22, %ecryptfs_validate_marker.exit ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %file_size) #16
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ecryptfs_read_metadata(ptr noundef %ecryptfs_dentry) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %ecryptfs_dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  %crypt_stat2 = getelementptr inbounds %struct.ecryptfs_inode_info, ptr %1, i32 0, i32 5
  %d_sb = getelementptr inbounds %struct.dentry, ptr %ecryptfs_dentry, i32 0, i32 9
  %2 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i, align 16
  %mount_crypt_stat4 = getelementptr inbounds %struct.ecryptfs_sb_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %mount_crypt_stat4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mount_crypt_stat4, align 4
  %and.i = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %8 = ptrtoint ptr %crypt_stat2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %crypt_stat2, align 4
  %or.i = or i32 %9, 128
  store i32 %or.i, ptr %crypt_stat2, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %10 = ptrtoint ptr %mount_crypt_stat4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mount_crypt_stat4, align 4
  %and3.i = and i32 %11, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool4.not.i = icmp eq i32 %and3.i, 0
  br i1 %tobool4.not.i, label %if.end.i.if.end8.i_crit_edge, label %if.then5.i

if.end.i.if.end8.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end8.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  %12 = ptrtoint ptr %crypt_stat2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %crypt_stat2, align 4
  %or7.i = or i32 %13, 256
  store i32 %or7.i, ptr %crypt_stat2, align 4
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then5.i, %if.end.i.if.end8.i_crit_edge
  %14 = ptrtoint ptr %mount_crypt_stat4 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mount_crypt_stat4, align 4
  %and10.i = and i32 %15, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i)
  %tobool11.not.i = icmp eq i32 %and10.i, 0
  br i1 %tobool11.not.i, label %if.end8.i.ecryptfs_copy_mount_wide_flags_to_inode_flags.exit_crit_edge, label %if.then12.i

if.end8.i.ecryptfs_copy_mount_wide_flags_to_inode_flags.exit_crit_edge: ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ecryptfs_copy_mount_wide_flags_to_inode_flags.exit

if.then12.i:                                      ; preds = %if.end8.i
  %16 = ptrtoint ptr %crypt_stat2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %crypt_stat2, align 4
  %or14.i = or i32 %17, 1024
  store i32 %or14.i, ptr %crypt_stat2, align 4
  %18 = ptrtoint ptr %mount_crypt_stat4 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %mount_crypt_stat4, align 4
  %and16.i = and i32 %19, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i)
  %tobool17.not.i = icmp eq i32 %and16.i, 0
  br i1 %tobool17.not.i, label %if.else.i, label %if.then12.i.if.end29.sink.split.i_crit_edge

if.then12.i.if.end29.sink.split.i_crit_edge:      ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end29.sink.split.i

if.else.i:                                        ; preds = %if.then12.i
  %and22.i = and i32 %19, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22.i)
  %tobool23.not.i = icmp eq i32 %and22.i, 0
  br i1 %tobool23.not.i, label %if.else.i.ecryptfs_copy_mount_wide_flags_to_inode_flags.exit_crit_edge, label %if.else.i.if.end29.sink.split.i_crit_edge

if.else.i.if.end29.sink.split.i_crit_edge:        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end29.sink.split.i

if.else.i.ecryptfs_copy_mount_wide_flags_to_inode_flags.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ecryptfs_copy_mount_wide_flags_to_inode_flags.exit

if.end29.sink.split.i:                            ; preds = %if.else.i.if.end29.sink.split.i_crit_edge, %if.then12.i.if.end29.sink.split.i_crit_edge
  %.sink.i = phi i32 [ 3072, %if.then12.i.if.end29.sink.split.i_crit_edge ], [ 5120, %if.else.i.if.end29.sink.split.i_crit_edge ]
  %or20.i = or i32 %.sink.i, %17
  %20 = ptrtoint ptr %crypt_stat2 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %or20.i, ptr %crypt_stat2, align 4
  br label %ecryptfs_copy_mount_wide_flags_to_inode_flags.exit

ecryptfs_copy_mount_wide_flags_to_inode_flags.exit: ; preds = %if.end29.sink.split.i, %if.else.i.ecryptfs_copy_mount_wide_flags_to_inode_flags.exit_crit_edge, %if.end8.i.ecryptfs_copy_mount_wide_flags_to_inode_flags.exit_crit_edge
  %21 = load ptr, ptr @ecryptfs_header_cache, align 4
  %call5 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %21, i32 noundef 1051840) #16
  %tobool.not = icmp eq ptr %call5, null
  br i1 %tobool.not, label %ecryptfs_copy_mount_wide_flags_to_inode_flags.exit.if.end41_crit_edge, label %if.end

ecryptfs_copy_mount_wide_flags_to_inode_flags.exit.if.end41_crit_edge: ; preds = %ecryptfs_copy_mount_wide_flags_to_inode_flags.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end41

if.end:                                           ; preds = %ecryptfs_copy_mount_wide_flags_to_inode_flags.exit
  %extent_size = getelementptr inbounds %struct.ecryptfs_inode_info, ptr %1, i32 0, i32 5, i32 4
  %22 = ptrtoint ptr %extent_size to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %extent_size, align 4
  %call6 = tail call i32 @ecryptfs_read_lower(ptr noundef nonnull %call5, i64 noundef 0, i32 noundef %23, ptr noundef %1) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call6)
  %cmp = icmp sgt i32 %call6, -1
  br i1 %cmp, label %if.end9, label %if.end.if.then11_crit_edge

if.end.if.then11_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then11

if.end9:                                          ; preds = %if.end
  %call8 = tail call fastcc i32 @ecryptfs_read_headers_virt(ptr noundef nonnull %call5, ptr noundef %crypt_stat2, ptr noundef %ecryptfs_dentry, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool10.not = icmp eq i32 %call8, 0
  br i1 %tobool10.not, label %if.end9.if.then40_crit_edge, label %if.end9.if.then11_crit_edge

if.end9.if.then11_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then11

if.end9.if.then40_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then40

if.then11:                                        ; preds = %if.end9.if.then11_crit_edge, %if.end.if.then11_crit_edge
  %24 = call ptr @memset(ptr %call5, i32 0, i32 4096)
  %lower_file.i = getelementptr inbounds %struct.ecryptfs_inode_info, ptr %1, i32 0, i32 4
  %25 = ptrtoint ptr %lower_file.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %lower_file.i, align 4
  %dentry.i = getelementptr inbounds %struct.file, ptr %26, i32 0, i32 1, i32 1
  %27 = ptrtoint ptr %dentry.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dentry.i, align 4
  %wii_inode.i.i = getelementptr inbounds %struct.ecryptfs_inode_info, ptr %1, i32 0, i32 1
  %29 = ptrtoint ptr %wii_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %wii_inode.i.i, align 8
  %call2.i = tail call i32 @ecryptfs_getxattr_lower(ptr noundef %28, ptr noundef %30, ptr noundef nonnull @.str.42, ptr noundef nonnull %call5, i32 noundef 4096) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp.i = icmp slt i32 %call2.i, 0
  br i1 %cmp.i, label %if.then.i67, label %if.end16

if.then.i67:                                      ; preds = %if.then11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ecryptfs_verbosity to i32))
  %31 = load i32, ptr @ecryptfs_verbosity, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp3.i = icmp sgt i32 %31, 0
  br i1 %cmp3.i, label %do.end.i, label %if.then.i67.do.end_crit_edge, !prof !252

if.then.i67.do.end_crit_edge:                     ; preds = %if.then.i67
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

do.end.i:                                         ; preds = %if.then.i67
  call void @__sanitizer_cov_trace_pc() #18
  %call6.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.42, i32 noundef %call2.i) #19
  br label %do.end

do.end:                                           ; preds = %do.end.i, %if.then.i67.do.end_crit_edge
  %i_ino = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 11
  %32 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %i_ino, align 8
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, i32 noundef %33) #19
  br label %if.then40

if.end16:                                         ; preds = %if.then11
  %call17 = tail call fastcc i32 @ecryptfs_read_headers_virt(ptr noundef nonnull %call5, ptr noundef %crypt_stat2, ptr noundef %ecryptfs_dentry, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end16.if.end26_crit_edge, label %do.end22

if.end16.if.end26_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end26

do.end22:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #18
  %i_ino24 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 11
  %34 = ptrtoint ptr %i_ino24 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %i_ino24, align 8
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, i32 noundef %35) #19
  br label %if.end26

if.end26:                                         ; preds = %do.end22, %if.end16.if.end26_crit_edge
  %rc.1 = phi i32 [ -22, %do.end22 ], [ 0, %if.end16.if.end26_crit_edge ]
  %mount_crypt_stat27 = getelementptr inbounds %struct.ecryptfs_inode_info, ptr %1, i32 0, i32 5, i32 8
  %36 = ptrtoint ptr %mount_crypt_stat27 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %mount_crypt_stat27, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %37, align 4
  %and = and i32 %39, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool28.not = icmp eq i32 %and, 0
  br i1 %tobool28.not, label %do.end33, label %if.then29

if.then29:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #18
  %40 = ptrtoint ptr %crypt_stat2 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %crypt_stat2, align 4
  %or = or i32 %41, 128
  store i32 %or, ptr %crypt_stat2, align 4
  br label %if.then40

do.end33:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #18
  %i_ino35 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 11
  %42 = ptrtoint ptr %i_ino35 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %i_ino35, align 8
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, i32 noundef %43) #19
  br label %if.then40

if.then40:                                        ; preds = %do.end33, %if.then29, %do.end, %if.end9.if.then40_crit_edge
  %rc.2.ph = phi i32 [ 0, %if.end9.if.then40_crit_edge ], [ -22, %do.end33 ], [ %rc.1, %if.then29 ], [ -22, %do.end ]
  %44 = call ptr @memset(ptr %call5, i32 0, i32 4096)
  %45 = load ptr, ptr @ecryptfs_header_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %45, ptr noundef nonnull %call5) #16
  br label %if.end41

if.end41:                                         ; preds = %if.then40, %ecryptfs_copy_mount_wide_flags_to_inode_flags.exit.if.end41_crit_edge
  %rc.274 = phi i32 [ %rc.2.ph, %if.then40 ], [ -12, %ecryptfs_copy_mount_wide_flags_to_inode_flags.exit.if.end41_crit_edge ]
  ret i32 %rc.274
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ecryptfs_read_headers_virt(ptr noundef %page_virt, ptr noundef %crypt_stat, ptr noundef %ecryptfs_dentry, i32 noundef %validate_header_size) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %extent_size.i = getelementptr inbounds %struct.ecryptfs_crypt_stat, ptr %crypt_stat, i32 0, i32 4
  %0 = ptrtoint ptr %extent_size.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 4096, ptr %extent_size.i, align 4
  %extent_mask.i.i = getelementptr inbounds %struct.ecryptfs_crypt_stat, ptr %crypt_stat, i32 0, i32 7
  %extent_shift.i.i = getelementptr inbounds %struct.ecryptfs_crypt_stat, ptr %crypt_stat, i32 0, i32 6
  %1 = ptrtoint ptr %extent_mask.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -4096, ptr %extent_mask.i.i, align 4
  %2 = ptrtoint ptr %extent_shift.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 12, ptr %extent_shift.i.i, align 4
  %iv_bytes.i = getelementptr inbounds %struct.ecryptfs_crypt_stat, ptr %crypt_stat, i32 0, i32 2
  %3 = ptrtoint ptr %iv_bytes.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 16, ptr %iv_bytes.i, align 4
  %4 = getelementptr inbounds %struct.ecryptfs_crypt_stat, ptr %crypt_stat, i32 0, i32 3
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 8192, ptr %4, align 4
  %d_sb = getelementptr inbounds %struct.dentry, ptr %ecryptfs_dentry, i32 0, i32 9
  %6 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %d_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 33
  %8 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s_fs_info.i, align 16
  %mount_crypt_stat = getelementptr inbounds %struct.ecryptfs_sb_info, ptr %9, i32 0, i32 1
  %mount_crypt_stat1 = getelementptr inbounds %struct.ecryptfs_crypt_stat, ptr %crypt_stat, i32 0, i32 8
  %10 = ptrtoint ptr %mount_crypt_stat1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %mount_crypt_stat, ptr %mount_crypt_stat1, align 4
  %add.ptr = getelementptr i8, ptr %page_virt, i32 8
  %11 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %12 = load i32, ptr %add.ptr, align 1
  %add.ptr.i = getelementptr i8, ptr %page_virt, i32 12
  %13 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %13, i32 4)
  %14 = load i32, ptr %add.ptr.i, align 1
  %xor.i = xor i32 %12, 1015134197
  call void @__sanitizer_cov_trace_cmp4(i32 %xor.i, i32 %14)
  %cmp.i = icmp eq i32 %xor.i, %14
  br i1 %cmp.i, label %if.end, label %ecryptfs_validate_marker.exit

ecryptfs_validate_marker.exit:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ...) @__ecryptfs_printk(ptr noundef nonnull @.str.80, ptr noundef nonnull @__func__.ecryptfs_validate_marker, i32 noundef %12, i32 noundef %14, i32 noundef 1015134197) #16
  tail call void (ptr, ...) @__ecryptfs_printk(ptr noundef nonnull @.str.81, ptr noundef nonnull @__func__.ecryptfs_validate_marker, i32 noundef %xor.i) #16
  br label %out

if.end:                                           ; preds = %entry
  %15 = ptrtoint ptr %crypt_stat to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %crypt_stat, align 4
  %and = and i32 %16, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %if.then4, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %ecryptfs_dentry, i32 0, i32 5
  %17 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %d_inode.i, align 8
  tail call void @ecryptfs_i_size_init(ptr noundef %page_virt, ptr noundef %18)
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end.if.end6_crit_edge
  %add.ptr7 = getelementptr i8, ptr %page_virt, i32 16
  %19 = ptrtoint ptr %add.ptr7 to i32
  call void @__asan_loadN_noabort(i32 %19, i32 4)
  %20 = load i32, ptr %add.ptr7, align 1
  %21 = ptrtoint ptr %crypt_stat to i32
  call void @__asan_load4_noabort(i32 %21)
  %crypt_stat.promoted.i = load i32, ptr %crypt_stat, align 4
  %and6.i = and i32 %crypt_stat.promoted.i, -1173
  %and.i = shl i32 %20, 4
  %22 = and i32 %and.i, 16
  %storemerge.i = or i32 %and6.i, %22
  %and.1.i = shl i32 %20, 1
  %23 = and i32 %and.1.i, 4
  %storemerge.1.i = or i32 %storemerge.i, %23
  %and.2.i = shl i32 %20, 5
  %24 = and i32 %and.2.i, 128
  %storemerge.2.i = or i32 %storemerge.1.i, %24
  %and.3.i = shl i32 %20, 7
  %25 = and i32 %and.3.i, 1024
  %storemerge.3.i = or i32 %storemerge.2.i, %25
  store i32 %storemerge.3.i, ptr %crypt_stat, align 4
  %shr.i = lshr i32 %20, 24
  %file_version.i = getelementptr inbounds %struct.ecryptfs_crypt_stat, ptr %crypt_stat, i32 0, i32 1
  %26 = ptrtoint ptr %file_version.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %shr.i, ptr %file_version.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 67108863, i32 %20)
  %cmp = icmp ugt i32 %20, 67108863
  br i1 %cmp, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ...) @__ecryptfs_printk(ptr noundef nonnull @.str.86, ptr noundef nonnull @__func__.ecryptfs_read_headers_virt, i32 noundef %shr.i, i32 noundef 3) #16
  br label %out

if.end10:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %20)
  %cmp13.not = icmp ult i32 %20, 16777216
  br i1 %cmp13.not, label %if.else, label %if.then14

if.then14:                                        ; preds = %if.end10
  %add.ptr15 = getelementptr i8, ptr %page_virt, i32 20
  %27 = ptrtoint ptr %add.ptr15 to i32
  call void @__asan_loadN_noabort(i32 %27, i32 4)
  %28 = load i32, ptr %add.ptr15, align 1
  %add.ptr.i48 = getelementptr i8, ptr %page_virt, i32 24
  %29 = ptrtoint ptr %add.ptr.i48 to i32
  call void @__asan_loadN_noabort(i32 %29, i32 2)
  %30 = load i16, ptr %add.ptr.i48, align 1
  %conv.i = zext i16 %30 to i32
  %mul.i = mul i32 %28, %conv.i
  %31 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %mul.i, ptr %4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %validate_header_size)
  %cmp.i49 = icmp eq i32 %validate_header_size, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8192, i32 %mul.i)
  %cmp4.i = icmp ult i32 %mul.i, 8192
  %or.cond = select i1 %cmp.i49, i1 %cmp4.i, i1 false
  br i1 %or.cond, label %if.then18, label %if.then14.if.end21_crit_edge

if.then14.if.end21_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end21

if.then18:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #18
  %call7.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.88, i32 noundef %mul.i) #19
  tail call void (ptr, ...) @__ecryptfs_printk(ptr noundef nonnull @.str.87, ptr noundef nonnull @__func__.ecryptfs_read_headers_virt, i32 noundef -22) #16
  br label %if.end21

if.else:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #18
  %32 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 8192, ptr %4, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.else, %if.then18, %if.then14.if.end21_crit_edge
  %offset.0 = phi i32 [ 20, %if.else ], [ 26, %if.then18 ], [ 26, %if.then14.if.end21_crit_edge ]
  %add.ptr22 = getelementptr i8, ptr %page_virt, i32 %offset.0
  %call23 = tail call i32 @ecryptfs_parse_packet_set(ptr noundef %crypt_stat, ptr noundef %add.ptr22, ptr noundef %ecryptfs_dentry) #16
  br label %out

out:                                              ; preds = %if.end21, %if.then8, %ecryptfs_validate_marker.exit
  %rc.0 = phi i32 [ -22, %ecryptfs_validate_marker.exit ], [ -22, %if.then8 ], [ %call23, %if.end21 ]
  ret i32 %rc.0
}

; Function Attrs: cold nofree norecurse nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ecryptfs_init_crypto() local_unnamed_addr #10 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  store volatile ptr @key_tfm_list, ptr @key_tfm_list, align 4
  store ptr @key_tfm_list, ptr getelementptr inbounds (%struct.list_head, ptr @key_tfm_list, i32 0, i32 1), align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ecryptfs_destroy_crypto() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @key_tfm_list_mutex, i32 noundef 0) #16
  %0 = load ptr, ptr @key_tfm_list, align 4
  %cmp.not18 = icmp eq ptr %0, @key_tfm_list
  br i1 %cmp.not18, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn.in19 = phi ptr [ %.pn, %list_del.exit.for.body_crit_edge ], [ %0, %entry.for.body_crit_edge ]
  %key_tfm.0 = getelementptr i8, ptr %.pn.in19, i32 -100
  %1 = ptrtoint ptr %.pn.in19 to i32
  call void @__asan_load4_noabort(i32 %1)
  %.pn = load ptr, ptr %.pn.in19, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in19) #16
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in19, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %.pn.in19 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %.pn.in19, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %8 = ptrtoint ptr %.pn.in19 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in19, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in19, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %10 = ptrtoint ptr %key_tfm.0 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %key_tfm.0, align 4
  %base.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %11, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef %11, ptr noundef %base.i.i) #16
  %12 = load ptr, ptr @ecryptfs_key_tfm_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %12, ptr noundef %key_tfm.0) #16
  %cmp.not = icmp eq ptr %.pn, @key_tfm_list
  br i1 %cmp.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @key_tfm_list_mutex) #16
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ecryptfs_add_new_key_tfm(ptr noundef writeonly %key_tfm, ptr nocapture noundef readonly %cipher_name, i32 noundef %key_size) local_unnamed_addr #0 align 64 {
entry:
  %dummy_key.i = alloca [64 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @mutex_is_locked(ptr noundef nonnull @key_tfm_list_mutex) #16
  br i1 %call, label %do.end8, label %do.body3, !prof !253

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ecryptfs/crypto.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1623, 0\0A.popsection", ""() #16, !srcloc !277
  unreachable

do.end8:                                          ; preds = %entry
  %0 = load ptr, ptr @ecryptfs_key_tfm_cache, align 4
  %call9 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %0, i32 noundef 3264) #16
  %tobool10.not = icmp eq ptr %key_tfm, null
  br i1 %tobool10.not, label %do.end8.if.end12_crit_edge, label %if.then11

do.end8.if.end12_crit_edge:                       ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end12

if.then11:                                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #18
  %1 = ptrtoint ptr %key_tfm to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call9, ptr %key_tfm, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %do.end8.if.end12_crit_edge
  %tobool13.not = icmp eq ptr %call9, null
  br i1 %tobool13.not, label %if.end12.out_crit_edge, label %do.body16

if.end12.out_crit_edge:                           ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

do.body16:                                        ; preds = %if.end12
  %key_tfm_mutex = getelementptr inbounds %struct.ecryptfs_key_tfm, ptr %call9, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %key_tfm_mutex, ptr noundef nonnull @.str.55, ptr noundef nonnull @ecryptfs_add_new_key_tfm.__key) #16
  %cipher_name19 = getelementptr inbounds %struct.ecryptfs_key_tfm, ptr %call9, i32 0, i32 4
  %call20 = tail call ptr @strncpy(ptr noundef %cipher_name19, ptr noundef %cipher_name, i32 noundef 31)
  %arrayidx = getelementptr %struct.ecryptfs_key_tfm, ptr %call9, i32 0, i32 4, i32 31
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %arrayidx, align 1
  %key_size22 = getelementptr inbounds %struct.ecryptfs_key_tfm, ptr %call9, i32 0, i32 1
  %3 = ptrtoint ptr %key_size22 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %key_size, ptr %key_size22, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %dummy_key.i) #16
  %4 = call ptr @memset(ptr %dummy_key.i, i32 255, i32 64)
  %5 = ptrtoint ptr %call9 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %call9, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %key_size)
  %cmp.i = icmp ugt i32 %key_size, 64
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #18
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.90, i32 noundef %key_size, i32 noundef 64) #19
  br label %ecryptfs_process_key_cipher.exit.thread

if.end.i:                                         ; preds = %do.body16
  %call.i.i = tail call i32 @strlen(ptr noundef %cipher_name19) #22
  %add2.i.i = add i32 %call.i.i, 6
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add2.i.i, i32 noundef 3264) #20
  %tobool.not.i.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool.not.i.i, label %if.end.i.ecryptfs_process_key_cipher.exit.thread_crit_edge, label %if.end3.i

if.end.i.ecryptfs_process_key_cipher.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ecryptfs_process_key_cipher.exit.thread

if.end3.i:                                        ; preds = %if.end.i
  %call4.i.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %call9.i.i.i, i32 noundef %add2.i.i, ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.92, ptr noundef %cipher_name19) #16
  %call4.i = tail call ptr @crypto_alloc_skcipher(ptr noundef nonnull %call9.i.i.i, i32 noundef 0, i32 noundef 128) #16
  %6 = ptrtoint ptr %call9 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call4.i, ptr %call9, align 8
  %cmp.i.i = icmp ugt ptr %call4.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %ecryptfs_process_key_cipher.exit, label %if.end13.i

if.end13.i:                                       ; preds = %if.end3.i
  %base.i.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %call4.i, i32 0, i32 2
  %7 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %base.i.i.i, align 128
  %or.i.i.i = or i32 %8, 256
  store i32 %or.i.i.i, ptr %base.i.i.i, align 128
  %9 = ptrtoint ptr %key_size22 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %key_size22, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp14.i = icmp eq i32 %10, 0
  br i1 %cmp14.i, label %if.then15.i, label %if.end13.i.if.end17.i_crit_edge

if.end13.i.if.end17.i_crit_edge:                  ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end17.i

if.then15.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #18
  %11 = ptrtoint ptr %call9 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %call9, align 8
  %__crt_alg.i.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %12, i32 0, i32 2, i32 3
  %13 = ptrtoint ptr %__crt_alg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %__crt_alg.i.i.i, align 4
  %max_keysize.i.i = getelementptr i8, ptr %14, i32 -104
  %15 = ptrtoint ptr %max_keysize.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %max_keysize.i.i, align 8
  %17 = ptrtoint ptr %key_size22 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %key_size22, align 4
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.then15.i, %if.end13.i.if.end17.i_crit_edge
  %18 = ptrtoint ptr %key_size22 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %key_size22, align 4
  call void @get_random_bytes(ptr noundef nonnull %dummy_key.i, i32 noundef %19) #16
  %20 = ptrtoint ptr %call9 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %call9, align 8
  %22 = ptrtoint ptr %key_size22 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %key_size22, align 4
  %call19.i = call i32 @crypto_skcipher_setkey(ptr noundef %21, ptr noundef nonnull %dummy_key.i, i32 noundef %23) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i)
  %tobool20.not.i = icmp eq i32 %call19.i, 0
  br i1 %tobool20.not.i, label %ecryptfs_process_key_cipher.exit.thread61, label %do.end24.i

ecryptfs_process_key_cipher.exit.thread61:        ; preds = %if.end17.i
  call void @kfree(ptr noundef nonnull %call9.i.i.i) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %dummy_key.i) #16
  %key_tfm_list = getelementptr inbounds %struct.ecryptfs_key_tfm, ptr %call9, i32 0, i32 3
  %24 = load ptr, ptr @key_tfm_list, align 4
  %call.i.i56 = call zeroext i1 @__list_add_valid(ptr noundef %key_tfm_list, ptr noundef nonnull @key_tfm_list, ptr noundef %24) #16
  br i1 %call.i.i56, label %if.end.i.i, label %ecryptfs_process_key_cipher.exit.thread61.out_crit_edge

ecryptfs_process_key_cipher.exit.thread61.out_crit_edge: ; preds = %ecryptfs_process_key_cipher.exit.thread61
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

do.end24.i:                                       ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #18
  %25 = ptrtoint ptr %key_size22 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %key_size22, align 4
  %call26.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.97, i32 noundef %26, ptr noundef nonnull %call9.i.i.i, i32 noundef %call19.i) #19
  br label %ecryptfs_process_key_cipher.exit.thread

ecryptfs_process_key_cipher.exit.thread:          ; preds = %do.end24.i, %if.end.i.ecryptfs_process_key_cipher.exit.thread_crit_edge, %if.then.i
  %full_alg_name.2.i.ph = phi ptr [ null, %if.end.i.ecryptfs_process_key_cipher.exit.thread_crit_edge ], [ %call9.i.i.i, %do.end24.i ], [ null, %if.then.i ]
  %rc.0.i.ph = phi i32 [ -12, %if.end.i.ecryptfs_process_key_cipher.exit.thread_crit_edge ], [ -22, %do.end24.i ], [ -22, %if.then.i ]
  call void @kfree(ptr noundef %full_alg_name.2.i.ph) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %dummy_key.i) #16
  br label %do.end32

ecryptfs_process_key_cipher.exit:                 ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #18
  %27 = ptrtoint ptr %call4.i to i32
  %call12.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.94, ptr noundef nonnull %call9.i.i.i, i32 noundef %27) #19
  tail call void @kfree(ptr noundef nonnull %call9.i.i.i) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %dummy_key.i) #16
  br label %do.end32

do.end32:                                         ; preds = %ecryptfs_process_key_cipher.exit, %ecryptfs_process_key_cipher.exit.thread
  %rc.0.i60 = phi i32 [ %rc.0.i.ph, %ecryptfs_process_key_cipher.exit.thread ], [ %27, %ecryptfs_process_key_cipher.exit ]
  %call35 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, ptr noundef %cipher_name19, i32 noundef %rc.0.i60) #19
  %28 = load ptr, ptr @ecryptfs_key_tfm_cache, align 4
  call void @kmem_cache_free(ptr noundef %28, ptr noundef nonnull %call9) #16
  br i1 %tobool10.not, label %do.end32.out_crit_edge, label %if.then37

do.end32.out_crit_edge:                           ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.then37:                                        ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #18
  %29 = ptrtoint ptr %key_tfm to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %key_tfm, align 4
  br label %out

if.end.i.i:                                       ; preds = %ecryptfs_process_key_cipher.exit.thread61
  call void @__sanitizer_cov_trace_pc() #18
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  %30 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %key_tfm_list, ptr %prev1.i.i, align 4
  %31 = ptrtoint ptr %key_tfm_list to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %24, ptr %key_tfm_list, align 4
  %prev3.i.i = getelementptr inbounds %struct.ecryptfs_key_tfm, ptr %call9, i32 0, i32 3, i32 1
  %32 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @key_tfm_list, ptr %prev3.i.i, align 8
  store volatile ptr %key_tfm_list, ptr @key_tfm_list, align 4
  br label %out

out:                                              ; preds = %if.end.i.i, %if.then37, %do.end32.out_crit_edge, %ecryptfs_process_key_cipher.exit.thread61.out_crit_edge, %if.end12.out_crit_edge
  %rc.0 = phi i32 [ %rc.0.i60, %if.then37 ], [ %rc.0.i60, %do.end32.out_crit_edge ], [ -12, %if.end12.out_crit_edge ], [ 0, %ecryptfs_process_key_cipher.exit.thread61.out_crit_edge ], [ 0, %if.end.i.i ]
  ret i32 %rc.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mutex_is_locked(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ecryptfs_tfm_exists(ptr nocapture noundef readonly %cipher_name, ptr noundef writeonly %key_tfm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @mutex_is_locked(ptr noundef nonnull @key_tfm_list_mutex) #16
  br i1 %call, label %entry.for.cond_crit_edge, label %do.body3, !prof !253

entry.for.cond_crit_edge:                         ; preds = %entry
  br label %for.cond

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ecryptfs/crypto.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1668, 0\0A.popsection", ""() #16, !srcloc !278
  unreachable

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry.for.cond_crit_edge
  %.pn.in = phi ptr [ %.pn, %for.body.for.cond_crit_edge ], [ @key_tfm_list, %entry.for.cond_crit_edge ]
  %0 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, @key_tfm_list
  br i1 %cmp.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %cipher_name11 = getelementptr i8, ptr %.pn, i32 8
  %call12 = tail call i32 @strcmp(ptr noundef %cipher_name11, ptr noundef %cipher_name) #21
  %cmp13 = icmp eq i32 %call12, 0
  br i1 %cmp13, label %if.then14, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond

if.then14:                                        ; preds = %for.body
  %tobool15.not = icmp eq ptr %key_tfm, null
  br i1 %tobool15.not, label %if.then14.cleanup_crit_edge, label %if.then16

if.then14.cleanup_crit_edge:                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then16:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #18
  %tmp_key_tfm.0.le = getelementptr i8, ptr %.pn, i32 -100
  br label %cleanup.sink.split

for.end:                                          ; preds = %for.cond
  %tobool23.not = icmp eq ptr %key_tfm, null
  br i1 %tobool23.not, label %for.end.cleanup_crit_edge, label %for.end.cleanup.sink.split_crit_edge

for.end.cleanup.sink.split_crit_edge:             ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.sink.split

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

cleanup.sink.split:                               ; preds = %for.end.cleanup.sink.split_crit_edge, %if.then16
  %.sink = phi ptr [ %tmp_key_tfm.0.le, %if.then16 ], [ null, %for.end.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ 1, %if.then16 ], [ 0, %for.end.cleanup.sink.split_crit_edge ]
  %1 = ptrtoint ptr %key_tfm to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %.sink, ptr %key_tfm, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %for.end.cleanup_crit_edge, %if.then14.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then14.cleanup_crit_edge ], [ 0, %for.end.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ecryptfs_get_tfm_and_mutex_for_cipher_name(ptr nocapture noundef writeonly %tfm, ptr nocapture noundef writeonly %tfm_mutex, ptr nocapture noundef readonly %cipher_name) local_unnamed_addr #0 align 64 {
entry:
  %key_tfm = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %key_tfm) #16
  %0 = ptrtoint ptr %tfm to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %tfm, align 4
  %1 = ptrtoint ptr %tfm_mutex to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %tfm_mutex, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @key_tfm_list_mutex, i32 noundef 0) #16
  %call.i = tail call zeroext i1 @mutex_is_locked(ptr noundef nonnull @key_tfm_list_mutex) #16
  br i1 %call.i, label %entry.for.cond.i_crit_edge, label %do.body3.i, !prof !253

entry.for.cond.i_crit_edge:                       ; preds = %entry
  br label %for.cond.i

do.body3.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ecryptfs/crypto.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1668, 0\0A.popsection", ""() #16, !srcloc !278
  unreachable

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry.for.cond.i_crit_edge
  %.pn.in.i = phi ptr [ %.pn.i, %for.body.i.for.cond.i_crit_edge ], [ @key_tfm_list, %entry.for.cond.i_crit_edge ]
  %2 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, @key_tfm_list
  br i1 %cmp.not.i, label %if.then, label %for.body.i

for.body.i:                                       ; preds = %for.cond.i
  %cipher_name11.i = getelementptr i8, ptr %.pn.i, i32 8
  %call12.i = tail call i32 @strcmp(ptr noundef %cipher_name11.i, ptr noundef %cipher_name) #22
  %cmp13.i = icmp eq i32 %call12.i, 0
  br i1 %cmp13.i, label %ecryptfs_tfm_exists.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.i

ecryptfs_tfm_exists.exit:                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  %tmp_key_tfm.0.le.i = getelementptr i8, ptr %.pn.i, i32 -100
  %3 = ptrtoint ptr %key_tfm to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %tmp_key_tfm.0.le.i, ptr %key_tfm, align 4
  br label %if.end5

if.then:                                          ; preds = %for.cond.i
  %4 = ptrtoint ptr %key_tfm to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %key_tfm, align 4
  %call1 = call i32 @ecryptfs_add_new_key_tfm(ptr noundef nonnull %key_tfm, ptr noundef %cipher_name, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.then.if.end5_crit_edge, label %do.end

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end5

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  %call4 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, i32 noundef %call1) #19
  br label %out

if.end5:                                          ; preds = %if.then.if.end5_crit_edge, %ecryptfs_tfm_exists.exit
  %5 = ptrtoint ptr %key_tfm to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %key_tfm, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %9 = ptrtoint ptr %tfm to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %tfm, align 4
  %key_tfm_mutex = getelementptr inbounds %struct.ecryptfs_key_tfm, ptr %6, i32 0, i32 2
  %10 = ptrtoint ptr %tfm_mutex to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %key_tfm_mutex, ptr %tfm_mutex, align 4
  br label %out

out:                                              ; preds = %if.end5, %do.end
  %rc.1 = phi i32 [ 0, %if.end5 ], [ %call1, %do.end ]
  call void @mutex_unlock(ptr noundef nonnull @key_tfm_list_mutex) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %key_tfm) #16
  ret i32 %rc.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ecryptfs_encrypt_and_encode_filename(ptr nocapture noundef %encoded_name, ptr nocapture noundef writeonly %encoded_name_size, ptr noundef %mount_crypt_stat, ptr noundef %name, i32 noundef %name_size) local_unnamed_addr #0 align 64 {
entry:
  %last_block.sroa.0.i97 = alloca i8, align 1
  %last_block.sroa.7.i98 = alloca i8, align 1
  %last_block.sroa.11.i99 = alloca i8, align 1
  %packet_size.i = alloca i32, align 4
  %remaining_bytes.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %encoded_name to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %encoded_name, align 4
  %1 = ptrtoint ptr %encoded_name_size to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %encoded_name_size, align 4
  %tobool.not = icmp eq ptr %mount_crypt_stat, null
  br i1 %tobool.not, label %entry.if.end8.i.i159_crit_edge, label %land.lhs.true

entry.if.end8.i.i159_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end8.i.i159

land.lhs.true:                                    ; preds = %entry
  %2 = ptrtoint ptr %mount_crypt_stat to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mount_crypt_stat, align 4
  %and = and i32 %3, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %land.lhs.true.if.end8.i.i159_crit_edge, label %if.then

land.lhs.true.if.end8.i.i159_crit_edge:           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end8.i.i159

if.then:                                          ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 108) #23
  %tobool2.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool2.not, label %if.then.cleanup47_crit_edge, label %land.lhs.true.i

if.then.cleanup47_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup47

land.lhs.true.i:                                  ; preds = %if.then
  %filename4 = getelementptr inbounds %struct.ecryptfs_filename, ptr %call7.i.i, i32 0, i32 3
  %5 = ptrtoint ptr %filename4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %name, ptr %filename4, align 8
  %filename_size = getelementptr inbounds %struct.ecryptfs_filename, ptr %call7.i.i, i32 0, i32 5
  %6 = ptrtoint ptr %filename_size to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %name_size, ptr %filename_size, align 8
  %encrypted_filename.i = getelementptr inbounds %struct.ecryptfs_filename, ptr %call7.i.i, i32 0, i32 4
  %7 = ptrtoint ptr %encrypted_filename.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %encrypted_filename.i, align 4
  %encrypted_filename_size.i = getelementptr inbounds %struct.ecryptfs_filename, ptr %call7.i.i, i32 0, i32 6
  %8 = ptrtoint ptr %encrypted_filename_size.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %encrypted_filename_size.i, align 4
  %9 = ptrtoint ptr %mount_crypt_stat to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mount_crypt_stat, align 4
  %and.i = and i32 %10, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i, label %ecryptfs_encrypt_filename.exit.thread, label %if.then.i88

if.then.i88:                                      ; preds = %land.lhs.true.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %packet_size.i) #16
  %11 = ptrtoint ptr %packet_size.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %packet_size.i, align 4, !annotation !276
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %remaining_bytes.i) #16
  %call.i = tail call i32 @ecryptfs_write_tag_70_packet(ptr noundef null, ptr noundef null, ptr noundef %encrypted_filename_size.i, ptr noundef nonnull %mount_crypt_stat, ptr noundef null, i32 noundef %name_size) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool3.not.i, label %if.end8.i.i, label %do.end.i

do.end.i:                                         ; preds = %if.then.i88
  call void @__sanitizer_cov_trace_pc() #18
  %call5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.99, ptr noundef nonnull @.str.100, i32 noundef %call.i) #19
  br label %ecryptfs_encrypt_filename.exit.thread174

if.end8.i.i:                                      ; preds = %if.then.i88
  %12 = ptrtoint ptr %encrypted_filename_size.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %encrypted_filename_size.i, align 4
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %13, i32 noundef 3264) #20
  %14 = ptrtoint ptr %encrypted_filename.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call9.i.i, ptr %encrypted_filename.i, align 4
  %tobool11.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool11.not.i, label %ecryptfs_encrypt_filename.exit.thread171, label %if.end13.i

ecryptfs_encrypt_filename.exit.thread171:         ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %remaining_bytes.i) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %packet_size.i) #16
  br label %do.end

if.end13.i:                                       ; preds = %if.end8.i.i
  %15 = ptrtoint ptr %encrypted_filename_size.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %encrypted_filename_size.i, align 4
  %17 = ptrtoint ptr %remaining_bytes.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %remaining_bytes.i, align 4
  %18 = ptrtoint ptr %filename4 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %filename4, align 8
  %20 = ptrtoint ptr %filename_size to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %filename_size, align 8
  %call18.i = call i32 @ecryptfs_write_tag_70_packet(ptr noundef nonnull %call9.i.i, ptr noundef nonnull %remaining_bytes.i, ptr noundef nonnull %packet_size.i, ptr noundef nonnull %mount_crypt_stat, ptr noundef %19, i32 noundef %21) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %tobool19.not.i = icmp eq i32 %call18.i, 0
  br i1 %tobool19.not.i, label %if.end9, label %do.end23.i

do.end23.i:                                       ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #18
  %call25.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.102, ptr noundef nonnull @.str.100, i32 noundef %call18.i) #19
  %22 = ptrtoint ptr %encrypted_filename.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %encrypted_filename.i, align 4
  call void @kfree(ptr noundef %23) #16
  %24 = ptrtoint ptr %encrypted_filename.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %encrypted_filename.i, align 4
  br label %ecryptfs_encrypt_filename.exit.thread174

ecryptfs_encrypt_filename.exit.thread:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  %call36.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.105, ptr noundef nonnull @.str.100) #19
  br label %do.end

ecryptfs_encrypt_filename.exit.thread174:         ; preds = %do.end23.i, %do.end.i
  %rc.0.ph.i.ph = phi i32 [ %call.i, %do.end.i ], [ %call18.i, %do.end23.i ]
  %25 = ptrtoint ptr %encrypted_filename_size.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %encrypted_filename_size.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %remaining_bytes.i) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %packet_size.i) #16
  br label %do.end

do.end:                                           ; preds = %ecryptfs_encrypt_filename.exit.thread174, %ecryptfs_encrypt_filename.exit.thread, %ecryptfs_encrypt_filename.exit.thread171
  %rc.1.i170 = phi i32 [ -95, %ecryptfs_encrypt_filename.exit.thread ], [ -12, %ecryptfs_encrypt_filename.exit.thread171 ], [ %rc.0.ph.i.ph, %ecryptfs_encrypt_filename.exit.thread174 ]
  %call8 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.61, i32 noundef %rc.1.i170) #19
  call void @kfree(ptr noundef nonnull %call7.i.i) #16
  br label %cleanup47

if.end9:                                          ; preds = %if.end13.i
  %26 = ptrtoint ptr %packet_size.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %packet_size.i, align 4
  %28 = ptrtoint ptr %encrypted_filename_size.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %encrypted_filename_size.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %remaining_bytes.i) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %packet_size.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp.i93 = icmp eq i32 %27, 0
  br i1 %cmp.i93, label %if.end9.ecryptfs_encode_for_filename.exit_crit_edge, label %if.end.i95

if.end9.ecryptfs_encode_for_filename.exit_crit_edge: ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #18
  br label %ecryptfs_encode_for_filename.exit

if.end.i95:                                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #18
  %.frozen = freeze i32 %27
  %div.i = udiv i32 %.frozen, 3
  %29 = mul i32 %div.i, 3
  %rem.i.decomposed = sub i32 %.frozen, %29
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i.decomposed)
  %cmp1.i = icmp ne i32 %rem.i.decomposed, 0
  %inc.i = zext i1 %cmp1.i to i32
  %num_blocks.0.i = add nuw nsw i32 %div.i, %inc.i
  %mul.i = shl i32 %num_blocks.0.i, 2
  br label %ecryptfs_encode_for_filename.exit

ecryptfs_encode_for_filename.exit:                ; preds = %if.end.i95, %if.end9.ecryptfs_encode_for_filename.exit_crit_edge
  %encoded_name_no_prefix_size.0 = phi i32 [ %mul.i, %if.end.i95 ], [ 0, %if.end9.ecryptfs_encode_for_filename.exit_crit_edge ]
  %30 = ptrtoint ptr %mount_crypt_stat to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %mount_crypt_stat, align 4
  %and13 = and i32 %31, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  %storemerge.v = select i1 %tobool14.not, i32 23, i32 24
  %storemerge = add i32 %storemerge.v, %encoded_name_no_prefix_size.0
  %32 = ptrtoint ptr %encoded_name_size to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %storemerge, ptr %encoded_name_size, align 4
  %add18 = add i32 %storemerge, 1
  %call9.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add18, i32 noundef 3264) #20
  %33 = ptrtoint ptr %encoded_name to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call9.i, ptr %encoded_name, align 4
  %tobool20.not = icmp eq ptr %call9.i, null
  br i1 %tobool20.not, label %if.then21, label %land.lhs.true25

if.then21:                                        ; preds = %ecryptfs_encode_for_filename.exit
  call void @__sanitizer_cov_trace_pc() #18
  %34 = ptrtoint ptr %encrypted_filename.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %encrypted_filename.i, align 4
  call void @kfree(ptr noundef %35) #16
  call void @kfree(ptr noundef nonnull %call7.i.i) #16
  br label %cleanup47

land.lhs.true25:                                  ; preds = %ecryptfs_encode_for_filename.exit
  %36 = ptrtoint ptr %mount_crypt_stat to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %mount_crypt_stat, align 4
  %and27 = and i32 %37, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %do.end39, label %if.then29

if.then29:                                        ; preds = %land.lhs.true25
  %38 = call ptr @memcpy(ptr %call9.i, ptr @.str.62, i32 24)
  %39 = ptrtoint ptr %encoded_name to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %encoded_name, align 4
  %add.ptr = getelementptr i8, ptr %40, i32 24
  %41 = ptrtoint ptr %encrypted_filename.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %encrypted_filename.i, align 4
  %43 = ptrtoint ptr %encrypted_filename_size.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %encrypted_filename_size.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %last_block.sroa.0.i97)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %last_block.sroa.7.i98)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %last_block.sroa.11.i99)
  %45 = ptrtoint ptr %last_block.sroa.0.i97 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 -1, ptr %last_block.sroa.0.i97, align 1
  %46 = ptrtoint ptr %last_block.sroa.7.i98 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 -1, ptr %last_block.sroa.7.i98, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp.i100 = icmp eq i32 %44, 0
  br i1 %cmp.i100, label %if.then29.if.end34.thread184_crit_edge, label %if.end.i105

if.then29.if.end34.thread184_crit_edge:           ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end34.thread184

if.end.i105:                                      ; preds = %if.then29
  %.frozen188 = freeze i32 %44
  %div.i102 = udiv i32 %.frozen188, 3
  %47 = mul i32 %div.i102, 3
  %rem.i103.decomposed = sub i32 %.frozen188, %47
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i103.decomposed)
  %cmp1.i104 = icmp eq i32 %rem.i103.decomposed, 0
  br i1 %cmp1.i104, label %if.then2.i113, label %if.else.i115

if.then2.i113:                                    ; preds = %if.end.i105
  call void @__sanitizer_cov_trace_pc() #18
  %sub.i106 = add i32 %44, -3
  %arrayidx.i107 = getelementptr i8, ptr %42, i32 %sub.i106
  %48 = ptrtoint ptr %arrayidx.i107 to i32
  call void @__asan_load1_noabort(i32 %48)
  %last_block.sroa.0.0.copyload.i108 = load i8, ptr %arrayidx.i107, align 1
  %49 = ptrtoint ptr %last_block.sroa.0.i97 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %last_block.sroa.0.0.copyload.i108, ptr %last_block.sroa.0.i97, align 1
  %last_block.sroa.7.0.arrayidx.sroa_idx.i109 = getelementptr inbounds i8, ptr %arrayidx.i107, i32 1
  %50 = ptrtoint ptr %last_block.sroa.7.0.arrayidx.sroa_idx.i109 to i32
  call void @__asan_load1_noabort(i32 %50)
  %last_block.sroa.7.0.copyload.i110 = load i8, ptr %last_block.sroa.7.0.arrayidx.sroa_idx.i109, align 1
  %51 = ptrtoint ptr %last_block.sroa.7.i98 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %last_block.sroa.7.0.copyload.i110, ptr %last_block.sroa.7.i98, align 1
  %last_block.sroa.11.0.arrayidx.sroa_idx.i111 = getelementptr inbounds i8, ptr %arrayidx.i107, i32 2
  %52 = ptrtoint ptr %last_block.sroa.11.0.arrayidx.sroa_idx.i111 to i32
  call void @__asan_load1_noabort(i32 %52)
  %last_block.sroa.11.0.copyload.i112 = load i8, ptr %last_block.sroa.11.0.arrayidx.sroa_idx.i111, align 1
  %53 = ptrtoint ptr %last_block.sroa.11.i99 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %last_block.sroa.11.0.copyload.i112, ptr %last_block.sroa.11.i99, align 1
  br label %if.end16.i128

if.else.i115:                                     ; preds = %if.end.i105
  %inc.i114 = add nuw nsw i32 %div.i102, 1
  %54 = ptrtoint ptr %last_block.sroa.11.i99 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 0, ptr %last_block.sroa.11.i99, align 1
  %55 = zext i32 %rem.i103.decomposed to i64
  call void @__sanitizer_cov_trace_switch(i64 %55, ptr @__sancov_gen_cov_switch_values.114)
  switch i32 %rem.i103.decomposed, label %if.else.i115.if.end16.i128_crit_edge [
    i32 1, label %sw.bb.i118
    i32 2, label %sw.bb9.i123
  ]

if.else.i115.if.end16.i128_crit_edge:             ; preds = %if.else.i115
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end16.i128

sw.bb.i118:                                       ; preds = %if.else.i115
  call void @__sanitizer_cov_trace_pc() #18
  %sub5.i116 = add i32 %44, -1
  %arrayidx6.i117 = getelementptr i8, ptr %42, i32 %sub5.i116
  %56 = ptrtoint ptr %arrayidx6.i117 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx6.i117, align 1
  %58 = ptrtoint ptr %last_block.sroa.0.i97 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %57, ptr %last_block.sroa.0.i97, align 1
  %59 = ptrtoint ptr %last_block.sroa.7.i98 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 0, ptr %last_block.sroa.7.i98, align 1
  br label %if.end16.i128

sw.bb9.i123:                                      ; preds = %if.else.i115
  call void @__sanitizer_cov_trace_pc() #18
  %sub10.i119 = add i32 %44, -2
  %arrayidx11.i120 = getelementptr i8, ptr %42, i32 %sub10.i119
  %60 = ptrtoint ptr %arrayidx11.i120 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %arrayidx11.i120, align 1
  %62 = ptrtoint ptr %last_block.sroa.0.i97 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %61, ptr %last_block.sroa.0.i97, align 1
  %sub13.i121 = add i32 %44, -1
  %arrayidx14.i122 = getelementptr i8, ptr %42, i32 %sub13.i121
  %63 = ptrtoint ptr %arrayidx14.i122 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %arrayidx14.i122, align 1
  %65 = ptrtoint ptr %last_block.sroa.7.i98 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %64, ptr %last_block.sroa.7.i98, align 1
  br label %if.end16.i128

if.end16.i128:                                    ; preds = %sw.bb9.i123, %sw.bb.i118, %if.else.i115.if.end16.i128_crit_edge, %if.then2.i113
  %num_blocks.0.i124 = phi i32 [ %div.i102, %if.then2.i113 ], [ %inc.i114, %if.else.i115.if.end16.i128_crit_edge ], [ %inc.i114, %sw.bb9.i123 ], [ %inc.i114, %sw.bb.i118 ]
  %mul.i125 = shl i32 %num_blocks.0.i124, 2
  %tobool.not.i126 = icmp ne ptr %add.ptr, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_blocks.0.i124)
  %cmp19109.i127 = icmp ne i32 %num_blocks.0.i124, 0
  %or.cond.i = select i1 %tobool.not.i126, i1 %cmp19109.i127, i1 false
  br i1 %or.cond.i, label %while.body.lr.ph.i, label %if.end16.i128.if.end34.thread184_crit_edge

if.end16.i128.if.end34.thread184_crit_edge:       ; preds = %if.end16.i128
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end34.thread184

while.body.lr.ph.i:                               ; preds = %if.end16.i128
  %sub20.i = add nsw i32 %num_blocks.0.i124, -1
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %dst_offset.0111.i = phi i32 [ 0, %while.body.lr.ph.i ], [ %inc73.i, %while.body.i.while.body.i_crit_edge ]
  %block_num.0110.i = phi i32 [ 0, %while.body.lr.ph.i ], [ %inc75.i, %while.body.i.while.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %block_num.0110.i, i32 %sub20.i)
  %cmp21.i = icmp eq i32 %block_num.0110.i, %sub20.i
  %mul25.i = mul nuw i32 %block_num.0110.i, 3
  %arrayidx26.i = getelementptr i8, ptr %42, i32 %mul25.i
  %src_block.0.i = select i1 %cmp21.i, ptr %last_block.sroa.0.i97, ptr %arrayidx26.i
  %66 = ptrtoint ptr %src_block.0.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %src_block.0.i, align 1
  %68 = lshr i8 %67, 2
  %shl.i = shl i8 %67, 4
  %and33.i = and i8 %shl.i, 48
  %arrayidx26.sroa.gep107.i = getelementptr i8, ptr %arrayidx26.i, i32 1
  %src_block.0.sroa.sel108.i = select i1 %cmp21.i, ptr %last_block.sroa.7.i98, ptr %arrayidx26.sroa.gep107.i
  %69 = ptrtoint ptr %src_block.0.sroa.sel108.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %src_block.0.sroa.sel108.i, align 1
  %71 = lshr i8 %70, 4
  %or.i = or i8 %and33.i, %71
  %shl42.i = shl i8 %70, 2
  %and43.i = and i8 %shl42.i, 60
  %arrayidx26.sroa.gep.i = getelementptr i8, ptr %arrayidx26.i, i32 2
  %src_block.0.sroa.sel.i = select i1 %cmp21.i, ptr %last_block.sroa.11.i99, ptr %arrayidx26.sroa.gep.i
  %72 = ptrtoint ptr %src_block.0.sroa.sel.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %src_block.0.sroa.sel.i, align 1
  %74 = lshr i8 %73, 6
  %or48.i = or i8 %and43.i, %74
  %75 = and i8 %73, 63
  %idxprom.i = zext i8 %68 to i32
  %arrayidx57.i = getelementptr i8, ptr @.str.107, i32 %idxprom.i
  %76 = ptrtoint ptr %arrayidx57.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %arrayidx57.i, align 1
  %inc58.i = or i32 %dst_offset.0111.i, 1
  %arrayidx59.i = getelementptr i8, ptr %add.ptr, i32 %dst_offset.0111.i
  %78 = ptrtoint ptr %arrayidx59.i to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %77, ptr %arrayidx59.i, align 1
  %idxprom61.i = zext i8 %or.i to i32
  %arrayidx62.i = getelementptr i8, ptr @.str.107, i32 %idxprom61.i
  %79 = ptrtoint ptr %arrayidx62.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %arrayidx62.i, align 1
  %inc63.i = or i32 %dst_offset.0111.i, 2
  %arrayidx64.i = getelementptr i8, ptr %add.ptr, i32 %inc58.i
  %81 = ptrtoint ptr %arrayidx64.i to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %80, ptr %arrayidx64.i, align 1
  %idxprom66.i = zext i8 %or48.i to i32
  %arrayidx67.i = getelementptr i8, ptr @.str.107, i32 %idxprom66.i
  %82 = ptrtoint ptr %arrayidx67.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %arrayidx67.i, align 1
  %inc68.i = or i32 %dst_offset.0111.i, 3
  %arrayidx69.i = getelementptr i8, ptr %add.ptr, i32 %inc63.i
  %84 = ptrtoint ptr %arrayidx69.i to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 %83, ptr %arrayidx69.i, align 1
  %idxprom71.i = zext i8 %75 to i32
  %arrayidx72.i = getelementptr i8, ptr @.str.107, i32 %idxprom71.i
  %85 = ptrtoint ptr %arrayidx72.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %arrayidx72.i, align 1
  %inc73.i = add i32 %dst_offset.0111.i, 4
  %arrayidx74.i = getelementptr i8, ptr %add.ptr, i32 %inc68.i
  %87 = ptrtoint ptr %arrayidx74.i to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 %86, ptr %arrayidx74.i, align 1
  %inc75.i = add nuw nsw i32 %block_num.0110.i, 1
  %exitcond.not.i = icmp eq i32 %inc75.i, %num_blocks.0.i124
  br i1 %exitcond.not.i, label %if.end34, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.i

if.end34.thread184:                               ; preds = %if.end16.i128.if.end34.thread184_crit_edge, %if.then29.if.end34.thread184_crit_edge
  %encoded_name_no_prefix_size.1.ph = phi i32 [ 0, %if.then29.if.end34.thread184_crit_edge ], [ %mul.i125, %if.end16.i128.if.end34.thread184_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %last_block.sroa.0.i97)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %last_block.sroa.7.i98)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %last_block.sroa.11.i99)
  %add32186 = add i32 %encoded_name_no_prefix_size.1.ph, 24
  %88 = ptrtoint ptr %encoded_name_size to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %add32186, ptr %encoded_name_size, align 4
  %89 = ptrtoint ptr %encoded_name to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %encoded_name, align 4
  %arrayidx187 = getelementptr i8, ptr %90, i32 %add32186
  %91 = ptrtoint ptr %arrayidx187 to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 0, ptr %arrayidx187, align 1
  br label %if.end42

if.end34:                                         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %last_block.sroa.0.i97)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %last_block.sroa.7.i98)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %last_block.sroa.11.i99)
  %add32 = add i32 %mul.i125, 24
  %92 = ptrtoint ptr %encoded_name_size to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %add32, ptr %encoded_name_size, align 4
  %93 = ptrtoint ptr %encoded_name to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %encoded_name, align 4
  %arrayidx = getelementptr i8, ptr %94, i32 %add32
  %95 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 0, ptr %arrayidx, align 1
  br label %if.end42

do.end39:                                         ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #18
  %call41 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.61, i32 noundef -95) #19
  %96 = ptrtoint ptr %encoded_name to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %encoded_name, align 4
  call void @kfree(ptr noundef %97) #16
  %98 = ptrtoint ptr %encoded_name to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr null, ptr %encoded_name, align 4
  %99 = ptrtoint ptr %encoded_name_size to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 0, ptr %encoded_name_size, align 4
  br label %if.end42

if.end42:                                         ; preds = %do.end39, %if.end34, %if.end34.thread184
  %rc.0183 = phi i32 [ -95, %do.end39 ], [ 0, %if.end34 ], [ 0, %if.end34.thread184 ]
  %100 = ptrtoint ptr %encrypted_filename.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %encrypted_filename.i, align 4
  call void @kfree(ptr noundef %101) #16
  call void @kfree(ptr noundef nonnull %call7.i.i) #16
  br label %cleanup47

if.end8.i.i159:                                   ; preds = %land.lhs.true.if.end8.i.i159_crit_edge, %entry.if.end8.i.i159_crit_edge
  %add.i = add i32 %name_size, 1
  %call9.i.i158 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i, i32 noundef 3264) #20
  %102 = ptrtoint ptr %encoded_name to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %call9.i.i158, ptr %encoded_name, align 4
  %tobool.not.i161 = icmp eq ptr %call9.i.i158, null
  br i1 %tobool.not.i161, label %if.end8.i.i159.cleanup47_crit_edge, label %if.end.i164

if.end8.i.i159.cleanup47_crit_edge:               ; preds = %if.end8.i.i159
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup47

if.end.i164:                                      ; preds = %if.end8.i.i159
  call void @__sanitizer_cov_trace_pc() #18
  %103 = call ptr @memcpy(ptr %call9.i.i158, ptr %name, i32 %name_size)
  %104 = ptrtoint ptr %encoded_name to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %encoded_name, align 4
  %arrayidx.i163 = getelementptr i8, ptr %105, i32 %name_size
  %106 = ptrtoint ptr %arrayidx.i163 to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 0, ptr %arrayidx.i163, align 1
  %107 = ptrtoint ptr %encoded_name_size to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %name_size, ptr %encoded_name_size, align 4
  br label %cleanup47

cleanup47:                                        ; preds = %if.end.i164, %if.end8.i.i159.cleanup47_crit_edge, %if.end42, %if.then21, %do.end, %if.then.cleanup47_crit_edge
  %rc.2 = phi i32 [ %rc.1.i170, %do.end ], [ %rc.0183, %if.end42 ], [ -12, %if.then21 ], [ -12, %if.then.cleanup47_crit_edge ], [ 0, %if.end.i164 ], [ -12, %if.end8.i.i159.cleanup47_crit_edge ]
  ret i32 %rc.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ecryptfs_decode_and_decrypt_filename(ptr noundef %plaintext_name, ptr noundef %plaintext_name_size, ptr nocapture noundef readonly %sb, ptr nocapture noundef readonly %name, i32 noundef %name_size) local_unnamed_addr #0 align 64 {
entry:
  %packet_size = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %mount_crypt_stat1 = getelementptr inbounds %struct.ecryptfs_sb_info, ptr %1, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %packet_size) #16
  %2 = ptrtoint ptr %packet_size to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %packet_size, align 4, !annotation !276
  %3 = ptrtoint ptr %mount_crypt_stat1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %mount_crypt_stat1, align 4
  %5 = and i32 %4, 20
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %5)
  %6 = icmp eq i32 %5, 16
  br i1 %6, label %if.then, label %if.end8.i.i83

if.then:                                          ; preds = %entry
  %7 = zext i32 %name_size to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.115)
  switch i32 %name_size, label %if.end [
    i32 1, label %land.lhs.true.i
    i32 2, label %land.lhs.true5.i
  ]

land.lhs.true.i:                                  ; preds = %if.then
  %8 = ptrtoint ptr %name to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %name, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 46, i8 %9)
  %cmp1.i = icmp eq i8 %9, 46
  br i1 %cmp1.i, label %land.lhs.true.i.if.end8.i.i_crit_edge, label %land.lhs.true.i.out_crit_edge

land.lhs.true.i.out_crit_edge:                    ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

land.lhs.true.i.if.end8.i.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end8.i.i

land.lhs.true5.i:                                 ; preds = %if.then
  %10 = ptrtoint ptr %name to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %name, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 46, i8 %11)
  %cmp8.i = icmp eq i8 %11, 46
  br i1 %cmp8.i, label %land.lhs.true10.i, label %land.lhs.true5.i.out_crit_edge

land.lhs.true5.i.out_crit_edge:                   ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

land.lhs.true10.i:                                ; preds = %land.lhs.true5.i
  %arrayidx11.i = getelementptr i8, ptr %name, i32 1
  %12 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx11.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 46, i8 %13)
  %cmp13.i = icmp eq i8 %13, 46
  br i1 %cmp13.i, label %land.lhs.true10.i.if.end8.i.i_crit_edge, label %land.lhs.true10.i.out_crit_edge

land.lhs.true10.i.out_crit_edge:                  ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

land.lhs.true10.i.if.end8.i.i_crit_edge:          ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end8.i.i

if.end8.i.i:                                      ; preds = %land.lhs.true10.i.if.end8.i.i_crit_edge, %land.lhs.true.i.if.end8.i.i_crit_edge
  %add.i = add nuw nsw i32 %name_size, 1
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i, i32 noundef 3264) #20
  %14 = ptrtoint ptr %plaintext_name to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call9.i.i, ptr %plaintext_name, align 4
  %tobool.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not.i, label %if.end8.i.i.out_crit_edge, label %if.end.i46

if.end8.i.i.out_crit_edge:                        ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.end.i46:                                       ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %15 = call ptr @memcpy(ptr %call9.i.i, ptr %name, i32 %name_size)
  %16 = ptrtoint ptr %plaintext_name to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %plaintext_name, align 4
  %arrayidx.i = getelementptr i8, ptr %17, i32 %name_size
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %arrayidx.i, align 1
  %19 = ptrtoint ptr %plaintext_name_size to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %name_size, ptr %plaintext_name_size, align 4
  br label %out

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %name_size)
  %cmp = icmp ult i32 %name_size, 25
  br i1 %cmp, label %if.end.out_crit_edge, label %lor.lhs.false

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

lor.lhs.false:                                    ; preds = %if.end
  %call8 = tail call i32 @strncmp(ptr noundef %name, ptr noundef nonnull dereferenceable(25) @.str.62, i32 noundef 24)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %lor.lhs.false.out_crit_edge

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.end11:                                         ; preds = %lor.lhs.false
  %add.ptr = getelementptr i8, ptr %name, i32 24
  %sub = add i32 %name_size, -24
  %20 = mul i32 %sub, 3
  %mul.i.i = add i32 %20, 3
  %div1.i.i = lshr i32 %mul.i.i, 2
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %div1.i.i, i32 noundef 3264) #20
  %tobool13.not = icmp eq ptr %call9.i, null
  br i1 %tobool13.not, label %if.end11.out_crit_edge, label %if.end11.while.body.i_crit_edge

if.end11.while.body.i_crit_edge:                  ; preds = %if.end11
  br label %while.body.i

if.end11.out_crit_edge:                           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

while.body.i:                                     ; preds = %sw.epilog.i.while.body.i_crit_edge, %if.end11.while.body.i_crit_edge
  %dst_byte_offset.060.i = phi i32 [ %dst_byte_offset.1.i, %sw.epilog.i.while.body.i_crit_edge ], [ 0, %if.end11.while.body.i_crit_edge ]
  %src_byte_offset.059.i = phi i32 [ %inc34.i, %sw.epilog.i.while.body.i_crit_edge ], [ 0, %if.end11.while.body.i_crit_edge ]
  %current_bit_offset.058.i = phi i8 [ %current_bit_offset.1.i, %sw.epilog.i.while.body.i_crit_edge ], [ 0, %if.end11.while.body.i_crit_edge ]
  %arrayidx.i52 = getelementptr i8, ptr %add.ptr, i32 %src_byte_offset.059.i
  %21 = ptrtoint ptr %arrayidx.i52 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx.i52, align 1
  %conv.i = zext i8 %22 to i32
  %arrayidx1.i = getelementptr [256 x i8], ptr @filename_rev_map, i32 0, i32 %conv.i
  %23 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx1.i, align 1
  %25 = zext i8 %current_bit_offset.058.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.116)
  switch i8 %current_bit_offset.058.i, label %while.body.i.sw.epilog.i_crit_edge [
    i8 0, label %sw.bb.i
    i8 6, label %sw.bb6.i
    i8 4, label %sw.bb15.i
    i8 2, label %sw.bb27.i
  ]

while.body.i.sw.epilog.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #18
  %shl.i = shl i8 %24, 2
  %arrayidx5.i = getelementptr i8, ptr %call9.i, i32 %dst_byte_offset.060.i
  %26 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %shl.i, ptr %arrayidx5.i, align 1
  br label %sw.epilog.i

sw.bb6.i:                                         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #18
  %27 = lshr i8 %24, 4
  %inc.i = add i32 %dst_byte_offset.060.i, 1
  %arrayidx8.i = getelementptr i8, ptr %call9.i, i32 %dst_byte_offset.060.i
  %28 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx8.i, align 1
  %or.i = or i8 %29, %27
  store i8 %or.i, ptr %arrayidx8.i, align 1
  %30 = shl i8 %24, 4
  %arrayidx14.i = getelementptr i8, ptr %call9.i, i32 %inc.i
  %31 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %30, ptr %arrayidx14.i, align 1
  br label %sw.epilog.i

sw.bb15.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #18
  %32 = lshr i8 %24, 2
  %inc18.i = add i32 %dst_byte_offset.060.i, 1
  %arrayidx19.i = getelementptr i8, ptr %call9.i, i32 %dst_byte_offset.060.i
  %33 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx19.i, align 1
  %or21.i = or i8 %34, %32
  store i8 %or21.i, ptr %arrayidx19.i, align 1
  %shl24.i = shl i8 %24, 6
  %arrayidx26.i = getelementptr i8, ptr %call9.i, i32 %inc18.i
  %35 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %shl24.i, ptr %arrayidx26.i, align 1
  br label %sw.epilog.i

sw.bb27.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #18
  %inc29.i = add i32 %dst_byte_offset.060.i, 1
  %arrayidx30.i = getelementptr i8, ptr %call9.i, i32 %dst_byte_offset.060.i
  %36 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx30.i, align 1
  %or3256.i = or i8 %37, %24
  store i8 %or3256.i, ptr %arrayidx30.i, align 1
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb27.i, %sw.bb15.i, %sw.bb6.i, %sw.bb.i, %while.body.i.sw.epilog.i_crit_edge
  %current_bit_offset.1.i = phi i8 [ %current_bit_offset.058.i, %while.body.i.sw.epilog.i_crit_edge ], [ 0, %sw.bb27.i ], [ 2, %sw.bb15.i ], [ 4, %sw.bb6.i ], [ 6, %sw.bb.i ]
  %dst_byte_offset.1.i = phi i32 [ %dst_byte_offset.060.i, %while.body.i.sw.epilog.i_crit_edge ], [ %inc29.i, %sw.bb27.i ], [ %inc18.i, %sw.bb15.i ], [ %inc.i, %sw.bb6.i ], [ %dst_byte_offset.060.i, %sw.bb.i ]
  %inc34.i = add nuw i32 %src_byte_offset.059.i, 1
  %exitcond.not.i = icmp eq i32 %inc34.i, %sub
  br i1 %exitcond.not.i, label %ecryptfs_decode_from_filename.exit, label %sw.epilog.i.while.body.i_crit_edge

sw.epilog.i.while.body.i_crit_edge:               ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.i

ecryptfs_decode_from_filename.exit:               ; preds = %sw.epilog.i
  %call16 = call i32 @ecryptfs_parse_tag_70_packet(ptr noundef %plaintext_name, ptr noundef %plaintext_name_size, ptr noundef nonnull %packet_size, ptr noundef %mount_crypt_stat1, ptr noundef nonnull %call9.i, i32 noundef %dst_byte_offset.1.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %ecryptfs_decode_from_filename.exit.out_free_crit_edge, label %if.then18

ecryptfs_decode_from_filename.exit.out_free_crit_edge: ; preds = %ecryptfs_decode_from_filename.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_free

if.then18:                                        ; preds = %ecryptfs_decode_from_filename.exit
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, ...) @__ecryptfs_printk(ptr noundef nonnull @.str.66, ptr noundef nonnull @__func__.ecryptfs_decode_and_decrypt_filename, ptr noundef nonnull @__func__.ecryptfs_decode_and_decrypt_filename) #16
  br label %out_free

if.end8.i.i83:                                    ; preds = %entry
  %add.i53 = add i32 %name_size, 1
  %call9.i.i82 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i53, i32 noundef 3264) #20
  %38 = ptrtoint ptr %plaintext_name to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call9.i.i82, ptr %plaintext_name, align 4
  %tobool.not.i85 = icmp eq ptr %call9.i.i82, null
  br i1 %tobool.not.i85, label %if.end8.i.i83.out_crit_edge, label %if.end.i89

if.end8.i.i83.out_crit_edge:                      ; preds = %if.end8.i.i83
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.end.i89:                                       ; preds = %if.end8.i.i83
  call void @__sanitizer_cov_trace_pc() #18
  %39 = call ptr @memcpy(ptr %call9.i.i82, ptr %name, i32 %name_size)
  %40 = ptrtoint ptr %plaintext_name to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %plaintext_name, align 4
  %arrayidx.i88 = getelementptr i8, ptr %41, i32 %name_size
  %42 = ptrtoint ptr %arrayidx.i88 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %arrayidx.i88, align 1
  %43 = ptrtoint ptr %plaintext_name_size to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %name_size, ptr %plaintext_name_size, align 4
  br label %out

out_free:                                         ; preds = %if.then18, %ecryptfs_decode_from_filename.exit.out_free_crit_edge
  call void @kfree(ptr noundef nonnull %call9.i) #16
  br label %out

out:                                              ; preds = %out_free, %if.end.i89, %if.end8.i.i83.out_crit_edge, %if.end11.out_crit_edge, %lor.lhs.false.out_crit_edge, %if.end.out_crit_edge, %if.end.i46, %if.end8.i.i.out_crit_edge, %land.lhs.true10.i.out_crit_edge, %land.lhs.true5.i.out_crit_edge, %land.lhs.true.i.out_crit_edge
  %rc.0 = phi i32 [ %call16, %out_free ], [ -22, %lor.lhs.false.out_crit_edge ], [ -22, %if.end.out_crit_edge ], [ -12, %if.end11.out_crit_edge ], [ 0, %if.end.i46 ], [ -12, %if.end8.i.i.out_crit_edge ], [ 0, %if.end.i89 ], [ -12, %if.end8.i.i83.out_crit_edge ], [ -22, %land.lhs.true10.i.out_crit_edge ], [ -22, %land.lhs.true5.i.out_crit_edge ], [ -22, %land.lhs.true.i.out_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %packet_size) #16
  ret i32 %rc.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ecryptfs_parse_tag_70_packet(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ecryptfs_set_f_namelen(ptr nocapture noundef writeonly %namelen, i32 noundef %lower_namelen, ptr nocapture noundef readonly %mount_crypt_stat) local_unnamed_addr #0 align 64 {
entry:
  %tfm = alloca ptr, align 4
  %tfm_mutex = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tfm) #16
  %0 = ptrtoint ptr %tfm to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %tfm, align 4, !annotation !276
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tfm_mutex) #16
  %1 = ptrtoint ptr %tfm_mutex to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %tfm_mutex, align 4, !annotation !276
  %2 = ptrtoint ptr %mount_crypt_stat to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mount_crypt_stat, align 4
  %and = and i32 %3, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %global_default_fn_cipher_name = getelementptr inbounds %struct.ecryptfs_mount_crypt_stat, ptr %mount_crypt_stat, i32 0, i32 6
  %call = call i32 @ecryptfs_get_tfm_and_mutex_for_cipher_name(ptr noundef nonnull %tfm, ptr noundef nonnull %tfm_mutex, ptr noundef %global_default_fn_cipher_name)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end5, label %if.end.cleanup_crit_edge, !prof !253

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %4 = ptrtoint ptr %tfm_mutex to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tfm_mutex, align 4
  tail call void @mutex_lock_nested(ptr noundef %5, i32 noundef 0) #16
  %6 = ptrtoint ptr %tfm to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tfm, align 4
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %7, i32 0, i32 2, i32 3
  %8 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %__crt_alg.i.i, align 4
  %cra_blocksize.i.i = getelementptr inbounds %struct.crypto_alg, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %cra_blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cra_blocksize.i.i, align 4
  tail call void @mutex_unlock(ptr noundef %5) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %lower_namelen)
  %cmp = icmp eq i32 %lower_namelen, 255
  br i1 %cmp, label %land.lhs.true, label %if.end5.if.end10_crit_edge

if.end5.if.end10_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end10

land.lhs.true:                                    ; preds = %if.end5
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.117)
  switch i32 %11, label %land.lhs.true.if.end10_crit_edge [
    i32 8, label %land.lhs.true.cleanup_crit_edge
    i32 16, label %land.lhs.true.cleanup_crit_edge41
  ]

land.lhs.true.cleanup_crit_edge41:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

land.lhs.true.if.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end10

if.end10:                                         ; preds = %land.lhs.true.if.end10_crit_edge, %if.end5.if.end10_crit_edge
  %13 = mul i32 %lower_namelen, 3
  %mul.i = add i32 %13, -69
  %div1.i = lshr i32 %mul.i, 2
  %.neg = add nsw i32 %div1.i, -31
  %sub16 = sub i32 %.neg, %11
  %14 = tail call i32 @llvm.smax.i32(i32 %sub16, i32 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %land.lhs.true.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge41, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %.sink = phi i32 [ %14, %if.end10 ], [ %lower_namelen, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 143, %land.lhs.true.cleanup_crit_edge ], [ 143, %land.lhs.true.cleanup_crit_edge41 ]
  %retval.0 = phi i32 [ 0, %if.end10 ], [ 0, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge41 ]
  %15 = ptrtoint ptr %namelen to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %.sink, ptr %namelen, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tfm_mutex) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tfm) #16
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_shash_tfm_digest(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_destroy_tfm(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #11

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @extent_crypt_complete(ptr nocapture noundef readonly %req, i32 noundef %rc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 -115, i32 %rc)
  %cmp = icmp eq i32 %rc, -115
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %data = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 2
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %rc1 = getelementptr inbounds %struct.extent_crypt_result, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %rc1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %rc, ptr %rc1, align 4
  tail call void @complete(ptr noundef %1) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_skcipher_setkey(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_skcipher_encrypt(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_skcipher_decrypt(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_sensitive(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmap_high(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_high(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ecryptfs_add_keysig(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #12

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ecryptfs_generate_key_packet_set(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__vfs_setxattr(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fsstack_copy_attr_all(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #13

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ecryptfs_parse_packet_set(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ecryptfs_write_tag_70_packet(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #14

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #15

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #12

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #16

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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
define internal void @asan.module_ctor() #17 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 121)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #17 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 121)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { cold nofree norecurse nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nounwind readonly }
attributes #12 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #14 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #15 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #16 = { nounwind }
attributes #17 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #18 = { nomerge }
attributes #19 = { cold nounwind }
attributes #20 = { nounwind allocsize(0) }
attributes #21 = { nobuiltin }
attributes #22 = { nobuiltin nounwind }
attributes #23 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !16, !18, !19, !21, !22, !24, !25, !27, !28, !30, !31, !32, !33, !35, !37, !38, !40, !41, !42, !44, !45, !47, !49, !51, !52, !54, !56, !57, !58, !59, !61, !63, !65, !66, !68, !69, !70, !71, !73, !74, !75, !77, !78, !79, !81, !82, !83, !85, !86, !87, !89, !91, !92, !93, !94, !96, !97, !98, !99, !101, !102, !103, !105, !106, !107, !109, !110, !111, !113, !114, !116, !117, !118, !119, !121, !122, !123, !124, !126, !127, !128, !129, !131, !133, !134, !135, !137, !138, !140, !142, !144, !146, !147, !148, !149, !151, !153, !154, !156, !157, !158, !160, !161, !163, !165, !166, !168, !170, !172, !173, !174, !175, !177, !178, !180, !182, !184, !185, !187, !189, !190, !192, !193, !194, !195, !197, !198, !200, !201, !203, !205, !206, !207, !208, !210, !211, !212, !213, !215, !217, !218, !219, !221, !222, !223, !225, !226, !227, !228, !230, !231, !232, !234, !235, !236, !238, !240}
!llvm.named.register.sp = !{!242}
!llvm.module.flags = !{!243, !244, !245, !246, !247, !248, !249, !250}
!llvm.ident = !{!251}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/ecryptfs/crypto.c", i32 118, i32 3}
!2 = !{ptr @__func__.ecryptfs_derive_iv, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../fs/ecryptfs/crypto.c", i32 127, i32 45}
!5 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../fs/ecryptfs/crypto.c", i32 129, i32 3}
!7 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../fs/ecryptfs/crypto.c", i32 135, i32 3}
!9 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../fs/ecryptfs/crypto.c", i32 141, i32 3}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../fs/ecryptfs/crypto.c", i32 159, i32 27}
!13 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../fs/ecryptfs/crypto.c", i32 162, i32 3}
!15 = !{ptr @__func__.ecryptfs_init_crypt_stat, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @ecryptfs_init_crypt_stat.__key, !17, !"__key", i1 false, i1 false}
!17 = !{!"../fs/ecryptfs/crypto.c", i32 170, i32 2}
!18 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @ecryptfs_init_crypt_stat.__key.8, !20, !"__key", i1 false, i1 false}
!20 = !{!"../fs/ecryptfs/crypto.c", i32 171, i32 2}
!21 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @ecryptfs_init_crypt_stat.__key.10, !23, !"__key", i1 false, i1 false}
!23 = !{!"../fs/ecryptfs/crypto.c", i32 172, i32 2}
!24 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.12, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../fs/ecryptfs/crypto.c", i32 450, i32 3}
!27 = !{ptr @__func__.ecryptfs_encrypt_page, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../fs/ecryptfs/crypto.c", i32 461, i32 4}
!30 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @ecryptfs_encrypt_page._entry, !29, !"_entry", i1 false, i1 false}
!32 = !{ptr @ecryptfs_encrypt_page._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.15, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../fs/ecryptfs/crypto.c", i32 473, i32 3}
!35 = !{ptr @.str.16, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../fs/ecryptfs/crypto.c", i32 522, i32 3}
!37 = !{ptr @__func__.ecryptfs_decrypt_page, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../fs/ecryptfs/crypto.c", i32 534, i32 4}
!40 = !{ptr @ecryptfs_decrypt_page._entry, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @ecryptfs_decrypt_page._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../fs/ecryptfs/crypto.c", i32 559, i32 2}
!44 = !{ptr @__func__.ecryptfs_init_crypt_ctx, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.19, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../fs/ecryptfs/crypto.c", i32 570, i32 31}
!47 = !{ptr @.str.20, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../fs/ecryptfs/crypto.c", i32 577, i32 3}
!49 = !{ptr @.str.21, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../fs/ecryptfs/crypto.c", i32 640, i32 3}
!51 = !{ptr @__func__.ecryptfs_compute_root_iv, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.22, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../fs/ecryptfs/crypto.c", i32 647, i32 3}
!54 = !{ptr @.str.23, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../fs/ecryptfs/crypto.c", i32 784, i32 3}
!56 = !{ptr @.str.24, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @ecryptfs_new_file_context._entry, !55, !"_entry", i1 false, i1 false}
!58 = !{ptr @ecryptfs_new_file_context._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.25, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../fs/ecryptfs/crypto.c", i32 799, i32 3}
!61 = !{ptr @.str.26, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../fs/ecryptfs/crypto.c", i32 933, i32 26}
!63 = !{ptr @.str.27, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../fs/ecryptfs/crypto.c", i32 971, i32 3}
!65 = !{ptr @__func__.ecryptfs_cipher_code_to_string, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @.str.28, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../fs/ecryptfs/crypto.c", i32 1154, i32 4}
!68 = !{ptr @.str.29, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @ecryptfs_write_metadata._entry, !67, !"_entry", i1 false, i1 false}
!70 = !{ptr @ecryptfs_write_metadata._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.31, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../fs/ecryptfs/crypto.c", i32 1159, i32 3}
!73 = !{ptr @ecryptfs_write_metadata._entry.30, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @ecryptfs_write_metadata._entry_ptr.32, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.34, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../fs/ecryptfs/crypto.c", i32 1169, i32 3}
!77 = !{ptr @ecryptfs_write_metadata._entry.33, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @ecryptfs_write_metadata._entry_ptr.35, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.37, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../fs/ecryptfs/crypto.c", i32 1177, i32 3}
!81 = !{ptr @ecryptfs_write_metadata._entry.36, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @ecryptfs_write_metadata._entry_ptr.38, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.40, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../fs/ecryptfs/crypto.c", i32 1188, i32 3}
!85 = !{ptr @ecryptfs_write_metadata._entry.39, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @ecryptfs_write_metadata._entry_ptr.41, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.42, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../fs/ecryptfs/crypto.c", i32 1333, i32 12}
!89 = !{ptr @.str.43, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../fs/ecryptfs/crypto.c", i32 1337, i32 4}
!91 = !{ptr @.str.44, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @ecryptfs_read_xattr_region._entry, !90, !"_entry", i1 false, i1 false}
!93 = !{ptr @ecryptfs_read_xattr_region._entry_ptr, !90, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.45, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../fs/ecryptfs/crypto.c", i32 1410, i32 4}
!96 = !{ptr @.str.46, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @ecryptfs_read_metadata._entry, !95, !"_entry", i1 false, i1 false}
!98 = !{ptr @ecryptfs_read_metadata._entry_ptr, !95, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.48, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../fs/ecryptfs/crypto.c", i32 1420, i32 4}
!101 = !{ptr @ecryptfs_read_metadata._entry.47, !100, !"_entry", i1 false, i1 false}
!102 = !{ptr @ecryptfs_read_metadata._entry_ptr.49, !100, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.51, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../fs/ecryptfs/crypto.c", i32 1429, i32 4}
!105 = !{ptr @ecryptfs_read_metadata._entry.50, !104, !"_entry", i1 false, i1 false}
!106 = !{ptr @ecryptfs_read_metadata._entry_ptr.52, !104, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.53, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../fs/ecryptfs/crypto.c", i32 1588, i32 1}
!109 = !{ptr @.str.54, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @key_tfm_list_mutex, !108, !"key_tfm_list_mutex", i1 false, i1 false}
!111 = !{ptr @ecryptfs_add_new_key_tfm.__key, !112, !"__key", i1 false, i1 false}
!112 = !{!"../fs/ecryptfs/crypto.c", i32 1632, i32 2}
!113 = !{ptr @.str.55, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @.str.56, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../fs/ecryptfs/crypto.c", i32 1641, i32 3}
!116 = !{ptr @.str.57, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @ecryptfs_add_new_key_tfm._entry, !115, !"_entry", i1 false, i1 false}
!118 = !{ptr @ecryptfs_add_new_key_tfm._entry_ptr, !115, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.58, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../fs/ecryptfs/crypto.c", i32 1707, i32 4}
!121 = !{ptr @.str.59, !120, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @ecryptfs_get_tfm_and_mutex_for_cipher_name._entry, !120, !"_entry", i1 false, i1 false}
!123 = !{ptr @ecryptfs_get_tfm_and_mutex_for_cipher_name._entry_ptr, !120, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.60, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../fs/ecryptfs/crypto.c", i32 1912, i32 4}
!126 = !{ptr @.str.61, !125, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @ecryptfs_encrypt_and_encode_filename._entry, !125, !"_entry", i1 false, i1 false}
!128 = !{ptr @ecryptfs_encrypt_and_encode_filename._entry_ptr, !125, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.62, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../fs/ecryptfs/crypto.c", i32 1942, i32 11}
!131 = !{ptr @.str.64, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../fs/ecryptfs/crypto.c", i32 1958, i32 4}
!133 = !{ptr @ecryptfs_encrypt_and_encode_filename._entry.63, !132, !"_entry", i1 false, i1 false}
!134 = !{ptr @ecryptfs_encrypt_and_encode_filename._entry_ptr.65, !132, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @.str.66, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../fs/ecryptfs/crypto.c", i32 2044, i32 4}
!137 = !{ptr @__func__.ecryptfs_decode_and_decrypt_filename, !136, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @ecryptfs_header_cache, !139, !"ecryptfs_header_cache", i1 false, i1 false}
!139 = !{!"../fs/ecryptfs/crypto.c", i32 1013, i32 20}
!140 = !{ptr @ecryptfs_key_tfm_cache, !141, !"ecryptfs_key_tfm_cache", i1 false, i1 false}
!141 = !{!"../fs/ecryptfs/crypto.c", i32 1586, i32 20}
!142 = !{ptr @key_tfm_list, !143, !"key_tfm_list", i1 false, i1 false}
!143 = !{!"../fs/ecryptfs/crypto.c", i32 1587, i32 25}
!144 = !{ptr @.str.67, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../fs/ecryptfs/crypto.c", i32 68, i32 3}
!146 = !{ptr @.str.68, !145, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @ecryptfs_calculate_md5._entry, !145, !"_entry", i1 false, i1 false}
!148 = !{ptr @ecryptfs_calculate_md5._entry_ptr, !145, !"_entry_ptr", i1 false, i1 false}
!149 = distinct !{null, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../include/linux/gfp.h", i32 570, i32 2}
!151 = !{ptr @.str.70, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../fs/ecryptfs/crypto.c", i32 390, i32 3}
!153 = !{ptr @__func__.crypt_extent, !152, !"<string literal>", i1 false, i1 false}
!154 = !{ptr @.str.71, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../fs/ecryptfs/crypto.c", i32 407, i32 3}
!156 = !{ptr @crypt_extent._entry, !155, !"_entry", i1 false, i1 false}
!157 = !{ptr @crypt_extent._entry_ptr, !155, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @.str.72, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../fs/ecryptfs/crypto.c", i32 300, i32 3}
!160 = !{ptr @__func__.crypt_scatterlist, !159, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @.str.73, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../fs/ecryptfs/crypto.c", i32 324, i32 4}
!163 = !{ptr @init_completion.__key, !164, !"__key", i1 false, i1 false}
!164 = !{!"../include/linux/completion.h", i32 87, i32 2}
!165 = !{ptr @.str.74, !164, !"<string literal>", i1 false, i1 false}
!166 = !{ptr @.str.75, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"./../include/linux/highmem-internal.h", i32 44, i32 2}
!168 = !{ptr @.str.76, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../fs/ecryptfs/crypto.c", i32 92, i32 48}
!170 = !{ptr @.str.77, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../fs/ecryptfs/crypto.c", i32 716, i32 4}
!172 = !{ptr @.str.78, !171, !"<string literal>", i1 false, i1 false}
!173 = !{ptr @ecryptfs_copy_mount_wide_sigs_to_inode_sigs._entry, !171, !"_entry", i1 false, i1 false}
!174 = !{ptr @ecryptfs_copy_mount_wide_sigs_to_inode_sigs._entry_ptr, !171, !"_entry_ptr", i1 false, i1 false}
!175 = !{ptr @.str.79, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../fs/ecryptfs/crypto.c", i32 666, i32 3}
!177 = !{ptr @__func__.ecryptfs_generate_new_key, !176, !"<string literal>", i1 false, i1 false}
!178 = distinct !{null, !179, !"ecryptfs_flag_map", i1 false, i1 false}
!179 = !{!"../fs/ecryptfs/crypto.c", i32 834, i32 38}
!180 = !{ptr @ecryptfs_cipher_code_str_map, !181, !"ecryptfs_cipher_code_str_map", i1 false, i1 false}
!181 = !{!"../fs/ecryptfs/crypto.c", i32 908, i32 1}
!182 = !{ptr @.str.80, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../fs/ecryptfs/crypto.c", i32 820, i32 2}
!184 = !{ptr @__func__.ecryptfs_validate_marker, !183, !"<string literal>", i1 false, i1 false}
!185 = !{ptr @.str.81, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../fs/ecryptfs/crypto.c", i32 823, i32 2}
!187 = !{ptr @.str.82, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../fs/ecryptfs/crypto.c", i32 1068, i32 3}
!189 = !{ptr @__func__.ecryptfs_write_headers_virt, !188, !"<string literal>", i1 false, i1 false}
!190 = !{ptr @.str.83, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../fs/ecryptfs/crypto.c", i32 1086, i32 3}
!192 = !{ptr @.str.84, !191, !"<string literal>", i1 false, i1 false}
!193 = !{ptr @ecryptfs_write_metadata_to_contents._entry, !191, !"_entry", i1 false, i1 false}
!194 = !{ptr @ecryptfs_write_metadata_to_contents._entry_ptr, !191, !"_entry_ptr", i1 false, i1 false}
!195 = distinct !{null, !196, !"__already_done", i1 false, i1 false}
!196 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!197 = !{ptr @.str.85, !196, !"<string literal>", i1 false, i1 false}
!198 = !{ptr @.str.86, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../fs/ecryptfs/crypto.c", i32 1289, i32 3}
!200 = !{ptr @__func__.ecryptfs_read_headers_virt, !199, !"<string literal>", i1 false, i1 false}
!201 = !{ptr @.str.87, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../fs/ecryptfs/crypto.c", i32 1302, i32 4}
!203 = !{ptr @.str.88, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../fs/ecryptfs/crypto.c", i32 1218, i32 3}
!205 = !{ptr @.str.89, !204, !"<string literal>", i1 false, i1 false}
!206 = !{ptr @parse_header_metadata._entry, !204, !"_entry", i1 false, i1 false}
!207 = !{ptr @parse_header_metadata._entry_ptr, !204, !"_entry_ptr", i1 false, i1 false}
!208 = !{ptr @.str.90, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../fs/ecryptfs/crypto.c", i32 1554, i32 3}
!210 = !{ptr @.str.91, !209, !"<string literal>", i1 false, i1 false}
!211 = !{ptr @ecryptfs_process_key_cipher._entry, !209, !"_entry", i1 false, i1 false}
!212 = !{ptr @ecryptfs_process_key_cipher._entry_ptr, !209, !"_entry_ptr", i1 false, i1 false}
!213 = !{ptr @.str.92, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../fs/ecryptfs/crypto.c", i32 1559, i32 11}
!215 = !{ptr @.str.94, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../fs/ecryptfs/crypto.c", i32 1565, i32 3}
!217 = !{ptr @ecryptfs_process_key_cipher._entry.93, !216, !"_entry", i1 false, i1 false}
!218 = !{ptr @ecryptfs_process_key_cipher._entry_ptr.95, !216, !"_entry_ptr", i1 false, i1 false}
!219 = !{ptr @.str.97, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../fs/ecryptfs/crypto.c", i32 1575, i32 3}
!221 = !{ptr @ecryptfs_process_key_cipher._entry.96, !220, !"_entry", i1 false, i1 false}
!222 = !{ptr @ecryptfs_process_key_cipher._entry_ptr.98, !220, !"_entry_ptr", i1 false, i1 false}
!223 = !{ptr @.str.99, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../fs/ecryptfs/crypto.c", i32 1474, i32 4}
!225 = !{ptr @.str.100, !224, !"<string literal>", i1 false, i1 false}
!226 = !{ptr @ecryptfs_encrypt_filename._entry, !224, !"_entry", i1 false, i1 false}
!227 = !{ptr @ecryptfs_encrypt_filename._entry_ptr, !224, !"_entry_ptr", i1 false, i1 false}
!228 = !{ptr @.str.102, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../fs/ecryptfs/crypto.c", i32 1494, i32 4}
!230 = !{ptr @ecryptfs_encrypt_filename._entry.101, !229, !"_entry", i1 false, i1 false}
!231 = !{ptr @ecryptfs_encrypt_filename._entry_ptr.103, !229, !"_entry_ptr", i1 false, i1 false}
!232 = !{ptr @.str.105, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../fs/ecryptfs/crypto.c", i32 1504, i32 3}
!234 = !{ptr @ecryptfs_encrypt_filename._entry.104, !233, !"_entry", i1 false, i1 false}
!235 = !{ptr @ecryptfs_encrypt_filename._entry_ptr.106, !233, !"_entry_ptr", i1 false, i1 false}
!236 = !{ptr @.str.107, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../fs/ecryptfs/crypto.c", i32 1720, i32 50}
!238 = distinct !{null, !239, !"portable_filename_chars", i1 false, i1 false}
!239 = !{!"../fs/ecryptfs/crypto.c", i32 1720, i32 23}
!240 = !{ptr @filename_rev_map, !241, !"filename_rev_map", i1 false, i1 false}
!241 = !{!"../fs/ecryptfs/crypto.c", i32 1727, i32 28}
!242 = !{!"sp"}
!243 = !{i32 1, !"wchar_size", i32 2}
!244 = !{i32 1, !"min_enum_size", i32 4}
!245 = !{i32 8, !"branch-target-enforcement", i32 0}
!246 = !{i32 8, !"sign-return-address", i32 0}
!247 = !{i32 8, !"sign-return-address-all", i32 0}
!248 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!249 = !{i32 7, !"uwtable", i32 1}
!250 = !{i32 7, !"frame-pointer", i32 2}
!251 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!252 = !{!"branch_weights", i32 1, i32 2000}
!253 = !{!"branch_weights", i32 2000, i32 1}
!254 = !{i64 2153981598, i64 2153982090, i64 2153981635, i64 2153981691, i64 2153981725, i64 2153981749, i64 2153981790, i64 2153981811, i64 2153981839, i64 2153981873}
!255 = !{i64 2153983208, i64 2153983700, i64 2153983245, i64 2153983301, i64 2153983335, i64 2153983359, i64 2153983400, i64 2153983421, i64 2153983449, i64 2153983483}
!256 = !{i64 2154946533, i64 2154947018, i64 2154946570, i64 2154946626, i64 2154946660, i64 2154946684, i64 2154946725, i64 2154946746, i64 2154946774, i64 2154946808}
!257 = !{i64 2154950612, i64 2154951097, i64 2154950649, i64 2154950705, i64 2154950739, i64 2154950763, i64 2154950804, i64 2154950825, i64 2154950853, i64 2154950887}
!258 = !{i64 2154954731, i64 2154955216, i64 2154954768, i64 2154954824, i64 2154954858, i64 2154954882, i64 2154954923, i64 2154954944, i64 2154954972, i64 2154955006}
!259 = !{i64 2154956340, i64 2154956825, i64 2154956377, i64 2154956433, i64 2154956467, i64 2154956491, i64 2154956532, i64 2154956553, i64 2154956581, i64 2154956615}
!260 = !{i64 694759, i64 694820}
!261 = !{i64 697491}
!262 = !{i64 697776}
!263 = !{i64 2153071250}
!264 = !{i64 2153071092}
!265 = !{i64 2153071420}
!266 = !{i64 2149898954}
!267 = !{i64 2153073181}
!268 = !{i64 2149791286}
!269 = !{i64 2149796218}
!270 = !{i64 2149817930}
!271 = !{i64 2149822822}
!272 = !{i64 2149899279}
!273 = !{i64 2149899604}
!274 = !{i64 2153085043}
!275 = !{i32 0, i32 33}
!276 = !{!"auto-init"}
!277 = !{i64 2155012625, i64 2155013111, i64 2155012662, i64 2155012718, i64 2155012752, i64 2155012776, i64 2155012817, i64 2155012838, i64 2155012866, i64 2155012900}
!278 = !{i64 2155016420, i64 2155016906, i64 2155016457, i64 2155016513, i64 2155016547, i64 2155016571, i64 2155016612, i64 2155016633, i64 2155016661, i64 2155016695}
