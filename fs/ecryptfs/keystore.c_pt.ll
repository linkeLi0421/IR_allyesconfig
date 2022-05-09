; ModuleID = '/llk/IR_all_yes/fs/ecryptfs/keystore.c_pt.bc'
source_filename = "../fs/ecryptfs/keystore.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.key_type = type opaque
%struct.ecryptfs_write_tag_70_packet_silly_stack = type { i8, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, [2 x %struct.scatterlist], [2 x %struct.scatterlist], ptr, ptr, [16 x i8], [16 x i8], [16 x i8], ptr, ptr }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.ecryptfs_mount_crypt_stat = type { i32, %struct.list_head, %struct.mutex, i32, i32, [32 x i8], [32 x i8], [17 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.crypto_skcipher = type { i32, [124 x i8], %struct.crypto_tfm }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [112 x i8], [0 x ptr] }
%struct.crypto_alg = type { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, %struct.refcount_struct, [128 x i8], [128 x i8], ptr, %union.anon.2, ptr, ptr, ptr, ptr, %union.anon.78, [120 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%union.anon.2 = type { %struct.cipher_alg }
%struct.cipher_alg = type { i32, i32, ptr, ptr, ptr }
%union.anon.78 = type { %struct.crypto_istat_akcipher }
%struct.crypto_istat_akcipher = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%struct.skcipher_request = type { i32, ptr, ptr, ptr, %struct.crypto_async_request, [88 x i8], [0 x ptr] }
%struct.crypto_async_request = type { %struct.list_head, ptr, ptr, ptr, i32 }
%struct.ecryptfs_auth_tok = type { i16, i16, i32, %struct.ecryptfs_session_key, [32 x i8], %union.anon.1 }
%struct.ecryptfs_session_key = type { i32, i32, i32, [512 x i8], [64 x i8] }
%union.anon.1 = type { %struct.ecryptfs_password }
%struct.ecryptfs_password = type { i32, i32, i32, i32, i32, [64 x i8], [17 x i8], [8 x i8] }
%struct.crypto_shash = type { i32, [124 x i8], %struct.crypto_tfm }
%struct.key = type { %struct.refcount_struct, i32, %union.anon.29, ptr, %struct.rw_semaphore, ptr, ptr, %union.anon.30, i64, %struct.kuid_t, %struct.kgid_t, i32, i16, i16, i16, i32, %union.anon.31, %union.anon.35, ptr }
%union.anon.29 = type { %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.30 = type { i64 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.31 = type { %struct.keyring_index_key }
%struct.keyring_index_key = type { i32, %union.anon.32, ptr, ptr, ptr }
%union.anon.32 = type { i32 }
%union.anon.35 = type { %union.key_payload }
%union.key_payload = type { [4 x ptr] }
%struct.ecryptfs_parse_tag_70_packet_silly_stack = type { i8, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, [2 x %struct.scatterlist], [2 x %struct.scatterlist], ptr, ptr, [17 x i8], [16 x i8], [32 x i8] }
%struct.encrypted_key_payload = type { %struct.callback_head, ptr, ptr, ptr, ptr, ptr, i16, i16, i16, i16, ptr, [0 x i8] }
%struct.callback_head = type { ptr, ptr }
%struct.user_key_payload = type { %struct.callback_head, i16, [6 x i8], [0 x i8] }
%struct.ecryptfs_crypt_stat = type { i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, [32 x i8], [64 x i8], [16 x i8], %struct.list_head, %struct.mutex, %struct.mutex, %struct.mutex }
%struct.ecryptfs_auth_tok_list_item = type { [64 x i8], %struct.list_head, %struct.ecryptfs_auth_tok }
%struct.ecryptfs_message = type { i32, i32, [0 x i8] }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.66, %struct.list_head, %struct.list_head, %union.anon.67 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.18, ptr }
%union.anon.18 = type { i64 }
%struct.lockref = type { %union.anon.20 }
%union.anon.20 = type { %struct.anon.21 }
%struct.anon.21 = type { %struct.spinlock, i32 }
%struct.spinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.raw_spinlock }
%union.anon.66 = type { %struct.list_head }
%union.anon.67 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.ecryptfs_sb_info = type { ptr, %struct.ecryptfs_mount_crypt_stat }
%struct.ecryptfs_key_record = type { i8, i32, [8 x i8], [512 x i8] }
%struct.ecryptfs_key_sig = type { %struct.list_head, [17 x i8] }
%struct.ecryptfs_global_auth_tok = type { i32, %struct.list_head, ptr, [17 x i8] }

@.str = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013%s: Five-byte packet length not supported\0A\00", [51 x i8] zeroinitializer }, align 32
@__func__.ecryptfs_parse_packet_length = private unnamed_addr constant [29 x i8] c"ecryptfs_parse_packet_length\00", align 1
@.str.1 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013%s: Error parsing packet length\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\014%s: Unsupported packet size: [%zd]\0A\00", [58 x i8] zeroinitializer }, align 32
@__func__.ecryptfs_write_packet_length = private unnamed_addr constant [29 x i8] c"ecryptfs_write_packet_length\00", align 1
@ecryptfs_write_tag_70_packet._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 640, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"\013%s: Error attempting to find auth tok for fnek sig [%s]; rc = [%d]\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ecryptfs_write_tag_70_packet\00", [35 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"fs/ecryptfs/keystore.c\00", [41 x i8] zeroinitializer }, align 32
@ecryptfs_write_tag_70_packet._entry_ptr = internal global ptr @ecryptfs_write_tag_70_packet._entry, section ".printk_index", align 4
@ecryptfs_write_tag_70_packet._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.4, ptr @.str.5, i32 649, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [89 x i8], [39 x i8] } { [89 x i8] c"\013Internal error whilst attempting to get tfm and mutex for cipher name [%s]; rc = [%d]\0A\00", [39 x i8] zeroinitializer }, align 32
@ecryptfs_write_tag_70_packet._entry_ptr.8 = internal global ptr @ecryptfs_write_tag_70_packet._entry.6, section ".printk_index", align 4
@ecryptfs_write_tag_70_packet._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.4, ptr @.str.5, i32 682, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\014%s: Require [%zd] bytes to write; only [%zd] available\0A\00", [38 x i8] zeroinitializer }, align 32
@ecryptfs_write_tag_70_packet._entry_ptr.11 = internal global ptr @ecryptfs_write_tag_70_packet._entry.9, section ".printk_index", align 4
@ecryptfs_write_tag_70_packet._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.4, ptr @.str.5, i32 691, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"\013%s: Out of kernel memory whilst attempting to skcipher_request_alloc for %s\0A\00", [49 x i8] zeroinitializer }, align 32
@ecryptfs_write_tag_70_packet._entry_ptr.14 = internal global ptr @ecryptfs_write_tag_70_packet._entry.12, section ".printk_index", align 4
@ecryptfs_write_tag_70_packet._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.4, ptr @.str.5, i32 714, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [87 x i8], [41 x i8] } { [87 x i8] c"\013%s: Error generating tag 70 packet header; cannot generate packet length; rc = [%d]\0A\00", [41 x i8] zeroinitializer }, align 32
@ecryptfs_write_tag_70_packet._entry_ptr.17 = internal global ptr @ecryptfs_write_tag_70_packet._entry.15, section ".printk_index", align 4
@ecryptfs_write_tag_70_packet._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.4, ptr @.str.5, i32 729, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\014%s: Unable to generate code for cipher [%s] with key bytes [%zd]\0A\00", [60 x i8] zeroinitializer }, align 32
@ecryptfs_write_tag_70_packet._entry_ptr.20 = internal global ptr @ecryptfs_write_tag_70_packet._entry.18, section ".printk_index", align 4
@ecryptfs_write_tag_70_packet._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.4, ptr @.str.5, i32 739, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\016%s: Filename encryption only supports password tokens\0A\00", [39 x i8] zeroinitializer }, align 32
@ecryptfs_write_tag_70_packet._entry_ptr.23 = internal global ptr @ecryptfs_write_tag_70_packet._entry.21, section ".printk_index", align 4
@.str.24 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"md5\00", [28 x i8] zeroinitializer }, align 32
@ecryptfs_write_tag_70_packet._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.4, ptr @.str.5, i32 747, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\013%s: Error attempting to allocate hash crypto context; rc = [%d]\0A\00", [61 x i8] zeroinitializer }, align 32
@ecryptfs_write_tag_70_packet._entry_ptr.27 = internal global ptr @ecryptfs_write_tag_70_packet._entry.25, section ".printk_index", align 4
@ecryptfs_write_tag_70_packet._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.4, ptr @.str.5, i32 767, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013%s: Error computing crypto hash; rc = [%d]\0A\00", [50 x i8] zeroinitializer }, align 32
@ecryptfs_write_tag_70_packet._entry_ptr.30 = internal global ptr @ecryptfs_write_tag_70_packet._entry.28, section ".printk_index", align 4
@ecryptfs_write_tag_70_packet._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.4, ptr @.str.5, i32 781, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ecryptfs_write_tag_70_packet._entry_ptr.32 = internal global ptr @ecryptfs_write_tag_70_packet._entry.31, section ".printk_index", align 4
@ecryptfs_write_tag_70_packet._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.4, ptr @.str.5, i32 798, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [130 x i8], [62 x i8] } { [130 x i8] c"\013%s: Internal error whilst attempting to convert filename memory to scatterlist; rc = [%d]. block_aligned_filename_size = [%zd]\0A\00", [62 x i8] zeroinitializer }, align 32
@ecryptfs_write_tag_70_packet._entry_ptr.35 = internal global ptr @ecryptfs_write_tag_70_packet._entry.33, section ".printk_index", align 4
@ecryptfs_write_tag_70_packet._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.4, ptr @.str.5, i32 807, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [140 x i8], [52 x i8] } { [140 x i8] c"\013%s: Internal error whilst attempting to convert encrypted filename memory to scatterlist; rc = [%d]. block_aligned_filename_size = [%zd]\0A\00", [52 x i8] zeroinitializer }, align 32
@ecryptfs_write_tag_70_packet._entry_ptr.38 = internal global ptr @ecryptfs_write_tag_70_packet._entry.36, section ".printk_index", align 4
@ecryptfs_write_tag_70_packet._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.4, ptr @.str.5, i32 825, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [182 x i8], [42 x i8] } { [182 x i8] c"\013%s: Error setting key for crypto context; rc = [%d]. s->auth_tok->token.password.session_key_encryption_key = [0x%p]; mount_crypt_stat->global_default_fn_cipher_key_bytes = [%zd]\0A\00", [42 x i8] zeroinitializer }, align 32
@ecryptfs_write_tag_70_packet._entry_ptr.41 = internal global ptr @ecryptfs_write_tag_70_packet._entry.39, section ".printk_index", align 4
@ecryptfs_write_tag_70_packet._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.4, ptr @.str.5, i32 833, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013%s: Error attempting to encrypt filename; rc = [%d]\0A\00", [41 x i8] zeroinitializer }, align 32
@ecryptfs_write_tag_70_packet._entry_ptr.44 = internal global ptr @ecryptfs_write_tag_70_packet._entry.42, section ".printk_index", align 4
@ecryptfs_parse_tag_70_packet._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.5, i32 911, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\014%s: max_packet_size is [%zd]; it must be at least [%d]\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ecryptfs_parse_tag_70_packet\00", [35 x i8] zeroinitializer }, align 32
@ecryptfs_parse_tag_70_packet._entry_ptr = internal global ptr @ecryptfs_parse_tag_70_packet._entry, section ".printk_index", align 4
@ecryptfs_parse_tag_70_packet._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.46, ptr @.str.5, i32 926, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\014%s: Invalid packet tag [0x%.2x]; must be tag [0x%.2x]\0A\00", [39 x i8] zeroinitializer }, align 32
@ecryptfs_parse_tag_70_packet._entry_ptr.49 = internal global ptr @ecryptfs_parse_tag_70_packet._entry.47, section ".printk_index", align 4
@ecryptfs_parse_tag_70_packet._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.46, ptr @.str.5, i32 935, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\014%s: Error parsing packet length; rc = [%d]\0A\00", [50 x i8] zeroinitializer }, align 32
@ecryptfs_parse_tag_70_packet._entry_ptr.52 = internal global ptr @ecryptfs_parse_tag_70_packet._entry.50, section ".printk_index", align 4
@ecryptfs_parse_tag_70_packet._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.46, ptr @.str.5, i32 945, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\014%s: max_packet_size is [%zd]; real packet size is [%zd]\0A\00", [37 x i8] zeroinitializer }, align 32
@ecryptfs_parse_tag_70_packet._entry_ptr.55 = internal global ptr @ecryptfs_parse_tag_70_packet._entry.53, section ".printk_index", align 4
@ecryptfs_parse_tag_70_packet._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.46, ptr @.str.5, i32 958, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\014%s: Cipher code [%d] is invalid\0A\00", [61 x i8] zeroinitializer }, align 32
@ecryptfs_parse_tag_70_packet._entry_ptr.58 = internal global ptr @ecryptfs_parse_tag_70_packet._entry.56, section ".printk_index", align 4
@ecryptfs_parse_tag_70_packet._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.46, ptr @.str.5, i32 967, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ecryptfs_parse_tag_70_packet._entry_ptr.60 = internal global ptr @ecryptfs_parse_tag_70_packet._entry.59, section ".printk_index", align 4
@ecryptfs_parse_tag_70_packet._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.46, ptr @.str.5, i32 976, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ecryptfs_parse_tag_70_packet._entry_ptr.62 = internal global ptr @ecryptfs_parse_tag_70_packet._entry.61, section ".printk_index", align 4
@ecryptfs_parse_tag_70_packet._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.46, ptr @.str.5, i32 986, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ecryptfs_parse_tag_70_packet._entry_ptr.64 = internal global ptr @ecryptfs_parse_tag_70_packet._entry.63, section ".printk_index", align 4
@ecryptfs_parse_tag_70_packet._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.46, ptr @.str.5, i32 1002, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [140 x i8], [52 x i8] } { [140 x i8] c"\013%s: Internal error whilst attempting to convert decrypted filename memory to scatterlist; rc = [%d]. block_aligned_filename_size = [%zd]\0A\00", [52 x i8] zeroinitializer }, align 32
@ecryptfs_parse_tag_70_packet._entry_ptr.67 = internal global ptr @ecryptfs_parse_tag_70_packet._entry.65, section ".printk_index", align 4
@ecryptfs_parse_tag_70_packet._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.46, ptr @.str.5, i32 1010, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ecryptfs_parse_tag_70_packet._entry_ptr.69 = internal global ptr @ecryptfs_parse_tag_70_packet._entry.68, section ".printk_index", align 4
@ecryptfs_parse_tag_70_packet._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.46, ptr @.str.5, i32 1027, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ecryptfs_parse_tag_70_packet._entry_ptr.71 = internal global ptr @ecryptfs_parse_tag_70_packet._entry.70, section ".printk_index", align 4
@ecryptfs_parse_tag_70_packet._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.46, ptr @.str.5, i32 1041, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ecryptfs_parse_tag_70_packet._entry_ptr.73 = internal global ptr @ecryptfs_parse_tag_70_packet._entry.72, section ".printk_index", align 4
@ecryptfs_parse_tag_70_packet._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.46, ptr @.str.5, i32 1049, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013%s: Error attempting to decrypt filename; rc = [%d]\0A\00", [41 x i8] zeroinitializer }, align 32
@ecryptfs_parse_tag_70_packet._entry_ptr.76 = internal global ptr @ecryptfs_parse_tag_70_packet._entry.74, section ".printk_index", align 4
@ecryptfs_parse_tag_70_packet._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.46, ptr @.str.5, i32 1059, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [104 x i8], [56 x i8] } { [104 x i8] c"\014%s: Invalid tag 70 packet; could not find valid separator between random characters and the filename\0A\00", [56 x i8] zeroinitializer }, align 32
@ecryptfs_parse_tag_70_packet._entry_ptr.79 = internal global ptr @ecryptfs_parse_tag_70_packet._entry.77, section ".printk_index", align 4
@ecryptfs_parse_tag_70_packet._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.46, ptr @.str.5, i32 1067, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\014%s: Filename size is [%zd], which is invalid\0A\00", [48 x i8] zeroinitializer }, align 32
@ecryptfs_parse_tag_70_packet._entry_ptr.82 = internal global ptr @ecryptfs_parse_tag_70_packet._entry.80, section ".printk_index", align 4
@key_type_user = external dso_local global %struct.key_type, align 1
@ecryptfs_keyring_auth_tok_for_sig._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.84, ptr @.str.5, i32 1620, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013Could not find key with description: [%s]\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"ecryptfs_keyring_auth_tok_for_sig\00", [62 x i8] zeroinitializer }, align 32
@ecryptfs_keyring_auth_tok_for_sig._entry_ptr = internal global ptr @ecryptfs_keyring_auth_tok_for_sig._entry, section ".printk_index", align 4
@.str.85 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013%s: Error parsing tag 3 packet\0A\00", [62 x i8] zeroinitializer }, align 32
@__func__.ecryptfs_parse_packet_set = private unnamed_addr constant [26 x i8] c"ecryptfs_parse_packet_set\00", align 1
@.str.86 = internal constant { [118 x i8], [42 x i8] } { [118 x i8] c"\013%s: No valid (ecryptfs-specific) literal packet containing authentication token signature found after tag 3 packet\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013%s: Expected signature of size [%d]; read size [%zd]\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013%s: Error parsing tag 1 packet\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\014%s: Invalid packet set (Tag 11 not allowed by itself)\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [88 x i8], [40 x i8] } { [88 x i8] c"\017%s: No packet at offset [%zd] of the file header; hex value of character is [0x%.2x]\0A\00", [40 x i8] zeroinitializer }, align 32
@ecryptfs_parse_packet_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @__func__.ecryptfs_parse_packet_set, ptr @.str.5, i32 1854, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [131 x i8], [61 x i8] } { [131 x i8] c"\013The lower file appears to be a non-encrypted eCryptfs file; this is not supported in this version of the eCryptfs kernel module\0A\00", [61 x i8] zeroinitializer }, align 32
@ecryptfs_parse_packet_set._entry_ptr = internal global ptr @ecryptfs_parse_packet_set._entry, section ".printk_index", align 4
@ecryptfs_verbosity = external dso_local local_unnamed_addr global i32, align 4
@.str.92 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\017%s: Considering candidate auth tok:\0A\00", [57 x i8] zeroinitializer }, align 32
@ecryptfs_parse_packet_set._entry.93 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @__func__.ecryptfs_parse_packet_set, ptr @.str.5, i32 1878, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013Unrecognized candidate auth tok type: [%d]\0A\00", [50 x i8] zeroinitializer }, align 32
@ecryptfs_parse_packet_set._entry_ptr.95 = internal global ptr @ecryptfs_parse_packet_set._entry.93, section ".printk_index", align 4
@.str.96 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013%s: Could not find a usable authentication token\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [169 x i8], [55 x i8] } { [169 x i8] c"\014%s: Error decrypting the session key for authentication token with sig [%.*s]; rc = [%d]. Removing auth tok candidate from the list and searching for the next match.\0A\00", [55 x i8] zeroinitializer }, align 32
@ecryptfs_auth_tok_list_item_cache = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.98 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013%s: Error computing the root IV\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\013%s: Error initializing crypto context for cipher [%s]; rc = [%d]\0A\00", [60 x i8] zeroinitializer }, align 32
@ecryptfs_key_record_cache = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@ecryptfs_generate_key_packet_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.101, ptr @.str.5, i32 2430, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\014Unable to retrieve auth tok with sig = [%s]\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"ecryptfs_generate_key_packet_set\00", [63 x i8] zeroinitializer }, align 32
@ecryptfs_generate_key_packet_set._entry_ptr = internal global ptr @ecryptfs_generate_key_packet_set._entry, section ".printk_index", align 4
@.str.102 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\014%s: Error writing tag 3 packet\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013%s: Error writing auth tok signature packet\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\014%s: Error writing tag 1 packet\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\014%s: Unsupported authentication token type\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013%s: Error writing boundary byte\0A\00", [61 x i8] zeroinitializer }, align 32
@ecryptfs_key_sig_cache = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@ecryptfs_global_auth_tok_cache = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@key_type_encrypted = external dso_local global %struct.key_type, align 1
@.str.107 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"\014%s: No key\0A\00", [18 x i8] zeroinitializer }, align 32
@__func__.process_request_key_err = private unnamed_addr constant [24 x i8] c"process_request_key_err\00", align 1
@.str.108 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\014%s: Key expired\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\014%s: Key revoked\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\014%s: Unknown error code: [0x%.16lx]\0A\00", [58 x i8] zeroinitializer }, align 32
@ecryptfs_verify_auth_tok_from_key._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.111, ptr @.str.112, ptr @.str.5, i32 468, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [133 x i8], [59 x i8] } { [133 x i8] c"\013Data structure version mismatch. Userspace tools must match eCryptfs kernel module with major version [%d] and minor version [%d]\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"ecryptfs_verify_auth_tok_from_key\00", [62 x i8] zeroinitializer }, align 32
@ecryptfs_verify_auth_tok_from_key._entry_ptr = internal global ptr @ecryptfs_verify_auth_tok_from_key._entry, section ".printk_index", align 4
@ecryptfs_verify_auth_tok_from_key._entry.113 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.114, ptr @.str.112, ptr @.str.5, i32 475, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013Invalid auth_tok structure returned from key query\0A\00", [42 x i8] zeroinitializer }, align 32
@ecryptfs_verify_auth_tok_from_key._entry_ptr.115 = internal global ptr @ecryptfs_verify_auth_tok_from_key._entry.113, section ".printk_index", align 4
@user_key_payload_locked.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.116 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/keys/user-type.h\00", [39 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\013%s: Major version number mismatch. Expected [%d]; got [%d]\0A\00", [34 x i8] zeroinitializer }, align 32
@__func__.ecryptfs_verify_version = private unnamed_addr constant [24 x i8] c"ecryptfs_verify_version\00", align 1
@.str.119 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\013%s: Minor version number mismatch. Expected [%d]; got [%d]\0A\00", [34 x i8] zeroinitializer }, align 32
@parse_tag_3_packet._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.120, ptr @.str.121, ptr @.str.5, i32 1385, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013Max packet size too large\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"parse_tag_3_packet\00", [45 x i8] zeroinitializer }, align 32
@parse_tag_3_packet._entry_ptr = internal global ptr @parse_tag_3_packet._entry, section ".printk_index", align 4
@parse_tag_3_packet._entry.122 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.123, ptr @.str.121, ptr @.str.5, i32 1391, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013First byte != 0x%.2x; invalid packet\0A\00", [56 x i8] zeroinitializer }, align 32
@parse_tag_3_packet._entry_ptr.124 = internal global ptr @parse_tag_3_packet._entry.122, section ".printk_index", align 4
@parse_tag_3_packet._entry.125 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.126, ptr @.str.121, ptr @.str.5, i32 1400, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013Unable to allocate memory\0A\00", [35 x i8] zeroinitializer }, align 32
@parse_tag_3_packet._entry_ptr.127 = internal global ptr @parse_tag_3_packet._entry.125, section ".printk_index", align 4
@parse_tag_3_packet._entry.128 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.129, ptr @.str.121, ptr @.str.5, i32 1409, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\014Error parsing packet length; rc = [%d]\0A\00", [54 x i8] zeroinitializer }, align 32
@parse_tag_3_packet._entry_ptr.130 = internal global ptr @parse_tag_3_packet._entry.128, section ".printk_index", align 4
@parse_tag_3_packet._entry.131 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.132, ptr @.str.121, ptr @.str.5, i32 1413, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\014Invalid body size ([%td])\0A\00", [35 x i8] zeroinitializer }, align 32
@parse_tag_3_packet._entry_ptr.133 = internal global ptr @parse_tag_3_packet._entry.131, section ".printk_index", align 4
@parse_tag_3_packet._entry.134 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.135, ptr @.str.121, ptr @.str.5, i32 1419, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013Packet size exceeds max\0A\00", [37 x i8] zeroinitializer }, align 32
@parse_tag_3_packet._entry_ptr.136 = internal global ptr @parse_tag_3_packet._entry.134, section ".printk_index", align 4
@parse_tag_3_packet._entry.137 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.138, ptr @.str.121, ptr @.str.5, i32 1428, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"\014Tag 3 packet contains key larger than ECRYPTFS_MAX_ENCRYPTED_KEY_BYTES\0A\00", [54 x i8] zeroinitializer }, align 32
@parse_tag_3_packet._entry_ptr.139 = internal global ptr @parse_tag_3_packet._entry.137, section ".printk_index", align 4
@parse_tag_3_packet._entry.140 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.141, ptr @.str.121, ptr @.str.5, i32 1434, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\014Unknown version number [%d]\0A\00", [33 x i8] zeroinitializer }, align 32
@parse_tag_3_packet._entry_ptr.142 = internal global ptr @parse_tag_3_packet._entry.140, section ".printk_index", align 4
@parse_tag_3_packet._entry.143 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.144, ptr @.str.121, ptr @.str.5, i32 1456, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\014Only S2K ID 3 is currently supported\0A\00", [56 x i8] zeroinitializer }, align 32
@parse_tag_3_packet._entry_ptr.145 = internal global ptr @parse_tag_3_packet._entry.143, section ".printk_index", align 4
@.str.146 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013%s: Unsupported hash algorithm: [%d]\0A\00", [56 x i8] zeroinitializer }, align 32
@parse_tag_11_packet._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.148, ptr @.str.5, i32 1555, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013Maximum packet size too small\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"parse_tag_11_packet\00", [44 x i8] zeroinitializer }, align 32
@parse_tag_11_packet._entry_ptr = internal global ptr @parse_tag_11_packet._entry, section ".printk_index", align 4
@parse_tag_11_packet._entry.149 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.150, ptr @.str.148, ptr @.str.5, i32 1560, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\014Invalid tag 11 packet format\0A\00", [32 x i8] zeroinitializer }, align 32
@parse_tag_11_packet._entry_ptr.151 = internal global ptr @parse_tag_11_packet._entry.149, section ".printk_index", align 4
@parse_tag_11_packet._entry.152 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.150, ptr @.str.148, ptr @.str.5, i32 1567, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@parse_tag_11_packet._entry_ptr.153 = internal global ptr @parse_tag_11_packet._entry.152, section ".printk_index", align 4
@parse_tag_11_packet._entry.154 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.132, ptr @.str.148, ptr @.str.5, i32 1571, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@parse_tag_11_packet._entry_ptr.155 = internal global ptr @parse_tag_11_packet._entry.154, section ".printk_index", align 4
@parse_tag_11_packet._entry.156 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.135, ptr @.str.148, ptr @.str.5, i32 1578, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@parse_tag_11_packet._entry_ptr.157 = internal global ptr @parse_tag_11_packet._entry.156, section ".printk_index", align 4
@parse_tag_11_packet._entry.158 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.148, ptr @.str.5, i32 1584, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\013Literal data section in tag 11 packet exceeds expected size\0A\00", [33 x i8] zeroinitializer }, align 32
@parse_tag_11_packet._entry_ptr.160 = internal global ptr @parse_tag_11_packet._entry.158, section ".printk_index", align 4
@parse_tag_11_packet._entry.161 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.162, ptr @.str.148, ptr @.str.5, i32 1589, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\014Unrecognizable packet\0A\00", [39 x i8] zeroinitializer }, align 32
@parse_tag_11_packet._entry_ptr.163 = internal global ptr @parse_tag_11_packet._entry.161, section ".printk_index", align 4
@parse_tag_11_packet._entry.164 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.162, ptr @.str.148, ptr @.str.5, i32 1594, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@parse_tag_11_packet._entry_ptr.165 = internal global ptr @parse_tag_11_packet._entry.164, section ".printk_index", align 4
@parse_tag_1_packet._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.166, ptr @.str.167, ptr @.str.5, i32 1250, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013Invalid max packet size; must be >=12\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"parse_tag_1_packet\00", [45 x i8] zeroinitializer }, align 32
@parse_tag_1_packet._entry_ptr = internal global ptr @parse_tag_1_packet._entry, section ".printk_index", align 4
@parse_tag_1_packet._entry.168 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.169, ptr @.str.167, ptr @.str.5, i32 1256, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013Enter w/ first byte != 0x%.2x\0A\00", [63 x i8] zeroinitializer }, align 32
@parse_tag_1_packet._entry_ptr.170 = internal global ptr @parse_tag_1_packet._entry.168, section ".printk_index", align 4
@parse_tag_1_packet._entry.171 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.126, ptr @.str.167, ptr @.str.5, i32 1266, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@parse_tag_1_packet._entry_ptr.172 = internal global ptr @parse_tag_1_packet._entry.171, section ".printk_index", align 4
@parse_tag_1_packet._entry.173 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.129, ptr @.str.167, ptr @.str.5, i32 1275, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@parse_tag_1_packet._entry_ptr.174 = internal global ptr @parse_tag_1_packet._entry.173, section ".printk_index", align 4
@parse_tag_1_packet._entry.175 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.132, ptr @.str.167, ptr @.str.5, i32 1279, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@parse_tag_1_packet._entry_ptr.176 = internal global ptr @parse_tag_1_packet._entry.175, section ".printk_index", align 4
@parse_tag_1_packet._entry.177 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.178, ptr @.str.167, ptr @.str.5, i32 1285, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\014Packet size exceeds max\0A\00", [37 x i8] zeroinitializer }, align 32
@parse_tag_1_packet._entry_ptr.179 = internal global ptr @parse_tag_1_packet._entry.177, section ".printk_index", align 4
@parse_tag_1_packet._entry.180 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.141, ptr @.str.167, ptr @.str.5, i32 1291, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@parse_tag_1_packet._entry_ptr.181 = internal global ptr @parse_tag_1_packet._entry.180, section ".printk_index", align 4
@parse_tag_1_packet._entry.182 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.183, ptr @.str.167, ptr @.str.5, i32 1306, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"\014Tag 1 packet contains key larger than ECRYPTFS_MAX_ENCRYPTED_KEY_BYTES\0A\00", [54 x i8] zeroinitializer }, align 32
@parse_tag_1_packet._entry_ptr.184 = internal global ptr @parse_tag_1_packet._entry.182, section ".printk_index", align 4
@ecryptfs_get_auth_tok_sig._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.185, ptr @.str.186, ptr @.str.5, i32 1112, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013Cannot get sig for auth_tok of type [%d]\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ecryptfs_get_auth_tok_sig\00", [38 x i8] zeroinitializer }, align 32
@ecryptfs_get_auth_tok_sig._entry_ptr = internal global ptr @ecryptfs_get_auth_tok_sig._entry, section ".printk_index", align 4
@decrypt_pki_encrypted_session_key._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.187, ptr @.str.188, ptr @.str.5, i32 1140, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013Unrecognized auth tok type: [%d]\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"decrypt_pki_encrypted_session_key\00", [62 x i8] zeroinitializer }, align 32
@decrypt_pki_encrypted_session_key._entry_ptr = internal global ptr @decrypt_pki_encrypted_session_key._entry, section ".printk_index", align 4
@.str.189 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013%s: Failed to write tag 64 packet\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013%s: Error sending message to ecryptfsd: %d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\013%s: Failed to receive tag 65 packet from the user space daemon\0A\00", [62 x i8] zeroinitializer }, align 32
@decrypt_pki_encrypted_session_key._entry.192 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.193, ptr @.str.188, ptr @.str.5, i32 1166, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013Failed to parse tag 65 packet; rc = [%d]\0A\00", [52 x i8] zeroinitializer }, align 32
@decrypt_pki_encrypted_session_key._entry_ptr.194 = internal global ptr @decrypt_pki_encrypted_session_key._entry.192, section ".printk_index", align 4
@.str.195 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013%s: Cipher code [%d] is invalid\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\017%s: Decrypted session key:\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013%s: Unable to allocate memory\0A\00", [63 x i8] zeroinitializer }, align 32
@__func__.write_tag_64_packet = private unnamed_addr constant [20 x i8] c"write_tag_64_packet\00", align 1
@.str.198 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"\013%s: Error generating tag 64 packet header; cannot generate packet length\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013%s: Type should be ECRYPTFS_TAG_65\0A\00", [58 x i8] zeroinitializer }, align 32
@__func__.parse_tag_65_packet = private unnamed_addr constant [20 x i8] c"parse_tag_65_packet\00", align 1
@.str.200 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013%s: Status indicator has non-zero value [%d]\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\013%s: The message received from ecryptfsd is shorter than expected\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.202 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"\013%s: The decrypted key is not long enough to include a cipher code and checksum\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\013%s: key_size [%d] larger than the maximum key size [%d]\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"\013%s: Invalid checksum for file encryption  key; expected [%x]; calculated [%x]\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.205 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\017%s: Session key encryption key (size [%d]):\0A\00", [49 x i8] zeroinitializer }, align 32
@__func__.decrypt_passphrase_encrypted_session_key = private unnamed_addr constant [41 x i8] c"decrypt_passphrase_encrypted_session_key\00", align 1
@decrypt_passphrase_encrypted_session_key._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @__func__.decrypt_passphrase_encrypted_session_key, ptr @.str.5, i32 1669, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@decrypt_passphrase_encrypted_session_key._entry_ptr = internal global ptr @decrypt_passphrase_encrypted_session_key._entry, section ".printk_index", align 4
@decrypt_passphrase_encrypted_session_key._entry.206 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.207, ptr @__func__.decrypt_passphrase_encrypted_session_key, ptr @.str.5, i32 1680, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [179 x i8], [45 x i8] } { [179 x i8] c"\013Internal error whilst attempting to convert auth_tok->session_key.encrypted_key to scatterlist; expected rc = 1; got rc = [%d]. auth_tok->session_key.encrypted_key_size = [%d]\0A\00", [45 x i8] zeroinitializer }, align 32
@decrypt_passphrase_encrypted_session_key._entry_ptr.208 = internal global ptr @decrypt_passphrase_encrypted_session_key._entry.206, section ".printk_index", align 4
@decrypt_passphrase_encrypted_session_key._entry.209 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.210, ptr @__func__.decrypt_passphrase_encrypted_session_key, ptr @.str.5, i32 1691, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.210 = internal constant { [130 x i8], [62 x i8] } { [130 x i8] c"\013Internal error whilst attempting to convert auth_tok->session_key.decrypted_key to scatterlist; expected rc = 1; got rc = [%d]\0A\00", [62 x i8] zeroinitializer }, align 32
@decrypt_passphrase_encrypted_session_key._entry_ptr.211 = internal global ptr @decrypt_passphrase_encrypted_session_key._entry.209, section ".printk_index", align 4
@decrypt_passphrase_encrypted_session_key._entry.212 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @__func__.decrypt_passphrase_encrypted_session_key, ptr @.str.5, i32 1700, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@decrypt_passphrase_encrypted_session_key._entry_ptr.213 = internal global ptr @decrypt_passphrase_encrypted_session_key._entry.212, section ".printk_index", align 4
@decrypt_passphrase_encrypted_session_key._entry.214 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.215, ptr @__func__.decrypt_passphrase_encrypted_session_key, ptr @.str.5, i32 1712, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.215 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013Error setting key for crypto context\0A\00", [56 x i8] zeroinitializer }, align 32
@decrypt_passphrase_encrypted_session_key._entry_ptr.216 = internal global ptr @decrypt_passphrase_encrypted_session_key._entry.214, section ".printk_index", align 4
@decrypt_passphrase_encrypted_session_key._entry.217 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.218, ptr @__func__.decrypt_passphrase_encrypted_session_key, ptr @.str.5, i32 1722, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.218 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013Error decrypting; rc = [%d]\0A\00", [33 x i8] zeroinitializer }, align 32
@decrypt_passphrase_encrypted_session_key._entry_ptr.219 = internal global ptr @decrypt_passphrase_encrypted_session_key._entry.217, section ".printk_index", align 4
@.str.220 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017%s: FEK of size [%zd]:\0A\00", [38 x i8] zeroinitializer }, align 32
@ecryptfs_find_global_auth_tok_for_sig._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.221, ptr @.str.222, ptr @.str.5, i32 528, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.221 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\014Invalidating auth tok with sig = [%s]\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.222 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"ecryptfs_find_global_auth_tok_for_sig\00", [58 x i8] zeroinitializer }, align 32
@ecryptfs_find_global_auth_tok_for_sig._entry_ptr = internal global ptr @ecryptfs_find_global_auth_tok_for_sig._entry, section ".printk_index", align 4
@.str.223 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\014%s: Missing auth tok\0A\00", [40 x i8] zeroinitializer }, align 32
@__func__.process_find_global_auth_tok_for_sig_err = private unnamed_addr constant [41 x i8] c"process_find_global_auth_tok_for_sig_err\00", align 1
@.str.224 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\014%s: Invalid auth tok\0A\00", [40 x i8] zeroinitializer }, align 32
@write_tag_3_packet._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.225, ptr @.str.5, i32 2202, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.225 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"write_tag_3_packet\00", [45 x i8] zeroinitializer }, align 32
@write_tag_3_packet._entry_ptr = internal global ptr @write_tag_3_packet._entry, section ".printk_index", align 4
@write_tag_3_packet._entry.226 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.227, ptr @.str.225, ptr @.str.5, i32 2208, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.227 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\014No key size specified at mount; defaulting to [%d]\0A\00", [42 x i8] zeroinitializer }, align 32
@write_tag_3_packet._entry_ptr.228 = internal global ptr @write_tag_3_packet._entry.226, section ".printk_index", align 4
@.str.229 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"aes\00", [28 x i8] zeroinitializer }, align 32
@.str.230 = internal constant { [120 x i8], [40 x i8] } { [120 x i8] c"\017%s: encrypted_session_key_valid != 0; using auth_tok->session_key.encrypted_key, where key_rec->enc_key_size = [%zd]\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.231 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"\017%s: Using previously generated session key encryption key of size [%d]\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.232 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\017%s: Cached session key encryption key:\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.233 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\017%s: Session key encryption key:\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.234 = internal constant { [126 x i8], [34 x i8] } { [126 x i8] c"\013%s: Error generating scatterlist for crypt_stat session key; expected rc = 1; got rc = [%d]. key_rec->enc_key_size = [%zd]\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.235 = internal constant { [136 x i8], [56 x i8] } { [136 x i8] c"\013%s: Error generating scatterlist for crypt_stat encrypted session key; expected rc = 1; got rc = [%d]. key_rec->enc_key_size = [%zd]\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.236 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013%s: Error setting key for crypto context; rc = [%d]\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.237 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\017%s: Encrypting [%zd] bytes of the key\0A\00", [55 x i8] zeroinitializer }, align 32
@write_tag_3_packet._entry.238 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.239, ptr @.str.225, ptr @.str.5, i32 2311, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.239 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013Error encrypting; rc = [%d]\0A\00", [33 x i8] zeroinitializer }, align 32
@write_tag_3_packet._entry_ptr.240 = internal global ptr @write_tag_3_packet._entry.238, section ".printk_index", align 4
@.str.241 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\017%s: This should be the encrypted key:\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.242 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\017%s: EFEK of size [%zd]:\0A\00", [37 x i8] zeroinitializer }, align 32
@write_tag_3_packet._entry.243 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.244, ptr @.str.225, ptr @.str.5, i32 2336, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.244 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"\013Packet too large; need up to [%td] bytes, but there are only [%td] available\0A\00", [48 x i8] zeroinitializer }, align 32
@write_tag_3_packet._entry_ptr.245 = internal global ptr @write_tag_3_packet._entry.243, section ".printk_index", align 4
@write_tag_3_packet._entry.246 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.247, ptr @.str.225, ptr @.str.5, i32 2348, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.247 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"\013Error generating tag 3 packet header; cannot generate packet length. rc = [%d]\0A\00", [46 x i8] zeroinitializer }, align 32
@write_tag_3_packet._entry_ptr.248 = internal global ptr @write_tag_3_packet._entry.246, section ".printk_index", align 4
@.str.249 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\014%s: Unable to generate code for cipher [%s]\0A\00", [49 x i8] zeroinitializer }, align 32
@write_tag_11_packet._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.250, ptr @.str.251, ptr @.str.5, i32 2131, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.250 = internal constant { [107 x i8], [53 x i8] } { [107 x i8] c"\013Packet length larger than maximum allowable; need up to [%td] bytes, but there are only [%td] available\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.251 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"write_tag_11_packet\00", [44 x i8] zeroinitializer }, align 32
@write_tag_11_packet._entry_ptr = internal global ptr @write_tag_11_packet._entry, section ".printk_index", align 4
@write_tag_11_packet._entry.252 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.253, ptr @.str.251, ptr @.str.5, i32 2141, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.253 = internal constant { [83 x i8], [45 x i8] } { [83 x i8] c"\013Error generating tag 11 packet header; cannot generate packet length. rc = [%d]\0A\00", [45 x i8] zeroinitializer }, align 32
@write_tag_11_packet._entry_ptr.254 = internal global ptr @write_tag_11_packet._entry.252, section ".printk_index", align 4
@write_tag_1_packet._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.256, ptr @.str.257, ptr @.str.5, i32 2052, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.256 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\013Failed to encrypt session key via a key module; rc = [%d]\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.257 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"write_tag_1_packet\00", [45 x i8] zeroinitializer }, align 32
@write_tag_1_packet._entry_ptr = internal global ptr @write_tag_1_packet._entry, section ".printk_index", align 4
@.str.258 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\017%s: Encrypted key:\0A\00", [42 x i8] zeroinitializer }, align 32
@write_tag_1_packet._entry.259 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.250, ptr @.str.257, ptr @.str.5, i32 2071, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@write_tag_1_packet._entry_ptr.260 = internal global ptr @write_tag_1_packet._entry.259, section ".printk_index", align 4
@.str.261 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"\013%s: Error generating tag 1 packet header; cannot generate packet length\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.262 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013%s: Error generating tag 66 packet\0A\00", [58 x i8] zeroinitializer }, align 32
@__func__.pki_encrypt_session_key = private unnamed_addr constant [24 x i8] c"pki_encrypt_session_key\00", align 1
@.str.263 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\013%s: Failed to receive tag 67 packet from the user space daemon\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.264 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013%s: Error parsing tag 67 packet\0A\00", [61 x i8] zeroinitializer }, align 32
@__func__.write_tag_66_packet = private unnamed_addr constant [20 x i8] c"write_tag_66_packet\00", align 1
@.str.265 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"\013%s: Error generating tag 66 packet header; cannot generate packet length\0A\00", [52 x i8] zeroinitializer }, align 32
@parse_tag_67_packet._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.266, ptr @.str.267, ptr @.str.5, i32 368, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.266 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"\013%s: message_len is [%zd]; minimum acceptable message length is [%d]\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.267 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"parse_tag_67_packet\00", [44 x i8] zeroinitializer }, align 32
@parse_tag_67_packet._entry_ptr = internal global ptr @parse_tag_67_packet._entry, section ".printk_index", align 4
@parse_tag_67_packet._entry.268 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.269, ptr @.str.267, ptr @.str.5, i32 374, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.269 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013%s: Type should be ECRYPTFS_TAG_67\0A\00", [58 x i8] zeroinitializer }, align 32
@parse_tag_67_packet._entry_ptr.270 = internal global ptr @parse_tag_67_packet._entry.268, section ".printk_index", align 4
@parse_tag_67_packet._entry.271 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.272, ptr @.str.267, ptr @.str.5, i32 380, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.272 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013%s: Status indicator has non zero value [%d]\0A\00", [48 x i8] zeroinitializer }, align 32
@parse_tag_67_packet._entry_ptr.273 = internal global ptr @parse_tag_67_packet._entry.271, section ".printk_index", align 4
@parse_tag_67_packet._entry.274 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.275, ptr @.str.267, ptr @.str.5, i32 395, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.275 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013%s: message_len [%zd]; max len is [%zd]\0A\00", [53 x i8] zeroinitializer }, align 32
@parse_tag_67_packet._entry_ptr.276 = internal global ptr @parse_tag_67_packet._entry.274, section ".printk_index", align 4
@parse_tag_67_packet._entry.277 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.278, ptr @.str.267, ptr @.str.5, i32 403, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.278 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"\013%s: Encrypted key_size [%zd] larger than the maximum key size [%d]\0A\00", [58 x i8] zeroinitializer }, align 32
@parse_tag_67_packet._entry_ptr.279 = internal global ptr @parse_tag_67_packet._entry.277, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 4294967168, i64 4294967169, i64 4294967170]
@__sancov_gen_cov_switch_values.280 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 140, i64 237]
@__sancov_gen_cov_switch_values.281 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 1]
@__sancov_gen_cov_switch_values.282 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 1]
@__sancov_gen_cov_switch_values.283 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 1]
@__sancov_gen_cov_switch_values.284 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 1]
@__sancov_gen_cov_switch_values.285 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967169]
@__sancov_gen_cov_switch_values.286 = internal global [7 x i64] [i64 5, i64 32, i64 4294967168, i64 4294967169, i64 4294967170, i64 4294967274, i64 4294967294]
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 99, i32 3 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 104, i32 3 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 137, i32 3 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 638, i32 3 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 647, i32 3 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 680, i32 3 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 689, i32 3 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 712, i32 3 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 726, i32 3 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 738, i32 3 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 742, i32 35 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 745, i32 4 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 765, i32 3 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 779, i32 5 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 795, i32 3 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 804, i32 3 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 819, i32 3 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 832, i32 3 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 909, i32 3 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 924, i32 3 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 934, i32 3 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 942, i32 3 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 957, i32 3 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 965, i32 3 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 974, i32 3 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 983, i32 3 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 999, i32 3 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 1008, i32 3 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 1026, i32 3 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 1035, i32 3 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 1048, i32 3 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 1057, i32 3 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 1066, i32 3 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 1619, i32 4 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 1787, i32 5 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 1800, i32 5 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 1811, i32 5 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 1831, i32 5 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 1840, i32 4 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 1845, i32 4 }
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 1852, i32 3 }
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 1869, i32 4 }
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 1876, i32 4 }
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 1892, i32 3 }
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 1922, i32 3 }
@___asan_gen_.509 = private unnamed_addr constant [34 x i8] c"ecryptfs_auth_tok_list_item_cache\00", align 1
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 1204, i32 20 }
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 1944, i32 3 }
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 1950, i32 3 }
@___asan_gen_.518 = private unnamed_addr constant [26 x i8] c"ecryptfs_key_record_cache\00", align 1
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 2381, i32 20 }
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 2429, i32 4 }
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 2442, i32 5 }
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 2452, i32 5 }
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 2462, i32 5 }
@___asan_gen_.541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 2470, i32 4 }
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 2479, i32 3 }
@___asan_gen_.545 = private unnamed_addr constant [23 x i8] c"ecryptfs_key_sig_cache\00", align 1
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 2491, i32 20 }
@___asan_gen_.548 = private unnamed_addr constant [31 x i8] c"ecryptfs_global_auth_tok_cache\00", align 1
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 2509, i32 20 }
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 35, i32 3 }
@___asan_gen_.556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 39, i32 3 }
@___asan_gen_.559 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 43, i32 3 }
@___asan_gen_.562 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 47, i32 3 }
@___asan_gen_.571 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 465, i32 3 }
@___asan_gen_.577 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 474, i32 3 }
@___asan_gen_.582 = private unnamed_addr constant [28 x i8] c"../include/keys/user-type.h\00", align 1
@___asan_gen_.583 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.582, i32 53, i32 36 }
@___asan_gen_.586 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 426, i32 3 }
@___asan_gen_.589 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 433, i32 3 }
@___asan_gen_.598 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 1385, i32 3 }
@___asan_gen_.604 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 1390, i32 3 }
@___asan_gen_.610 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 1400, i32 3 }
@___asan_gen_.616 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 1408, i32 3 }
@___asan_gen_.622 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 1413, i32 3 }
@___asan_gen_.628 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 1419, i32 3 }
@___asan_gen_.634 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 1427, i32 3 }
@___asan_gen_.640 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 1433, i32 3 }
@___asan_gen_.646 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 1456, i32 3 }
@___asan_gen_.649 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 1487, i32 3 }
@___asan_gen_.658 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 1555, i32 3 }
@___asan_gen_.664 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 1560, i32 3 }
@___asan_gen_.667 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 1567, i32 3 }
@___asan_gen_.670 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 1571, i32 3 }
@___asan_gen_.673 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 1578, i32 3 }
@___asan_gen_.679 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 1583, i32 3 }
@___asan_gen_.685 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 1589, i32 3 }
@___asan_gen_.688 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 1594, i32 3 }
@___asan_gen_.697 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 1250, i32 3 }
@___asan_gen_.703 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 1255, i32 3 }
@___asan_gen_.706 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 1266, i32 3 }
@___asan_gen_.709 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 1274, i32 3 }
@___asan_gen_.712 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 1279, i32 3 }
@___asan_gen_.718 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 1285, i32 3 }
@___asan_gen_.721 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 1290, i32 3 }
@___asan_gen_.727 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 1305, i32 3 }
@___asan_gen_.736 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 1111, i32 3 }
@___asan_gen_.745 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 1139, i32 3 }
@___asan_gen_.748 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 1146, i32 3 }
@___asan_gen_.751 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 1151, i32 3 }
@___asan_gen_.754 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 1157, i32 3 }
@___asan_gen_.760 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 1165, i32 3 }
@___asan_gen_.763 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 1175, i32 3 }
@___asan_gen_.766 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 1181, i32 3 }
@___asan_gen_.769 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 166, i32 3 }
@___asan_gen_.772 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 174, i32 3 }
@___asan_gen_.775 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 225, i32 3 }
@___asan_gen_.778 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 230, i32 3 }
@___asan_gen_.781 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 243, i32 3 }
@___asan_gen_.784 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 249, i32 3 }
@___asan_gen_.787 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 259, i32 3 }
@___asan_gen_.790 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 274, i32 3 }
@___asan_gen_.793 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 1657, i32 3 }
@___asan_gen_.796 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 1667, i32 3 }
@___asan_gen_.802 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 1676, i32 3 }
@___asan_gen_.808 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 1689, i32 3 }
@___asan_gen_.811 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 1698, i32 3 }
@___asan_gen_.817 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 1712, i32 3 }
@___asan_gen_.823 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 1722, i32 3 }
@___asan_gen_.826 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 1730, i32 3 }
@___asan_gen_.835 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 528, i32 2 }
@___asan_gen_.838 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 60, i32 3 }
@___asan_gen_.841 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 63, i32 3 }
@___asan_gen_.847 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 2200, i32 3 }
@___asan_gen_.853 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 2206, i32 3 }
@___asan_gen_.856 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 2219, i32 16 }
@___asan_gen_.859 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 2231, i32 3 }
@___asan_gen_.862 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 2242, i32 3 }
@___asan_gen_.865 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 2249, i32 3 }
@___asan_gen_.868 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 2255, i32 3 }
@___asan_gen_.871 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 2261, i32 3 }
@___asan_gen_.874 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 2271, i32 3 }
@___asan_gen_.877 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 2284, i32 3 }
@___asan_gen_.880 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 2303, i32 2 }
@___asan_gen_.886 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 2311, i32 3 }
@___asan_gen_.889 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 2314, i32 2 }
@___asan_gen_.892 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 2316, i32 3 }
@___asan_gen_.898 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 2334, i32 3 }
@___asan_gen_.904 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 2347, i32 3 }
@___asan_gen_.907 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 2358, i32 3 }
@___asan_gen_.916 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 2129, i32 3 }
@___asan_gen_.922 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 2140, i32 3 }
@___asan_gen_.931 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 2051, i32 3 }
@___asan_gen_.934 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 2056, i32 3 }
@___asan_gen_.937 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 2069, i32 3 }
@___asan_gen_.940 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 2080, i32 3 }
@___asan_gen_.943 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 1980, i32 3 }
@___asan_gen_.946 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 1991, i32 3 }
@___asan_gen_.949 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 1998, i32 3 }
@___asan_gen_.952 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 317, i32 3 }
@___asan_gen_.961 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 367, i32 3 }
@___asan_gen_.967 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 373, i32 3 }
@___asan_gen_.973 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 379, i32 3 }
@___asan_gen_.979 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 394, i32 3 }
@___asan_gen_.980 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.983 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.984 = private constant [26 x i8] c"../fs/ecryptfs/keystore.c\00", align 1
@___asan_gen_.985 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 400, i32 3 }
@llvm.compiler.used = appending global [317 x ptr] [ptr @decrypt_passphrase_encrypted_session_key._entry, ptr @decrypt_passphrase_encrypted_session_key._entry.206, ptr @decrypt_passphrase_encrypted_session_key._entry.209, ptr @decrypt_passphrase_encrypted_session_key._entry.212, ptr @decrypt_passphrase_encrypted_session_key._entry.214, ptr @decrypt_passphrase_encrypted_session_key._entry.217, ptr @decrypt_passphrase_encrypted_session_key._entry_ptr, ptr @decrypt_passphrase_encrypted_session_key._entry_ptr.208, ptr @decrypt_passphrase_encrypted_session_key._entry_ptr.211, ptr @decrypt_passphrase_encrypted_session_key._entry_ptr.213, ptr @decrypt_passphrase_encrypted_session_key._entry_ptr.216, ptr @decrypt_passphrase_encrypted_session_key._entry_ptr.219, ptr @decrypt_pki_encrypted_session_key._entry, ptr @decrypt_pki_encrypted_session_key._entry.192, ptr @decrypt_pki_encrypted_session_key._entry_ptr, ptr @decrypt_pki_encrypted_session_key._entry_ptr.194, ptr @ecryptfs_find_global_auth_tok_for_sig._entry, ptr @ecryptfs_find_global_auth_tok_for_sig._entry_ptr, ptr @ecryptfs_generate_key_packet_set._entry, ptr @ecryptfs_generate_key_packet_set._entry_ptr, ptr @ecryptfs_get_auth_tok_sig._entry, ptr @ecryptfs_get_auth_tok_sig._entry_ptr, ptr @ecryptfs_keyring_auth_tok_for_sig._entry, ptr @ecryptfs_keyring_auth_tok_for_sig._entry_ptr, ptr @ecryptfs_parse_packet_set._entry, ptr @ecryptfs_parse_packet_set._entry.93, ptr @ecryptfs_parse_packet_set._entry_ptr, ptr @ecryptfs_parse_packet_set._entry_ptr.95, ptr @ecryptfs_parse_tag_70_packet._entry, ptr @ecryptfs_parse_tag_70_packet._entry.47, ptr @ecryptfs_parse_tag_70_packet._entry.50, ptr @ecryptfs_parse_tag_70_packet._entry.53, ptr @ecryptfs_parse_tag_70_packet._entry.56, ptr @ecryptfs_parse_tag_70_packet._entry.59, ptr @ecryptfs_parse_tag_70_packet._entry.61, ptr @ecryptfs_parse_tag_70_packet._entry.63, ptr @ecryptfs_parse_tag_70_packet._entry.65, ptr @ecryptfs_parse_tag_70_packet._entry.68, ptr @ecryptfs_parse_tag_70_packet._entry.70, ptr @ecryptfs_parse_tag_70_packet._entry.72, ptr @ecryptfs_parse_tag_70_packet._entry.74, ptr @ecryptfs_parse_tag_70_packet._entry.77, ptr @ecryptfs_parse_tag_70_packet._entry.80, ptr @ecryptfs_parse_tag_70_packet._entry_ptr, ptr @ecryptfs_parse_tag_70_packet._entry_ptr.49, ptr @ecryptfs_parse_tag_70_packet._entry_ptr.52, ptr @ecryptfs_parse_tag_70_packet._entry_ptr.55, ptr @ecryptfs_parse_tag_70_packet._entry_ptr.58, ptr @ecryptfs_parse_tag_70_packet._entry_ptr.60, ptr @ecryptfs_parse_tag_70_packet._entry_ptr.62, ptr @ecryptfs_parse_tag_70_packet._entry_ptr.64, ptr @ecryptfs_parse_tag_70_packet._entry_ptr.67, ptr @ecryptfs_parse_tag_70_packet._entry_ptr.69, ptr @ecryptfs_parse_tag_70_packet._entry_ptr.71, ptr @ecryptfs_parse_tag_70_packet._entry_ptr.73, ptr @ecryptfs_parse_tag_70_packet._entry_ptr.76, ptr @ecryptfs_parse_tag_70_packet._entry_ptr.79, ptr @ecryptfs_parse_tag_70_packet._entry_ptr.82, ptr @ecryptfs_verify_auth_tok_from_key._entry, ptr @ecryptfs_verify_auth_tok_from_key._entry.113, ptr @ecryptfs_verify_auth_tok_from_key._entry_ptr, ptr @ecryptfs_verify_auth_tok_from_key._entry_ptr.115, ptr @ecryptfs_write_tag_70_packet._entry, ptr @ecryptfs_write_tag_70_packet._entry.12, ptr @ecryptfs_write_tag_70_packet._entry.15, ptr @ecryptfs_write_tag_70_packet._entry.18, ptr @ecryptfs_write_tag_70_packet._entry.21, ptr @ecryptfs_write_tag_70_packet._entry.25, ptr @ecryptfs_write_tag_70_packet._entry.28, ptr @ecryptfs_write_tag_70_packet._entry.31, ptr @ecryptfs_write_tag_70_packet._entry.33, ptr @ecryptfs_write_tag_70_packet._entry.36, ptr @ecryptfs_write_tag_70_packet._entry.39, ptr @ecryptfs_write_tag_70_packet._entry.42, ptr @ecryptfs_write_tag_70_packet._entry.6, ptr @ecryptfs_write_tag_70_packet._entry.9, ptr @ecryptfs_write_tag_70_packet._entry_ptr, ptr @ecryptfs_write_tag_70_packet._entry_ptr.11, ptr @ecryptfs_write_tag_70_packet._entry_ptr.14, ptr @ecryptfs_write_tag_70_packet._entry_ptr.17, ptr @ecryptfs_write_tag_70_packet._entry_ptr.20, ptr @ecryptfs_write_tag_70_packet._entry_ptr.23, ptr @ecryptfs_write_tag_70_packet._entry_ptr.27, ptr @ecryptfs_write_tag_70_packet._entry_ptr.30, ptr @ecryptfs_write_tag_70_packet._entry_ptr.32, ptr @ecryptfs_write_tag_70_packet._entry_ptr.35, ptr @ecryptfs_write_tag_70_packet._entry_ptr.38, ptr @ecryptfs_write_tag_70_packet._entry_ptr.41, ptr @ecryptfs_write_tag_70_packet._entry_ptr.44, ptr @ecryptfs_write_tag_70_packet._entry_ptr.8, ptr @parse_tag_11_packet._entry, ptr @parse_tag_11_packet._entry.149, ptr @parse_tag_11_packet._entry.152, ptr @parse_tag_11_packet._entry.154, ptr @parse_tag_11_packet._entry.156, ptr @parse_tag_11_packet._entry.158, ptr @parse_tag_11_packet._entry.161, ptr @parse_tag_11_packet._entry.164, ptr @parse_tag_11_packet._entry_ptr, ptr @parse_tag_11_packet._entry_ptr.151, ptr @parse_tag_11_packet._entry_ptr.153, ptr @parse_tag_11_packet._entry_ptr.155, ptr @parse_tag_11_packet._entry_ptr.157, ptr @parse_tag_11_packet._entry_ptr.160, ptr @parse_tag_11_packet._entry_ptr.163, ptr @parse_tag_11_packet._entry_ptr.165, ptr @parse_tag_1_packet._entry, ptr @parse_tag_1_packet._entry.168, ptr @parse_tag_1_packet._entry.171, ptr @parse_tag_1_packet._entry.173, ptr @parse_tag_1_packet._entry.175, ptr @parse_tag_1_packet._entry.177, ptr @parse_tag_1_packet._entry.180, ptr @parse_tag_1_packet._entry.182, ptr @parse_tag_1_packet._entry_ptr, ptr @parse_tag_1_packet._entry_ptr.170, ptr @parse_tag_1_packet._entry_ptr.172, ptr @parse_tag_1_packet._entry_ptr.174, ptr @parse_tag_1_packet._entry_ptr.176, ptr @parse_tag_1_packet._entry_ptr.179, ptr @parse_tag_1_packet._entry_ptr.181, ptr @parse_tag_1_packet._entry_ptr.184, ptr @parse_tag_3_packet._entry, ptr @parse_tag_3_packet._entry.122, ptr @parse_tag_3_packet._entry.125, ptr @parse_tag_3_packet._entry.128, ptr @parse_tag_3_packet._entry.131, ptr @parse_tag_3_packet._entry.134, ptr @parse_tag_3_packet._entry.137, ptr @parse_tag_3_packet._entry.140, ptr @parse_tag_3_packet._entry.143, ptr @parse_tag_3_packet._entry_ptr, ptr @parse_tag_3_packet._entry_ptr.124, ptr @parse_tag_3_packet._entry_ptr.127, ptr @parse_tag_3_packet._entry_ptr.130, ptr @parse_tag_3_packet._entry_ptr.133, ptr @parse_tag_3_packet._entry_ptr.136, ptr @parse_tag_3_packet._entry_ptr.139, ptr @parse_tag_3_packet._entry_ptr.142, ptr @parse_tag_3_packet._entry_ptr.145, ptr @parse_tag_67_packet._entry, ptr @parse_tag_67_packet._entry.268, ptr @parse_tag_67_packet._entry.271, ptr @parse_tag_67_packet._entry.274, ptr @parse_tag_67_packet._entry.277, ptr @parse_tag_67_packet._entry_ptr, ptr @parse_tag_67_packet._entry_ptr.270, ptr @parse_tag_67_packet._entry_ptr.273, ptr @parse_tag_67_packet._entry_ptr.276, ptr @parse_tag_67_packet._entry_ptr.279, ptr @write_tag_11_packet._entry, ptr @write_tag_11_packet._entry.252, ptr @write_tag_11_packet._entry_ptr, ptr @write_tag_11_packet._entry_ptr.254, ptr @write_tag_1_packet._entry, ptr @write_tag_1_packet._entry.259, ptr @write_tag_1_packet._entry_ptr, ptr @write_tag_1_packet._entry_ptr.260, ptr @write_tag_3_packet._entry, ptr @write_tag_3_packet._entry.226, ptr @write_tag_3_packet._entry.238, ptr @write_tag_3_packet._entry.243, ptr @write_tag_3_packet._entry.246, ptr @write_tag_3_packet._entry_ptr, ptr @write_tag_3_packet._entry_ptr.228, ptr @write_tag_3_packet._entry_ptr.240, ptr @write_tag_3_packet._entry_ptr.245, ptr @write_tag_3_packet._entry_ptr.248, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @.str.24, ptr @.str.26, ptr @.str.29, ptr @.str.34, ptr @.str.37, ptr @.str.40, ptr @.str.43, ptr @.str.45, ptr @.str.46, ptr @.str.48, ptr @.str.51, ptr @.str.54, ptr @.str.57, ptr @.str.66, ptr @.str.75, ptr @.str.78, ptr @.str.81, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.94, ptr @.str.96, ptr @.str.97, ptr @ecryptfs_auth_tok_list_item_cache, ptr @.str.98, ptr @.str.99, ptr @ecryptfs_key_record_cache, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @ecryptfs_key_sig_cache, ptr @ecryptfs_global_auth_tok_cache, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.114, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.123, ptr @.str.126, ptr @.str.129, ptr @.str.132, ptr @.str.135, ptr @.str.138, ptr @.str.141, ptr @.str.144, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.150, ptr @.str.159, ptr @.str.162, ptr @.str.166, ptr @.str.167, ptr @.str.169, ptr @.str.178, ptr @.str.183, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @.str.191, ptr @.str.193, ptr @.str.195, ptr @.str.196, ptr @.str.197, ptr @.str.198, ptr @.str.199, ptr @.str.200, ptr @.str.201, ptr @.str.202, ptr @.str.203, ptr @.str.204, ptr @.str.205, ptr @.str.207, ptr @.str.210, ptr @.str.215, ptr @.str.218, ptr @.str.220, ptr @.str.221, ptr @.str.222, ptr @.str.223, ptr @.str.224, ptr @.str.225, ptr @.str.227, ptr @.str.229, ptr @.str.230, ptr @.str.231, ptr @.str.232, ptr @.str.233, ptr @.str.234, ptr @.str.235, ptr @.str.236, ptr @.str.237, ptr @.str.239, ptr @.str.241, ptr @.str.242, ptr @.str.244, ptr @.str.247, ptr @.str.249, ptr @.str.250, ptr @.str.251, ptr @.str.253, ptr @.str.256, ptr @.str.257, ptr @.str.258, ptr @.str.261, ptr @.str.262, ptr @.str.263, ptr @.str.264, ptr @.str.265, ptr @.str.266, ptr @.str.267, ptr @.str.269, ptr @.str.272, ptr @.str.275, ptr @.str.278], section "llvm.metadata"
@0 = internal global [233 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecryptfs_write_tag_70_packet._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecryptfs_write_tag_70_packet._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 89, i32 128, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecryptfs_write_tag_70_packet._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecryptfs_write_tag_70_packet._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecryptfs_write_tag_70_packet._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 87, i32 128, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecryptfs_write_tag_70_packet._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecryptfs_write_tag_70_packet._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecryptfs_write_tag_70_packet._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecryptfs_write_tag_70_packet._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecryptfs_write_tag_70_packet._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecryptfs_write_tag_70_packet._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 130, i32 192, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecryptfs_write_tag_70_packet._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 140, i32 192, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecryptfs_write_tag_70_packet._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 182, i32 224, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecryptfs_write_tag_70_packet._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecryptfs_parse_tag_70_packet._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecryptfs_parse_tag_70_packet._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecryptfs_parse_tag_70_packet._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecryptfs_parse_tag_70_packet._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecryptfs_parse_tag_70_packet._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecryptfs_parse_tag_70_packet._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecryptfs_parse_tag_70_packet._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecryptfs_parse_tag_70_packet._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecryptfs_parse_tag_70_packet._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 140, i32 192, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecryptfs_parse_tag_70_packet._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecryptfs_parse_tag_70_packet._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecryptfs_parse_tag_70_packet._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecryptfs_parse_tag_70_packet._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecryptfs_parse_tag_70_packet._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecryptfs_parse_tag_70_packet._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecryptfs_keyring_auth_tok_for_sig._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 118, i32 160, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecryptfs_parse_packet_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 131, i32 192, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecryptfs_parse_packet_set._entry.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 169, i32 224, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecryptfs_auth_tok_list_item_cache to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecryptfs_key_record_cache to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecryptfs_generate_key_packet_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecryptfs_key_sig_cache to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecryptfs_global_auth_tok_cache to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecryptfs_verify_auth_tok_from_key._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 133, i32 192, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecryptfs_verify_auth_tok_from_key._entry.113 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_tag_3_packet._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_tag_3_packet._entry.122 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_tag_3_packet._entry.125 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_tag_3_packet._entry.128 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_tag_3_packet._entry.131 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_tag_3_packet._entry.134 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_tag_3_packet._entry.137 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_tag_3_packet._entry.140 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_tag_3_packet._entry.143 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_tag_11_packet._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_tag_11_packet._entry.149 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_tag_11_packet._entry.152 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_tag_11_packet._entry.154 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_tag_11_packet._entry.156 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_tag_11_packet._entry.158 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_tag_11_packet._entry.161 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_tag_11_packet._entry.164 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_tag_1_packet._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_tag_1_packet._entry.168 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_tag_1_packet._entry.171 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_tag_1_packet._entry.173 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_tag_1_packet._entry.175 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_tag_1_packet._entry.177 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_tag_1_packet._entry.180 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_tag_1_packet._entry.182 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecryptfs_get_auth_tok_sig._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @decrypt_pki_encrypted_session_key._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.754 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @decrypt_pki_encrypted_session_key._entry.192 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @decrypt_passphrase_encrypted_session_key._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @decrypt_passphrase_encrypted_session_key._entry.206 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 179, i32 224, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @decrypt_passphrase_encrypted_session_key._entry.209 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 130, i32 192, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @decrypt_passphrase_encrypted_session_key._entry.212 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @decrypt_passphrase_encrypted_session_key._entry.214 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.215 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @decrypt_passphrase_encrypted_session_key._entry.217 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.218 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.220 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecryptfs_find_global_auth_tok_for_sig._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.221 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.222 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.223 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.224 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @write_tag_3_packet._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.225 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @write_tag_3_packet._entry.226 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.227 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.229 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.230 to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.231 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.232 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.233 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.234 to i32), i32 126, i32 160, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.235 to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.236 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.237 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @write_tag_3_packet._entry.238 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.239 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.241 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.242 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @write_tag_3_packet._entry.243 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.244 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @write_tag_3_packet._entry.246 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.247 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.249 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @write_tag_11_packet._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.250 to i32), i32 107, i32 160, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.251 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @write_tag_11_packet._entry.252 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.922 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.253 to i32), i32 83, i32 128, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.922 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @write_tag_1_packet._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.256 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.257 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.258 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.934 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @write_tag_1_packet._entry.259 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.261 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.940 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.262 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.263 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.264 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.265 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.952 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_tag_67_packet._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.266 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.267 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_tag_67_packet._entry.268 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.967 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.269 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.967 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_tag_67_packet._entry.271 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.272 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_tag_67_packet._entry.274 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.979 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.275 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.979 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_tag_67_packet._entry.277 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.278 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ecryptfs_parse_packet_length(ptr nocapture noundef readonly %data, ptr nocapture noundef writeonly %size, ptr nocapture noundef writeonly %length_size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %length_size to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %length_size, align 4
  %1 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %size, align 4
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %data, align 1
  %conv = zext i8 %3 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 -64, i8 %3)
  %cmp = icmp ult i8 %3, -64
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %conv, ptr %size, align 4
  %5 = ptrtoint ptr %length_size to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %length_size, align 4
  br label %out

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 -32, i8 %3)
  %cmp6 = icmp ult i8 %3, -32
  br i1 %cmp6, label %if.then8, label %if.else14

if.then8:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %sub = shl nuw nsw i32 %conv, 8
  %mul = add nsw i32 %sub, -49152
  %6 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %mul, ptr %size, align 4
  %arrayidx11 = getelementptr i8, ptr %data, i32 1
  %7 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx11, align 1
  %conv12 = zext i8 %8 to i32
  %add = add nsw i32 %sub, -48960
  %add13 = add nsw i32 %add, %conv12
  store i32 %add13, ptr %size, align 4
  %9 = ptrtoint ptr %length_size to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 2, ptr %length_size, align 4
  br label %out

if.else14:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %3)
  %cmp17 = icmp eq i8 %3, -1
  br i1 %cmp17, label %if.then19, label %if.else20

if.then19:                                        ; preds = %if.else14
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__ecryptfs_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.ecryptfs_parse_packet_length) #9
  br label %out

if.else20:                                        ; preds = %if.else14
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__ecryptfs_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.ecryptfs_parse_packet_length) #9
  br label %out

out:                                              ; preds = %if.else20, %if.then19, %if.then8, %if.then
  %rc.0 = phi i32 [ 0, %if.then ], [ 0, %if.then8 ], [ -22, %if.then19 ], [ -22, %if.else20 ]
  ret i32 %rc.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ecryptfs_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ecryptfs_write_packet_length(ptr nocapture noundef writeonly %dest, i32 noundef %size, ptr nocapture noundef writeonly %packet_size_length) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 192, i32 %size)
  %cmp = icmp ult i32 %size, 192
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %conv = trunc i32 %size to i8
  %0 = ptrtoint ptr %dest to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %conv, ptr %dest, align 1
  %1 = ptrtoint ptr %packet_size_length to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %packet_size_length, align 4
  br label %if.end10

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %size)
  %cmp1 = icmp ult i32 %size, 65536
  br i1 %cmp1, label %if.then3, label %if.else9

if.then3:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %sub = add nsw i32 %size, -192
  %div19 = lshr i32 %sub, 8
  %2 = trunc i32 %div19 to i8
  %conv4 = add i8 %2, -64
  %3 = ptrtoint ptr %dest to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv4, ptr %dest, align 1
  %conv7 = trunc i32 %sub to i8
  %arrayidx8 = getelementptr i8, ptr %dest, i32 1
  %4 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv7, ptr %arrayidx8, align 1
  %5 = ptrtoint ptr %packet_size_length to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 2, ptr %packet_size_length, align 4
  br label %if.end10

if.else9:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__ecryptfs_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.ecryptfs_write_packet_length, i32 noundef %size) #9
  br label %if.end10

if.end10:                                         ; preds = %if.else9, %if.then3, %if.then
  %rc.0 = phi i32 [ 0, %if.then ], [ 0, %if.then3 ], [ -22, %if.else9 ]
  ret i32 %rc.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ecryptfs_write_tag_70_packet(ptr noundef %dest, ptr nocapture noundef %remaining_bytes, ptr nocapture noundef writeonly %packet_size, ptr noundef %mount_crypt_stat, ptr nocapture noundef readonly %filename, i32 noundef %filename_size) local_unnamed_addr #0 align 64 {
entry:
  %auth_tok_key = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %auth_tok_key) #9
  %0 = ptrtoint ptr %auth_tok_key to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %auth_tok_key, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 188) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %packet_size to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %packet_size, align 4
  %auth_tok = getelementptr inbounds %struct.ecryptfs_write_tag_70_packet_silly_stack, ptr %call7.i.i, i32 0, i32 10
  %global_default_fnek_sig = getelementptr inbounds %struct.ecryptfs_mount_crypt_stat, ptr %mount_crypt_stat, i32 0, i32 7
  %call.i = call fastcc i32 @ecryptfs_find_global_auth_tok_for_sig(ptr noundef nonnull %auth_tok_key, ptr noundef %auth_tok, ptr noundef %mount_crypt_stat, ptr noundef %global_default_fnek_sig) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %call.i)
  %cmp.i444 = icmp eq i32 %call.i, -2
  br i1 %cmp.i444, label %if.then.i445, label %if.end.ecryptfs_find_auth_tok_for_sig.exit_crit_edge

if.end.ecryptfs_find_auth_tok_for_sig.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %ecryptfs_find_auth_tok_for_sig.exit

if.then.i445:                                     ; preds = %if.end
  %3 = ptrtoint ptr %mount_crypt_stat to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %mount_crypt_stat, align 4
  %and.i = and i32 %4, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i446, label %if.then.i445.do.end_crit_edge

if.then.i445.do.end_crit_edge:                    ; preds = %if.then.i445
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.end.i446:                                      ; preds = %if.then.i445
  call void @__sanitizer_cov_trace_pc() #11
  %call2.i = call i32 @ecryptfs_keyring_auth_tok_for_sig(ptr noundef nonnull %auth_tok_key, ptr noundef %auth_tok, ptr noundef %global_default_fnek_sig) #9
  br label %ecryptfs_find_auth_tok_for_sig.exit

ecryptfs_find_auth_tok_for_sig.exit:              ; preds = %if.end.i446, %if.end.ecryptfs_find_auth_tok_for_sig.exit_crit_edge
  %retval.0.i = phi i32 [ %call2.i, %if.end.i446 ], [ %call.i, %if.end.ecryptfs_find_auth_tok_for_sig.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool2.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool2.not, label %if.end7, label %ecryptfs_find_auth_tok_for_sig.exit.do.end_crit_edge

ecryptfs_find_auth_tok_for_sig.exit.do.end_crit_edge: ; preds = %ecryptfs_find_auth_tok_for_sig.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.end:                                           ; preds = %ecryptfs_find_auth_tok_for_sig.exit.do.end_crit_edge, %if.then.i445.do.end_crit_edge
  %retval.0.i489 = phi i32 [ %retval.0.i, %ecryptfs_find_auth_tok_for_sig.exit.do.end_crit_edge ], [ -22, %if.then.i445.do.end_crit_edge ]
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef %global_default_fnek_sig, i32 noundef %retval.0.i489) #13
  br label %out

if.end7:                                          ; preds = %ecryptfs_find_auth_tok_for_sig.exit
  %skcipher_tfm = getelementptr inbounds %struct.ecryptfs_write_tag_70_packet_silly_stack, ptr %call7.i.i, i32 0, i32 13
  %tfm_mutex = getelementptr inbounds %struct.ecryptfs_write_tag_70_packet_silly_stack, ptr %call7.i.i, i32 0, i32 8
  %global_default_fn_cipher_name = getelementptr inbounds %struct.ecryptfs_mount_crypt_stat, ptr %mount_crypt_stat, i32 0, i32 6
  %call9 = tail call i32 @ecryptfs_get_tfm_and_mutex_for_cipher_name(ptr noundef %skcipher_tfm, ptr noundef %tfm_mutex, ptr noundef %global_default_fn_cipher_name) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end21, label %do.end16, !prof !492

do.end16:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %global_default_fn_cipher_name, i32 noundef %call9) #13
  br label %out

if.end21:                                         ; preds = %if.end7
  %5 = ptrtoint ptr %tfm_mutex to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %tfm_mutex, align 8
  tail call void @mutex_lock_nested(ptr noundef %6, i32 noundef 0) #9
  %7 = ptrtoint ptr %skcipher_tfm to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %skcipher_tfm, align 4
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %8, i32 0, i32 2, i32 3
  %9 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %__crt_alg.i.i, align 4
  %cra_blocksize.i.i = getelementptr inbounds %struct.crypto_alg, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %cra_blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cra_blocksize.i.i, align 4
  %block_size = getelementptr inbounds %struct.ecryptfs_write_tag_70_packet_silly_stack, ptr %call7.i.i, i32 0, i32 4
  %13 = ptrtoint ptr %block_size to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %block_size, align 8
  %num_rand_bytes = getelementptr inbounds %struct.ecryptfs_write_tag_70_packet_silly_stack, ptr %call7.i.i, i32 0, i32 7
  %14 = ptrtoint ptr %num_rand_bytes to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 17, ptr %num_rand_bytes, align 4
  %add = add i32 %filename_size, 17
  %block_aligned_filename_size = getelementptr inbounds %struct.ecryptfs_write_tag_70_packet_silly_stack, ptr %call7.i.i, i32 0, i32 3
  %15 = ptrtoint ptr %block_aligned_filename_size to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %add, ptr %block_aligned_filename_size, align 4
  %rem = urem i32 %add, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp.not = icmp eq i32 %rem, 0
  br i1 %cmp.not, label %if.end21.if.end38_crit_edge, label %if.then28

if.end21.if.end38_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end38

if.then28:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  %sub = sub i32 %12, %rem
  %add34 = add i32 %sub, 17
  %16 = ptrtoint ptr %num_rand_bytes to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %add34, ptr %num_rand_bytes, align 4
  %add36 = add i32 %add34, %filename_size
  %17 = ptrtoint ptr %block_aligned_filename_size to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %add36, ptr %block_aligned_filename_size, align 4
  br label %if.end38

if.end38:                                         ; preds = %if.then28, %if.end21.if.end38_crit_edge
  %18 = ptrtoint ptr %block_aligned_filename_size to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %block_aligned_filename_size, align 4
  %add40 = add i32 %19, 13
  %max_packet_size = getelementptr inbounds %struct.ecryptfs_write_tag_70_packet_silly_stack, ptr %call7.i.i, i32 0, i32 1
  %20 = ptrtoint ptr %max_packet_size to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %add40, ptr %max_packet_size, align 4
  %tobool41.not = icmp eq ptr %dest, null
  br i1 %tobool41.not, label %if.then42, label %if.end44

if.then42:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  %21 = ptrtoint ptr %packet_size to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %add40, ptr %packet_size, align 4
  br label %out_unlock

if.end44:                                         ; preds = %if.end38
  %22 = ptrtoint ptr %remaining_bytes to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %remaining_bytes, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add40, i32 %23)
  %cmp46 = icmp ugt i32 %add40, %23
  br i1 %cmp46, label %do.end50, label %if.end54

do.end50:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  %call53 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.4, i32 noundef %add40, i32 noundef %23) #13
  br label %out_unlock

if.end54:                                         ; preds = %if.end44
  %24 = ptrtoint ptr %skcipher_tfm to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %skcipher_tfm, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 128
  %add.i = add i32 %27, 128
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i, i32 noundef 3264) #14
  %tobool.not.i451 = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not.i451, label %do.end62, label %if.end67, !prof !493

do.end62:                                         ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #11
  %skcipher_req491 = getelementptr inbounds %struct.ecryptfs_write_tag_70_packet_silly_stack, ptr %call7.i.i, i32 0, i32 14
  %28 = ptrtoint ptr %skcipher_req491 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %skcipher_req491, align 8
  %29 = ptrtoint ptr %skcipher_tfm to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %skcipher_tfm, align 4
  %__crt_alg.i.i454 = getelementptr inbounds %struct.crypto_skcipher, ptr %30, i32 0, i32 2, i32 3
  %31 = ptrtoint ptr %__crt_alg.i.i454 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %__crt_alg.i.i454, align 4
  %cra_driver_name.i.i = getelementptr inbounds %struct.crypto_alg, ptr %32, i32 0, i32 9
  %call66 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.4, ptr noundef %cra_driver_name.i.i) #13
  br label %out_unlock

if.end67:                                         ; preds = %if.end54
  %base.i.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %25, i32 0, i32 2
  %tfm1.i.i = getelementptr inbounds %struct.skcipher_request, ptr %call9.i.i, i32 0, i32 4, i32 3
  %33 = ptrtoint ptr %tfm1.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %base.i.i.i, ptr %tfm1.i.i, align 32
  %skcipher_req = getelementptr inbounds %struct.ecryptfs_write_tag_70_packet_silly_stack, ptr %call7.i.i, i32 0, i32 14
  %34 = ptrtoint ptr %skcipher_req to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call9.i.i, ptr %skcipher_req, align 8
  %complete.i = getelementptr inbounds %struct.skcipher_request, ptr %call9.i.i, i32 0, i32 4, i32 1
  %35 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %complete.i, align 8
  %data2.i = getelementptr inbounds %struct.skcipher_request, ptr %call9.i.i, i32 0, i32 4, i32 2
  %36 = ptrtoint ptr %data2.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %data2.i, align 4
  %flags4.i = getelementptr inbounds %struct.skcipher_request, ptr %call9.i.i, i32 0, i32 4, i32 4
  %37 = ptrtoint ptr %flags4.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 512, ptr %flags4.i, align 4
  %38 = ptrtoint ptr %block_aligned_filename_size to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %block_aligned_filename_size, align 4
  %call9.i.i480 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %39, i32 noundef 3520) #14
  %block_aligned_filename = getelementptr inbounds %struct.ecryptfs_write_tag_70_packet_silly_stack, ptr %call7.i.i, i32 0, i32 9
  %40 = ptrtoint ptr %block_aligned_filename to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call9.i.i480, ptr %block_aligned_filename, align 4
  %tobool72.not = icmp eq ptr %call9.i.i480, null
  br i1 %tobool72.not, label %if.end67.out_unlock_crit_edge, label %if.end74

if.end67.out_unlock_crit_edge:                    ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_unlock

if.end74:                                         ; preds = %if.end67
  %i = getelementptr inbounds %struct.ecryptfs_write_tag_70_packet_silly_stack, ptr %call7.i.i, i32 0, i32 5
  %41 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %i, align 4
  %inc = add i32 %42, 1
  store i32 %inc, ptr %i, align 4
  %arrayidx = getelementptr i8, ptr %dest, i32 %42
  %43 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 70, ptr %arrayidx, align 1
  %arrayidx76 = getelementptr i8, ptr %dest, i32 %inc
  %44 = ptrtoint ptr %block_aligned_filename_size to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %block_aligned_filename_size, align 4
  %add78 = add i32 %45, 9
  %packet_size_len = getelementptr inbounds %struct.ecryptfs_write_tag_70_packet_silly_stack, ptr %call7.i.i, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 192, i32 %add78)
  %cmp.i484 = icmp ult i32 %add78, 192
  br i1 %cmp.i484, label %if.then.i485, label %if.else.i

if.then.i485:                                     ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i = trunc i32 %add78 to i8
  %46 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %conv.i, ptr %arrayidx76, align 1
  br label %if.end87

if.else.i:                                        ; preds = %if.end74
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add78)
  %cmp1.i = icmp ult i32 %add78, 65536
  br i1 %cmp1.i, label %if.then3.i, label %do.end84

if.then3.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i = add nsw i32 %45, -183
  %div19.i = lshr i32 %sub.i, 8
  %47 = trunc i32 %div19.i to i8
  %conv4.i = add i8 %47, -64
  %48 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %conv4.i, ptr %arrayidx76, align 1
  %conv7.i = trunc i32 %sub.i to i8
  %arrayidx8.i = getelementptr i8, ptr %arrayidx76, i32 1
  %49 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %conv7.i, ptr %arrayidx8.i, align 1
  br label %if.end87

do.end84:                                         ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__ecryptfs_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.ecryptfs_write_packet_length, i32 noundef %add78) #9
  %call86 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.4, i32 noundef -22) #13
  br label %out_free_unlock

if.end87:                                         ; preds = %if.then3.i, %if.then.i485
  %storemerge504 = phi i32 [ 1, %if.then.i485 ], [ 2, %if.then3.i ]
  %50 = ptrtoint ptr %packet_size_len to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %storemerge504, ptr %packet_size_len, align 8
  %51 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %i, align 4
  %add90 = add i32 %52, %storemerge504
  store i32 %add90, ptr %i, align 4
  %arrayidx92 = getelementptr i8, ptr %dest, i32 %add90
  tail call void @ecryptfs_from_hex(ptr noundef %arrayidx92, ptr noundef %global_default_fnek_sig, i32 noundef 8) #9
  %53 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %i, align 4
  %add96 = add i32 %54, 8
  store i32 %add96, ptr %i, align 4
  %global_default_fn_cipher_key_bytes = getelementptr inbounds %struct.ecryptfs_mount_crypt_stat, ptr %mount_crypt_stat, i32 0, i32 4
  %55 = ptrtoint ptr %global_default_fn_cipher_key_bytes to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %global_default_fn_cipher_key_bytes, align 4
  %call99 = tail call zeroext i8 @ecryptfs_code_for_cipher_string(ptr noundef %global_default_fn_cipher_name, i32 noundef %56) #9
  %57 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %call99, ptr %call7.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call99)
  %cmp101 = icmp eq i8 %call99, 0
  br i1 %cmp101, label %do.end106, label %if.end112

do.end106:                                        ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #11
  %58 = ptrtoint ptr %global_default_fn_cipher_key_bytes to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %global_default_fn_cipher_key_bytes, align 4
  %call111 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.4, ptr noundef %global_default_fn_cipher_name, i32 noundef %59) #13
  br label %out_free_unlock

if.end112:                                        ; preds = %if.end87
  %60 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %i, align 4
  %inc115 = add i32 %61, 1
  store i32 %inc115, ptr %i, align 4
  %arrayidx116 = getelementptr i8, ptr %dest, i32 %61
  %62 = ptrtoint ptr %arrayidx116 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %call99, ptr %arrayidx116, align 1
  %63 = ptrtoint ptr %auth_tok to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %auth_tok, align 8
  %token_type = getelementptr inbounds %struct.ecryptfs_auth_tok, ptr %64, i32 0, i32 1
  %65 = ptrtoint ptr %token_type to i32
  call void @__asan_loadN_noabort(i32 %65, i32 2)
  %66 = load i16, ptr %token_type, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %66)
  %cmp119.not = icmp eq i16 %66, 0
  br i1 %cmp119.not, label %if.end127, label %if.then121

if.then121:                                       ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #11
  %call126 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.4) #13
  br label %out_free_unlock

if.end127:                                        ; preds = %if.end112
  %call128 = tail call ptr @crypto_alloc_shash(ptr noundef nonnull @.str.24, i32 noundef 0, i32 noundef 0) #9
  %hash_tfm = getelementptr inbounds %struct.ecryptfs_write_tag_70_packet_silly_stack, ptr %call7.i.i, i32 0, i32 18
  %67 = ptrtoint ptr %hash_tfm to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %call128, ptr %hash_tfm, align 4
  %cmp.i486 = icmp ugt ptr %call128, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i486, label %if.then131, label %if.end8.i

if.then131:                                       ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #11
  %68 = ptrtoint ptr %call128 to i32
  %call138 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.4, i32 noundef %68) #13
  br label %out_free_unlock

if.end8.i:                                        ; preds = %if.end127
  %69 = ptrtoint ptr %call128 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %call128, align 128
  %add142 = add i32 %70, 8
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add142, i32 noundef 3264) #14
  %hash_desc = getelementptr inbounds %struct.ecryptfs_write_tag_70_packet_silly_stack, ptr %call7.i.i, i32 0, i32 19
  %71 = ptrtoint ptr %hash_desc to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %call9.i, ptr %hash_desc, align 8
  %tobool145.not = icmp eq ptr %call9.i, null
  br i1 %tobool145.not, label %if.end8.i.out_release_free_unlock_crit_edge, label %if.end147

if.end8.i.out_release_free_unlock_crit_edge:      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_release_free_unlock

if.end147:                                        ; preds = %if.end8.i
  %72 = ptrtoint ptr %hash_tfm to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %hash_tfm, align 4
  %74 = ptrtoint ptr %call9.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %73, ptr %call9.i, align 128
  %75 = ptrtoint ptr %auth_tok to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %auth_tok, align 8
  %session_key_encryption_key = getelementptr inbounds %struct.ecryptfs_auth_tok, ptr %76, i32 0, i32 5, i32 0, i32 5
  %session_key_encryption_key_bytes = getelementptr inbounds %struct.ecryptfs_auth_tok, ptr %76, i32 0, i32 5, i32 0, i32 3
  %77 = ptrtoint ptr %session_key_encryption_key_bytes to i32
  call void @__asan_loadN_noabort(i32 %77, i32 4)
  %78 = load i32, ptr %session_key_encryption_key_bytes, align 1
  %hash = getelementptr inbounds %struct.ecryptfs_write_tag_70_packet_silly_stack, ptr %call7.i.i, i32 0, i32 16
  %call156 = tail call i32 @crypto_shash_digest(ptr noundef nonnull %call9.i, ptr noundef %session_key_encryption_key, i32 noundef %78, ptr noundef %hash) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call156)
  %tobool157.not = icmp eq i32 %call156, 0
  br i1 %tobool157.not, label %if.end164, label %do.end161

do.end161:                                        ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #11
  %call163 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.4, i32 noundef %call156) #13
  br label %out_release_free_unlock

if.end164:                                        ; preds = %if.end147
  %j = getelementptr inbounds %struct.ecryptfs_write_tag_70_packet_silly_stack, ptr %call7.i.i, i32 0, i32 6
  %79 = ptrtoint ptr %j to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 0, ptr %j, align 8
  %80 = ptrtoint ptr %num_rand_bytes to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %num_rand_bytes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %81)
  %cmp168507.not = icmp eq i32 %81, 1
  br i1 %cmp168507.not, label %if.end164.for.end_crit_edge, label %for.body.lr.ph

if.end164.for.end_crit_edge:                      ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end164
  %tmp_hash = getelementptr inbounds %struct.ecryptfs_write_tag_70_packet_silly_stack, ptr %call7.i.i, i32 0, i32 17
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %storemerge508 = phi i32 [ 0, %for.body.lr.ph ], [ %inc212, %for.inc.for.body_crit_edge ]
  %rem172 = and i32 %storemerge508, 15
  %arrayidx173 = getelementptr %struct.ecryptfs_write_tag_70_packet_silly_stack, ptr %call7.i.i, i32 0, i32 16, i32 %rem172
  %82 = ptrtoint ptr %arrayidx173 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %arrayidx173, align 1
  %84 = ptrtoint ptr %block_aligned_filename to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %block_aligned_filename, align 4
  %arrayidx176 = getelementptr i8, ptr %85, i32 %storemerge508
  %86 = ptrtoint ptr %arrayidx176 to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %83, ptr %arrayidx176, align 1
  %87 = ptrtoint ptr %j to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %j, align 8
  %rem178 = and i32 %88, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %rem178)
  %cmp179 = icmp eq i32 %rem178, 15
  br i1 %cmp179, label %if.then181, label %for.body.if.end199_crit_edge

for.body.if.end199_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end199

if.then181:                                       ; preds = %for.body
  %89 = ptrtoint ptr %hash_desc to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %hash_desc, align 8
  %call186 = tail call i32 @crypto_shash_digest(ptr noundef %90, ptr noundef %hash, i32 noundef 16, ptr noundef %tmp_hash) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call186)
  %tobool187.not = icmp eq i32 %call186, 0
  br i1 %tobool187.not, label %if.end194, label %do.end191

do.end191:                                        ; preds = %if.then181
  call void @__sanitizer_cov_trace_pc() #11
  %call193 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.4, i32 noundef %call186) #13
  br label %out_release_free_unlock

if.end194:                                        ; preds = %if.then181
  call void @__sanitizer_cov_trace_pc() #11
  %91 = call ptr @memcpy(ptr %hash, ptr %tmp_hash, i32 16)
  br label %if.end199

if.end199:                                        ; preds = %if.end194, %for.body.if.end199_crit_edge
  %92 = ptrtoint ptr %block_aligned_filename to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %block_aligned_filename, align 4
  %94 = ptrtoint ptr %j to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %j, align 8
  %arrayidx202 = getelementptr i8, ptr %93, i32 %95
  %96 = ptrtoint ptr %arrayidx202 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %arrayidx202, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %97)
  %cmp204 = icmp eq i8 %97, 0
  br i1 %cmp204, label %if.then206, label %if.end199.for.inc_crit_edge

if.end199.for.inc_crit_edge:                      ; preds = %if.end199
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then206:                                       ; preds = %if.end199
  call void @__sanitizer_cov_trace_pc() #11
  %98 = ptrtoint ptr %arrayidx202 to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 66, ptr %arrayidx202, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.then206, %if.end199.for.inc_crit_edge
  %99 = ptrtoint ptr %j to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %j, align 8
  %inc212 = add i32 %100, 1
  store i32 %inc212, ptr %j, align 8
  %101 = ptrtoint ptr %num_rand_bytes to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %num_rand_bytes, align 4
  %sub167 = add i32 %102, -1
  %cmp168 = icmp ult i32 %inc212, %sub167
  br i1 %cmp168, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end164.for.end_crit_edge
  %.lcssa = phi i32 [ 1, %if.end164.for.end_crit_edge ], [ %102, %for.inc.for.end_crit_edge ]
  %103 = ptrtoint ptr %block_aligned_filename to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %block_aligned_filename, align 4
  %arrayidx215 = getelementptr i8, ptr %104, i32 %.lcssa
  %105 = call ptr @memcpy(ptr %arrayidx215, ptr %filename, i32 %filename_size)
  %106 = load ptr, ptr %block_aligned_filename, align 4
  %107 = ptrtoint ptr %block_aligned_filename_size to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %block_aligned_filename_size, align 4
  %src_sg = getelementptr inbounds %struct.ecryptfs_write_tag_70_packet_silly_stack, ptr %call7.i.i, i32 0, i32 11
  %call219 = tail call i32 @virt_to_scatterlist(ptr noundef %106, i32 noundef %108, ptr noundef %src_sg, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call219)
  %cmp220 = icmp slt i32 %call219, 1
  br i1 %cmp220, label %do.end225, label %if.end229

do.end225:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %109 = ptrtoint ptr %block_aligned_filename_size to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %block_aligned_filename_size, align 4
  %call228 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.4, i32 noundef %call219, i32 noundef %110) #13
  br label %out_release_free_unlock

if.end229:                                        ; preds = %for.end
  %111 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %i, align 4
  %arrayidx231 = getelementptr i8, ptr %dest, i32 %112
  %113 = ptrtoint ptr %block_aligned_filename_size to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %block_aligned_filename_size, align 4
  %dst_sg = getelementptr inbounds %struct.ecryptfs_write_tag_70_packet_silly_stack, ptr %call7.i.i, i32 0, i32 12
  %call234 = tail call i32 @virt_to_scatterlist(ptr noundef %arrayidx231, i32 noundef %114, ptr noundef %dst_sg, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call234)
  %cmp235 = icmp slt i32 %call234, 1
  br i1 %cmp235, label %do.end240, label %if.end244

do.end240:                                        ; preds = %if.end229
  call void @__sanitizer_cov_trace_pc() #11
  %115 = ptrtoint ptr %block_aligned_filename_size to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %block_aligned_filename_size, align 4
  %call243 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.4, i32 noundef %call234, i32 noundef %116) #13
  br label %out_release_free_unlock

if.end244:                                        ; preds = %if.end229
  %117 = ptrtoint ptr %skcipher_tfm to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %skcipher_tfm, align 4
  %119 = ptrtoint ptr %auth_tok to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %auth_tok, align 8
  %session_key_encryption_key248 = getelementptr inbounds %struct.ecryptfs_auth_tok, ptr %120, i32 0, i32 5, i32 0, i32 5
  %121 = ptrtoint ptr %global_default_fn_cipher_key_bytes to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %global_default_fn_cipher_key_bytes, align 4
  %call251 = tail call i32 @crypto_skcipher_setkey(ptr noundef %118, ptr noundef %session_key_encryption_key248, i32 noundef %122) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call251)
  %cmp252 = icmp slt i32 %call251, 0
  br i1 %cmp252, label %do.end257, label %if.end265

do.end257:                                        ; preds = %if.end244
  call void @__sanitizer_cov_trace_pc() #11
  %123 = ptrtoint ptr %auth_tok to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %auth_tok, align 8
  %session_key_encryption_key261 = getelementptr inbounds %struct.ecryptfs_auth_tok, ptr %124, i32 0, i32 5, i32 0, i32 5
  %125 = ptrtoint ptr %global_default_fn_cipher_key_bytes to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %global_default_fn_cipher_key_bytes, align 4
  %call264 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.4, i32 noundef %call251, ptr noundef %session_key_encryption_key261, i32 noundef %126) #13
  br label %out_release_free_unlock

if.end265:                                        ; preds = %if.end244
  %127 = ptrtoint ptr %skcipher_req to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %skcipher_req, align 8
  %129 = ptrtoint ptr %block_aligned_filename_size to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %block_aligned_filename_size, align 4
  %iv = getelementptr inbounds %struct.ecryptfs_write_tag_70_packet_silly_stack, ptr %call7.i.i, i32 0, i32 15
  %src1.i = getelementptr inbounds %struct.skcipher_request, ptr %128, i32 0, i32 2
  %131 = ptrtoint ptr %src1.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr %src_sg, ptr %src1.i, align 8
  %dst2.i = getelementptr inbounds %struct.skcipher_request, ptr %128, i32 0, i32 3
  %132 = ptrtoint ptr %dst2.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr %dst_sg, ptr %dst2.i, align 4
  %133 = ptrtoint ptr %128 to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 %130, ptr %128, align 128
  %iv4.i = getelementptr inbounds %struct.skcipher_request, ptr %128, i32 0, i32 1
  %134 = ptrtoint ptr %iv4.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr %iv, ptr %iv4.i, align 4
  %135 = load ptr, ptr %skcipher_req, align 8
  %call274 = tail call i32 @crypto_skcipher_encrypt(ptr noundef %135) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call274)
  %tobool275.not = icmp eq i32 %call274, 0
  br i1 %tobool275.not, label %if.end282, label %do.end279

do.end279:                                        ; preds = %if.end265
  call void @__sanitizer_cov_trace_pc() #11
  %call281 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.4, i32 noundef %call274) #13
  br label %out_release_free_unlock

if.end282:                                        ; preds = %if.end265
  call void @__sanitizer_cov_trace_pc() #11
  %136 = ptrtoint ptr %block_aligned_filename_size to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %block_aligned_filename_size, align 4
  %138 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %i, align 4
  %add285 = add i32 %139, %137
  store i32 %add285, ptr %i, align 4
  %140 = ptrtoint ptr %packet_size to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 %add285, ptr %packet_size, align 4
  %141 = ptrtoint ptr %remaining_bytes to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %remaining_bytes, align 4
  %sub287 = sub i32 %142, %add285
  store i32 %sub287, ptr %remaining_bytes, align 4
  br label %out_release_free_unlock

out_release_free_unlock:                          ; preds = %if.end282, %do.end279, %do.end257, %do.end240, %do.end225, %do.end191, %do.end161, %if.end8.i.out_release_free_unlock_crit_edge
  %rc.0 = phi i32 [ %call156, %do.end161 ], [ %call186, %do.end191 ], [ %call219, %do.end225 ], [ %call234, %do.end240 ], [ %call251, %do.end257 ], [ %call274, %do.end279 ], [ 0, %if.end282 ], [ -12, %if.end8.i.out_release_free_unlock_crit_edge ]
  %143 = ptrtoint ptr %hash_tfm to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %hash_tfm, align 4
  %base.i.i = getelementptr inbounds %struct.crypto_shash, ptr %144, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef %144, ptr noundef %base.i.i) #9
  br label %out_free_unlock

out_free_unlock:                                  ; preds = %out_release_free_unlock, %if.then131, %if.then121, %do.end106, %do.end84
  %rc.1 = phi i32 [ -22, %do.end84 ], [ -22, %do.end106 ], [ -95, %if.then121 ], [ %68, %if.then131 ], [ %rc.0, %out_release_free_unlock ]
  %145 = ptrtoint ptr %block_aligned_filename to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %block_aligned_filename, align 4
  tail call void @kfree_sensitive(ptr noundef %146) #9
  br label %out_unlock

out_unlock:                                       ; preds = %out_free_unlock, %if.end67.out_unlock_crit_edge, %do.end62, %do.end50, %if.then42
  %rc.2 = phi i32 [ -22, %do.end50 ], [ %rc.1, %out_free_unlock ], [ -12, %do.end62 ], [ 0, %if.then42 ], [ -12, %if.end67.out_unlock_crit_edge ]
  %147 = ptrtoint ptr %tfm_mutex to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %tfm_mutex, align 8
  tail call void @mutex_unlock(ptr noundef %148) #9
  br label %out

out:                                              ; preds = %out_unlock, %do.end16, %do.end
  %rc.3 = phi i32 [ %retval.0.i489, %do.end ], [ %call9, %do.end16 ], [ %rc.2, %out_unlock ]
  %149 = ptrtoint ptr %auth_tok_key to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %auth_tok_key, align 4
  %tobool291.not = icmp eq ptr %150, null
  br i1 %tobool291.not, label %out.if.end293_crit_edge, label %if.then292

out.if.end293_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end293

if.then292:                                       ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  %sem = getelementptr inbounds %struct.key, ptr %150, i32 0, i32 4
  tail call void @up_write(ptr noundef %sem) #9
  tail call void @key_put(ptr noundef nonnull %150) #9
  br label %if.end293

if.end293:                                        ; preds = %if.then292, %out.if.end293_crit_edge
  %skcipher_req294 = getelementptr inbounds %struct.ecryptfs_write_tag_70_packet_silly_stack, ptr %call7.i.i, i32 0, i32 14
  %151 = ptrtoint ptr %skcipher_req294 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %skcipher_req294, align 8
  tail call void @kfree_sensitive(ptr noundef %152) #9
  %hash_desc295 = getelementptr inbounds %struct.ecryptfs_write_tag_70_packet_silly_stack, ptr %call7.i.i, i32 0, i32 19
  %153 = ptrtoint ptr %hash_desc295 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %hash_desc295, align 8
  tail call void @kfree_sensitive(ptr noundef %154) #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end293, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.3, %if.end293 ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %auth_tok_key) #9
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ecryptfs_get_tfm_and_mutex_for_cipher_name(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ecryptfs_from_hex(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @ecryptfs_code_for_cipher_string(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_alloc_shash(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_shash_digest(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @virt_to_scatterlist(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_skcipher_setkey(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_skcipher_encrypt(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_sensitive(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @key_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ecryptfs_parse_tag_70_packet(ptr nocapture noundef %filename, ptr nocapture noundef %filename_size, ptr nocapture noundef %packet_size, ptr noundef %mount_crypt_stat, ptr noundef %data, i32 noundef %max_packet_size) local_unnamed_addr #0 align 64 {
entry:
  %auth_tok_key = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %auth_tok_key) #9
  %0 = ptrtoint ptr %auth_tok_key to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %auth_tok_key, align 4
  %1 = ptrtoint ptr %packet_size to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %packet_size, align 4
  %2 = ptrtoint ptr %filename_size to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %filename_size, align 4
  %3 = ptrtoint ptr %filename to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %filename, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 196) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %max_packet_size)
  %cmp = icmp ult i32 %max_packet_size, 12
  br i1 %cmp, label %do.end, label %if.end3

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.46, i32 noundef %max_packet_size, i32 noundef 12) #13
  br label %if.then241

if.end3:                                          ; preds = %if.end
  %5 = ptrtoint ptr %packet_size to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %packet_size, align 4
  %inc = add i32 %6, 1
  store i32 %inc, ptr %packet_size, align 4
  %arrayidx = getelementptr i8, ptr %data, i32 %6
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 70, i8 %8)
  %cmp4.not = icmp eq i8 %8, 70
  br i1 %cmp4.not, label %if.end14, label %do.end9

do.end9:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  %conv = zext i8 %8 to i32
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.46, i32 noundef %conv, i32 noundef 70) #13
  br label %if.then241

if.end14:                                         ; preds = %if.end3
  %arrayidx15 = getelementptr i8, ptr %data, i32 %inc
  %parsed_tag_70_packet_size = getelementptr inbounds %struct.ecryptfs_parse_tag_70_packet_silly_stack, ptr %call7.i.i, i32 0, i32 3
  %packet_size_len = getelementptr inbounds %struct.ecryptfs_parse_tag_70_packet_silly_stack, ptr %call7.i.i, i32 0, i32 2
  %9 = ptrtoint ptr %packet_size_len to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %packet_size_len, align 8
  %10 = ptrtoint ptr %parsed_tag_70_packet_size to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %parsed_tag_70_packet_size, align 4
  %11 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx15, align 1
  %conv.i = zext i8 %12 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 -64, i8 %12)
  %cmp.i394 = icmp ult i8 %12, -64
  br i1 %cmp.i394, label %if.end14.if.end24_crit_edge, label %if.else.i

if.end14.if.end24_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

if.else.i:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_const_cmp1(i8 -32, i8 %12)
  %cmp6.i = icmp ult i8 %12, -32
  br i1 %cmp6.i, label %if.then8.i, label %if.else14.i

if.then8.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i = shl nuw nsw i32 %conv.i, 8
  %arrayidx11.i = getelementptr i8, ptr %arrayidx15, i32 1
  %13 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx11.i, align 1
  %conv12.i = zext i8 %14 to i32
  %add.i = add nsw i32 %sub.i, -48960
  %add13.i = add nsw i32 %add.i, %conv12.i
  br label %if.end24

if.else14.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %12)
  %cmp17.i = icmp eq i8 %12, -1
  %.str..str.1 = select i1 %cmp17.i, ptr @.str, ptr @.str.1
  tail call void (ptr, ...) @__ecryptfs_printk(ptr noundef nonnull %.str..str.1, ptr noundef nonnull @__func__.ecryptfs_parse_packet_length) #9
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.46, i32 noundef -22) #13
  br label %if.then241

if.end24:                                         ; preds = %if.then8.i, %if.end14.if.end24_crit_edge
  %storemerge428 = phi i32 [ %add13.i, %if.then8.i ], [ %conv.i, %if.end14.if.end24_crit_edge ]
  %storemerge = phi i32 [ 2, %if.then8.i ], [ 1, %if.end14.if.end24_crit_edge ]
  %15 = ptrtoint ptr %parsed_tag_70_packet_size to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %storemerge428, ptr %parsed_tag_70_packet_size, align 4
  %16 = ptrtoint ptr %packet_size_len to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %storemerge, ptr %packet_size_len, align 8
  %sub27 = add nsw i32 %storemerge428, -9
  %block_aligned_filename_size = getelementptr inbounds %struct.ecryptfs_parse_tag_70_packet_silly_stack, ptr %call7.i.i, i32 0, i32 4
  %17 = ptrtoint ptr %block_aligned_filename_size to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %sub27, ptr %block_aligned_filename_size, align 8
  %add = add nsw i32 %storemerge428, 1
  %add30 = add nsw i32 %add, %storemerge
  call void @__sanitizer_cov_trace_cmp4(i32 %add30, i32 %max_packet_size)
  %cmp31 = icmp ugt i32 %add30, %max_packet_size
  br i1 %cmp31, label %do.end36, label %if.end44

do.end36:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  %add40 = add nuw nsw i32 %storemerge, 2
  %add42 = add nsw i32 %add40, %sub27
  %call43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.46, i32 noundef %max_packet_size, i32 noundef %add42) #13
  br label %if.then241

if.end44:                                         ; preds = %if.end24
  %18 = ptrtoint ptr %packet_size to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %packet_size, align 4
  %add46 = add i32 %19, %storemerge
  store i32 %add46, ptr %packet_size, align 4
  %fnek_sig_hex = getelementptr inbounds %struct.ecryptfs_parse_tag_70_packet_silly_stack, ptr %call7.i.i, i32 0, i32 14
  %arrayidx47 = getelementptr i8, ptr %data, i32 %add46
  %call.i = tail call ptr @bin2hex(ptr noundef %fnek_sig_hex, ptr noundef %arrayidx47, i32 noundef 8) #9
  %20 = ptrtoint ptr %call.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %call.i, align 1
  %arrayidx49 = getelementptr %struct.ecryptfs_parse_tag_70_packet_silly_stack, ptr %call7.i.i, i32 0, i32 14, i32 16
  %21 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %arrayidx49, align 8
  %22 = ptrtoint ptr %packet_size to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %packet_size, align 4
  %add50 = add i32 %23, 8
  %inc51 = add i32 %23, 9
  store i32 %inc51, ptr %packet_size, align 4
  %arrayidx52 = getelementptr i8, ptr %data, i32 %add50
  %24 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx52, align 1
  %26 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %call7.i.i, align 8
  %cipher_string = getelementptr inbounds %struct.ecryptfs_parse_tag_70_packet_silly_stack, ptr %call7.i.i, i32 0, i32 16
  %call55 = tail call i32 @ecryptfs_cipher_code_to_string(ptr noundef %cipher_string, i8 noundef zeroext %25) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %if.end65, label %do.end60

do.end60:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  %27 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %call7.i.i, align 8
  %conv63 = zext i8 %28 to i32
  %call64 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.46, i32 noundef %conv63) #13
  br label %if.then241

if.end65:                                         ; preds = %if.end44
  %auth_tok = getelementptr inbounds %struct.ecryptfs_parse_tag_70_packet_silly_stack, ptr %call7.i.i, i32 0, i32 9
  %call.i396 = call fastcc i32 @ecryptfs_find_global_auth_tok_for_sig(ptr noundef nonnull %auth_tok_key, ptr noundef %auth_tok, ptr noundef %mount_crypt_stat, ptr noundef %fnek_sig_hex) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %call.i396)
  %cmp.i397 = icmp eq i32 %call.i396, -2
  br i1 %cmp.i397, label %if.then.i398, label %if.end65.ecryptfs_find_auth_tok_for_sig.exit_crit_edge

if.end65.ecryptfs_find_auth_tok_for_sig.exit_crit_edge: ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #11
  br label %ecryptfs_find_auth_tok_for_sig.exit

if.then.i398:                                     ; preds = %if.end65
  %29 = ptrtoint ptr %mount_crypt_stat to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %mount_crypt_stat, align 4
  %and.i = and i32 %30, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i399, label %if.then.i398.do.end73_crit_edge

if.then.i398.do.end73_crit_edge:                  ; preds = %if.then.i398
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end73

if.end.i399:                                      ; preds = %if.then.i398
  call void @__sanitizer_cov_trace_pc() #11
  %call2.i = call i32 @ecryptfs_keyring_auth_tok_for_sig(ptr noundef nonnull %auth_tok_key, ptr noundef %auth_tok, ptr noundef %fnek_sig_hex) #9
  br label %ecryptfs_find_auth_tok_for_sig.exit

ecryptfs_find_auth_tok_for_sig.exit:              ; preds = %if.end.i399, %if.end65.ecryptfs_find_auth_tok_for_sig.exit_crit_edge
  %retval.0.i = phi i32 [ %call2.i, %if.end.i399 ], [ %call.i396, %if.end65.ecryptfs_find_auth_tok_for_sig.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool69.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool69.not, label %if.end78, label %ecryptfs_find_auth_tok_for_sig.exit.do.end73_crit_edge

ecryptfs_find_auth_tok_for_sig.exit.do.end73_crit_edge: ; preds = %ecryptfs_find_auth_tok_for_sig.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end73

do.end73:                                         ; preds = %ecryptfs_find_auth_tok_for_sig.exit.do.end73_crit_edge, %if.then.i398.do.end73_crit_edge
  %retval.0.i412 = phi i32 [ %retval.0.i, %ecryptfs_find_auth_tok_for_sig.exit.do.end73_crit_edge ], [ -22, %if.then.i398.do.end73_crit_edge ]
  %call77 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.46, ptr noundef %fnek_sig_hex, i32 noundef %retval.0.i412) #13
  br label %if.then241

if.end78:                                         ; preds = %ecryptfs_find_auth_tok_for_sig.exit
  %skcipher_tfm = getelementptr inbounds %struct.ecryptfs_parse_tag_70_packet_silly_stack, ptr %call7.i.i, i32 0, i32 12
  %tfm_mutex = getelementptr inbounds %struct.ecryptfs_parse_tag_70_packet_silly_stack, ptr %call7.i.i, i32 0, i32 7
  %call81 = tail call i32 @ecryptfs_get_tfm_and_mutex_for_cipher_name(ptr noundef %skcipher_tfm, ptr noundef %tfm_mutex, ptr noundef %cipher_string) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81)
  %tobool82.not = icmp eq i32 %call81, 0
  br i1 %tobool82.not, label %if.end93, label %do.end88, !prof !492

do.end88:                                         ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #11
  %call92 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %cipher_string, i32 noundef %call81) #13
  br label %if.then241

if.end93:                                         ; preds = %if.end78
  %31 = ptrtoint ptr %tfm_mutex to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %tfm_mutex, align 4
  tail call void @mutex_lock_nested(ptr noundef %32, i32 noundef 0) #9
  %33 = ptrtoint ptr %packet_size to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %packet_size, align 4
  %arrayidx95 = getelementptr i8, ptr %data, i32 %34
  %35 = ptrtoint ptr %block_aligned_filename_size to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %block_aligned_filename_size, align 8
  %src_sg = getelementptr inbounds %struct.ecryptfs_parse_tag_70_packet_silly_stack, ptr %call7.i.i, i32 0, i32 10
  %call98 = tail call i32 @virt_to_scatterlist(ptr noundef %arrayidx95, i32 noundef %36, ptr noundef %src_sg, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call98)
  %cmp99 = icmp slt i32 %call98, 1
  %37 = ptrtoint ptr %block_aligned_filename_size to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %block_aligned_filename_size, align 8
  br i1 %cmp99, label %do.end104, label %if.end108

do.end104:                                        ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #11
  %call107 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.46, i32 noundef %call98, i32 noundef %38) #13
  br label %out

if.end108:                                        ; preds = %if.end93
  %39 = ptrtoint ptr %packet_size to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %packet_size, align 4
  %add110 = add i32 %40, %38
  store i32 %add110, ptr %packet_size, align 4
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %38, i32 noundef 3264) #14
  %decrypted_filename = getelementptr inbounds %struct.ecryptfs_parse_tag_70_packet_silly_stack, ptr %call7.i.i, i32 0, i32 8
  %41 = ptrtoint ptr %decrypted_filename to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call9.i, ptr %decrypted_filename, align 8
  %tobool114.not = icmp eq ptr %call9.i, null
  br i1 %tobool114.not, label %out.thread425, label %if.end116

out.thread425:                                    ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #11
  %42 = ptrtoint ptr %tfm_mutex to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %tfm_mutex, align 4
  tail call void @mutex_unlock(ptr noundef %43) #9
  br label %if.then241

if.end116:                                        ; preds = %if.end108
  %44 = ptrtoint ptr %block_aligned_filename_size to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %block_aligned_filename_size, align 8
  %dst_sg = getelementptr inbounds %struct.ecryptfs_parse_tag_70_packet_silly_stack, ptr %call7.i.i, i32 0, i32 11
  %call120 = tail call i32 @virt_to_scatterlist(ptr noundef nonnull %call9.i, i32 noundef %45, ptr noundef %dst_sg, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call120)
  %cmp121 = icmp slt i32 %call120, 1
  br i1 %cmp121, label %do.end126, label %if.end130

do.end126:                                        ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #11
  %46 = ptrtoint ptr %block_aligned_filename_size to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %block_aligned_filename_size, align 8
  %call129 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.46, i32 noundef %call120, i32 noundef %47) #13
  br label %out_free_unlock

if.end130:                                        ; preds = %if.end116
  %48 = ptrtoint ptr %skcipher_tfm to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %skcipher_tfm, align 8
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %49, align 128
  %add.i400 = add i32 %51, 128
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i400, i32 noundef 3264) #14
  %tobool.not.i405 = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not.i405, label %do.end138, label %if.end143, !prof !493

do.end138:                                        ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #11
  %skcipher_req419 = getelementptr inbounds %struct.ecryptfs_parse_tag_70_packet_silly_stack, ptr %call7.i.i, i32 0, i32 13
  %52 = ptrtoint ptr %skcipher_req419 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr null, ptr %skcipher_req419, align 4
  %53 = ptrtoint ptr %skcipher_tfm to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %skcipher_tfm, align 8
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %54, i32 0, i32 2, i32 3
  %55 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %__crt_alg.i.i, align 4
  %cra_driver_name.i.i = getelementptr inbounds %struct.crypto_alg, ptr %56, i32 0, i32 9
  %call142 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.46, ptr noundef %cra_driver_name.i.i) #13
  br label %out_free_unlock

if.end143:                                        ; preds = %if.end130
  %base.i.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %49, i32 0, i32 2
  %tfm1.i.i = getelementptr inbounds %struct.skcipher_request, ptr %call9.i.i, i32 0, i32 4, i32 3
  %57 = ptrtoint ptr %tfm1.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %base.i.i.i, ptr %tfm1.i.i, align 32
  %skcipher_req = getelementptr inbounds %struct.ecryptfs_parse_tag_70_packet_silly_stack, ptr %call7.i.i, i32 0, i32 13
  %58 = ptrtoint ptr %skcipher_req to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %call9.i.i, ptr %skcipher_req, align 4
  %complete.i = getelementptr inbounds %struct.skcipher_request, ptr %call9.i.i, i32 0, i32 4, i32 1
  %59 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr null, ptr %complete.i, align 8
  %data2.i = getelementptr inbounds %struct.skcipher_request, ptr %call9.i.i, i32 0, i32 4, i32 2
  %60 = ptrtoint ptr %data2.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr null, ptr %data2.i, align 4
  %flags4.i = getelementptr inbounds %struct.skcipher_request, ptr %call9.i.i, i32 0, i32 4, i32 4
  %61 = ptrtoint ptr %flags4.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 512, ptr %flags4.i, align 4
  %62 = ptrtoint ptr %auth_tok to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %auth_tok, align 4
  %token_type = getelementptr inbounds %struct.ecryptfs_auth_tok, ptr %63, i32 0, i32 1
  %64 = ptrtoint ptr %token_type to i32
  call void @__asan_loadN_noabort(i32 %64, i32 2)
  %65 = load i16, ptr %token_type, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %65)
  %cmp147.not = icmp eq i16 %65, 0
  br i1 %cmp147.not, label %if.end155, label %if.then149

if.then149:                                       ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #11
  %call154 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.46) #13
  br label %out_free_unlock

if.end155:                                        ; preds = %if.end143
  %66 = ptrtoint ptr %skcipher_tfm to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %skcipher_tfm, align 8
  %session_key_encryption_key = getelementptr inbounds %struct.ecryptfs_auth_tok, ptr %63, i32 0, i32 5, i32 0, i32 5
  %global_default_fn_cipher_key_bytes = getelementptr inbounds %struct.ecryptfs_mount_crypt_stat, ptr %mount_crypt_stat, i32 0, i32 4
  %68 = ptrtoint ptr %global_default_fn_cipher_key_bytes to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %global_default_fn_cipher_key_bytes, align 4
  %call159 = tail call i32 @crypto_skcipher_setkey(ptr noundef %67, ptr noundef %session_key_encryption_key, i32 noundef %69) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call159)
  %cmp160 = icmp slt i32 %call159, 0
  br i1 %cmp160, label %do.end165, label %if.end173

do.end165:                                        ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #11
  %70 = ptrtoint ptr %auth_tok to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %auth_tok, align 4
  %session_key_encryption_key169 = getelementptr inbounds %struct.ecryptfs_auth_tok, ptr %71, i32 0, i32 5, i32 0, i32 5
  %72 = ptrtoint ptr %global_default_fn_cipher_key_bytes to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %global_default_fn_cipher_key_bytes, align 4
  %call172 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.46, i32 noundef %call159, ptr noundef %session_key_encryption_key169, i32 noundef %73) #13
  br label %out_free_unlock

if.end173:                                        ; preds = %if.end155
  %74 = ptrtoint ptr %skcipher_req to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %skcipher_req, align 4
  %76 = ptrtoint ptr %block_aligned_filename_size to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %block_aligned_filename_size, align 8
  %iv = getelementptr inbounds %struct.ecryptfs_parse_tag_70_packet_silly_stack, ptr %call7.i.i, i32 0, i32 15
  %src1.i = getelementptr inbounds %struct.skcipher_request, ptr %75, i32 0, i32 2
  %78 = ptrtoint ptr %src1.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %src_sg, ptr %src1.i, align 8
  %dst2.i = getelementptr inbounds %struct.skcipher_request, ptr %75, i32 0, i32 3
  %79 = ptrtoint ptr %dst2.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %dst_sg, ptr %dst2.i, align 4
  %80 = ptrtoint ptr %75 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %77, ptr %75, align 128
  %iv4.i = getelementptr inbounds %struct.skcipher_request, ptr %75, i32 0, i32 1
  %81 = ptrtoint ptr %iv4.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %iv, ptr %iv4.i, align 4
  %82 = load ptr, ptr %skcipher_req, align 4
  %call182 = tail call i32 @crypto_skcipher_decrypt(ptr noundef %82) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call182)
  %tobool183.not = icmp eq i32 %call182, 0
  br i1 %tobool183.not, label %while.cond.preheader, label %do.end187

while.cond.preheader:                             ; preds = %if.end173
  %i = getelementptr inbounds %struct.ecryptfs_parse_tag_70_packet_silly_stack, ptr %call7.i.i, i32 0, i32 6
  %83 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %i, align 8
  %85 = ptrtoint ptr %block_aligned_filename_size to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %block_aligned_filename_size, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %84, i32 %86)
  %cmp192430 = icmp ult i32 %84, %86
  br i1 %cmp192430, label %land.rhs.preheader, label %while.cond.preheader.while.end_crit_edge

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

land.rhs.preheader:                               ; preds = %while.cond.preheader
  %87 = ptrtoint ptr %decrypted_filename to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %decrypted_filename, align 8
  %arrayidx196436 = getelementptr i8, ptr %88, i32 %84
  %89 = ptrtoint ptr %arrayidx196436 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %arrayidx196436, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %90)
  %cmp198.not437 = icmp eq i8 %90, 0
  br i1 %cmp198.not437, label %land.rhs.preheader.while.end_crit_edge, label %land.rhs.preheader.while.body_crit_edge

land.rhs.preheader.while.body_crit_edge:          ; preds = %land.rhs.preheader
  br label %while.body

land.rhs.preheader.while.end_crit_edge:           ; preds = %land.rhs.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

do.end187:                                        ; preds = %if.end173
  call void @__sanitizer_cov_trace_pc() #11
  %call189 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.46, i32 noundef %call182) #13
  br label %out_free_unlock

land.rhs:                                         ; preds = %while.body
  %91 = ptrtoint ptr %decrypted_filename to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %decrypted_filename, align 8
  %arrayidx196 = getelementptr i8, ptr %92, i32 %inc201
  %93 = ptrtoint ptr %arrayidx196 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %arrayidx196, align 1
  %cmp198.not = icmp eq i8 %94, 0
  br i1 %cmp198.not, label %land.rhs.while.end_crit_edge, label %land.rhs.while.body_crit_edge

land.rhs.while.body_crit_edge:                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body:                                       ; preds = %land.rhs.while.body_crit_edge, %land.rhs.preheader.while.body_crit_edge
  %95 = phi i32 [ %inc201, %land.rhs.while.body_crit_edge ], [ %84, %land.rhs.preheader.while.body_crit_edge ]
  %inc201 = add nuw i32 %95, 1
  %96 = ptrtoint ptr %i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %inc201, ptr %i, align 8
  %97 = ptrtoint ptr %block_aligned_filename_size to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %block_aligned_filename_size, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %inc201, i32 %98)
  %cmp192 = icmp ult i32 %inc201, %98
  br i1 %cmp192, label %land.rhs, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %land.rhs.while.end_crit_edge, %land.rhs.preheader.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %.lcssa429 = phi i32 [ %84, %while.cond.preheader.while.end_crit_edge ], [ %84, %land.rhs.preheader.while.end_crit_edge ], [ %inc201, %land.rhs.while.end_crit_edge ], [ %inc201, %while.body.while.end_crit_edge ]
  %.lcssa = phi i32 [ %86, %while.cond.preheader.while.end_crit_edge ], [ %86, %land.rhs.preheader.while.end_crit_edge ], [ %98, %land.rhs.while.end_crit_edge ], [ %98, %while.body.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %.lcssa429, i32 %.lcssa)
  %cmp204 = icmp eq i32 %.lcssa429, %.lcssa
  br i1 %cmp204, label %do.end209, label %if.end212

do.end209:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  %call211 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.46) #13
  br label %out_free_unlock

if.end212:                                        ; preds = %while.end
  %inc214 = add i32 %.lcssa429, 1
  %99 = ptrtoint ptr %i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %inc214, ptr %i, align 8
  %sub217 = sub i32 %.lcssa, %inc214
  %100 = ptrtoint ptr %filename_size to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %sub217, ptr %filename_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.lcssa, i32 %inc214)
  %cmp218.not = icmp ne i32 %.lcssa, %inc214
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %sub217)
  %cmp220 = icmp ult i32 %sub217, 4096
  %or.cond = and i1 %cmp218.not, %cmp220
  br i1 %or.cond, label %if.end8.i390, label %do.end225

do.end225:                                        ; preds = %if.end212
  call void @__sanitizer_cov_trace_pc() #11
  %call227 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.46, i32 noundef %sub217) #13
  br label %out_free_unlock

if.end8.i390:                                     ; preds = %if.end212
  %add229 = add nuw nsw i32 %sub217, 1
  %call9.i389 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add229, i32 noundef 3264) #14
  %101 = ptrtoint ptr %filename to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %call9.i389, ptr %filename, align 4
  %tobool231.not = icmp eq ptr %call9.i389, null
  br i1 %tobool231.not, label %if.end8.i390.out_free_unlock_crit_edge, label %if.end233

if.end8.i390.out_free_unlock_crit_edge:           ; preds = %if.end8.i390
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_free_unlock

if.end233:                                        ; preds = %if.end8.i390
  call void @__sanitizer_cov_trace_pc() #11
  %102 = ptrtoint ptr %decrypted_filename to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %decrypted_filename, align 8
  %104 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %i, align 8
  %arrayidx236 = getelementptr i8, ptr %103, i32 %105
  %106 = ptrtoint ptr %filename_size to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %filename_size, align 4
  %108 = call ptr @memcpy(ptr %call9.i389, ptr %arrayidx236, i32 %107)
  %109 = ptrtoint ptr %filename to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %filename, align 4
  %arrayidx237 = getelementptr i8, ptr %110, i32 %107
  %111 = ptrtoint ptr %arrayidx237 to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 0, ptr %arrayidx237, align 1
  br label %out_free_unlock

out_free_unlock:                                  ; preds = %if.end233, %if.end8.i390.out_free_unlock_crit_edge, %do.end225, %do.end209, %do.end187, %do.end165, %if.then149, %do.end138, %do.end126
  %rc.0 = phi i32 [ %call120, %do.end126 ], [ -95, %if.then149 ], [ %call159, %do.end165 ], [ %call182, %do.end187 ], [ -22, %do.end209 ], [ 0, %if.end233 ], [ -22, %do.end225 ], [ -12, %do.end138 ], [ -12, %if.end8.i390.out_free_unlock_crit_edge ]
  %112 = ptrtoint ptr %decrypted_filename to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %decrypted_filename, align 8
  tail call void @kfree(ptr noundef %113) #9
  br label %out

out:                                              ; preds = %out_free_unlock, %do.end104
  %rc.1 = phi i32 [ %call98, %do.end104 ], [ %rc.0, %out_free_unlock ]
  %114 = ptrtoint ptr %tfm_mutex to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %tfm_mutex, align 4
  tail call void @mutex_unlock(ptr noundef %115) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.1)
  %tobool240.not = icmp eq i32 %rc.1, 0
  br i1 %tobool240.not, label %out.if.end242_crit_edge, label %out.if.then241_crit_edge

out.if.then241_crit_edge:                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then241

out.if.end242_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end242

if.then241:                                       ; preds = %out.if.then241_crit_edge, %out.thread425, %do.end88, %do.end73, %do.end60, %do.end36, %if.else14.i, %do.end9, %do.end
  %rc.2423 = phi i32 [ %rc.1, %out.if.then241_crit_edge ], [ -12, %out.thread425 ], [ %call81, %do.end88 ], [ %retval.0.i412, %do.end73 ], [ %call55, %do.end60 ], [ -22, %do.end36 ], [ -22, %if.else14.i ], [ -22, %do.end9 ], [ -22, %do.end ]
  %116 = ptrtoint ptr %packet_size to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 0, ptr %packet_size, align 4
  %117 = ptrtoint ptr %filename_size to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 0, ptr %filename_size, align 4
  %118 = ptrtoint ptr %filename to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr null, ptr %filename, align 4
  br label %if.end242

if.end242:                                        ; preds = %if.then241, %out.if.end242_crit_edge
  %rc.2424 = phi i32 [ %rc.2423, %if.then241 ], [ 0, %out.if.end242_crit_edge ]
  %119 = ptrtoint ptr %auth_tok_key to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %auth_tok_key, align 4
  %tobool243.not = icmp eq ptr %120, null
  br i1 %tobool243.not, label %if.end242.if.end245_crit_edge, label %if.then244

if.end242.if.end245_crit_edge:                    ; preds = %if.end242
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end245

if.then244:                                       ; preds = %if.end242
  call void @__sanitizer_cov_trace_pc() #11
  %sem = getelementptr inbounds %struct.key, ptr %120, i32 0, i32 4
  tail call void @up_write(ptr noundef %sem) #9
  tail call void @key_put(ptr noundef nonnull %120) #9
  br label %if.end245

if.end245:                                        ; preds = %if.then244, %if.end242.if.end245_crit_edge
  %skcipher_req246 = getelementptr inbounds %struct.ecryptfs_parse_tag_70_packet_silly_stack, ptr %call7.i.i, i32 0, i32 13
  %121 = ptrtoint ptr %skcipher_req246 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %skcipher_req246, align 4
  tail call void @kfree_sensitive(ptr noundef %122) #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end245, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.2424, %if.end245 ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %auth_tok_key) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ecryptfs_cipher_code_to_string(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_skcipher_decrypt(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ecryptfs_keyring_auth_tok_for_sig(ptr nocapture noundef %auth_tok_key, ptr nocapture noundef %auth_tok, ptr noundef %sig) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @request_key_tag(ptr noundef nonnull @key_type_user, ptr noundef %sig, ptr noundef null, ptr noundef null) #9
  %0 = ptrtoint ptr %auth_tok_key to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i, ptr %auth_tok_key, align 4
  %cmp.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %entry.if.end8_crit_edge

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.then:                                          ; preds = %entry
  %call.i.i = tail call ptr @request_key_tag(ptr noundef nonnull @key_type_encrypted, ptr noundef %sig, ptr noundef null, ptr noundef null) #9
  %1 = ptrtoint ptr %auth_tok_key to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call.i.i, ptr %auth_tok_key, align 4
  %cmp.i26 = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i26, label %do.end, label %if.then.if.end8_crit_edge

if.then.if.end8_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

do.end:                                           ; preds = %if.then
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.83, ptr noundef %sig) #13
  %2 = ptrtoint ptr %auth_tok_key to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %auth_tok_key, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i32 %4, label %sw.default.i [
    i32 -126, label %sw.bb.i
    i32 -127, label %sw.bb1.i
    i32 -128, label %sw.bb2.i
  ]

sw.bb.i:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__ecryptfs_printk(ptr noundef nonnull @.str.107, ptr noundef nonnull @__func__.process_request_key_err) #9
  br label %out.sink.split

sw.bb1.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__ecryptfs_printk(ptr noundef nonnull @.str.108, ptr noundef nonnull @__func__.process_request_key_err) #9
  br label %out.sink.split

sw.bb2.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__ecryptfs_printk(ptr noundef nonnull @.str.109, ptr noundef nonnull @__func__.process_request_key_err) #9
  br label %out.sink.split

sw.default.i:                                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__ecryptfs_printk(ptr noundef nonnull @.str.110, ptr noundef nonnull @__func__.process_request_key_err, i32 noundef %4) #9
  br label %out.sink.split

if.end8:                                          ; preds = %if.then.if.end8_crit_edge, %entry.if.end8_crit_edge
  %6 = ptrtoint ptr %auth_tok_key to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %auth_tok_key, align 4
  %sem = getelementptr inbounds %struct.key, ptr %7, i32 0, i32 4
  tail call void @down_write(ptr noundef %sem) #9
  %8 = ptrtoint ptr %auth_tok_key to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %auth_tok_key, align 4
  %call9 = tail call fastcc i32 @ecryptfs_verify_auth_tok_from_key(ptr noundef %9, ptr noundef %auth_tok)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool.not = icmp eq i32 %call9, 0
  br i1 %tobool.not, label %if.end8.out_crit_edge, label %if.then10

if.end8.out_crit_edge:                            ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %auth_tok_key to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %auth_tok_key, align 4
  %sem11 = getelementptr inbounds %struct.key, ptr %11, i32 0, i32 4
  tail call void @up_write(ptr noundef %sem11) #9
  %12 = ptrtoint ptr %auth_tok_key to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %auth_tok_key, align 4
  tail call void @key_put(ptr noundef %13) #9
  br label %out.sink.split

out.sink.split:                                   ; preds = %if.then10, %sw.default.i, %sw.bb2.i, %sw.bb1.i, %sw.bb.i
  %rc.0.ph = phi i32 [ %call9, %if.then10 ], [ -22, %sw.default.i ], [ -22, %sw.bb2.i ], [ -62, %sw.bb1.i ], [ -2, %sw.bb.i ]
  %14 = ptrtoint ptr %auth_tok_key to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %auth_tok_key, align 4
  br label %out

out:                                              ; preds = %out.sink.split, %if.end8.out_crit_edge
  %rc.0 = phi i32 [ 0, %if.end8.out_crit_edge ], [ %rc.0.ph, %out.sink.split ]
  ret i32 %rc.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ecryptfs_verify_auth_tok_from_key(ptr noundef %auth_tok_key, ptr nocapture noundef %auth_tok) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %type.i.i = getelementptr inbounds %struct.key, ptr %auth_tok_key, i32 0, i32 16, i32 0, i32 2
  %0 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %type.i.i, align 8
  %cmp.not.i.i = icmp eq ptr %1, @key_type_encrypted
  br i1 %cmp.not.i.i, label %if.end.i.i, label %if.end.i

if.end.i.i:                                       ; preds = %entry
  %2 = getelementptr inbounds %struct.key, ptr %auth_tok_key, i32 0, i32 17
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %tobool.not.i.i = icmp eq ptr %4, null
  br i1 %tobool.not.i.i, label %if.end.i.i.if.then_crit_edge, label %ecryptfs_get_encrypted_key_payload_data.exit.i

if.end.i.i.if.then_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

ecryptfs_get_encrypted_key_payload_data.exit.i:   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %payload_data.i.i = getelementptr inbounds %struct.encrypted_key_payload, ptr %4, i32 0, i32 11
  br label %ecryptfs_get_key_payload_data.exit

if.end.i:                                         ; preds = %entry
  %sem.i.i = getelementptr inbounds %struct.key, ptr %auth_tok_key, i32 0, i32 4
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %sem.i.i, i32 noundef 4) #9
  %5 = ptrtoint ptr %sem.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %sem.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.i.not.i.i = icmp eq i32 %6, 0
  br i1 %cmp.i.not.i.i, label %land.lhs.true.i.i, label %if.end.i.user_key_payload_locked.exit.i_crit_edge

if.end.i.user_key_payload_locked.exit.i_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %user_key_payload_locked.exit.i

land.lhs.true.i.i:                                ; preds = %if.end.i
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %land.lhs.true.i.i.user_key_payload_locked.exit.i_crit_edge, label %land.lhs.true3.i.i

land.lhs.true.i.i.user_key_payload_locked.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %user_key_payload_locked.exit.i

land.lhs.true3.i.i:                               ; preds = %land.lhs.true.i.i
  %.b6.i.i = load i1, ptr @user_key_payload_locked.__warned, align 1
  br i1 %.b6.i.i, label %land.lhs.true3.i.i.user_key_payload_locked.exit.i_crit_edge, label %if.then.i.i

land.lhs.true3.i.i.user_key_payload_locked.exit.i_crit_edge: ; preds = %land.lhs.true3.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %user_key_payload_locked.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true3.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @user_key_payload_locked.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.116, i32 noundef 53, ptr noundef nonnull @.str.117) #9
  br label %user_key_payload_locked.exit.i

user_key_payload_locked.exit.i:                   ; preds = %if.then.i.i, %land.lhs.true3.i.i.user_key_payload_locked.exit.i_crit_edge, %land.lhs.true.i.i.user_key_payload_locked.exit.i_crit_edge, %if.end.i.user_key_payload_locked.exit.i_crit_edge
  %7 = getelementptr inbounds %struct.key, ptr %auth_tok_key, i32 0, i32 17
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %tobool2.not.i = icmp eq ptr %9, null
  br i1 %tobool2.not.i, label %user_key_payload_locked.exit.i.if.then_crit_edge, label %if.end5.i

user_key_payload_locked.exit.i.if.then_crit_edge: ; preds = %user_key_payload_locked.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.end5.i:                                        ; preds = %user_key_payload_locked.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %data.i = getelementptr inbounds %struct.user_key_payload, ptr %9, i32 0, i32 3
  br label %ecryptfs_get_key_payload_data.exit

ecryptfs_get_key_payload_data.exit:               ; preds = %if.end5.i, %ecryptfs_get_encrypted_key_payload_data.exit.i
  %retval.0.i = phi ptr [ %data.i, %if.end5.i ], [ %payload_data.i.i, %ecryptfs_get_encrypted_key_payload_data.exit.i ]
  %10 = ptrtoint ptr %auth_tok to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %retval.0.i, ptr %auth_tok, align 4
  %cmp.i = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %ecryptfs_get_key_payload_data.exit.if.then_crit_edge, label %if.end

ecryptfs_get_key_payload_data.exit.if.then_crit_edge: ; preds = %ecryptfs_get_key_payload_data.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %ecryptfs_get_key_payload_data.exit.if.then_crit_edge, %user_key_payload_locked.exit.i.if.then_crit_edge, %if.end.i.i.if.then_crit_edge
  %retval.0.i28 = phi ptr [ %retval.0.i, %ecryptfs_get_key_payload_data.exit.if.then_crit_edge ], [ inttoptr (i32 -128 to ptr), %user_key_payload_locked.exit.i.if.then_crit_edge ], [ inttoptr (i32 -128 to ptr), %if.end.i.i.if.then_crit_edge ]
  %11 = ptrtoint ptr %retval.0.i28 to i32
  %12 = ptrtoint ptr %auth_tok to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %auth_tok, align 4
  br label %out

if.end:                                           ; preds = %ecryptfs_get_key_payload_data.exit
  %13 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_loadN_noabort(i32 %13, i32 2)
  %14 = load i16, ptr %retval.0.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %14)
  %cmp.not.i = icmp ult i16 %14, 256
  br i1 %cmp.not.i, label %if.end.i25, label %if.then.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %15 = lshr i16 %14, 8
  %conv1.i = zext i16 %15 to i32
  tail call void (ptr, ...) @__ecryptfs_printk(ptr noundef nonnull @.str.118, ptr noundef nonnull @__func__.ecryptfs_verify_version, i32 noundef 0, i32 noundef %conv1.i) #9
  br label %do.end

if.end.i25:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %14)
  %cmp9.not.i = icmp eq i16 %14, 4
  br i1 %cmp9.not.i, label %if.end6, label %if.then11.i

if.then11.i:                                      ; preds = %if.end.i25
  call void @__sanitizer_cov_trace_pc() #11
  %conv8.i = zext i16 %14 to i32
  tail call void (ptr, ...) @__ecryptfs_printk(ptr noundef nonnull @.str.119, ptr noundef nonnull @__func__.ecryptfs_verify_version, i32 noundef 4, i32 noundef %conv8.i) #9
  br label %do.end

do.end:                                           ; preds = %if.then11.i, %if.then.i
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.111, i32 noundef 0, i32 noundef 4) #13
  br label %out

if.end6:                                          ; preds = %if.end.i25
  %16 = ptrtoint ptr %auth_tok to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %auth_tok, align 4
  %token_type = getelementptr inbounds %struct.ecryptfs_auth_tok, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %token_type to i32
  call void @__asan_loadN_noabort(i32 %18, i32 2)
  %19 = load i16, ptr %token_type, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %19)
  %switch = icmp ult i16 %19, 2
  br i1 %switch, label %if.end6.out_crit_edge, label %do.end15

if.end6.out_crit_edge:                            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

do.end15:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.114) #13
  br label %out

out:                                              ; preds = %do.end15, %if.end6.out_crit_edge, %do.end, %if.then
  %rc.0 = phi i32 [ %11, %if.then ], [ -22, %do.end ], [ -22, %do.end15 ], [ 0, %if.end6.out_crit_edge ]
  ret i32 %rc.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ecryptfs_parse_packet_set(ptr noundef %crypt_stat, ptr noundef %src, ptr nocapture noundef readnone %ecryptfs_dentry) local_unnamed_addr #0 align 64 {
entry:
  %dst_sg.i = alloca [2 x %struct.scatterlist], align 4
  %src_sg.i = alloca [2 x %struct.scatterlist], align 4
  %tfm_mutex.i = alloca ptr, align 4
  %tfm.i = alloca ptr, align 4
  %msg_ctx.i = alloca ptr, align 4
  %msg.i = alloca ptr, align 4
  %auth_tok_list = alloca %struct.list_head, align 4
  %matching_auth_tok = alloca ptr, align 4
  %sig_tmp_space = alloca [8 x i8], align 8
  %auth_tok_key = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %auth_tok_list) #9
  %0 = getelementptr inbounds %struct.list_head, ptr %auth_tok_list, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %matching_auth_tok) #9
  %1 = ptrtoint ptr %matching_auth_tok to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %matching_auth_tok, align 4, !annotation !494
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %sig_tmp_space) #9
  %2 = ptrtoint ptr %sig_tmp_space to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -1, ptr %sig_tmp_space, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %auth_tok_key) #9
  %3 = ptrtoint ptr %auth_tok_key to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %auth_tok_key, align 4
  %4 = ptrtoint ptr %auth_tok_list to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %auth_tok_list, ptr %auth_tok_list, align 4
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %auth_tok_list, ptr %0, align 4
  %cipher.i = getelementptr inbounds %struct.ecryptfs_crypt_stat, ptr %crypt_stat, i32 0, i32 11
  %6 = getelementptr inbounds %struct.ecryptfs_crypt_stat, ptr %crypt_stat, i32 0, i32 5
  br label %while.body

while.body:                                       ; preds = %cleanup, %entry
  %i.0548 = phi i32 [ 0, %entry ], [ %i.2, %cleanup ]
  %sub = sub i32 4088, %i.0548
  %arrayidx = getelementptr i8, ptr %src, i32 %i.0548
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx, align 1
  %9 = zext i8 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.280)
  switch i8 %8, label %while.end [
    i8 -116, label %sw.bb
    i8 1, label %sw.bb17
    i8 -19, label %sw.bb26
  ]

sw.bb:                                            ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %sub)
  %cmp.i = icmp ult i32 %sub, 15
  br i1 %cmp.i, label %do.end.i, label %if.end9.i

do.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.120) #13
  br label %if.then

if.end9.i:                                        ; preds = %sw.bb
  %10 = load ptr, ptr @ecryptfs_auth_tok_list_item_cache, align 4
  %call.i.i = call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %10, i32 noundef 3520) #9
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %do.end14.i, label %if.end17.i

do.end14.i:                                       ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  %call16.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.126) #13
  br label %if.then

if.end17.i:                                       ; preds = %if.end9.i
  %arrayidx18.i = getelementptr i8, ptr %arrayidx, i32 1
  %11 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx18.i, align 1
  %conv.i.i = zext i8 %12 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 -64, i8 %12)
  %cmp.i.i = icmp ult i8 %12, -64
  br i1 %cmp.i.i, label %if.end17.i.if.end27.i_crit_edge, label %if.else.i.i

if.end17.i.if.end27.i_crit_edge:                  ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27.i

if.else.i.i:                                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -32, i8 %12)
  %cmp6.i.i = icmp ult i8 %12, -32
  br i1 %cmp6.i.i, label %if.then8.i.i, label %if.else14.i.i

if.then8.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i = shl nuw nsw i32 %conv.i.i, 8
  %arrayidx11.i.i = getelementptr i8, ptr %arrayidx18.i, i32 1
  %13 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx11.i.i, align 1
  %conv12.i.i = zext i8 %14 to i32
  %add.i.i = add nsw i32 %sub.i.i, -48960
  %add13.i.i = add nsw i32 %add.i.i, %conv12.i.i
  br label %if.end27.i

if.else14.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %12)
  %cmp17.i.i = icmp eq i8 %12, -1
  %.str..str.1.i = select i1 %cmp17.i.i, ptr @.str, ptr @.str.1
  call void (ptr, ...) @__ecryptfs_printk(ptr noundef nonnull %.str..str.1.i, ptr noundef nonnull @__func__.ecryptfs_parse_packet_length) #9
  %call26.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.129, i32 noundef -22) #13
  br label %out_free.i

if.end27.i:                                       ; preds = %if.then8.i.i, %if.end17.i.if.end27.i_crit_edge
  %body_size.0.ph.i = phi i32 [ %conv.i.i, %if.end17.i.if.end27.i_crit_edge ], [ %add13.i.i, %if.then8.i.i ]
  %length_size.0.ph.i = phi i32 [ 2, %if.end17.i.if.end27.i_crit_edge ], [ 3, %if.then8.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %body_size.0.ph.i)
  %cmp28.i = icmp ult i32 %body_size.0.ph.i, 13
  br i1 %cmp28.i, label %do.end35.i, label %if.end38.i, !prof !493

do.end35.i:                                       ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #11
  %call37.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.132, i32 noundef %body_size.0.ph.i) #13
  br label %out_free.i

if.end38.i:                                       ; preds = %if.end27.i
  %add39.i = add nsw i32 %length_size.0.ph.i, %body_size.0.ph.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add39.i, i32 %sub)
  %cmp40.i = icmp ugt i32 %add39.i, %sub
  br i1 %cmp40.i, label %do.end51.i, label %if.end54.i, !prof !493

do.end51.i:                                       ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #11
  %call53.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.135) #13
  br label %out_free.i

if.end54.i:                                       ; preds = %if.end38.i
  %sub.i = add nsw i32 %body_size.0.ph.i, -13
  %encrypted_key_size.i = getelementptr inbounds %struct.ecryptfs_auth_tok_list_item, ptr %call.i.i, i32 0, i32 2, i32 3, i32 1
  %15 = ptrtoint ptr %encrypted_key_size.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %sub.i, ptr %encrypted_key_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %sub.i)
  %cmp57.i = icmp ugt i32 %sub.i, 512
  br i1 %cmp57.i, label %do.end62.i, label %if.end65.i

do.end62.i:                                       ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #11
  %call64.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.138) #13
  br label %out_free.i

if.end65.i:                                       ; preds = %if.end54.i
  %arrayidx67.i = getelementptr i8, ptr %arrayidx, i32 %length_size.0.ph.i
  %16 = ptrtoint ptr %arrayidx67.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx67.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %17)
  %cmp69.not.i = icmp eq i8 %17, 4
  br i1 %cmp69.not.i, label %if.end86.i, label %do.end80.i, !prof !492

do.end80.i:                                       ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv68.i = zext i8 %17 to i32
  %call85.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.141, i32 noundef %conv68.i) #13
  br label %out_free.i

if.end86.i:                                       ; preds = %if.end65.i
  %inc66.i = add nuw nsw i32 %length_size.0.ph.i, 1
  %arrayidx87.i = getelementptr i8, ptr %arrayidx, i32 %inc66.i
  %18 = ptrtoint ptr %arrayidx87.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx87.i, align 1
  %call90.i = call i32 @ecryptfs_cipher_code_to_string(ptr noundef %cipher.i, i8 noundef zeroext %19) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90.i)
  %tobool91.not.i = icmp eq i32 %call90.i, 0
  br i1 %tobool91.not.i, label %if.end93.i, label %if.end86.i.out_free.i_crit_edge

if.end86.i.out_free.i_crit_edge:                  ; preds = %if.end86.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_free.i

if.end93.i:                                       ; preds = %if.end86.i
  %inc94.i = add nuw nsw i32 %length_size.0.ph.i, 2
  %20 = ptrtoint ptr %arrayidx87.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx87.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %21)
  %cond.i = icmp eq i8 %21, 8
  br i1 %cond.i, label %if.end93.i.sw.epilog.i_crit_edge, label %sw.default.i

if.end93.i.sw.epilog.i_crit_edge:                 ; preds = %if.end93.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

sw.default.i:                                     ; preds = %if.end93.i
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %encrypted_key_size.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %encrypted_key_size.i, align 4
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.default.i, %if.end93.i.sw.epilog.i_crit_edge
  %.sink.i = phi i32 [ %23, %sw.default.i ], [ 24, %if.end93.i.sw.epilog.i_crit_edge ]
  %24 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %.sink.i, ptr %6, align 4
  %call100.i = call i32 @ecryptfs_init_crypt_ctx(ptr noundef %crypt_stat) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call100.i)
  %tobool101.not.i = icmp eq i32 %call100.i, 0
  br i1 %tobool101.not.i, label %if.end103.i, label %sw.epilog.i.out_free.i_crit_edge

sw.epilog.i.out_free.i_crit_edge:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_free.i

if.end103.i:                                      ; preds = %sw.epilog.i
  %arrayidx105.i = getelementptr i8, ptr %arrayidx, i32 %inc94.i
  %25 = ptrtoint ptr %arrayidx105.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx105.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %26)
  %cmp107.not.i = icmp eq i8 %26, 3
  br i1 %cmp107.not.i, label %if.end121.i, label %do.end118.i, !prof !492

do.end118.i:                                      ; preds = %if.end103.i
  call void @__sanitizer_cov_trace_pc() #11
  %call120.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.144) #13
  br label %out_free.i

if.end121.i:                                      ; preds = %if.end103.i
  %inc104.i = add nuw nsw i32 %length_size.0.ph.i, 3
  %arrayidx123.i = getelementptr i8, ptr %arrayidx, i32 %inc104.i
  %27 = ptrtoint ptr %arrayidx123.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx123.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %28)
  %cond164.i = icmp eq i8 %28, 1
  br i1 %cond164.i, label %sw.bb125.i, label %sw.default150.i

sw.bb125.i:                                       ; preds = %if.end121.i
  %inc122.i = or i32 %length_size.0.ph.i, 4
  %salt.i = getelementptr inbounds %struct.ecryptfs_auth_tok_list_item, ptr %call.i.i, i32 0, i32 2, i32 5, i32 0, i32 7
  %arrayidx127.i = getelementptr i8, ptr %arrayidx, i32 %inc122.i
  %29 = ptrtoint ptr %arrayidx127.i to i32
  call void @__asan_loadN_noabort(i32 %29, i32 8)
  %30 = load i64, ptr %arrayidx127.i, align 1
  %31 = ptrtoint ptr %salt.i to i32
  call void @__asan_storeN_noabort(i32 %31, i32 8)
  store i64 %30, ptr %salt.i, align 1
  %add128.i = or i32 %length_size.0.ph.i, 12
  %arrayidx129.i = getelementptr i8, ptr %arrayidx, i32 %add128.i
  %32 = ptrtoint ptr %arrayidx129.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx129.i, align 1
  %conv130.i = zext i8 %33 to i32
  %and.i = and i32 %conv130.i, 15
  %add131.i = or i32 %and.i, 16
  %34 = lshr i32 %conv130.i, 4
  %add134.i = add nuw nsw i32 %34, 6
  %shl.i = shl i32 %add131.i, %add134.i
  %hash_iterations.i = getelementptr inbounds %struct.ecryptfs_auth_tok_list_item, ptr %call.i.i, i32 0, i32 2, i32 5, i32 0, i32 2
  %35 = ptrtoint ptr %hash_iterations.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %shl.i, ptr %hash_iterations.i, align 4
  %inc136.i = add nuw nsw i32 %length_size.0.ph.i, 13
  %encrypted_key.i = getelementptr inbounds %struct.ecryptfs_auth_tok_list_item, ptr %call.i.i, i32 0, i32 2, i32 3, i32 3
  %arrayidx139.i = getelementptr i8, ptr %arrayidx, i32 %inc136.i
  %36 = ptrtoint ptr %encrypted_key_size.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %encrypted_key_size.i, align 4
  %38 = call ptr @memcpy(ptr %encrypted_key.i, ptr %arrayidx139.i, i32 %37)
  %session_key145.i = getelementptr inbounds %struct.ecryptfs_auth_tok_list_item, ptr %call.i.i, i32 0, i32 2, i32 3
  %39 = ptrtoint ptr %session_key145.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %session_key145.i, align 8
  %hash_algo.i = getelementptr inbounds %struct.ecryptfs_auth_tok_list_item, ptr %call.i.i, i32 0, i32 2, i32 5, i32 0, i32 1
  %41 = ptrtoint ptr %hash_algo.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 1, ptr %hash_algo.i, align 8
  %token_type.i = getelementptr inbounds %struct.ecryptfs_auth_tok_list_item, ptr %call.i.i, i32 0, i32 2, i32 1
  %42 = ptrtoint ptr %token_type.i to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 0, ptr %token_type.i, align 2
  %or.i = and i32 %40, -16
  %and160.i = or i32 %or.i, 8
  store i32 %and160.i, ptr %session_key145.i, align 8
  %list.i = getelementptr inbounds %struct.ecryptfs_auth_tok_list_item, ptr %call.i.i, i32 0, i32 1
  %43 = ptrtoint ptr %auth_tok_list to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %auth_tok_list, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %list.i, ptr noundef nonnull %auth_tok_list, ptr noundef %44) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %sw.bb125.i.if.end_crit_edge

sw.bb125.i.if.end_crit_edge:                      ; preds = %sw.bb125.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end.i.i.i:                                     ; preds = %sw.bb125.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %list.i, ptr %prev1.i.i.i, align 4
  %46 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %44, ptr %list.i, align 8
  %prev3.i.i.i = getelementptr inbounds %struct.ecryptfs_auth_tok_list_item, ptr %call.i.i, i32 0, i32 1, i32 1
  %47 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %auth_tok_list, ptr %prev3.i.i.i, align 4
  %48 = ptrtoint ptr %auth_tok_list to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile ptr %list.i, ptr %auth_tok_list, align 4
  br label %if.end

sw.default150.i:                                  ; preds = %if.end121.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv124.i = zext i8 %28 to i32
  call void (ptr, ...) @__ecryptfs_printk(ptr noundef nonnull @.str.146, ptr noundef nonnull @.str.121, i32 noundef %conv124.i) #9
  br label %out_free.i

out_free.i:                                       ; preds = %sw.default150.i, %do.end118.i, %sw.epilog.i.out_free.i_crit_edge, %if.end86.i.out_free.i_crit_edge, %do.end80.i, %do.end62.i, %do.end51.i, %do.end35.i, %if.else14.i.i
  %49 = call ptr @memset(ptr %call.i.i, i32 0, i32 812)
  %50 = load ptr, ptr @ecryptfs_auth_tok_list_item_cache, align 4
  call void @kmem_cache_free(ptr noundef %50, ptr noundef nonnull %call.i.i) #9
  br label %if.then

if.then:                                          ; preds = %out_free.i, %do.end14.i, %do.end.i
  call void (ptr, ...) @__ecryptfs_printk(ptr noundef nonnull @.str.85, ptr noundef nonnull @__func__.ecryptfs_parse_packet_set) #9
  br label %out_wipe_list

if.end:                                           ; preds = %if.end.i.i.i, %sw.bb125.i.if.end_crit_edge
  %add144.i = add i32 %inc136.i, %i.0548
  %add = add i32 %add144.i, %37
  %arrayidx3 = getelementptr i8, ptr %src, i32 %add
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %sub)
  %cmp.i206 = icmp ult i32 %sub, 16
  br i1 %cmp.i206, label %do.end.i208, label %if.end.i212

do.end.i208:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call.i207 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.147) #13
  br label %if.then6

if.end.i212:                                      ; preds = %if.end
  %51 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -19, i8 %52)
  %cmp1.not.i211 = icmp eq i8 %52, -19
  br i1 %cmp1.not.i211, label %if.end9.i217, label %do.end6.i214

do.end6.i214:                                     ; preds = %if.end.i212
  call void @__sanitizer_cov_trace_pc() #11
  %call8.i213 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.150) #13
  br label %if.then6

if.end9.i217:                                     ; preds = %if.end.i212
  %arrayidx10.i = getelementptr i8, ptr %arrayidx3, i32 1
  %53 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx10.i, align 1
  %conv.i.i215 = zext i8 %54 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 -64, i8 %54)
  %cmp.i.i216 = icmp ult i8 %54, -64
  br i1 %cmp.i.i216, label %if.end9.i217.if.end18.i_crit_edge, label %if.else.i.i219

if.end9.i217.if.end18.i_crit_edge:                ; preds = %if.end9.i217
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18.i

if.else.i.i219:                                   ; preds = %if.end9.i217
  call void @__sanitizer_cov_trace_const_cmp1(i8 -32, i8 %54)
  %cmp6.i.i218 = icmp ult i8 %54, -32
  br i1 %cmp6.i.i218, label %if.then8.i.i225, label %if.else14.i.i228

if.then8.i.i225:                                  ; preds = %if.else.i.i219
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i220 = shl nuw nsw i32 %conv.i.i215, 8
  %arrayidx11.i.i221 = getelementptr i8, ptr %arrayidx10.i, i32 1
  %55 = ptrtoint ptr %arrayidx11.i.i221 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx11.i.i221, align 1
  %conv12.i.i222 = zext i8 %56 to i32
  %add.i.i223 = add nsw i32 %sub.i.i220, -48960
  %add13.i.i224 = add nsw i32 %add.i.i223, %conv12.i.i222
  br label %if.end18.i

if.else14.i.i228:                                 ; preds = %if.else.i.i219
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %54)
  %cmp17.i.i226 = icmp eq i8 %54, -1
  %.str..str.1.i227 = select i1 %cmp17.i.i226, ptr @.str, ptr @.str.1
  call void (ptr, ...) @__ecryptfs_printk(ptr noundef nonnull %.str..str.1.i227, ptr noundef nonnull @__func__.ecryptfs_parse_packet_length) #9
  %call17.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.150) #13
  br label %if.then6

if.end18.i:                                       ; preds = %if.then8.i.i225, %if.end9.i217.if.end18.i_crit_edge
  %body_size.0.ph.i229 = phi i32 [ %conv.i.i215, %if.end9.i217.if.end18.i_crit_edge ], [ %add13.i.i224, %if.then8.i.i225 ]
  %length_size.0.ph.i230 = phi i32 [ 2, %if.end9.i217.if.end18.i_crit_edge ], [ 3, %if.then8.i.i225 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %body_size.0.ph.i229)
  %cmp19.i = icmp ult i32 %body_size.0.ph.i229, 14
  br i1 %cmp19.i, label %do.end24.i, label %if.end27.i234

do.end24.i:                                       ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #11
  %call26.i231 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.132, i32 noundef %body_size.0.ph.i229) #13
  br label %if.then6

if.end27.i234:                                    ; preds = %if.end18.i
  %sub.i233 = add nsw i32 %body_size.0.ph.i229, -14
  %add28.i = add nuw nsw i32 %length_size.0.ph.i230, 1
  %add29.i = add nsw i32 %add28.i, %body_size.0.ph.i229
  call void @__sanitizer_cov_trace_cmp4(i32 %add29.i, i32 %sub)
  %cmp30.i = icmp ugt i32 %add29.i, %sub
  br i1 %cmp30.i, label %do.end37.i, label %if.end40.i, !prof !493

do.end37.i:                                       ; preds = %if.end27.i234
  call void @__sanitizer_cov_trace_pc() #11
  %call39.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.135) #13
  br label %if.then6

if.end40.i:                                       ; preds = %if.end27.i234
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %sub.i233)
  %cmp41.i = icmp ugt i32 %sub.i233, 8
  br i1 %cmp41.i, label %do.end52.i, label %if.end55.i, !prof !493

do.end52.i:                                       ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #11
  %call54.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.159) #13
  br label %if.then6

if.end55.i:                                       ; preds = %if.end40.i
  %arrayidx57.i = getelementptr i8, ptr %arrayidx3, i32 %length_size.0.ph.i230
  %57 = ptrtoint ptr %arrayidx57.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx57.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 98, i8 %58)
  %cmp59.not.i = icmp eq i8 %58, 98
  br i1 %cmp59.not.i, label %if.end67.i, label %do.end64.i

do.end64.i:                                       ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #11
  %call66.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.162) #13
  br label %if.then6

if.end67.i:                                       ; preds = %if.end55.i
  %arrayidx69.i = getelementptr i8, ptr %arrayidx3, i32 %add28.i
  %59 = ptrtoint ptr %arrayidx69.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx69.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %60)
  %cmp71.not.i = icmp eq i8 %60, 8
  br i1 %cmp71.not.i, label %if.end7, label %do.end76.i

do.end76.i:                                       ; preds = %if.end67.i
  call void @__sanitizer_cov_trace_pc() #11
  %call78.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.162) #13
  br label %if.then6

if.then6:                                         ; preds = %do.end76.i, %do.end64.i, %do.end52.i, %do.end37.i, %do.end24.i, %if.else14.i.i228, %do.end6.i214, %do.end.i208
  call void (ptr, ...) @__ecryptfs_printk(ptr noundef nonnull @.str.86, ptr noundef nonnull @__func__.ecryptfs_parse_packet_set) #9
  br label %out_wipe_list

if.end7:                                          ; preds = %if.end67.i
  %add80.i = add nuw nsw i32 %length_size.0.ph.i230, 14
  %arrayidx81.i = getelementptr i8, ptr %arrayidx3, i32 %add80.i
  %61 = call ptr @memcpy(ptr %sig_tmp_space, ptr %arrayidx81.i, i32 %sub.i233)
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %sub.i233)
  %cmp.not = icmp eq i32 %sub.i233, 8
  br i1 %cmp.not, label %if.end11, label %if.then10

if.then10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ...) @__ecryptfs_printk(ptr noundef nonnull @.str.87, ptr noundef nonnull @__func__.ecryptfs_parse_packet_set, i32 noundef 8, i32 noundef %sub.i233) #9
  br label %out_wipe_list

if.end11:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  %add82.i = add i32 %body_size.0.ph.i229, %add
  %add8 = add i32 %add82.i, %length_size.0.ph.i230
  %signature = getelementptr inbounds %struct.ecryptfs_auth_tok_list_item, ptr %call.i.i, i32 0, i32 2, i32 5, i32 0, i32 6
  %call.i235 = call ptr @bin2hex(ptr noundef %signature, ptr noundef nonnull %sig_tmp_space, i32 noundef 8) #9
  %62 = ptrtoint ptr %call.i235 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 0, ptr %call.i235, align 1
  %arrayidx16 = getelementptr %struct.ecryptfs_auth_tok_list_item, ptr %call.i.i, i32 0, i32 2, i32 5, i32 0, i32 6, i32 16
  %63 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 0, ptr %arrayidx16, align 8
  br label %cleanup

sw.bb17:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %sub)
  %cmp.i236 = icmp ult i32 %sub, 12
  br i1 %cmp.i236, label %do.end.i238, label %if.end10.i, !prof !493

do.end.i238:                                      ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #11
  %call.i237 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.166) #13
  br label %if.then21

if.end10.i:                                       ; preds = %sw.bb17
  %64 = load ptr, ptr @ecryptfs_auth_tok_list_item_cache, align 4
  %call.i.i242 = call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %64, i32 noundef 3520) #9
  %tobool12.not.i = icmp eq ptr %call.i.i242, null
  br i1 %tobool12.not.i, label %do.end16.i, label %if.end19.i

do.end16.i:                                       ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  %call18.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.126) #13
  br label %if.then21

if.end19.i:                                       ; preds = %if.end10.i
  %arrayidx20.i = getelementptr i8, ptr %arrayidx, i32 1
  %65 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %arrayidx20.i, align 1
  %conv.i.i244 = zext i8 %66 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 -64, i8 %66)
  %cmp.i.i245 = icmp ult i8 %66, -64
  br i1 %cmp.i.i245, label %if.end19.i.if.end29.i_crit_edge, label %if.else.i.i247

if.end19.i.if.end29.i_crit_edge:                  ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29.i

if.else.i.i247:                                   ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -32, i8 %66)
  %cmp6.i.i246 = icmp ult i8 %66, -32
  br i1 %cmp6.i.i246, label %if.then8.i.i253, label %if.else14.i.i256

if.then8.i.i253:                                  ; preds = %if.else.i.i247
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i248 = shl nuw nsw i32 %conv.i.i244, 8
  %arrayidx11.i.i249 = getelementptr i8, ptr %arrayidx20.i, i32 1
  %67 = ptrtoint ptr %arrayidx11.i.i249 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %arrayidx11.i.i249, align 1
  %conv12.i.i250 = zext i8 %68 to i32
  %add.i.i251 = add nsw i32 %sub.i.i248, -48960
  %add13.i.i252 = add nsw i32 %add.i.i251, %conv12.i.i250
  br label %if.end29.i

if.else14.i.i256:                                 ; preds = %if.else.i.i247
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %66)
  %cmp17.i.i254 = icmp eq i8 %66, -1
  %.str..str.1.i255 = select i1 %cmp17.i.i254, ptr @.str, ptr @.str.1
  call void (ptr, ...) @__ecryptfs_printk(ptr noundef nonnull %.str..str.1.i255, ptr noundef nonnull @__func__.ecryptfs_parse_packet_length) #9
  %call28.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.129, i32 noundef -22) #13
  br label %out_free.i272

if.end29.i:                                       ; preds = %if.then8.i.i253, %if.end19.i.if.end29.i_crit_edge
  %body_size.0.ph.i257 = phi i32 [ %conv.i.i244, %if.end19.i.if.end29.i_crit_edge ], [ %add13.i.i252, %if.then8.i.i253 ]
  %length_size.0.ph.i258 = phi i32 [ 2, %if.end19.i.if.end29.i_crit_edge ], [ 3, %if.then8.i.i253 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %body_size.0.ph.i257)
  %cmp30.i259 = icmp ult i32 %body_size.0.ph.i257, 10
  br i1 %cmp30.i259, label %do.end41.i, label %if.end44.i, !prof !493

do.end41.i:                                       ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #11
  %call43.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.132, i32 noundef %body_size.0.ph.i257) #13
  br label %out_free.i272

if.end44.i:                                       ; preds = %if.end29.i
  %add45.i = add nsw i32 %length_size.0.ph.i258, %body_size.0.ph.i257
  call void @__sanitizer_cov_trace_cmp4(i32 %add45.i, i32 %sub)
  %cmp46.i = icmp ugt i32 %add45.i, %sub
  br i1 %cmp46.i, label %do.end57.i, label %if.end60.i, !prof !493

do.end57.i:                                       ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #11
  %call59.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.178) #13
  br label %out_free.i272

if.end60.i:                                       ; preds = %if.end44.i
  %arrayidx62.i = getelementptr i8, ptr %arrayidx, i32 %length_size.0.ph.i258
  %69 = ptrtoint ptr %arrayidx62.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %arrayidx62.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %70)
  %cmp64.not.i = icmp eq i8 %70, 3
  br i1 %cmp64.not.i, label %if.end80.i, label %do.end75.i, !prof !492

do.end75.i:                                       ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv63.i = zext i8 %70 to i32
  %call79.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.141, i32 noundef %conv63.i) #13
  br label %out_free.i272

if.end80.i:                                       ; preds = %if.end60.i
  %inc61.i = add nuw nsw i32 %length_size.0.ph.i258, 1
  %signature.i = getelementptr inbounds %struct.ecryptfs_auth_tok_list_item, ptr %call.i.i242, i32 0, i32 2, i32 5, i32 0, i32 2
  %arrayidx81.i261 = getelementptr i8, ptr %arrayidx, i32 %inc61.i
  %call.i1.i = call ptr @bin2hex(ptr noundef %signature.i, ptr noundef %arrayidx81.i261, i32 noundef 8) #9
  %71 = ptrtoint ptr %call.i1.i to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 0, ptr %call.i1.i, align 1
  %sub84.i = add nsw i32 %body_size.0.ph.i257, -10
  %encrypted_key_size.i262 = getelementptr inbounds %struct.ecryptfs_auth_tok_list_item, ptr %call.i.i242, i32 0, i32 2, i32 3, i32 1
  %72 = ptrtoint ptr %encrypted_key_size.i262 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %sub84.i, ptr %encrypted_key_size.i262, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %sub84.i)
  %cmp87.i = icmp ugt i32 %sub84.i, 512
  br i1 %cmp87.i, label %do.end92.i, label %if.end95.i

do.end92.i:                                       ; preds = %if.end80.i
  call void @__sanitizer_cov_trace_pc() #11
  %call94.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.183) #13
  br label %out_free.i272

if.end95.i:                                       ; preds = %if.end80.i
  %inc83.i = add nuw nsw i32 %length_size.0.ph.i258, 10
  %encrypted_key.i263 = getelementptr inbounds %struct.ecryptfs_auth_tok_list_item, ptr %call.i.i242, i32 0, i32 2, i32 3, i32 3
  %arrayidx98.i = getelementptr i8, ptr %arrayidx, i32 %inc83.i
  %73 = call ptr @memcpy(ptr %encrypted_key.i263, ptr %arrayidx98.i, i32 %sub84.i)
  %session_key103.i = getelementptr inbounds %struct.ecryptfs_auth_tok_list_item, ptr %call.i.i242, i32 0, i32 2, i32 3
  %74 = ptrtoint ptr %session_key103.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %session_key103.i, align 8
  %token_type.i266 = getelementptr inbounds %struct.ecryptfs_auth_tok_list_item, ptr %call.i.i242, i32 0, i32 2, i32 1
  %76 = ptrtoint ptr %token_type.i266 to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 1, ptr %token_type.i266, align 2
  %flags106.i = getelementptr inbounds %struct.ecryptfs_auth_tok_list_item, ptr %call.i.i242, i32 0, i32 2, i32 2
  %77 = ptrtoint ptr %flags106.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 0, ptr %flags106.i, align 4
  %or.i265 = and i32 %75, -16
  %and112.i = or i32 %or.i265, 8
  store i32 %and112.i, ptr %session_key103.i, align 8
  %list.i267 = getelementptr inbounds %struct.ecryptfs_auth_tok_list_item, ptr %call.i.i242, i32 0, i32 1
  %78 = ptrtoint ptr %auth_tok_list to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %auth_tok_list, align 4
  %call.i.i.i268 = call zeroext i1 @__list_add_valid(ptr noundef %list.i267, ptr noundef nonnull %auth_tok_list, ptr noundef %79) #9
  br i1 %call.i.i.i268, label %if.end.i.i.i271, label %if.end95.i.if.end22_crit_edge

if.end95.i.if.end22_crit_edge:                    ; preds = %if.end95.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

if.end.i.i.i271:                                  ; preds = %if.end95.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev1.i.i.i269 = getelementptr inbounds %struct.list_head, ptr %79, i32 0, i32 1
  %80 = ptrtoint ptr %prev1.i.i.i269 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %list.i267, ptr %prev1.i.i.i269, align 4
  %81 = ptrtoint ptr %list.i267 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %79, ptr %list.i267, align 8
  %prev3.i.i.i270 = getelementptr inbounds %struct.ecryptfs_auth_tok_list_item, ptr %call.i.i242, i32 0, i32 1, i32 1
  %82 = ptrtoint ptr %prev3.i.i.i270 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %auth_tok_list, ptr %prev3.i.i.i270, align 4
  %83 = ptrtoint ptr %auth_tok_list to i32
  call void @__asan_store4_noabort(i32 %83)
  store volatile ptr %list.i267, ptr %auth_tok_list, align 4
  br label %if.end22

out_free.i272:                                    ; preds = %do.end92.i, %do.end75.i, %do.end57.i, %do.end41.i, %if.else14.i.i256
  %84 = call ptr @memset(ptr %call.i.i242, i32 0, i32 812)
  %85 = load ptr, ptr @ecryptfs_auth_tok_list_item_cache, align 4
  call void @kmem_cache_free(ptr noundef %85, ptr noundef nonnull %call.i.i242) #9
  br label %if.then21

if.then21:                                        ; preds = %out_free.i272, %do.end16.i, %do.end.i238
  call void (ptr, ...) @__ecryptfs_printk(ptr noundef nonnull @.str.88, ptr noundef nonnull @__func__.ecryptfs_parse_packet_set) #9
  br label %out_wipe_list

if.end22:                                         ; preds = %if.end.i.i.i271, %if.end95.i.if.end22_crit_edge
  %add23 = add i32 %add45.i, %i.0548
  br label %cleanup

sw.bb26:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ...) @__ecryptfs_printk(ptr noundef nonnull @.str.89, ptr noundef nonnull @__func__.ecryptfs_parse_packet_set) #9
  br label %out_wipe_list

cleanup:                                          ; preds = %if.end22, %if.end11
  %i.2 = phi i32 [ %add8, %if.end11 ], [ %add23, %if.end22 ]
  %86 = ptrtoint ptr %crypt_stat to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %crypt_stat, align 4
  %or = or i32 %87, 4
  store i32 %or, ptr %crypt_stat, align 4
  br label %while.body

while.end:                                        ; preds = %while.body
  %conv = zext i8 %8 to i32
  call void (ptr, ...) @__ecryptfs_printk(ptr noundef nonnull @.str.90, ptr noundef nonnull @__func__.ecryptfs_parse_packet_set, i32 noundef %i.0548, i32 noundef %conv) #9
  %88 = ptrtoint ptr %auth_tok_list to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load volatile ptr, ptr %auth_tok_list, align 4
  %cmp.i274.not = icmp eq ptr %89, %auth_tok_list
  br i1 %cmp.i274.not, label %do.end, label %find_next_matching_auth_tok.preheader

find_next_matching_auth_tok.preheader:            ; preds = %while.end
  %mount_crypt_stat = getelementptr inbounds %struct.ecryptfs_crypt_stat, ptr %crypt_stat, i32 0, i32 8
  %key.i348 = getelementptr inbounds %struct.ecryptfs_crypt_stat, ptr %crypt_stat, i32 0, i32 12
  br label %for.cond

do.end:                                           ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  %call32 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.91) #13
  br label %cleanup137

for.cond:                                         ; preds = %for.cond.backedge, %find_next_matching_auth_tok.preheader
  %.pn.in = phi ptr [ %auth_tok_list, %find_next_matching_auth_tok.preheader ], [ %.pn.in.be, %for.cond.backedge ]
  %90 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %90)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp35.not = icmp eq ptr %.pn, %auth_tok_list
  br i1 %cmp35.not, label %if.then64, label %for.body

for.body:                                         ; preds = %for.cond
  %auth_tok = getelementptr i8, ptr %.pn, i32 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ecryptfs_verbosity to i32))
  %91 = load i32, ptr @ecryptfs_verbosity, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %cmp37 = icmp sgt i32 %91, 0
  br i1 %cmp37, label %if.then42, label %for.body.if.end43_crit_edge, !prof !493

for.body.if.end43_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end43

if.then42:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ...) @__ecryptfs_printk(ptr noundef nonnull @.str.92, ptr noundef nonnull @__func__.ecryptfs_parse_packet_set) #9
  call void @ecryptfs_dump_auth_tok(ptr noundef %auth_tok) #9
  br label %if.end43

if.end43:                                         ; preds = %if.then42, %for.body.if.end43_crit_edge
  %token_type.i275 = getelementptr i8, ptr %.pn, i32 10
  %92 = ptrtoint ptr %token_type.i275 to i32
  call void @__asan_loadN_noabort(i32 %92, i32 2)
  %93 = load i16, ptr %token_type.i275, align 1
  %94 = zext i16 %93 to i64
  call void @__sanitizer_cov_trace_switch(i64 %94, ptr @__sancov_gen_cov_switch_values.281)
  switch i16 %93, label %do.end49 [
    i16 0, label %if.end43.if.end53_crit_edge
    i16 1, label %sw.bb1.i
  ]

if.end43.if.end53_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end53

sw.bb1.i:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end53

do.end49:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  %token_type.i275.le827 = getelementptr i8, ptr %.pn, i32 10
  %conv.i277 = zext i16 %93 to i32
  %call.i278 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.185, i32 noundef %conv.i277) #13
  %95 = ptrtoint ptr %token_type.i275.le827 to i32
  call void @__asan_loadN_noabort(i32 %95, i32 2)
  %96 = load i16, ptr %token_type.i275.le827, align 1
  %conv51 = zext i16 %96 to i32
  %call52 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.94, i32 noundef %conv51) #13
  br label %out_wipe_list

if.end53:                                         ; preds = %sw.bb1.i, %if.end43.if.end53_crit_edge
  %.sink = phi i32 [ 644, %sw.bb1.i ], [ 720, %if.end43.if.end53_crit_edge ]
  %signature3.i = getelementptr i8, ptr %.pn, i32 %.sink
  %97 = ptrtoint ptr %mount_crypt_stat to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %mount_crypt_stat, align 4
  %call.i282 = call fastcc i32 @ecryptfs_find_global_auth_tok_for_sig(ptr noundef nonnull %auth_tok_key, ptr noundef nonnull %matching_auth_tok, ptr noundef %98, ptr noundef %signature3.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %call.i282)
  %cmp.i283 = icmp eq i32 %call.i282, -2
  br i1 %cmp.i283, label %if.then.i, label %if.end53.ecryptfs_find_auth_tok_for_sig.exit_crit_edge

if.end53.ecryptfs_find_auth_tok_for_sig.exit_crit_edge: ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #11
  br label %ecryptfs_find_auth_tok_for_sig.exit

if.then.i:                                        ; preds = %if.end53
  %99 = ptrtoint ptr %98 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %98, align 4
  %and.i284 = and i32 %100, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i284)
  %tobool.not.i285 = icmp eq i32 %and.i284, 0
  br i1 %tobool.not.i285, label %if.end.i286, label %if.then.i.ecryptfs_find_auth_tok_for_sig.exit_crit_edge

if.then.i.ecryptfs_find_auth_tok_for_sig.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ecryptfs_find_auth_tok_for_sig.exit

if.end.i286:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %call2.i = call i32 @ecryptfs_keyring_auth_tok_for_sig(ptr noundef nonnull %auth_tok_key, ptr noundef nonnull %matching_auth_tok, ptr noundef %signature3.i) #9
  br label %ecryptfs_find_auth_tok_for_sig.exit

ecryptfs_find_auth_tok_for_sig.exit:              ; preds = %if.end.i286, %if.then.i.ecryptfs_find_auth_tok_for_sig.exit_crit_edge, %if.end53.ecryptfs_find_auth_tok_for_sig.exit_crit_edge
  %retval.0.i = phi i32 [ -22, %if.then.i.ecryptfs_find_auth_tok_for_sig.exit_crit_edge ], [ %call2.i, %if.end.i286 ], [ %call.i282, %if.end53.ecryptfs_find_auth_tok_for_sig.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool55.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool55.not, label %found_matching_auth_tok, label %ecryptfs_find_auth_tok_for_sig.exit.for.cond.backedge_crit_edge

ecryptfs_find_auth_tok_for_sig.exit.for.cond.backedge_crit_edge: ; preds = %ecryptfs_find_auth_tok_for_sig.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.backedge

for.cond.backedge:                                ; preds = %list_del.exit, %ecryptfs_find_auth_tok_for_sig.exit.for.cond.backedge_crit_edge
  %.pn.in.be = phi ptr [ %.pn, %ecryptfs_find_auth_tok_for_sig.exit.for.cond.backedge_crit_edge ], [ %auth_tok_list, %list_del.exit ]
  br label %for.cond

if.then64:                                        ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ...) @__ecryptfs_printk(ptr noundef nonnull @.str.96, ptr noundef nonnull @__func__.ecryptfs_parse_packet_set) #9
  br label %out_wipe_list

found_matching_auth_tok:                          ; preds = %ecryptfs_find_auth_tok_for_sig.exit
  %token_type.i275.le = getelementptr i8, ptr %.pn, i32 10
  %101 = ptrtoint ptr %token_type.i275.le to i32
  call void @__asan_loadN_noabort(i32 %101, i32 2)
  %102 = load i16, ptr %token_type.i275.le, align 1
  %103 = zext i16 %102 to i64
  call void @__sanitizer_cov_trace_switch(i64 %103, ptr @__sancov_gen_cov_switch_values.282)
  switch i16 %102, label %if.end86.thread [
    i16 1, label %if.then70
    i16 0, label %if.then78
  ]

if.then70:                                        ; preds = %found_matching_auth_tok
  %token71 = getelementptr i8, ptr %.pn, i32 636
  %104 = ptrtoint ptr %matching_auth_tok to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %matching_auth_tok, align 4
  %token72 = getelementptr inbounds %struct.ecryptfs_auth_tok, ptr %105, i32 0, i32 5
  %106 = call ptr @memcpy(ptr %token71, ptr %token72, i32 44)
  %107 = ptrtoint ptr %auth_tok_key to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %auth_tok_key, align 4
  %sem = getelementptr inbounds %struct.key, ptr %108, i32 0, i32 4
  call void @up_write(ptr noundef %sem) #9
  call void @key_put(ptr noundef %108) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %msg_ctx.i) #9
  %109 = ptrtoint ptr %msg_ctx.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr inttoptr (i32 -1 to ptr), ptr %msg_ctx.i, align 4, !annotation !494
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %msg.i) #9
  %110 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr null, ptr %msg.i, align 4
  %111 = ptrtoint ptr %token_type.i275.le to i32
  call void @__asan_loadN_noabort(i32 %111, i32 2)
  %112 = load i16, ptr %token_type.i275.le, align 1
  %113 = zext i16 %112 to i64
  call void @__sanitizer_cov_trace_switch(i64 %113, ptr @__sancov_gen_cov_switch_values.283)
  switch i16 %112, label %do.end.i290 [
    i16 0, label %if.then70.if.end.i292_crit_edge
    i16 1, label %sw.bb1.i.i
  ]

if.then70.if.end.i292_crit_edge:                  ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i292

sw.bb1.i.i:                                       ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i292

do.end.i290:                                      ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i287 = zext i16 %112 to i32
  %call.i.i288 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.185, i32 noundef %conv.i.i287) #13
  %114 = ptrtoint ptr %token_type.i275.le to i32
  call void @__asan_loadN_noabort(i32 %114, i32 2)
  %115 = load i16, ptr %token_type.i275.le, align 1
  %conv.i289 = zext i16 %115 to i32
  %call1.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.187, i32 noundef %conv.i289) #13
  br label %decrypt_pki_encrypted_session_key.exit

if.end.i292:                                      ; preds = %sw.bb1.i.i, %if.then70.if.end.i292_crit_edge
  %.sink829 = phi i32 [ 644, %sw.bb1.i.i ], [ 720, %if.then70.if.end.i292_crit_edge ]
  %session_key.i = getelementptr i8, ptr %.pn, i32 16
  %encrypted_key_size.i.i = getelementptr i8, ptr %.pn, i32 20
  %116 = ptrtoint ptr %encrypted_key_size.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %encrypted_key_size.i.i, align 4
  %add.i.i291 = add i32 %117, 21
  %call9.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add.i.i291, i32 noundef 3264) #14
  %tobool.not.i.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool.not.i.i, label %if.end.i292.if.then4.i_crit_edge, label %if.end5.i.i

if.end.i292.if.then4.i_crit_edge:                 ; preds = %if.end.i292
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then4.i

if.end5.i.i:                                      ; preds = %if.end.i292
  %signature3.i.i = getelementptr i8, ptr %.pn, i32 %.sink829
  %118 = ptrtoint ptr %call9.i.i.i to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 64, ptr %call9.i.i.i, align 128
  %arrayidx1.i.i = getelementptr i8, ptr %call9.i.i.i, i32 1
  %119 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 16, ptr %arrayidx1.i.i, align 1
  %arrayidx7.i.i = getelementptr i8, ptr %call9.i.i.i, i32 2
  %120 = call ptr @memcpy(ptr %arrayidx7.i.i, ptr %signature3.i.i, i32 16)
  %arrayidx9.i.i = getelementptr i8, ptr %call9.i.i.i, i32 18
  %121 = ptrtoint ptr %encrypted_key_size.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %encrypted_key_size.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 192, i32 %122)
  %cmp.i42.i.i = icmp ult i32 %122, 192
  br i1 %cmp.i42.i.i, label %if.then.i43.i.i, label %if.else.i.i.i

if.then.i43.i.i:                                  ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i.i = trunc i32 %122 to i8
  %123 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 %conv.i.i.i, ptr %arrayidx9.i.i, align 2
  br label %if.end5.i

if.else.i.i.i:                                    ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %122)
  %cmp1.i.i.i = icmp ult i32 %122, 65536
  br i1 %cmp1.i.i.i, label %if.then3.i.i.i, label %if.then13.i.i

if.then3.i.i.i:                                   ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i.i = add nsw i32 %122, -192
  %div19.i.i.i = lshr i32 %sub.i.i.i, 8
  %124 = trunc i32 %div19.i.i.i to i8
  %conv4.i.i.i = add i8 %124, -64
  %125 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 %conv4.i.i.i, ptr %arrayidx9.i.i, align 2
  %conv7.i.i.i = trunc i32 %sub.i.i.i to i8
  %arrayidx8.i.i.i = getelementptr i8, ptr %call9.i.i.i, i32 19
  %126 = ptrtoint ptr %arrayidx8.i.i.i to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 %conv7.i.i.i, ptr %arrayidx8.i.i.i, align 1
  br label %if.end5.i

if.then13.i.i:                                    ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ...) @__ecryptfs_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.ecryptfs_write_packet_length, i32 noundef %122) #9
  br label %if.then4.i

if.then4.i:                                       ; preds = %if.then13.i.i, %if.end.i292.if.then4.i_crit_edge
  %.str.198.sink.i = phi ptr [ @.str.198, %if.then13.i.i ], [ @.str.197, %if.end.i292.if.then4.i_crit_edge ]
  %payload.1.ph.i = phi ptr [ %call9.i.i.i, %if.then13.i.i ], [ null, %if.end.i292.if.then4.i_crit_edge ]
  %rc.0.i64.ph.i = phi i32 [ -22, %if.then13.i.i ], [ -12, %if.end.i292.if.then4.i_crit_edge ]
  call void (ptr, ...) @__ecryptfs_printk(ptr noundef nonnull %.str.198.sink.i, ptr noundef nonnull @__func__.write_tag_64_packet) #9
  call void (ptr, ...) @__ecryptfs_printk(ptr noundef nonnull @.str.189, ptr noundef nonnull @.str.188) #9
  br label %decrypt_pki_encrypted_session_key.exit

if.end5.i:                                        ; preds = %if.then3.i.i.i, %if.then.i43.i.i
  %packet_size_len.0.ph.i.i = phi i32 [ 20, %if.then3.i.i.i ], [ 19, %if.then.i43.i.i ]
  %arrayidx16.i.i = getelementptr i8, ptr %call9.i.i.i, i32 %packet_size_len.0.ph.i.i
  %encrypted_key.i.i = getelementptr i8, ptr %.pn, i32 28
  %127 = ptrtoint ptr %encrypted_key_size.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %encrypted_key_size.i.i, align 4
  %129 = call ptr @memcpy(ptr %arrayidx16.i.i, ptr %encrypted_key.i.i, i32 %128)
  %add19.i.i = add i32 %128, %packet_size_len.0.ph.i.i
  %call6.i = call i32 @ecryptfs_send_message(ptr noundef nonnull %call9.i.i.i, i32 noundef %add19.i.i, ptr noundef nonnull %msg_ctx.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %if.end9.i294, label %if.then8.i

if.then8.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ...) @__ecryptfs_printk(ptr noundef nonnull @.str.190, ptr noundef nonnull @.str.188, i32 noundef %call6.i) #9
  br label %decrypt_pki_encrypted_session_key.exit

if.end9.i294:                                     ; preds = %if.end5.i
  %130 = ptrtoint ptr %msg_ctx.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %msg_ctx.i, align 4
  %call10.i = call i32 @ecryptfs_wait_for_response(ptr noundef %131, ptr noundef nonnull %msg.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool11.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool11.not.i, label %if.end13.i, label %if.then12.i

if.then12.i:                                      ; preds = %if.end9.i294
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ...) @__ecryptfs_printk(ptr noundef nonnull @.str.191, ptr noundef nonnull @.str.188) #9
  br label %decrypt_pki_encrypted_session_key.exit

if.end13.i:                                       ; preds = %if.end9.i294
  %132 = ptrtoint ptr %msg.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %msg.i, align 4
  %data_len1.i.i = getelementptr inbounds %struct.ecryptfs_message, ptr %133, i32 0, i32 1
  %134 = ptrtoint ptr %data_len1.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %data_len1.i.i, align 4
  %data2.i.i = getelementptr inbounds %struct.ecryptfs_message, ptr %133, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %135)
  %cmp.i.i295 = icmp ult i32 %135, 4
  br i1 %cmp.i.i295, label %if.end13.i.do.end20.i_crit_edge, label %if.end.i.i

if.end13.i.do.end20.i_crit_edge:                  ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end20.i

if.end.i.i:                                       ; preds = %if.end13.i
  %136 = ptrtoint ptr %data2.i.i to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %data2.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 65, i8 %137)
  %cmp3.not.i.i = icmp eq i8 %137, 65
  br i1 %cmp3.not.i.i, label %if.end6.i.i, label %if.then5.i.i

if.then5.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ...) @__ecryptfs_printk(ptr noundef nonnull @.str.199, ptr noundef nonnull @__func__.parse_tag_65_packet) #9
  br label %do.end20.i

if.end6.i.i:                                      ; preds = %if.end.i.i
  %arrayidx8.i.i = getelementptr i8, ptr %data2.i.i, i32 1
  %138 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %arrayidx8.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %139)
  %tobool.not.i65.i = icmp eq i8 %139, 0
  br i1 %tobool.not.i65.i, label %if.end12.i.i, label %if.then9.i.i

if.then9.i.i:                                     ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv11.i.i = zext i8 %139 to i32
  call void (ptr, ...) @__ecryptfs_printk(ptr noundef nonnull @.str.200, ptr noundef nonnull @__func__.parse_tag_65_packet, i32 noundef %conv11.i.i) #9
  br label %do.end20.i

if.end12.i.i:                                     ; preds = %if.end6.i.i
  %arrayidx13.i.i = getelementptr i8, ptr %data2.i.i, i32 2
  %140 = ptrtoint ptr %arrayidx13.i.i to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %arrayidx13.i.i, align 1
  %conv.i.i66.i = zext i8 %141 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 -64, i8 %141)
  %cmp.i.i67.i = icmp ult i8 %141, -64
  br i1 %cmp.i.i67.i, label %if.end12.i.i.if.end16.i.i_crit_edge, label %if.else.i.i68.i

if.end12.i.i.if.end16.i.i_crit_edge:              ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16.i.i

if.else.i.i68.i:                                  ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -32, i8 %141)
  %cmp6.i.i.i = icmp ult i8 %141, -32
  br i1 %cmp6.i.i.i, label %if.then8.i.i.i, label %if.else14.i.i.i

if.then8.i.i.i:                                   ; preds = %if.else.i.i68.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i69.i = shl nuw nsw i32 %conv.i.i66.i, 8
  %arrayidx11.i.i.i = getelementptr i8, ptr %data2.i.i, i32 3
  %142 = ptrtoint ptr %arrayidx11.i.i.i to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %arrayidx11.i.i.i, align 1
  %conv12.i.i.i = zext i8 %143 to i32
  %add.i.i.i = add nsw i32 %sub.i.i69.i, -48960
  %add13.i.i.i = add nsw i32 %add.i.i.i, %conv12.i.i.i
  br label %if.end16.i.i

if.else14.i.i.i:                                  ; preds = %if.else.i.i68.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %141)
  %cmp17.i.i.i = icmp eq i8 %141, -1
  %.str..str.1.i.i = select i1 %cmp17.i.i.i, ptr @.str, ptr @.str.1
  call void (ptr, ...) @__ecryptfs_printk(ptr noundef nonnull %.str..str.1.i.i, ptr noundef nonnull @__func__.ecryptfs_parse_packet_length) #9
  call void (ptr, ...) @__ecryptfs_printk(ptr noundef nonnull @.str.51, ptr noundef nonnull @__func__.parse_tag_65_packet, i32 noundef -22) #9
  br label %do.end20.i

if.end16.i.i:                                     ; preds = %if.then8.i.i.i, %if.end12.i.i.if.end16.i.i_crit_edge
  %data_len.0.ph.i.i = phi i32 [ 1, %if.end12.i.i.if.end16.i.i_crit_edge ], [ 2, %if.then8.i.i.i ]
  %m_size.0.ph.i.i = phi i32 [ %conv.i.i66.i, %if.end12.i.i.if.end16.i.i_crit_edge ], [ %add13.i.i.i, %if.then8.i.i.i ]
  %add.i70.i = add nuw nsw i32 %data_len.0.ph.i.i, 2
  %add17.i.i = add nsw i32 %add.i70.i, %m_size.0.ph.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %135, i32 %add17.i.i)
  %cmp18.i.i = icmp ult i32 %135, %add17.i.i
  br i1 %cmp18.i.i, label %if.then20.i.i, label %if.end21.i.i

if.then20.i.i:                                    ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ...) @__ecryptfs_printk(ptr noundef nonnull @.str.201, ptr noundef nonnull @__func__.parse_tag_65_packet) #9
  br label %do.end20.i

if.end21.i.i:                                     ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %m_size.0.ph.i.i)
  %cmp22.i.i = icmp ult i32 %m_size.0.ph.i.i, 3
  br i1 %cmp22.i.i, label %if.then24.i.i, label %if.end25.i.i

if.then24.i.i:                                    ; preds = %if.end21.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ...) @__ecryptfs_printk(ptr noundef nonnull @.str.202, ptr noundef nonnull @__func__.parse_tag_65_packet) #9
  br label %do.end20.i

if.end25.i.i:                                     ; preds = %if.end21.i.i
  %arrayidx27.i.i = getelementptr i8, ptr %data2.i.i, i32 %add.i70.i
  %144 = ptrtoint ptr %arrayidx27.i.i to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %arrayidx27.i.i, align 1
  %sub28.i.i = add nsw i32 %m_size.0.ph.i.i, -3
  %decrypted_key_size.i.i = getelementptr i8, ptr %.pn, i32 24
  %146 = ptrtoint ptr %decrypted_key_size.i.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 %sub28.i.i, ptr %decrypted_key_size.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %sub28.i.i)
  %cmp30.i.i = icmp ugt i32 %sub28.i.i, 64
  br i1 %cmp30.i.i, label %if.then32.i.i, label %if.end34.i.i

if.then32.i.i:                                    ; preds = %if.end25.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ...) @__ecryptfs_printk(ptr noundef nonnull @.str.203, ptr noundef nonnull @__func__.parse_tag_65_packet, i32 noundef %sub28.i.i, i32 noundef 512) #9
  br label %do.end20.i

if.end34.i.i:                                     ; preds = %if.end25.i.i
  %inc26.i.i = add nuw nsw i32 %data_len.0.ph.i.i, 3
  %decrypted_key.i.i = getelementptr i8, ptr %.pn, i32 540
  %arrayidx36.i.i = getelementptr i8, ptr %data2.i.i, i32 %inc26.i.i
  %147 = call ptr @memcpy(ptr %decrypted_key.i.i, ptr %arrayidx36.i.i, i32 %sub28.i.i)
  %add39.i.i = add nuw nsw i32 %m_size.0.ph.i.i, %data_len.0.ph.i.i
  %inc40.i.i = add nuw nsw i32 %add39.i.i, 1
  %arrayidx41.i.i = getelementptr i8, ptr %data2.i.i, i32 %add39.i.i
  %148 = ptrtoint ptr %arrayidx41.i.i to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %arrayidx41.i.i, align 1
  %conv42.i.i = zext i8 %149 to i32
  %shl.i.i = shl nuw nsw i32 %conv42.i.i, 8
  %arrayidx47.i.i = getelementptr i8, ptr %data2.i.i, i32 %inc40.i.i
  %150 = ptrtoint ptr %arrayidx47.i.i to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %arrayidx47.i.i, align 1
  %conv48.i.i = zext i8 %151 to i32
  %add50.i.i = or i32 %shl.i.i, %conv48.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub28.i.i)
  %cmp53114.not.i.i = icmp eq i32 %sub28.i.i, 0
  br i1 %cmp53114.not.i.i, label %if.end34.i.i.for.end.i.i_crit_edge, label %if.end34.i.i.for.body.i.i_crit_edge

if.end34.i.i.for.body.i.i_crit_edge:              ; preds = %if.end34.i.i
  br label %for.body.i.i

if.end34.i.i.for.end.i.i_crit_edge:               ; preds = %if.end34.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.end34.i.i.for.body.i.i_crit_edge
  %checksum.0116.i.i = phi i32 [ %phi.cast.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %if.end34.i.i.for.body.i.i_crit_edge ]
  %i.0115.i.i = phi i32 [ %inc61.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %if.end34.i.i.for.body.i.i_crit_edge ]
  %arrayidx56.i.i = getelementptr %struct.ecryptfs_auth_tok, ptr %auth_tok, i32 0, i32 3, i32 4, i32 %i.0115.i.i
  %152 = ptrtoint ptr %arrayidx56.i.i to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %arrayidx56.i.i, align 1
  %conv57.i.i = zext i8 %153 to i32
  %add59.i.i = add nuw nsw i32 %checksum.0116.i.i, %conv57.i.i
  %inc61.i.i = add nuw i32 %i.0115.i.i, 1
  %phi.cast.i.i = and i32 %add59.i.i, 65535
  %exitcond.not.i.i = icmp eq i32 %inc61.i.i, %sub28.i.i
  br i1 %exitcond.not.i.i, label %for.body.i.i.for.end.i.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

for.body.i.i.for.end.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.body.i.i.for.end.i.i_crit_edge, %if.end34.i.i.for.end.i.i_crit_edge
  %checksum.0.lcssa.i.i = phi i32 [ 0, %if.end34.i.i.for.end.i.i_crit_edge ], [ %phi.cast.i.i, %for.body.i.i.for.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %add50.i.i, i32 %checksum.0.lcssa.i.i)
  %cmp64.not.i.i = icmp eq i32 %add50.i.i, %checksum.0.lcssa.i.i
  br i1 %cmp64.not.i.i, label %if.end23.i, label %if.then66.i.i

if.then66.i.i:                                    ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ...) @__ecryptfs_printk(ptr noundef nonnull @.str.204, ptr noundef nonnull @__func__.parse_tag_65_packet, i32 noundef %add50.i.i, i32 noundef %checksum.0.lcssa.i.i) #9
  br label %do.end20.i

do.end20.i:                                       ; preds = %if.then66.i.i, %if.then32.i.i, %if.then24.i.i, %if.then20.i.i, %if.else14.i.i.i, %if.then9.i.i, %if.then5.i.i, %if.end13.i.do.end20.i_crit_edge
  %rc.0.i71.ph.i = phi i32 [ -5, %if.end13.i.do.end20.i_crit_edge ], [ -5, %if.then66.i.i ], [ -5, %if.then32.i.i ], [ -5, %if.then24.i.i ], [ -5, %if.then20.i.i ], [ -22, %if.else14.i.i.i ], [ -5, %if.then9.i.i ], [ -5, %if.then5.i.i ]
  %call22.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.193, i32 noundef %rc.0.i71.ph.i) #13
  br label %decrypt_pki_encrypted_session_key.exit

if.end23.i:                                       ; preds = %for.end.i.i
  %154 = ptrtoint ptr %session_key.i to i32
  call void @__asan_loadN_noabort(i32 %154, i32 4)
  %155 = load i32, ptr %session_key.i, align 1
  %or.i296 = or i32 %155, 4
  store i32 %or.i296, ptr %session_key.i, align 1
  %156 = call ptr @memcpy(ptr %key.i348, ptr %decrypted_key.i.i, i32 %sub28.i.i)
  %157 = ptrtoint ptr %decrypted_key_size.i.i to i32
  call void @__asan_loadN_noabort(i32 %157, i32 4)
  %158 = load i32, ptr %decrypted_key_size.i.i, align 1
  %159 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 %158, ptr %6, align 4
  %call31.i = call i32 @ecryptfs_cipher_code_to_string(ptr noundef %cipher.i, i8 noundef zeroext %145) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31.i)
  %tobool32.not.i = icmp eq i32 %call31.i, 0
  br i1 %tobool32.not.i, label %if.end35.i, label %if.then33.i

if.then33.i:                                      ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv34.i = zext i8 %145 to i32
  call void (ptr, ...) @__ecryptfs_printk(ptr noundef nonnull @.str.195, ptr noundef nonnull @.str.188, i32 noundef %conv34.i) #9
  br label %decrypt_pki_encrypted_session_key.exit

if.end35.i:                                       ; preds = %if.end23.i
  %160 = ptrtoint ptr %crypt_stat to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %crypt_stat, align 4
  %or37.i = or i32 %161, 64
  store i32 %or37.i, ptr %crypt_stat, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ecryptfs_verbosity to i32))
  %162 = load i32, ptr @ecryptfs_verbosity, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %162)
  %cmp.i298 = icmp sgt i32 %162, 0
  br i1 %cmp.i298, label %if.then39.i, label %if.end35.i.decrypt_pki_encrypted_session_key.exit_crit_edge

if.end35.i.decrypt_pki_encrypted_session_key.exit_crit_edge: ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %decrypt_pki_encrypted_session_key.exit

if.then39.i:                                      ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ...) @__ecryptfs_printk(ptr noundef nonnull @.str.196, ptr noundef nonnull @.str.188) #9
  %163 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %6, align 4
  call void @ecryptfs_dump_hex(ptr noundef %key.i348, i32 noundef %164) #9
  br label %decrypt_pki_encrypted_session_key.exit

decrypt_pki_encrypted_session_key.exit:           ; preds = %if.then39.i, %if.end35.i.decrypt_pki_encrypted_session_key.exit_crit_edge, %if.then33.i, %do.end20.i, %if.then12.i, %if.then8.i, %if.then4.i, %do.end.i290
  %payload.2.i = phi ptr [ %call9.i.i.i, %if.then39.i ], [ %call9.i.i.i, %if.end35.i.decrypt_pki_encrypted_session_key.exit_crit_edge ], [ %call9.i.i.i, %if.then33.i ], [ %call9.i.i.i, %do.end20.i ], [ %call9.i.i.i, %if.then12.i ], [ %call9.i.i.i, %if.then8.i ], [ %payload.1.ph.i, %if.then4.i ], [ null, %do.end.i290 ]
  %rc.0.i299 = phi i32 [ 0, %if.then39.i ], [ 0, %if.end35.i.decrypt_pki_encrypted_session_key.exit_crit_edge ], [ %call31.i, %if.then33.i ], [ %rc.0.i71.ph.i, %do.end20.i ], [ -5, %if.then12.i ], [ %call6.i, %if.then8.i ], [ %rc.0.i64.ph.i, %if.then4.i ], [ -22, %do.end.i290 ]
  %165 = ptrtoint ptr %msg.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %msg.i, align 4
  call void @kfree(ptr noundef %166) #9
  call void @kfree(ptr noundef %payload.2.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %msg.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %msg_ctx.i) #9
  br label %if.end86

if.then78:                                        ; preds = %found_matching_auth_tok
  %token79 = getelementptr i8, ptr %.pn, i32 636
  %167 = ptrtoint ptr %matching_auth_tok to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %matching_auth_tok, align 4
  %token80 = getelementptr inbounds %struct.ecryptfs_auth_tok, ptr %168, i32 0, i32 5
  %169 = call ptr @memcpy(ptr %token79, ptr %token80, i32 112)
  %170 = ptrtoint ptr %auth_tok_key to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %auth_tok_key, align 4
  %sem81 = getelementptr inbounds %struct.key, ptr %171, i32 0, i32 4
  call void @up_write(ptr noundef %sem81) #9
  call void @key_put(ptr noundef %171) #9
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %dst_sg.i) #9
  %172 = call ptr @memset(ptr %dst_sg.i, i32 255, i32 40)
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %src_sg.i) #9
  %173 = call ptr @memset(ptr %src_sg.i, i32 255, i32 40)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tfm_mutex.i) #9
  %174 = ptrtoint ptr %tfm_mutex.i to i32
  call void @__asan_store4_noabort(i32 %174)
  store ptr inttoptr (i32 -1 to ptr), ptr %tfm_mutex.i, align 4, !annotation !494
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tfm.i) #9
  %175 = ptrtoint ptr %tfm.i to i32
  call void @__asan_store4_noabort(i32 %175)
  store ptr inttoptr (i32 -1 to ptr), ptr %tfm.i, align 4, !annotation !494
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ecryptfs_verbosity to i32))
  %176 = load i32, ptr @ecryptfs_verbosity, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %176)
  %cmp.i301 = icmp sgt i32 %176, 0
  br i1 %cmp.i301, label %if.then.i302, label %if.then78.if.end.i305_crit_edge, !prof !493

if.then78.if.end.i305_crit_edge:                  ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i305

if.then.i302:                                     ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #11
  %session_key_encryption_key_bytes.i = getelementptr i8, ptr %.pn, i32 648
  %177 = ptrtoint ptr %session_key_encryption_key_bytes.i to i32
  call void @__asan_loadN_noabort(i32 %177, i32 4)
  %178 = load i32, ptr %session_key_encryption_key_bytes.i, align 1
  call void (ptr, ...) @__ecryptfs_printk(ptr noundef nonnull @.str.205, ptr noundef nonnull @__func__.decrypt_passphrase_encrypted_session_key, i32 noundef %178) #9
  %session_key_encryption_key.i = getelementptr i8, ptr %.pn, i32 656
  %179 = ptrtoint ptr %session_key_encryption_key_bytes.i to i32
  call void @__asan_loadN_noabort(i32 %179, i32 4)
  %180 = load i32, ptr %session_key_encryption_key_bytes.i, align 1
  call void @ecryptfs_dump_hex(ptr noundef %session_key_encryption_key.i, i32 noundef %180) #9
  br label %if.end.i305

if.end.i305:                                      ; preds = %if.then.i302, %if.then78.if.end.i305_crit_edge
  %call.i304 = call i32 @ecryptfs_get_tfm_and_mutex_for_cipher_name(ptr noundef nonnull %tfm.i, ptr noundef nonnull %tfm_mutex.i, ptr noundef %cipher.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i304)
  %tobool6.not.i = icmp eq i32 %call.i304, 0
  br i1 %tobool6.not.i, label %if.end17.i311, label %do.end.i307, !prof !492

do.end.i307:                                      ; preds = %if.end.i305
  call void @__sanitizer_cov_trace_pc() #11
  %call16.i306 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %cipher.i, i32 noundef %call.i304) #13
  br label %decrypt_passphrase_encrypted_session_key.exit

if.end17.i311:                                    ; preds = %if.end.i305
  %session_key.i308 = getelementptr i8, ptr %.pn, i32 16
  %encrypted_key.i309 = getelementptr i8, ptr %.pn, i32 28
  %encrypted_key_size.i310 = getelementptr i8, ptr %.pn, i32 20
  %181 = ptrtoint ptr %encrypted_key_size.i310 to i32
  call void @__asan_loadN_noabort(i32 %181, i32 4)
  %182 = load i32, ptr %encrypted_key_size.i310, align 1
  %call21.i = call i32 @virt_to_scatterlist(ptr noundef %encrypted_key.i309, i32 noundef %182, ptr noundef nonnull %src_sg.i, i32 noundef 2) #9
  %183 = add i32 %call21.i, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %183)
  %184 = icmp ult i32 %183, -2
  %185 = ptrtoint ptr %encrypted_key_size.i310 to i32
  call void @__asan_loadN_noabort(i32 %185, i32 4)
  %186 = load i32, ptr %encrypted_key_size.i310, align 1
  br i1 %184, label %do.end27.i, label %if.end32.i

do.end27.i:                                       ; preds = %if.end17.i311
  call void @__sanitizer_cov_trace_pc() #11
  %call31.i312 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.207, i32 noundef %call21.i, i32 noundef %186) #13
  br label %decrypt_passphrase_encrypted_session_key.exit

if.end32.i:                                       ; preds = %if.end17.i311
  %decrypted_key_size.i = getelementptr i8, ptr %.pn, i32 24
  %187 = ptrtoint ptr %decrypted_key_size.i to i32
  call void @__asan_storeN_noabort(i32 %187, i32 4)
  store i32 %186, ptr %decrypted_key_size.i, align 1
  %decrypted_key.i = getelementptr i8, ptr %.pn, i32 540
  %call41.i = call i32 @virt_to_scatterlist(ptr noundef %decrypted_key.i, i32 noundef %186, ptr noundef nonnull %dst_sg.i, i32 noundef 2) #9
  %188 = add i32 %call41.i, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %188)
  %189 = icmp ult i32 %188, -2
  br i1 %189, label %do.end48.i, label %if.end51.i

do.end48.i:                                       ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #11
  %call50.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.210, i32 noundef %call41.i) #13
  br label %decrypt_passphrase_encrypted_session_key.exit

if.end51.i:                                       ; preds = %if.end32.i
  %190 = ptrtoint ptr %tfm_mutex.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %tfm_mutex.i, align 4
  call void @mutex_lock_nested(ptr noundef %191, i32 noundef 0) #9
  %192 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %tfm.i, align 4
  %194 = ptrtoint ptr %193 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %193, align 128
  %add.i.i313 = add i32 %195, 128
  %call9.i.i.i339 = call noalias align 128 ptr @__kmalloc(i32 noundef %add.i.i313, i32 noundef 3264) #14
  %tobool.not.i.i342 = icmp eq ptr %call9.i.i.i339, null
  br i1 %tobool.not.i.i342, label %if.then54.i, label %if.end61.i, !prof !493

if.then54.i:                                      ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #11
  %196 = ptrtoint ptr %tfm_mutex.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %tfm_mutex.i, align 4
  call void @mutex_unlock(ptr noundef %197) #9
  %198 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %tfm.i, align 4
  %__crt_alg.i.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %199, i32 0, i32 2, i32 3
  %200 = ptrtoint ptr %__crt_alg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %__crt_alg.i.i.i, align 4
  %cra_driver_name.i.i.i = getelementptr inbounds %struct.crypto_alg, ptr %201, i32 0, i32 9
  %call60.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @__func__.decrypt_passphrase_encrypted_session_key, ptr noundef %cra_driver_name.i.i.i) #13
  br label %decrypt_passphrase_encrypted_session_key.exit

if.end61.i:                                       ; preds = %if.end51.i
  %base.i.i.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %193, i32 0, i32 2
  %tfm1.i.i.i = getelementptr inbounds %struct.skcipher_request, ptr %call9.i.i.i339, i32 0, i32 4, i32 3
  %202 = ptrtoint ptr %tfm1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %202)
  store ptr %base.i.i.i.i, ptr %tfm1.i.i.i, align 32
  %complete.i.i = getelementptr inbounds %struct.skcipher_request, ptr %call9.i.i.i339, i32 0, i32 4, i32 1
  %203 = ptrtoint ptr %complete.i.i to i32
  call void @__asan_store4_noabort(i32 %203)
  store ptr null, ptr %complete.i.i, align 8
  %data2.i.i344 = getelementptr inbounds %struct.skcipher_request, ptr %call9.i.i.i339, i32 0, i32 4, i32 2
  %204 = ptrtoint ptr %data2.i.i344 to i32
  call void @__asan_store4_noabort(i32 %204)
  store ptr null, ptr %data2.i.i344, align 4
  %flags4.i.i = getelementptr inbounds %struct.skcipher_request, ptr %call9.i.i.i339, i32 0, i32 4, i32 4
  %205 = ptrtoint ptr %flags4.i.i to i32
  call void @__asan_store4_noabort(i32 %205)
  store i32 512, ptr %flags4.i.i, align 4
  %206 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %tfm.i, align 4
  %session_key_encryption_key63.i = getelementptr i8, ptr %.pn, i32 656
  %208 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %6, align 4
  %call65.i = call i32 @crypto_skcipher_setkey(ptr noundef %207, ptr noundef %session_key_encryption_key63.i, i32 noundef %209) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65.i)
  %cmp66.i = icmp slt i32 %call65.i, 0
  br i1 %cmp66.i, label %if.then73.i, label %if.end79.i, !prof !493

if.then73.i:                                      ; preds = %if.end61.i
  call void @__sanitizer_cov_trace_pc() #11
  %210 = ptrtoint ptr %tfm_mutex.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %tfm_mutex.i, align 4
  call void @mutex_unlock(ptr noundef %211) #9
  %call78.i346 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.215) #13
  br label %decrypt_passphrase_encrypted_session_key.exit

if.end79.i:                                       ; preds = %if.end61.i
  %212 = ptrtoint ptr %encrypted_key_size.i310 to i32
  call void @__asan_loadN_noabort(i32 %212, i32 4)
  %213 = load i32, ptr %encrypted_key_size.i310, align 1
  %src1.i.i = getelementptr inbounds %struct.skcipher_request, ptr %call9.i.i.i339, i32 0, i32 2
  %214 = ptrtoint ptr %src1.i.i to i32
  call void @__asan_store4_noabort(i32 %214)
  store ptr %src_sg.i, ptr %src1.i.i, align 8
  %dst2.i.i = getelementptr inbounds %struct.skcipher_request, ptr %call9.i.i.i339, i32 0, i32 3
  %215 = ptrtoint ptr %dst2.i.i to i32
  call void @__asan_store4_noabort(i32 %215)
  store ptr %dst_sg.i, ptr %dst2.i.i, align 4
  %216 = ptrtoint ptr %call9.i.i.i339 to i32
  call void @__asan_store4_noabort(i32 %216)
  store i32 %213, ptr %call9.i.i.i339, align 128
  %iv4.i.i = getelementptr inbounds %struct.skcipher_request, ptr %call9.i.i.i339, i32 0, i32 1
  %217 = ptrtoint ptr %iv4.i.i to i32
  call void @__asan_store4_noabort(i32 %217)
  store ptr null, ptr %iv4.i.i, align 4
  %call84.i = call i32 @crypto_skcipher_decrypt(ptr noundef nonnull %call9.i.i.i339) #9
  %218 = ptrtoint ptr %tfm_mutex.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %tfm_mutex.i, align 4
  call void @mutex_unlock(ptr noundef %219) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84.i)
  %tobool85.not.i = icmp eq i32 %call84.i, 0
  br i1 %tobool85.not.i, label %if.end98.i, label %do.end95.i, !prof !492

do.end95.i:                                       ; preds = %if.end79.i
  call void @__sanitizer_cov_trace_pc() #11
  %call97.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.218, i32 noundef %call84.i) #13
  br label %decrypt_passphrase_encrypted_session_key.exit

if.end98.i:                                       ; preds = %if.end79.i
  %220 = ptrtoint ptr %session_key.i308 to i32
  call void @__asan_loadN_noabort(i32 %220, i32 4)
  %221 = load i32, ptr %session_key.i308, align 1
  %or.i347 = or i32 %221, 4
  store i32 %or.i347, ptr %session_key.i308, align 1
  %222 = ptrtoint ptr %decrypted_key_size.i to i32
  call void @__asan_loadN_noabort(i32 %222, i32 4)
  %223 = load i32, ptr %decrypted_key_size.i, align 1
  %224 = call ptr @memcpy(ptr %key.i348, ptr %decrypted_key.i, i32 %223)
  %225 = ptrtoint ptr %crypt_stat to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %crypt_stat, align 4
  %or107.i = or i32 %226, 64
  store i32 %or107.i, ptr %crypt_stat, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ecryptfs_verbosity to i32))
  %227 = load i32, ptr @ecryptfs_verbosity, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %227)
  %cmp108.i = icmp sgt i32 %227, 0
  br i1 %cmp108.i, label %if.then115.i, label %if.end98.i.decrypt_passphrase_encrypted_session_key.exit_crit_edge, !prof !493

if.end98.i.decrypt_passphrase_encrypted_session_key.exit_crit_edge: ; preds = %if.end98.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %decrypt_passphrase_encrypted_session_key.exit

if.then115.i:                                     ; preds = %if.end98.i
  call void @__sanitizer_cov_trace_pc() #11
  %228 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %6, align 4
  call void (ptr, ...) @__ecryptfs_printk(ptr noundef nonnull @.str.220, ptr noundef nonnull @__func__.decrypt_passphrase_encrypted_session_key, i32 noundef %229) #9
  %230 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %6, align 4
  call void @ecryptfs_dump_hex(ptr noundef %key.i348, i32 noundef %231) #9
  br label %decrypt_passphrase_encrypted_session_key.exit

decrypt_passphrase_encrypted_session_key.exit:    ; preds = %if.then115.i, %if.end98.i.decrypt_passphrase_encrypted_session_key.exit_crit_edge, %do.end95.i, %if.then73.i, %if.then54.i, %do.end48.i, %do.end27.i, %do.end.i307
  %rc.0.i349 = phi i32 [ %call.i304, %do.end.i307 ], [ %call21.i, %do.end27.i ], [ %call41.i, %do.end48.i ], [ -22, %if.then73.i ], [ %call84.i, %do.end95.i ], [ 0, %if.then115.i ], [ 0, %if.end98.i.decrypt_passphrase_encrypted_session_key.exit_crit_edge ], [ -12, %if.then54.i ]
  %req.0.i = phi ptr [ null, %do.end.i307 ], [ null, %do.end27.i ], [ null, %do.end48.i ], [ %call9.i.i.i339, %if.then73.i ], [ %call9.i.i.i339, %do.end95.i ], [ %call9.i.i.i339, %if.then115.i ], [ %call9.i.i.i339, %if.end98.i.decrypt_passphrase_encrypted_session_key.exit_crit_edge ], [ null, %if.then54.i ]
  call void @kfree_sensitive(ptr noundef %req.0.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tfm.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tfm_mutex.i) #9
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %src_sg.i) #9
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %dst_sg.i) #9
  br label %if.end86

if.end86.thread:                                  ; preds = %found_matching_auth_tok
  call void @__sanitizer_cov_trace_pc() #11
  %232 = ptrtoint ptr %auth_tok_key to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %auth_tok_key, align 4
  %sem84 = getelementptr inbounds %struct.key, ptr %233, i32 0, i32 4
  call void @up_write(ptr noundef %sem84) #9
  call void @key_put(ptr noundef %233) #9
  br label %if.then88

if.end86:                                         ; preds = %decrypt_passphrase_encrypted_session_key.exit, %decrypt_pki_encrypted_session_key.exit
  %rc.3 = phi i32 [ %rc.0.i299, %decrypt_pki_encrypted_session_key.exit ], [ %rc.0.i349, %decrypt_passphrase_encrypted_session_key.exit ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.3)
  %tobool87.not = icmp eq i32 %rc.3, 0
  br i1 %tobool87.not, label %if.end127, label %if.end86.if.then88_crit_edge

if.end86.if.then88_crit_edge:                     ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then88

if.then88:                                        ; preds = %if.end86.if.then88_crit_edge, %if.end86.thread
  %rc.3427 = phi i32 [ -22, %if.end86.thread ], [ %rc.3, %if.end86.if.then88_crit_edge ]
  call void (ptr, ...) @__ecryptfs_printk(ptr noundef nonnull @.str.97, ptr noundef nonnull @__func__.ecryptfs_parse_packet_set, i32 noundef 16, ptr noundef %signature3.i, i32 noundef %rc.3427) #9
  br label %for.cond98

for.cond98:                                       ; preds = %for.body104.for.cond98_crit_edge, %if.then88
  %.pn204.in.in = phi ptr [ %auth_tok_list, %if.then88 ], [ %.pn204.in, %for.body104.for.cond98_crit_edge ]
  %234 = ptrtoint ptr %.pn204.in.in to i32
  call void @__asan_load4_noabort(i32 %234)
  %.pn204.in = load ptr, ptr %.pn204.in.in, align 4
  %cmp100.not = icmp eq ptr %.pn204.in, %auth_tok_list
  br i1 %cmp100.not, label %do.body118, label %for.body104

for.body104:                                      ; preds = %for.cond98
  %cmp106 = icmp eq ptr %.pn, %.pn204.in
  br i1 %cmp106, label %if.then108, label %for.body104.for.cond98_crit_edge

for.body104.for.cond98_crit_edge:                 ; preds = %for.body104
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond98

if.then108:                                       ; preds = %for.body104
  %auth_tok_list_item.1.le = getelementptr i8, ptr %.pn, i32 -64
  %call.i.i351 = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn) #9
  br i1 %call.i.i351, label %if.end.i.i353, label %if.then108.list_del.exit_crit_edge

if.then108.list_del.exit_crit_edge:               ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i353:                                    ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn, i32 0, i32 1
  %235 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %prev.i.i, align 4
  %237 = ptrtoint ptr %.pn to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %.pn, align 4
  %prev1.i.i.i352 = getelementptr inbounds %struct.list_head, ptr %238, i32 0, i32 1
  %239 = ptrtoint ptr %prev1.i.i.i352 to i32
  call void @__asan_store4_noabort(i32 %239)
  store ptr %236, ptr %prev1.i.i.i352, align 4
  %240 = ptrtoint ptr %236 to i32
  call void @__asan_store4_noabort(i32 %240)
  store volatile ptr %238, ptr %236, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i353, %if.then108.list_del.exit_crit_edge
  %241 = ptrtoint ptr %.pn to i32
  call void @__asan_store4_noabort(i32 %241)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn, align 4
  %prev.i354 = getelementptr inbounds %struct.list_head, ptr %.pn, i32 0, i32 1
  %242 = ptrtoint ptr %prev.i354 to i32
  call void @__asan_store4_noabort(i32 %242)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i354, align 4
  %243 = load ptr, ptr @ecryptfs_auth_tok_list_item_cache, align 4
  call void @kmem_cache_free(ptr noundef %243, ptr noundef %auth_tok_list_item.1.le) #9
  br label %for.cond.backedge

do.body118:                                       ; preds = %for.cond98
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ecryptfs/keystore.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1940, 0\0A.popsection", ""() #9, !srcloc !495
  unreachable

if.end127:                                        ; preds = %if.end86
  %call128 = call i32 @ecryptfs_compute_root_iv(ptr noundef %crypt_stat) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call128)
  %tobool129.not = icmp eq i32 %call128, 0
  br i1 %tobool129.not, label %if.end131, label %if.then130

if.then130:                                       ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ...) @__ecryptfs_printk(ptr noundef nonnull @.str.98, ptr noundef nonnull @__func__.ecryptfs_parse_packet_set) #9
  br label %out_wipe_list

if.end131:                                        ; preds = %if.end127
  %call132 = call i32 @ecryptfs_init_crypt_ctx(ptr noundef %crypt_stat) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call132)
  %tobool133.not = icmp eq i32 %call132, 0
  br i1 %tobool133.not, label %if.end131.out_wipe_list_crit_edge, label %if.then134

if.end131.out_wipe_list_crit_edge:                ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_wipe_list

if.then134:                                       ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ...) @__ecryptfs_printk(ptr noundef nonnull @.str.99, ptr noundef nonnull @__func__.ecryptfs_parse_packet_set, ptr noundef %cipher.i, i32 noundef %call132) #9
  br label %out_wipe_list

out_wipe_list:                                    ; preds = %if.then134, %if.end131.out_wipe_list_crit_edge, %if.then130, %if.then64, %do.end49, %sw.bb26, %if.then21, %if.then10, %if.then6, %if.then
  %rc.4 = phi i32 [ -22, %do.end49 ], [ %call128, %if.then130 ], [ %call132, %if.then134 ], [ 0, %if.end131.out_wipe_list_crit_edge ], [ -5, %if.then64 ], [ -5, %sw.bb26 ], [ -5, %if.then21 ], [ -5, %if.then ], [ -5, %if.then6 ], [ -5, %if.then10 ]
  %244 = ptrtoint ptr %auth_tok_list to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %auth_tok_list, align 4
  %cmp.not18.i = icmp eq ptr %245, %auth_tok_list
  br i1 %cmp.not18.i, label %out_wipe_list.cleanup137_crit_edge, label %out_wipe_list.for.body.i_crit_edge

out_wipe_list.for.body.i_crit_edge:               ; preds = %out_wipe_list
  br label %for.body.i

out_wipe_list.cleanup137_crit_edge:               ; preds = %out_wipe_list
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup137

for.body.i:                                       ; preds = %list_del.exit.i.for.body.i_crit_edge, %out_wipe_list.for.body.i_crit_edge
  %.pn.in19.i = phi ptr [ %.pn.i, %list_del.exit.i.for.body.i_crit_edge ], [ %245, %out_wipe_list.for.body.i_crit_edge ]
  %auth_tok_list_item.0.i = getelementptr i8, ptr %.pn.in19.i, i32 -64
  %246 = ptrtoint ptr %.pn.in19.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %.pn.i = load ptr, ptr %.pn.in19.i, align 4
  %call.i.i.i355 = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in19.i) #9
  br i1 %call.i.i.i355, label %if.end.i.i.i356, label %for.body.i.list_del.exit.i_crit_edge

for.body.i.list_del.exit.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit.i

if.end.i.i.i356:                                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in19.i, i32 0, i32 1
  %247 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %prev.i.i.i, align 4
  %249 = ptrtoint ptr %.pn.in19.i to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %.pn.in19.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %250, i32 0, i32 1
  %251 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %251)
  store ptr %248, ptr %prev1.i.i.i.i, align 4
  %252 = ptrtoint ptr %248 to i32
  call void @__asan_store4_noabort(i32 %252)
  store volatile ptr %250, ptr %248, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i356, %for.body.i.list_del.exit.i_crit_edge
  %253 = ptrtoint ptr %.pn.in19.i to i32
  call void @__asan_store4_noabort(i32 %253)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in19.i, align 4
  %prev.i.i357 = getelementptr inbounds %struct.list_head, ptr %.pn.in19.i, i32 0, i32 1
  %254 = ptrtoint ptr %prev.i.i357 to i32
  call void @__asan_store4_noabort(i32 %254)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i357, align 4
  %255 = load ptr, ptr @ecryptfs_auth_tok_list_item_cache, align 4
  call void @kmem_cache_free(ptr noundef %255, ptr noundef %auth_tok_list_item.0.i) #9
  %cmp.not.i = icmp eq ptr %.pn.i, %auth_tok_list
  br i1 %cmp.not.i, label %list_del.exit.i.cleanup137_crit_edge, label %list_del.exit.i.for.body.i_crit_edge

list_del.exit.i.for.body.i_crit_edge:             ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

list_del.exit.i.cleanup137_crit_edge:             ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup137

cleanup137:                                       ; preds = %list_del.exit.i.cleanup137_crit_edge, %out_wipe_list.cleanup137_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %rc.4, %out_wipe_list.cleanup137_crit_edge ], [ %rc.4, %list_del.exit.i.cleanup137_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %auth_tok_key) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %sig_tmp_space) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %matching_auth_tok) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %auth_tok_list) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ecryptfs_dump_auth_tok(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ecryptfs_compute_root_iv(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ecryptfs_init_crypt_ctx(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ecryptfs_generate_key_packet_set(ptr nocapture noundef writeonly %dest_base, ptr noundef %crypt_stat, ptr nocapture noundef readonly %ecryptfs_dentry, ptr nocapture noundef %len, i32 noundef %max) local_unnamed_addr #0 align 64 {
entry:
  %msg_ctx.i.i = alloca ptr, align 4
  %msg.i.i = alloca ptr, align 4
  %session_key_encryption_key.i = alloca [64 x i8], align 1
  %dst_sg.i = alloca [2 x %struct.scatterlist], align 4
  %src_sg.i = alloca [2 x %struct.scatterlist], align 4
  %tfm_mutex.i = alloca ptr, align 4
  %tfm.i = alloca ptr, align 4
  %auth_tok = alloca ptr, align 4
  %auth_tok_key = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %auth_tok) #9
  %0 = ptrtoint ptr %auth_tok to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %auth_tok, align 4, !annotation !494
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %auth_tok_key) #9
  %1 = ptrtoint ptr %auth_tok_key to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %auth_tok_key, align 4
  %d_sb = getelementptr inbounds %struct.dentry, ptr %ecryptfs_dentry, i32 0, i32 9
  %2 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i, align 16
  %mount_crypt_stat1 = getelementptr inbounds %struct.ecryptfs_sb_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %len, align 4
  %keysig_list_mutex = getelementptr inbounds %struct.ecryptfs_crypt_stat, ptr %crypt_stat, i32 0, i32 15
  tail call void @mutex_lock_nested(ptr noundef %keysig_list_mutex, i32 noundef 0) #9
  %7 = load ptr, ptr @ecryptfs_key_record_cache, align 4
  %call2 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %7, i32 noundef 3264) #9
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %entry.if.then57_crit_edge, label %if.end

entry.if.then57_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then57

if.end:                                           ; preds = %entry
  %keysig_list = getelementptr inbounds %struct.ecryptfs_crypt_stat, ptr %crypt_stat, i32 0, i32 14
  %8 = ptrtoint ptr %keysig_list to i32
  call void @__asan_load4_noabort(i32 %8)
  %key_sig.0216 = load ptr, ptr %keysig_list, align 4
  %cmp.not217 = icmp eq ptr %key_sig.0216, %keysig_list
  br i1 %cmp.not217, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %sig.i92 = getelementptr inbounds %struct.ecryptfs_key_record, ptr %call2, i32 0, i32 2
  %key_size.i94 = getelementptr inbounds %struct.ecryptfs_crypt_stat, ptr %crypt_stat, i32 0, i32 5
  %enc_key.i103 = getelementptr inbounds %struct.ecryptfs_key_record, ptr %call2, i32 0, i32 3
  %cipher.i.i = getelementptr inbounds %struct.ecryptfs_crypt_stat, ptr %crypt_stat, i32 0, i32 11
  %key.i.i.i = getelementptr inbounds %struct.ecryptfs_crypt_stat, ptr %crypt_stat, i32 0, i32 12
  %enc_key_size.i.i.i = getelementptr inbounds %struct.ecryptfs_key_record, ptr %call2, i32 0, i32 1
  %mount_crypt_stat1.i = getelementptr inbounds %struct.ecryptfs_crypt_stat, ptr %crypt_stat, i32 0, i32 8
  %add.ptr.i = getelementptr %struct.ecryptfs_crypt_stat, ptr %crypt_stat, i32 0, i32 12, i32 24
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %key_sig.0222 = phi ptr [ %key_sig.0216, %for.body.lr.ph ], [ %key_sig.0, %for.inc.for.body_crit_edge ]
  %max.addr.0218 = phi i32 [ %max, %for.body.lr.ph ], [ %max.addr.4, %for.inc.for.body_crit_edge ]
  %9 = call ptr @memset(ptr %call2, i32 0, i32 528)
  %keysig = getelementptr inbounds %struct.ecryptfs_key_sig, ptr %key_sig.0222, i32 0, i32 1
  %call4 = call fastcc i32 @ecryptfs_find_global_auth_tok_for_sig(ptr noundef nonnull %auth_tok_key, ptr noundef nonnull %auth_tok, ptr noundef %mount_crypt_stat1, ptr noundef %keysig)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end12, label %out

if.end12:                                         ; preds = %for.body
  %10 = ptrtoint ptr %auth_tok to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %auth_tok, align 4
  %token_type = getelementptr inbounds %struct.ecryptfs_auth_tok, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %token_type to i32
  call void @__asan_loadN_noabort(i32 %12, i32 2)
  %13 = load i16, ptr %token_type, align 1
  %14 = zext i16 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.284)
  switch i16 %13, label %if.else39 [
    i16 0, label %if.then15
    i16 1, label %if.then32
  ]

if.then15:                                        ; preds = %if.end12
  %15 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %len, align 4
  %add.ptr16 = getelementptr i8, ptr %dest_base, i32 %16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %session_key_encryption_key.i) #9
  %17 = call ptr @memset(ptr %session_key_encryption_key.i, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %dst_sg.i) #9
  %18 = call ptr @memset(ptr %dst_sg.i, i32 255, i32 40)
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %src_sg.i) #9
  %19 = call ptr @memset(ptr %src_sg.i, i32 255, i32 40)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tfm_mutex.i) #9
  %20 = ptrtoint ptr %tfm_mutex.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %tfm_mutex.i, align 4
  %21 = ptrtoint ptr %mount_crypt_stat1.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mount_crypt_stat1.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tfm.i) #9
  %23 = ptrtoint ptr %tfm.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr inttoptr (i32 -1 to ptr), ptr %tfm.i, align 4, !annotation !494
  %signature.i = getelementptr inbounds %struct.ecryptfs_auth_tok, ptr %11, i32 0, i32 5, i32 0, i32 6
  call void @ecryptfs_from_hex(ptr noundef %sig.i92, ptr noundef %signature.i, i32 noundef 8) #9
  %call.i = call i32 @ecryptfs_get_tfm_and_mutex_for_cipher_name(ptr noundef nonnull %tfm.i, ptr noundef nonnull %tfm_mutex.i, ptr noundef %cipher.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i, !prof !492

do.end.i:                                         ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #11
  %call8.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %cipher.i.i, i32 noundef %call.i) #13
  br label %write_tag_3_packet.exit

if.end.i:                                         ; preds = %if.then15
  %global_default_cipher_key_size.i = getelementptr inbounds %struct.ecryptfs_mount_crypt_stat, ptr %22, i32 0, i32 3
  %24 = ptrtoint ptr %global_default_cipher_key_size.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %global_default_cipher_key_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp.i = icmp eq i32 %25, 0
  br i1 %cmp.i, label %do.end12.i, label %if.end.i.if.end18.i_crit_edge

if.end.i.if.end18.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18.i

do.end12.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %26 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %tfm.i, align 4
  %__crt_alg.i.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %27, i32 0, i32 2, i32 3
  %28 = ptrtoint ptr %__crt_alg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %__crt_alg.i.i.i, align 4
  %max_keysize.i.i = getelementptr i8, ptr %29, i32 -104
  %30 = ptrtoint ptr %max_keysize.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %max_keysize.i.i, align 8
  %call15.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.227, i32 noundef %31) #13
  %32 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %tfm.i, align 4
  %__crt_alg.i.i299.i = getelementptr inbounds %struct.crypto_skcipher, ptr %33, i32 0, i32 2, i32 3
  %34 = ptrtoint ptr %__crt_alg.i.i299.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %__crt_alg.i.i299.i, align 4
  %max_keysize.i300.i = getelementptr i8, ptr %35, i32 -104
  %36 = ptrtoint ptr %max_keysize.i300.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %max_keysize.i300.i, align 8
  %38 = ptrtoint ptr %global_default_cipher_key_size.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %global_default_cipher_key_size.i, align 4
  br label %if.end18.i

if.end18.i:                                       ; preds = %do.end12.i, %if.end.i.if.end18.i_crit_edge
  %39 = ptrtoint ptr %key_size.i94 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %key_size.i94, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp19.i = icmp eq i32 %40, 0
  br i1 %cmp19.i, label %if.then20.i, label %if.end18.i.if.end23.i_crit_edge

if.end18.i.if.end23.i_crit_edge:                  ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23.i

if.then20.i:                                      ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #11
  %41 = ptrtoint ptr %global_default_cipher_key_size.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %global_default_cipher_key_size.i, align 4
  %43 = ptrtoint ptr %key_size.i94 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %key_size.i94, align 4
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.then20.i, %if.end18.i.if.end23.i_crit_edge
  %encrypted_key_size.i = getelementptr inbounds %struct.ecryptfs_auth_tok, ptr %11, i32 0, i32 3, i32 1
  %44 = ptrtoint ptr %encrypted_key_size.i to i32
  call void @__asan_loadN_noabort(i32 %44, i32 4)
  %45 = load i32, ptr %encrypted_key_size.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp24.i = icmp eq i32 %45, 0
  br i1 %cmp24.i, label %if.then25.i, label %if.end23.i.if.end29.i_crit_edge

if.end23.i.if.end29.i_crit_edge:                  ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29.i

if.then25.i:                                      ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #11
  %46 = ptrtoint ptr %key_size.i94 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %key_size.i94, align 4
  %48 = ptrtoint ptr %encrypted_key_size.i to i32
  call void @__asan_storeN_noabort(i32 %48, i32 4)
  store i32 %47, ptr %encrypted_key_size.i, align 1
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.then25.i, %if.end23.i.if.end29.i_crit_edge
  %49 = ptrtoint ptr %key_size.i94 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %key_size.i94, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %50)
  %cmp31.i = icmp eq i32 %50, 24
  br i1 %cmp31.i, label %land.lhs.true.i, label %if.end29.i.if.end43.i_crit_edge

if.end29.i.if.end43.i_crit_edge:                  ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end43.i

land.lhs.true.i:                                  ; preds = %if.end29.i
  %call34.i = call i32 @strcmp(ptr noundef nonnull dereferenceable(4) @.str.229, ptr noundef %cipher.i.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34.i)
  %cmp35.i = icmp eq i32 %call34.i, 0
  br i1 %cmp35.i, label %if.then36.i, label %land.lhs.true.i.if.end43.i_crit_edge

land.lhs.true.i.if.end43.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end43.i

if.then36.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %51 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_storeN_noabort(i32 %51, i32 8)
  store i64 0, ptr %add.ptr.i, align 1
  br label %if.end43.i

if.end43.i:                                       ; preds = %if.then36.i, %land.lhs.true.i.if.end43.i_crit_edge, %if.end29.i.if.end43.i_crit_edge
  %storemerge.i = phi i32 [ 32, %if.then36.i ], [ 24, %land.lhs.true.i.if.end43.i_crit_edge ], [ %50, %if.end29.i.if.end43.i_crit_edge ]
  %52 = ptrtoint ptr %encrypted_key_size.i to i32
  call void @__asan_storeN_noabort(i32 %52, i32 4)
  store i32 %storemerge.i, ptr %encrypted_key_size.i, align 1
  %53 = ptrtoint ptr %enc_key_size.i.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %storemerge.i, ptr %enc_key_size.i.i.i, align 4
  %54 = load i32, ptr %encrypted_key_size.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %cmp48314.not.i = icmp eq i32 %54, 0
  br i1 %cmp48314.not.i, label %if.end43.i.if.end58.i_crit_edge, label %if.end43.i.for.body.i_crit_edge

if.end43.i.for.body.i_crit_edge:                  ; preds = %if.end43.i
  br label %for.body.i

if.end43.i.if.end58.i_crit_edge:                  ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end58.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end43.i.for.body.i_crit_edge
  %i.0316.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end43.i.for.body.i_crit_edge ]
  %encrypted_session_key_valid.0315.i = phi i32 [ %or.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end43.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.ecryptfs_auth_tok, ptr %11, i32 0, i32 3, i32 3, i32 %i.0316.i
  %55 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %56 to i32
  %or.i = or i32 %encrypted_session_key_valid.0315.i, %conv.i
  %inc.i = add nuw i32 %i.0316.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %54
  br i1 %exitcond.not.i, label %for.end.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %tobool50.not.i = icmp eq i32 %or.i, 0
  br i1 %tobool50.not.i, label %for.end.i.if.end58.i_crit_edge, label %if.then51.i

for.end.i.if.end58.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end58.i

if.then51.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ...) @__ecryptfs_printk(ptr noundef nonnull @.str.230, ptr noundef nonnull @.str.225, i32 noundef %storemerge.i) #9
  %encrypted_key55.i = getelementptr inbounds %struct.ecryptfs_auth_tok, ptr %11, i32 0, i32 3, i32 3
  %57 = ptrtoint ptr %enc_key_size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %enc_key_size.i.i.i, align 4
  %59 = call ptr @memcpy(ptr %enc_key.i103, ptr %encrypted_key55.i, i32 %58)
  br label %encrypted_session_key_set.i

if.end58.i:                                       ; preds = %for.end.i.if.end58.i_crit_edge, %if.end43.i.if.end58.i_crit_edge
  %flags.i = getelementptr inbounds %struct.ecryptfs_auth_tok, ptr %11, i32 0, i32 5, i32 0, i32 4
  %60 = ptrtoint ptr %flags.i to i32
  call void @__asan_loadN_noabort(i32 %60, i32 4)
  %61 = load i32, ptr %flags.i, align 1
  %and.i = and i32 %61, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool60.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool60.not.i, label %if.end58.i.if.end73.i_crit_edge, label %if.then61.i

if.end58.i.if.end73.i_crit_edge:                  ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end73.i

if.then61.i:                                      ; preds = %if.end58.i
  %session_key_encryption_key_bytes.i = getelementptr inbounds %struct.ecryptfs_auth_tok, ptr %11, i32 0, i32 5, i32 0, i32 3
  %62 = ptrtoint ptr %session_key_encryption_key_bytes.i to i32
  call void @__asan_loadN_noabort(i32 %62, i32 4)
  %63 = load i32, ptr %session_key_encryption_key_bytes.i, align 1
  call void (ptr, ...) @__ecryptfs_printk(ptr noundef nonnull @.str.231, ptr noundef nonnull @.str.225, i32 noundef %63) #9
  %session_key_encryption_key65.i = getelementptr inbounds %struct.ecryptfs_auth_tok, ptr %11, i32 0, i32 5, i32 0, i32 5
  %64 = ptrtoint ptr %key_size.i94 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %key_size.i94, align 4
  %66 = call ptr @memcpy(ptr %session_key_encryption_key.i, ptr %session_key_encryption_key65.i, i32 %65)
  call void (ptr, ...) @__ecryptfs_printk(ptr noundef nonnull @.str.232, ptr noundef nonnull @.str.225) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ecryptfs_verbosity to i32))
  %67 = load i32, ptr @ecryptfs_verbosity, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %cmp68.i = icmp sgt i32 %67, 0
  br i1 %cmp68.i, label %if.then70.i, label %if.then61.i.if.end84.i_crit_edge

if.then61.i.if.end84.i_crit_edge:                 ; preds = %if.then61.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end84.i

if.then70.i:                                      ; preds = %if.then61.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @ecryptfs_dump_hex(ptr noundef nonnull %session_key_encryption_key.i, i32 noundef 16) #9
  br label %if.end73.i

if.end73.i:                                       ; preds = %if.then70.i, %if.end58.i.if.end73.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ecryptfs_verbosity to i32))
  %.pr.i = load i32, ptr @ecryptfs_verbosity, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i)
  %cmp74.i = icmp sgt i32 %.pr.i, 0
  br i1 %cmp74.i, label %if.then82.i, label %if.end73.i.if.end84.i_crit_edge, !prof !493

if.end73.i.if.end84.i_crit_edge:                  ; preds = %if.end73.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end84.i

if.then82.i:                                      ; preds = %if.end73.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ...) @__ecryptfs_printk(ptr noundef nonnull @.str.233, ptr noundef nonnull @.str.225) #9
  call void @ecryptfs_dump_hex(ptr noundef nonnull %session_key_encryption_key.i, i32 noundef 16) #9
  br label %if.end84.i

if.end84.i:                                       ; preds = %if.then82.i, %if.end73.i.if.end84.i_crit_edge, %if.then61.i.if.end84.i_crit_edge
  %68 = ptrtoint ptr %enc_key_size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %enc_key_size.i.i.i, align 4
  %call89.i = call i32 @virt_to_scatterlist(ptr noundef %key.i.i.i, i32 noundef %69, ptr noundef nonnull %src_sg.i, i32 noundef 2) #9
  %70 = add i32 %call89.i, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %70)
  %71 = icmp ult i32 %70, -2
  %72 = ptrtoint ptr %enc_key_size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %enc_key_size.i.i.i, align 4
  br i1 %71, label %if.then94.i, label %if.end96.i

if.then94.i:                                      ; preds = %if.end84.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ...) @__ecryptfs_printk(ptr noundef nonnull @.str.234, ptr noundef nonnull @.str.225, i32 noundef %call89.i, i32 noundef %73) #9
  br label %write_tag_3_packet.exit

if.end96.i:                                       ; preds = %if.end84.i
  %call101.i = call i32 @virt_to_scatterlist(ptr noundef %enc_key.i103, i32 noundef %73, ptr noundef nonnull %dst_sg.i, i32 noundef 2) #9
  %74 = add i32 %call101.i, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %74)
  %75 = icmp ult i32 %74, -2
  br i1 %75, label %if.then107.i, label %if.end109.i

if.then107.i:                                     ; preds = %if.end96.i
  call void @__sanitizer_cov_trace_pc() #11
  %76 = ptrtoint ptr %enc_key_size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %enc_key_size.i.i.i, align 4
  call void (ptr, ...) @__ecryptfs_printk(ptr noundef nonnull @.str.235, ptr noundef nonnull @.str.225, i32 noundef %call101.i, i32 noundef %77) #9
  br label %write_tag_3_packet.exit

if.end109.i:                                      ; preds = %if.end96.i
  %78 = ptrtoint ptr %tfm_mutex.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %tfm_mutex.i, align 4
  call void @mutex_lock_nested(ptr noundef %79, i32 noundef 0) #9
  %80 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %tfm.i, align 4
  %82 = ptrtoint ptr %key_size.i94 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %key_size.i94, align 4
  %call112.i = call i32 @crypto_skcipher_setkey(ptr noundef %81, ptr noundef nonnull %session_key_encryption_key.i, i32 noundef %83) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call112.i)
  %cmp113.i = icmp slt i32 %call112.i, 0
  br i1 %cmp113.i, label %if.then115.i, label %if.end116.i

if.then115.i:                                     ; preds = %if.end109.i
  call void @__sanitizer_cov_trace_pc() #11
  %84 = ptrtoint ptr %tfm_mutex.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %tfm_mutex.i, align 4
  call void @mutex_unlock(ptr noundef %85) #9
  call void (ptr, ...) @__ecryptfs_printk(ptr noundef nonnull @.str.236, ptr noundef nonnull @.str.225, i32 noundef %call112.i) #9
  br label %write_tag_3_packet.exit

if.end116.i:                                      ; preds = %if.end109.i
  %86 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %tfm.i, align 4
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %87, align 128
  %add.i.i = add i32 %89, 128
  %call9.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add.i.i, i32 noundef 3264) #14
  %tobool.not.i.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool.not.i.i, label %if.then119.i, label %if.end121.i, !prof !493

if.then119.i:                                     ; preds = %if.end116.i
  call void @__sanitizer_cov_trace_pc() #11
  %90 = ptrtoint ptr %tfm_mutex.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %tfm_mutex.i, align 4
  call void @mutex_unlock(ptr noundef %91) #9
  %92 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %tfm.i, align 4
  %__crt_alg.i.i301.i = getelementptr inbounds %struct.crypto_skcipher, ptr %93, i32 0, i32 2, i32 3
  %94 = ptrtoint ptr %__crt_alg.i.i301.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %__crt_alg.i.i301.i, align 4
  %cra_driver_name.i.i.i = getelementptr inbounds %struct.crypto_alg, ptr %95, i32 0, i32 9
  call void (ptr, ...) @__ecryptfs_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.225, ptr noundef %cra_driver_name.i.i.i) #9
  br label %write_tag_3_packet.exit

if.end121.i:                                      ; preds = %if.end116.i
  %base.i.i.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %87, i32 0, i32 2
  %tfm1.i.i.i = getelementptr inbounds %struct.skcipher_request, ptr %call9.i.i.i, i32 0, i32 4, i32 3
  %96 = ptrtoint ptr %tfm1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %base.i.i.i.i, ptr %tfm1.i.i.i, align 32
  %complete.i.i = getelementptr inbounds %struct.skcipher_request, ptr %call9.i.i.i, i32 0, i32 4, i32 1
  %97 = ptrtoint ptr %complete.i.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr null, ptr %complete.i.i, align 8
  %data2.i.i = getelementptr inbounds %struct.skcipher_request, ptr %call9.i.i.i, i32 0, i32 4, i32 2
  %98 = ptrtoint ptr %data2.i.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr null, ptr %data2.i.i, align 4
  %flags4.i.i = getelementptr inbounds %struct.skcipher_request, ptr %call9.i.i.i, i32 0, i32 4, i32 4
  %99 = ptrtoint ptr %flags4.i.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 512, ptr %flags4.i.i, align 4
  %100 = ptrtoint ptr %key_size.i94 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %key_size.i94, align 4
  call void (ptr, ...) @__ecryptfs_printk(ptr noundef nonnull @.str.237, ptr noundef nonnull @.str.225, i32 noundef %101) #9
  %102 = ptrtoint ptr %enc_key_size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %enc_key_size.i.i.i, align 4
  %src1.i.i = getelementptr inbounds %struct.skcipher_request, ptr %call9.i.i.i, i32 0, i32 2
  %104 = ptrtoint ptr %src1.i.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %src_sg.i, ptr %src1.i.i, align 8
  %dst2.i.i = getelementptr inbounds %struct.skcipher_request, ptr %call9.i.i.i, i32 0, i32 3
  %105 = ptrtoint ptr %dst2.i.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %dst_sg.i, ptr %dst2.i.i, align 4
  %106 = ptrtoint ptr %call9.i.i.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %103, ptr %call9.i.i.i, align 128
  %iv4.i.i = getelementptr inbounds %struct.skcipher_request, ptr %call9.i.i.i, i32 0, i32 1
  %107 = ptrtoint ptr %iv4.i.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr null, ptr %iv4.i.i, align 4
  %call126.i = call i32 @crypto_skcipher_encrypt(ptr noundef nonnull %call9.i.i.i) #9
  %108 = ptrtoint ptr %tfm_mutex.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %tfm_mutex.i, align 4
  call void @mutex_unlock(ptr noundef %109) #9
  call void @kfree_sensitive(ptr noundef nonnull %call9.i.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call126.i)
  %tobool127.not.i = icmp eq i32 %call126.i, 0
  br i1 %tobool127.not.i, label %if.end134.i, label %do.end131.i

do.end131.i:                                      ; preds = %if.end121.i
  call void @__sanitizer_cov_trace_pc() #11
  %call133.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.239, i32 noundef %call126.i) #13
  br label %write_tag_3_packet.exit

if.end134.i:                                      ; preds = %if.end121.i
  call void (ptr, ...) @__ecryptfs_printk(ptr noundef nonnull @.str.241, ptr noundef nonnull @.str.225) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ecryptfs_verbosity to i32))
  %110 = load i32, ptr @ecryptfs_verbosity, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %110)
  %cmp135.i = icmp sgt i32 %110, 0
  br i1 %cmp135.i, label %if.then137.i, label %if.end134.i.encrypted_session_key_set.i_crit_edge

if.end134.i.encrypted_session_key_set.i_crit_edge: ; preds = %if.end134.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %encrypted_session_key_set.i

if.then137.i:                                     ; preds = %if.end134.i
  call void @__sanitizer_cov_trace_pc() #11
  %111 = ptrtoint ptr %enc_key_size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %enc_key_size.i.i.i, align 4
  call void (ptr, ...) @__ecryptfs_printk(ptr noundef nonnull @.str.242, ptr noundef nonnull @.str.225, i32 noundef %112) #9
  %113 = ptrtoint ptr %enc_key_size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %enc_key_size.i.i.i, align 4
  call void @ecryptfs_dump_hex(ptr noundef %enc_key.i103, i32 noundef %114) #9
  br label %encrypted_session_key_set.i

encrypted_session_key_set.i:                      ; preds = %if.then137.i, %if.end134.i.encrypted_session_key_set.i_crit_edge, %if.then51.i
  %115 = ptrtoint ptr %enc_key_size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %enc_key_size.i.i.i, align 4
  %add.i = add i32 %116, 17
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %max.addr.0218)
  %cmp144.i = icmp ugt i32 %add.i, %max.addr.0218
  br i1 %cmp144.i, label %do.end149.i, label %if.end152.i

do.end149.i:                                      ; preds = %encrypted_session_key_set.i
  call void @__sanitizer_cov_trace_pc() #11
  %call151.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.244, i32 noundef %add.i, i32 noundef %max.addr.0218) #13
  br label %write_tag_3_packet.exit

if.end152.i:                                      ; preds = %encrypted_session_key_set.i
  %117 = ptrtoint ptr %add.ptr16 to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 -116, ptr %add.ptr16, align 1
  %arrayidx155.i = getelementptr i8, ptr %add.ptr16, i32 1
  %sub.i = add i32 %116, 13
  call void @__sanitizer_cov_trace_const_cmp4(i32 192, i32 %sub.i)
  %cmp.i.i = icmp ult i32 %sub.i, 192
  br i1 %cmp.i.i, label %if.then.i302.i, label %if.else.i.i

if.then.i302.i:                                   ; preds = %if.end152.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i = trunc i32 %sub.i to i8
  %118 = ptrtoint ptr %arrayidx155.i to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 %conv.i.i, ptr %arrayidx155.i, align 1
  br label %if.end164.i

if.else.i.i:                                      ; preds = %if.end152.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %sub.i)
  %cmp1.i.i = icmp ult i32 %sub.i, 65536
  br i1 %cmp1.i.i, label %if.then3.i.i, label %do.end161.i

if.then3.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i = add nsw i32 %116, -179
  %div19.i.i = lshr i32 %sub.i.i, 8
  %119 = trunc i32 %div19.i.i to i8
  %conv4.i.i = add i8 %119, -64
  %120 = ptrtoint ptr %arrayidx155.i to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 %conv4.i.i, ptr %arrayidx155.i, align 1
  %conv7.i.i = trunc i32 %sub.i.i to i8
  %arrayidx8.i.i = getelementptr i8, ptr %arrayidx155.i, i32 1
  %121 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 %conv7.i.i, ptr %arrayidx8.i.i, align 1
  br label %if.end164.i

do.end161.i:                                      ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ...) @__ecryptfs_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.ecryptfs_write_packet_length, i32 noundef %sub.i) #9
  %call163.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.247, i32 noundef -22) #13
  br label %write_tag_3_packet.exit

if.end164.i:                                      ; preds = %if.then3.i.i, %if.then.i302.i
  %packet_size_length.0.ph.i = phi i32 [ 3, %if.then3.i.i ], [ 2, %if.then.i302.i ]
  %arrayidx167.i = getelementptr i8, ptr %add.ptr16, i32 %packet_size_length.0.ph.i
  %122 = ptrtoint ptr %arrayidx167.i to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 4, ptr %arrayidx167.i, align 1
  %123 = ptrtoint ptr %key_size.i94 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %key_size.i94, align 4
  %call171.i = call zeroext i8 @ecryptfs_code_for_cipher_string(ptr noundef %cipher.i.i, i32 noundef %124) #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call171.i)
  %cmp173.i = icmp eq i8 %call171.i, 0
  br i1 %cmp173.i, label %if.then175.i, label %if.else199.i

if.then175.i:                                     ; preds = %if.end164.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ...) @__ecryptfs_printk(ptr noundef nonnull @.str.249, ptr noundef nonnull @.str.225, ptr noundef %cipher.i.i) #9
  br label %write_tag_3_packet.exit

if.else199.i:                                     ; preds = %if.end164.i
  call void @__sanitizer_cov_trace_pc() #11
  %inc166.i = add nuw nsw i32 %packet_size_length.0.ph.i, 1
  %inc179.i = add nuw nsw i32 %packet_size_length.0.ph.i, 2
  %arrayidx180.i = getelementptr i8, ptr %add.ptr16, i32 %inc166.i
  %125 = ptrtoint ptr %arrayidx180.i to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 %call171.i, ptr %arrayidx180.i, align 1
  %inc181.i = add nuw nsw i32 %packet_size_length.0.ph.i, 3
  %arrayidx182.i = getelementptr i8, ptr %add.ptr16, i32 %inc179.i
  %126 = ptrtoint ptr %arrayidx182.i to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 3, ptr %arrayidx182.i, align 1
  %inc183.i = or i32 %packet_size_length.0.ph.i, 4
  %arrayidx184.i = getelementptr i8, ptr %add.ptr16, i32 %inc181.i
  %127 = ptrtoint ptr %arrayidx184.i to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 1, ptr %arrayidx184.i, align 1
  %arrayidx185.i = getelementptr i8, ptr %add.ptr16, i32 %inc183.i
  %salt.i = getelementptr inbounds %struct.ecryptfs_auth_tok, ptr %11, i32 0, i32 5, i32 0, i32 7
  %128 = ptrtoint ptr %salt.i to i32
  call void @__asan_loadN_noabort(i32 %128, i32 8)
  %129 = load i64, ptr %salt.i, align 1
  %130 = ptrtoint ptr %arrayidx185.i to i32
  call void @__asan_storeN_noabort(i32 %130, i32 8)
  store i64 %129, ptr %arrayidx185.i, align 1
  %add188.i = or i32 %packet_size_length.0.ph.i, 12
  %inc189.i = add nuw nsw i32 %packet_size_length.0.ph.i, 13
  %arrayidx190.i = getelementptr i8, ptr %add.ptr16, i32 %add188.i
  %131 = ptrtoint ptr %arrayidx190.i to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 96, ptr %arrayidx190.i, align 1
  %arrayidx191.i = getelementptr i8, ptr %add.ptr16, i32 %inc189.i
  %132 = ptrtoint ptr %enc_key_size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %enc_key_size.i.i.i, align 4
  %134 = call ptr @memcpy(ptr %arrayidx191.i, ptr %enc_key.i103, i32 %133)
  %add196.i = add i32 %133, %inc189.i
  %sub200.i = sub i32 %max.addr.0218, %add196.i
  br label %write_tag_3_packet.exit

write_tag_3_packet.exit:                          ; preds = %if.else199.i, %if.then175.i, %do.end161.i, %do.end149.i, %do.end131.i, %if.then119.i, %if.then115.i, %if.then107.i, %if.then94.i, %do.end.i
  %max.addr.1 = phi i32 [ %sub200.i, %if.else199.i ], [ %max.addr.0218, %if.then175.i ], [ %max.addr.0218, %do.end161.i ], [ %max.addr.0218, %do.end149.i ], [ %max.addr.0218, %do.end131.i ], [ %max.addr.0218, %if.then119.i ], [ %max.addr.0218, %if.then115.i ], [ %max.addr.0218, %if.then107.i ], [ %max.addr.0218, %if.then94.i ], [ %max.addr.0218, %do.end.i ]
  %written.0 = phi i32 [ %add196.i, %if.else199.i ], [ 0, %if.then175.i ], [ 0, %do.end161.i ], [ 0, %do.end149.i ], [ 0, %do.end131.i ], [ 0, %if.then119.i ], [ 0, %if.then115.i ], [ 0, %if.then107.i ], [ 0, %if.then94.i ], [ 0, %do.end.i ]
  %rc.0312.i = phi i32 [ 0, %if.else199.i ], [ -22, %if.then175.i ], [ -22, %do.end161.i ], [ -22, %do.end149.i ], [ %call126.i, %do.end131.i ], [ -12, %if.then119.i ], [ %call112.i, %if.then115.i ], [ -12, %if.then107.i ], [ -12, %if.then94.i ], [ %call.i, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tfm.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tfm_mutex.i) #9
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %src_sg.i) #9
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %dst_sg.i) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %session_key_encryption_key.i) #9
  %135 = ptrtoint ptr %auth_tok_key to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %auth_tok_key, align 4
  %sem = getelementptr inbounds %struct.key, ptr %136, i32 0, i32 4
  call void @up_write(ptr noundef %sem) #9
  call void @key_put(ptr noundef %136) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.0312.i)
  %tobool18.not = icmp eq i32 %rc.0312.i, 0
  br i1 %tobool18.not, label %if.end20, label %write_tag_3_packet.exit.out.thread178_crit_edge

write_tag_3_packet.exit.out.thread178_crit_edge:  ; preds = %write_tag_3_packet.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.thread178

if.end20:                                         ; preds = %write_tag_3_packet.exit
  %137 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %len, align 4
  %add = add i32 %138, %written.0
  store i32 %add, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 26, i32 %max.addr.1)
  %cmp.i90 = icmp ult i32 %max.addr.1, 26
  br i1 %cmp.i90, label %if.then25, label %if.end26

if.then25:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  %call.i91 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.250, i32 noundef 26, i32 noundef %max.addr.1) #13
  br label %out.thread178

if.end26:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr21 = getelementptr i8, ptr %dest_base, i32 %add
  %139 = ptrtoint ptr %add.ptr21 to i32
  call void @__asan_store1_noabort(i32 %139)
  store i8 -19, ptr %add.ptr21, align 1
  %arrayidx1.i = getelementptr i8, ptr %add.ptr21, i32 1
  %140 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 22, ptr %arrayidx1.i, align 1
  %arrayidx12.i = getelementptr i8, ptr %add.ptr21, i32 2
  %141 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 98, ptr %arrayidx12.i, align 1
  %arrayidx14.i = getelementptr i8, ptr %add.ptr21, i32 3
  %142 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_store1_noabort(i32 %142)
  store i8 8, ptr %arrayidx14.i, align 1
  %arrayidx15.i = getelementptr i8, ptr %add.ptr21, i32 4
  %143 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_storeN_noabort(i32 %143, i32 8)
  store i64 6864417454866517061, ptr %arrayidx15.i, align 1
  %arrayidx17.i = getelementptr i8, ptr %add.ptr21, i32 12
  %144 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_storeN_noabort(i32 %144, i32 4)
  store i32 0, ptr %arrayidx17.i, align 1
  %arrayidx19.i = getelementptr i8, ptr %add.ptr21, i32 16
  %145 = ptrtoint ptr %sig.i92 to i32
  call void @__asan_load8_noabort(i32 %145)
  %146 = load i64, ptr %sig.i92, align 8
  %147 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_storeN_noabort(i32 %147, i32 8)
  store i64 %146, ptr %arrayidx19.i, align 1
  %sub23.i = add i32 %max.addr.1, -24
  br label %for.inc

if.then32:                                        ; preds = %if.end12
  %148 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %len, align 4
  %add.ptr33 = getelementptr i8, ptr %dest_base, i32 %149
  %150 = ptrtoint ptr %auth_tok_key to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %auth_tok_key, align 4
  %token.i = getelementptr inbounds %struct.ecryptfs_auth_tok, ptr %11, i32 0, i32 5
  %signature.i93 = getelementptr inbounds %struct.ecryptfs_auth_tok, ptr %11, i32 0, i32 5, i32 0, i32 2
  call void @ecryptfs_from_hex(ptr noundef %sig.i92, ptr noundef %signature.i93, i32 noundef 8) #9
  %152 = ptrtoint ptr %key_size.i94 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %key_size.i94, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %153)
  %cmp123.not.i = icmp eq i32 %153, 0
  br i1 %cmp123.not.i, label %if.then32.if.end.i105_crit_edge, label %if.then32.for.body.i100_crit_edge

if.then32.for.body.i100_crit_edge:                ; preds = %if.then32
  br label %for.body.i100

if.then32.if.end.i105_crit_edge:                  ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i105

for.body.i100:                                    ; preds = %for.body.i100.for.body.i100_crit_edge, %if.then32.for.body.i100_crit_edge
  %i.0125.i = phi i32 [ %inc.i98, %for.body.i100.for.body.i100_crit_edge ], [ 0, %if.then32.for.body.i100_crit_edge ]
  %encrypted_session_key_valid.0124.i = phi i32 [ %or.i97, %for.body.i100.for.body.i100_crit_edge ], [ 0, %if.then32.for.body.i100_crit_edge ]
  %arrayidx.i95 = getelementptr %struct.ecryptfs_auth_tok, ptr %11, i32 0, i32 3, i32 3, i32 %i.0125.i
  %154 = ptrtoint ptr %arrayidx.i95 to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %arrayidx.i95, align 1
  %conv.i96 = zext i8 %155 to i32
  %or.i97 = or i32 %encrypted_session_key_valid.0124.i, %conv.i96
  %inc.i98 = add nuw i32 %i.0125.i, 1
  %exitcond.not.i99 = icmp eq i32 %inc.i98, %153
  br i1 %exitcond.not.i99, label %for.end.i102, label %for.body.i100.for.body.i100_crit_edge

for.body.i100.for.body.i100_crit_edge:            ; preds = %for.body.i100
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i100

for.end.i102:                                     ; preds = %for.body.i100
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i97)
  %tobool.not.i101 = icmp eq i32 %or.i97, 0
  br i1 %tobool.not.i101, label %for.end.i102.if.end.i105_crit_edge, label %if.then.i

for.end.i102.if.end.i105_crit_edge:               ; preds = %for.end.i102
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i105

if.then.i:                                        ; preds = %for.end.i102
  call void @__sanitizer_cov_trace_pc() #11
  %encrypted_key4.i = getelementptr inbounds %struct.ecryptfs_auth_tok, ptr %11, i32 0, i32 3, i32 3
  %encrypted_key_size.i104 = getelementptr inbounds %struct.ecryptfs_auth_tok, ptr %11, i32 0, i32 3, i32 1
  %156 = ptrtoint ptr %encrypted_key_size.i104 to i32
  call void @__asan_loadN_noabort(i32 %156, i32 4)
  %157 = load i32, ptr %encrypted_key_size.i104, align 1
  %158 = call ptr @memcpy(ptr %enc_key.i103, ptr %encrypted_key4.i, i32 %157)
  %sem.i = getelementptr inbounds %struct.key, ptr %151, i32 0, i32 4
  call void @up_write(ptr noundef %sem.i) #9
  call void @key_put(ptr noundef %151) #9
  br label %encrypted_session_key_set.i116

if.end.i105:                                      ; preds = %for.end.i102.if.end.i105_crit_edge, %if.then32.if.end.i105_crit_edge
  %encrypted_key_size8.i = getelementptr inbounds %struct.ecryptfs_auth_tok, ptr %11, i32 0, i32 3, i32 1
  %159 = ptrtoint ptr %encrypted_key_size8.i to i32
  call void @__asan_loadN_noabort(i32 %159, i32 4)
  %160 = load i32, ptr %encrypted_key_size8.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %160)
  %cmp9.i = icmp eq i32 %160, 0
  br i1 %cmp9.i, label %if.then11.i, label %if.end.i105.if.end16.i_crit_edge

if.end.i105.if.end16.i_crit_edge:                 ; preds = %if.end.i105
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16.i

if.then11.i:                                      ; preds = %if.end.i105
  call void @__sanitizer_cov_trace_pc() #11
  %161 = ptrtoint ptr %token.i to i32
  call void @__asan_loadN_noabort(i32 %161, i32 4)
  %162 = load i32, ptr %token.i, align 1
  %163 = ptrtoint ptr %encrypted_key_size8.i to i32
  call void @__asan_storeN_noabort(i32 %163, i32 4)
  store i32 %162, ptr %encrypted_key_size8.i, align 1
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.then11.i, %if.end.i105.if.end16.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %msg_ctx.i.i) #9
  %164 = ptrtoint ptr %msg_ctx.i.i to i32
  call void @__asan_store4_noabort(i32 %164)
  store ptr null, ptr %msg_ctx.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %msg.i.i) #9
  %165 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %165)
  store ptr inttoptr (i32 -1 to ptr), ptr %msg.i.i, align 4, !annotation !494
  %166 = ptrtoint ptr %key_size.i94 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %key_size.i94, align 4
  %call.i.i = call zeroext i8 @ecryptfs_code_for_cipher_string(ptr noundef %cipher.i.i, i32 noundef %167) #9
  %168 = ptrtoint ptr %key_size.i94 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %key_size.i94, align 4
  %add.i.i.i = add i32 %169, 21
  %call9.i.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add.i.i.i, i32 noundef 3264) #14
  %tobool.not.i.i.i = icmp eq ptr %call9.i.i.i.i, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i109, label %if.end5.i.i.i

if.then.i.i.i109:                                 ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ...) @__ecryptfs_printk(ptr noundef nonnull @.str.197, ptr noundef nonnull @__func__.write_tag_66_packet) #9
  br label %write_tag_66_packet.exit.i.i

if.end5.i.i.i:                                    ; preds = %if.end16.i
  %170 = ptrtoint ptr %call9.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %170)
  store i8 66, ptr %call9.i.i.i.i, align 128
  %arrayidx1.i.i.i = getelementptr i8, ptr %call9.i.i.i.i, i32 1
  %171 = ptrtoint ptr %arrayidx1.i.i.i to i32
  call void @__asan_store1_noabort(i32 %171)
  store i8 16, ptr %arrayidx1.i.i.i, align 1
  %arrayidx7.i.i.i = getelementptr i8, ptr %call9.i.i.i.i, i32 2
  %172 = call ptr @memcpy(ptr %arrayidx7.i.i.i, ptr %signature.i93, i32 16)
  %arrayidx9.i.i.i = getelementptr i8, ptr %call9.i.i.i.i, i32 18
  %173 = ptrtoint ptr %key_size.i94 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %key_size.i94, align 4
  %add11.i.i.i = add i32 %174, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 192, i32 %add11.i.i.i)
  %cmp.i70.i.i.i = icmp ult i32 %add11.i.i.i, 192
  br i1 %cmp.i70.i.i.i, label %if.then.i71.i.i.i, label %if.else.i.i.i.i

if.then.i71.i.i.i:                                ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i.i.i = trunc i32 %add11.i.i.i to i8
  %175 = ptrtoint ptr %arrayidx9.i.i.i to i32
  call void @__asan_store1_noabort(i32 %175)
  store i8 %conv.i.i.i.i, ptr %arrayidx9.i.i.i, align 2
  br label %if.end15.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add11.i.i.i)
  %cmp1.i.i.i.i = icmp ult i32 %add11.i.i.i, 65536
  br i1 %cmp1.i.i.i.i, label %if.then3.i.i.i.i, label %if.then14.i.i.i

if.then3.i.i.i.i:                                 ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i.i.i = add nsw i32 %174, -189
  %div19.i.i.i.i = lshr i32 %sub.i.i.i.i, 8
  %176 = trunc i32 %div19.i.i.i.i to i8
  %conv4.i.i.i.i = add i8 %176, -64
  %177 = ptrtoint ptr %arrayidx9.i.i.i to i32
  call void @__asan_store1_noabort(i32 %177)
  store i8 %conv4.i.i.i.i, ptr %arrayidx9.i.i.i, align 2
  %conv7.i.i.i.i = trunc i32 %sub.i.i.i.i to i8
  %arrayidx8.i.i.i.i = getelementptr i8, ptr %call9.i.i.i.i, i32 19
  %178 = ptrtoint ptr %arrayidx8.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %178)
  store i8 %conv7.i.i.i.i, ptr %arrayidx8.i.i.i.i, align 1
  br label %if.end15.i.i.i

if.then14.i.i.i:                                  ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ...) @__ecryptfs_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.ecryptfs_write_packet_length, i32 noundef %add11.i.i.i) #9
  call void (ptr, ...) @__ecryptfs_printk(ptr noundef nonnull @.str.265, ptr noundef nonnull @__func__.write_tag_66_packet) #9
  br label %write_tag_66_packet.exit.i.i

if.end15.i.i.i:                                   ; preds = %if.then3.i.i.i.i, %if.then.i71.i.i.i
  %packet_size_len.0.ph.i.i.i = phi i32 [ 20, %if.then3.i.i.i.i ], [ 19, %if.then.i71.i.i.i ]
  %inc17.i.i.i = add nuw nsw i32 %packet_size_len.0.ph.i.i.i, 1
  %arrayidx18.i.i.i = getelementptr i8, ptr %call9.i.i.i.i, i32 %packet_size_len.0.ph.i.i.i
  %179 = ptrtoint ptr %arrayidx18.i.i.i to i32
  call void @__asan_store1_noabort(i32 %179)
  store i8 %call.i.i, ptr %arrayidx18.i.i.i, align 1
  %arrayidx19.i.i.i = getelementptr i8, ptr %call9.i.i.i.i, i32 %inc17.i.i.i
  %180 = ptrtoint ptr %key_size.i94 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %key_size.i94, align 4
  %182 = call ptr @memcpy(ptr %arrayidx19.i.i.i, ptr %key.i.i.i, i32 %181)
  %add22.i.i.i = add i32 %181, %inc17.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %181)
  %cmp80.not.i.i.i = icmp eq i32 %181, 0
  br i1 %cmp80.not.i.i.i, label %if.end15.i.i.i.for.end.i.i.i_crit_edge, label %if.end15.i.i.i.for.body.i.i.i_crit_edge

if.end15.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %if.end15.i.i.i
  br label %for.body.i.i.i

if.end15.i.i.i.for.end.i.i.i_crit_edge:           ; preds = %if.end15.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i.i.i

for.body.i.i.i:                                   ; preds = %for.body.i.i.i.for.body.i.i.i_crit_edge, %if.end15.i.i.i.for.body.i.i.i_crit_edge
  %checksum.082.i.i.i = phi i32 [ %add26.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %if.end15.i.i.i.for.body.i.i.i_crit_edge ]
  %j.081.i.i.i = phi i32 [ %inc27.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %if.end15.i.i.i.for.body.i.i.i_crit_edge ]
  %arrayidx25.i.i.i = getelementptr %struct.ecryptfs_crypt_stat, ptr %crypt_stat, i32 0, i32 12, i32 %j.081.i.i.i
  %183 = ptrtoint ptr %arrayidx25.i.i.i to i32
  call void @__asan_load1_noabort(i32 %183)
  %184 = load i8, ptr %arrayidx25.i.i.i, align 1
  %conv.i.i.i = zext i8 %184 to i32
  %add26.i.i.i = add i32 %checksum.082.i.i.i, %conv.i.i.i
  %inc27.i.i.i = add nuw i32 %j.081.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc27.i.i.i, %181
  br i1 %exitcond.not.i.i.i, label %for.body.i.i.i.for.end.i.i.i_crit_edge, label %for.body.i.i.i.for.body.i.i.i_crit_edge

for.body.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i.i

for.body.i.i.i.for.end.i.i.i_crit_edge:           ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i.i.i

for.end.i.i.i:                                    ; preds = %for.body.i.i.i.for.end.i.i.i_crit_edge, %if.end15.i.i.i.for.end.i.i.i_crit_edge
  %checksum.0.lcssa.i.i.i = phi i32 [ 0, %if.end15.i.i.i.for.end.i.i.i_crit_edge ], [ %add26.i.i.i, %for.body.i.i.i.for.end.i.i.i_crit_edge ]
  %div68.i.i.i = lshr i32 %checksum.0.lcssa.i.i.i, 8
  %conv28.i.i.i = trunc i32 %div68.i.i.i to i8
  %inc29.i.i.i = add i32 %add22.i.i.i, 1
  %arrayidx30.i.i.i = getelementptr i8, ptr %call9.i.i.i.i, i32 %add22.i.i.i
  %185 = ptrtoint ptr %arrayidx30.i.i.i to i32
  call void @__asan_store1_noabort(i32 %185)
  store i8 %conv28.i.i.i, ptr %arrayidx30.i.i.i, align 1
  %conv32.i.i.i = trunc i32 %checksum.0.lcssa.i.i.i to i8
  %inc33.i.i.i = add i32 %add22.i.i.i, 2
  %arrayidx34.i.i.i = getelementptr i8, ptr %call9.i.i.i.i, i32 %inc29.i.i.i
  %186 = ptrtoint ptr %arrayidx34.i.i.i to i32
  call void @__asan_store1_noabort(i32 %186)
  store i8 %conv32.i.i.i, ptr %arrayidx34.i.i.i, align 1
  br label %write_tag_66_packet.exit.i.i

write_tag_66_packet.exit.i.i:                     ; preds = %for.end.i.i.i, %if.then14.i.i.i, %if.then.i.i.i109
  %payload.1.i.i = phi ptr [ null, %if.then.i.i.i109 ], [ %call9.i.i.i.i, %for.end.i.i.i ], [ %call9.i.i.i.i, %if.then14.i.i.i ]
  %payload_len.0.i.i = phi i32 [ 0, %if.then.i.i.i109 ], [ %inc33.i.i.i, %for.end.i.i.i ], [ 0, %if.then14.i.i.i ]
  %tobool.not.i.i110 = phi i1 [ false, %if.then.i.i.i109 ], [ true, %for.end.i.i.i ], [ false, %if.then14.i.i.i ]
  %rc.0.i.i.i = phi i32 [ -12, %if.then.i.i.i109 ], [ 0, %for.end.i.i.i ], [ -22, %if.then14.i.i.i ]
  %sem.i.i = getelementptr inbounds %struct.key, ptr %151, i32 0, i32 4
  call void @up_write(ptr noundef %sem.i.i) #9
  call void @key_put(ptr noundef %151) #9
  br i1 %tobool.not.i.i110, label %if.end.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %write_tag_66_packet.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ...) @__ecryptfs_printk(ptr noundef nonnull @.str.262, ptr noundef nonnull @__func__.pki_encrypt_session_key) #9
  br label %pki_encrypt_session_key.exit.i

if.end.i.i:                                       ; preds = %write_tag_66_packet.exit.i.i
  %call3.i.i = call i32 @ecryptfs_send_message(ptr noundef %payload.1.i.i, i32 noundef %payload_len.0.i.i, ptr noundef nonnull %msg_ctx.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool4.not.i.i = icmp eq i32 %call3.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end6.i.i, label %if.then5.i.i

if.then5.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ...) @__ecryptfs_printk(ptr noundef nonnull @.str.190, ptr noundef nonnull @__func__.pki_encrypt_session_key, i32 noundef %call3.i.i) #9
  br label %pki_encrypt_session_key.exit.thread.i

if.end6.i.i:                                      ; preds = %if.end.i.i
  %187 = ptrtoint ptr %msg_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %msg_ctx.i.i, align 4
  %call7.i.i = call i32 @ecryptfs_wait_for_response(ptr noundef %188, ptr noundef nonnull %msg.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i)
  %tobool8.not.i.i = icmp eq i32 %call7.i.i, 0
  br i1 %tobool8.not.i.i, label %if.end10.i.i, label %if.then9.i.i

if.then9.i.i:                                     ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ...) @__ecryptfs_printk(ptr noundef nonnull @.str.263, ptr noundef nonnull @__func__.pki_encrypt_session_key) #9
  br label %pki_encrypt_session_key.exit.thread.i

if.end10.i.i:                                     ; preds = %if.end6.i.i
  %189 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %msg.i.i, align 4
  %data_len1.i.i.i = getelementptr inbounds %struct.ecryptfs_message, ptr %190, i32 0, i32 1
  %191 = ptrtoint ptr %data_len1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %data_len1.i.i.i, align 4
  %data2.i.i.i = getelementptr inbounds %struct.ecryptfs_message, ptr %190, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %192)
  %cmp.i.i.i111 = icmp ult i32 %192, 4
  br i1 %cmp.i.i.i111, label %if.then.i23.i.i, label %if.end.i.i.i112

if.then.i23.i.i:                                  ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.266, ptr noundef nonnull @.str.267, i32 noundef %192, i32 noundef 4) #13
  br label %if.then13.i.i

if.end.i.i.i112:                                  ; preds = %if.end10.i.i
  %193 = ptrtoint ptr %data2.i.i.i to i32
  call void @__asan_load1_noabort(i32 %193)
  %194 = load i8, ptr %data2.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 67, i8 %194)
  %cmp3.not.i.i.i = icmp eq i8 %194, 67
  br i1 %cmp3.not.i.i.i, label %if.end11.i.i.i, label %if.then5.i.i.i

if.then5.i.i.i:                                   ; preds = %if.end.i.i.i112
  call void @__sanitizer_cov_trace_pc() #11
  %call10.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.269, ptr noundef nonnull @.str.267) #13
  br label %if.then13.i.i

if.end11.i.i.i:                                   ; preds = %if.end.i.i.i112
  %arrayidx13.i.i.i = getelementptr i8, ptr %data2.i.i.i, i32 1
  %195 = ptrtoint ptr %arrayidx13.i.i.i to i32
  call void @__asan_load1_noabort(i32 %195)
  %196 = load i8, ptr %arrayidx13.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %196)
  %tobool.not.i24.i.i = icmp eq i8 %196, 0
  br i1 %tobool.not.i24.i.i, label %if.end22.i.i.i, label %if.then14.i25.i.i

if.then14.i25.i.i:                                ; preds = %if.end11.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv20.i.i.i = zext i8 %196 to i32
  %call21.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.272, ptr noundef nonnull @.str.267, i32 noundef %conv20.i.i.i) #13
  br label %if.then13.i.i

if.end22.i.i.i:                                   ; preds = %if.end11.i.i.i
  %arrayidx23.i.i.i = getelementptr i8, ptr %data2.i.i.i, i32 2
  %197 = ptrtoint ptr %enc_key_size.i.i.i to i32
  call void @__asan_store4_noabort(i32 %197)
  store i32 0, ptr %enc_key_size.i.i.i, align 4
  %198 = ptrtoint ptr %arrayidx23.i.i.i to i32
  call void @__asan_load1_noabort(i32 %198)
  %199 = load i8, ptr %arrayidx23.i.i.i, align 1
  %conv.i.i26.i.i = zext i8 %199 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 -64, i8 %199)
  %cmp.i.i27.i.i = icmp ult i8 %199, -64
  br i1 %cmp.i.i27.i.i, label %if.end22.i.i.i.if.end27.i.i.i_crit_edge, label %if.else.i.i28.i.i

if.end22.i.i.i.if.end27.i.i.i_crit_edge:          ; preds = %if.end22.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27.i.i.i

if.else.i.i28.i.i:                                ; preds = %if.end22.i.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -32, i8 %199)
  %cmp6.i.i.i.i = icmp ult i8 %199, -32
  br i1 %cmp6.i.i.i.i, label %if.then8.i.i.i.i, label %if.else14.i.i.i.i

if.then8.i.i.i.i:                                 ; preds = %if.else.i.i28.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i29.i.i = shl nuw nsw i32 %conv.i.i26.i.i, 8
  %mul.i.i.i.i = add nsw i32 %sub.i.i29.i.i, -49152
  %200 = ptrtoint ptr %enc_key_size.i.i.i to i32
  call void @__asan_store4_noabort(i32 %200)
  store i32 %mul.i.i.i.i, ptr %enc_key_size.i.i.i, align 4
  %arrayidx11.i.i.i.i = getelementptr i8, ptr %data2.i.i.i, i32 3
  %201 = ptrtoint ptr %arrayidx11.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %201)
  %202 = load i8, ptr %arrayidx11.i.i.i.i, align 1
  %conv12.i.i.i.i = zext i8 %202 to i32
  %add.i.i.i.i = add nsw i32 %sub.i.i29.i.i, -48960
  %add13.i.i.i.i = add nsw i32 %add.i.i.i.i, %conv12.i.i.i.i
  br label %if.end27.i.i.i

if.else14.i.i.i.i:                                ; preds = %if.else.i.i28.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %199)
  %cmp17.i.i.i.i = icmp eq i8 %199, -1
  %.str..str.1.i.i.i = select i1 %cmp17.i.i.i.i, ptr @.str, ptr @.str.1
  call void (ptr, ...) @__ecryptfs_printk(ptr noundef nonnull %.str..str.1.i.i.i, ptr noundef nonnull @__func__.ecryptfs_parse_packet_length) #9
  call void (ptr, ...) @__ecryptfs_printk(ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.267, i32 noundef -22) #9
  br label %if.then13.i.i

if.end27.i.i.i:                                   ; preds = %if.then8.i.i.i.i, %if.end22.i.i.i.if.end27.i.i.i_crit_edge
  %storemerge.i.i.i = phi i32 [ %add13.i.i.i.i, %if.then8.i.i.i.i ], [ %conv.i.i26.i.i, %if.end22.i.i.i.if.end27.i.i.i_crit_edge ]
  %data_len.0.ph.i.i.i = phi i32 [ 4, %if.then8.i.i.i.i ], [ 3, %if.end22.i.i.i.if.end27.i.i.i_crit_edge ]
  %203 = ptrtoint ptr %enc_key_size.i.i.i to i32
  call void @__asan_store4_noabort(i32 %203)
  store i32 %storemerge.i.i.i, ptr %enc_key_size.i.i.i, align 4
  %add29.i.i.i = add nsw i32 %data_len.0.ph.i.i.i, %storemerge.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %192, i32 %add29.i.i.i)
  %cmp30.i.i.i = icmp ult i32 %192, %add29.i.i.i
  br i1 %cmp30.i.i.i, label %if.then32.i.i.i, label %if.end40.i.i.i

if.then32.i.i.i:                                  ; preds = %if.end27.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call39.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.275, ptr noundef nonnull @.str.267, i32 noundef %192, i32 noundef %add29.i.i.i) #13
  br label %if.then13.i.i

if.end40.i.i.i:                                   ; preds = %if.end27.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %storemerge.i.i.i)
  %cmp42.i.i.i = icmp ugt i32 %storemerge.i.i.i, 512
  br i1 %cmp42.i.i.i, label %if.then44.i.i.i, label %parse_tag_67_packet.exit.i.i

if.then44.i.i.i:                                  ; preds = %if.end40.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call50.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.278, ptr noundef nonnull @.str.267, i32 noundef %storemerge.i.i.i, i32 noundef 512) #13
  br label %if.then13.i.i

parse_tag_67_packet.exit.i.i:                     ; preds = %if.end40.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx53.i.i.i = getelementptr i8, ptr %data2.i.i.i, i32 %data_len.0.ph.i.i.i
  %204 = call ptr @memcpy(ptr %enc_key.i103, ptr %arrayidx53.i.i.i, i32 %storemerge.i.i.i)
  br label %if.end14.i.i

if.then13.i.i:                                    ; preds = %if.then44.i.i.i, %if.then32.i.i.i, %if.else14.i.i.i.i, %if.then14.i25.i.i, %if.then5.i.i.i, %if.then.i23.i.i
  %rc.0.i30.ph.i.i = phi i32 [ -5, %if.then44.i.i.i ], [ -5, %if.then32.i.i.i ], [ -22, %if.else14.i.i.i.i ], [ -5, %if.then14.i25.i.i ], [ -5, %if.then5.i.i.i ], [ -5, %if.then.i23.i.i ]
  call void (ptr, ...) @__ecryptfs_printk(ptr noundef nonnull @.str.264, ptr noundef nonnull @__func__.pki_encrypt_session_key) #9
  br label %if.end14.i.i

if.end14.i.i:                                     ; preds = %if.then13.i.i, %parse_tag_67_packet.exit.i.i
  %rc.0.i3035.i.i = phi i32 [ %rc.0.i30.ph.i.i, %if.then13.i.i ], [ 0, %parse_tag_67_packet.exit.i.i ]
  %205 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %msg.i.i, align 4
  call void @kfree(ptr noundef %206) #9
  br label %pki_encrypt_session_key.exit.i

pki_encrypt_session_key.exit.thread.i:            ; preds = %if.then9.i.i, %if.then5.i.i
  %rc.0.i.ph.i = phi i32 [ -5, %if.then9.i.i ], [ %call3.i.i, %if.then5.i.i ]
  call void @kfree(ptr noundef %payload.1.i.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %msg.i.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %msg_ctx.i.i) #9
  br label %do.end.i113

pki_encrypt_session_key.exit.i:                   ; preds = %if.end14.i.i, %if.then.i.i
  %rc.0.i.i = phi i32 [ %rc.0.i.i.i, %if.then.i.i ], [ %rc.0.i3035.i.i, %if.end14.i.i ]
  call void @kfree(ptr noundef %payload.1.i.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %msg.i.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %msg_ctx.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.0.i.i)
  %tobool17.not.i = icmp eq i32 %rc.0.i.i, 0
  br i1 %tobool17.not.i, label %if.end20.i, label %pki_encrypt_session_key.exit.i.do.end.i113_crit_edge

pki_encrypt_session_key.exit.i.do.end.i113_crit_edge: ; preds = %pki_encrypt_session_key.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i113

do.end.i113:                                      ; preds = %pki_encrypt_session_key.exit.i.do.end.i113_crit_edge, %pki_encrypt_session_key.exit.thread.i
  %rc.0.i114.i = phi i32 [ %rc.0.i.ph.i, %pki_encrypt_session_key.exit.thread.i ], [ %rc.0.i.i, %pki_encrypt_session_key.exit.i.do.end.i113_crit_edge ]
  %call19.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.256, i32 noundef %rc.0.i114.i) #13
  br label %out.thread178

if.end20.i:                                       ; preds = %pki_encrypt_session_key.exit.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ecryptfs_verbosity to i32))
  %207 = load i32, ptr @ecryptfs_verbosity, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %207)
  %cmp21.i = icmp sgt i32 %207, 0
  br i1 %cmp21.i, label %if.then23.i, label %if.end20.i.encrypted_session_key_set.i116_crit_edge

if.end20.i.encrypted_session_key_set.i116_crit_edge: ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %encrypted_session_key_set.i116

if.then23.i:                                      ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ...) @__ecryptfs_printk(ptr noundef nonnull @.str.258, ptr noundef nonnull @.str.257) #9
  %208 = ptrtoint ptr %enc_key_size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %enc_key_size.i.i.i, align 4
  call void @ecryptfs_dump_hex(ptr noundef %enc_key.i103, i32 noundef %209) #9
  br label %encrypted_session_key_set.i116

encrypted_session_key_set.i116:                   ; preds = %if.then23.i, %if.end20.i.encrypted_session_key_set.i116_crit_edge, %if.then.i
  %210 = ptrtoint ptr %enc_key_size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %enc_key_size.i.i.i, align 4
  %add.i115 = add i32 %211, 14
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i115, i32 %max.addr.0218)
  %cmp28.i = icmp ugt i32 %add.i115, %max.addr.0218
  br i1 %cmp28.i, label %do.end33.i, label %if.end36.i

do.end33.i:                                       ; preds = %encrypted_session_key_set.i116
  call void @__sanitizer_cov_trace_pc() #11
  %call35.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.250, i32 noundef %add.i115, i32 noundef %max.addr.0218) #13
  br label %out.thread178

if.end36.i:                                       ; preds = %encrypted_session_key_set.i116
  %212 = ptrtoint ptr %add.ptr33 to i32
  call void @__asan_store1_noabort(i32 %212)
  store i8 1, ptr %add.ptr33, align 1
  %arrayidx39.i = getelementptr i8, ptr %add.ptr33, i32 1
  %sub.i117 = add i32 %211, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 192, i32 %sub.i117)
  %cmp.i.i118 = icmp ult i32 %sub.i117, 192
  br i1 %cmp.i.i118, label %if.then.i109.i, label %if.else.i.i121

if.then.i109.i:                                   ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i119 = trunc i32 %sub.i117 to i8
  %213 = ptrtoint ptr %arrayidx39.i to i32
  call void @__asan_store1_noabort(i32 %213)
  store i8 %conv.i.i119, ptr %arrayidx39.i, align 1
  br label %if.end37

if.else.i.i121:                                   ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %sub.i117)
  %cmp1.i.i120 = icmp ult i32 %sub.i117, 65536
  br i1 %cmp1.i.i120, label %if.then3.i.i127, label %if.then42.i

if.then3.i.i127:                                  ; preds = %if.else.i.i121
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i122 = add nsw i32 %211, -182
  %div19.i.i123 = lshr i32 %sub.i.i122, 8
  %214 = trunc i32 %div19.i.i123 to i8
  %conv4.i.i124 = add i8 %214, -64
  %215 = ptrtoint ptr %arrayidx39.i to i32
  call void @__asan_store1_noabort(i32 %215)
  store i8 %conv4.i.i124, ptr %arrayidx39.i, align 1
  %conv7.i.i125 = trunc i32 %sub.i.i122 to i8
  %arrayidx8.i.i126 = getelementptr i8, ptr %arrayidx39.i, i32 1
  %216 = ptrtoint ptr %arrayidx8.i.i126 to i32
  call void @__asan_store1_noabort(i32 %216)
  store i8 %conv7.i.i125, ptr %arrayidx8.i.i126, align 1
  br label %if.end37

if.then42.i:                                      ; preds = %if.else.i.i121
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ...) @__ecryptfs_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.ecryptfs_write_packet_length, i32 noundef %sub.i117) #9
  call void (ptr, ...) @__ecryptfs_printk(ptr noundef nonnull @.str.261, ptr noundef nonnull @.str.257) #9
  br label %out.thread178

if.end37:                                         ; preds = %if.then3.i.i127, %if.then.i109.i
  %packet_size_length.0.ph.i129 = phi i32 [ 3, %if.then3.i.i127 ], [ 2, %if.then.i109.i ]
  %inc45.i = add nuw nsw i32 %packet_size_length.0.ph.i129, 1
  %arrayidx46.i = getelementptr i8, ptr %add.ptr33, i32 %packet_size_length.0.ph.i129
  %217 = ptrtoint ptr %arrayidx46.i to i32
  call void @__asan_store1_noabort(i32 %217)
  store i8 3, ptr %arrayidx46.i, align 1
  %arrayidx47.i = getelementptr i8, ptr %add.ptr33, i32 %inc45.i
  %218 = ptrtoint ptr %sig.i92 to i32
  call void @__asan_load8_noabort(i32 %218)
  %219 = load i64, ptr %sig.i92, align 8
  %220 = ptrtoint ptr %arrayidx47.i to i32
  call void @__asan_storeN_noabort(i32 %220, i32 8)
  store i64 %219, ptr %arrayidx47.i, align 1
  %add50.i = add nuw nsw i32 %packet_size_length.0.ph.i129, 9
  %inc51.i = add nuw nsw i32 %packet_size_length.0.ph.i129, 10
  %arrayidx52.i = getelementptr i8, ptr %add.ptr33, i32 %add50.i
  %221 = ptrtoint ptr %arrayidx52.i to i32
  call void @__asan_store1_noabort(i32 %221)
  store i8 1, ptr %arrayidx52.i, align 1
  %arrayidx53.i = getelementptr i8, ptr %add.ptr33, i32 %inc51.i
  %222 = call ptr @memcpy(ptr %arrayidx53.i, ptr %enc_key.i103, i32 %211)
  %add58.i = add nsw i32 %inc51.i, %211
  %sub61.i = sub i32 %max.addr.0218, %add58.i
  br label %for.inc

if.else39:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  %223 = ptrtoint ptr %auth_tok_key to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %auth_tok_key, align 4
  %sem40 = getelementptr inbounds %struct.key, ptr %224, i32 0, i32 4
  call void @up_write(ptr noundef %sem40) #9
  call void @key_put(ptr noundef %224) #9
  br label %out.thread178

for.inc:                                          ; preds = %if.end37, %if.end26
  %.sink291 = phi i32 [ 24, %if.end26 ], [ %add58.i, %if.end37 ]
  %max.addr.4 = phi i32 [ %sub23.i, %if.end26 ], [ %sub61.i, %if.end37 ]
  %225 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %len, align 4
  %add27 = add i32 %226, %.sink291
  store i32 %add27, ptr %len, align 4
  %227 = ptrtoint ptr %key_sig.0222 to i32
  call void @__asan_load4_noabort(i32 %227)
  %key_sig.0 = load ptr, ptr %key_sig.0222, align 4
  %cmp.not = icmp eq ptr %key_sig.0, %keysig_list
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge
  %max.addr.0.lcssa = phi i32 [ %max, %if.end.for.end_crit_edge ], [ %max.addr.4, %for.inc.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %max.addr.0.lcssa)
  %cmp48.not = icmp eq i32 %max.addr.0.lcssa, 0
  br i1 %cmp48.not, label %for.end.out.thread178_crit_edge, label %out.thread181, !prof !493

for.end.out.thread178_crit_edge:                  ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.thread178

out.thread181:                                    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %228 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %len, align 4
  %arrayidx = getelementptr i8, ptr %dest_base, i32 %229
  %230 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %230)
  store i8 0, ptr %arrayidx, align 1
  %231 = load ptr, ptr @ecryptfs_key_record_cache, align 4
  call void @kmem_cache_free(ptr noundef %231, ptr noundef nonnull %call2) #9
  br label %if.end58

out.thread178:                                    ; preds = %for.end.out.thread178_crit_edge, %if.else39, %if.then42.i, %do.end33.i, %do.end.i113, %if.then25, %write_tag_3_packet.exit.out.thread178_crit_edge
  %.str.102.sink = phi ptr [ @.str.103, %if.then25 ], [ @.str.105, %if.else39 ], [ @.str.104, %do.end.i113 ], [ @.str.104, %if.then42.i ], [ @.str.104, %do.end33.i ], [ @.str.106, %for.end.out.thread178_crit_edge ], [ @.str.102, %write_tag_3_packet.exit.out.thread178_crit_edge ]
  %rc.2.ph = phi i32 [ -22, %if.then25 ], [ -22, %if.else39 ], [ %rc.0.i114.i, %do.end.i113 ], [ -22, %if.then42.i ], [ -22, %do.end33.i ], [ -5, %for.end.out.thread178_crit_edge ], [ %rc.0312.i, %write_tag_3_packet.exit.out.thread178_crit_edge ]
  call void (ptr, ...) @__ecryptfs_printk(ptr noundef nonnull %.str.102.sink, ptr noundef nonnull @.str.101) #9
  %232 = load ptr, ptr @ecryptfs_key_record_cache, align 4
  call void @kmem_cache_free(ptr noundef %232, ptr noundef nonnull %call2) #9
  br label %if.then57

out:                                              ; preds = %for.body
  %call10 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.100, ptr noundef %keysig) #13
  %call11 = call fastcc i32 @process_find_global_auth_tok_for_sig_err(i32 noundef %call4)
  %233 = load ptr, ptr @ecryptfs_key_record_cache, align 4
  call void @kmem_cache_free(ptr noundef %233, ptr noundef nonnull %call2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool56.not = icmp eq i32 %call11, 0
  br i1 %tobool56.not, label %out.if.end58_crit_edge, label %out.if.then57_crit_edge

out.if.then57_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then57

out.if.end58_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end58

if.then57:                                        ; preds = %out.if.then57_crit_edge, %out.thread178, %entry.if.then57_crit_edge
  %rc.3176 = phi i32 [ %call11, %out.if.then57_crit_edge ], [ %rc.2.ph, %out.thread178 ], [ -12, %entry.if.then57_crit_edge ]
  %234 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %234)
  store i32 0, ptr %len, align 4
  br label %if.end58

if.end58:                                         ; preds = %if.then57, %out.if.end58_crit_edge, %out.thread181
  %rc.3177 = phi i32 [ %rc.3176, %if.then57 ], [ 0, %out.if.end58_crit_edge ], [ 0, %out.thread181 ]
  call void @mutex_unlock(ptr noundef %keysig_list_mutex) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %auth_tok_key) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %auth_tok) #9
  ret i32 %rc.3177
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ecryptfs_find_global_auth_tok_for_sig(ptr nocapture noundef writeonly %auth_tok_key, ptr nocapture noundef %auth_tok, ptr noundef %mount_crypt_stat, ptr noundef %sig) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %auth_tok_key to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %auth_tok_key, align 4
  %1 = ptrtoint ptr %auth_tok to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %auth_tok, align 4
  %global_auth_tok_list_mutex = getelementptr inbounds %struct.ecryptfs_mount_crypt_stat, ptr %mount_crypt_stat, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %global_auth_tok_list_mutex, i32 noundef 0) #9
  %global_auth_tok_list = getelementptr inbounds %struct.ecryptfs_mount_crypt_stat, ptr %mount_crypt_stat, i32 0, i32 1
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %.pn.in = phi ptr [ %global_auth_tok_list, %entry ], [ %.pn, %for.body.for.cond_crit_edge ]
  %2 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, %global_auth_tok_list
  br i1 %cmp.not, label %for.cond.out_crit_edge, label %for.body

for.cond.out_crit_edge:                           ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

for.body:                                         ; preds = %for.cond
  %sig2 = getelementptr i8, ptr %.pn, i32 12
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(16) %sig2, ptr noundef dereferenceable(16) %sig, i32 16) #16
  %tobool.not = icmp eq i32 %bcmp, 0
  br i1 %tobool.not, label %if.end, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond

if.end:                                           ; preds = %for.body
  %walker.0.le = getelementptr i8, ptr %.pn, i32 -4
  %3 = ptrtoint ptr %walker.0.le to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %walker.0.le, align 4
  %and = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end5:                                          ; preds = %if.end
  %global_auth_tok_key = getelementptr i8, ptr %.pn, i32 8
  %5 = ptrtoint ptr %global_auth_tok_key to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %global_auth_tok_key, align 4
  %call6 = tail call i32 @key_validate(ptr noundef %6) #9
  %7 = zext i32 %call6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.285)
  switch i32 %call6, label %if.end5.do.end_crit_edge [
    i32 0, label %if.end12
    i32 -127, label %if.end5.out_crit_edge
  ]

if.end5.out_crit_edge:                            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end5.do.end_crit_edge:                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.end12:                                         ; preds = %if.end5
  %8 = ptrtoint ptr %global_auth_tok_key to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %global_auth_tok_key, align 4
  %sem = getelementptr inbounds %struct.key, ptr %9, i32 0, i32 4
  tail call void @down_write(ptr noundef %sem) #9
  %10 = ptrtoint ptr %global_auth_tok_key to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %global_auth_tok_key, align 4
  %call15 = tail call fastcc i32 @ecryptfs_verify_auth_tok_from_key(ptr noundef %11, ptr noundef %auth_tok)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  %12 = ptrtoint ptr %global_auth_tok_key to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %global_auth_tok_key, align 4
  br i1 %tobool16.not, label %if.end18, label %out_invalid_auth_tok_unlock

if.end18:                                         ; preds = %if.end12
  %14 = ptrtoint ptr %auth_tok_key to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %auth_tok_key, align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.end18.out_crit_edge, label %cond.true.i

if.end18.out_crit_edge:                           ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

cond.true.i:                                      ; preds = %if.end18
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %13, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr nonnull %13, i32 1, i32 3, i32 1) #9
  %15 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %13, ptr nonnull %13, i32 1, ptr nonnull elementtype(i32) %13) #9, !srcloc !496
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %cond.true.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !493

cond.true.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %cond.true.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %16 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %16)
  %.not.i.i.i.i.i = icmp sgt i32 %16, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.out_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !492

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.out_crit_edge:                  ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %cond.true.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %cond.true.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %13, i32 noundef %.sink.i.i.i.i.i) #9
  br label %out

out_invalid_auth_tok_unlock:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  %sem27 = getelementptr inbounds %struct.key, ptr %13, i32 0, i32 4
  tail call void @up_write(ptr noundef %sem27) #9
  br label %do.end

do.end:                                           ; preds = %out_invalid_auth_tok_unlock, %if.end5.do.end_crit_edge
  %rc.0 = phi i32 [ %call15, %out_invalid_auth_tok_unlock ], [ %call6, %if.end5.do.end_crit_edge ]
  %call29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.221, ptr noundef %sig) #13
  %17 = ptrtoint ptr %walker.0.le to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %walker.0.le, align 4
  %or = or i32 %18, 1
  store i32 %or, ptr %walker.0.le, align 4
  %19 = ptrtoint ptr %global_auth_tok_key to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %global_auth_tok_key, align 4
  tail call void @key_put(ptr noundef %20) #9
  %21 = ptrtoint ptr %global_auth_tok_key to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %global_auth_tok_key, align 4
  br label %out

out:                                              ; preds = %do.end, %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.out_crit_edge, %if.end18.out_crit_edge, %if.end5.out_crit_edge, %if.end.out_crit_edge, %for.cond.out_crit_edge
  %rc.1 = phi i32 [ %rc.0, %do.end ], [ -22, %if.end.out_crit_edge ], [ %call6, %if.end5.out_crit_edge ], [ 0, %if.end18.out_crit_edge ], [ 0, %if.else.i.i.i.i.i.out_crit_edge ], [ 0, %if.end15.sink.split.i.i.i.i.i ], [ -2, %for.cond.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %global_auth_tok_list_mutex) #9
  ret i32 %rc.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @process_find_global_auth_tok_for_sig_err(i32 noundef %err_code) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %err_code to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.286)
  switch i32 %err_code, label %sw.default.i [
    i32 -2, label %sw.bb
    i32 -22, label %sw.bb1
    i32 -126, label %sw.bb.i
    i32 -127, label %sw.bb1.i
    i32 -128, label %sw.bb2.i
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__ecryptfs_printk(ptr noundef nonnull @.str.223, ptr noundef nonnull @__func__.process_find_global_auth_tok_for_sig_err) #9
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__ecryptfs_printk(ptr noundef nonnull @.str.224, ptr noundef nonnull @__func__.process_find_global_auth_tok_for_sig_err) #9
  br label %sw.epilog

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__ecryptfs_printk(ptr noundef nonnull @.str.107, ptr noundef nonnull @__func__.process_request_key_err) #9
  br label %sw.epilog

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__ecryptfs_printk(ptr noundef nonnull @.str.108, ptr noundef nonnull @__func__.process_request_key_err) #9
  br label %sw.epilog

sw.bb2.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__ecryptfs_printk(ptr noundef nonnull @.str.109, ptr noundef nonnull @__func__.process_request_key_err) #9
  br label %sw.epilog

sw.default.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__ecryptfs_printk(ptr noundef nonnull @.str.110, ptr noundef nonnull @__func__.process_request_key_err, i32 noundef %err_code) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default.i, %sw.bb2.i, %sw.bb1.i, %sw.bb.i, %sw.bb1, %sw.bb
  %rc.0 = phi i32 [ -22, %sw.bb1 ], [ -2, %sw.bb ], [ -22, %sw.default.i ], [ -22, %sw.bb2.i ], [ -62, %sw.bb1.i ], [ -2, %sw.bb.i ]
  ret i32 %rc.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ecryptfs_add_keysig(ptr noundef %crypt_stat, ptr nocapture noundef readonly %sig) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @ecryptfs_key_sig_cache, align 4
  %call = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %0, i32 noundef 3264) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %keysig = getelementptr inbounds %struct.ecryptfs_key_sig, ptr %call, i32 0, i32 1
  %1 = call ptr @memcpy(ptr %keysig, ptr %sig, i32 16)
  %arrayidx = getelementptr %struct.ecryptfs_key_sig, ptr %call, i32 0, i32 1, i32 16
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %arrayidx, align 8
  %keysig_list = getelementptr inbounds %struct.ecryptfs_crypt_stat, ptr %crypt_stat, i32 0, i32 14
  %3 = ptrtoint ptr %keysig_list to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %keysig_list, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call, ptr noundef %keysig_list, ptr noundef %4) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call, ptr %prev1.i.i, align 4
  %6 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %4, ptr %call, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call, i32 0, i32 1
  %7 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %keysig_list, ptr %prev3.i.i, align 4
  %8 = ptrtoint ptr %keysig_list to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %call, ptr %keysig_list, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.end.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ecryptfs_add_global_auth_tok(ptr noundef %mount_crypt_stat, ptr nocapture noundef readonly %sig, i32 noundef %global_auth_tok_flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @ecryptfs_global_auth_tok_cache, align 4
  %call.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %0, i32 noundef 3520) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %sig1 = getelementptr inbounds %struct.ecryptfs_global_auth_tok, ptr %call.i, i32 0, i32 3
  %1 = call ptr @memcpy(ptr %sig1, ptr %sig, i32 16)
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %global_auth_tok_flags, ptr %call.i, align 8
  %arrayidx = getelementptr %struct.ecryptfs_global_auth_tok, ptr %call.i, i32 0, i32 3, i32 16
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %arrayidx, align 8
  %global_auth_tok_list_mutex = getelementptr inbounds %struct.ecryptfs_mount_crypt_stat, ptr %mount_crypt_stat, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %global_auth_tok_list_mutex, i32 noundef 0) #9
  %mount_crypt_stat_list = getelementptr inbounds %struct.ecryptfs_global_auth_tok, ptr %call.i, i32 0, i32 1
  %global_auth_tok_list = getelementptr inbounds %struct.ecryptfs_mount_crypt_stat, ptr %mount_crypt_stat, i32 0, i32 1
  %4 = ptrtoint ptr %global_auth_tok_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %global_auth_tok_list, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %mount_crypt_stat_list, ptr noundef %global_auth_tok_list, ptr noundef %5) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_add.exit_crit_edge

if.end.list_add.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %mount_crypt_stat_list, ptr %prev1.i.i, align 4
  %7 = ptrtoint ptr %mount_crypt_stat_list to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %5, ptr %mount_crypt_stat_list, align 4
  %prev3.i.i = getelementptr inbounds %struct.ecryptfs_global_auth_tok, ptr %call.i, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %global_auth_tok_list, ptr %prev3.i.i, align 8
  %9 = ptrtoint ptr %global_auth_tok_list to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %mount_crypt_stat_list, ptr %global_auth_tok_list, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.end.list_add.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %global_auth_tok_list_mutex) #9
  br label %cleanup

cleanup:                                          ; preds = %list_add.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %list_add.exit ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_destroy_tfm(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bin2hex(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @request_key_tag(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ecryptfs_send_message(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ecryptfs_wait_for_response(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ecryptfs_dump_hex(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @key_validate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 233)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 233)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly nofree nounwind readonly willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { nobuiltin nounwind }
attributes #16 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !11, !12, !13, !14, !16, !17, !18, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !42, !43, !44, !46, !47, !48, !50, !51, !53, !54, !55, !57, !58, !59, !61, !62, !63, !65, !66, !67, !69, !70, !71, !72, !74, !75, !76, !78, !79, !80, !82, !83, !84, !86, !87, !88, !90, !91, !93, !94, !96, !97, !99, !100, !101, !103, !104, !106, !107, !109, !110, !112, !113, !114, !116, !117, !118, !120, !121, !122, !124, !125, !126, !127, !129, !130, !132, !134, !136, !138, !140, !142, !143, !144, !146, !148, !149, !150, !152, !154, !156, !158, !160, !161, !162, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !184, !186, !188, !190, !192, !193, !194, !195, !197, !198, !199, !201, !202, !203, !205, !206, !208, !210, !211, !212, !213, !215, !216, !217, !219, !220, !221, !223, !224, !225, !227, !228, !229, !231, !232, !233, !235, !236, !237, !239, !240, !241, !243, !244, !245, !247, !249, !250, !251, !252, !254, !255, !256, !258, !259, !261, !262, !264, !265, !267, !268, !269, !271, !272, !273, !275, !276, !278, !279, !280, !281, !283, !284, !285, !287, !288, !290, !291, !293, !294, !296, !297, !298, !300, !301, !303, !304, !305, !307, !308, !309, !310, !312, !313, !314, !315, !317, !319, !321, !323, !324, !325, !327, !329, !331, !332, !334, !336, !337, !339, !341, !343, !345, !347, !349, !350, !352, !353, !355, !356, !357, !359, !360, !361, !363, !364, !366, !367, !368, !370, !371, !372, !374, !376, !377, !378, !379, !381, !382, !384, !386, !387, !388, !390, !391, !392, !394, !396, !398, !400, !402, !404, !406, !408, !410, !412, !413, !414, !416, !418, !420, !421, !422, !424, !425, !426, !428, !430, !431, !432, !433, !435, !436, !437, !439, !441, !442, !443, !444, !446, !448, !449, !451, !453, !454, !456, !458, !460, !462, !464, !465, !466, !467, !469, !470, !471, !473, !474, !475, !477, !478, !479, !481, !482}
!llvm.module.flags = !{!483, !484, !485, !486, !487, !488, !489, !490}
!llvm.ident = !{!491}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/ecryptfs/keystore.c", i32 99, i32 3}
!2 = !{ptr @__func__.ecryptfs_parse_packet_length, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../fs/ecryptfs/keystore.c", i32 104, i32 3}
!5 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../fs/ecryptfs/keystore.c", i32 137, i32 3}
!7 = !{ptr @__func__.ecryptfs_write_packet_length, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/ecryptfs/keystore.c", i32 638, i32 3}
!10 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @ecryptfs_write_tag_70_packet._entry, !9, !"_entry", i1 false, i1 false}
!13 = !{ptr @ecryptfs_write_tag_70_packet._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/ecryptfs/keystore.c", i32 647, i32 3}
!16 = !{ptr @ecryptfs_write_tag_70_packet._entry.6, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @ecryptfs_write_tag_70_packet._entry_ptr.8, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../fs/ecryptfs/keystore.c", i32 680, i32 3}
!20 = !{ptr @ecryptfs_write_tag_70_packet._entry.9, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @ecryptfs_write_tag_70_packet._entry_ptr.11, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.13, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../fs/ecryptfs/keystore.c", i32 689, i32 3}
!24 = !{ptr @ecryptfs_write_tag_70_packet._entry.12, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @ecryptfs_write_tag_70_packet._entry_ptr.14, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.16, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../fs/ecryptfs/keystore.c", i32 712, i32 3}
!28 = !{ptr @ecryptfs_write_tag_70_packet._entry.15, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @ecryptfs_write_tag_70_packet._entry_ptr.17, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.19, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../fs/ecryptfs/keystore.c", i32 726, i32 3}
!32 = !{ptr @ecryptfs_write_tag_70_packet._entry.18, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @ecryptfs_write_tag_70_packet._entry_ptr.20, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.22, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../fs/ecryptfs/keystore.c", i32 738, i32 3}
!36 = !{ptr @ecryptfs_write_tag_70_packet._entry.21, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @ecryptfs_write_tag_70_packet._entry_ptr.23, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.24, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../fs/ecryptfs/keystore.c", i32 742, i32 35}
!40 = !{ptr @.str.26, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../fs/ecryptfs/keystore.c", i32 745, i32 4}
!42 = !{ptr @ecryptfs_write_tag_70_packet._entry.25, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @ecryptfs_write_tag_70_packet._entry_ptr.27, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.29, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../fs/ecryptfs/keystore.c", i32 765, i32 3}
!46 = !{ptr @ecryptfs_write_tag_70_packet._entry.28, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @ecryptfs_write_tag_70_packet._entry_ptr.30, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @ecryptfs_write_tag_70_packet._entry.31, !49, !"_entry", i1 false, i1 false}
!49 = !{!"../fs/ecryptfs/keystore.c", i32 779, i32 5}
!50 = !{ptr @ecryptfs_write_tag_70_packet._entry_ptr.32, !49, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.34, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../fs/ecryptfs/keystore.c", i32 795, i32 3}
!53 = !{ptr @ecryptfs_write_tag_70_packet._entry.33, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @ecryptfs_write_tag_70_packet._entry_ptr.35, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.37, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../fs/ecryptfs/keystore.c", i32 804, i32 3}
!57 = !{ptr @ecryptfs_write_tag_70_packet._entry.36, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @ecryptfs_write_tag_70_packet._entry_ptr.38, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.40, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../fs/ecryptfs/keystore.c", i32 819, i32 3}
!61 = !{ptr @ecryptfs_write_tag_70_packet._entry.39, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @ecryptfs_write_tag_70_packet._entry_ptr.41, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.43, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../fs/ecryptfs/keystore.c", i32 832, i32 3}
!65 = !{ptr @ecryptfs_write_tag_70_packet._entry.42, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @ecryptfs_write_tag_70_packet._entry_ptr.44, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.45, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../fs/ecryptfs/keystore.c", i32 909, i32 3}
!69 = !{ptr @.str.46, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @ecryptfs_parse_tag_70_packet._entry, !68, !"_entry", i1 false, i1 false}
!71 = !{ptr @ecryptfs_parse_tag_70_packet._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.48, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../fs/ecryptfs/keystore.c", i32 924, i32 3}
!74 = !{ptr @ecryptfs_parse_tag_70_packet._entry.47, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @ecryptfs_parse_tag_70_packet._entry_ptr.49, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.51, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../fs/ecryptfs/keystore.c", i32 934, i32 3}
!78 = !{ptr @ecryptfs_parse_tag_70_packet._entry.50, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @ecryptfs_parse_tag_70_packet._entry_ptr.52, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.54, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../fs/ecryptfs/keystore.c", i32 942, i32 3}
!82 = !{ptr @ecryptfs_parse_tag_70_packet._entry.53, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @ecryptfs_parse_tag_70_packet._entry_ptr.55, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.57, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../fs/ecryptfs/keystore.c", i32 957, i32 3}
!86 = !{ptr @ecryptfs_parse_tag_70_packet._entry.56, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @ecryptfs_parse_tag_70_packet._entry_ptr.58, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @ecryptfs_parse_tag_70_packet._entry.59, !89, !"_entry", i1 false, i1 false}
!89 = !{!"../fs/ecryptfs/keystore.c", i32 965, i32 3}
!90 = !{ptr @ecryptfs_parse_tag_70_packet._entry_ptr.60, !89, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @ecryptfs_parse_tag_70_packet._entry.61, !92, !"_entry", i1 false, i1 false}
!92 = !{!"../fs/ecryptfs/keystore.c", i32 974, i32 3}
!93 = !{ptr @ecryptfs_parse_tag_70_packet._entry_ptr.62, !92, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @ecryptfs_parse_tag_70_packet._entry.63, !95, !"_entry", i1 false, i1 false}
!95 = !{!"../fs/ecryptfs/keystore.c", i32 983, i32 3}
!96 = !{ptr @ecryptfs_parse_tag_70_packet._entry_ptr.64, !95, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.66, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../fs/ecryptfs/keystore.c", i32 999, i32 3}
!99 = !{ptr @ecryptfs_parse_tag_70_packet._entry.65, !98, !"_entry", i1 false, i1 false}
!100 = !{ptr @ecryptfs_parse_tag_70_packet._entry_ptr.67, !98, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @ecryptfs_parse_tag_70_packet._entry.68, !102, !"_entry", i1 false, i1 false}
!102 = !{!"../fs/ecryptfs/keystore.c", i32 1008, i32 3}
!103 = !{ptr @ecryptfs_parse_tag_70_packet._entry_ptr.69, !102, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @ecryptfs_parse_tag_70_packet._entry.70, !105, !"_entry", i1 false, i1 false}
!105 = !{!"../fs/ecryptfs/keystore.c", i32 1026, i32 3}
!106 = !{ptr @ecryptfs_parse_tag_70_packet._entry_ptr.71, !105, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @ecryptfs_parse_tag_70_packet._entry.72, !108, !"_entry", i1 false, i1 false}
!108 = !{!"../fs/ecryptfs/keystore.c", i32 1035, i32 3}
!109 = !{ptr @ecryptfs_parse_tag_70_packet._entry_ptr.73, !108, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.75, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../fs/ecryptfs/keystore.c", i32 1048, i32 3}
!112 = !{ptr @ecryptfs_parse_tag_70_packet._entry.74, !111, !"_entry", i1 false, i1 false}
!113 = !{ptr @ecryptfs_parse_tag_70_packet._entry_ptr.76, !111, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.78, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../fs/ecryptfs/keystore.c", i32 1057, i32 3}
!116 = !{ptr @ecryptfs_parse_tag_70_packet._entry.77, !115, !"_entry", i1 false, i1 false}
!117 = !{ptr @ecryptfs_parse_tag_70_packet._entry_ptr.79, !115, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.81, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../fs/ecryptfs/keystore.c", i32 1066, i32 3}
!120 = !{ptr @ecryptfs_parse_tag_70_packet._entry.80, !119, !"_entry", i1 false, i1 false}
!121 = !{ptr @ecryptfs_parse_tag_70_packet._entry_ptr.82, !119, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.83, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../fs/ecryptfs/keystore.c", i32 1619, i32 4}
!124 = !{ptr @.str.84, !123, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @ecryptfs_keyring_auth_tok_for_sig._entry, !123, !"_entry", i1 false, i1 false}
!126 = !{ptr @ecryptfs_keyring_auth_tok_for_sig._entry_ptr, !123, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.85, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../fs/ecryptfs/keystore.c", i32 1787, i32 5}
!129 = !{ptr @__func__.ecryptfs_parse_packet_set, !128, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @.str.86, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../fs/ecryptfs/keystore.c", i32 1800, i32 5}
!132 = !{ptr @.str.87, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../fs/ecryptfs/keystore.c", i32 1811, i32 5}
!134 = !{ptr @.str.88, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../fs/ecryptfs/keystore.c", i32 1831, i32 5}
!136 = !{ptr @.str.89, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../fs/ecryptfs/keystore.c", i32 1840, i32 4}
!138 = !{ptr @.str.90, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../fs/ecryptfs/keystore.c", i32 1845, i32 4}
!140 = !{ptr @.str.91, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../fs/ecryptfs/keystore.c", i32 1852, i32 3}
!142 = !{ptr @ecryptfs_parse_packet_set._entry, !141, !"_entry", i1 false, i1 false}
!143 = !{ptr @ecryptfs_parse_packet_set._entry_ptr, !141, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @.str.92, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../fs/ecryptfs/keystore.c", i32 1869, i32 4}
!146 = !{ptr @.str.94, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../fs/ecryptfs/keystore.c", i32 1876, i32 4}
!148 = !{ptr @ecryptfs_parse_packet_set._entry.93, !147, !"_entry", i1 false, i1 false}
!149 = !{ptr @ecryptfs_parse_packet_set._entry_ptr.95, !147, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @.str.96, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../fs/ecryptfs/keystore.c", i32 1892, i32 3}
!152 = !{ptr @.str.97, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../fs/ecryptfs/keystore.c", i32 1922, i32 3}
!154 = !{ptr @.str.98, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../fs/ecryptfs/keystore.c", i32 1944, i32 3}
!156 = !{ptr @.str.99, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../fs/ecryptfs/keystore.c", i32 1950, i32 3}
!158 = !{ptr @.str.100, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../fs/ecryptfs/keystore.c", i32 2429, i32 4}
!160 = !{ptr @.str.101, !159, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @ecryptfs_generate_key_packet_set._entry, !159, !"_entry", i1 false, i1 false}
!162 = !{ptr @ecryptfs_generate_key_packet_set._entry_ptr, !159, !"_entry_ptr", i1 false, i1 false}
!163 = !{ptr @.str.102, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../fs/ecryptfs/keystore.c", i32 2442, i32 5}
!165 = !{ptr @.str.103, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../fs/ecryptfs/keystore.c", i32 2452, i32 5}
!167 = !{ptr @.str.104, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../fs/ecryptfs/keystore.c", i32 2462, i32 5}
!169 = !{ptr @.str.105, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../fs/ecryptfs/keystore.c", i32 2470, i32 4}
!171 = !{ptr @.str.106, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../fs/ecryptfs/keystore.c", i32 2479, i32 3}
!173 = !{ptr @ecryptfs_auth_tok_list_item_cache, !174, !"ecryptfs_auth_tok_list_item_cache", i1 false, i1 false}
!174 = !{!"../fs/ecryptfs/keystore.c", i32 1204, i32 20}
!175 = !{ptr @ecryptfs_key_record_cache, !176, !"ecryptfs_key_record_cache", i1 false, i1 false}
!176 = !{!"../fs/ecryptfs/keystore.c", i32 2381, i32 20}
!177 = !{ptr @ecryptfs_key_sig_cache, !178, !"ecryptfs_key_sig_cache", i1 false, i1 false}
!178 = !{!"../fs/ecryptfs/keystore.c", i32 2491, i32 20}
!179 = !{ptr @ecryptfs_global_auth_tok_cache, !180, !"ecryptfs_global_auth_tok_cache", i1 false, i1 false}
!180 = !{!"../fs/ecryptfs/keystore.c", i32 2509, i32 20}
!181 = !{ptr @.str.107, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../fs/ecryptfs/keystore.c", i32 35, i32 3}
!183 = !{ptr @__func__.process_request_key_err, !182, !"<string literal>", i1 false, i1 false}
!184 = !{ptr @.str.108, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../fs/ecryptfs/keystore.c", i32 39, i32 3}
!186 = !{ptr @.str.109, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../fs/ecryptfs/keystore.c", i32 43, i32 3}
!188 = !{ptr @.str.110, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../fs/ecryptfs/keystore.c", i32 47, i32 3}
!190 = !{ptr @.str.111, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../fs/ecryptfs/keystore.c", i32 465, i32 3}
!192 = !{ptr @.str.112, !191, !"<string literal>", i1 false, i1 false}
!193 = !{ptr @ecryptfs_verify_auth_tok_from_key._entry, !191, !"_entry", i1 false, i1 false}
!194 = !{ptr @ecryptfs_verify_auth_tok_from_key._entry_ptr, !191, !"_entry_ptr", i1 false, i1 false}
!195 = !{ptr @.str.114, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../fs/ecryptfs/keystore.c", i32 474, i32 3}
!197 = !{ptr @ecryptfs_verify_auth_tok_from_key._entry.113, !196, !"_entry", i1 false, i1 false}
!198 = !{ptr @ecryptfs_verify_auth_tok_from_key._entry_ptr.115, !196, !"_entry_ptr", i1 false, i1 false}
!199 = distinct !{null, !200, !"__warned", i1 false, i1 false}
!200 = !{!"../include/keys/user-type.h", i32 53, i32 36}
!201 = !{ptr @.str.116, !200, !"<string literal>", i1 false, i1 false}
!202 = !{ptr @.str.117, !200, !"<string literal>", i1 false, i1 false}
!203 = !{ptr @.str.118, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../fs/ecryptfs/keystore.c", i32 426, i32 3}
!205 = !{ptr @__func__.ecryptfs_verify_version, !204, !"<string literal>", i1 false, i1 false}
!206 = !{ptr @.str.119, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../fs/ecryptfs/keystore.c", i32 433, i32 3}
!208 = !{ptr @.str.120, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../fs/ecryptfs/keystore.c", i32 1385, i32 3}
!210 = !{ptr @.str.121, !209, !"<string literal>", i1 false, i1 false}
!211 = !{ptr @parse_tag_3_packet._entry, !209, !"_entry", i1 false, i1 false}
!212 = !{ptr @parse_tag_3_packet._entry_ptr, !209, !"_entry_ptr", i1 false, i1 false}
!213 = !{ptr @.str.123, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../fs/ecryptfs/keystore.c", i32 1390, i32 3}
!215 = !{ptr @parse_tag_3_packet._entry.122, !214, !"_entry", i1 false, i1 false}
!216 = !{ptr @parse_tag_3_packet._entry_ptr.124, !214, !"_entry_ptr", i1 false, i1 false}
!217 = !{ptr @.str.126, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../fs/ecryptfs/keystore.c", i32 1400, i32 3}
!219 = !{ptr @parse_tag_3_packet._entry.125, !218, !"_entry", i1 false, i1 false}
!220 = !{ptr @parse_tag_3_packet._entry_ptr.127, !218, !"_entry_ptr", i1 false, i1 false}
!221 = !{ptr @.str.129, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../fs/ecryptfs/keystore.c", i32 1408, i32 3}
!223 = !{ptr @parse_tag_3_packet._entry.128, !222, !"_entry", i1 false, i1 false}
!224 = !{ptr @parse_tag_3_packet._entry_ptr.130, !222, !"_entry_ptr", i1 false, i1 false}
!225 = !{ptr @.str.132, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../fs/ecryptfs/keystore.c", i32 1413, i32 3}
!227 = !{ptr @parse_tag_3_packet._entry.131, !226, !"_entry", i1 false, i1 false}
!228 = !{ptr @parse_tag_3_packet._entry_ptr.133, !226, !"_entry_ptr", i1 false, i1 false}
!229 = !{ptr @.str.135, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../fs/ecryptfs/keystore.c", i32 1419, i32 3}
!231 = !{ptr @parse_tag_3_packet._entry.134, !230, !"_entry", i1 false, i1 false}
!232 = !{ptr @parse_tag_3_packet._entry_ptr.136, !230, !"_entry_ptr", i1 false, i1 false}
!233 = !{ptr @.str.138, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../fs/ecryptfs/keystore.c", i32 1427, i32 3}
!235 = !{ptr @parse_tag_3_packet._entry.137, !234, !"_entry", i1 false, i1 false}
!236 = !{ptr @parse_tag_3_packet._entry_ptr.139, !234, !"_entry_ptr", i1 false, i1 false}
!237 = !{ptr @.str.141, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../fs/ecryptfs/keystore.c", i32 1433, i32 3}
!239 = !{ptr @parse_tag_3_packet._entry.140, !238, !"_entry", i1 false, i1 false}
!240 = !{ptr @parse_tag_3_packet._entry_ptr.142, !238, !"_entry_ptr", i1 false, i1 false}
!241 = !{ptr @.str.144, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../fs/ecryptfs/keystore.c", i32 1456, i32 3}
!243 = !{ptr @parse_tag_3_packet._entry.143, !242, !"_entry", i1 false, i1 false}
!244 = !{ptr @parse_tag_3_packet._entry_ptr.145, !242, !"_entry_ptr", i1 false, i1 false}
!245 = !{ptr @.str.146, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../fs/ecryptfs/keystore.c", i32 1487, i32 3}
!247 = !{ptr @.str.147, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../fs/ecryptfs/keystore.c", i32 1555, i32 3}
!249 = !{ptr @.str.148, !248, !"<string literal>", i1 false, i1 false}
!250 = !{ptr @parse_tag_11_packet._entry, !248, !"_entry", i1 false, i1 false}
!251 = !{ptr @parse_tag_11_packet._entry_ptr, !248, !"_entry_ptr", i1 false, i1 false}
!252 = !{ptr @.str.150, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../fs/ecryptfs/keystore.c", i32 1560, i32 3}
!254 = !{ptr @parse_tag_11_packet._entry.149, !253, !"_entry", i1 false, i1 false}
!255 = !{ptr @parse_tag_11_packet._entry_ptr.151, !253, !"_entry_ptr", i1 false, i1 false}
!256 = !{ptr @parse_tag_11_packet._entry.152, !257, !"_entry", i1 false, i1 false}
!257 = !{!"../fs/ecryptfs/keystore.c", i32 1567, i32 3}
!258 = !{ptr @parse_tag_11_packet._entry_ptr.153, !257, !"_entry_ptr", i1 false, i1 false}
!259 = !{ptr @parse_tag_11_packet._entry.154, !260, !"_entry", i1 false, i1 false}
!260 = !{!"../fs/ecryptfs/keystore.c", i32 1571, i32 3}
!261 = !{ptr @parse_tag_11_packet._entry_ptr.155, !260, !"_entry_ptr", i1 false, i1 false}
!262 = !{ptr @parse_tag_11_packet._entry.156, !263, !"_entry", i1 false, i1 false}
!263 = !{!"../fs/ecryptfs/keystore.c", i32 1578, i32 3}
!264 = !{ptr @parse_tag_11_packet._entry_ptr.157, !263, !"_entry_ptr", i1 false, i1 false}
!265 = !{ptr @.str.159, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../fs/ecryptfs/keystore.c", i32 1583, i32 3}
!267 = !{ptr @parse_tag_11_packet._entry.158, !266, !"_entry", i1 false, i1 false}
!268 = !{ptr @parse_tag_11_packet._entry_ptr.160, !266, !"_entry_ptr", i1 false, i1 false}
!269 = !{ptr @.str.162, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../fs/ecryptfs/keystore.c", i32 1589, i32 3}
!271 = !{ptr @parse_tag_11_packet._entry.161, !270, !"_entry", i1 false, i1 false}
!272 = !{ptr @parse_tag_11_packet._entry_ptr.163, !270, !"_entry_ptr", i1 false, i1 false}
!273 = !{ptr @parse_tag_11_packet._entry.164, !274, !"_entry", i1 false, i1 false}
!274 = !{!"../fs/ecryptfs/keystore.c", i32 1594, i32 3}
!275 = !{ptr @parse_tag_11_packet._entry_ptr.165, !274, !"_entry_ptr", i1 false, i1 false}
!276 = !{ptr @.str.166, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../fs/ecryptfs/keystore.c", i32 1250, i32 3}
!278 = !{ptr @.str.167, !277, !"<string literal>", i1 false, i1 false}
!279 = !{ptr @parse_tag_1_packet._entry, !277, !"_entry", i1 false, i1 false}
!280 = !{ptr @parse_tag_1_packet._entry_ptr, !277, !"_entry_ptr", i1 false, i1 false}
!281 = !{ptr @.str.169, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../fs/ecryptfs/keystore.c", i32 1255, i32 3}
!283 = !{ptr @parse_tag_1_packet._entry.168, !282, !"_entry", i1 false, i1 false}
!284 = !{ptr @parse_tag_1_packet._entry_ptr.170, !282, !"_entry_ptr", i1 false, i1 false}
!285 = !{ptr @parse_tag_1_packet._entry.171, !286, !"_entry", i1 false, i1 false}
!286 = !{!"../fs/ecryptfs/keystore.c", i32 1266, i32 3}
!287 = !{ptr @parse_tag_1_packet._entry_ptr.172, !286, !"_entry_ptr", i1 false, i1 false}
!288 = !{ptr @parse_tag_1_packet._entry.173, !289, !"_entry", i1 false, i1 false}
!289 = !{!"../fs/ecryptfs/keystore.c", i32 1274, i32 3}
!290 = !{ptr @parse_tag_1_packet._entry_ptr.174, !289, !"_entry_ptr", i1 false, i1 false}
!291 = !{ptr @parse_tag_1_packet._entry.175, !292, !"_entry", i1 false, i1 false}
!292 = !{!"../fs/ecryptfs/keystore.c", i32 1279, i32 3}
!293 = !{ptr @parse_tag_1_packet._entry_ptr.176, !292, !"_entry_ptr", i1 false, i1 false}
!294 = !{ptr @.str.178, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../fs/ecryptfs/keystore.c", i32 1285, i32 3}
!296 = !{ptr @parse_tag_1_packet._entry.177, !295, !"_entry", i1 false, i1 false}
!297 = !{ptr @parse_tag_1_packet._entry_ptr.179, !295, !"_entry_ptr", i1 false, i1 false}
!298 = !{ptr @parse_tag_1_packet._entry.180, !299, !"_entry", i1 false, i1 false}
!299 = !{!"../fs/ecryptfs/keystore.c", i32 1290, i32 3}
!300 = !{ptr @parse_tag_1_packet._entry_ptr.181, !299, !"_entry_ptr", i1 false, i1 false}
!301 = !{ptr @.str.183, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../fs/ecryptfs/keystore.c", i32 1305, i32 3}
!303 = !{ptr @parse_tag_1_packet._entry.182, !302, !"_entry", i1 false, i1 false}
!304 = !{ptr @parse_tag_1_packet._entry_ptr.184, !302, !"_entry_ptr", i1 false, i1 false}
!305 = !{ptr @.str.185, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../fs/ecryptfs/keystore.c", i32 1111, i32 3}
!307 = !{ptr @.str.186, !306, !"<string literal>", i1 false, i1 false}
!308 = !{ptr @ecryptfs_get_auth_tok_sig._entry, !306, !"_entry", i1 false, i1 false}
!309 = !{ptr @ecryptfs_get_auth_tok_sig._entry_ptr, !306, !"_entry_ptr", i1 false, i1 false}
!310 = !{ptr @.str.187, !311, !"<string literal>", i1 false, i1 false}
!311 = !{!"../fs/ecryptfs/keystore.c", i32 1139, i32 3}
!312 = !{ptr @.str.188, !311, !"<string literal>", i1 false, i1 false}
!313 = !{ptr @decrypt_pki_encrypted_session_key._entry, !311, !"_entry", i1 false, i1 false}
!314 = !{ptr @decrypt_pki_encrypted_session_key._entry_ptr, !311, !"_entry_ptr", i1 false, i1 false}
!315 = !{ptr @.str.189, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../fs/ecryptfs/keystore.c", i32 1146, i32 3}
!317 = !{ptr @.str.190, !318, !"<string literal>", i1 false, i1 false}
!318 = !{!"../fs/ecryptfs/keystore.c", i32 1151, i32 3}
!319 = !{ptr @.str.191, !320, !"<string literal>", i1 false, i1 false}
!320 = !{!"../fs/ecryptfs/keystore.c", i32 1157, i32 3}
!321 = !{ptr @.str.193, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../fs/ecryptfs/keystore.c", i32 1165, i32 3}
!323 = !{ptr @decrypt_pki_encrypted_session_key._entry.192, !322, !"_entry", i1 false, i1 false}
!324 = !{ptr @decrypt_pki_encrypted_session_key._entry_ptr.194, !322, !"_entry_ptr", i1 false, i1 false}
!325 = !{ptr @.str.195, !326, !"<string literal>", i1 false, i1 false}
!326 = !{!"../fs/ecryptfs/keystore.c", i32 1175, i32 3}
!327 = !{ptr @.str.196, !328, !"<string literal>", i1 false, i1 false}
!328 = !{!"../fs/ecryptfs/keystore.c", i32 1181, i32 3}
!329 = !{ptr @.str.197, !330, !"<string literal>", i1 false, i1 false}
!330 = !{!"../fs/ecryptfs/keystore.c", i32 166, i32 3}
!331 = !{ptr @__func__.write_tag_64_packet, !330, !"<string literal>", i1 false, i1 false}
!332 = !{ptr @.str.198, !333, !"<string literal>", i1 false, i1 false}
!333 = !{!"../fs/ecryptfs/keystore.c", i32 174, i32 3}
!334 = !{ptr @.str.199, !335, !"<string literal>", i1 false, i1 false}
!335 = !{!"../fs/ecryptfs/keystore.c", i32 225, i32 3}
!336 = !{ptr @__func__.parse_tag_65_packet, !335, !"<string literal>", i1 false, i1 false}
!337 = !{ptr @.str.200, !338, !"<string literal>", i1 false, i1 false}
!338 = !{!"../fs/ecryptfs/keystore.c", i32 230, i32 3}
!339 = !{ptr @.str.201, !340, !"<string literal>", i1 false, i1 false}
!340 = !{!"../fs/ecryptfs/keystore.c", i32 243, i32 3}
!341 = !{ptr @.str.202, !342, !"<string literal>", i1 false, i1 false}
!342 = !{!"../fs/ecryptfs/keystore.c", i32 249, i32 3}
!343 = !{ptr @.str.203, !344, !"<string literal>", i1 false, i1 false}
!344 = !{!"../fs/ecryptfs/keystore.c", i32 259, i32 3}
!345 = !{ptr @.str.204, !346, !"<string literal>", i1 false, i1 false}
!346 = !{!"../fs/ecryptfs/keystore.c", i32 274, i32 3}
!347 = !{ptr @.str.205, !348, !"<string literal>", i1 false, i1 false}
!348 = !{!"../fs/ecryptfs/keystore.c", i32 1657, i32 3}
!349 = !{ptr @__func__.decrypt_passphrase_encrypted_session_key, !348, !"<string literal>", i1 false, i1 false}
!350 = !{ptr @decrypt_passphrase_encrypted_session_key._entry, !351, !"_entry", i1 false, i1 false}
!351 = !{!"../fs/ecryptfs/keystore.c", i32 1667, i32 3}
!352 = !{ptr @decrypt_passphrase_encrypted_session_key._entry_ptr, !351, !"_entry_ptr", i1 false, i1 false}
!353 = !{ptr @.str.207, !354, !"<string literal>", i1 false, i1 false}
!354 = !{!"../fs/ecryptfs/keystore.c", i32 1676, i32 3}
!355 = !{ptr @decrypt_passphrase_encrypted_session_key._entry.206, !354, !"_entry", i1 false, i1 false}
!356 = !{ptr @decrypt_passphrase_encrypted_session_key._entry_ptr.208, !354, !"_entry_ptr", i1 false, i1 false}
!357 = !{ptr @.str.210, !358, !"<string literal>", i1 false, i1 false}
!358 = !{!"../fs/ecryptfs/keystore.c", i32 1689, i32 3}
!359 = !{ptr @decrypt_passphrase_encrypted_session_key._entry.209, !358, !"_entry", i1 false, i1 false}
!360 = !{ptr @decrypt_passphrase_encrypted_session_key._entry_ptr.211, !358, !"_entry_ptr", i1 false, i1 false}
!361 = !{ptr @decrypt_passphrase_encrypted_session_key._entry.212, !362, !"_entry", i1 false, i1 false}
!362 = !{!"../fs/ecryptfs/keystore.c", i32 1698, i32 3}
!363 = !{ptr @decrypt_passphrase_encrypted_session_key._entry_ptr.213, !362, !"_entry_ptr", i1 false, i1 false}
!364 = !{ptr @.str.215, !365, !"<string literal>", i1 false, i1 false}
!365 = !{!"../fs/ecryptfs/keystore.c", i32 1712, i32 3}
!366 = !{ptr @decrypt_passphrase_encrypted_session_key._entry.214, !365, !"_entry", i1 false, i1 false}
!367 = !{ptr @decrypt_passphrase_encrypted_session_key._entry_ptr.216, !365, !"_entry_ptr", i1 false, i1 false}
!368 = !{ptr @.str.218, !369, !"<string literal>", i1 false, i1 false}
!369 = !{!"../fs/ecryptfs/keystore.c", i32 1722, i32 3}
!370 = !{ptr @decrypt_passphrase_encrypted_session_key._entry.217, !369, !"_entry", i1 false, i1 false}
!371 = !{ptr @decrypt_passphrase_encrypted_session_key._entry_ptr.219, !369, !"_entry_ptr", i1 false, i1 false}
!372 = !{ptr @.str.220, !373, !"<string literal>", i1 false, i1 false}
!373 = !{!"../fs/ecryptfs/keystore.c", i32 1730, i32 3}
!374 = !{ptr @.str.221, !375, !"<string literal>", i1 false, i1 false}
!375 = !{!"../fs/ecryptfs/keystore.c", i32 528, i32 2}
!376 = !{ptr @.str.222, !375, !"<string literal>", i1 false, i1 false}
!377 = !{ptr @ecryptfs_find_global_auth_tok_for_sig._entry, !375, !"_entry", i1 false, i1 false}
!378 = !{ptr @ecryptfs_find_global_auth_tok_for_sig._entry_ptr, !375, !"_entry_ptr", i1 false, i1 false}
!379 = !{ptr @.str.223, !380, !"<string literal>", i1 false, i1 false}
!380 = !{!"../fs/ecryptfs/keystore.c", i32 60, i32 3}
!381 = !{ptr @__func__.process_find_global_auth_tok_for_sig_err, !380, !"<string literal>", i1 false, i1 false}
!382 = !{ptr @.str.224, !383, !"<string literal>", i1 false, i1 false}
!383 = !{!"../fs/ecryptfs/keystore.c", i32 63, i32 3}
!384 = !{ptr @.str.225, !385, !"<string literal>", i1 false, i1 false}
!385 = !{!"../fs/ecryptfs/keystore.c", i32 2200, i32 3}
!386 = !{ptr @write_tag_3_packet._entry, !385, !"_entry", i1 false, i1 false}
!387 = !{ptr @write_tag_3_packet._entry_ptr, !385, !"_entry_ptr", i1 false, i1 false}
!388 = !{ptr @.str.227, !389, !"<string literal>", i1 false, i1 false}
!389 = !{!"../fs/ecryptfs/keystore.c", i32 2206, i32 3}
!390 = !{ptr @write_tag_3_packet._entry.226, !389, !"_entry", i1 false, i1 false}
!391 = !{ptr @write_tag_3_packet._entry_ptr.228, !389, !"_entry_ptr", i1 false, i1 false}
!392 = !{ptr @.str.229, !393, !"<string literal>", i1 false, i1 false}
!393 = !{!"../fs/ecryptfs/keystore.c", i32 2219, i32 16}
!394 = !{ptr @.str.230, !395, !"<string literal>", i1 false, i1 false}
!395 = !{!"../fs/ecryptfs/keystore.c", i32 2231, i32 3}
!396 = !{ptr @.str.231, !397, !"<string literal>", i1 false, i1 false}
!397 = !{!"../fs/ecryptfs/keystore.c", i32 2242, i32 3}
!398 = !{ptr @.str.232, !399, !"<string literal>", i1 false, i1 false}
!399 = !{!"../fs/ecryptfs/keystore.c", i32 2249, i32 3}
!400 = !{ptr @.str.233, !401, !"<string literal>", i1 false, i1 false}
!401 = !{!"../fs/ecryptfs/keystore.c", i32 2255, i32 3}
!402 = !{ptr @.str.234, !403, !"<string literal>", i1 false, i1 false}
!403 = !{!"../fs/ecryptfs/keystore.c", i32 2261, i32 3}
!404 = !{ptr @.str.235, !405, !"<string literal>", i1 false, i1 false}
!405 = !{!"../fs/ecryptfs/keystore.c", i32 2271, i32 3}
!406 = !{ptr @.str.236, !407, !"<string literal>", i1 false, i1 false}
!407 = !{!"../fs/ecryptfs/keystore.c", i32 2284, i32 3}
!408 = !{ptr @.str.237, !409, !"<string literal>", i1 false, i1 false}
!409 = !{!"../fs/ecryptfs/keystore.c", i32 2303, i32 2}
!410 = !{ptr @.str.239, !411, !"<string literal>", i1 false, i1 false}
!411 = !{!"../fs/ecryptfs/keystore.c", i32 2311, i32 3}
!412 = !{ptr @write_tag_3_packet._entry.238, !411, !"_entry", i1 false, i1 false}
!413 = !{ptr @write_tag_3_packet._entry_ptr.240, !411, !"_entry_ptr", i1 false, i1 false}
!414 = !{ptr @.str.241, !415, !"<string literal>", i1 false, i1 false}
!415 = !{!"../fs/ecryptfs/keystore.c", i32 2314, i32 2}
!416 = !{ptr @.str.242, !417, !"<string literal>", i1 false, i1 false}
!417 = !{!"../fs/ecryptfs/keystore.c", i32 2316, i32 3}
!418 = !{ptr @.str.244, !419, !"<string literal>", i1 false, i1 false}
!419 = !{!"../fs/ecryptfs/keystore.c", i32 2334, i32 3}
!420 = !{ptr @write_tag_3_packet._entry.243, !419, !"_entry", i1 false, i1 false}
!421 = !{ptr @write_tag_3_packet._entry_ptr.245, !419, !"_entry_ptr", i1 false, i1 false}
!422 = !{ptr @.str.247, !423, !"<string literal>", i1 false, i1 false}
!423 = !{!"../fs/ecryptfs/keystore.c", i32 2347, i32 3}
!424 = !{ptr @write_tag_3_packet._entry.246, !423, !"_entry", i1 false, i1 false}
!425 = !{ptr @write_tag_3_packet._entry_ptr.248, !423, !"_entry_ptr", i1 false, i1 false}
!426 = !{ptr @.str.249, !427, !"<string literal>", i1 false, i1 false}
!427 = !{!"../fs/ecryptfs/keystore.c", i32 2358, i32 3}
!428 = !{ptr @.str.250, !429, !"<string literal>", i1 false, i1 false}
!429 = !{!"../fs/ecryptfs/keystore.c", i32 2129, i32 3}
!430 = !{ptr @.str.251, !429, !"<string literal>", i1 false, i1 false}
!431 = !{ptr @write_tag_11_packet._entry, !429, !"_entry", i1 false, i1 false}
!432 = !{ptr @write_tag_11_packet._entry_ptr, !429, !"_entry_ptr", i1 false, i1 false}
!433 = !{ptr @.str.253, !434, !"<string literal>", i1 false, i1 false}
!434 = !{!"../fs/ecryptfs/keystore.c", i32 2140, i32 3}
!435 = !{ptr @write_tag_11_packet._entry.252, !434, !"_entry", i1 false, i1 false}
!436 = !{ptr @write_tag_11_packet._entry_ptr.254, !434, !"_entry_ptr", i1 false, i1 false}
!437 = distinct !{null, !438, !"<string literal>", i1 false, i1 false}
!438 = !{!"../fs/ecryptfs/keystore.c", i32 2147, i32 34}
!439 = !{ptr @.str.256, !440, !"<string literal>", i1 false, i1 false}
!440 = !{!"../fs/ecryptfs/keystore.c", i32 2051, i32 3}
!441 = !{ptr @.str.257, !440, !"<string literal>", i1 false, i1 false}
!442 = !{ptr @write_tag_1_packet._entry, !440, !"_entry", i1 false, i1 false}
!443 = !{ptr @write_tag_1_packet._entry_ptr, !440, !"_entry_ptr", i1 false, i1 false}
!444 = !{ptr @.str.258, !445, !"<string literal>", i1 false, i1 false}
!445 = !{!"../fs/ecryptfs/keystore.c", i32 2056, i32 3}
!446 = !{ptr @write_tag_1_packet._entry.259, !447, !"_entry", i1 false, i1 false}
!447 = !{!"../fs/ecryptfs/keystore.c", i32 2069, i32 3}
!448 = !{ptr @write_tag_1_packet._entry_ptr.260, !447, !"_entry_ptr", i1 false, i1 false}
!449 = !{ptr @.str.261, !450, !"<string literal>", i1 false, i1 false}
!450 = !{!"../fs/ecryptfs/keystore.c", i32 2080, i32 3}
!451 = !{ptr @.str.262, !452, !"<string literal>", i1 false, i1 false}
!452 = !{!"../fs/ecryptfs/keystore.c", i32 1980, i32 3}
!453 = !{ptr @__func__.pki_encrypt_session_key, !452, !"<string literal>", i1 false, i1 false}
!454 = !{ptr @.str.263, !455, !"<string literal>", i1 false, i1 false}
!455 = !{!"../fs/ecryptfs/keystore.c", i32 1991, i32 3}
!456 = !{ptr @.str.264, !457, !"<string literal>", i1 false, i1 false}
!457 = !{!"../fs/ecryptfs/keystore.c", i32 1998, i32 3}
!458 = !{ptr @__func__.write_tag_66_packet, !459, !"<string literal>", i1 false, i1 false}
!459 = !{!"../fs/ecryptfs/keystore.c", i32 309, i32 3}
!460 = !{ptr @.str.265, !461, !"<string literal>", i1 false, i1 false}
!461 = !{!"../fs/ecryptfs/keystore.c", i32 317, i32 3}
!462 = !{ptr @.str.266, !463, !"<string literal>", i1 false, i1 false}
!463 = !{!"../fs/ecryptfs/keystore.c", i32 367, i32 3}
!464 = !{ptr @.str.267, !463, !"<string literal>", i1 false, i1 false}
!465 = !{ptr @parse_tag_67_packet._entry, !463, !"_entry", i1 false, i1 false}
!466 = !{ptr @parse_tag_67_packet._entry_ptr, !463, !"_entry_ptr", i1 false, i1 false}
!467 = !{ptr @.str.269, !468, !"<string literal>", i1 false, i1 false}
!468 = !{!"../fs/ecryptfs/keystore.c", i32 373, i32 3}
!469 = !{ptr @parse_tag_67_packet._entry.268, !468, !"_entry", i1 false, i1 false}
!470 = !{ptr @parse_tag_67_packet._entry_ptr.270, !468, !"_entry_ptr", i1 false, i1 false}
!471 = !{ptr @.str.272, !472, !"<string literal>", i1 false, i1 false}
!472 = !{!"../fs/ecryptfs/keystore.c", i32 379, i32 3}
!473 = !{ptr @parse_tag_67_packet._entry.271, !472, !"_entry", i1 false, i1 false}
!474 = !{ptr @parse_tag_67_packet._entry_ptr.273, !472, !"_entry_ptr", i1 false, i1 false}
!475 = !{ptr @.str.275, !476, !"<string literal>", i1 false, i1 false}
!476 = !{!"../fs/ecryptfs/keystore.c", i32 394, i32 3}
!477 = !{ptr @parse_tag_67_packet._entry.274, !476, !"_entry", i1 false, i1 false}
!478 = !{ptr @parse_tag_67_packet._entry_ptr.276, !476, !"_entry_ptr", i1 false, i1 false}
!479 = !{ptr @.str.278, !480, !"<string literal>", i1 false, i1 false}
!480 = !{!"../fs/ecryptfs/keystore.c", i32 400, i32 3}
!481 = !{ptr @parse_tag_67_packet._entry.277, !480, !"_entry", i1 false, i1 false}
!482 = !{ptr @parse_tag_67_packet._entry_ptr.279, !480, !"_entry_ptr", i1 false, i1 false}
!483 = !{i32 1, !"wchar_size", i32 2}
!484 = !{i32 1, !"min_enum_size", i32 4}
!485 = !{i32 8, !"branch-target-enforcement", i32 0}
!486 = !{i32 8, !"sign-return-address", i32 0}
!487 = !{i32 8, !"sign-return-address-all", i32 0}
!488 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!489 = !{i32 7, !"uwtable", i32 1}
!490 = !{i32 7, !"frame-pointer", i32 2}
!491 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!492 = !{!"branch_weights", i32 2000, i32 1}
!493 = !{!"branch_weights", i32 1, i32 2000}
!494 = !{!"auto-init"}
!495 = !{i64 2155082304, i64 2155082792, i64 2155082341, i64 2155082397, i64 2155082431, i64 2155082455, i64 2155082496, i64 2155082517, i64 2155082545, i64 2155082579}
!496 = !{i64 2148261046, i64 2148261078, i64 2148261107, i64 2148261141, i64 2148261172, i64 2148261195}
