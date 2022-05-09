; ModuleID = '/llk/IR_all_yes/block/blk-crypto-fallback.c_pt.bc'
source_filename = "../block/blk-crypto-fallback.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.80 }
%union.anon.80 = type { ptr }
%struct.blk_crypto_profile = type { %struct.blk_crypto_ll_ops, i32, [4 x i32], ptr, i32, %struct.rw_semaphore, %struct.wait_queue_head, %struct.list_head, %struct.spinlock, ptr, i32, ptr }
%struct.blk_crypto_ll_ops = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.blk_crypto_mode = type { ptr, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.bio_list = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.crypto_wait = type { %struct.completion, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%union.blk_crypto_iv = type { [4 x i64] }
%struct.bio = type { ptr, ptr, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, i32, ptr, ptr, ptr, %struct.bio_issue, i64, ptr, %union.anon.42, i16, i16, %struct.atomic_t, ptr, ptr, [0 x %struct.bio_vec] }
%struct.bvec_iter = type <{ i64, i32, i32, i32 }>
%struct.bio_issue = type { i64 }
%union.anon.42 = type { ptr }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.blk_crypto_config = type { i32, i32, i32 }
%struct.page = type { i32, %union.anon.2, %union.anon.79, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.79 = type { %struct.atomic_t }
%struct.blk_crypto_fallback_keyslot = type { i32, [4 x ptr] }
%struct.crypto_skcipher = type { i32, [124 x i8], %struct.crypto_tfm }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [112 x i8], [0 x ptr] }
%struct.skcipher_request = type { i32, ptr, ptr, ptr, %struct.crypto_async_request, [88 x i8], [0 x ptr] }
%struct.crypto_async_request = type { %struct.list_head, ptr, ptr, ptr, i32 }
%struct.bio_crypt_ctx = type { ptr, [4 x i64] }
%struct.bio_fallback_crypt_ctx = type { %struct.bio_crypt_ctx, %struct.bvec_iter, %union.anon.87 }
%union.anon.87 = type { %struct.anon.88 }
%struct.anon.88 = type { %struct.work_struct, ptr }
%struct.blk_crypto_key = type { %struct.blk_crypto_config, i32, i32, [64 x i8] }

@__param_str_num_prealloc_bounce_pg = internal constant [43 x i8] c"blk_crypto_fallback.num_prealloc_bounce_pg\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@num_prealloc_bounce_pg = internal global { i32, [28 x i8] } { i32 32, [28 x i8] zeroinitializer }, align 32
@__param_num_prealloc_bounce_pg = internal constant %struct.kernel_param { ptr @__param_str_num_prealloc_bounce_pg, ptr null, ptr @param_ops_uint, i16 0, i8 -1, i8 0, %union.anon.80 { ptr @num_prealloc_bounce_pg } }, section "__param", align 4
@__UNIQUE_ID_num_prealloc_bounce_pgtype294 = internal constant [57 x i8] c"blk_crypto_fallback.parmtype=num_prealloc_bounce_pg:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_num_prealloc_bounce_pg295 = internal constant [123 x i8] c"blk_crypto_fallback.parm=num_prealloc_bounce_pg:Number of preallocated bounce pages for the blk-crypto crypto API fallback\00", section ".modinfo", align 1
@__param_str_num_keyslots = internal constant [33 x i8] c"blk_crypto_fallback.num_keyslots\00", align 1
@blk_crypto_num_keyslots = internal global { i32, [28 x i8] } { i32 100, [28 x i8] zeroinitializer }, align 32
@__param_num_keyslots = internal constant %struct.kernel_param { ptr @__param_str_num_keyslots, ptr null, ptr @param_ops_uint, i16 0, i8 -1, i8 0, %union.anon.80 { ptr @blk_crypto_num_keyslots } }, section "__param", align 4
@__UNIQUE_ID_num_keyslotstype296 = internal constant [47 x i8] c"blk_crypto_fallback.parmtype=num_keyslots:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_num_keyslots297 = internal constant [96 x i8] c"blk_crypto_fallback.parm=num_keyslots:Number of keyslots for the blk-crypto crypto API fallback\00", section ".modinfo", align 1
@__param_str_num_prealloc_fallback_crypt_ctxs = internal constant [53 x i8] c"blk_crypto_fallback.num_prealloc_fallback_crypt_ctxs\00", align 1
@num_prealloc_fallback_crypt_ctxs = internal global { i32, [28 x i8] } { i32 128, [28 x i8] zeroinitializer }, align 32
@__param_num_prealloc_fallback_crypt_ctxs = internal constant %struct.kernel_param { ptr @__param_str_num_prealloc_fallback_crypt_ctxs, ptr null, ptr @param_ops_uint, i16 0, i8 -1, i8 0, %union.anon.80 { ptr @num_prealloc_fallback_crypt_ctxs } }, section "__param", align 4
@__UNIQUE_ID_num_prealloc_fallback_crypt_ctxstype298 = internal constant [67 x i8] c"blk_crypto_fallback.parmtype=num_prealloc_fallback_crypt_ctxs:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_num_prealloc_crypt_fallback_ctxs299 = internal constant [159 x i8] c"blk_crypto_fallback.parm=num_prealloc_crypt_fallback_ctxs:Number of preallocated bio fallback crypto contexts for blk-crypto to use during crypto API fallback\00", section ".modinfo", align 1
@blk_crypto_fallback_bio_prep.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@tfms_inited = internal global { [4 x i8], [28 x i8] } zeroinitializer, align 32
@.str = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"block/blk-crypto-fallback.c\00", [36 x i8] zeroinitializer }, align 32
@blk_crypto_fallback_profile = internal global { %struct.blk_crypto_profile, [40 x i8] } zeroinitializer, align 32
@bio_fallback_crypt_ctx_pool = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@blk_crypto_modes = external dso_local local_unnamed_addr constant [0 x %struct.blk_crypto_mode], align 4
@tfms_init_lock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.5, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @tfms_init_lock, i64 52), ptr getelementptr (i8, ptr @tfms_init_lock, i64 52) }, ptr @tfms_init_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.6, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@blk_crypto_keyslots = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@blk_crypto_fallback_start_using_mode.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@blk_crypto_fallback_start_using_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str, i32 641, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\014blk-crypto-fallback: Missing crypto API support for \22%s\22\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"blk_crypto_fallback_start_using_mode\00", [59 x i8] zeroinitializer }, align 32
@blk_crypto_fallback_start_using_mode._entry_ptr = internal global ptr @blk_crypto_fallback_start_using_mode._entry, section ".printk_index", align 4
@blk_crypto_bounce_page_pool = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@crypto_bio_split = internal global { %struct.bio_set, [132 x i8] } zeroinitializer, align 32
@blk_crypto_fallback_decrypt_endio.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"(work_completion)(&f_ctx->work)\00", [32 x i8] zeroinitializer }, align 32
@blk_crypto_wq = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"tfms_init_lock.wait_lock\00", [39 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tfms_init_lock\00", [17 x i8] zeroinitializer }, align 32
@blk_crypto_fallback_inited = internal global { i1, [31 x i8] } zeroinitializer, align 32
@blank_key = internal global { [64 x i8], [32 x i8] } zeroinitializer, align 32
@blk_crypto_fallback_ll_ops = internal constant { %struct.blk_crypto_ll_ops, [24 x i8] } { %struct.blk_crypto_ll_ops { ptr @blk_crypto_fallback_keyslot_program, ptr @blk_crypto_fallback_keyslot_evict }, [24 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"blk_crypto_wq\00", [18 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"bio_fallback_crypt_ctx\00", [41 x i8] zeroinitializer }, align 32
@bio_fallback_crypt_ctx_cache = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__num_online_cpus = external dso_local global %struct.atomic_t, align 4
@switch.table.blk_crypto_fallback_bio_prep = internal constant { [7 x i16], [18 x i8] } { [7 x i16] [i16 0, i16 0, i16 0, i16 0, i16 1, i16 0, i16 0], [18 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 4294967181, i64 4294967280]
@__sancov_gen_cov_switch_values.9 = internal global [4 x i64] [i64 2, i64 32, i64 4294967181, i64 4294967280]
@___asan_gen_.10 = private unnamed_addr constant [23 x i8] c"num_prealloc_bounce_pg\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 25, i32 21 }
@___asan_gen_.13 = private unnamed_addr constant [24 x i8] c"blk_crypto_num_keyslots\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 30, i32 21 }
@___asan_gen_.16 = private unnamed_addr constant [33 x i8] c"num_prealloc_fallback_crypt_ctxs\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 35, i32 21 }
@___asan_gen_.19 = private unnamed_addr constant [12 x i8] c"tfms_inited\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 74, i32 13 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 496, i32 6 }
@___asan_gen_.25 = private unnamed_addr constant [28 x i8] c"blk_crypto_fallback_profile\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 81, i32 34 }
@___asan_gen_.28 = private unnamed_addr constant [28 x i8] c"bio_fallback_crypt_ctx_pool\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 62, i32 19 }
@___asan_gen_.31 = private unnamed_addr constant [15 x i8] c"tfms_init_lock\00", align 1
@___asan_gen_.34 = private unnamed_addr constant [20 x i8] c"blk_crypto_keyslots\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 79, i32 4 }
@___asan_gen_.37 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 640, i32 5 }
@___asan_gen_.46 = private unnamed_addr constant [28 x i8] c"blk_crypto_bounce_page_pool\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 83, i32 19 }
@___asan_gen_.53 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 87, i32 2 }
@___asan_gen_.55 = private unnamed_addr constant [17 x i8] c"crypto_bio_split\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 84, i32 23 }
@___asan_gen_.58 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 465, i32 2 }
@___asan_gen_.64 = private unnamed_addr constant [14 x i8] c"blk_crypto_wq\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 82, i32 33 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 73, i32 8 }
@___asan_gen_.73 = private unnamed_addr constant [27 x i8] c"blk_crypto_fallback_inited\00", align 1
@___asan_gen_.74 = private unnamed_addr constant [10 x i8] c"blank_key\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 90, i32 11 }
@___asan_gen_.77 = private unnamed_addr constant [27 x i8] c"blk_crypto_fallback_ll_ops\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 139, i32 39 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 561, i32 34 }
@___asan_gen_.83 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 578, i32 33 }
@___asan_gen_.86 = private unnamed_addr constant [29 x i8] c"bio_fallback_crypt_ctx_cache\00", align 1
@___asan_gen_.87 = private constant [31 x i8] c"../block/blk-crypto-fallback.c\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 61, i32 27 }
@___asan_gen_.89 = private unnamed_addr constant [42 x i8] c"switch.table.blk_crypto_fallback_bio_prep\00", align 1
@llvm.compiler.used = appending global [38 x ptr] [ptr @__UNIQUE_ID_num_keyslots297, ptr @__UNIQUE_ID_num_keyslotstype296, ptr @__UNIQUE_ID_num_prealloc_bounce_pg295, ptr @__UNIQUE_ID_num_prealloc_bounce_pgtype294, ptr @__UNIQUE_ID_num_prealloc_crypt_fallback_ctxs299, ptr @__UNIQUE_ID_num_prealloc_fallback_crypt_ctxstype298, ptr @__param_num_keyslots, ptr @__param_num_prealloc_bounce_pg, ptr @__param_num_prealloc_fallback_crypt_ctxs, ptr @blk_crypto_fallback_start_using_mode._entry, ptr @blk_crypto_fallback_start_using_mode._entry_ptr, ptr @num_prealloc_bounce_pg, ptr @blk_crypto_num_keyslots, ptr @num_prealloc_fallback_crypt_ctxs, ptr @tfms_inited, ptr @.str, ptr @blk_crypto_fallback_profile, ptr @bio_fallback_crypt_ctx_pool, ptr @tfms_init_lock, ptr @blk_crypto_keyslots, ptr @.str.1, ptr @.str.2, ptr @blk_crypto_bounce_page_pool, ptr @init_completion.__key, ptr @.str.3, ptr @crypto_bio_split, ptr @blk_crypto_fallback_decrypt_endio.__key, ptr @.str.4, ptr @blk_crypto_wq, ptr @.str.5, ptr @.str.6, ptr @blk_crypto_fallback_inited, ptr @blank_key, ptr @blk_crypto_fallback_ll_ops, ptr @.str.7, ptr @.str.8, ptr @bio_fallback_crypt_ctx_cache, ptr @switch.table.blk_crypto_fallback_bio_prep], section "llvm.metadata"
@0 = internal global [28 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @num_prealloc_bounce_pg to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @blk_crypto_num_keyslots to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @num_prealloc_fallback_crypt_ctxs to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tfms_inited to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @blk_crypto_fallback_profile to i32), i32 248, i32 288, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bio_fallback_crypt_ctx_pool to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tfms_init_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @blk_crypto_keyslots to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @blk_crypto_fallback_start_using_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @blk_crypto_bounce_page_pool to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @crypto_bio_split to i32), i32 604, i32 736, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @blk_crypto_fallback_decrypt_endio.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @blk_crypto_wq to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @blk_crypto_fallback_inited to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @blank_key to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @blk_crypto_fallback_ll_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bio_fallback_crypt_ctx_cache to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.blk_crypto_fallback_bio_prep to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @blk_crypto_fallback_bio_prep(ptr nocapture noundef %bio_ptr) local_unnamed_addr #0 align 64 {
entry:
  %slot.i = alloca ptr, align 4
  %wait.i = alloca %struct.crypto_wait, align 4
  %curr_dun.i = alloca [4 x i64], align 8
  %src.i = alloca %struct.scatterlist, align 4
  %dst.i = alloca %struct.scatterlist, align 4
  %iv.i = alloca %union.blk_crypto_iv, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bio_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bio_ptr, align 4
  %bi_crypt_context = getelementptr inbounds %struct.bio, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %bi_crypt_context to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bi_crypt_context, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %arrayidx = getelementptr [4 x i8], ptr @tfms_inited, i32 0, i32 %7
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx, align 1, !range !78
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %land.rhs, label %if.end39

land.rhs:                                         ; preds = %entry
  %.b72 = load i1, ptr @blk_crypto_fallback_bio_prep.__already_done, align 1
  br i1 %.b72, label %land.rhs.if.then38_crit_edge, label %if.then, !prof !79

land.rhs.if.then38_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then38

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @blk_crypto_fallback_bio_prep.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 496, i32 noundef 9, ptr noundef null) #6
  br label %if.then38

if.then38:                                        ; preds = %if.then, %land.rhs.if.then38_crit_edge
  %bi_status = getelementptr inbounds %struct.bio, ptr %1, i32 0, i32 6
  %10 = ptrtoint ptr %bi_status to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 10, ptr %bi_status, align 2
  br label %cleanup

if.end39:                                         ; preds = %entry
  %call = tail call zeroext i1 @__blk_crypto_cfg_supported(ptr noundef nonnull @blk_crypto_fallback_profile, ptr noundef %5) #6
  br i1 %call, label %if.end44, label %if.then42

if.then42:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  %bi_status43 = getelementptr inbounds %struct.bio, ptr %1, i32 0, i32 6
  %11 = ptrtoint ptr %bi_status43 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %bi_status43, align 2
  br label %cleanup

if.end44:                                         ; preds = %if.end39
  %bi_opf = getelementptr inbounds %struct.bio, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %bi_opf to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bi_opf, align 8
  %and.i = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.end48, label %if.then46

if.then46:                                        ; preds = %if.end44
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %slot.i) #6
  %14 = ptrtoint ptr %slot.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 -1 to ptr), ptr %slot.i, align 4, !annotation !80
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %wait.i) #6
  %15 = getelementptr inbounds i8, ptr %wait.i, i32 4
  %16 = call ptr @memset(ptr %15, i32 255, i32 56)
  %17 = ptrtoint ptr %wait.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %wait.i, align 4
  call void @__init_swait_queue_head(ptr noundef %15, ptr noundef nonnull @.str.3, ptr noundef nonnull @init_completion.__key) #6
  %err.i = getelementptr inbounds %struct.crypto_wait, ptr %wait.i, i32 0, i32 1
  %18 = ptrtoint ptr %err.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %err.i, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %curr_dun.i) #6
  %19 = getelementptr inbounds [4 x i64], ptr %curr_dun.i, i32 0, i32 1
  %20 = getelementptr inbounds [4 x i64], ptr %curr_dun.i, i32 0, i32 2
  %21 = getelementptr inbounds [4 x i64], ptr %curr_dun.i, i32 0, i32 3
  %22 = call ptr @memset(ptr %curr_dun.i, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %src.i) #6
  %23 = getelementptr inbounds %struct.scatterlist, ptr %src.i, i32 0, i32 1
  %24 = getelementptr inbounds %struct.scatterlist, ptr %src.i, i32 0, i32 2
  %25 = call ptr @memset(ptr %src.i, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %dst.i) #6
  %26 = getelementptr inbounds %struct.scatterlist, ptr %dst.i, i32 0, i32 1
  %27 = getelementptr inbounds %struct.scatterlist, ptr %dst.i, i32 0, i32 2
  %28 = call ptr @memset(ptr %dst.i, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %iv.i) #6
  %29 = getelementptr inbounds [4 x i64], ptr %iv.i, i32 0, i32 1
  %30 = getelementptr inbounds [4 x i64], ptr %iv.i, i32 0, i32 2
  %31 = getelementptr inbounds [4 x i64], ptr %iv.i, i32 0, i32 3
  %32 = call ptr @memset(ptr %iv.i, i32 255, i32 32)
  %33 = ptrtoint ptr %bio_ptr to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %bio_ptr, align 4
  %iter.sroa.6.0.bi_iter.sroa_idx.i.i = getelementptr inbounds %struct.bio, ptr %34, i32 0, i32 8, i32 1
  %35 = ptrtoint ptr %iter.sroa.6.0.bi_iter.sroa_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %iter.sroa.6.0.copyload.i.i = load i32, ptr %iter.sroa.6.0.bi_iter.sroa_idx.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %iter.sroa.6.0.copyload.i.i)
  %tobool.not78.i.i = icmp eq i32 %iter.sroa.6.0.copyload.i.i, 0
  br i1 %tobool.not78.i.i, label %if.then46.for.end.i.i_crit_edge, label %land.rhs.lr.ph.i.i

if.then46.for.end.i.i_crit_edge:                  ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i.i

land.rhs.lr.ph.i.i:                               ; preds = %if.then46
  %bi_io_vec.i.i = getelementptr inbounds %struct.bio, ptr %34, i32 0, i32 20
  %iter.sroa.15.0.bi_iter.sroa_idx.i.i = getelementptr inbounds %struct.bio, ptr %34, i32 0, i32 8, i32 3
  %36 = ptrtoint ptr %iter.sroa.15.0.bi_iter.sroa_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %iter.sroa.15.0.copyload.i.i = load i32, ptr %iter.sroa.15.0.bi_iter.sroa_idx.i.i, align 8
  %iter.sroa.10.0.bi_iter.sroa_idx.i.i = getelementptr inbounds %struct.bio, ptr %34, i32 0, i32 8, i32 2
  %37 = ptrtoint ptr %iter.sroa.10.0.bi_iter.sroa_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %iter.sroa.10.0.copyload.i.i = load i32, ptr %iter.sroa.10.0.bi_iter.sroa_idx.i.i, align 4
  %38 = ptrtoint ptr %bi_io_vec.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %bi_io_vec.i.i, align 8
  %bi_opf.i.i.i.i = getelementptr inbounds %struct.bio, ptr %34, i32 0, i32 2
  br label %land.rhs.i.i

land.rhs.i.i:                                     ; preds = %bio_advance_iter_single.exit.i.i.land.rhs.i.i_crit_edge, %land.rhs.lr.ph.i.i
  %i.083.i.i = phi i32 [ 0, %land.rhs.lr.ph.i.i ], [ %inc.i.i, %bio_advance_iter_single.exit.i.i.land.rhs.i.i_crit_edge ]
  %num_sectors.082.i.i = phi i32 [ 0, %land.rhs.lr.ph.i.i ], [ %add33.i.i, %bio_advance_iter_single.exit.i.i.land.rhs.i.i_crit_edge ]
  %iter.sroa.6.081.i.i = phi i32 [ %iter.sroa.6.0.copyload.i.i, %land.rhs.lr.ph.i.i ], [ %sub.i.i.i.i, %bio_advance_iter_single.exit.i.i.land.rhs.i.i_crit_edge ]
  %iter.sroa.10.080.i.i = phi i32 [ %iter.sroa.10.0.copyload.i.i, %land.rhs.lr.ph.i.i ], [ %iter.sroa.10.2.i.i, %bio_advance_iter_single.exit.i.i.land.rhs.i.i_crit_edge ]
  %iter.sroa.15.079.i.i = phi i32 [ %iter.sroa.15.0.copyload.i.i, %land.rhs.lr.ph.i.i ], [ %iter.sroa.15.1.i.i, %bio_advance_iter_single.exit.i.i.land.rhs.i.i_crit_edge ]
  %bv_len9.i.i = getelementptr %struct.bio_vec, ptr %39, i32 %iter.sroa.10.080.i.i, i32 1
  %40 = ptrtoint ptr %bv_len9.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %bv_len9.i.i, align 4
  %sub.i.i = sub i32 %41, %iter.sroa.15.079.i.i
  %42 = call i32 @llvm.umin.i32(i32 %iter.sroa.6.081.i.i, i32 %sub.i.i) #6
  %bv_offset14.i.i = getelementptr %struct.bio_vec, ptr %39, i32 %iter.sroa.10.080.i.i, i32 2
  %43 = ptrtoint ptr %bv_offset14.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %bv_offset14.i.i, align 4
  %add16.i.i = add i32 %44, %iter.sroa.15.079.i.i
  %rem.i.i = and i32 %add16.i.i, 4095
  %sub17.i.i = sub nuw nsw i32 4096, %rem.i.i
  %45 = call i32 @llvm.umin.i32(i32 %42, i32 %sub17.i.i) #6
  %shr.i.i = lshr i32 %45, 9
  %add33.i.i = add i32 %shr.i.i, %num_sectors.082.i.i
  %inc.i.i = add nuw nsw i32 %i.083.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %inc.i.i)
  %cmp34.i.i = icmp eq i32 %inc.i.i, 256
  br i1 %cmp34.i.i, label %land.rhs.i.i.for.end.i.i_crit_edge, label %for.inc.i.i

land.rhs.i.i.for.end.i.i_crit_edge:               ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i.i

for.inc.i.i:                                      ; preds = %land.rhs.i.i
  %46 = ptrtoint ptr %bi_opf.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %bi_opf.i.i.i.i, align 8
  %and.i.i.i.i = and i32 %47, 255
  %48 = add nsw i32 %and.i.i.i.i, -3
  %switch.and.i.i.i.i = and i32 %48, -7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.and.i.i.i.i)
  %switch.selectcmp.i.i.i.i = icmp eq i32 %switch.and.i.i.i.i, 0
  br i1 %switch.selectcmp.i.i.i.i, label %for.inc.i.i.bio_advance_iter_single.exit.i.i_crit_edge, label %if.else.i.i.i

for.inc.i.i.bio_advance_iter_single.exit.i.i_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %bio_advance_iter_single.exit.i.i

if.else.i.i.i:                                    ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.i.i.i.i = add i32 %45, %iter.sroa.15.079.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i.i.i, i32 %41)
  %cmp.i.i.i.i = icmp eq i32 %add.i.i.i.i, %41
  %spec.select.i.i = select i1 %cmp.i.i.i.i, i32 0, i32 %add.i.i.i.i
  %inc.i.i.i.i = zext i1 %cmp.i.i.i.i to i32
  %spec.select77.i.i = add i32 %iter.sroa.10.080.i.i, %inc.i.i.i.i
  br label %bio_advance_iter_single.exit.i.i

bio_advance_iter_single.exit.i.i:                 ; preds = %if.else.i.i.i, %for.inc.i.i.bio_advance_iter_single.exit.i.i_crit_edge
  %iter.sroa.15.1.i.i = phi i32 [ %iter.sroa.15.079.i.i, %for.inc.i.i.bio_advance_iter_single.exit.i.i_crit_edge ], [ %spec.select.i.i, %if.else.i.i.i ]
  %iter.sroa.10.2.i.i = phi i32 [ %iter.sroa.10.080.i.i, %for.inc.i.i.bio_advance_iter_single.exit.i.i_crit_edge ], [ %spec.select77.i.i, %if.else.i.i.i ]
  %sub.i.i.i.i = sub i32 %iter.sroa.6.081.i.i, %45
  %tobool.not.i.i = icmp eq i32 %sub.i.i.i.i, 0
  br i1 %tobool.not.i.i, label %bio_advance_iter_single.exit.i.i.for.end.i.i_crit_edge, label %bio_advance_iter_single.exit.i.i.land.rhs.i.i_crit_edge

bio_advance_iter_single.exit.i.i.land.rhs.i.i_crit_edge: ; preds = %bio_advance_iter_single.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.rhs.i.i

bio_advance_iter_single.exit.i.i.for.end.i.i_crit_edge: ; preds = %bio_advance_iter_single.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %bio_advance_iter_single.exit.i.i.for.end.i.i_crit_edge, %land.rhs.i.i.for.end.i.i_crit_edge, %if.then46.for.end.i.i_crit_edge
  %num_sectors.1.i.i = phi i32 [ 0, %if.then46.for.end.i.i_crit_edge ], [ %add33.i.i, %land.rhs.i.i.for.end.i.i_crit_edge ], [ %add33.i.i, %bio_advance_iter_single.exit.i.i.for.end.i.i_crit_edge ]
  %shr38.i.i = lshr i32 %iter.sroa.6.0.copyload.i.i, 9
  call void @__sanitizer_cov_trace_cmp4(i32 %num_sectors.1.i.i, i32 %shr38.i.i)
  %cmp39.i.i = icmp ult i32 %num_sectors.1.i.i, %shr38.i.i
  br i1 %cmp39.i.i, label %if.then40.i.i, label %for.end.i.i.if.end.i_crit_edge

for.end.i.i.if.end.i_crit_edge:                   ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then40.i.i:                                    ; preds = %for.end.i.i
  %call.i.i = call ptr @bio_split(ptr noundef %34, i32 noundef %num_sectors.1.i.i, i32 noundef 3072, ptr noundef nonnull @crypto_bio_split) #6
  %tobool41.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool41.not.i.i, label %blk_crypto_fallback_split_bio_if_needed.exit.i, label %if.end43.i.i

if.end43.i.i:                                     ; preds = %if.then40.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @bio_chain(ptr noundef nonnull %call.i.i, ptr noundef %34) #6
  call void @submit_bio_noacct(ptr noundef %34) #6
  %49 = ptrtoint ptr %bio_ptr to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call.i.i, ptr %bio_ptr, align 4
  br label %if.end.i

blk_crypto_fallback_split_bio_if_needed.exit.i:   ; preds = %if.then40.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %bi_status.i.i = getelementptr inbounds %struct.bio, ptr %34, i32 0, i32 6
  %50 = ptrtoint ptr %bi_status.i.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 9, ptr %bi_status.i.i, align 2
  br label %blk_crypto_fallback_encrypt_bio.exit

if.end.i:                                         ; preds = %if.end43.i.i, %for.end.i.i.if.end.i_crit_edge
  %51 = ptrtoint ptr %bio_ptr to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %bio_ptr, align 4
  %bi_crypt_context.i = getelementptr inbounds %struct.bio, ptr %52, i32 0, i32 15
  %53 = ptrtoint ptr %bi_crypt_context.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %bi_crypt_context.i, align 8
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %54, align 8
  %data_unit_size3.i = getelementptr inbounds %struct.blk_crypto_config, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %data_unit_size3.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %data_unit_size3.i, align 4
  %bi_opf.i.i.i = getelementptr inbounds %struct.bio, ptr %52, i32 0, i32 2
  %59 = ptrtoint ptr %bi_opf.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %bi_opf.i.i.i, align 8
  %trunc.i.i.i = trunc i32 %60 to i8
  %switch.tableidx = add i8 %trunc.i.i.i, -3
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %switch.tableidx)
  %61 = icmp ult i8 %switch.tableidx, 7
  br i1 %61, label %switch.hole_check, label %if.end.i.sw.epilog.i.i.i_crit_edge

if.end.i.sw.epilog.i.i.i_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i.i.i

sw.epilog.i.i.i:                                  ; preds = %switch.hole_check.sw.epilog.i.i.i_crit_edge, %if.end.i.sw.epilog.i.i.i_crit_edge
  %iter.sroa.6.0.bi_iter.sroa_idx.i.i.i = getelementptr inbounds %struct.bio, ptr %52, i32 0, i32 8, i32 1
  %62 = ptrtoint ptr %iter.sroa.6.0.bi_iter.sroa_idx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %iter.sroa.6.0.copyload.i.i.i = load i32, ptr %iter.sroa.6.0.bi_iter.sroa_idx.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %iter.sroa.6.0.copyload.i.i.i)
  %tobool.not54.i.i.i = icmp eq i32 %iter.sroa.6.0.copyload.i.i.i, 0
  br i1 %tobool.not54.i.i.i, label %sw.epilog.i.i.i.bio_segments.exit.i.i_crit_edge, label %land.rhs.lr.ph.i.i.i

sw.epilog.i.i.i.bio_segments.exit.i.i_crit_edge:  ; preds = %sw.epilog.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %bio_segments.exit.i.i

land.rhs.lr.ph.i.i.i:                             ; preds = %sw.epilog.i.i.i
  %iter.sroa.15.0.bi_iter.sroa_idx.i.i.i = getelementptr inbounds %struct.bio, ptr %52, i32 0, i32 8, i32 3
  %63 = ptrtoint ptr %iter.sroa.15.0.bi_iter.sroa_idx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %iter.sroa.15.0.copyload.i.i.i = load i32, ptr %iter.sroa.15.0.bi_iter.sroa_idx.i.i.i, align 8
  %iter.sroa.10.0.bi_iter.sroa_idx.i.i.i = getelementptr inbounds %struct.bio, ptr %52, i32 0, i32 8, i32 2
  %64 = ptrtoint ptr %iter.sroa.10.0.bi_iter.sroa_idx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %iter.sroa.10.0.copyload.i.i.i = load i32, ptr %iter.sroa.10.0.bi_iter.sroa_idx.i.i.i, align 4
  %bi_io_vec.i.i.i = getelementptr inbounds %struct.bio, ptr %52, i32 0, i32 20
  %65 = ptrtoint ptr %bi_io_vec.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %bi_io_vec.i.i.i, align 8
  %and.i.i.i.i.i = and i32 %60, 255
  %67 = add nsw i32 %and.i.i.i.i.i, -3
  %switch.and.i.i.i.i.i = and i32 %67, -7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.and.i.i.i.i.i)
  %switch.selectcmp.i.i.i.i.i = icmp eq i32 %switch.and.i.i.i.i.i, 0
  br label %land.rhs.i.i.i

land.rhs.i.i.i:                                   ; preds = %bio_advance_iter_single.exit.i.i.i.land.rhs.i.i.i_crit_edge, %land.rhs.lr.ph.i.i.i
  %segs.058.i.i.i = phi i32 [ 0, %land.rhs.lr.ph.i.i.i ], [ %inc.i.i.i, %bio_advance_iter_single.exit.i.i.i.land.rhs.i.i.i_crit_edge ]
  %iter.sroa.6.057.i.i.i = phi i32 [ %iter.sroa.6.0.copyload.i.i.i, %land.rhs.lr.ph.i.i.i ], [ %sub.i.i.i.i.i, %bio_advance_iter_single.exit.i.i.i.land.rhs.i.i.i_crit_edge ]
  %iter.sroa.10.056.i.i.i = phi i32 [ %iter.sroa.10.0.copyload.i.i.i, %land.rhs.lr.ph.i.i.i ], [ %iter.sroa.10.2.i.i.i, %bio_advance_iter_single.exit.i.i.i.land.rhs.i.i.i_crit_edge ]
  %iter.sroa.15.055.i.i.i = phi i32 [ %iter.sroa.15.0.copyload.i.i.i, %land.rhs.lr.ph.i.i.i ], [ %iter.sroa.15.1.i.i.i, %bio_advance_iter_single.exit.i.i.i.land.rhs.i.i.i_crit_edge ]
  %bv_len10.i.i.i = getelementptr %struct.bio_vec, ptr %66, i32 %iter.sroa.10.056.i.i.i, i32 1
  %68 = ptrtoint ptr %bv_len10.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %bv_len10.i.i.i, align 4
  %sub.i.i.i = sub i32 %69, %iter.sroa.15.055.i.i.i
  %70 = call i32 @llvm.umin.i32(i32 %iter.sroa.6.057.i.i.i, i32 %sub.i.i.i) #6
  %bv_offset15.i.i.i = getelementptr %struct.bio_vec, ptr %66, i32 %iter.sroa.10.056.i.i.i, i32 2
  %71 = ptrtoint ptr %bv_offset15.i.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %bv_offset15.i.i.i, align 4
  %add17.i.i.i = add i32 %72, %iter.sroa.15.055.i.i.i
  %rem.i.i.i = and i32 %add17.i.i.i, 4095
  %sub18.i.i.i = sub nuw nsw i32 4096, %rem.i.i.i
  %73 = call i32 @llvm.umin.i32(i32 %70, i32 %sub18.i.i.i) #6
  %inc.i.i.i = add i32 %segs.058.i.i.i, 1
  br i1 %switch.selectcmp.i.i.i.i.i, label %land.rhs.i.i.i.bio_advance_iter_single.exit.i.i.i_crit_edge, label %if.else.i.i.i.i

land.rhs.i.i.i.bio_advance_iter_single.exit.i.i.i_crit_edge: ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %bio_advance_iter_single.exit.i.i.i

if.else.i.i.i.i:                                  ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.i.i.i.i.i = add i32 %73, %iter.sroa.15.055.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i.i.i.i, i32 %69)
  %cmp.i.i.i.i.i = icmp eq i32 %add.i.i.i.i.i, %69
  %spec.select.i.i.i = select i1 %cmp.i.i.i.i.i, i32 0, i32 %add.i.i.i.i.i
  %inc.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i to i32
  %spec.select53.i.i.i = add i32 %iter.sroa.10.056.i.i.i, %inc.i.i.i.i.i
  br label %bio_advance_iter_single.exit.i.i.i

bio_advance_iter_single.exit.i.i.i:               ; preds = %if.else.i.i.i.i, %land.rhs.i.i.i.bio_advance_iter_single.exit.i.i.i_crit_edge
  %iter.sroa.15.1.i.i.i = phi i32 [ %iter.sroa.15.055.i.i.i, %land.rhs.i.i.i.bio_advance_iter_single.exit.i.i.i_crit_edge ], [ %spec.select.i.i.i, %if.else.i.i.i.i ]
  %iter.sroa.10.2.i.i.i = phi i32 [ %iter.sroa.10.056.i.i.i, %land.rhs.i.i.i.bio_advance_iter_single.exit.i.i.i_crit_edge ], [ %spec.select53.i.i.i, %if.else.i.i.i.i ]
  %sub.i.i.i.i.i = sub i32 %iter.sroa.6.057.i.i.i, %73
  %tobool.not.i.i.i = icmp eq i32 %sub.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %bio_segments.exit.loopexit.i.i, label %bio_advance_iter_single.exit.i.i.i.land.rhs.i.i.i_crit_edge

bio_advance_iter_single.exit.i.i.i.land.rhs.i.i.i_crit_edge: ; preds = %bio_advance_iter_single.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.rhs.i.i.i

bio_segments.exit.loopexit.i.i:                   ; preds = %bio_advance_iter_single.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %phi.cast.i.i = trunc i32 %inc.i.i.i to i16
  br label %bio_segments.exit.i.i

switch.hole_check:                                ; preds = %if.end.i
  %switch.shifted = lshr i8 85, %switch.tableidx
  %74 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %74)
  %switch.lobit.not = icmp eq i8 %74, 0
  br i1 %switch.lobit.not, label %switch.hole_check.sw.epilog.i.i.i_crit_edge, label %switch.lookup

switch.hole_check.sw.epilog.i.i.i_crit_edge:      ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i.i.i

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #8
  %75 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [7 x i16], ptr @switch.table.blk_crypto_fallback_bio_prep, i32 0, i32 %75
  %76 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load2_noabort(i32 %76)
  %switch.load = load i16, ptr %switch.gep, align 2
  br label %bio_segments.exit.i.i

bio_segments.exit.i.i:                            ; preds = %switch.lookup, %bio_segments.exit.loopexit.i.i, %sw.epilog.i.i.i.bio_segments.exit.i.i_crit_edge
  %retval.0.i.i.i = phi i16 [ 0, %sw.epilog.i.i.i.bio_segments.exit.i.i_crit_edge ], [ %phi.cast.i.i, %bio_segments.exit.loopexit.i.i ], [ %switch.load, %switch.lookup ]
  %call1.i.i = call ptr @bio_kmalloc(i32 noundef 3072, i16 noundef zeroext %retval.0.i.i.i) #6
  %tobool.not.i111.i = icmp eq ptr %call1.i.i, null
  br i1 %tobool.not.i111.i, label %if.then5.i, label %if.end.i.i

if.end.i.i:                                       ; preds = %bio_segments.exit.i.i
  %bi_bdev.i.i = getelementptr inbounds %struct.bio, ptr %52, i32 0, i32 1
  %77 = ptrtoint ptr %bi_bdev.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %bi_bdev.i.i, align 4
  %bi_bdev2.i.i = getelementptr inbounds %struct.bio, ptr %call1.i.i, i32 0, i32 1
  %79 = ptrtoint ptr %bi_bdev2.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %78, ptr %bi_bdev2.i.i, align 4
  %bi_flags.i.i.i = getelementptr inbounds %struct.bio, ptr %52, i32 0, i32 3
  %80 = ptrtoint ptr %bi_flags.i.i.i to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %bi_flags.i.i.i, align 4
  %82 = and i16 %81, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %82)
  %cmp.i.not.i.i = icmp eq i16 %82, 0
  br i1 %cmp.i.not.i.i, label %if.end.i.i.if.end5.i.i_crit_edge, label %if.then4.i.i

if.end.i.i.if.end5.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5.i.i

if.then4.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %bi_flags.i87.i.i = getelementptr inbounds %struct.bio, ptr %call1.i.i, i32 0, i32 3
  %83 = ptrtoint ptr %bi_flags.i87.i.i to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %bi_flags.i87.i.i, align 4
  %85 = or i16 %84, 2048
  store i16 %85, ptr %bi_flags.i87.i.i, align 4
  br label %if.end5.i.i

if.end5.i.i:                                      ; preds = %if.then4.i.i, %if.end.i.i.if.end5.i.i_crit_edge
  %86 = ptrtoint ptr %bi_opf.i.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %bi_opf.i.i.i, align 8
  %bi_opf6.i.i = getelementptr inbounds %struct.bio, ptr %call1.i.i, i32 0, i32 2
  %88 = ptrtoint ptr %bi_opf6.i.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %87, ptr %bi_opf6.i.i, align 8
  %bi_ioprio.i.i = getelementptr inbounds %struct.bio, ptr %52, i32 0, i32 4
  %89 = ptrtoint ptr %bi_ioprio.i.i to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %bi_ioprio.i.i, align 2
  %bi_ioprio7.i.i = getelementptr inbounds %struct.bio, ptr %call1.i.i, i32 0, i32 4
  %91 = ptrtoint ptr %bi_ioprio7.i.i to i32
  call void @__asan_store2_noabort(i32 %91)
  store i16 %90, ptr %bi_ioprio7.i.i, align 2
  %bi_write_hint.i.i = getelementptr inbounds %struct.bio, ptr %52, i32 0, i32 5
  %92 = ptrtoint ptr %bi_write_hint.i.i to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %bi_write_hint.i.i, align 8
  %bi_write_hint8.i.i = getelementptr inbounds %struct.bio, ptr %call1.i.i, i32 0, i32 5
  %94 = ptrtoint ptr %bi_write_hint8.i.i to i32
  call void @__asan_store2_noabort(i32 %94)
  store i16 %93, ptr %bi_write_hint8.i.i, align 8
  %bi_iter.i.i = getelementptr inbounds %struct.bio, ptr %52, i32 0, i32 8
  %95 = ptrtoint ptr %bi_iter.i.i to i32
  call void @__asan_load8_noabort(i32 %95)
  %96 = load i64, ptr %bi_iter.i.i, align 8
  %bi_iter9.i.i = getelementptr inbounds %struct.bio, ptr %call1.i.i, i32 0, i32 8
  %97 = ptrtoint ptr %bi_iter9.i.i to i32
  call void @__asan_store8_noabort(i32 %97)
  store i64 %96, ptr %bi_iter9.i.i, align 8
  %bi_size.i.i = getelementptr inbounds %struct.bio, ptr %52, i32 0, i32 8, i32 1
  %98 = ptrtoint ptr %bi_size.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %bi_size.i.i, align 8
  %bi_size13.i.i = getelementptr inbounds %struct.bio, ptr %call1.i.i, i32 0, i32 8, i32 1
  %100 = ptrtoint ptr %bi_size13.i.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %99, ptr %bi_size13.i.i, align 8
  %iter.sroa.6.0.copyload.i112.i = load i32, ptr %bi_size.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %iter.sroa.6.0.copyload.i112.i)
  %tobool16.not100.i.i = icmp eq i32 %iter.sroa.6.0.copyload.i112.i, 0
  br i1 %tobool16.not100.i.i, label %if.end5.i.i.if.end6.i_crit_edge, label %land.rhs.lr.ph.i116.i

if.end5.i.i.if.end6.i_crit_edge:                  ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6.i

land.rhs.lr.ph.i116.i:                            ; preds = %if.end5.i.i
  %iter.sroa.16.0.bi_iter.sroa_idx.i.i = getelementptr inbounds %struct.bio, ptr %52, i32 0, i32 8, i32 3
  %101 = ptrtoint ptr %iter.sroa.16.0.bi_iter.sroa_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %iter.sroa.16.0.copyload.i.i = load i32, ptr %iter.sroa.16.0.bi_iter.sroa_idx.i.i, align 8
  %iter.sroa.10.0.bi_iter.sroa_idx.i113.i = getelementptr inbounds %struct.bio, ptr %52, i32 0, i32 8, i32 2
  %102 = ptrtoint ptr %iter.sroa.10.0.bi_iter.sroa_idx.i113.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %iter.sroa.10.0.copyload.i114.i = load i32, ptr %iter.sroa.10.0.bi_iter.sroa_idx.i113.i, align 4
  %bi_io_vec.i115.i = getelementptr inbounds %struct.bio, ptr %52, i32 0, i32 20
  %bi_io_vec50.i.i = getelementptr inbounds %struct.bio, ptr %call1.i.i, i32 0, i32 20
  %bi_vcnt.i.i = getelementptr inbounds %struct.bio, ptr %call1.i.i, i32 0, i32 17
  br label %land.rhs.i123.i

land.rhs.i123.i:                                  ; preds = %bio_advance_iter_single.exit.i131.i.land.rhs.i123.i_crit_edge, %land.rhs.lr.ph.i116.i
  %iter.sroa.6.0103.i.i = phi i32 [ %iter.sroa.6.0.copyload.i112.i, %land.rhs.lr.ph.i116.i ], [ %sub.i.i.i130.i, %bio_advance_iter_single.exit.i131.i.land.rhs.i123.i_crit_edge ]
  %iter.sroa.10.0102.i.i = phi i32 [ %iter.sroa.10.0.copyload.i114.i, %land.rhs.lr.ph.i116.i ], [ %iter.sroa.10.2.i129.i, %bio_advance_iter_single.exit.i131.i.land.rhs.i123.i_crit_edge ]
  %iter.sroa.16.0101.i.i = phi i32 [ %iter.sroa.16.0.copyload.i.i, %land.rhs.lr.ph.i116.i ], [ %iter.sroa.16.1.i.i, %bio_advance_iter_single.exit.i131.i.land.rhs.i123.i_crit_edge ]
  %103 = ptrtoint ptr %bi_io_vec.i115.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %bi_io_vec.i115.i, align 8
  %arrayidx.i.i = getelementptr %struct.bio_vec, ptr %104, i32 %iter.sroa.10.0102.i.i
  %105 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %arrayidx.i.i, align 4
  %bv_offset.i.i = getelementptr %struct.bio_vec, ptr %104, i32 %iter.sroa.10.0102.i.i, i32 2
  %107 = ptrtoint ptr %bv_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %bv_offset.i.i, align 4
  %add.i.i = add i32 %108, %iter.sroa.16.0101.i.i
  %div86.i.i = lshr i32 %add.i.i, 12
  %add.ptr.i.i = getelementptr %struct.page, ptr %106, i32 %div86.i.i
  %bv_len25.i.i = getelementptr %struct.bio_vec, ptr %104, i32 %iter.sroa.10.0102.i.i, i32 1
  %109 = ptrtoint ptr %bv_len25.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %bv_len25.i.i, align 4
  %sub.i117.i = sub i32 %110, %iter.sroa.16.0101.i.i
  %111 = call i32 @llvm.umin.i32(i32 %iter.sroa.6.0103.i.i, i32 %sub.i117.i) #6
  %rem.i118.i = and i32 %add.i.i, 4095
  %sub34.i.i = sub nuw nsw i32 4096, %rem.i118.i
  %112 = call i32 @llvm.umin.i32(i32 %111, i32 %sub34.i.i) #6
  %113 = ptrtoint ptr %bi_io_vec50.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %bi_io_vec50.i.i, align 8
  %115 = ptrtoint ptr %bi_vcnt.i.i to i32
  call void @__asan_load2_noabort(i32 %115)
  %116 = load i16, ptr %bi_vcnt.i.i, align 8
  %inc.i119.i = add i16 %116, 1
  store i16 %inc.i119.i, ptr %bi_vcnt.i.i, align 8
  %idxprom.i.i = zext i16 %116 to i32
  %arrayidx51.i.i = getelementptr %struct.bio_vec, ptr %114, i32 %idxprom.i.i
  %117 = ptrtoint ptr %arrayidx51.i.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr %add.ptr.i.i, ptr %arrayidx51.i.i, align 4
  %bv.sroa.5.0.arrayidx51.sroa_idx.i.i = getelementptr inbounds i8, ptr %arrayidx51.i.i, i32 4
  %118 = ptrtoint ptr %bv.sroa.5.0.arrayidx51.sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %112, ptr %bv.sroa.5.0.arrayidx51.sroa_idx.i.i, align 4
  %bv.sroa.8.0.arrayidx51.sroa_idx.i.i = getelementptr inbounds i8, ptr %arrayidx51.i.i, i32 8
  %119 = ptrtoint ptr %bv.sroa.8.0.arrayidx51.sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %rem.i118.i, ptr %bv.sroa.8.0.arrayidx51.sroa_idx.i.i, align 4
  %120 = ptrtoint ptr %bi_opf.i.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %bi_opf.i.i.i, align 8
  %and.i.i.i120.i = and i32 %121, 255
  %122 = add nsw i32 %and.i.i.i120.i, -3
  %switch.and.i.i.i121.i = and i32 %122, -7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.and.i.i.i121.i)
  %switch.selectcmp.i.i.i122.i = icmp eq i32 %switch.and.i.i.i121.i, 0
  br i1 %switch.selectcmp.i.i.i122.i, label %land.rhs.i123.i.bio_advance_iter_single.exit.i131.i_crit_edge, label %if.else.i.i128.i

land.rhs.i123.i.bio_advance_iter_single.exit.i131.i_crit_edge: ; preds = %land.rhs.i123.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %bio_advance_iter_single.exit.i131.i

if.else.i.i128.i:                                 ; preds = %land.rhs.i123.i
  call void @__sanitizer_cov_trace_pc() #8
  %123 = ptrtoint ptr %bi_io_vec.i115.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %bi_io_vec.i115.i, align 8
  %add.i.i.i124.i = add i32 %112, %iter.sroa.16.0101.i.i
  %bv_len.i.i.i.i = getelementptr %struct.bio_vec, ptr %124, i32 %iter.sroa.10.0102.i.i, i32 1
  %125 = ptrtoint ptr %bv_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %bv_len.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i.i124.i, i32 %126)
  %cmp.i.i.i125.i = icmp eq i32 %add.i.i.i124.i, %126
  %spec.select.i126.i = select i1 %cmp.i.i.i125.i, i32 0, i32 %add.i.i.i124.i
  %inc.i.i.i127.i = zext i1 %cmp.i.i.i125.i to i32
  %spec.select99.i.i = add i32 %iter.sroa.10.0102.i.i, %inc.i.i.i127.i
  br label %bio_advance_iter_single.exit.i131.i

bio_advance_iter_single.exit.i131.i:              ; preds = %if.else.i.i128.i, %land.rhs.i123.i.bio_advance_iter_single.exit.i131.i_crit_edge
  %iter.sroa.16.1.i.i = phi i32 [ %iter.sroa.16.0101.i.i, %land.rhs.i123.i.bio_advance_iter_single.exit.i131.i_crit_edge ], [ %spec.select.i126.i, %if.else.i.i128.i ]
  %iter.sroa.10.2.i129.i = phi i32 [ %iter.sroa.10.0102.i.i, %land.rhs.i123.i.bio_advance_iter_single.exit.i131.i_crit_edge ], [ %spec.select99.i.i, %if.else.i.i128.i ]
  %sub.i.i.i130.i = sub i32 %iter.sroa.6.0103.i.i, %112
  %tobool16.not.i.i = icmp eq i32 %sub.i.i.i130.i, 0
  br i1 %tobool16.not.i.i, label %bio_advance_iter_single.exit.i131.i.if.end6.i_crit_edge, label %bio_advance_iter_single.exit.i131.i.land.rhs.i123.i_crit_edge

bio_advance_iter_single.exit.i131.i.land.rhs.i123.i_crit_edge: ; preds = %bio_advance_iter_single.exit.i131.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.rhs.i123.i

bio_advance_iter_single.exit.i131.i.if.end6.i_crit_edge: ; preds = %bio_advance_iter_single.exit.i131.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6.i

if.then5.i:                                       ; preds = %bio_segments.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %bi_status.i = getelementptr inbounds %struct.bio, ptr %52, i32 0, i32 6
  %127 = ptrtoint ptr %bi_status.i to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 9, ptr %bi_status.i, align 2
  br label %blk_crypto_fallback_encrypt_bio.exit

if.end6.i:                                        ; preds = %bio_advance_iter_single.exit.i131.i.if.end6.i_crit_edge, %if.end5.i.i.if.end6.i_crit_edge
  call void @bio_clone_blkg_association(ptr noundef nonnull %call1.i.i, ptr noundef %52) #6
  %bi_issue.i.i.i = getelementptr inbounds %struct.bio, ptr %call1.i.i, i32 0, i32 13
  %128 = ptrtoint ptr %bi_size13.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %bi_size13.i.i, align 8
  %shr.i89.i.i = lshr i32 %129, 9
  %conv.i90.i.i = zext i32 %shr.i89.i.i to i64
  %130 = ptrtoint ptr %bi_issue.i.i.i to i32
  call void @__asan_load8_noabort(i32 %130)
  %131 = load i64, ptr %bi_issue.i.i.i, align 8
  %and1.i.i.i.i = and i64 %131, -9223372036854775808
  %call.i.i.i.i.i = call i64 @ktime_get() #6
  %and2.i.i.i.i = and i64 %call.i.i.i.i.i, 2251799813685247
  %and.i.i91.i.i = shl i64 %conv.i90.i.i, 51
  %shl.i.i.i.i = and i64 %and.i.i91.i.i, 9221120237041090560
  %or.i.i.i.i = or i64 %and2.i.i.i.i, %and1.i.i.i.i
  %or3.i.i.i.i = or i64 %or.i.i.i.i, %shl.i.i.i.i
  %132 = ptrtoint ptr %bi_issue.i.i.i to i32
  call void @__asan_store8_noabort(i32 %132)
  store i64 %or3.i.i.i.i, ptr %bi_issue.i.i.i, align 8
  %133 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %54, align 8
  %call8.i = call zeroext i8 @blk_crypto_get_keyslot(ptr noundef nonnull @blk_crypto_fallback_profile, ptr noundef %134, ptr noundef nonnull %slot.i) #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call8.i)
  %cmp.not.i = icmp eq i8 %call8.i, 0
  br i1 %cmp.not.i, label %if.end12.i, label %out_put_enc_bio.thread.i

out_put_enc_bio.thread.i:                         ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #8
  %bi_status11.i = getelementptr inbounds %struct.bio, ptr %52, i32 0, i32 6
  %135 = ptrtoint ptr %bi_status11.i to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 %call8.i, ptr %bi_status11.i, align 2
  br label %if.then55.i

if.end12.i:                                       ; preds = %if.end6.i
  %136 = ptrtoint ptr %slot.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %slot.i, align 4
  %call.i133.i = call i32 @blk_crypto_keyslot_index(ptr noundef %137) #6
  %138 = load ptr, ptr @blk_crypto_keyslots, align 4
  %arrayidx.i134.i = getelementptr %struct.blk_crypto_fallback_keyslot, ptr %138, i32 %call.i133.i
  %139 = ptrtoint ptr %arrayidx.i134.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %arrayidx.i134.i, align 4
  %arrayidx1.i.i = getelementptr %struct.blk_crypto_fallback_keyslot, ptr %138, i32 %call.i133.i, i32 1, i32 %140
  %141 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %arrayidx1.i.i, align 4
  %143 = ptrtoint ptr %142 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %142, align 128
  %add.i.i.i = add i32 %144, 128
  %call9.i.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add.i.i.i, i32 noundef 3072) #9
  %tobool.not.i.i137.i = icmp eq ptr %call9.i.i.i.i, null
  br i1 %tobool.not.i.i137.i, label %out_put_enc_bio.thread167.i, label %if.end16.i, !prof !81

out_put_enc_bio.thread167.i:                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #8
  %bi_status15.i = getelementptr inbounds %struct.bio, ptr %52, i32 0, i32 6
  %145 = ptrtoint ptr %bi_status15.i to i32
  call void @__asan_store1_noabort(i32 %145)
  store i8 9, ptr %bi_status15.i, align 2
  %146 = ptrtoint ptr %slot.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %slot.i, align 4
  call void @blk_crypto_put_keyslot(ptr noundef %147) #6
  br label %if.then55.i

if.end16.i:                                       ; preds = %if.end12.i
  %base.i.i.i.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %142, i32 0, i32 2
  %tfm1.i.i.i.i = getelementptr inbounds %struct.skcipher_request, ptr %call9.i.i.i.i, i32 0, i32 4, i32 3
  %148 = ptrtoint ptr %tfm1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store ptr %base.i.i.i.i.i, ptr %tfm1.i.i.i.i, align 32
  %complete.i.i.i = getelementptr inbounds %struct.skcipher_request, ptr %call9.i.i.i.i, i32 0, i32 4, i32 1
  %149 = ptrtoint ptr %complete.i.i.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store ptr @crypto_req_done, ptr %complete.i.i.i, align 8
  %data2.i.i.i = getelementptr inbounds %struct.skcipher_request, ptr %call9.i.i.i.i, i32 0, i32 4, i32 2
  %150 = ptrtoint ptr %data2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %150)
  store ptr %wait.i, ptr %data2.i.i.i, align 4
  %flags4.i.i.i = getelementptr inbounds %struct.skcipher_request, ptr %call9.i.i.i.i, i32 0, i32 4, i32 4
  %151 = ptrtoint ptr %flags4.i.i.i to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 1536, ptr %flags4.i.i.i, align 4
  %bc_dun.i = getelementptr inbounds %struct.bio_crypt_ctx, ptr %54, i32 0, i32 1
  %152 = call ptr @memcpy(ptr %curr_dun.i, ptr %bc_dun.i, i32 32)
  call void @sg_init_table(ptr noundef nonnull %src.i, i32 noundef 1) #6
  call void @sg_init_table(ptr noundef nonnull %dst.i, i32 noundef 1) #6
  %src1.i.i = getelementptr inbounds %struct.skcipher_request, ptr %call9.i.i.i.i, i32 0, i32 2
  %153 = ptrtoint ptr %src1.i.i to i32
  call void @__asan_store4_noabort(i32 %153)
  store ptr %src.i, ptr %src1.i.i, align 8
  %dst2.i.i = getelementptr inbounds %struct.skcipher_request, ptr %call9.i.i.i.i, i32 0, i32 3
  %154 = ptrtoint ptr %dst2.i.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store ptr %dst.i, ptr %dst2.i.i, align 4
  %155 = ptrtoint ptr %call9.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 %58, ptr %call9.i.i.i.i, align 128
  %iv4.i.i = getelementptr inbounds %struct.skcipher_request, ptr %call9.i.i.i.i, i32 0, i32 1
  %156 = ptrtoint ptr %iv4.i.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store ptr %iv.i, ptr %iv4.i.i, align 4
  %bi_vcnt.i = getelementptr inbounds %struct.bio, ptr %call1.i.i, i32 0, i32 17
  %157 = ptrtoint ptr %bi_vcnt.i to i32
  call void @__asan_load2_noabort(i32 %157)
  %158 = load i16, ptr %bi_vcnt.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %158)
  %cmp20195.not.i = icmp eq i16 %158, 0
  br i1 %cmp20195.not.i, label %if.end16.i.for.end48.i_crit_edge, label %for.body.lr.ph.i

if.end16.i.for.end48.i_crit_edge:                 ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end48.i

for.body.lr.ph.i:                                 ; preds = %if.end16.i
  %bi_io_vec.i = getelementptr inbounds %struct.bio, ptr %call1.i.i, i32 0, i32 20
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc46.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.0196.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc47.i, %for.inc46.i.for.body.i_crit_edge ]
  %159 = ptrtoint ptr %bi_io_vec.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %bi_io_vec.i, align 8
  %arrayidx.i = getelementptr %struct.bio_vec, ptr %160, i32 %i.0196.i
  %161 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %arrayidx.i, align 4
  %163 = load ptr, ptr @blk_crypto_bounce_page_pool, align 4
  %call22.i = call noalias ptr @mempool_alloc(ptr noundef %163, i32 noundef 3072) #6
  %164 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %164)
  store ptr %call22.i, ptr %arrayidx.i, align 4
  %tobool24.not.i = icmp eq ptr %call22.i, null
  br i1 %tobool24.not.i, label %cleanup.i, label %if.end27.i

if.end27.i:                                       ; preds = %for.body.i
  %bv_offset.i = getelementptr %struct.bio_vec, ptr %160, i32 %i.0196.i, i32 2
  %165 = ptrtoint ptr %bv_offset.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %bv_offset.i, align 4
  %167 = ptrtoint ptr %src.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %src.i, align 4
  %169 = ptrtoint ptr %162 to i32
  %and2.i.i.i = and i32 %169, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool.not.i.i139.i = icmp eq i32 %and2.i.i.i, 0
  br i1 %tobool.not.i.i139.i, label %do.body11.i.i.i, label %do.body5.i.i.i, !prof !79

do.body5.i.i.i:                                   ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #6, !srcloc !82
  unreachable

do.body11.i.i.i:                                  ; preds = %if.end27.i
  %and.i.i.i140.i = and i32 %168, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i140.i)
  %tobool.i.not.i.i.i = icmp eq i32 %and.i.i.i140.i, 0
  br i1 %tobool.i.not.i.i.i, label %sg_set_page.exit.i, label %do.body19.i.i.i, !prof !79

do.body19.i.i.i:                                  ; preds = %do.body11.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #6, !srcloc !83
  unreachable

sg_set_page.exit.i:                               ; preds = %do.body11.i.i.i
  %and.i.i.i = and i32 %168, 3
  %or.i.i.i = or i32 %and.i.i.i, %169
  %170 = ptrtoint ptr %src.i to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 %or.i.i.i, ptr %src.i, align 4
  %171 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %171)
  store i32 %166, ptr %23, align 4
  %172 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 %58, ptr %24, align 4
  %173 = ptrtoint ptr %bv_offset.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %bv_offset.i, align 4
  %175 = ptrtoint ptr %dst.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %dst.i, align 4
  %177 = ptrtoint ptr %call22.i to i32
  %and2.i.i141.i = and i32 %177, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i141.i)
  %tobool.not.i.i142.i = icmp eq i32 %and2.i.i141.i, 0
  br i1 %tobool.not.i.i142.i, label %do.body11.i.i146.i, label %do.body5.i.i143.i, !prof !79

do.body5.i.i143.i:                                ; preds = %sg_set_page.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #6, !srcloc !82
  unreachable

do.body11.i.i146.i:                               ; preds = %sg_set_page.exit.i
  %and.i.i.i144.i = and i32 %176, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i144.i)
  %tobool.i.not.i.i145.i = icmp eq i32 %and.i.i.i144.i, 0
  br i1 %tobool.i.not.i.i145.i, label %sg_set_page.exit152.i, label %do.body19.i.i147.i, !prof !79

do.body19.i.i147.i:                               ; preds = %do.body11.i.i146.i
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #6, !srcloc !83
  unreachable

sg_set_page.exit152.i:                            ; preds = %do.body11.i.i146.i
  %and.i.i148.i = and i32 %176, 3
  %or.i.i149.i = or i32 %and.i.i148.i, %177
  %178 = ptrtoint ptr %dst.i to i32
  call void @__asan_store4_noabort(i32 %178)
  store i32 %or.i.i149.i, ptr %dst.i, align 4
  %179 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %179)
  store i32 %174, ptr %26, align 4
  %180 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 %58, ptr %27, align 4
  %bv_len.i = getelementptr %struct.bio_vec, ptr %160, i32 %i.0196.i, i32 1
  %181 = ptrtoint ptr %bv_len.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %bv_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %182)
  %cmp30191.not.i = icmp eq i32 %182, 0
  br i1 %cmp30191.not.i, label %sg_set_page.exit152.i.for.inc46.i_crit_edge, label %sg_set_page.exit152.i.for.body32.i_crit_edge

sg_set_page.exit152.i.for.body32.i_crit_edge:     ; preds = %sg_set_page.exit152.i
  br label %for.body32.i

sg_set_page.exit152.i.for.inc46.i_crit_edge:      ; preds = %sg_set_page.exit152.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc46.i

for.body32.i:                                     ; preds = %if.end39.i.for.body32.i_crit_edge, %sg_set_page.exit152.i.for.body32.i_crit_edge
  %j.0192.i = phi i32 [ %add43.i, %if.end39.i.for.body32.i_crit_edge ], [ 0, %sg_set_page.exit152.i.for.body32.i_crit_edge ]
  %183 = ptrtoint ptr %curr_dun.i to i32
  call void @__asan_load8_noabort(i32 %183)
  %184 = load i64, ptr %curr_dun.i, align 8
  %185 = call i64 @llvm.bswap.i64(i64 %184) #6
  %186 = ptrtoint ptr %iv.i to i32
  call void @__asan_store8_noabort(i32 %186)
  store i64 %185, ptr %iv.i, align 8
  %187 = ptrtoint ptr %19 to i32
  call void @__asan_load8_noabort(i32 %187)
  %188 = load i64, ptr %19, align 8
  %189 = call i64 @llvm.bswap.i64(i64 %188) #6
  %190 = ptrtoint ptr %29 to i32
  call void @__asan_store8_noabort(i32 %190)
  store i64 %189, ptr %29, align 8
  %191 = ptrtoint ptr %20 to i32
  call void @__asan_load8_noabort(i32 %191)
  %192 = load i64, ptr %20, align 8
  %193 = call i64 @llvm.bswap.i64(i64 %192) #6
  %194 = ptrtoint ptr %30 to i32
  call void @__asan_store8_noabort(i32 %194)
  store i64 %193, ptr %30, align 8
  %195 = ptrtoint ptr %21 to i32
  call void @__asan_load8_noabort(i32 %195)
  %196 = load i64, ptr %21, align 8
  %197 = call i64 @llvm.bswap.i64(i64 %196) #6
  %198 = ptrtoint ptr %31 to i32
  call void @__asan_store8_noabort(i32 %198)
  store i64 %197, ptr %31, align 8
  %call34.i = call i32 @crypto_skcipher_encrypt(ptr noundef nonnull %call9.i.i.i.i) #6
  %199 = zext i32 %call34.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %199, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call34.i, label %for.body32.i.crypto_wait_req.exit.i_crit_edge [
    i32 -115, label %for.body32.i.sw.bb.i.i_crit_edge
    i32 -16, label %for.body32.i.sw.bb.i.i_crit_edge111
  ]

for.body32.i.sw.bb.i.i_crit_edge111:              ; preds = %for.body32.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i.i

for.body32.i.sw.bb.i.i_crit_edge:                 ; preds = %for.body32.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i.i

for.body32.i.crypto_wait_req.exit.i_crit_edge:    ; preds = %for.body32.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %crypto_wait_req.exit.i

sw.bb.i.i:                                        ; preds = %for.body32.i.sw.bb.i.i_crit_edge, %for.body32.i.sw.bb.i.i_crit_edge111
  call void @wait_for_completion(ptr noundef nonnull %wait.i) #6
  %200 = ptrtoint ptr %wait.i to i32
  call void @__asan_store4_noabort(i32 %200)
  store i32 0, ptr %wait.i, align 4
  %201 = ptrtoint ptr %err.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %err.i, align 4
  br label %crypto_wait_req.exit.i

crypto_wait_req.exit.i:                           ; preds = %sw.bb.i.i, %for.body32.i.crypto_wait_req.exit.i_crit_edge
  %err.addr.0.i.i = phi i32 [ %call34.i, %for.body32.i.crypto_wait_req.exit.i_crit_edge ], [ %202, %sw.bb.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.addr.0.i.i)
  %tobool36.not.i = icmp eq i32 %err.addr.0.i.i, 0
  br i1 %tobool36.not.i, label %if.end39.i, label %cleanup.thread.i

cleanup.thread.i:                                 ; preds = %crypto_wait_req.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %inc.i = add nuw i32 %i.0196.i, 1
  %bi_status38.i = getelementptr inbounds %struct.bio, ptr %52, i32 0, i32 6
  %203 = ptrtoint ptr %bi_status38.i to i32
  call void @__asan_store1_noabort(i32 %203)
  store i8 10, ptr %bi_status38.i, align 2
  br label %while.body.i.preheader

while.body.i.preheader:                           ; preds = %cleanup.i.while.body.i.preheader_crit_edge, %cleanup.thread.i
  %i.2200.i.ph = phi i32 [ %i.0196.i, %cleanup.i.while.body.i.preheader_crit_edge ], [ %inc.i, %cleanup.thread.i ]
  br label %while.body.i

if.end39.i:                                       ; preds = %crypto_wait_req.exit.i
  call void @bio_crypt_dun_increment(ptr noundef nonnull %curr_dun.i, i32 noundef 1) #6
  %204 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %23, align 4
  %add.i = add i32 %205, %58
  store i32 %add.i, ptr %23, align 4
  %206 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %26, align 4
  %add42.i = add i32 %207, %58
  store i32 %add42.i, ptr %26, align 4
  %add43.i = add i32 %j.0192.i, %58
  %208 = ptrtoint ptr %bv_len.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %bv_len.i, align 4
  %cmp30.i = icmp ult i32 %add43.i, %209
  br i1 %cmp30.i, label %if.end39.i.for.body32.i_crit_edge, label %if.end39.i.for.inc46.i_crit_edge

if.end39.i.for.inc46.i_crit_edge:                 ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc46.i

if.end39.i.for.body32.i_crit_edge:                ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body32.i

cleanup.i:                                        ; preds = %for.body.i
  %bi_status26.i = getelementptr inbounds %struct.bio, ptr %52, i32 0, i32 6
  %210 = ptrtoint ptr %bi_status26.i to i32
  call void @__asan_store1_noabort(i32 %210)
  store i8 9, ptr %bi_status26.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0196.i)
  %cmp49.not199.i = icmp eq i32 %i.0196.i, 0
  br i1 %cmp49.not199.i, label %cleanup.i.out_put_enc_bio.i_crit_edge, label %cleanup.i.while.body.i.preheader_crit_edge

cleanup.i.while.body.i.preheader_crit_edge:       ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i.preheader

cleanup.i.out_put_enc_bio.i_crit_edge:            ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_put_enc_bio.i

for.inc46.i:                                      ; preds = %if.end39.i.for.inc46.i_crit_edge, %sg_set_page.exit152.i.for.inc46.i_crit_edge
  %inc47.i = add nuw nsw i32 %i.0196.i, 1
  %211 = ptrtoint ptr %bi_vcnt.i to i32
  call void @__asan_load2_noabort(i32 %211)
  %212 = load i16, ptr %bi_vcnt.i, align 8
  %conv19.i = zext i16 %212 to i32
  %cmp20.i = icmp ult i32 %inc47.i, %conv19.i
  br i1 %cmp20.i, label %for.inc46.i.for.body.i_crit_edge, label %for.inc46.i.for.end48.i_crit_edge

for.inc46.i.for.end48.i_crit_edge:                ; preds = %for.inc46.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end48.i

for.inc46.i.for.body.i_crit_edge:                 ; preds = %for.inc46.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.end48.i:                                      ; preds = %for.inc46.i.for.end48.i_crit_edge, %if.end16.i.for.end48.i_crit_edge
  %bi_private.i = getelementptr inbounds %struct.bio, ptr %call1.i.i, i32 0, i32 11
  %213 = ptrtoint ptr %bi_private.i to i32
  call void @__asan_store4_noabort(i32 %213)
  store ptr %52, ptr %bi_private.i, align 4
  %bi_end_io.i = getelementptr inbounds %struct.bio, ptr %call1.i.i, i32 0, i32 10
  %214 = ptrtoint ptr %bi_end_io.i to i32
  call void @__asan_store4_noabort(i32 %214)
  store ptr @blk_crypto_fallback_encrypt_endio, ptr %bi_end_io.i, align 8
  %215 = ptrtoint ptr %bio_ptr to i32
  call void @__asan_store4_noabort(i32 %215)
  store ptr %call1.i.i, ptr %bio_ptr, align 4
  br label %out_put_enc_bio.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.i.preheader
  %i.2200.i = phi i32 [ %dec.i, %while.body.i.while.body.i_crit_edge ], [ %i.2200.i.ph, %while.body.i.preheader ]
  %216 = ptrtoint ptr %bi_io_vec.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %bi_io_vec.i, align 8
  %dec.i = add nsw i32 %i.2200.i, -1
  %arrayidx52.i = getelementptr %struct.bio_vec, ptr %217, i32 %dec.i
  %218 = ptrtoint ptr %arrayidx52.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %arrayidx52.i, align 4
  %220 = load ptr, ptr @blk_crypto_bounce_page_pool, align 4
  call void @mempool_free(ptr noundef %219, ptr noundef %220) #6
  %cmp49.not.i = icmp eq i32 %dec.i, 0
  br i1 %cmp49.not.i, label %while.body.i.out_put_enc_bio.i_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

while.body.i.out_put_enc_bio.i_crit_edge:         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_put_enc_bio.i

out_put_enc_bio.i:                                ; preds = %while.body.i.out_put_enc_bio.i_crit_edge, %for.end48.i, %cleanup.i.out_put_enc_bio.i_crit_edge
  %cmp20177.i = phi i1 [ true, %for.end48.i ], [ false, %cleanup.i.out_put_enc_bio.i_crit_edge ], [ false, %while.body.i.out_put_enc_bio.i_crit_edge ]
  %enc_bio.0.i = phi ptr [ null, %for.end48.i ], [ %call1.i.i, %cleanup.i.out_put_enc_bio.i_crit_edge ], [ %call1.i.i, %while.body.i.out_put_enc_bio.i_crit_edge ]
  call void @kfree_sensitive(ptr noundef nonnull %call9.i.i.i.i) #6
  %221 = ptrtoint ptr %slot.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %slot.i, align 4
  call void @blk_crypto_put_keyslot(ptr noundef %222) #6
  %tobool54.not.i = icmp eq ptr %enc_bio.0.i, null
  br i1 %tobool54.not.i, label %out_put_enc_bio.i.blk_crypto_fallback_encrypt_bio.exit_crit_edge, label %out_put_enc_bio.i.if.then55.i_crit_edge

out_put_enc_bio.i.if.then55.i_crit_edge:          ; preds = %out_put_enc_bio.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then55.i

out_put_enc_bio.i.blk_crypto_fallback_encrypt_bio.exit_crit_edge: ; preds = %out_put_enc_bio.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %blk_crypto_fallback_encrypt_bio.exit

if.then55.i:                                      ; preds = %out_put_enc_bio.i.if.then55.i_crit_edge, %out_put_enc_bio.thread167.i, %out_put_enc_bio.thread.i
  %ret.2.off0166.i = phi i1 [ false, %out_put_enc_bio.thread.i ], [ %cmp20177.i, %out_put_enc_bio.i.if.then55.i_crit_edge ], [ false, %out_put_enc_bio.thread167.i ]
  %enc_bio.2165.i = phi ptr [ %call1.i.i, %out_put_enc_bio.thread.i ], [ %enc_bio.0.i, %out_put_enc_bio.i.if.then55.i_crit_edge ], [ %call1.i.i, %out_put_enc_bio.thread167.i ]
  call void @bio_put(ptr noundef nonnull %enc_bio.2165.i) #6
  br label %blk_crypto_fallback_encrypt_bio.exit

blk_crypto_fallback_encrypt_bio.exit:             ; preds = %if.then55.i, %out_put_enc_bio.i.blk_crypto_fallback_encrypt_bio.exit_crit_edge, %if.then5.i, %blk_crypto_fallback_split_bio_if_needed.exit.i
  %retval.0.i = phi i1 [ false, %if.then5.i ], [ false, %blk_crypto_fallback_split_bio_if_needed.exit.i ], [ %ret.2.off0166.i, %if.then55.i ], [ %cmp20177.i, %out_put_enc_bio.i.blk_crypto_fallback_encrypt_bio.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %iv.i) #6
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %dst.i) #6
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %src.i) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %curr_dun.i) #6
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %wait.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %slot.i) #6
  br label %cleanup

if.end48:                                         ; preds = %if.end44
  %223 = load ptr, ptr @bio_fallback_crypt_ctx_pool, align 4
  %call49 = tail call noalias ptr @mempool_alloc(ptr noundef %223, i32 noundef 3072) #6
  %224 = call ptr @memcpy(ptr %call49, ptr %3, i32 40)
  %crypt_iter = getelementptr inbounds %struct.bio_fallback_crypt_ctx, ptr %call49, i32 0, i32 1
  %bi_iter = getelementptr inbounds %struct.bio, ptr %1, i32 0, i32 8
  %225 = call ptr @memcpy(ptr %crypt_iter, ptr %bi_iter, i32 20)
  %bi_private = getelementptr inbounds %struct.bio, ptr %1, i32 0, i32 11
  %226 = ptrtoint ptr %bi_private to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %bi_private, align 4
  %228 = getelementptr inbounds %struct.bio_fallback_crypt_ctx, ptr %call49, i32 0, i32 2
  %229 = ptrtoint ptr %228 to i32
  call void @__asan_store4_noabort(i32 %229)
  store ptr %227, ptr %228, align 4
  %bi_end_io = getelementptr inbounds %struct.bio, ptr %1, i32 0, i32 10
  %230 = ptrtoint ptr %bi_end_io to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %bi_end_io, align 8
  %bi_end_io_orig = getelementptr inbounds %struct.bio_fallback_crypt_ctx, ptr %call49, i32 0, i32 2, i32 0, i32 0, i32 1
  %232 = ptrtoint ptr %bi_end_io_orig to i32
  call void @__asan_store4_noabort(i32 %232)
  store ptr %231, ptr %bi_end_io_orig, align 4
  store ptr %call49, ptr %bi_private, align 4
  store ptr @blk_crypto_fallback_decrypt_endio, ptr %bi_end_io, align 8
  %233 = ptrtoint ptr %bi_crypt_context to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %bi_crypt_context, align 8
  %tobool.i.not.i = icmp eq ptr %234, null
  br i1 %tobool.i.not.i, label %if.end48.cleanup_crit_edge, label %if.then.i

if.end48.cleanup_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then.i:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__bio_crypt_free_ctx(ptr noundef %1) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.end48.cleanup_crit_edge, %blk_crypto_fallback_encrypt_bio.exit, %if.then42, %if.then38
  %retval.0 = phi i1 [ false, %if.then38 ], [ %retval.0.i, %blk_crypto_fallback_encrypt_bio.exit ], [ false, %if.then42 ], [ true, %if.end48.cleanup_crit_edge ], [ true, %if.then.i ]
  ret i1 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__blk_crypto_cfg_supported(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @mempool_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @blk_crypto_fallback_decrypt_endio(ptr noundef %bio) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %bi_private = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 11
  %0 = ptrtoint ptr %bi_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bi_private, align 4
  %2 = getelementptr inbounds %struct.bio_fallback_crypt_ctx, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  store ptr %4, ptr %bi_private, align 4
  %bi_end_io_orig = getelementptr inbounds %struct.bio_fallback_crypt_ctx, ptr %1, i32 0, i32 2, i32 0, i32 0, i32 1
  %5 = ptrtoint ptr %bi_end_io_orig to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bi_end_io_orig, align 4
  %bi_end_io = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 10
  %7 = ptrtoint ptr %bi_end_io to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %bi_end_io, align 8
  %bi_status = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 6
  %8 = ptrtoint ptr %bi_status to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %bi_status, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %do.body, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %10 = load ptr, ptr @bio_fallback_crypt_ctx_pool, align 4
  tail call void @mempool_free(ptr noundef %1, ptr noundef %10) #6
  tail call void @bio_endio(ptr noundef %bio) #6
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__init_work(ptr noundef %2, i32 noundef 0) #6
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -64, ptr %2, align 4
  %lockdep_map = getelementptr inbounds %struct.bio_fallback_crypt_ctx, ptr %1, i32 0, i32 2, i32 0, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.4, ptr noundef nonnull @blk_crypto_fallback_decrypt_endio.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  %12 = ptrtoint ptr %bi_end_io_orig to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %bi_end_io_orig, ptr %bi_end_io_orig, align 4
  %prev.i = getelementptr inbounds %struct.bio_fallback_crypt_ctx, ptr %1, i32 0, i32 2, i32 0, i32 0, i32 1, i32 1
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %bi_end_io_orig, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.bio_fallback_crypt_ctx, ptr %1, i32 0, i32 2, i32 0, i32 0, i32 2
  %14 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @blk_crypto_fallback_decrypt_bio, ptr %func, align 4
  %bio7 = getelementptr inbounds %struct.bio_fallback_crypt_ctx, ptr %1, i32 0, i32 2, i32 0, i32 1
  %15 = ptrtoint ptr %bio7 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %bio, ptr %bio7, align 4
  %16 = load ptr, ptr @blk_crypto_wq, align 4
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %16, ptr noundef %2) #6
  br label %cleanup

cleanup:                                          ; preds = %do.body, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @blk_crypto_fallback_evict_key(ptr noundef %key) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__blk_crypto_evict_key(ptr noundef nonnull @blk_crypto_fallback_profile, ptr noundef %key) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__blk_crypto_evict_key(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @blk_crypto_fallback_start_using_mode(i32 noundef %mode_num) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [0 x %struct.blk_crypto_mode], ptr @blk_crypto_modes, i32 0, i32 %mode_num
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %arrayidx2 = getelementptr [4 x i8], ptr @tfms_inited, i32 0, i32 %mode_num
  %2 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load volatile i8, ptr %arrayidx2, align 1, !range !78
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !84
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge, !prof !81

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @mutex_lock_nested(ptr noundef nonnull @tfms_init_lock, i32 noundef 0) #6
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx2, align 1, !range !78
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool15.not = icmp eq i8 %5, 0
  br i1 %tobool15.not, label %if.end17, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end17:                                         ; preds = %if.end
  %call = tail call fastcc i32 @blk_crypto_fallback_init()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool18.not = icmp eq i32 %call, 0
  br i1 %tobool18.not, label %for.cond.preheader, label %if.end17.out_crit_edge

if.end17.out_crit_edge:                           ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

for.cond.preheader:                               ; preds = %if.end17
  %6 = load i32, ptr @blk_crypto_num_keyslots, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp126.not = icmp eq i32 %6, 0
  br i1 %cmp126.not, label %for.cond.preheader.do.end70_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.do.end70_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end70

for.body:                                         ; preds = %if.end60.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0127 = phi i32 [ %inc, %if.end60.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %7 = load ptr, ptr @blk_crypto_keyslots, align 4
  %call22 = tail call ptr @crypto_alloc_skcipher(ptr noundef %1, i32 noundef 0, i32 noundef 0) #6
  %arrayidx23 = getelementptr %struct.blk_crypto_fallback_keyslot, ptr %7, i32 %i.0127, i32 1, i32 %mode_num
  %8 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call22, ptr %arrayidx23, align 4
  %cmp.i = icmp ugt ptr %call22, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then27, label %if.end60

if.then27:                                        ; preds = %for.body
  %9 = ptrtoint ptr %call22 to i32
  %cmp31 = icmp eq ptr %call22, inttoptr (i32 -2 to ptr)
  br i1 %cmp31, label %land.end, label %if.then27.if.end57_crit_edge

if.then27.if.end57_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end57

land.end:                                         ; preds = %if.then27
  %.b124 = load i1, ptr @blk_crypto_fallback_start_using_mode.__already_done, align 1
  br i1 %.b124, label %land.end.if.end57_crit_edge, label %if.then43, !prof !79

land.end.if.end57_crit_edge:                      ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end57

if.then43:                                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @blk_crypto_fallback_start_using_mode.__already_done, align 1
  %call48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %1) #10
  br label %if.end57

if.end57:                                         ; preds = %if.then43, %land.end.if.end57_crit_edge, %if.then27.if.end57_crit_edge
  %err.0 = phi i32 [ %9, %if.then27.if.end57_crit_edge ], [ -65, %if.then43 ], [ -65, %land.end.if.end57_crit_edge ]
  %10 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %arrayidx23, align 4
  %11 = load i32, ptr @blk_crypto_num_keyslots, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp86128.not = icmp eq i32 %11, 0
  br i1 %cmp86128.not, label %if.end57.out_crit_edge, label %if.end57.for.body87_crit_edge

if.end57.for.body87_crit_edge:                    ; preds = %if.end57
  br label %for.body87

if.end57.out_crit_edge:                           ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end60:                                         ; preds = %for.body
  %base.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %call22, i32 0, i32 2
  %12 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %base.i.i, align 128
  %or.i.i = or i32 %13, 256
  store i32 %or.i.i, ptr %base.i.i, align 128
  %inc = add nuw i32 %i.0127, 1
  %14 = load i32, ptr @blk_crypto_num_keyslots, align 4
  %cmp = icmp ult i32 %inc, %14
  br i1 %cmp, label %if.end60.for.body_crit_edge, label %if.end60.do.end70_crit_edge

if.end60.do.end70_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end70

if.end60.for.body_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

do.end70:                                         ; preds = %if.end60.do.end70_crit_edge, %for.cond.preheader.do.end70_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !85
  %15 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store1_noabort(i32 %15)
  store volatile i8 1, ptr %arrayidx2, align 1
  br label %out

for.body87:                                       ; preds = %for.body87.for.body87_crit_edge, %if.end57.for.body87_crit_edge
  %i.1129 = phi i32 [ %inc94, %for.body87.for.body87_crit_edge ], [ 0, %if.end57.for.body87_crit_edge ]
  %16 = load ptr, ptr @blk_crypto_keyslots, align 4
  %arrayidx90 = getelementptr %struct.blk_crypto_fallback_keyslot, ptr %16, i32 %i.1129, i32 1, i32 %mode_num
  %17 = ptrtoint ptr %arrayidx90 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx90, align 4
  %base.i.i125 = getelementptr inbounds %struct.crypto_skcipher, ptr %18, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef %18, ptr noundef %base.i.i125) #6
  %19 = ptrtoint ptr %arrayidx90 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %arrayidx90, align 4
  %inc94 = add nuw i32 %i.1129, 1
  %20 = load i32, ptr @blk_crypto_num_keyslots, align 4
  %cmp86 = icmp ult i32 %inc94, %20
  br i1 %cmp86, label %for.body87.for.body87_crit_edge, label %for.body87.out_crit_edge

for.body87.out_crit_edge:                         ; preds = %for.body87
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

for.body87.for.body87_crit_edge:                  ; preds = %for.body87
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body87

out:                                              ; preds = %for.body87.out_crit_edge, %do.end70, %if.end57.out_crit_edge, %if.end17.out_crit_edge, %if.end.out_crit_edge
  %err.1 = phi i32 [ 0, %if.end.out_crit_edge ], [ %call, %if.end17.out_crit_edge ], [ 0, %do.end70 ], [ %err.0, %if.end57.out_crit_edge ], [ %err.0, %for.body87.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @tfms_init_lock) #6
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.1, %out ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @blk_crypto_fallback_init() unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %.b42 = load i1, ptr @blk_crypto_fallback_inited, align 1
  br i1 %.b42, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @prandom_bytes(ptr noundef nonnull @blank_key, i32 noundef 64) #6
  %call = tail call i32 @bioset_init(ptr noundef nonnull @crypto_bio_split, i32 noundef 64, i32 noundef 0, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %0 = load i32, ptr @blk_crypto_num_keyslots, align 4
  %call4 = tail call i32 @blk_crypto_profile_init(ptr noundef nonnull @blk_crypto_fallback_profile, i32 noundef %0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.end3.fail_free_bioset_crit_edge

if.end3.fail_free_bioset_crit_edge:               ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %fail_free_bioset

if.end7:                                          ; preds = %if.end3
  %1 = load i64, ptr @blk_crypto_fallback_ll_ops, align 8
  store i64 %1, ptr @blk_crypto_fallback_profile, align 8
  store i32 32, ptr getelementptr inbounds (%struct.blk_crypto_profile, ptr @blk_crypto_fallback_profile, i32 0, i32 1), align 8
  %2 = call ptr @memset(ptr getelementptr inbounds (%struct.blk_crypto_profile, ptr @blk_crypto_fallback_profile, i32 0, i32 2, i32 1), i32 255, i32 12)
  store i32 0, ptr getelementptr inbounds (%struct.blk_crypto_profile, ptr @blk_crypto_fallback_profile, i32 0, i32 2), align 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @__num_online_cpus, i32 noundef 4) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__num_online_cpus to i32))
  %3 = load volatile i32, ptr @__num_online_cpus, align 4
  %call11 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.7, i32 noundef 26, i32 noundef %3) #6
  store ptr %call11, ptr @blk_crypto_wq, align 4
  %tobool12.not = icmp eq ptr %call11, null
  br i1 %tobool12.not, label %if.end7.fail_destroy_profile_crit_edge, label %if.end14

if.end7.fail_destroy_profile_crit_edge:           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %fail_destroy_profile

if.end14:                                         ; preds = %if.end7
  %4 = load i32, ptr @blk_crypto_num_keyslots, align 4
  %5 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %4, i32 20) #6
  %6 = extractvalue { i32, i1 } %5, 1
  br i1 %6, label %kcalloc.exit.thread, label %if.end7.i.i, !prof !81

kcalloc.exit.thread:                              ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  store ptr null, ptr @blk_crypto_keyslots, align 4
  br label %fail_free_wq

if.end7.i.i:                                      ; preds = %if.end14
  %7 = extractvalue { i32, i1 } %5, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %7, i32 noundef 3520) #9
  store ptr %call8.i.i, ptr @blk_crypto_keyslots, align 4
  %tobool16.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool16.not, label %if.end7.i.i.fail_free_wq_crit_edge, label %if.end18

if.end7.i.i.fail_free_wq_crit_edge:               ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %fail_free_wq

if.end18:                                         ; preds = %if.end7.i.i
  %8 = load i32, ptr @num_prealloc_bounce_pg, align 4
  %call.i = tail call ptr @mempool_create(i32 noundef %8, ptr noundef nonnull @mempool_alloc_pages, ptr noundef nonnull @mempool_free_pages, ptr noundef null) #6
  store ptr %call.i, ptr @blk_crypto_bounce_page_pool, align 4
  %tobool20.not = icmp eq ptr %call.i, null
  br i1 %tobool20.not, label %if.end18.fail_free_keyslots_crit_edge, label %if.end22

if.end18.fail_free_keyslots_crit_edge:            ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %fail_free_keyslots

if.end22:                                         ; preds = %if.end18
  %call23 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.8, i32 noundef 112, i32 noundef 8, i32 noundef 0, ptr noundef null) #6
  store ptr %call23, ptr @bio_fallback_crypt_ctx_cache, align 4
  %tobool24.not = icmp eq ptr %call23, null
  br i1 %tobool24.not, label %if.end22.fail_free_bounce_page_pool_crit_edge, label %if.end26

if.end22.fail_free_bounce_page_pool_crit_edge:    ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %fail_free_bounce_page_pool

if.end26:                                         ; preds = %if.end22
  %9 = load i32, ptr @num_prealloc_fallback_crypt_ctxs, align 4
  %call.i43 = tail call ptr @mempool_create(i32 noundef %9, ptr noundef nonnull @mempool_alloc_slab, ptr noundef nonnull @mempool_free_slab, ptr noundef nonnull %call23) #6
  store ptr %call.i43, ptr @bio_fallback_crypt_ctx_pool, align 4
  %tobool28.not = icmp eq ptr %call.i43, null
  br i1 %tobool28.not, label %fail_free_crypt_ctx_cache, label %if.end30

if.end30:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @blk_crypto_fallback_inited, align 1
  br label %cleanup

fail_free_crypt_ctx_cache:                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  %10 = load ptr, ptr @bio_fallback_crypt_ctx_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %10) #6
  br label %fail_free_bounce_page_pool

fail_free_bounce_page_pool:                       ; preds = %fail_free_crypt_ctx_cache, %if.end22.fail_free_bounce_page_pool_crit_edge
  %11 = load ptr, ptr @blk_crypto_bounce_page_pool, align 4
  tail call void @mempool_destroy(ptr noundef %11) #6
  br label %fail_free_keyslots

fail_free_keyslots:                               ; preds = %fail_free_bounce_page_pool, %if.end18.fail_free_keyslots_crit_edge
  %12 = load ptr, ptr @blk_crypto_keyslots, align 4
  tail call void @kfree(ptr noundef %12) #6
  br label %fail_free_wq

fail_free_wq:                                     ; preds = %fail_free_keyslots, %if.end7.i.i.fail_free_wq_crit_edge, %kcalloc.exit.thread
  %13 = load ptr, ptr @blk_crypto_wq, align 4
  tail call void @destroy_workqueue(ptr noundef %13) #6
  br label %fail_destroy_profile

fail_destroy_profile:                             ; preds = %fail_free_wq, %if.end7.fail_destroy_profile_crit_edge
  tail call void @blk_crypto_profile_destroy(ptr noundef nonnull @blk_crypto_fallback_profile) #6
  br label %fail_free_bioset

fail_free_bioset:                                 ; preds = %fail_destroy_profile, %if.end3.fail_free_bioset_crit_edge
  %err.0 = phi i32 [ %call4, %if.end3.fail_free_bioset_crit_edge ], [ -12, %fail_destroy_profile ]
  tail call void @bioset_exit(ptr noundef nonnull @crypto_bio_split) #6
  br label %cleanup

cleanup:                                          ; preds = %fail_free_bioset, %if.end30, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end30 ], [ 0, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ], [ %err.0, %fail_free_bioset ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_alloc_skcipher(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @blk_crypto_get_keyslot(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_table(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_skcipher_encrypt(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_crypt_dun_increment(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @blk_crypto_fallback_encrypt_endio(ptr noundef %enc_bio) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %bi_private = getelementptr inbounds %struct.bio, ptr %enc_bio, i32 0, i32 11
  %0 = ptrtoint ptr %bi_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bi_private, align 4
  %bi_vcnt = getelementptr inbounds %struct.bio, ptr %enc_bio, i32 0, i32 17
  %2 = ptrtoint ptr %bi_vcnt to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %bi_vcnt, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp11.not = icmp eq i16 %3, 0
  br i1 %cmp11.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %bi_io_vec = getelementptr inbounds %struct.bio, ptr %enc_bio, i32 0, i32 20
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.012 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %4 = ptrtoint ptr %bi_io_vec to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bi_io_vec, align 8
  %arrayidx = getelementptr %struct.bio_vec, ptr %5, i32 %i.012
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %8 = load ptr, ptr @blk_crypto_bounce_page_pool, align 4
  tail call void @mempool_free(ptr noundef %7, ptr noundef %8) #6
  %inc = add nuw nsw i32 %i.012, 1
  %9 = ptrtoint ptr %bi_vcnt to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %bi_vcnt, align 8
  %conv = zext i16 %10 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %bi_status = getelementptr inbounds %struct.bio, ptr %enc_bio, i32 0, i32 6
  %11 = ptrtoint ptr %bi_status to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %bi_status, align 2
  %bi_status2 = getelementptr inbounds %struct.bio, ptr %1, i32 0, i32 6
  %13 = ptrtoint ptr %bi_status2 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %bi_status2, align 2
  tail call void @bio_put(ptr noundef %enc_bio) #6
  tail call void @bio_endio(ptr noundef %1) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mempool_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_crypto_put_keyslot(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bio_split(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_chain(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @submit_bio_noacct(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bio_kmalloc(i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_clone_blkg_association(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blk_crypto_keyslot_index(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_req_done(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_endio(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_sensitive(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @blk_crypto_fallback_decrypt_bio(ptr noundef %work) #0 align 64 {
entry:
  %slot = alloca ptr, align 4
  %wait = alloca %struct.crypto_wait, align 4
  %curr_dun = alloca [4 x i64], align 8
  %iv = alloca %union.blk_crypto_iv, align 8
  %sg = alloca %struct.scatterlist, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -60
  %bio1 = getelementptr inbounds %struct.anon.88, ptr %work, i32 0, i32 1
  %0 = ptrtoint ptr %bio1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bio1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %slot) #6
  %2 = ptrtoint ptr %slot to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %slot, align 4, !annotation !80
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %wait) #6
  %3 = getelementptr inbounds i8, ptr %wait, i32 4
  %4 = call ptr @memset(ptr %3, i32 255, i32 56)
  %5 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %wait, align 4
  %wait.i = getelementptr inbounds %struct.completion, ptr %wait, i32 0, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.3, ptr noundef nonnull @init_completion.__key) #6
  %err = getelementptr inbounds %struct.crypto_wait, ptr %wait, i32 0, i32 1
  %6 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %err, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %curr_dun) #6
  %7 = getelementptr inbounds [4 x i64], ptr %curr_dun, i32 0, i32 1
  %8 = getelementptr inbounds [4 x i64], ptr %curr_dun, i32 0, i32 2
  %9 = getelementptr inbounds [4 x i64], ptr %curr_dun, i32 0, i32 3
  %10 = call ptr @memset(ptr %curr_dun, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %iv) #6
  %11 = getelementptr inbounds [4 x i64], ptr %iv, i32 0, i32 1
  %12 = getelementptr inbounds [4 x i64], ptr %iv, i32 0, i32 2
  %13 = getelementptr inbounds [4 x i64], ptr %iv, i32 0, i32 3
  %14 = call ptr @memset(ptr %iv, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %sg) #6
  %15 = getelementptr inbounds %struct.scatterlist, ptr %sg, i32 0, i32 1
  %16 = getelementptr inbounds %struct.scatterlist, ptr %sg, i32 0, i32 2
  %17 = call ptr @memset(ptr %sg, i32 255, i32 20)
  %18 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %add.ptr, align 8
  %data_unit_size5 = getelementptr inbounds %struct.blk_crypto_config, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %data_unit_size5 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %data_unit_size5, align 4
  %call = call zeroext i8 @blk_crypto_get_keyslot(ptr noundef nonnull @blk_crypto_fallback_profile, ptr noundef %19, ptr noundef nonnull %slot) #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call)
  %cmp.not = icmp eq i8 %call, 0
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %bi_status = getelementptr inbounds %struct.bio, ptr %1, i32 0, i32 6
  %22 = ptrtoint ptr %bi_status to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %call, ptr %bi_status, align 2
  br label %out_no_keyslot

if.end:                                           ; preds = %entry
  %23 = ptrtoint ptr %slot to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %slot, align 4
  %call.i = call i32 @blk_crypto_keyslot_index(ptr noundef %24) #6
  %25 = load ptr, ptr @blk_crypto_keyslots, align 4
  %arrayidx.i = getelementptr %struct.blk_crypto_fallback_keyslot, ptr %25, i32 %call.i
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx.i, align 4
  %arrayidx1.i = getelementptr %struct.blk_crypto_fallback_keyslot, ptr %25, i32 %call.i, i32 1, i32 %27
  %28 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx1.i, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %29, align 128
  %add.i.i = add i32 %31, 128
  %call9.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add.i.i, i32 noundef 3072) #9
  %tobool.not.i.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool.not.i.i, label %if.end.out.sink.split_crit_edge, label %if.end11, !prof !81

if.end.out.sink.split_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out.sink.split

if.end11:                                         ; preds = %if.end
  %base.i.i.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %29, i32 0, i32 2
  %tfm1.i.i.i = getelementptr inbounds %struct.skcipher_request, ptr %call9.i.i.i, i32 0, i32 4, i32 3
  %32 = ptrtoint ptr %tfm1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %base.i.i.i.i, ptr %tfm1.i.i.i, align 32
  %complete.i.i = getelementptr inbounds %struct.skcipher_request, ptr %call9.i.i.i, i32 0, i32 4, i32 1
  %33 = ptrtoint ptr %complete.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @crypto_req_done, ptr %complete.i.i, align 8
  %data2.i.i = getelementptr inbounds %struct.skcipher_request, ptr %call9.i.i.i, i32 0, i32 4, i32 2
  %34 = ptrtoint ptr %data2.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %wait, ptr %data2.i.i, align 4
  %flags4.i.i = getelementptr inbounds %struct.skcipher_request, ptr %call9.i.i.i, i32 0, i32 4, i32 4
  %35 = ptrtoint ptr %flags4.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 1536, ptr %flags4.i.i, align 4
  %bc_dun = getelementptr i8, ptr %work, i32 -52
  %36 = call ptr @memcpy(ptr %curr_dun, ptr %bc_dun, i32 32)
  call void @sg_init_table(ptr noundef nonnull %sg, i32 noundef 1) #6
  %src1.i = getelementptr inbounds %struct.skcipher_request, ptr %call9.i.i.i, i32 0, i32 2
  %37 = ptrtoint ptr %src1.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %sg, ptr %src1.i, align 8
  %dst2.i = getelementptr inbounds %struct.skcipher_request, ptr %call9.i.i.i, i32 0, i32 3
  %38 = ptrtoint ptr %dst2.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %sg, ptr %dst2.i, align 4
  %39 = ptrtoint ptr %call9.i.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %21, ptr %call9.i.i.i, align 128
  %iv4.i = getelementptr inbounds %struct.skcipher_request, ptr %call9.i.i.i, i32 0, i32 1
  %40 = ptrtoint ptr %iv4.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %iv, ptr %iv4.i, align 4
  %iter.sroa.6.0.crypt_iter.sroa_idx = getelementptr i8, ptr %work, i32 -12
  %41 = ptrtoint ptr %iter.sroa.6.0.crypt_iter.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %41)
  %iter.sroa.6.0.copyload = load i32, ptr %iter.sroa.6.0.crypt_iter.sroa_idx, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %iter.sroa.6.0.copyload)
  %tobool.not117 = icmp eq i32 %iter.sroa.6.0.copyload, 0
  br i1 %tobool.not117, label %if.end11.out_crit_edge, label %land.rhs.lr.ph

if.end11.out_crit_edge:                           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

land.rhs.lr.ph:                                   ; preds = %if.end11
  %iter.sroa.16.0.crypt_iter.sroa_idx = getelementptr i8, ptr %work, i32 -4
  %42 = ptrtoint ptr %iter.sroa.16.0.crypt_iter.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %42)
  %iter.sroa.16.0.copyload = load i32, ptr %iter.sroa.16.0.crypt_iter.sroa_idx, align 8
  %iter.sroa.10.0.crypt_iter.sroa_idx = getelementptr i8, ptr %work, i32 -8
  %43 = ptrtoint ptr %iter.sroa.10.0.crypt_iter.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %43)
  %iter.sroa.10.0.copyload = load i32, ptr %iter.sroa.10.0.crypt_iter.sroa_idx, align 4
  %bi_io_vec = getelementptr inbounds %struct.bio, ptr %1, i32 0, i32 20
  %bi_opf.i.i = getelementptr inbounds %struct.bio, ptr %1, i32 0, i32 2
  br label %land.rhs

land.rhs:                                         ; preds = %bio_advance_iter_single.exit.land.rhs_crit_edge, %land.rhs.lr.ph
  %iter.sroa.6.0120 = phi i32 [ %iter.sroa.6.0.copyload, %land.rhs.lr.ph ], [ %sub.i.i, %bio_advance_iter_single.exit.land.rhs_crit_edge ]
  %iter.sroa.10.0119 = phi i32 [ %iter.sroa.10.0.copyload, %land.rhs.lr.ph ], [ %iter.sroa.10.2, %bio_advance_iter_single.exit.land.rhs_crit_edge ]
  %iter.sroa.16.0118 = phi i32 [ %iter.sroa.16.0.copyload, %land.rhs.lr.ph ], [ %iter.sroa.16.1, %bio_advance_iter_single.exit.land.rhs_crit_edge ]
  %44 = ptrtoint ptr %bi_io_vec to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %bi_io_vec, align 8
  %arrayidx = getelementptr %struct.bio_vec, ptr %45, i32 %iter.sroa.10.0119
  %46 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx, align 4
  %bv_offset = getelementptr %struct.bio_vec, ptr %45, i32 %iter.sroa.10.0119, i32 2
  %48 = ptrtoint ptr %bv_offset to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %bv_offset, align 4
  %add = add i32 %49, %iter.sroa.16.0118
  %div94 = lshr i32 %add, 12
  %add.ptr18 = getelementptr %struct.page, ptr %47, i32 %div94
  %bv_len23 = getelementptr %struct.bio_vec, ptr %45, i32 %iter.sroa.10.0119, i32 1
  %50 = ptrtoint ptr %bv_len23 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %bv_len23, align 4
  %sub = sub i32 %51, %iter.sroa.16.0118
  %52 = call i32 @llvm.umin.i32(i32 %iter.sroa.6.0120, i32 %sub)
  %rem = and i32 %add, 4095
  %sub34 = sub nuw nsw i32 4096, %rem
  %53 = call i32 @llvm.umin.i32(i32 %52, i32 %sub34)
  %54 = ptrtoint ptr %sg to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %sg, align 4
  %56 = ptrtoint ptr %add.ptr18 to i32
  %and2.i.i = and i32 %56, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %tobool.not.i.i95 = icmp eq i32 %and2.i.i, 0
  br i1 %tobool.not.i.i95, label %do.body11.i.i, label %do.body5.i.i, !prof !79

do.body5.i.i:                                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #6, !srcloc !82
  unreachable

do.body11.i.i:                                    ; preds = %land.rhs
  %and.i.i.i = and i32 %55, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %sg_set_page.exit, label %do.body19.i.i, !prof !79

do.body19.i.i:                                    ; preds = %do.body11.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #6, !srcloc !83
  unreachable

sg_set_page.exit:                                 ; preds = %do.body11.i.i
  %and.i.i = and i32 %55, 3
  %or.i.i = or i32 %and.i.i, %56
  %57 = ptrtoint ptr %sg to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %or.i.i, ptr %sg, align 4
  %58 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %rem, ptr %15, align 4
  %59 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %21, ptr %16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %cmp54115.not = icmp eq i32 %53, 0
  br i1 %cmp54115.not, label %sg_set_page.exit.for.inc67_crit_edge, label %sg_set_page.exit.for.body56_crit_edge

sg_set_page.exit.for.body56_crit_edge:            ; preds = %sg_set_page.exit
  br label %for.body56

sg_set_page.exit.for.inc67_crit_edge:             ; preds = %sg_set_page.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc67

for.body56:                                       ; preds = %if.end63.for.body56_crit_edge, %sg_set_page.exit.for.body56_crit_edge
  %i.0116 = phi i32 [ %add66, %if.end63.for.body56_crit_edge ], [ 0, %sg_set_page.exit.for.body56_crit_edge ]
  %60 = ptrtoint ptr %curr_dun to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %curr_dun, align 8
  %62 = call i64 @llvm.bswap.i64(i64 %61) #6
  %63 = ptrtoint ptr %iv to i32
  call void @__asan_store8_noabort(i32 %63)
  store i64 %62, ptr %iv, align 8
  %64 = ptrtoint ptr %7 to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %7, align 8
  %66 = call i64 @llvm.bswap.i64(i64 %65) #6
  %67 = ptrtoint ptr %11 to i32
  call void @__asan_store8_noabort(i32 %67)
  store i64 %66, ptr %11, align 8
  %68 = ptrtoint ptr %8 to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %8, align 8
  %70 = call i64 @llvm.bswap.i64(i64 %69) #6
  %71 = ptrtoint ptr %12 to i32
  call void @__asan_store8_noabort(i32 %71)
  store i64 %70, ptr %12, align 8
  %72 = ptrtoint ptr %9 to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %9, align 8
  %74 = call i64 @llvm.bswap.i64(i64 %73) #6
  %75 = ptrtoint ptr %13 to i32
  call void @__asan_store8_noabort(i32 %75)
  store i64 %74, ptr %13, align 8
  %call58 = call i32 @crypto_skcipher_decrypt(ptr noundef nonnull %call9.i.i.i) #6
  %76 = zext i32 %call58 to i64
  call void @__sanitizer_cov_trace_switch(i64 %76, ptr @__sancov_gen_cov_switch_values.9)
  switch i32 %call58, label %for.body56.crypto_wait_req.exit_crit_edge [
    i32 -115, label %for.body56.sw.bb.i_crit_edge
    i32 -16, label %for.body56.sw.bb.i_crit_edge121
  ]

for.body56.sw.bb.i_crit_edge121:                  ; preds = %for.body56
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

for.body56.sw.bb.i_crit_edge:                     ; preds = %for.body56
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

for.body56.crypto_wait_req.exit_crit_edge:        ; preds = %for.body56
  call void @__sanitizer_cov_trace_pc() #8
  br label %crypto_wait_req.exit

sw.bb.i:                                          ; preds = %for.body56.sw.bb.i_crit_edge, %for.body56.sw.bb.i_crit_edge121
  call void @wait_for_completion(ptr noundef nonnull %wait) #6
  %77 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 0, ptr %wait, align 4
  %78 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %err, align 4
  br label %crypto_wait_req.exit

crypto_wait_req.exit:                             ; preds = %sw.bb.i, %for.body56.crypto_wait_req.exit_crit_edge
  %err.addr.0.i = phi i32 [ %call58, %for.body56.crypto_wait_req.exit_crit_edge ], [ %79, %sw.bb.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.addr.0.i)
  %tobool60.not = icmp eq i32 %err.addr.0.i, 0
  br i1 %tobool60.not, label %if.end63, label %crypto_wait_req.exit.out.sink.split_crit_edge

crypto_wait_req.exit.out.sink.split_crit_edge:    ; preds = %crypto_wait_req.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %out.sink.split

if.end63:                                         ; preds = %crypto_wait_req.exit
  call void @bio_crypt_dun_increment(ptr noundef nonnull %curr_dun, i32 noundef 1) #6
  %80 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %15, align 4
  %add65 = add i32 %81, %21
  store i32 %add65, ptr %15, align 4
  %add66 = add i32 %i.0116, %21
  %cmp54 = icmp ult i32 %add66, %53
  br i1 %cmp54, label %if.end63.for.body56_crit_edge, label %if.end63.for.inc67_crit_edge

if.end63.for.inc67_crit_edge:                     ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc67

if.end63.for.body56_crit_edge:                    ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body56

for.inc67:                                        ; preds = %if.end63.for.inc67_crit_edge, %sg_set_page.exit.for.inc67_crit_edge
  %82 = ptrtoint ptr %bi_opf.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %bi_opf.i.i, align 8
  %and.i.i96 = and i32 %83, 255
  %84 = add nsw i32 %and.i.i96, -3
  %switch.and.i.i = and i32 %84, -7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.and.i.i)
  %switch.selectcmp.i.i = icmp eq i32 %switch.and.i.i, 0
  br i1 %switch.selectcmp.i.i, label %for.inc67.bio_advance_iter_single.exit_crit_edge, label %if.else.i

for.inc67.bio_advance_iter_single.exit_crit_edge: ; preds = %for.inc67
  call void @__sanitizer_cov_trace_pc() #8
  br label %bio_advance_iter_single.exit

if.else.i:                                        ; preds = %for.inc67
  call void @__sanitizer_cov_trace_pc() #8
  %85 = ptrtoint ptr %bi_io_vec to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %bi_io_vec, align 8
  %add.i.i97 = add i32 %53, %iter.sroa.16.0118
  %bv_len.i.i = getelementptr %struct.bio_vec, ptr %86, i32 %iter.sroa.10.0119, i32 1
  %87 = ptrtoint ptr %bv_len.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %bv_len.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i97, i32 %88)
  %cmp.i.i = icmp eq i32 %add.i.i97, %88
  %spec.select = select i1 %cmp.i.i, i32 0, i32 %add.i.i97
  %inc.i.i = zext i1 %cmp.i.i to i32
  %spec.select114 = add i32 %iter.sroa.10.0119, %inc.i.i
  br label %bio_advance_iter_single.exit

bio_advance_iter_single.exit:                     ; preds = %if.else.i, %for.inc67.bio_advance_iter_single.exit_crit_edge
  %iter.sroa.16.1 = phi i32 [ %iter.sroa.16.0118, %for.inc67.bio_advance_iter_single.exit_crit_edge ], [ %spec.select, %if.else.i ]
  %iter.sroa.10.2 = phi i32 [ %iter.sroa.10.0119, %for.inc67.bio_advance_iter_single.exit_crit_edge ], [ %spec.select114, %if.else.i ]
  %sub.i.i = sub i32 %iter.sroa.6.0120, %53
  %tobool.not = icmp eq i32 %sub.i.i, 0
  br i1 %tobool.not, label %bio_advance_iter_single.exit.out_crit_edge, label %bio_advance_iter_single.exit.land.rhs_crit_edge

bio_advance_iter_single.exit.land.rhs_crit_edge:  ; preds = %bio_advance_iter_single.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.rhs

bio_advance_iter_single.exit.out_crit_edge:       ; preds = %bio_advance_iter_single.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

out.sink.split:                                   ; preds = %crypto_wait_req.exit.out.sink.split_crit_edge, %if.end.out.sink.split_crit_edge
  %.sink = phi i8 [ 9, %if.end.out.sink.split_crit_edge ], [ 10, %crypto_wait_req.exit.out.sink.split_crit_edge ]
  %ciph_req.0111.ph = phi ptr [ null, %if.end.out.sink.split_crit_edge ], [ %call9.i.i.i, %crypto_wait_req.exit.out.sink.split_crit_edge ]
  %bi_status62 = getelementptr inbounds %struct.bio, ptr %1, i32 0, i32 6
  %89 = ptrtoint ptr %bi_status62 to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 %.sink, ptr %bi_status62, align 2
  br label %out

out:                                              ; preds = %out.sink.split, %bio_advance_iter_single.exit.out_crit_edge, %if.end11.out_crit_edge
  %ciph_req.0111 = phi ptr [ %call9.i.i.i, %if.end11.out_crit_edge ], [ %ciph_req.0111.ph, %out.sink.split ], [ %call9.i.i.i, %bio_advance_iter_single.exit.out_crit_edge ]
  call void @kfree_sensitive(ptr noundef %ciph_req.0111) #6
  %90 = ptrtoint ptr %slot to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %slot, align 4
  call void @blk_crypto_put_keyslot(ptr noundef %91) #6
  br label %out_no_keyslot

out_no_keyslot:                                   ; preds = %out, %if.then
  %92 = load ptr, ptr @bio_fallback_crypt_ctx_pool, align 4
  call void @mempool_free(ptr noundef %add.ptr, ptr noundef %92) #6
  call void @bio_endio(ptr noundef %1) #6
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %iv) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %curr_dun) #6
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %wait) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %slot) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_skcipher_decrypt(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bio_crypt_free_ctx(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @prandom_bytes(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bioset_init(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blk_crypto_profile_init(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mempool_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_crypto_profile_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bioset_exit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @blk_crypto_fallback_keyslot_program(ptr nocapture noundef readnone %profile, ptr noundef %key, i32 noundef %slot) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @blk_crypto_keyslots, align 4
  %arrayidx = getelementptr %struct.blk_crypto_fallback_keyslot, ptr %0, i32 %slot
  %1 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %key, align 4
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %4)
  %cmp.not = icmp eq i32 %2, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp4.not = icmp eq i32 %4, 0
  %or.cond = or i1 %cmp.not, %cmp4.not
  br i1 %or.cond, label %entry.if.end_crit_edge, label %if.end.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end.i:                                         ; preds = %entry
  %arrayidx21.i = getelementptr %struct.blk_crypto_fallback_keyslot, ptr %0, i32 %slot, i32 1, i32 %4
  %5 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx21.i, align 4
  %keysize.i = getelementptr [0 x %struct.blk_crypto_mode], ptr @blk_crypto_modes, i32 0, i32 %4, i32 1
  %7 = ptrtoint ptr %keysize.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %keysize.i, align 4
  %call.i = tail call i32 @crypto_skcipher_setkey(ptr noundef %6, ptr noundef nonnull @blank_key, i32 noundef %8) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool24.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool24.not.i, label %if.end.i.if.end_crit_edge, label %do.end40.i, !prof !79

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end40.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 103, i32 noundef 9, ptr noundef null) #6
  br label %if.end

if.end:                                           ; preds = %do.end40.i, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %2, ptr %arrayidx, align 4
  %arrayidx6 = getelementptr %struct.blk_crypto_fallback_keyslot, ptr %0, i32 %slot, i32 1, i32 %2
  %10 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx6, align 4
  %raw = getelementptr inbounds %struct.blk_crypto_key, ptr %key, i32 0, i32 3
  %size = getelementptr inbounds %struct.blk_crypto_key, ptr %key, i32 0, i32 2
  %12 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %size, align 4
  %call = tail call i32 @crypto_skcipher_setkey(ptr noundef %11, ptr noundef %raw, i32 noundef %13) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.then7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then7:                                         ; preds = %if.end
  %14 = load ptr, ptr @blk_crypto_keyslots, align 4
  %arrayidx.i21 = getelementptr %struct.blk_crypto_fallback_keyslot, ptr %14, i32 %slot
  %15 = ptrtoint ptr %arrayidx.i21 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx.i21, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp.i22 = icmp eq i32 %16, 0
  br i1 %cmp.i22, label %do.end.i23, label %if.then7.if.end.i28_crit_edge, !prof !81

if.then7.if.end.i28_crit_edge:                    ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i28

do.end.i23:                                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 98, i32 noundef 9, ptr noundef null) #6
  br label %if.end.i28

if.end.i28:                                       ; preds = %do.end.i23, %if.then7.if.end.i28_crit_edge
  %arrayidx21.i24 = getelementptr %struct.blk_crypto_fallback_keyslot, ptr %14, i32 %slot, i32 1, i32 %16
  %17 = ptrtoint ptr %arrayidx21.i24 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx21.i24, align 4
  %keysize.i25 = getelementptr [0 x %struct.blk_crypto_mode], ptr @blk_crypto_modes, i32 0, i32 %16, i32 1
  %19 = ptrtoint ptr %keysize.i25 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %keysize.i25, align 4
  %call.i26 = tail call i32 @crypto_skcipher_setkey(ptr noundef %18, ptr noundef nonnull @blank_key, i32 noundef %20) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i26)
  %tobool24.not.i27 = icmp eq i32 %call.i26, 0
  br i1 %tobool24.not.i27, label %if.end.i28.blk_crypto_fallback_evict_keyslot.exit30_crit_edge, label %do.end40.i29, !prof !79

if.end.i28.blk_crypto_fallback_evict_keyslot.exit30_crit_edge: ; preds = %if.end.i28
  call void @__sanitizer_cov_trace_pc() #8
  br label %blk_crypto_fallback_evict_keyslot.exit30

do.end40.i29:                                     ; preds = %if.end.i28
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 103, i32 noundef 9, ptr noundef null) #6
  br label %blk_crypto_fallback_evict_keyslot.exit30

blk_crypto_fallback_evict_keyslot.exit30:         ; preds = %do.end40.i29, %if.end.i28.blk_crypto_fallback_evict_keyslot.exit30_crit_edge
  %21 = ptrtoint ptr %arrayidx.i21 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %arrayidx.i21, align 4
  br label %cleanup

cleanup:                                          ; preds = %blk_crypto_fallback_evict_keyslot.exit30, %if.end.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @blk_crypto_fallback_keyslot_evict(ptr nocapture noundef readnone %profile, ptr nocapture noundef readnone %key, i32 noundef %slot) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @blk_crypto_keyslots, align 4
  %arrayidx.i = getelementptr %struct.blk_crypto_fallback_keyslot, ptr %0, i32 %slot
  %1 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp.i = icmp eq i32 %2, 0
  br i1 %cmp.i, label %do.end.i, label %entry.if.end.i_crit_edge, !prof !81

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 98, i32 noundef 9, ptr noundef null) #6
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %entry.if.end.i_crit_edge
  %arrayidx21.i = getelementptr %struct.blk_crypto_fallback_keyslot, ptr %0, i32 %slot, i32 1, i32 %2
  %3 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx21.i, align 4
  %keysize.i = getelementptr [0 x %struct.blk_crypto_mode], ptr @blk_crypto_modes, i32 0, i32 %2, i32 1
  %5 = ptrtoint ptr %keysize.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %keysize.i, align 4
  %call.i = tail call i32 @crypto_skcipher_setkey(ptr noundef %4, ptr noundef nonnull @blank_key, i32 noundef %6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool24.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool24.not.i, label %if.end.i.blk_crypto_fallback_evict_keyslot.exit_crit_edge, label %do.end40.i, !prof !79

if.end.i.blk_crypto_fallback_evict_keyslot.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %blk_crypto_fallback_evict_keyslot.exit

do.end40.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 103, i32 noundef 9, ptr noundef null) #6
  br label %blk_crypto_fallback_evict_keyslot.exit

blk_crypto_fallback_evict_keyslot.exit:           ; preds = %do.end40.i, %if.end.i.blk_crypto_fallback_evict_keyslot.exit_crit_edge
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %arrayidx.i, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_skcipher_setkey(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mempool_create(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mempool_alloc_pages(i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mempool_free_pages(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mempool_alloc_slab(i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mempool_free_slab(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_destroy_tfm(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

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

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(0) }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !15, !17, !18, !20, !21, !22, !23, !24, !26, !28, !30, !32, !33, !35, !36, !38, !39, !41, !43, !44, !46, !48, !50, !51, !53, !55, !56, !57, !59, !61, !63, !65, !67}
!llvm.module.flags = !{!69, !70, !71, !72, !73, !74, !75, !76}
!llvm.ident = !{!77}

!0 = !{ptr @__param_num_prealloc_bounce_pg, !1, !"__param_num_prealloc_bounce_pg", i1 false, i1 false}
!1 = !{!"../block/blk-crypto-fallback.c", i32 26, i32 1}
!2 = !{ptr @__UNIQUE_ID_num_prealloc_bounce_pgtype294, !1, !"__UNIQUE_ID_num_prealloc_bounce_pgtype294", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_num_prealloc_bounce_pg295, !4, !"__UNIQUE_ID_num_prealloc_bounce_pg295", i1 false, i1 false}
!4 = !{!"../block/blk-crypto-fallback.c", i32 27, i32 1}
!5 = !{ptr @__param_num_keyslots, !6, !"__param_num_keyslots", i1 false, i1 false}
!6 = !{!"../block/blk-crypto-fallback.c", i32 31, i32 1}
!7 = !{ptr @__UNIQUE_ID_num_keyslotstype296, !6, !"__UNIQUE_ID_num_keyslotstype296", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_num_keyslots297, !9, !"__UNIQUE_ID_num_keyslots297", i1 false, i1 false}
!9 = !{!"../block/blk-crypto-fallback.c", i32 32, i32 1}
!10 = !{ptr @__param_num_prealloc_fallback_crypt_ctxs, !11, !"__param_num_prealloc_fallback_crypt_ctxs", i1 false, i1 false}
!11 = !{!"../block/blk-crypto-fallback.c", i32 36, i32 1}
!12 = !{ptr @__UNIQUE_ID_num_prealloc_fallback_crypt_ctxstype298, !11, !"__UNIQUE_ID_num_prealloc_fallback_crypt_ctxstype298", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_num_prealloc_crypt_fallback_ctxs299, !14, !"__UNIQUE_ID_num_prealloc_crypt_fallback_ctxs299", i1 false, i1 false}
!14 = !{!"../block/blk-crypto-fallback.c", i32 37, i32 1}
!15 = distinct !{null, !16, !"__already_done", i1 false, i1 false}
!16 = !{!"../block/blk-crypto-fallback.c", i32 496, i32 6}
!17 = !{ptr @.str, !16, !"<string literal>", i1 false, i1 false}
!18 = distinct !{null, !19, !"__already_done", i1 false, i1 false}
!19 = !{!"../block/blk-crypto-fallback.c", i32 640, i32 5}
!20 = !{ptr @.str.1, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @blk_crypto_fallback_start_using_mode._entry, !19, !"_entry", i1 false, i1 false}
!23 = !{ptr @blk_crypto_fallback_start_using_mode._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @bio_fallback_crypt_ctx_pool, !25, !"bio_fallback_crypt_ctx_pool", i1 false, i1 false}
!25 = !{!"../block/blk-crypto-fallback.c", i32 62, i32 19}
!26 = !{ptr @tfms_inited, !27, !"tfms_inited", i1 false, i1 false}
!27 = !{!"../block/blk-crypto-fallback.c", i32 74, i32 13}
!28 = !{ptr @blk_crypto_keyslots, !29, !"blk_crypto_keyslots", i1 false, i1 false}
!29 = !{!"../block/blk-crypto-fallback.c", i32 79, i32 4}
!30 = !{ptr @blk_crypto_fallback_profile, !31, !"blk_crypto_fallback_profile", i1 false, i1 false}
!31 = !{!"../block/blk-crypto-fallback.c", i32 81, i32 34}
!32 = !{ptr @__param_str_num_prealloc_bounce_pg, !1, !"__param_str_num_prealloc_bounce_pg", i1 false, i1 false}
!33 = !{ptr @num_prealloc_bounce_pg, !34, !"num_prealloc_bounce_pg", i1 false, i1 false}
!34 = !{!"../block/blk-crypto-fallback.c", i32 25, i32 21}
!35 = !{ptr @__param_str_num_keyslots, !6, !"__param_str_num_keyslots", i1 false, i1 false}
!36 = !{ptr @blk_crypto_num_keyslots, !37, !"blk_crypto_num_keyslots", i1 false, i1 false}
!37 = !{!"../block/blk-crypto-fallback.c", i32 30, i32 21}
!38 = !{ptr @__param_str_num_prealloc_fallback_crypt_ctxs, !11, !"__param_str_num_prealloc_fallback_crypt_ctxs", i1 false, i1 false}
!39 = !{ptr @num_prealloc_fallback_crypt_ctxs, !40, !"num_prealloc_fallback_crypt_ctxs", i1 false, i1 false}
!40 = !{!"../block/blk-crypto-fallback.c", i32 35, i32 21}
!41 = !{ptr @init_completion.__key, !42, !"__key", i1 false, i1 false}
!42 = !{!"../include/linux/completion.h", i32 87, i32 2}
!43 = !{ptr @.str.3, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @crypto_bio_split, !45, !"crypto_bio_split", i1 false, i1 false}
!45 = !{!"../block/blk-crypto-fallback.c", i32 84, i32 23}
!46 = !{ptr @blk_crypto_bounce_page_pool, !47, !"blk_crypto_bounce_page_pool", i1 false, i1 false}
!47 = !{!"../block/blk-crypto-fallback.c", i32 83, i32 19}
!48 = !{ptr @blk_crypto_fallback_decrypt_endio.__key, !49, !"__key", i1 false, i1 false}
!49 = !{!"../block/blk-crypto-fallback.c", i32 465, i32 2}
!50 = !{ptr @.str.4, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @blk_crypto_wq, !52, !"blk_crypto_wq", i1 false, i1 false}
!52 = !{!"../block/blk-crypto-fallback.c", i32 82, i32 33}
!53 = !{ptr @.str.5, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../block/blk-crypto-fallback.c", i32 73, i32 8}
!55 = !{ptr @.str.6, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @tfms_init_lock, !54, !"tfms_init_lock", i1 false, i1 false}
!57 = !{ptr @.str.7, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../block/blk-crypto-fallback.c", i32 561, i32 34}
!59 = !{ptr @.str.8, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../block/blk-crypto-fallback.c", i32 578, i32 33}
!61 = distinct !{null, !62, !"blk_crypto_fallback_inited", i1 false, i1 false}
!62 = !{!"../block/blk-crypto-fallback.c", i32 532, i32 13}
!63 = !{ptr @blank_key, !64, !"blank_key", i1 false, i1 false}
!64 = !{!"../block/blk-crypto-fallback.c", i32 90, i32 11}
!65 = !{ptr @blk_crypto_fallback_ll_ops, !66, !"blk_crypto_fallback_ll_ops", i1 false, i1 false}
!66 = !{!"../block/blk-crypto-fallback.c", i32 139, i32 39}
!67 = !{ptr @bio_fallback_crypt_ctx_cache, !68, !"bio_fallback_crypt_ctx_cache", i1 false, i1 false}
!68 = !{!"../block/blk-crypto-fallback.c", i32 61, i32 27}
!69 = !{i32 1, !"wchar_size", i32 2}
!70 = !{i32 1, !"min_enum_size", i32 4}
!71 = !{i32 8, !"branch-target-enforcement", i32 0}
!72 = !{i32 8, !"sign-return-address", i32 0}
!73 = !{i32 8, !"sign-return-address-all", i32 0}
!74 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!75 = !{i32 7, !"uwtable", i32 1}
!76 = !{i32 7, !"frame-pointer", i32 2}
!77 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!78 = !{i8 0, i8 2}
!79 = !{!"branch_weights", i32 2000, i32 1}
!80 = !{!"auto-init"}
!81 = !{!"branch_weights", i32 1, i32 2000}
!82 = !{i64 2154781366, i64 2154781858, i64 2154781403, i64 2154781459, i64 2154781493, i64 2154781517, i64 2154781558, i64 2154781579, i64 2154781607, i64 2154781641}
!83 = !{i64 2154782976, i64 2154783468, i64 2154783013, i64 2154783069, i64 2154783103, i64 2154783127, i64 2154783168, i64 2154783189, i64 2154783217, i64 2154783251}
!84 = !{i64 2155005947}
!85 = !{i64 2155010988}
