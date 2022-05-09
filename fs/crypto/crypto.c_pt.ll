; ModuleID = '/llk/IR_all_yes/fs/crypto/crypto.c_pt.bc'
source_filename = "../fs/crypto/crypto.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+fscrypt_enqueue_decrypt_work\22, \22a\22\09"
module asm "\09.weak\09__crc_fscrypt_enqueue_decrypt_work\09\09\09\09"
module asm "\09.long\09__crc_fscrypt_enqueue_decrypt_work\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fscrypt_enqueue_decrypt_work:\09\09\09\09\09"
module asm "\09.asciz \09\22fscrypt_enqueue_decrypt_work\22\09\09\09\09\09"
module asm "__kstrtabns_fscrypt_enqueue_decrypt_work:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+fscrypt_free_bounce_page\22, \22a\22\09"
module asm "\09.weak\09__crc_fscrypt_free_bounce_page\09\09\09\09"
module asm "\09.long\09__crc_fscrypt_free_bounce_page\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fscrypt_free_bounce_page:\09\09\09\09\09"
module asm "\09.asciz \09\22fscrypt_free_bounce_page\22\09\09\09\09\09"
module asm "__kstrtabns_fscrypt_free_bounce_page:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+fscrypt_encrypt_pagecache_blocks\22, \22a\22\09"
module asm "\09.weak\09__crc_fscrypt_encrypt_pagecache_blocks\09\09\09\09"
module asm "\09.long\09__crc_fscrypt_encrypt_pagecache_blocks\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fscrypt_encrypt_pagecache_blocks:\09\09\09\09\09"
module asm "\09.asciz \09\22fscrypt_encrypt_pagecache_blocks\22\09\09\09\09\09"
module asm "__kstrtabns_fscrypt_encrypt_pagecache_blocks:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+fscrypt_encrypt_block_inplace\22, \22a\22\09"
module asm "\09.weak\09__crc_fscrypt_encrypt_block_inplace\09\09\09\09"
module asm "\09.long\09__crc_fscrypt_encrypt_block_inplace\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fscrypt_encrypt_block_inplace:\09\09\09\09\09"
module asm "\09.asciz \09\22fscrypt_encrypt_block_inplace\22\09\09\09\09\09"
module asm "__kstrtabns_fscrypt_encrypt_block_inplace:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+fscrypt_decrypt_pagecache_blocks\22, \22a\22\09"
module asm "\09.weak\09__crc_fscrypt_decrypt_pagecache_blocks\09\09\09\09"
module asm "\09.long\09__crc_fscrypt_decrypt_pagecache_blocks\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fscrypt_decrypt_pagecache_blocks:\09\09\09\09\09"
module asm "\09.asciz \09\22fscrypt_decrypt_pagecache_blocks\22\09\09\09\09\09"
module asm "__kstrtabns_fscrypt_decrypt_pagecache_blocks:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+fscrypt_decrypt_block_inplace\22, \22a\22\09"
module asm "\09.weak\09__crc_fscrypt_decrypt_block_inplace\09\09\09\09"
module asm "\09.long\09__crc_fscrypt_decrypt_block_inplace\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fscrypt_decrypt_block_inplace:\09\09\09\09\09"
module asm "\09.asciz \09\22fscrypt_decrypt_block_inplace\22\09\09\09\09\09"
module asm "__kstrtabns_fscrypt_decrypt_block_inplace:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.69 }
%union.anon.69 = type { ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.page = type { i32, %union.anon.2, %union.anon.67, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.67 = type { %struct.atomic_t }
%struct.fscrypt_info = type { %struct.fscrypt_prepared_key, i8, i8, ptr, ptr, ptr, %struct.list_head, ptr, %struct.siphash_key_t, i8, %union.fscrypt_policy, [16 x i8], i32 }
%struct.fscrypt_prepared_key = type { ptr, ptr }
%struct.siphash_key_t = type { [2 x i64] }
%union.fscrypt_policy = type { %struct.fscrypt_policy_v2 }
%struct.fscrypt_policy_v2 = type { i8, i8, i8, i8, [4 x i8], [16 x i8] }
%struct.fscrypt_mode = type { ptr, ptr, i32, i32, i32, i32, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.71, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.72, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.73, ptr, %struct.address_space, %struct.list_head, %union.anon.74, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.71 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.72 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.73 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.74 = type { ptr }
%struct.anon.79 = type { i64, [16 x i8] }
%union.fscrypt_iv = type { [4 x i64] }
%struct.crypto_wait = type { %struct.completion, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.crypto_skcipher = type { i32, [124 x i8], %struct.crypto_tfm }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [112 x i8], [0 x ptr] }
%struct.skcipher_request = type { i32, ptr, ptr, ptr, %struct.crypto_async_request, [88 x i8], [0 x ptr] }
%struct.crypto_async_request = type { %struct.list_head, ptr, ptr, ptr, i32 }
%struct.va_format = type { ptr, ptr }
%struct.__va_list = type { ptr }
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

@__param_str_num_prealloc_crypto_pages = internal constant [35 x i8] c"fscrypto.num_prealloc_crypto_pages\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@num_prealloc_crypto_pages = internal global { i32, [28 x i8] } { i32 32, [28 x i8] zeroinitializer }, align 32
@__param_num_prealloc_crypto_pages = internal constant %struct.kernel_param { ptr @__param_str_num_prealloc_crypto_pages, ptr null, ptr @param_ops_uint, i16 292, i8 -1, i8 0, %union.anon.69 { ptr @num_prealloc_crypto_pages } }, section "__param", align 4
@__UNIQUE_ID_num_prealloc_crypto_pagestype278 = internal constant [49 x i8] c"fscrypto.parmtype=num_prealloc_crypto_pages:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_num_prealloc_crypto_pages279 = internal constant [78 x i8] c"fscrypto.parm=num_prealloc_crypto_pages:Number of crypto pages to preallocate\00", section ".modinfo", align 1
@fscrypt_read_workqueue = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__kstrtab_fscrypt_enqueue_decrypt_work = external dso_local constant [0 x i8], align 1
@__kstrtabns_fscrypt_enqueue_decrypt_work = external dso_local constant [0 x i8], align 1
@__ksymtab_fscrypt_enqueue_decrypt_work = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fscrypt_enqueue_decrypt_work to i32), ptr @__kstrtab_fscrypt_enqueue_decrypt_work, ptr @__kstrtabns_fscrypt_enqueue_decrypt_work }, section "___ksymtab+fscrypt_enqueue_decrypt_work", align 4
@fscrypt_bounce_page_pool = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__kstrtab_fscrypt_free_bounce_page = external dso_local constant [0 x i8], align 1
@__kstrtabns_fscrypt_free_bounce_page = external dso_local constant [0 x i8], align 1
@__ksymtab_fscrypt_free_bounce_page = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fscrypt_free_bounce_page to i32), ptr @__kstrtab_fscrypt_free_bounce_page, ptr @__kstrtabns_fscrypt_free_bounce_page }, section "___ksymtab+fscrypt_free_bounce_page", align 4
@fscrypt_generate_iv.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fs/crypto/crypto.c\00", [45 x i8] zeroinitializer }, align 32
@fscrypt_generate_iv.__already_done.2 = internal unnamed_addr global i1 false, section ".data.once", align 1
@fscrypt_crypt_block.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@fscrypt_crypt_block.__already_done.3 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%scryption failed for block %llu: %d\00", [59 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"De\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"En\00", [29 x i8] zeroinitializer }, align 32
@fscrypt_encrypt_pagecache_blocks.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@fscrypt_encrypt_pagecache_blocks.__already_done.8 = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_fscrypt_encrypt_pagecache_blocks = external dso_local constant [0 x i8], align 1
@__kstrtabns_fscrypt_encrypt_pagecache_blocks = external dso_local constant [0 x i8], align 1
@__ksymtab_fscrypt_encrypt_pagecache_blocks = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fscrypt_encrypt_pagecache_blocks to i32), ptr @__kstrtab_fscrypt_encrypt_pagecache_blocks, ptr @__kstrtabns_fscrypt_encrypt_pagecache_blocks }, section "___ksymtab+fscrypt_encrypt_pagecache_blocks", align 4
@__kstrtab_fscrypt_encrypt_block_inplace = external dso_local constant [0 x i8], align 1
@__kstrtabns_fscrypt_encrypt_block_inplace = external dso_local constant [0 x i8], align 1
@__ksymtab_fscrypt_encrypt_block_inplace = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fscrypt_encrypt_block_inplace to i32), ptr @__kstrtab_fscrypt_encrypt_block_inplace, ptr @__kstrtabns_fscrypt_encrypt_block_inplace }, section "___ksymtab+fscrypt_encrypt_block_inplace", align 4
@fscrypt_decrypt_pagecache_blocks.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@fscrypt_decrypt_pagecache_blocks.__already_done.9 = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_fscrypt_decrypt_pagecache_blocks = external dso_local constant [0 x i8], align 1
@__kstrtabns_fscrypt_decrypt_pagecache_blocks = external dso_local constant [0 x i8], align 1
@__ksymtab_fscrypt_decrypt_pagecache_blocks = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fscrypt_decrypt_pagecache_blocks to i32), ptr @__kstrtab_fscrypt_decrypt_pagecache_blocks, ptr @__kstrtabns_fscrypt_decrypt_pagecache_blocks }, section "___ksymtab+fscrypt_decrypt_pagecache_blocks", align 4
@__kstrtab_fscrypt_decrypt_block_inplace = external dso_local constant [0 x i8], align 1
@__kstrtabns_fscrypt_decrypt_block_inplace = external dso_local constant [0 x i8], align 1
@__ksymtab_fscrypt_decrypt_block_inplace = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fscrypt_decrypt_block_inplace to i32), ptr @__kstrtab_fscrypt_decrypt_block_inplace, ptr @__kstrtabns_fscrypt_decrypt_block_inplace }, section "___ksymtab+fscrypt_decrypt_block_inplace", align 4
@fscrypt_init_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.21, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @fscrypt_init_mutex, i64 52), ptr getelementptr (i8, ptr @fscrypt_init_mutex, i64 52) }, ptr @fscrypt_init_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.22, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@fscrypt_msg.rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.10, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"rs.lock\00", [24 x i8] zeroinitializer }, align 32
@__func__.fscrypt_msg = private unnamed_addr constant [12 x i8] c"fscrypt_msg\00", align 1
@fscrypt_msg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @__func__.fscrypt_msg, ptr @.str, i32 348, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%sfscrypt (%s, inode %lu): %pV\0A\00", [32 x i8] zeroinitializer }, align 32
@fscrypt_msg._entry_ptr = internal global ptr @fscrypt_msg._entry, section ".printk_index", align 4
@fscrypt_msg._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @__func__.fscrypt_msg, ptr @.str, i32 350, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%sfscrypt (%s): %pV\0A\00", [43 x i8] zeroinitializer }, align 32
@fscrypt_msg._entry_ptr.14 = internal global ptr @fscrypt_msg._entry.12, section ".printk_index", align 4
@fscrypt_msg._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @__func__.fscrypt_msg, ptr @.str, i32 352, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%sfscrypt: %pV\0A\00", [16 x i8] zeroinitializer }, align 32
@fscrypt_msg._entry_ptr.17 = internal global ptr @fscrypt_msg._entry.15, section ".printk_index", align 4
@__initcall__kmod_fscrypto__280_396_fscrypt_init7 = internal global ptr @fscrypt_init, section ".initcall7.init", align 4
@fscrypt_info_cachep = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.18 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(page))\00", [61 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.19 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(((typeof(page))_compound_head(page))))\00", [61 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"fscrypt_init_mutex.wait_lock\00", [35 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fscrypt_init_mutex\00", [45 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fscrypt_read_queue\00", [45 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"fscrypt_info\00", [19 x i8] zeroinitializer }, align 32
@__num_online_cpus = external dso_local global %struct.atomic_t, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 2]
@__sancov_gen_cov_switch_values.25 = internal global [4 x i64] [i64 2, i64 32, i64 4294967181, i64 4294967280]
@__sancov_gen_cov_switch_values.26 = internal global [4 x i64] [i64 2, i64 32, i64 4294967181, i64 4294967280]
@___asan_gen_.27 = private unnamed_addr constant [26 x i8] c"num_prealloc_crypto_pages\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 31, i32 21 }
@___asan_gen_.30 = private unnamed_addr constant [23 x i8] c"fscrypt_read_workqueue\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 39, i32 33 }
@___asan_gen_.33 = private unnamed_addr constant [25 x i8] c"fscrypt_bounce_page_pool\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 37, i32 19 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 80, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 132, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant [19 x i8] c"fscrypt_init_mutex\00", align 1
@___asan_gen_.54 = private unnamed_addr constant [3 x i8] c"rs\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 335, i32 9 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 347, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 350, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 352, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant [20 x i8] c"fscrypt_info_cachep\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 42, i32 20 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 452, i32 1 }
@___asan_gen_.84 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.88 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 87, i32 2 }
@___asan_gen_.91 = private unnamed_addr constant [30 x i8] c"../include/linux/page-flags.h\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 414, i32 1 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 40, i32 8 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 373, i32 43 }
@___asan_gen_.102 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.103 = private constant [22 x i8] c"../fs/crypto/crypto.c\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 379, i32 24 }
@llvm.compiler.used = appending global [39 x ptr] [ptr @__UNIQUE_ID_num_prealloc_crypto_pages279, ptr @__UNIQUE_ID_num_prealloc_crypto_pagestype278, ptr @__initcall__kmod_fscrypto__280_396_fscrypt_init7, ptr @__ksymtab_fscrypt_decrypt_block_inplace, ptr @__ksymtab_fscrypt_decrypt_pagecache_blocks, ptr @__ksymtab_fscrypt_encrypt_block_inplace, ptr @__ksymtab_fscrypt_encrypt_pagecache_blocks, ptr @__ksymtab_fscrypt_enqueue_decrypt_work, ptr @__ksymtab_fscrypt_free_bounce_page, ptr @__param_num_prealloc_crypto_pages, ptr @fscrypt_msg._entry, ptr @fscrypt_msg._entry.12, ptr @fscrypt_msg._entry.15, ptr @fscrypt_msg._entry_ptr, ptr @fscrypt_msg._entry_ptr.14, ptr @fscrypt_msg._entry_ptr.17, ptr @num_prealloc_crypto_pages, ptr @fscrypt_read_workqueue, ptr @fscrypt_bounce_page_pool, ptr @.str, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @fscrypt_init_mutex, ptr @fscrypt_msg.rs, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.16, ptr @fscrypt_info_cachep, ptr @.str.18, ptr @init_completion.__key, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24], section "llvm.metadata"
@0 = internal global [26 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @num_prealloc_crypto_pages to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fscrypt_read_workqueue to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fscrypt_bounce_page_pool to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fscrypt_init_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fscrypt_msg.rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fscrypt_msg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fscrypt_msg._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fscrypt_msg._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fscrypt_info_cachep to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fscrypt_enqueue_decrypt_work(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @fscrypt_read_workqueue, align 4
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %0, ptr noundef %work) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local noalias ptr @fscrypt_alloc_bounce_page(i32 noundef %gfp_flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @fscrypt_bounce_page_pool, align 4
  %call = tail call noalias ptr @mempool_alloc(ptr noundef %0, i32 noundef %gfp_flags) #8
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @mempool_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fscrypt_free_bounce_page(ptr noundef %bounce_page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %bounce_page, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  %private1.i = getelementptr inbounds %struct.page, ptr %bounce_page, i32 0, i32 1, i32 0, i32 3
  %0 = ptrtoint ptr %private1.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %private1.i, align 4
  %1 = ptrtoint ptr %bounce_page to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %bounce_page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %2)
  %cmp.i.not.i = icmp eq i32 %2, -1
  br i1 %cmp.i.not.i, label %if.then.i, label %ClearPagePrivate.exit, !prof !93

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef nonnull %bounce_page, ptr noundef nonnull @.str.18) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #8, !srcloc !94
  unreachable

ClearPagePrivate.exit:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_clear_bit(i32 noundef 13, ptr noundef nonnull %bounce_page) #8
  %3 = load ptr, ptr @fscrypt_bounce_page_pool, align 4
  tail call void @mempool_free(ptr noundef nonnull %bounce_page, ptr noundef %3) #8
  br label %return

return:                                           ; preds = %ClearPagePrivate.exit, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mempool_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fscrypt_generate_iv(ptr nocapture noundef writeonly %iv, i64 noundef %lblk_num, ptr nocapture noundef readonly %ci) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ci_policy = getelementptr inbounds %struct.fscrypt_info, ptr %ci, i32 0, i32 10
  %0 = ptrtoint ptr %ci_policy to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ci_policy, align 1
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i8 %1, label %do.body.i [
    i8 0, label %entry.fscrypt_policy_flags.exit_crit_edge
    i8 2, label %entry.fscrypt_policy_flags.exit_crit_edge193
  ]

entry.fscrypt_policy_flags.exit_crit_edge193:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %fscrypt_policy_flags.exit

entry.fscrypt_policy_flags.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %fscrypt_policy_flags.exit

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/crypto/fscrypt_private.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 165, 0\0A.popsection", ""() #8, !srcloc !95
  unreachable

fscrypt_policy_flags.exit:                        ; preds = %entry.fscrypt_policy_flags.exit_crit_edge, %entry.fscrypt_policy_flags.exit_crit_edge193
  %retval.0.in.i = getelementptr inbounds %struct.fscrypt_info, ptr %ci, i32 0, i32 10, i32 0, i32 3
  %3 = ptrtoint ptr %retval.0.in.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %retval.0.i = load i8, ptr %retval.0.in.i, align 1
  %ci_mode = getelementptr inbounds %struct.fscrypt_info, ptr %ci, i32 0, i32 3
  %4 = ptrtoint ptr %ci_mode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ci_mode, align 4
  %ivsize = getelementptr inbounds %struct.fscrypt_mode, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %ivsize to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ivsize, align 4
  %8 = call ptr @memset(ptr %iv, i32 0, i32 %7)
  %conv = zext i8 %retval.0.i to i32
  %and = and i32 %conv, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %fscrypt_policy_flags.exit
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967295, i64 %lblk_num)
  %cmp = icmp ugt i64 %lblk_num, 4294967295
  br i1 %cmp, label %land.rhs, label %if.then.if.end31_crit_edge

if.then.if.end31_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31

land.rhs:                                         ; preds = %if.then
  %.b192 = load i1, ptr @fscrypt_generate_iv.__already_done, align 1
  br i1 %.b192, label %land.rhs.if.end31_crit_edge, label %if.then10, !prof !96

land.rhs.if.end31_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31

if.then10:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @fscrypt_generate_iv.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 80, i32 noundef 9, ptr noundef null) #8
  br label %if.end31

if.end31:                                         ; preds = %if.then10, %land.rhs.if.end31_crit_edge, %if.then.if.end31_crit_edge
  %ci_inode = getelementptr inbounds %struct.fscrypt_info, ptr %ci, i32 0, i32 4
  %9 = ptrtoint ptr %ci_inode to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ci_inode, align 8
  %i_ino96 = getelementptr inbounds %struct.inode, ptr %10, i32 0, i32 11
  %11 = ptrtoint ptr %i_ino96 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %i_ino96, align 8
  %conv97 = zext i32 %12 to i64
  %shl = shl nuw i64 %conv97, 32
  %or = or i64 %shl, %lblk_num
  br label %if.end169

if.else:                                          ; preds = %fscrypt_policy_flags.exit
  %and99 = and i32 %conv, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and99)
  %tobool100.not = icmp eq i32 %and99, 0
  br i1 %tobool100.not, label %if.else161, label %if.then101

if.then101:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967295, i64 %lblk_num)
  %cmp103 = icmp ugt i64 %lblk_num, 4294967295
  br i1 %cmp103, label %land.rhs112, label %if.then101.if.end150_crit_edge

if.then101.if.end150_crit_edge:                   ; preds = %if.then101
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end150

land.rhs112:                                      ; preds = %if.then101
  %.b190191 = load i1, ptr @fscrypt_generate_iv.__already_done.2, align 1
  br i1 %.b190191, label %land.rhs112.if.end150_crit_edge, label %if.then123, !prof !96

land.rhs112.if.end150_crit_edge:                  ; preds = %land.rhs112
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end150

if.then123:                                       ; preds = %land.rhs112
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @fscrypt_generate_iv.__already_done.2, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 84, i32 noundef 9, ptr noundef null) #8
  br label %if.end150

if.end150:                                        ; preds = %if.then123, %land.rhs112.if.end150_crit_edge, %if.then101.if.end150_crit_edge
  %ci_hashed_ino = getelementptr inbounds %struct.fscrypt_info, ptr %ci, i32 0, i32 12
  %13 = ptrtoint ptr %ci_hashed_ino to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ci_hashed_ino, align 4
  %15 = trunc i64 %lblk_num to i32
  %conv159 = add i32 %14, %15
  %conv160 = zext i32 %conv159 to i64
  br label %if.end169

if.else161:                                       ; preds = %if.else
  %and163 = and i32 %conv, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and163)
  %tobool164.not = icmp eq i32 %and163, 0
  br i1 %tobool164.not, label %if.else161.if.end169_crit_edge, label %if.then165

if.else161.if.end169_crit_edge:                   ; preds = %if.else161
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end169

if.then165:                                       ; preds = %if.else161
  call void @__sanitizer_cov_trace_pc() #10
  %nonce = getelementptr inbounds %struct.anon.79, ptr %iv, i32 0, i32 1
  %ci_nonce = getelementptr inbounds %struct.fscrypt_info, ptr %ci, i32 0, i32 11
  %16 = call ptr @memcpy(ptr %nonce, ptr %ci_nonce, i32 16)
  br label %if.end169

if.end169:                                        ; preds = %if.then165, %if.else161.if.end169_crit_edge, %if.end150, %if.end31
  %lblk_num.addr.0 = phi i64 [ %or, %if.end31 ], [ %conv160, %if.end150 ], [ %lblk_num, %if.then165 ], [ %lblk_num, %if.else161.if.end169_crit_edge ]
  %17 = tail call i64 @llvm.bswap.i64(i64 %lblk_num.addr.0)
  %18 = ptrtoint ptr %iv to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %17, ptr %iv, align 8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fscrypt_crypt_block(ptr noundef %inode, i32 noundef %rw, i64 noundef %lblk_num, ptr noundef %src_page, ptr noundef %dest_page, i32 noundef %len, i32 noundef %offs, i32 noundef %gfp_flags) local_unnamed_addr #0 align 64 {
entry:
  %iv = alloca %union.fscrypt_iv, align 8
  %wait = alloca %struct.crypto_wait, align 4
  %dst = alloca %struct.scatterlist, align 4
  %src = alloca %struct.scatterlist, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %iv) #8
  %0 = call ptr @memset(ptr %iv, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %wait) #8
  %1 = getelementptr inbounds i8, ptr %wait, i32 4
  %2 = call ptr @memset(ptr %1, i32 255, i32 56)
  %3 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %wait, align 4
  %wait.i = getelementptr inbounds %struct.completion, ptr %wait, i32 0, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.19, ptr noundef nonnull @init_completion.__key) #8
  %err = getelementptr inbounds %struct.crypto_wait, ptr %wait, i32 0, i32 1
  %4 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %err, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %dst) #8
  %5 = getelementptr inbounds %struct.scatterlist, ptr %dst, i32 0, i32 1
  %6 = getelementptr inbounds %struct.scatterlist, ptr %dst, i32 0, i32 2
  %7 = call ptr @memset(ptr %dst, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %src) #8
  %8 = getelementptr inbounds %struct.scatterlist, ptr %src, i32 0, i32 1
  %9 = getelementptr inbounds %struct.scatterlist, ptr %src, i32 0, i32 2
  %i_crypt_info = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 52
  %10 = call ptr @memset(ptr %src, i32 255, i32 20)
  %11 = ptrtoint ptr %i_crypt_info to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %i_crypt_info, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp = icmp eq i32 %len, 0
  br i1 %cmp, label %land.rhs, label %if.end41

land.rhs:                                         ; preds = %entry
  %.b142 = load i1, ptr @fscrypt_crypt_block.__already_done, align 1
  br i1 %.b142, label %land.rhs.cleanup_crit_edge, label %if.then, !prof !96

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @fscrypt_crypt_block.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 106, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end41:                                         ; preds = %entry
  %rem = and i32 %len, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp43.not = icmp eq i32 %rem, 0
  br i1 %cmp43.not, label %if.end98, label %land.rhs50

land.rhs50:                                       ; preds = %if.end41
  %.b140141 = load i1, ptr @fscrypt_crypt_block.__already_done.3, align 1
  br i1 %.b140141, label %land.rhs50.cleanup_crit_edge, label %if.then61, !prof !96

land.rhs50.cleanup_crit_edge:                     ; preds = %land.rhs50
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then61:                                        ; preds = %land.rhs50
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @fscrypt_crypt_block.__already_done.3, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end98:                                         ; preds = %if.end41
  call void @fscrypt_generate_iv(ptr noundef nonnull %iv, i64 noundef %lblk_num, ptr noundef %12)
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 128
  %add.i = add i32 %16, 128
  %call9.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add.i, i32 noundef %gfp_flags) #11
  %tobool.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not.i, label %if.end98.cleanup_crit_edge, label %if.end101, !prof !93

if.end98.cleanup_crit_edge:                       ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end101:                                        ; preds = %if.end98
  %base.i.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %14, i32 0, i32 2
  %tfm1.i.i = getelementptr inbounds %struct.skcipher_request, ptr %call9.i.i, i32 0, i32 4, i32 3
  %17 = ptrtoint ptr %tfm1.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %base.i.i.i, ptr %tfm1.i.i, align 32
  %complete.i = getelementptr inbounds %struct.skcipher_request, ptr %call9.i.i, i32 0, i32 4, i32 1
  %18 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @crypto_req_done, ptr %complete.i, align 8
  %data2.i = getelementptr inbounds %struct.skcipher_request, ptr %call9.i.i, i32 0, i32 4, i32 2
  %19 = ptrtoint ptr %data2.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %wait, ptr %data2.i, align 4
  %flags4.i = getelementptr inbounds %struct.skcipher_request, ptr %call9.i.i, i32 0, i32 4, i32 4
  %20 = ptrtoint ptr %flags4.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1536, ptr %flags4.i, align 4
  call void @sg_init_table(ptr noundef nonnull %dst, i32 noundef 1) #8
  %21 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %dst, align 4
  %23 = ptrtoint ptr %dest_page to i32
  %and2.i.i = and i32 %23, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %tobool.not.i.i = icmp eq i32 %and2.i.i, 0
  br i1 %tobool.not.i.i, label %do.body11.i.i, label %do.body5.i.i, !prof !96

do.body5.i.i:                                     ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #8, !srcloc !97
  unreachable

do.body11.i.i:                                    ; preds = %if.end101
  %and.i.i.i145 = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i145)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i145, 0
  br i1 %tobool.i.not.i.i, label %sg_set_page.exit, label %do.body19.i.i, !prof !96

do.body19.i.i:                                    ; preds = %do.body11.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #8, !srcloc !98
  unreachable

sg_set_page.exit:                                 ; preds = %do.body11.i.i
  %and.i.i = and i32 %22, 3
  %or.i.i = or i32 %and.i.i, %23
  %24 = ptrtoint ptr %dst to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %or.i.i, ptr %dst, align 4
  %25 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %offs, ptr %5, align 4
  %26 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %len, ptr %6, align 4
  call void @sg_init_table(ptr noundef nonnull %src, i32 noundef 1) #8
  %27 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %src, align 4
  %29 = ptrtoint ptr %src_page to i32
  %and2.i.i146 = and i32 %29, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i146)
  %tobool.not.i.i147 = icmp eq i32 %and2.i.i146, 0
  br i1 %tobool.not.i.i147, label %do.body11.i.i151, label %do.body5.i.i148, !prof !96

do.body5.i.i148:                                  ; preds = %sg_set_page.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #8, !srcloc !97
  unreachable

do.body11.i.i151:                                 ; preds = %sg_set_page.exit
  %and.i.i.i149 = and i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i149)
  %tobool.i.not.i.i150 = icmp eq i32 %and.i.i.i149, 0
  br i1 %tobool.i.not.i.i150, label %sg_set_page.exit157, label %do.body19.i.i152, !prof !96

do.body19.i.i152:                                 ; preds = %do.body11.i.i151
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #8, !srcloc !98
  unreachable

sg_set_page.exit157:                              ; preds = %do.body11.i.i151
  %and.i.i153 = and i32 %28, 3
  %or.i.i154 = or i32 %and.i.i153, %29
  %30 = ptrtoint ptr %src to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %or.i.i154, ptr %src, align 4
  %31 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %offs, ptr %8, align 4
  %32 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %len, ptr %9, align 4
  %src1.i = getelementptr inbounds %struct.skcipher_request, ptr %call9.i.i, i32 0, i32 2
  %33 = ptrtoint ptr %src1.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %src, ptr %src1.i, align 8
  %dst2.i = getelementptr inbounds %struct.skcipher_request, ptr %call9.i.i, i32 0, i32 3
  %34 = ptrtoint ptr %dst2.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %dst, ptr %dst2.i, align 4
  %35 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %len, ptr %call9.i.i, align 128
  %iv4.i = getelementptr inbounds %struct.skcipher_request, ptr %call9.i.i, i32 0, i32 1
  %36 = ptrtoint ptr %iv4.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %iv, ptr %iv4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rw)
  %cmp102 = icmp eq i32 %rw, 0
  br i1 %cmp102, label %if.then103, label %if.else

if.then103:                                       ; preds = %sg_set_page.exit157
  %call104 = call i32 @crypto_skcipher_decrypt(ptr noundef nonnull %call9.i.i) #8
  %37 = zext i32 %call104 to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %call104, label %if.then103.if.end108_crit_edge [
    i32 -115, label %if.then103.if.end108.sink.split_crit_edge
    i32 -16, label %if.then103.if.end108.sink.split_crit_edge165
  ]

if.then103.if.end108.sink.split_crit_edge165:     ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end108.sink.split

if.then103.if.end108.sink.split_crit_edge:        ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end108.sink.split

if.then103.if.end108_crit_edge:                   ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end108

if.else:                                          ; preds = %sg_set_page.exit157
  %call106 = call i32 @crypto_skcipher_encrypt(ptr noundef nonnull %call9.i.i) #8
  %38 = zext i32 %call106 to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %call106, label %if.else.if.end108_crit_edge [
    i32 -115, label %if.else.if.end108.sink.split_crit_edge
    i32 -16, label %if.else.if.end108.sink.split_crit_edge166
  ]

if.else.if.end108.sink.split_crit_edge166:        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end108.sink.split

if.else.if.end108.sink.split_crit_edge:           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end108.sink.split

if.else.if.end108_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end108

if.end108.sink.split:                             ; preds = %if.else.if.end108.sink.split_crit_edge, %if.else.if.end108.sink.split_crit_edge166, %if.then103.if.end108.sink.split_crit_edge, %if.then103.if.end108.sink.split_crit_edge165
  call void @wait_for_completion(ptr noundef nonnull %wait) #8
  %39 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %wait, align 4
  %40 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %err, align 4
  br label %if.end108

if.end108:                                        ; preds = %if.end108.sink.split, %if.else.if.end108_crit_edge, %if.then103.if.end108_crit_edge
  %res.0 = phi i32 [ %call104, %if.then103.if.end108_crit_edge ], [ %call106, %if.else.if.end108_crit_edge ], [ %41, %if.end108.sink.split ]
  call void @kfree_sensitive(ptr noundef nonnull %call9.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0)
  %tobool109.not = icmp eq i32 %res.0, 0
  br i1 %tobool109.not, label %if.end108.cleanup_crit_edge, label %if.then110

if.end108.cleanup_crit_edge:                      ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then110:                                       ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #10
  %cond = select i1 %cmp102, ptr @.str.6, ptr @.str.7
  call void (ptr, ptr, ptr, ...) @fscrypt_msg(ptr noundef %inode, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, ptr noundef nonnull %cond, i64 noundef %lblk_num, i32 noundef %res.0) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then110, %if.end108.cleanup_crit_edge, %if.end98.cleanup_crit_edge, %if.then61, %land.rhs50.cleanup_crit_edge, %if.then, %land.rhs.cleanup_crit_edge
  %retval.0 = phi i32 [ %res.0, %if.then110 ], [ -22, %if.then ], [ -22, %if.then61 ], [ 0, %if.end108.cleanup_crit_edge ], [ -22, %land.rhs.cleanup_crit_edge ], [ -22, %land.rhs50.cleanup_crit_edge ], [ -12, %if.end98.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %src) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %dst) #8
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %wait) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %iv) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_req_done(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_table(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_skcipher_decrypt(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_skcipher_encrypt(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @fscrypt_msg(ptr noundef readonly %inode, ptr noundef %level, ptr noundef %fmt, ...) local_unnamed_addr #4 align 64 {
entry:
  %vaf = alloca %struct.va_format, align 4
  %args = alloca %struct.__va_list, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %vaf) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %args) #8
  %0 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %args, align 4, !annotation !99
  %call = tail call i32 @___ratelimit(ptr noundef nonnull @fscrypt_msg.rs, ptr noundef nonnull @__func__.fscrypt_msg) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = getelementptr inbounds %struct.va_format, ptr %vaf, i32 0, i32 1
  call void @llvm.va_start(ptr nonnull %args)
  %2 = ptrtoint ptr %vaf to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %fmt, ptr %vaf, align 4
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %args, ptr %1, align 4
  %tobool2.not = icmp eq ptr %inode, null
  br i1 %tobool2.not, label %do.end20, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %4 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %i_ino, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool3.not = icmp eq i32 %5, 0
  %i_sb13 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %6 = ptrtoint ptr %i_sb13 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i_sb13, align 4
  %s_id14 = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 39
  br i1 %tobool3.not, label %do.end11.critedge, label %do.end

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %call6 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %level, ptr noundef %s_id14, i32 noundef %5, ptr noundef nonnull %vaf) #13
  br label %if.end24

do.end11.critedge:                                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %call16 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %level, ptr noundef %s_id14, ptr noundef nonnull %vaf) #13
  br label %if.end24

do.end20:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call22 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef %level, ptr noundef nonnull %vaf) #13
  br label %if.end24

if.end24:                                         ; preds = %do.end20, %do.end11.critedge, %do.end
  call void @llvm.va_end(ptr nonnull %args)
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %args) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %vaf) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @fscrypt_encrypt_pagecache_blocks(ptr noundef %page, i32 noundef %len, i32 noundef %offs, i32 noundef %gfp_flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mapping = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 1
  %0 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mapping, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %i_blkbits = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 20
  %4 = ptrtoint ptr %i_blkbits to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %i_blkbits, align 2
  %conv = zext i8 %5 to i32
  %shl = shl nuw i32 1, %conv
  %index = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 2
  %6 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %index, align 4
  %conv1 = zext i32 %7 to i64
  %sub = sub nsw i32 12, %conv
  %sh_prom = zext i32 %sub to i64
  %shl2 = shl i64 %conv1, %sh_prom
  %shr = lshr i32 %offs, %conv
  %conv3 = zext i32 %shr to i64
  %add = add i64 %shl2, %conv3
  %8 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %8, align 4
  %and.i.i = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !96

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i = add i32 %10, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %11, %if.end.i.i ]
  %12 = inttoptr i32 %retval.0.i.i to ptr
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %14)
  %cmp.i.not.i = icmp eq i32 %14, -1
  %15 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %8, align 4
  %and.i16.i = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i16.i)
  %tobool.not.i17.i = icmp eq i32 %and.i16.i, 0
  br i1 %cmp.i.not.i, label %if.then.i, label %do.end10.i, !prof !93

if.then.i:                                        ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i17.i, label %if.end.i20.i, label %if.then.i19.i, !prof !96

if.then.i19.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i18.i = add i32 %16, -1
  br label %_compound_head.exit22.i

if.end.i20.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %page to i32
  br label %_compound_head.exit22.i

_compound_head.exit22.i:                          ; preds = %if.end.i20.i, %if.then.i19.i
  %retval.0.i21.i = phi i32 [ %sub.i18.i, %if.then.i19.i ], [ %17, %if.end.i20.i ]
  %18 = inttoptr i32 %retval.0.i21.i to ptr
  tail call void @dump_page(ptr noundef %18, ptr noundef nonnull @.str.20) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 414, 0\0A.popsection", ""() #8, !srcloc !100
  unreachable

do.end10.i:                                       ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i17.i, label %if.end.i27.i, label %if.then.i26.i, !prof !96

if.then.i26.i:                                    ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i25.i = add i32 %16, -1
  br label %PageLocked.exit

if.end.i27.i:                                     ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %page to i32
  br label %PageLocked.exit

PageLocked.exit:                                  ; preds = %if.end.i27.i, %if.then.i26.i
  %retval.0.i28.i = phi i32 [ %sub.i25.i, %if.then.i26.i ], [ %19, %if.end.i27.i ]
  %20 = inttoptr i32 %retval.0.i28.i to ptr
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %20, align 4
  %and1.i.i = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not, label %land.rhs, label %if.end44

land.rhs:                                         ; preds = %PageLocked.exit
  %.b159 = load i1, ptr @fscrypt_encrypt_pagecache_blocks.__already_done, align 1
  br i1 %.b159, label %land.rhs.cleanup_crit_edge, label %if.then, !prof !96

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @fscrypt_encrypt_pagecache_blocks.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 179, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end44:                                         ; preds = %PageLocked.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp = icmp eq i32 %len, 0
  %or = or i32 %offs, %len
  %sub47 = add i32 %shl, -1
  %and = and i32 %sub47, %or
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp48 = icmp ne i32 %and, 0
  %23 = select i1 %cmp, i1 true, i1 %cmp48
  br i1 %23, label %land.rhs59, label %if.end108

land.rhs59:                                       ; preds = %if.end44
  %.b157158 = load i1, ptr @fscrypt_encrypt_pagecache_blocks.__already_done.8, align 1
  br i1 %.b157158, label %land.rhs59.cleanup_crit_edge, label %if.then70, !prof !96

land.rhs59.cleanup_crit_edge:                     ; preds = %land.rhs59
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then70:                                        ; preds = %land.rhs59
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @fscrypt_encrypt_pagecache_blocks.__already_done.8, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 182, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end108:                                        ; preds = %if.end44
  %24 = load ptr, ptr @fscrypt_bounce_page_pool, align 4
  %call.i = tail call noalias ptr @mempool_alloc(ptr noundef %24, i32 noundef %gfp_flags) #8
  %tobool110.not = icmp eq ptr %call.i, null
  br i1 %tobool110.not, label %if.end108.cleanup_crit_edge, label %for.cond.preheader

if.end108.cleanup_crit_edge:                      ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end108
  %add114 = add i32 %offs, %len
  call void @__sanitizer_cov_trace_cmp4(i32 %add114, i32 %offs)
  %cmp115165 = icmp ugt i32 %add114, %offs
  br i1 %cmp115165, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0167 = phi i32 [ %add122, %for.inc.for.body_crit_edge ], [ %offs, %for.cond.preheader.for.body_crit_edge ]
  %lblk_num.0166 = phi i64 [ %inc, %for.inc.for.body_crit_edge ], [ %add, %for.cond.preheader.for.body_crit_edge ]
  %call117 = tail call i32 @fscrypt_crypt_block(ptr noundef %3, i32 noundef 1, i64 noundef %lblk_num.0166, ptr noundef %page, ptr noundef nonnull %call.i, i32 noundef %shl, i32 noundef %i.0167, i32 noundef %gfp_flags)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call117)
  %tobool118.not = icmp eq i32 %call117, 0
  br i1 %tobool118.not, label %for.inc, label %if.end.i

if.end.i:                                         ; preds = %for.body
  %private1.i.i = getelementptr inbounds %struct.page, ptr %call.i, i32 0, i32 1, i32 0, i32 3
  %25 = ptrtoint ptr %private1.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %private1.i.i, align 4
  %26 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %call.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %27)
  %cmp.i.not.i.i = icmp eq i32 %27, -1
  br i1 %cmp.i.not.i.i, label %if.then.i.i164, label %fscrypt_free_bounce_page.exit, !prof !93

if.then.i.i164:                                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.18) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #8, !srcloc !94
  unreachable

fscrypt_free_bounce_page.exit:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_clear_bit(i32 noundef 13, ptr noundef nonnull %call.i) #8
  %28 = load ptr, ptr @fscrypt_bounce_page_pool, align 4
  tail call void @mempool_free(ptr noundef nonnull %call.i, ptr noundef %28) #8
  %29 = inttoptr i32 %call117 to ptr
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %add122 = add i32 %i.0167, %shl
  %inc = add i64 %lblk_num.0166, 1
  %cmp115 = icmp ult i32 %add122, %add114
  br i1 %cmp115, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %30 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %call.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %31)
  %cmp.i.not.i162 = icmp eq i32 %31, -1
  br i1 %cmp.i.not.i162, label %if.then.i163, label %SetPagePrivate.exit, !prof !93

if.then.i163:                                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.18) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #8, !srcloc !101
  unreachable

SetPagePrivate.exit:                              ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_set_bit(i32 noundef 13, ptr noundef nonnull %call.i) #8
  %32 = ptrtoint ptr %page to i32
  %private1.i = getelementptr inbounds %struct.page, ptr %call.i, i32 0, i32 1, i32 0, i32 3
  %33 = ptrtoint ptr %private1.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %private1.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %SetPagePrivate.exit, %fscrypt_free_bounce_page.exit, %if.end108.cleanup_crit_edge, %if.then70, %land.rhs59.cleanup_crit_edge, %if.then, %land.rhs.cleanup_crit_edge
  %retval.0 = phi ptr [ %29, %fscrypt_free_bounce_page.exit ], [ %call.i, %SetPagePrivate.exit ], [ inttoptr (i32 -22 to ptr), %land.rhs.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.then ], [ inttoptr (i32 -22 to ptr), %land.rhs59.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.then70 ], [ inttoptr (i32 -12 to ptr), %if.end108.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fscrypt_encrypt_block_inplace(ptr noundef %inode, ptr noundef %page, i32 noundef %len, i32 noundef %offs, i64 noundef %lblk_num, i32 noundef %gfp_flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @fscrypt_crypt_block(ptr noundef %inode, i32 noundef 1, i64 noundef %lblk_num, ptr noundef %page, ptr noundef %page, i32 noundef %len, i32 noundef %offs, i32 noundef %gfp_flags)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fscrypt_decrypt_pagecache_blocks(ptr noundef %page, i32 noundef %len, i32 noundef %offs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mapping = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 1
  %0 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mapping, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %i_blkbits = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 20
  %4 = ptrtoint ptr %i_blkbits to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %i_blkbits, align 2
  %conv = zext i8 %5 to i32
  %shl = shl nuw i32 1, %conv
  %index = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 2
  %6 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %index, align 4
  %conv1 = zext i32 %7 to i64
  %sub = sub nsw i32 12, %conv
  %sh_prom = zext i32 %sub to i64
  %shl2 = shl i64 %conv1, %sh_prom
  %shr = lshr i32 %offs, %conv
  %conv3 = zext i32 %shr to i64
  %add = add i64 %shl2, %conv3
  %8 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %8, align 4
  %and.i.i = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !96

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i = add i32 %10, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %11, %if.end.i.i ]
  %12 = inttoptr i32 %retval.0.i.i to ptr
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %14)
  %cmp.i.not.i = icmp eq i32 %14, -1
  %15 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %8, align 4
  %and.i16.i = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i16.i)
  %tobool.not.i17.i = icmp eq i32 %and.i16.i, 0
  br i1 %cmp.i.not.i, label %if.then.i, label %do.end10.i, !prof !93

if.then.i:                                        ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i17.i, label %if.end.i20.i, label %if.then.i19.i, !prof !96

if.then.i19.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i18.i = add i32 %16, -1
  br label %_compound_head.exit22.i

if.end.i20.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %page to i32
  br label %_compound_head.exit22.i

_compound_head.exit22.i:                          ; preds = %if.end.i20.i, %if.then.i19.i
  %retval.0.i21.i = phi i32 [ %sub.i18.i, %if.then.i19.i ], [ %17, %if.end.i20.i ]
  %18 = inttoptr i32 %retval.0.i21.i to ptr
  tail call void @dump_page(ptr noundef %18, ptr noundef nonnull @.str.20) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 414, 0\0A.popsection", ""() #8, !srcloc !100
  unreachable

do.end10.i:                                       ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i17.i, label %if.end.i27.i, label %if.then.i26.i, !prof !96

if.then.i26.i:                                    ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i25.i = add i32 %16, -1
  br label %PageLocked.exit

if.end.i27.i:                                     ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %page to i32
  br label %PageLocked.exit

PageLocked.exit:                                  ; preds = %if.end.i27.i, %if.then.i26.i
  %retval.0.i28.i = phi i32 [ %sub.i25.i, %if.then.i26.i ], [ %19, %if.end.i27.i ]
  %20 = inttoptr i32 %retval.0.i28.i to ptr
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %20, align 4
  %and1.i.i = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not, label %land.rhs, label %if.end43

land.rhs:                                         ; preds = %PageLocked.exit
  %.b144 = load i1, ptr @fscrypt_decrypt_pagecache_blocks.__already_done, align 1
  br i1 %.b144, label %land.rhs.cleanup_crit_edge, label %land.rhs.cleanup.sink.split_crit_edge, !prof !96

land.rhs.cleanup.sink.split_crit_edge:            ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end43:                                         ; preds = %PageLocked.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp = icmp eq i32 %len, 0
  %or = or i32 %offs, %len
  %sub46 = add i32 %shl, -1
  %and = and i32 %sub46, %or
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp47 = icmp ne i32 %and, 0
  %23 = select i1 %cmp, i1 true, i1 %cmp47
  br i1 %23, label %land.rhs58, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end43
  %add107 = add i32 %offs, %len
  call void @__sanitizer_cov_trace_cmp4(i32 %add107, i32 %offs)
  %cmp108147 = icmp ugt i32 %add107, %offs
  br i1 %cmp108147, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.cleanup_crit_edge

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

land.rhs58:                                       ; preds = %if.end43
  %.b142143 = load i1, ptr @fscrypt_decrypt_pagecache_blocks.__already_done.9, align 1
  br i1 %.b142143, label %land.rhs58.cleanup_crit_edge, label %land.rhs58.cleanup.sink.split_crit_edge, !prof !96

land.rhs58.cleanup.sink.split_crit_edge:          ; preds = %land.rhs58
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

land.rhs58.cleanup_crit_edge:                     ; preds = %land.rhs58
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %lblk_num.0149 = phi i64 [ %inc, %for.inc.for.body_crit_edge ], [ %add, %for.cond.preheader.for.body_crit_edge ]
  %i.0148 = phi i32 [ %add114, %for.inc.for.body_crit_edge ], [ %offs, %for.cond.preheader.for.body_crit_edge ]
  %call110 = tail call i32 @fscrypt_crypt_block(ptr noundef %3, i32 noundef 0, i64 noundef %lblk_num.0149, ptr noundef %page, ptr noundef %page, i32 noundef %shl, i32 noundef %i.0148, i32 noundef 3136)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call110)
  %tobool111.not = icmp eq i32 %call110, 0
  br i1 %tobool111.not, label %for.inc, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %add114 = add i32 %i.0148, %shl
  %inc = add i64 %lblk_num.0149, 1
  %cmp108 = icmp ult i32 %add114, %add107
  br i1 %cmp108, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

cleanup.sink.split:                               ; preds = %land.rhs58.cleanup.sink.split_crit_edge, %land.rhs.cleanup.sink.split_crit_edge
  %fscrypt_decrypt_pagecache_blocks.__already_done.9.sink = phi ptr [ @fscrypt_decrypt_pagecache_blocks.__already_done, %land.rhs.cleanup.sink.split_crit_edge ], [ @fscrypt_decrypt_pagecache_blocks.__already_done.9, %land.rhs58.cleanup.sink.split_crit_edge ]
  %.sink = phi i32 [ 258, %land.rhs.cleanup.sink.split_crit_edge ], [ 261, %land.rhs58.cleanup.sink.split_crit_edge ]
  %24 = ptrtoint ptr %fscrypt_decrypt_pagecache_blocks.__already_done.9.sink to i32
  call void @__asan_store1_noabort(i32 %24)
  store i1 true, ptr %fscrypt_decrypt_pagecache_blocks.__already_done.9.sink, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef %.sink, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %for.inc.cleanup_crit_edge, %for.body.cleanup_crit_edge, %land.rhs58.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %land.rhs.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %land.rhs.cleanup_crit_edge ], [ -22, %land.rhs58.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ -22, %cleanup.sink.split ], [ %call110, %for.body.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fscrypt_decrypt_block_inplace(ptr noundef %inode, ptr noundef %page, i32 noundef %len, i32 noundef %offs, i64 noundef %lblk_num) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @fscrypt_crypt_block(ptr noundef %inode, i32 noundef 0, i64 noundef %lblk_num, ptr noundef %page, ptr noundef %page, i32 noundef %len, i32 noundef %offs, i32 noundef 3136)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fscrypt_initialize(i32 noundef %cop_flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %cop_flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @mutex_lock_nested(ptr noundef nonnull @fscrypt_init_mutex, i32 noundef 0) #8
  %0 = load ptr, ptr @fscrypt_bounce_page_pool, align 4
  %tobool1.not = icmp eq ptr %0, null
  br i1 %tobool1.not, label %if.end3, label %if.end.out_unlock_crit_edge

if.end.out_unlock_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_unlock

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %1 = load i32, ptr @num_prealloc_crypto_pages, align 4
  %call.i = tail call ptr @mempool_create(i32 noundef %1, ptr noundef nonnull @mempool_alloc_pages, ptr noundef nonnull @mempool_free_pages, ptr noundef null) #8
  store ptr %call.i, ptr @fscrypt_bounce_page_pool, align 4
  %tobool4.not = icmp eq ptr %call.i, null
  %spec.select = select i1 %tobool4.not, i32 -12, i32 0
  br label %out_unlock

out_unlock:                                       ; preds = %if.end3, %if.end.out_unlock_crit_edge
  %err.0 = phi i32 [ 0, %if.end.out_unlock_crit_edge ], [ %spec.select, %if.end3 ]
  tail call void @mutex_unlock(ptr noundef nonnull @fscrypt_init_mutex) #8
  br label %cleanup

cleanup:                                          ; preds = %out_unlock, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %out_unlock ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #5

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @fscrypt_init() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @__num_online_cpus, i32 noundef 4) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__num_online_cpus to i32))
  %0 = load volatile i32, ptr @__num_online_cpus, align 4
  %call1 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.23, i32 noundef 18, i32 noundef %0) #8
  store ptr %call1, ptr @fscrypt_read_workqueue, align 4
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.24, i32 noundef 104, i32 noundef 8, i32 noundef 131072, ptr noundef null) #8
  store ptr %call2, ptr @fscrypt_info_cachep, align 4
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.end.fail_free_queue_crit_edge, label %if.end5

if.end.fail_free_queue_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail_free_queue

if.end5:                                          ; preds = %if.end
  %call6 = tail call i32 @fscrypt_init_keyring() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end5.cleanup_crit_edge, label %fail_free_info

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

fail_free_info:                                   ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %1 = load ptr, ptr @fscrypt_info_cachep, align 4
  tail call void @kmem_cache_destroy(ptr noundef %1) #8
  br label %fail_free_queue

fail_free_queue:                                  ; preds = %fail_free_info, %if.end.fail_free_queue_crit_edge
  %err.0 = phi i32 [ %call6, %fail_free_info ], [ -12, %if.end.fail_free_queue_crit_edge ]
  %2 = load ptr, ptr @fscrypt_read_workqueue, align 4
  tail call void @destroy_workqueue(ptr noundef %2) #8
  br label %cleanup

cleanup:                                          ; preds = %fail_free_queue, %if.end5.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end5.cleanup_crit_edge ], [ %err.0, %fail_free_queue ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_sensitive(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mempool_create(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mempool_alloc_pages(i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mempool_free_pages(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @fscrypt_init_keyring() local_unnamed_addr #6 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind willreturn }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { cold }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !20, !22, !23, !24, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !44, !46, !48, !49, !50, !52, !53, !54, !56, !57, !58, !60, !62, !64, !65, !67, !69, !71, !73, !74, !76, !78, !79, !80, !82}
!llvm.module.flags = !{!84, !85, !86, !87, !88, !89, !90, !91}
!llvm.ident = !{!92}

!0 = !{ptr @__param_num_prealloc_crypto_pages, !1, !"__param_num_prealloc_crypto_pages", i1 false, i1 false}
!1 = !{!"../fs/crypto/crypto.c", i32 33, i32 1}
!2 = !{ptr @__UNIQUE_ID_num_prealloc_crypto_pagestype278, !1, !"__UNIQUE_ID_num_prealloc_crypto_pagestype278", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_num_prealloc_crypto_pages279, !4, !"__UNIQUE_ID_num_prealloc_crypto_pages279", i1 false, i1 false}
!4 = !{!"../fs/crypto/crypto.c", i32 34, i32 1}
!5 = !{ptr @__ksymtab_fscrypt_enqueue_decrypt_work, !6, !"__ksymtab_fscrypt_enqueue_decrypt_work", i1 false, i1 false}
!6 = !{!"../fs/crypto/crypto.c", i32 48, i32 1}
!7 = !{ptr @__ksymtab_fscrypt_free_bounce_page, !8, !"__ksymtab_fscrypt_free_bounce_page", i1 false, i1 false}
!8 = !{!"../fs/crypto/crypto.c", i32 70, i32 1}
!9 = distinct !{null, !10, !"__already_done", i1 false, i1 false}
!10 = !{!"../fs/crypto/crypto.c", i32 80, i32 3}
!11 = !{ptr @.str, !10, !"<string literal>", i1 false, i1 false}
!12 = distinct !{null, !13, !"__already_done", i1 false, i1 false}
!13 = !{!"../fs/crypto/crypto.c", i32 81, i32 3}
!14 = distinct !{null, !15, !"__already_done", i1 false, i1 false}
!15 = !{!"../fs/crypto/crypto.c", i32 84, i32 3}
!16 = distinct !{null, !17, !"__already_done", i1 false, i1 false}
!17 = !{!"../fs/crypto/crypto.c", i32 106, i32 6}
!18 = distinct !{null, !19, !"__already_done", i1 false, i1 false}
!19 = !{!"../fs/crypto/crypto.c", i32 108, i32 6}
!20 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../fs/crypto/crypto.c", i32 132, i32 3}
!22 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!25 = distinct !{null, !26, !"__already_done", i1 false, i1 false}
!26 = !{!"../fs/crypto/crypto.c", i32 179, i32 6}
!27 = distinct !{null, !28, !"__already_done", i1 false, i1 false}
!28 = !{!"../fs/crypto/crypto.c", i32 182, i32 6}
!29 = !{ptr @__ksymtab_fscrypt_encrypt_pagecache_blocks, !30, !"__ksymtab_fscrypt_encrypt_pagecache_blocks", i1 false, i1 false}
!30 = !{!"../fs/crypto/crypto.c", i32 202, i32 1}
!31 = !{ptr @__ksymtab_fscrypt_encrypt_block_inplace, !32, !"__ksymtab_fscrypt_encrypt_block_inplace", i1 false, i1 false}
!32 = !{!"../fs/crypto/crypto.c", i32 228, i32 1}
!33 = distinct !{null, !34, !"__already_done", i1 false, i1 false}
!34 = !{!"../fs/crypto/crypto.c", i32 258, i32 6}
!35 = distinct !{null, !36, !"__already_done", i1 false, i1 false}
!36 = !{!"../fs/crypto/crypto.c", i32 261, i32 6}
!37 = !{ptr @__ksymtab_fscrypt_decrypt_pagecache_blocks, !38, !"__ksymtab_fscrypt_decrypt_pagecache_blocks", i1 false, i1 false}
!38 = !{!"../fs/crypto/crypto.c", i32 272, i32 1}
!39 = !{ptr @__ksymtab_fscrypt_decrypt_block_inplace, !40, !"__ksymtab_fscrypt_decrypt_block_inplace", i1 false, i1 false}
!40 = !{!"../fs/crypto/crypto.c", i32 297, i32 1}
!41 = !{ptr @.str.10, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../fs/crypto/crypto.c", i32 335, i32 9}
!43 = !{ptr @fscrypt_msg.rs, !42, !"rs", i1 false, i1 false}
!44 = !{ptr @__func__.fscrypt_msg, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../fs/crypto/crypto.c", i32 340, i32 7}
!46 = !{ptr @.str.11, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../fs/crypto/crypto.c", i32 347, i32 3}
!48 = !{ptr @fscrypt_msg._entry, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @fscrypt_msg._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.13, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../fs/crypto/crypto.c", i32 350, i32 3}
!52 = !{ptr @fscrypt_msg._entry.12, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @fscrypt_msg._entry_ptr.14, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.16, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../fs/crypto/crypto.c", i32 352, i32 3}
!56 = !{ptr @fscrypt_msg._entry.15, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @fscrypt_msg._entry_ptr.17, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @__initcall__kmod_fscrypto__280_396_fscrypt_init7, !59, !"__initcall__kmod_fscrypto__280_396_fscrypt_init7", i1 false, i1 false}
!59 = !{!"../fs/crypto/crypto.c", i32 396, i32 1}
!60 = !{ptr @fscrypt_read_workqueue, !61, !"fscrypt_read_workqueue", i1 false, i1 false}
!61 = !{!"../fs/crypto/crypto.c", i32 39, i32 33}
!62 = !{ptr @fscrypt_info_cachep, !63, !"fscrypt_info_cachep", i1 false, i1 false}
!63 = !{!"../fs/crypto/crypto.c", i32 42, i32 20}
!64 = !{ptr @__param_str_num_prealloc_crypto_pages, !1, !"__param_str_num_prealloc_crypto_pages", i1 false, i1 false}
!65 = !{ptr @num_prealloc_crypto_pages, !66, !"num_prealloc_crypto_pages", i1 false, i1 false}
!66 = !{!"../fs/crypto/crypto.c", i32 31, i32 21}
!67 = !{ptr @fscrypt_bounce_page_pool, !68, !"fscrypt_bounce_page_pool", i1 false, i1 false}
!68 = !{!"../fs/crypto/crypto.c", i32 37, i32 19}
!69 = !{ptr @.str.18, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../include/linux/page-flags.h", i32 452, i32 1}
!71 = !{ptr @init_completion.__key, !72, !"__key", i1 false, i1 false}
!72 = !{!"../include/linux/completion.h", i32 87, i32 2}
!73 = !{ptr @.str.19, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @.str.20, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../include/linux/page-flags.h", i32 414, i32 1}
!76 = !{ptr @.str.21, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../fs/crypto/crypto.c", i32 40, i32 8}
!78 = !{ptr @.str.22, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @fscrypt_init_mutex, !77, !"fscrypt_init_mutex", i1 false, i1 false}
!80 = !{ptr @.str.23, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../fs/crypto/crypto.c", i32 373, i32 43}
!82 = !{ptr @.str.24, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../fs/crypto/crypto.c", i32 379, i32 24}
!84 = !{i32 1, !"wchar_size", i32 2}
!85 = !{i32 1, !"min_enum_size", i32 4}
!86 = !{i32 8, !"branch-target-enforcement", i32 0}
!87 = !{i32 8, !"sign-return-address", i32 0}
!88 = !{i32 8, !"sign-return-address-all", i32 0}
!89 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!90 = !{i32 7, !"uwtable", i32 1}
!91 = !{i32 7, !"frame-pointer", i32 2}
!92 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!93 = !{!"branch_weights", i32 1, i32 2000}
!94 = !{i64 2150742417, i64 2150742590, i64 2150742605, i64 2150742657, i64 2150742716, i64 2150742740, i64 2150742781, i64 2150742802, i64 2150742830, i64 2150742862}
!95 = !{i64 2154567614, i64 2154568106, i64 2154567651, i64 2154567707, i64 2154567741, i64 2154567765, i64 2154567806, i64 2154567827, i64 2154567855, i64 2154567889}
!96 = !{!"branch_weights", i32 2000, i32 1}
!97 = !{i64 2153909161, i64 2153909653, i64 2153909198, i64 2153909254, i64 2153909288, i64 2153909312, i64 2153909353, i64 2153909374, i64 2153909402, i64 2153909436}
!98 = !{i64 2153910771, i64 2153911263, i64 2153910808, i64 2153910864, i64 2153910898, i64 2153910922, i64 2153910963, i64 2153910984, i64 2153911012, i64 2153911046}
!99 = !{!"auto-init"}
!100 = !{i64 2150281314, i64 2150281805, i64 2150281351, i64 2150281407, i64 2150281441, i64 2150281465, i64 2150281506, i64 2150281527, i64 2150281555, i64 2150281589}
!101 = !{i64 2150737838, i64 2150738011, i64 2150738026, i64 2150738078, i64 2150738137, i64 2150738161, i64 2150738202, i64 2150738223, i64 2150738251, i64 2150738283}
