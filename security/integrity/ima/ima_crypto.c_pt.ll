; ModuleID = '/llk/IR_all_yes/security/integrity/ima/ima_crypto.c_pt.bc'
source_filename = "../security/integrity/ima/ima_crypto.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.65 }
%union.anon.65 = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.tpm_chip = type { %struct.device, %struct.device, %struct.cdev, %struct.cdev, %struct.rw_semaphore, ptr, %struct.tpm_bios_log, %struct.tpm_chip_seqops, %struct.tpm_chip_seqops, i32, i32, i32, [64 x i8], %struct.hwrng, %struct.mutex, i32, i32, i32, i32, i8, [4 x i32], i8, [3 x ptr], [8 x ptr], i32, i32, ptr, %struct.tpm_space, i32, i32, ptr, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.tpm_bios_log = type { ptr, ptr }
%struct.tpm_chip_seqops = type { ptr, ptr }
%struct.hwrng = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, %struct.list_head, %struct.kref, %struct.completion }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.tpm_space = type { [3 x i32], ptr, [3 x i32], ptr, i32 }
%struct.tpm_bank_info = type { i16, i16, i16 }
%struct.ima_algo_desc = type { ptr, i32 }
%struct.crypto_shash = type { i32, [124 x i8], %struct.crypto_tfm }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [112 x i8], [0 x ptr] }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.crypto_wait = type { %struct.completion, i32 }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.ima_digest_data = type { i8, i8, %union.anon.73, [0 x i8] }
%union.anon.73 = type { %struct.anon.74 }
%struct.anon.74 = type { i8, i8 }
%struct.crypto_ahash = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, [92 x i8], %struct.crypto_tfm }
%struct.crypto_async_request = type { %struct.list_head, ptr, ptr, ptr, i32 }
%struct.ahash_request = type { %struct.crypto_async_request, i32, ptr, ptr, ptr, [88 x i8], [0 x ptr] }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.67, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.68, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.69, ptr, %struct.address_space, %struct.list_head, %union.anon.70, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.67 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%union.anon.68 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.69 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.70 = type { ptr }
%struct.ima_template_entry = type { i32, ptr, ptr, i32, [0 x %struct.ima_field_data] }
%struct.ima_field_data = type { ptr, i32 }
%struct.tpm_digest = type { i16, [64 x i8] }
%struct.ima_template_desc = type { %struct.list_head, ptr, ptr, i32, ptr }

@__param_str_ahash_minsize = internal constant [18 x i8] c"ima.ahash_minsize\00", align 1
@param_ops_ulong = external dso_local constant %struct.kernel_param_ops, align 4
@ima_ahash_minsize = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_ahash_minsize = internal constant %struct.kernel_param { ptr @__param_str_ahash_minsize, ptr null, ptr @param_ops_ulong, i16 420, i8 -1, i8 0, %union.anon.65 { ptr @ima_ahash_minsize } }, section "__param", align 4
@__UNIQUE_ID_ahash_minsizetype244 = internal constant [33 x i8] c"ima.parmtype=ahash_minsize:ulong\00", section ".modinfo", align 1
@__UNIQUE_ID_ahash_minsize245 = internal constant [55 x i8] c"ima.parm=ahash_minsize:Minimum file size for ahash use\00", section ".modinfo", align 1
@__param_str_ahash_bufsize = internal constant [18 x i8] c"ima.ahash_bufsize\00", align 1
@param_ops_bufsize = internal constant { %struct.kernel_param_ops, [16 x i8] } { %struct.kernel_param_ops { i32 0, ptr @param_set_bufsize, ptr @param_get_uint, ptr null }, [16 x i8] zeroinitializer }, align 32
@ima_bufsize = internal global { i32, [28 x i8] } { i32 4096, [28 x i8] zeroinitializer }, align 32
@__param_ahash_bufsize = internal constant %struct.kernel_param { ptr @__param_str_ahash_bufsize, ptr null, ptr @param_ops_bufsize, i16 420, i8 -1, i8 0, %union.anon.65 { ptr @ima_bufsize } }, section "__param", align 4
@__UNIQUE_ID_ahash_bufsizetype246 = internal constant [35 x i8] c"ima.parmtype=ahash_bufsize:bufsize\00", section ".modinfo", align 1
@__UNIQUE_ID_ahash_bufsize247 = internal constant [49 x i8] c"ima.parm=ahash_bufsize:Maximum ahash buffer size\00", section ".modinfo", align 1
@ima_sha1_idx = dso_local local_unnamed_addr global i32 0, section ".data..ro_after_init", align 4
@ima_hash_algo_idx = dso_local local_unnamed_addr global i32 0, section ".data..ro_after_init", align 4
@ima_tpm_chip = external dso_local local_unnamed_addr global ptr, align 4
@ima_hash_algo = external dso_local local_unnamed_addr global i32, section ".data..ro_after_init", align 4
@ima_extra_slots = dso_local local_unnamed_addr global i32 0, section ".data..ro_after_init", align 4
@ima_algo_array = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@ima_shash_tfm = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@hash_digest_size = external dso_local local_unnamed_addr constant [20 x i32], align 4
@ima_calc_boot_aggregate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 864, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013ima: No suitable TPM algorithm for boot aggregate\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ima_calc_boot_aggregate\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"security/integrity/ima/ima_crypto.c\00", [60 x i8] zeroinitializer }, align 32
@ima_calc_boot_aggregate._entry_ptr = internal global ptr @ima_calc_boot_aggregate._entry, section ".printk_index", align 4
@ima_maxorder = internal global { i32, [28 x i8] } zeroinitializer, align 32
@hash_algo_name = external dso_local local_unnamed_addr constant [20 x ptr], align 4
@ima_init_ima_crypto._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 83, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013ima: Can not allocate %s (reason: %ld)\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ima_init_ima_crypto\00", [44 x i8] zeroinitializer }, align 32
@ima_init_ima_crypto._entry_ptr = internal global ptr @ima_init_ima_crypto._entry, section ".printk_index", align 4
@ima_init_ima_crypto._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.4, ptr @.str.2, i32 87, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016ima: Allocated hash algorithm: %s\0A\00", [59 x i8] zeroinitializer }, align 32
@ima_init_ima_crypto._entry_ptr.7 = internal global ptr @ima_init_ima_crypto._entry.5, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@ima_alloc_tfm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 110, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013ima: Can not allocate %s (reason: %d)\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ima_alloc_tfm\00", [18 x i8] zeroinitializer }, align 32
@ima_alloc_tfm._entry_ptr = internal global ptr @ima_alloc_tfm._entry, section ".printk_index", align 4
@ima_ahash_tfm = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@ima_alloc_atfm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.10, ptr @.str.2, i32 305, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ima_alloc_atfm\00", [17 x i8] zeroinitializer }, align 32
@ima_alloc_atfm._entry_ptr = internal global ptr @ima_alloc_atfm._entry, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@ahash_wait._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.12, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.ahash_wait = private unnamed_addr constant [11 x i8] c"ahash_wait\00", align 1
@ahash_wait._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @__func__.ahash_wait, ptr @.str.2, i32 323, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\012ima: ahash calculation failed: err: %d\0A\00", [54 x i8] zeroinitializer }, align 32
@ahash_wait._entry_ptr = internal global ptr @ahash_wait._entry, section ".printk_index", align 4
@ima_canonical_fmt = external dso_local local_unnamed_addr global i8, align 1
@.str.14 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ima\00", [28 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"n\00", [30 x i8] zeroinitializer }, align 32
@ima_pcrread._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.2, i32 785, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013ima: Error Communicating to TPM chip\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ima_pcrread\00", [20 x i8] zeroinitializer }, align 32
@ima_pcrread._entry_ptr = internal global ptr @ima_pcrread._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 4294967181, i64 4294967280]
@__sancov_gen_cov_switch_values.18 = internal global [4 x i64] [i64 2, i64 32, i64 4294967181, i64 4294967280]
@__sancov_gen_cov_switch_values.19 = internal global [4 x i64] [i64 2, i64 32, i64 4294967181, i64 4294967280]
@__sancov_gen_cov_switch_values.20 = internal global [4 x i64] [i64 2, i64 32, i64 4294967181, i64 4294967280]
@__sancov_gen_cov_switch_values.21 = internal global [4 x i64] [i64 2, i64 32, i64 4294967181, i64 4294967280]
@__sancov_gen_cov_switch_values.22 = internal global [4 x i64] [i64 2, i64 32, i64 4294967181, i64 4294967280]
@__sancov_gen_cov_switch_values.23 = internal global [4 x i64] [i64 2, i64 32, i64 4294967181, i64 4294967280]
@__sancov_gen_cov_switch_values.24 = internal global [4 x i64] [i64 2, i64 32, i64 4294967181, i64 4294967280]
@__sancov_gen_cov_switch_values.25 = internal global [4 x i64] [i64 2, i64 32, i64 4294967181, i64 4294967280]
@___asan_gen_.26 = private unnamed_addr constant [18 x i8] c"ima_ahash_minsize\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 26, i32 22 }
@___asan_gen_.29 = private unnamed_addr constant [18 x i8] c"param_ops_bufsize\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 48, i32 38 }
@___asan_gen_.32 = private unnamed_addr constant [12 x i8] c"ima_bufsize\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 32, i32 21 }
@___asan_gen_.35 = private unnamed_addr constant [15 x i8] c"ima_algo_array\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 73, i32 30 }
@___asan_gen_.38 = private unnamed_addr constant [14 x i8] c"ima_shash_tfm\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 57, i32 29 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 864, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant [13 x i8] c"ima_maxorder\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 31, i32 12 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 82, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 86, i32 2 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 109, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant [14 x i8] c"ima_ahash_tfm\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 58, i32 29 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 304, i32 4 }
@___asan_gen_.89 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.93 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 87, i32 2 }
@___asan_gen_.95 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 323, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 604, i32 24 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 610, i32 46 }
@___asan_gen_.113 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.119 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.120 = private constant [39 x i8] c"../security/integrity/ima/ima_crypto.c\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 785, i32 3 }
@llvm.compiler.used = appending global [45 x ptr] [ptr @__UNIQUE_ID_ahash_bufsize247, ptr @__UNIQUE_ID_ahash_bufsizetype246, ptr @__UNIQUE_ID_ahash_minsize245, ptr @__UNIQUE_ID_ahash_minsizetype244, ptr @__param_ahash_bufsize, ptr @__param_ahash_minsize, ptr @ahash_wait._entry, ptr @ahash_wait._entry_ptr, ptr @ima_alloc_atfm._entry, ptr @ima_alloc_atfm._entry_ptr, ptr @ima_alloc_tfm._entry, ptr @ima_alloc_tfm._entry_ptr, ptr @ima_calc_boot_aggregate._entry, ptr @ima_calc_boot_aggregate._entry_ptr, ptr @ima_init_ima_crypto._entry, ptr @ima_init_ima_crypto._entry.5, ptr @ima_init_ima_crypto._entry_ptr, ptr @ima_init_ima_crypto._entry_ptr.7, ptr @ima_pcrread._entry, ptr @ima_pcrread._entry_ptr, ptr @ima_ahash_minsize, ptr @param_ops_bufsize, ptr @ima_bufsize, ptr @ima_algo_array, ptr @ima_shash_tfm, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @ima_maxorder, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @ima_ahash_tfm, ptr @.str.10, ptr @init_completion.__key, ptr @.str.11, ptr @ahash_wait._rs, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17], section "llvm.metadata"
@0 = internal global [32 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ima_ahash_minsize to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @param_ops_bufsize to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ima_bufsize to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ima_algo_array to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ima_shash_tfm to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ima_calc_boot_aggregate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ima_maxorder to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ima_init_ima_crypto._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ima_init_ima_crypto._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ima_alloc_tfm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ima_ahash_tfm to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ima_alloc_atfm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahash_wait._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahash_wait._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ima_pcrread._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ima_init_crypto() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @ima_init_ima_crypto() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  store i32 -1, ptr @ima_sha1_idx, align 4
  store i32 -1, ptr @ima_hash_algo_idx, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ima_tpm_chip to i32))
  %0 = load ptr, ptr @ima_tpm_chip, align 4
  %cmp.not = icmp eq ptr %0, null
  %nr_allocated_banks = getelementptr inbounds %struct.tpm_chip, ptr %0, i32 0, i32 25
  %allocated_banks = getelementptr inbounds %struct.tpm_chip, ptr %0, i32 0, i32 26
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %i.0 = phi i32 [ 0, %if.end ], [ %inc, %for.inc ]
  br i1 %cmp.not, label %for.cond.cond.end_crit_edge, label %cond.true

for.cond.cond.end_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.true:                                        ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  %1 = ptrtoint ptr %nr_allocated_banks to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %nr_allocated_banks, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %for.cond.cond.end_crit_edge
  %cond = phi i32 [ %2, %cond.true ], [ 0, %for.cond.cond.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0, i32 %cond)
  %cmp1 = icmp ult i32 %i.0, %cond
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %cond.end
  %3 = ptrtoint ptr %allocated_banks to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %allocated_banks, align 4
  %crypto_id = getelementptr %struct.tpm_bank_info, ptr %4, i32 %i.0, i32 2
  %5 = ptrtoint ptr %crypto_id to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %crypto_id, align 2
  %conv = zext i16 %6 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %6)
  %cmp2 = icmp eq i16 %6, 2
  br i1 %cmp2, label %if.then4, label %for.body.if.end5_crit_edge

for.body.if.end5_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5

if.then4:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  store i32 %i.0, ptr @ima_sha1_idx, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %for.body.if.end5_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ima_hash_algo to i32))
  %7 = load i32, ptr @ima_hash_algo, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %conv)
  %cmp6 = icmp eq i32 %7, %conv
  br i1 %cmp6, label %if.then8, label %if.end5.for.inc_crit_edge

if.end5.for.inc_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  store i32 %i.0, ptr @ima_hash_algo_idx, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then8, %if.end5.for.inc_crit_edge
  %inc = add nuw i32 %i.0, 1
  br label %for.cond

for.end:                                          ; preds = %cond.end
  %8 = load i32, ptr @ima_sha1_idx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp10 = icmp slt i32 %8, 0
  br i1 %cmp10, label %if.then12, label %for.end.if.end25thread-pre-split_crit_edge

for.end.if.end25thread-pre-split_crit_edge:       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25thread-pre-split

if.then12:                                        ; preds = %for.end
  br i1 %cmp.not, label %if.then12.cond.end18_crit_edge, label %cond.true15

if.then12.cond.end18_crit_edge:                   ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end18

cond.true15:                                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #13
  %9 = ptrtoint ptr %nr_allocated_banks to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %nr_allocated_banks, align 8
  br label %cond.end18

cond.end18:                                       ; preds = %cond.true15, %if.then12.cond.end18_crit_edge
  %cond19 = phi i32 [ %10, %cond.true15 ], [ 0, %if.then12.cond.end18_crit_edge ]
  %11 = load i32, ptr @ima_extra_slots, align 4
  %inc20 = add i32 %11, 1
  store i32 %inc20, ptr @ima_extra_slots, align 4
  %add = add i32 %11, %cond19
  store i32 %add, ptr @ima_sha1_idx, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ima_hash_algo to i32))
  %12 = load i32, ptr @ima_hash_algo, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %12)
  %cmp21 = icmp eq i32 %12, 2
  br i1 %cmp21, label %if.then23, label %cond.end18.if.end25thread-pre-split_crit_edge

cond.end18.if.end25thread-pre-split_crit_edge:    ; preds = %cond.end18
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25thread-pre-split

if.then23:                                        ; preds = %cond.end18
  call void @__sanitizer_cov_trace_pc() #13
  store i32 %add, ptr @ima_hash_algo_idx, align 4
  br label %if.end25

if.end25thread-pre-split:                         ; preds = %cond.end18.if.end25thread-pre-split_crit_edge, %for.end.if.end25thread-pre-split_crit_edge
  %.pr = load i32, ptr @ima_hash_algo_idx, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.end25thread-pre-split, %if.then23
  %13 = phi i32 [ %.pr, %if.end25thread-pre-split ], [ %add, %if.then23 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp26 = icmp slt i32 %13, 0
  br i1 %cmp26, label %if.then28, label %if.end25.if.end38_crit_edge

if.end25.if.end38_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end38

if.then28:                                        ; preds = %if.end25
  br i1 %cmp.not, label %if.then28.cond.end34_crit_edge, label %cond.true31

if.then28.cond.end34_crit_edge:                   ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end34

cond.true31:                                      ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #13
  %14 = ptrtoint ptr %nr_allocated_banks to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %nr_allocated_banks, align 8
  br label %cond.end34

cond.end34:                                       ; preds = %cond.true31, %if.then28.cond.end34_crit_edge
  %cond35 = phi i32 [ %15, %cond.true31 ], [ 0, %if.then28.cond.end34_crit_edge ]
  %16 = load i32, ptr @ima_extra_slots, align 4
  %inc36 = add i32 %16, 1
  store i32 %inc36, ptr @ima_extra_slots, align 4
  %add37 = add i32 %16, %cond35
  store i32 %add37, ptr @ima_hash_algo_idx, align 4
  br label %if.end38

if.end38:                                         ; preds = %cond.end34, %if.end25.if.end38_crit_edge
  br i1 %cmp.not, label %if.end38.cond.end44_crit_edge, label %cond.true41

if.end38.cond.end44_crit_edge:                    ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end44

cond.true41:                                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #13
  %17 = ptrtoint ptr %nr_allocated_banks to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %nr_allocated_banks, align 8
  br label %cond.end44

cond.end44:                                       ; preds = %cond.true41, %if.end38.cond.end44_crit_edge
  %cond45 = phi i32 [ %18, %cond.true41 ], [ 0, %if.end38.cond.end44_crit_edge ]
  %19 = load i32, ptr @ima_extra_slots, align 4
  %add46 = add i32 %19, %cond45
  %20 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add46, i32 8) #11
  %21 = extractvalue { i32, i1 } %20, 1
  br i1 %21, label %kcalloc.exit.thread, label %if.end7.i.i, !prof !84

kcalloc.exit.thread:                              ; preds = %cond.end44
  call void @__sanitizer_cov_trace_pc() #13
  store ptr null, ptr @ima_algo_array, align 4
  br label %out

if.end7.i.i:                                      ; preds = %cond.end44
  %22 = extractvalue { i32, i1 } %20, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %22, i32 noundef 3520) #15
  store ptr %call8.i.i, ptr @ima_algo_array, align 4
  %tobool48.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool48.not, label %if.end7.i.i.out_crit_edge, label %for.cond51.preheader

if.end7.i.i.out_crit_edge:                        ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

for.cond51.preheader:                             ; preds = %if.end7.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ima_tpm_chip to i32))
  %23 = load ptr, ptr @ima_tpm_chip, align 4
  %cmp52.not222 = icmp eq ptr %23, null
  br i1 %cmp52.not222, label %for.cond51.preheader.cond.end104.thread_crit_edge, label %for.cond51.preheader.cond.end57.thread_crit_edge

for.cond51.preheader.cond.end57.thread_crit_edge: ; preds = %for.cond51.preheader
  br label %cond.end57.thread

for.cond51.preheader.cond.end104.thread_crit_edge: ; preds = %for.cond51.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end104.thread

cond.end57.thread:                                ; preds = %for.inc96.cond.end57.thread_crit_edge, %for.cond51.preheader.cond.end57.thread_crit_edge
  %24 = phi ptr [ %39, %for.inc96.cond.end57.thread_crit_edge ], [ %23, %for.cond51.preheader.cond.end57.thread_crit_edge ]
  %i.1223 = phi i32 [ %inc97, %for.inc96.cond.end57.thread_crit_edge ], [ 0, %for.cond51.preheader.cond.end57.thread_crit_edge ]
  %nr_allocated_banks55 = getelementptr inbounds %struct.tpm_chip, ptr %24, i32 0, i32 25
  %25 = ptrtoint ptr %nr_allocated_banks55 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %nr_allocated_banks55, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %i.1223, i32 %26)
  %cmp59215 = icmp ult i32 %i.1223, %26
  br i1 %cmp59215, label %for.body61, label %cond.end104

for.body61:                                       ; preds = %cond.end57.thread
  %allocated_banks62 = getelementptr inbounds %struct.tpm_chip, ptr %24, i32 0, i32 26
  %27 = ptrtoint ptr %allocated_banks62 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %allocated_banks62, align 4
  %crypto_id64 = getelementptr %struct.tpm_bank_info, ptr %28, i32 %i.1223, i32 2
  %29 = ptrtoint ptr %crypto_id64 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %crypto_id64, align 2
  %conv65 = zext i16 %30 to i32
  %31 = load ptr, ptr @ima_algo_array, align 4
  %algo67 = getelementptr %struct.ima_algo_desc, ptr %31, i32 %i.1223, i32 1
  %32 = ptrtoint ptr %algo67 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %conv65, ptr %algo67, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 20, i16 %30)
  %cmp68 = icmp eq i16 %30, 20
  br i1 %cmp68, label %for.body61.for.inc96_crit_edge, label %if.end71

for.body61.for.inc96_crit_edge:                   ; preds = %for.body61
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc96

if.end71:                                         ; preds = %for.body61
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ima_hash_algo to i32))
  %33 = load i32, ptr @ima_hash_algo, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %conv65)
  %cmp72 = icmp eq i32 %33, %conv65
  br i1 %cmp72, label %if.then74, label %if.end76

if.then74:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #13
  %34 = load ptr, ptr @ima_shash_tfm, align 4
  %arrayidx75 = getelementptr %struct.ima_algo_desc, ptr %31, i32 %i.1223
  %35 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %34, ptr %arrayidx75, align 4
  br label %for.inc96

if.end76:                                         ; preds = %if.end71
  %call77 = tail call fastcc ptr @ima_alloc_tfm(i32 noundef %conv65)
  %36 = load ptr, ptr @ima_algo_array, align 4
  %arrayidx78 = getelementptr %struct.ima_algo_desc, ptr %36, i32 %i.1223
  %37 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call77, ptr %arrayidx78, align 4
  %cmp.i = icmp ugt ptr %call77, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then83, label %if.end76.for.inc96_crit_edge

if.end76.for.inc96_crit_edge:                     ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc96

if.then83:                                        ; preds = %if.end76
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %30)
  %cmp84 = icmp eq i16 %30, 2
  %38 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr null, ptr %arrayidx78, align 4
  br i1 %cmp84, label %if.then83.out_array_crit_edge, label %if.then83.for.inc96_crit_edge

if.then83.for.inc96_crit_edge:                    ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc96

if.then83.out_array_crit_edge:                    ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_array

for.inc96:                                        ; preds = %if.then83.for.inc96_crit_edge, %if.end76.for.inc96_crit_edge, %if.then74, %for.body61.for.inc96_crit_edge
  %inc97 = add nuw i32 %i.1223, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ima_tpm_chip to i32))
  %39 = load ptr, ptr @ima_tpm_chip, align 4
  %cmp52.not = icmp eq ptr %39, null
  br i1 %cmp52.not, label %for.inc96.cond.end104.thread_crit_edge, label %for.inc96.cond.end57.thread_crit_edge

for.inc96.cond.end57.thread_crit_edge:            ; preds = %for.inc96
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end57.thread

for.inc96.cond.end104.thread_crit_edge:           ; preds = %for.inc96
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end104.thread

cond.end104.thread:                               ; preds = %for.inc96.cond.end104.thread_crit_edge, %for.cond51.preheader.cond.end104.thread_crit_edge
  %40 = load i32, ptr @ima_sha1_idx, align 4
  br label %if.then108

cond.end104:                                      ; preds = %cond.end57.thread
  %nr_allocated_banks55.le = getelementptr inbounds %struct.tpm_chip, ptr %24, i32 0, i32 25
  %41 = load i32, ptr @ima_sha1_idx, align 4
  %42 = ptrtoint ptr %nr_allocated_banks55.le to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %nr_allocated_banks55.le, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %43)
  %cmp106.not = icmp ult i32 %41, %43
  br i1 %cmp106.not, label %cond.end104.if.end128_crit_edge, label %cond.end104.if.then108_crit_edge

cond.end104.if.then108_crit_edge:                 ; preds = %cond.end104
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then108

cond.end104.if.end128_crit_edge:                  ; preds = %cond.end104
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end128

if.then108:                                       ; preds = %cond.end104.if.then108_crit_edge, %cond.end104.thread
  %44 = phi i32 [ %40, %cond.end104.thread ], [ %41, %cond.end104.if.then108_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ima_hash_algo to i32))
  %45 = load i32, ptr @ima_hash_algo, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %45)
  %cmp109 = icmp eq i32 %45, 2
  br i1 %cmp109, label %if.then111, label %if.else

if.then111:                                       ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #13
  %46 = load ptr, ptr @ima_shash_tfm, align 4
  %47 = load ptr, ptr @ima_algo_array, align 4
  %arrayidx112 = getelementptr %struct.ima_algo_desc, ptr %47, i32 %44
  %48 = ptrtoint ptr %arrayidx112 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %46, ptr %arrayidx112, align 4
  br label %if.end125

if.else:                                          ; preds = %if.then108
  %call114 = tail call fastcc ptr @ima_alloc_tfm(i32 noundef 2)
  %49 = load ptr, ptr @ima_algo_array, align 4
  %50 = load i32, ptr @ima_sha1_idx, align 4
  %arrayidx115 = getelementptr %struct.ima_algo_desc, ptr %49, i32 %50
  %51 = ptrtoint ptr %arrayidx115 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call114, ptr %arrayidx115, align 4
  %52 = load i32, ptr @ima_sha1_idx, align 4
  %arrayidx117 = getelementptr %struct.ima_algo_desc, ptr %49, i32 %52
  %53 = ptrtoint ptr %arrayidx117 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %arrayidx117, align 4
  %cmp.i210 = icmp ugt ptr %54, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i210, label %if.else.out_array_crit_edge, label %if.else.if.end125_crit_edge

if.else.if.end125_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end125

if.else.out_array_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_array

if.end125:                                        ; preds = %if.else.if.end125_crit_edge, %if.then111
  %55 = load ptr, ptr @ima_algo_array, align 4
  %56 = load i32, ptr @ima_sha1_idx, align 4
  %algo127 = getelementptr %struct.ima_algo_desc, ptr %55, i32 %56, i32 1
  %57 = ptrtoint ptr %algo127 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 2, ptr %algo127, align 4
  br label %if.end128

if.end128:                                        ; preds = %if.end125, %cond.end104.if.end128_crit_edge
  %58 = load i32, ptr @ima_hash_algo_idx, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ima_tpm_chip to i32))
  %59 = load ptr, ptr @ima_tpm_chip, align 4
  %cmp129.not = icmp eq ptr %59, null
  br i1 %cmp129.not, label %if.end128.land.lhs.true_crit_edge, label %cond.end134

if.end128.land.lhs.true_crit_edge:                ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true

cond.end134:                                      ; preds = %if.end128
  %nr_allocated_banks132 = getelementptr inbounds %struct.tpm_chip, ptr %59, i32 0, i32 25
  %60 = ptrtoint ptr %nr_allocated_banks132 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %nr_allocated_banks132, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %58, i32 %61)
  %cmp136.not = icmp ult i32 %58, %61
  br i1 %cmp136.not, label %cond.end134.cleanup_crit_edge, label %cond.end134.land.lhs.true_crit_edge

cond.end134.land.lhs.true_crit_edge:              ; preds = %cond.end134
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true

cond.end134.cleanup_crit_edge:                    ; preds = %cond.end134
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true:                                    ; preds = %cond.end134.land.lhs.true_crit_edge, %if.end128.land.lhs.true_crit_edge
  %62 = load i32, ptr @ima_sha1_idx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %58, i32 %62)
  %cmp138.not = icmp eq i32 %58, %62
  br i1 %cmp138.not, label %land.lhs.true.cleanup_crit_edge, label %if.then140

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then140:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %63 = load ptr, ptr @ima_shash_tfm, align 4
  %64 = load ptr, ptr @ima_algo_array, align 4
  %arrayidx141 = getelementptr %struct.ima_algo_desc, ptr %64, i32 %58
  %65 = ptrtoint ptr %arrayidx141 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %63, ptr %arrayidx141, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ima_hash_algo to i32))
  %66 = load i32, ptr @ima_hash_algo, align 4
  %67 = load i32, ptr @ima_hash_algo_idx, align 4
  %algo144 = getelementptr %struct.ima_algo_desc, ptr %64, i32 %67, i32 1
  %68 = ptrtoint ptr %algo144 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %66, ptr %algo144, align 4
  br label %cleanup

out_array:                                        ; preds = %if.else.out_array_crit_edge, %if.then83.out_array_crit_edge
  %rc.0.in = phi ptr [ %54, %if.else.out_array_crit_edge ], [ %call77, %if.then83.out_array_crit_edge ]
  br label %for.cond146

for.cond146:                                      ; preds = %for.inc169, %out_array
  %i.2 = phi i32 [ 0, %out_array ], [ %inc170, %for.inc169 ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ima_tpm_chip to i32))
  %69 = load ptr, ptr @ima_tpm_chip, align 4
  %cmp147.not = icmp eq ptr %69, null
  br i1 %cmp147.not, label %for.cond146.cond.end152_crit_edge, label %cond.true149

for.cond146.cond.end152_crit_edge:                ; preds = %for.cond146
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end152

cond.true149:                                     ; preds = %for.cond146
  call void @__sanitizer_cov_trace_pc() #13
  %nr_allocated_banks150 = getelementptr inbounds %struct.tpm_chip, ptr %69, i32 0, i32 25
  %70 = ptrtoint ptr %nr_allocated_banks150 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %nr_allocated_banks150, align 8
  br label %cond.end152

cond.end152:                                      ; preds = %cond.true149, %for.cond146.cond.end152_crit_edge
  %cond153 = phi i32 [ %71, %cond.true149 ], [ 0, %for.cond146.cond.end152_crit_edge ]
  %72 = load i32, ptr @ima_extra_slots, align 4
  %add154 = add i32 %72, %cond153
  call void @__sanitizer_cov_trace_cmp4(i32 %i.2, i32 %add154)
  %cmp155 = icmp ult i32 %i.2, %add154
  br i1 %cmp155, label %for.body157, label %out.loopexit

for.body157:                                      ; preds = %cond.end152
  %73 = load ptr, ptr @ima_algo_array, align 4
  %arrayidx158 = getelementptr %struct.ima_algo_desc, ptr %73, i32 %i.2
  %74 = ptrtoint ptr %arrayidx158 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %arrayidx158, align 4
  %tobool160.not = icmp eq ptr %75, null
  br i1 %tobool160.not, label %for.body157.for.inc169_crit_edge, label %lor.lhs.false

for.body157.for.inc169_crit_edge:                 ; preds = %for.body157
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc169

lor.lhs.false:                                    ; preds = %for.body157
  %76 = load ptr, ptr @ima_shash_tfm, align 4
  %cmp163 = icmp eq ptr %75, %76
  br i1 %cmp163, label %lor.lhs.false.for.inc169_crit_edge, label %if.end166

lor.lhs.false.for.inc169_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc169

if.end166:                                        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  %base.i.i = getelementptr inbounds %struct.crypto_shash, ptr %75, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef nonnull %75, ptr noundef %base.i.i) #11
  br label %for.inc169

for.inc169:                                       ; preds = %if.end166, %lor.lhs.false.for.inc169_crit_edge, %for.body157.for.inc169_crit_edge
  %inc170 = add nuw i32 %i.2, 1
  br label %for.cond146

out.loopexit:                                     ; preds = %cond.end152
  call void @__sanitizer_cov_trace_pc() #13
  %rc.0 = ptrtoint ptr %rc.0.in to i32
  br label %out

out:                                              ; preds = %out.loopexit, %if.end7.i.i.out_crit_edge, %kcalloc.exit.thread
  %rc.1 = phi i32 [ -12, %if.end7.i.i.out_crit_edge ], [ -12, %kcalloc.exit.thread ], [ %rc.0, %out.loopexit ]
  %77 = load ptr, ptr @ima_shash_tfm, align 4
  %base.i.i211 = getelementptr inbounds %struct.crypto_shash, ptr %77, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef %77, ptr noundef %base.i.i211) #11
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then140, %land.lhs.true.cleanup_crit_edge, %cond.end134.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.1, %out ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.then140 ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %cond.end134.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ima_init_ima_crypto() unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ima_hash_algo to i32))
  %0 = load i32, ptr @ima_hash_algo, align 4
  %arrayidx = getelementptr [20 x ptr], ptr @hash_algo_name, i32 0, i32 %0
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 4
  %call = tail call ptr @crypto_alloc_shash(ptr noundef %2, i32 noundef 0, i32 noundef 0) #11
  store ptr %call, ptr @ima_shash_tfm, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %do.end7

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %3 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ima_hash_algo to i32))
  %4 = load i32, ptr @ima_hash_algo, align 4
  %arrayidx3 = getelementptr [20 x ptr], ptr @hash_algo_name, i32 0, i32 %4
  %5 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx3, align 4
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %6, i32 noundef %3) #16
  br label %cleanup

do.end7:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ima_hash_algo to i32))
  %7 = load i32, ptr @ima_hash_algo, align 4
  %arrayidx9 = getelementptr [20 x ptr], ptr @hash_algo_name, i32 0, i32 %7
  %8 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx9, align 4
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %9) #16
  br label %cleanup

cleanup:                                          ; preds = %do.end7, %if.then
  %retval.0 = phi i32 [ %3, %if.then ], [ 0, %do.end7 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @ima_alloc_tfm(i32 noundef %algo) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @ima_shash_tfm, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %algo)
  %cmp1 = icmp ugt i32 %algo, 19
  br i1 %cmp1, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ima_hash_algo to i32))
  %1 = load i32, ptr @ima_hash_algo, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %algo.addr.0 = phi i32 [ %1, %if.then ], [ %algo, %entry.if.end_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ima_hash_algo to i32))
  %2 = load i32, ptr @ima_hash_algo, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %algo.addr.0, i32 %2)
  %cmp2 = icmp eq i32 %algo.addr.0, %2
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %for.cond.preheader

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ima_tpm_chip to i32))
  %3 = load ptr, ptr @ima_tpm_chip, align 4
  %cmp5.not = icmp eq ptr %3, null
  %4 = load i32, ptr @ima_extra_slots, align 4
  %nr_allocated_banks = getelementptr inbounds %struct.tpm_chip, ptr %3, i32 0, i32 25
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %for.cond.preheader
  %i.0 = phi i32 [ %inc, %for.inc ], [ 0, %for.cond.preheader ]
  br i1 %cmp5.not, label %for.cond.cond.end_crit_edge, label %cond.true

for.cond.cond.end_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.true:                                        ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  %5 = ptrtoint ptr %nr_allocated_banks to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %nr_allocated_banks, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %for.cond.cond.end_crit_edge
  %cond = phi i32 [ %6, %cond.true ], [ 0, %for.cond.cond.end_crit_edge ]
  %add = add i32 %4, %cond
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0, i32 %add)
  %cmp6 = icmp ult i32 %i.0, %add
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %cond.end
  %7 = load ptr, ptr @ima_algo_array, align 4
  %arrayidx = getelementptr %struct.ima_algo_desc, ptr %7, i32 %i.0
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %algo9 = getelementptr %struct.ima_algo_desc, ptr %7, i32 %i.0, i32 1
  %10 = ptrtoint ptr %algo9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %algo9, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %algo.addr.0)
  %cmp10 = icmp eq i32 %11, %algo.addr.0
  br i1 %cmp10, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.0, 1
  br label %for.cond

for.end:                                          ; preds = %cond.end
  %arrayidx15 = getelementptr [20 x ptr], ptr @hash_algo_name, i32 0, i32 %algo.addr.0
  %12 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx15, align 4
  %call = tail call ptr @crypto_alloc_shash(ptr noundef %13, i32 noundef 0, i32 noundef 0) #11
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then17, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then17:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  %14 = ptrtoint ptr %call to i32
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %13, i32 noundef %14) #16
  br label %cleanup

cleanup:                                          ; preds = %if.then17, %for.end.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi ptr [ %0, %if.end.cleanup_crit_edge ], [ %call, %if.then17 ], [ %call, %for.end.cleanup_crit_edge ], [ %9, %land.lhs.true.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ima_calc_file_hash(ptr noundef %file, ptr noundef %hash) local_unnamed_addr #2 align 64 {
entry:
  %__shash_desc.i.i = alloca [376 x i8], align 8
  %rbuf.i.i = alloca [2 x ptr], align 8
  %sg.i.i = alloca [1 x %struct.scatterlist], align 4
  %wait.i.i = alloca %struct.crypto_wait, align 4
  %rbuf_size.i.i = alloca [2 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %f_flags = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7
  %0 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %f_flags, align 4
  %and = and i32 %1, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ima_hash_algo to i32))
  %2 = load i32, ptr @ima_hash_algo, align 4
  %arrayidx = getelementptr [20 x i32], ptr @hash_digest_size, i32 0, i32 %2
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx, align 4
  %conv = trunc i32 %4 to i8
  %length = getelementptr inbounds %struct.ima_digest_data, ptr %hash, i32 0, i32 1
  %5 = ptrtoint ptr %length to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv, ptr %length, align 1
  %6 = load i32, ptr @ima_hash_algo, align 4
  %conv1 = trunc i32 %6 to i8
  %7 = ptrtoint ptr %hash to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv1, ptr %hash, align 1
  br label %cleanup27

if.end:                                           ; preds = %entry
  %f_mode = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 8
  %8 = ptrtoint ptr %f_mode to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %f_mode, align 8
  %and2 = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.then4, label %if.end.if.end11_crit_edge

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

if.then4:                                         ; preds = %if.end
  %and6 = and i32 %1, -1986
  %f_path = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 1
  %f_cred = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 12
  %10 = ptrtoint ptr %f_cred to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %f_cred, align 8
  %call = tail call ptr @dentry_open(ptr noundef %f_path, i32 noundef %and6, ptr noundef %11) #11
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %cleanup.thread, label %if.then4.if.end11_crit_edge

if.then4.if.end11_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

cleanup.thread:                                   ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #13
  %12 = ptrtoint ptr %call to i32
  br label %cleanup27

if.end11:                                         ; preds = %if.then4.if.end11_crit_edge, %if.end.if.end11_crit_edge
  %f.0 = phi ptr [ %file, %if.end.if.end11_crit_edge ], [ %call, %if.then4.if.end11_crit_edge ]
  %f_inode.i = getelementptr inbounds %struct.file, ptr %f.0, i32 0, i32 2
  %13 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %f_inode.i, align 8
  %call13 = tail call fastcc i64 @i_size_read(ptr noundef %14)
  %15 = load i32, ptr @ima_ahash_minsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool14.not = icmp eq i32 %15, 0
  %conv15 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %call13, i64 %conv15)
  %cmp.not = icmp slt i64 %call13, %conv15
  %or.cond = select i1 %tobool14.not, i1 true, i1 %cmp.not
  br i1 %or.cond, label %if.end11.if.end22_crit_edge, label %if.then17

if.end11.if.end22_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22

if.then17:                                        ; preds = %if.end11
  %16 = ptrtoint ptr %hash to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %hash, align 1
  %conv.i = zext i8 %17 to i32
  %18 = load ptr, ptr @ima_ahash_tfm, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 19, i8 %17)
  %cmp1.i.i = icmp ugt i8 %17, 19
  br i1 %cmp1.i.i, label %if.then.i.i, label %if.then17.if.end.i.i_crit_edge

if.then17.if.end.i.i_crit_edge:                   ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ima_hash_algo to i32))
  %19 = load i32, ptr @ima_hash_algo, align 4
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %if.then17.if.end.i.i_crit_edge
  %algo.addr.0.i.i = phi i32 [ %19, %if.then.i.i ], [ %conv.i, %if.then17.if.end.i.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ima_hash_algo to i32))
  %20 = load i32, ptr @ima_hash_algo, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %algo.addr.0.i.i, i32 %20)
  %cmp2.not.i.i = icmp ne i32 %algo.addr.0.i.i, %20
  %tobool.not.i.i = icmp eq ptr %18, null
  %or.cond.i.i = select i1 %cmp2.not.i.i, i1 true, i1 %tobool.not.i.i
  br i1 %or.cond.i.i, label %if.then4.i.i, label %if.end.i.i.ima_alloc_atfm.exit.i_crit_edge

if.end.i.i.ima_alloc_atfm.exit.i_crit_edge:       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ima_alloc_atfm.exit.i

if.then4.i.i:                                     ; preds = %if.end.i.i
  %arrayidx.i.i = getelementptr [20 x ptr], ptr @hash_algo_name, i32 0, i32 %algo.addr.0.i.i
  %21 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx.i.i, align 4
  %call.i.i = tail call ptr @crypto_alloc_ahash(ptr noundef %22, i32 noundef 0, i32 noundef 0) #11
  %cmp.i.i.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %if.else.i.i, label %if.then6.i.i

if.then6.i.i:                                     ; preds = %if.then4.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ima_hash_algo to i32))
  %23 = load i32, ptr @ima_hash_algo, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %algo.addr.0.i.i, i32 %23)
  %cmp7.i.i = icmp eq i32 %algo.addr.0.i.i, %23
  br i1 %cmp7.i.i, label %if.then8.i.i, label %if.then6.i.i.ima_alloc_atfm.exit.i_crit_edge

if.then6.i.i.ima_alloc_atfm.exit.i_crit_edge:     ; preds = %if.then6.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ima_alloc_atfm.exit.i

if.then8.i.i:                                     ; preds = %if.then6.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store ptr %call.i.i, ptr @ima_ahash_tfm, align 4
  br label %ima_alloc_atfm.exit.i

if.else.i.i:                                      ; preds = %if.then4.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %24 = ptrtoint ptr %call.i.i to i32
  %call12.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %22, i32 noundef %24) #16
  br label %ima_alloc_atfm.exit.i

ima_alloc_atfm.exit.i:                            ; preds = %if.else.i.i, %if.then8.i.i, %if.then6.i.i.ima_alloc_atfm.exit.i_crit_edge, %if.end.i.i.ima_alloc_atfm.exit.i_crit_edge
  %tfm.0.i.i = phi ptr [ %call.i.i, %if.else.i.i ], [ %call.i.i, %if.then8.i.i ], [ %call.i.i, %if.then6.i.i.ima_alloc_atfm.exit.i_crit_edge ], [ %18, %if.end.i.i.ima_alloc_atfm.exit.i_crit_edge ]
  %cmp.i.i = icmp ugt ptr %tfm.0.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %ima_alloc_atfm.exit.i.if.end22_crit_edge, label %if.end.i

ima_alloc_atfm.exit.i.if.end22_crit_edge:         ; preds = %ima_alloc_atfm.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22

if.end.i:                                         ; preds = %ima_alloc_atfm.exit.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rbuf.i.i) #11
  %25 = ptrtoint ptr %rbuf.i.i to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 0, ptr %rbuf.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %sg.i.i) #11
  %26 = call ptr @memset(ptr %sg.i.i, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %wait.i.i) #11
  %27 = call ptr @memset(ptr %wait.i.i, i32 255, i32 60)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rbuf_size.i.i) #11
  %28 = ptrtoint ptr %rbuf_size.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 -1, ptr %rbuf_size.i.i, align 4, !annotation !85
  %29 = getelementptr inbounds [2 x i32], ptr %rbuf_size.i.i, i32 0, i32 1
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 -1, ptr %29, align 4, !annotation !85
  %__crt_alg.i.i.i.i = getelementptr inbounds %struct.crypto_ahash, ptr %tfm.0.i.i, i32 0, i32 10, i32 3
  %31 = ptrtoint ptr %__crt_alg.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %__crt_alg.i.i.i.i, align 4
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %32, i32 -128
  %33 = ptrtoint ptr %add.ptr.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %add.ptr.i.i.i.i.i, align 128
  %conv.i.i = trunc i32 %34 to i8
  %length.i.i = getelementptr inbounds %struct.ima_digest_data, ptr %hash, i32 0, i32 1
  %35 = ptrtoint ptr %length.i.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %conv.i.i, ptr %length.i.i, align 1
  %reqsize.i.i.i.i = getelementptr inbounds %struct.crypto_ahash, ptr %tfm.0.i.i, i32 0, i32 8
  %36 = ptrtoint ptr %reqsize.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %reqsize.i.i.i.i, align 32
  %add.i.i.i = add i32 %37, 128
  %call9.i.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i.i.i, i32 noundef 3264) #15
  %tobool.not.i.i.i = icmp eq ptr %call9.i.i.i.i, null
  br i1 %tobool.not.i.i.i, label %if.end.i.ima_calc_file_hash_atfm.exit.i_crit_edge, label %if.end.i9.i, !prof !84

if.end.i.ima_calc_file_hash_atfm.exit.i_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ima_calc_file_hash_atfm.exit.i

if.end.i9.i:                                      ; preds = %if.end.i
  %base.i.i.i.i.i = getelementptr inbounds %struct.crypto_ahash, ptr %tfm.0.i.i, i32 0, i32 10
  %tfm1.i.i.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %call9.i.i.i.i, i32 0, i32 3
  %38 = ptrtoint ptr %tfm1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %base.i.i.i.i.i, ptr %tfm1.i.i.i.i, align 16
  %39 = ptrtoint ptr %wait.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %wait.i.i, align 4
  %wait.i.i.i.i = getelementptr inbounds %struct.completion, ptr %wait.i.i, i32 0, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i.i.i.i, ptr noundef nonnull @.str.11, ptr noundef nonnull @init_completion.__key) #11
  %complete.i.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %call9.i.i.i.i, i32 0, i32 1
  %40 = ptrtoint ptr %complete.i.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @crypto_req_done, ptr %complete.i.i.i, align 8
  %data2.i.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %call9.i.i.i.i, i32 0, i32 2
  %41 = ptrtoint ptr %data2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %wait.i.i, ptr %data2.i.i.i, align 4
  %flags4.i.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %call9.i.i.i.i, i32 0, i32 4
  %42 = ptrtoint ptr %flags4.i.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 1536, ptr %flags4.i.i.i, align 4
  %43 = ptrtoint ptr %tfm1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %tfm1.i.i.i.i, align 16
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %44, align 128
  %and.i.i.i = and i32 %46, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i137.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i137.i.i, label %crypto_ahash_init.exit.i.i, label %if.end.i9.i.if.then.i140.i.i_crit_edge

if.end.i9.i.if.then.i140.i.i_crit_edge:           ; preds = %if.end.i9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i140.i.i

crypto_ahash_init.exit.i.i:                       ; preds = %if.end.i9.i
  %add.ptr.i.i.i138.i.i = getelementptr i8, ptr %44, i32 -128
  %47 = ptrtoint ptr %add.ptr.i.i.i138.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %add.ptr.i.i.i138.i.i, align 128
  %call2.i.i.i = call i32 %48(ptr noundef nonnull %call9.i.i.i.i) #11
  %49 = zext i32 %call2.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %49, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call2.i.i.i, label %crypto_ahash_init.exit.i.i.crypto_wait_req.exit.i.i.i_crit_edge [
    i32 -115, label %crypto_ahash_init.exit.i.i.sw.bb.i.i.i.i_crit_edge
    i32 -16, label %crypto_ahash_init.exit.i.i.sw.bb.i.i.i.i_crit_edge133
  ]

crypto_ahash_init.exit.i.i.sw.bb.i.i.i.i_crit_edge133: ; preds = %crypto_ahash_init.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb.i.i.i.i

crypto_ahash_init.exit.i.i.sw.bb.i.i.i.i_crit_edge: ; preds = %crypto_ahash_init.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb.i.i.i.i

crypto_ahash_init.exit.i.i.crypto_wait_req.exit.i.i.i_crit_edge: ; preds = %crypto_ahash_init.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %crypto_wait_req.exit.i.i.i

sw.bb.i.i.i.i:                                    ; preds = %crypto_ahash_init.exit.i.i.sw.bb.i.i.i.i_crit_edge, %crypto_ahash_init.exit.i.i.sw.bb.i.i.i.i_crit_edge133
  call void @wait_for_completion(ptr noundef nonnull %wait.i.i) #11
  %50 = ptrtoint ptr %wait.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %wait.i.i, align 4
  %err2.i.i.i.i = getelementptr inbounds %struct.crypto_wait, ptr %wait.i.i, i32 0, i32 1
  %51 = ptrtoint ptr %err2.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %err2.i.i.i.i, align 4
  br label %crypto_wait_req.exit.i.i.i

crypto_wait_req.exit.i.i.i:                       ; preds = %sw.bb.i.i.i.i, %crypto_ahash_init.exit.i.i.crypto_wait_req.exit.i.i.i_crit_edge
  %err.addr.0.i.i.i.i = phi i32 [ %call2.i.i.i, %crypto_ahash_init.exit.i.i.crypto_wait_req.exit.i.i.i_crit_edge ], [ %52, %sw.bb.i.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.addr.0.i.i.i.i)
  %tobool.not.i139.i.i = icmp eq i32 %err.addr.0.i.i.i.i, 0
  br i1 %tobool.not.i139.i.i, label %if.end6.i.i, label %crypto_wait_req.exit.i.i.i.if.then.i140.i.i_crit_edge

crypto_wait_req.exit.i.i.i.if.then.i140.i.i_crit_edge: ; preds = %crypto_wait_req.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i140.i.i

if.then.i140.i.i:                                 ; preds = %crypto_wait_req.exit.i.i.i.if.then.i140.i.i_crit_edge, %if.end.i9.i.if.then.i140.i.i_crit_edge
  %err.addr.0.i.i295.i.i = phi i32 [ %err.addr.0.i.i.i.i, %crypto_wait_req.exit.i.i.i.if.then.i140.i.i_crit_edge ], [ -126, %if.end.i9.i.if.then.i140.i.i_crit_edge ]
  %call1.i.i.i = call i32 @___ratelimit(ptr noundef nonnull @ahash_wait._rs, ptr noundef nonnull @__func__.ahash_wait) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool2.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool2.not.i.i.i, label %if.then.i140.i.i.out1.i.i_crit_edge, label %if.then.i140.i.i.out1.sink.split.i.i_crit_edge

if.then.i140.i.i.out1.sink.split.i.i_crit_edge:   ; preds = %if.then.i140.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out1.sink.split.i.i

if.then.i140.i.i.out1.i.i_crit_edge:              ; preds = %if.then.i140.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out1.i.i

if.end6.i.i:                                      ; preds = %crypto_wait_req.exit.i.i.i
  %53 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %f_inode.i, align 8
  %call8.i.i = call fastcc i64 @i_size_read(ptr noundef %54) #11
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call8.i.i)
  %cmp.i10.i = icmp eq i64 %call8.i.i, 0
  br i1 %cmp.i10.i, label %if.end6.i.i.if.then82.i.i_crit_edge, label %if.end11.i.i

if.end6.i.i.if.then82.i.i_crit_edge:              ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then82.i.i

if.end11.i.i:                                     ; preds = %if.end6.i.i
  %55 = load i32, ptr @ima_maxorder, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool.not.i141.i.i = icmp eq i32 %55, 0
  br i1 %tobool.not.i141.i.i, label %if.end11.i.i.ima_alloc_pages.exit.i.i_crit_edge, label %if.end.i147.i.i

if.end11.i.i.ima_alloc_pages.exit.i.i_crit_edge:  ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ima_alloc_pages.exit.i.i

if.end.i147.i.i:                                  ; preds = %if.end11.i.i
  %conv.i.i.i = trunc i64 %call8.i.i to i32
  %dec.i.i.i.i = add i32 %conv.i.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %dec.i.i.i.i)
  %tobool.not.i.i.i146.i.i = icmp ult i32 %dec.i.i.i.i, 4096
  %shr.i.i.i.i = lshr i32 %dec.i.i.i.i, 12
  %56 = call i32 @llvm.ctlz.i32(i32 %shr.i.i.i.i, i1 true) #11, !range !86
  %sub.i.i.i.i.i = sub nuw nsw i32 32, %56
  %cond.i.i.i.i.i = select i1 %tobool.not.i.i.i146.i.i, i32 0, i32 %sub.i.i.i.i.i
  %57 = call i32 @llvm.smin.i32(i32 %cond.i.i.i.i.i, i32 %55) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool2.not33.i.i.i = icmp eq i32 %57, 0
  br i1 %tobool2.not33.i.i.i, label %if.end.i147.i.i.ima_alloc_pages.exit.i.i_crit_edge, label %if.end.i147.i.i.for.body.i.i.i_crit_edge

if.end.i147.i.i.for.body.i.i.i_crit_edge:         ; preds = %if.end.i147.i.i
  br label %for.body.i.i.i

if.end.i147.i.i.ima_alloc_pages.exit.i.i_crit_edge: ; preds = %if.end.i147.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ima_alloc_pages.exit.i.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %if.end.i147.i.i.for.body.i.i.i_crit_edge
  %order.134.i.i.i = phi i32 [ %dec.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ], [ %57, %if.end.i147.i.i.for.body.i.i.i_crit_edge ]
  %call3.i.i.i = call i32 @__get_free_pages(i32 noundef 76800, i32 noundef %order.134.i.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %call3.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %for.inc.i.i.i, label %ima_alloc_pages.exit.thread.i.i

ima_alloc_pages.exit.thread.i.i:                  ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %shl.i.i.i = shl i32 4096, %order.134.i.i.i
  %retval.0.i149326.i.i = inttoptr i32 %call3.i.i.i to ptr
  %58 = ptrtoint ptr %rbuf_size.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %shl.i.i.i, ptr %rbuf_size.i.i, align 4
  %59 = ptrtoint ptr %rbuf.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %retval.0.i149326.i.i, ptr %rbuf.i.i, align 8
  br label %if.end17.i.i

for.inc.i.i.i:                                    ; preds = %for.body.i.i.i
  %dec.i.i.i = add i32 %order.134.i.i.i, -1
  %tobool2.not.i148.i.i = icmp eq i32 %dec.i.i.i, 0
  br i1 %tobool2.not.i148.i.i, label %for.inc.i.i.i.ima_alloc_pages.exit.i.i_crit_edge, label %for.inc.i.i.i.for.body.i.i.i_crit_edge

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i.i

for.inc.i.i.i.ima_alloc_pages.exit.i.i_crit_edge: ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ima_alloc_pages.exit.i.i

ima_alloc_pages.exit.i.i:                         ; preds = %for.inc.i.i.i.ima_alloc_pages.exit.i.i_crit_edge, %if.end.i147.i.i.ima_alloc_pages.exit.i.i_crit_edge, %if.end11.i.i.ima_alloc_pages.exit.i.i_crit_edge
  %call10.i.i.i = call i32 @__get_free_pages(i32 noundef 3264, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i.i.i)
  %tobool11.not.i.i.i = icmp eq i32 %call10.i.i.i, 0
  %spec.select41.i.i.i = select i1 %tobool11.not.i.i.i, i32 0, i32 4096
  %retval.0.i149.i.i = inttoptr i32 %call10.i.i.i to ptr
  %60 = ptrtoint ptr %rbuf_size.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %spec.select41.i.i.i, ptr %rbuf_size.i.i, align 4
  %61 = ptrtoint ptr %rbuf.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %retval.0.i149.i.i, ptr %rbuf.i.i, align 8
  br i1 %tobool11.not.i.i.i, label %ima_alloc_pages.exit.i.i.out1.i.i_crit_edge, label %ima_alloc_pages.exit.i.i.if.end17.i.i_crit_edge

ima_alloc_pages.exit.i.i.if.end17.i.i_crit_edge:  ; preds = %ima_alloc_pages.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17.i.i

ima_alloc_pages.exit.i.i.out1.i.i_crit_edge:      ; preds = %ima_alloc_pages.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out1.i.i

if.end17.i.i:                                     ; preds = %ima_alloc_pages.exit.i.i.if.end17.i.i_crit_edge, %ima_alloc_pages.exit.thread.i.i
  %retval.0.in.i329.i.i = phi i32 [ %call3.i.i.i, %ima_alloc_pages.exit.thread.i.i ], [ %call10.i.i.i, %ima_alloc_pages.exit.i.i.if.end17.i.i_crit_edge ]
  %.sink.i328.i.i = phi i32 [ %shl.i.i.i, %ima_alloc_pages.exit.thread.i.i ], [ 4096, %ima_alloc_pages.exit.i.i.if.end17.i.i_crit_edge ]
  %conv19.i.i = zext i32 %.sink.i328.i.i to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %call8.i.i, i64 %conv19.i.i)
  %cmp20.i.i = icmp sgt i64 %call8.i.i, %conv19.i.i
  br i1 %cmp20.i.i, label %if.then22.i.i, label %if.end17.i.i.if.end28.i.i_crit_edge

if.end17.i.i.if.end28.i.i_crit_edge:              ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28.i.i

if.then22.i.i:                                    ; preds = %if.end17.i.i
  %62 = load i32, ptr @ima_maxorder, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool.not.i150.i.i = icmp eq i32 %62, 0
  br i1 %tobool.not.i150.i.i, label %if.then22.i.i.for.end.i184.i.i_crit_edge, label %if.end.i171.i.i

if.then22.i.i.for.end.i184.i.i_crit_edge:         ; preds = %if.then22.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i184.i.i

if.end.i171.i.i:                                  ; preds = %if.then22.i.i
  %63 = xor i32 %.sink.i328.i.i, -1
  %64 = trunc i64 %call8.i.i to i32
  %dec.i.i163.i.i = add i32 %63, %64
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %dec.i.i163.i.i)
  %tobool.not.i.i.i165.i.i = icmp ult i32 %dec.i.i163.i.i, 4096
  %shr.i.i164.i.i = lshr i32 %dec.i.i163.i.i, 12
  %65 = call i32 @llvm.ctlz.i32(i32 %shr.i.i164.i.i, i1 true) #11, !range !86
  %sub.i.i.i166.i.i = sub nuw nsw i32 32, %65
  %cond.i.i.i167.i.i = select i1 %tobool.not.i.i.i165.i.i, i32 0, i32 %sub.i.i.i166.i.i
  %66 = call i32 @llvm.smin.i32(i32 %cond.i.i.i167.i.i, i32 %62) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool2.not33.i170.i.i = icmp eq i32 %66, 0
  br i1 %tobool2.not33.i170.i.i, label %if.end.i171.i.i.for.end.i184.i.i_crit_edge, label %if.end.i171.i.i.for.body.i175.i.i_crit_edge

if.end.i171.i.i.for.body.i175.i.i_crit_edge:      ; preds = %if.end.i171.i.i
  br label %for.body.i175.i.i

if.end.i171.i.i.for.end.i184.i.i_crit_edge:       ; preds = %if.end.i171.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i184.i.i

for.body.i175.i.i:                                ; preds = %for.inc.i180.i.i.for.body.i175.i.i_crit_edge, %if.end.i171.i.i.for.body.i175.i.i_crit_edge
  %order.134.i172.i.i = phi i32 [ %dec.i178.i.i, %for.inc.i180.i.i.for.body.i175.i.i_crit_edge ], [ %66, %if.end.i171.i.i.for.body.i175.i.i_crit_edge ]
  %call3.i173.i.i = call i32 @__get_free_pages(i32 noundef 76800, i32 noundef %order.134.i172.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i173.i.i)
  %tobool4.not.i174.i.i = icmp eq i32 %call3.i173.i.i, 0
  br i1 %tobool4.not.i174.i.i, label %for.inc.i180.i.i, label %if.then5.i177.i.i

if.then5.i177.i.i:                                ; preds = %for.body.i175.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %shl.i176.i.i = shl i32 4096, %order.134.i172.i.i
  br label %ima_alloc_pages.exit188.i.i

for.inc.i180.i.i:                                 ; preds = %for.body.i175.i.i
  %dec.i178.i.i = add i32 %order.134.i172.i.i, -1
  %tobool2.not.i179.i.i = icmp eq i32 %dec.i178.i.i, 0
  br i1 %tobool2.not.i179.i.i, label %for.inc.i180.i.i.for.end.i184.i.i_crit_edge, label %for.inc.i180.i.i.for.body.i175.i.i_crit_edge

for.inc.i180.i.i.for.body.i175.i.i_crit_edge:     ; preds = %for.inc.i180.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i175.i.i

for.inc.i180.i.i.for.end.i184.i.i_crit_edge:      ; preds = %for.inc.i180.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i184.i.i

for.end.i184.i.i:                                 ; preds = %for.inc.i180.i.i.for.end.i184.i.i_crit_edge, %if.end.i171.i.i.for.end.i184.i.i_crit_edge, %if.then22.i.i.for.end.i184.i.i_crit_edge
  %call10.i181.i.i = call i32 @__get_free_pages(i32 noundef 11456, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i181.i.i)
  %tobool11.not.i182.i.i = icmp eq i32 %call10.i181.i.i, 0
  %spec.select41.i183.i.i = select i1 %tobool11.not.i182.i.i, i32 0, i32 4096
  br label %ima_alloc_pages.exit188.i.i

ima_alloc_pages.exit188.i.i:                      ; preds = %for.end.i184.i.i, %if.then5.i177.i.i
  %.sink.i185.i.i = phi i32 [ %shl.i176.i.i, %if.then5.i177.i.i ], [ %spec.select41.i183.i.i, %for.end.i184.i.i ]
  %retval.0.in.i186.i.i = phi i32 [ %call3.i173.i.i, %if.then5.i177.i.i ], [ %call10.i181.i.i, %for.end.i184.i.i ]
  %retval.0.i187.i.i = inttoptr i32 %retval.0.in.i186.i.i to ptr
  %67 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %.sink.i185.i.i, ptr %29, align 4
  %arrayidx27.i.i = getelementptr inbounds [2 x ptr], ptr %rbuf.i.i, i32 0, i32 1
  %68 = ptrtoint ptr %arrayidx27.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %retval.0.i187.i.i, ptr %arrayidx27.i.i, align 4
  br label %if.end28.i.i

if.end28.i.i:                                     ; preds = %ima_alloc_pages.exit188.i.i, %if.end17.i.i.if.end28.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call8.i.i)
  %cmp29311.i.i = icmp sgt i64 %call8.i.i, 0
  br i1 %cmp29311.i.i, label %for.body.lr.ph.i.i, label %if.end28.i.i.ima_free_pages.exit.i.i_crit_edge

if.end28.i.i.ima_free_pages.exit.i.i_crit_edge:   ; preds = %if.end28.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ima_free_pages.exit.i.i

for.body.lr.ph.i.i:                               ; preds = %if.end28.i.i
  %arrayidx31.i.i = getelementptr inbounds [2 x ptr], ptr %rbuf.i.i, i32 0, i32 1
  %69 = ptrtoint ptr %arrayidx31.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %arrayidx31.i.i, align 4
  %tobool32.not.i.i = icmp ne ptr %70, null
  %err2.i.i189.i.i = getelementptr inbounds %struct.crypto_wait, ptr %wait.i.i, i32 0, i32 1
  %tobool58.not.i.i = icmp eq ptr %70, null
  %src1.i.i.i = getelementptr inbounds %struct.ahash_request, ptr %call9.i.i.i.i, i32 0, i32 2
  %nbytes2.i.i.i = getelementptr inbounds %struct.ahash_request, ptr %call9.i.i.i.i, i32 0, i32 1
  %result3.i.i.i = getelementptr inbounds %struct.ahash_request, ptr %call9.i.i.i.i, i32 0, i32 3
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end66.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %ahash_rc.0314.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %call3.i223.i.i, %if.end66.i.i.for.body.i.i_crit_edge ]
  %active.0313.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %active.1.i.i, %if.end66.i.i.for.body.i.i_crit_edge ]
  %offset.0312.i.i = phi i64 [ 0, %for.body.lr.ph.i.i ], [ %add.i.i, %if.end66.i.i.for.body.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %offset.0312.i.i)
  %tobool33.not.i.i = icmp eq i64 %offset.0312.i.i, 0
  %or.cond.i11.i = select i1 %tobool32.not.i.i, i1 true, i1 %tobool33.not.i.i
  br i1 %or.cond.i11.i, label %for.body.i.i.if.end39.i.i_crit_edge, label %if.then34.i.i

for.body.i.i.if.end39.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end39.i.i

if.then34.i.i:                                    ; preds = %for.body.i.i
  %71 = zext i32 %ahash_rc.0314.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %71, ptr @__sancov_gen_cov_switch_values.18)
  switch i32 %ahash_rc.0314.i.i, label %if.then34.i.i.crypto_wait_req.exit.i193.i.i_crit_edge [
    i32 -115, label %if.then34.i.i.sw.bb.i.i190.i.i_crit_edge
    i32 -16, label %if.then34.i.i.sw.bb.i.i190.i.i_crit_edge134
  ]

if.then34.i.i.sw.bb.i.i190.i.i_crit_edge134:      ; preds = %if.then34.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb.i.i190.i.i

if.then34.i.i.sw.bb.i.i190.i.i_crit_edge:         ; preds = %if.then34.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb.i.i190.i.i

if.then34.i.i.crypto_wait_req.exit.i193.i.i_crit_edge: ; preds = %if.then34.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %crypto_wait_req.exit.i193.i.i

sw.bb.i.i190.i.i:                                 ; preds = %if.then34.i.i.sw.bb.i.i190.i.i_crit_edge, %if.then34.i.i.sw.bb.i.i190.i.i_crit_edge134
  call void @wait_for_completion(ptr noundef nonnull %wait.i.i) #11
  %72 = ptrtoint ptr %wait.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 0, ptr %wait.i.i, align 4
  %73 = ptrtoint ptr %err2.i.i189.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %err2.i.i189.i.i, align 4
  br label %crypto_wait_req.exit.i193.i.i

crypto_wait_req.exit.i193.i.i:                    ; preds = %sw.bb.i.i190.i.i, %if.then34.i.i.crypto_wait_req.exit.i193.i.i_crit_edge
  %err.addr.0.i.i191.i.i = phi i32 [ %ahash_rc.0314.i.i, %if.then34.i.i.crypto_wait_req.exit.i193.i.i_crit_edge ], [ %74, %sw.bb.i.i190.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.addr.0.i.i191.i.i)
  %tobool.not.i192.i.i = icmp eq i32 %err.addr.0.i.i191.i.i, 0
  br i1 %tobool.not.i192.i.i, label %crypto_wait_req.exit.i193.i.i.if.end39.i.i_crit_edge, label %if.then.i196.i.i

crypto_wait_req.exit.i193.i.i.if.end39.i.i_crit_edge: ; preds = %crypto_wait_req.exit.i193.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end39.i.i

if.then.i196.i.i:                                 ; preds = %crypto_wait_req.exit.i193.i.i
  %call1.i194.i.i = call i32 @___ratelimit(ptr noundef nonnull @ahash_wait._rs, ptr noundef nonnull @__func__.ahash_wait) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i194.i.i)
  %tobool2.not.i195.i.i = icmp eq i32 %call1.i194.i.i, 0
  br i1 %tobool2.not.i195.i.i, label %if.then.i196.i.i.ima_free_pages.exit.i.i_crit_edge, label %if.then.i196.i.i.if.end.i236.sink.split.i.i_crit_edge

if.then.i196.i.i.if.end.i236.sink.split.i.i_crit_edge: ; preds = %if.then.i196.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i236.sink.split.i.i

if.then.i196.i.i.ima_free_pages.exit.i.i_crit_edge: ; preds = %if.then.i196.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ima_free_pages.exit.i.i

if.end39.i.i:                                     ; preds = %crypto_wait_req.exit.i193.i.i.if.end39.i.i_crit_edge, %for.body.i.i.if.end39.i.i_crit_edge
  %sub40.i.i = sub i64 %call8.i.i, %offset.0312.i.i
  %arrayidx41.i.i = getelementptr [2 x i32], ptr %rbuf_size.i.i, i32 0, i32 %active.0313.i.i
  %75 = ptrtoint ptr %arrayidx41.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %arrayidx41.i.i, align 4
  %conv42.i.i = zext i32 %76 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %sub40.i.i, i64 %conv42.i.i)
  %cmp43.i.i = icmp slt i64 %sub40.i.i, %conv42.i.i
  %extract.t.i.i = trunc i64 %sub40.i.i to i32
  %cond.off0.i.i = select i1 %cmp43.i.i, i32 %extract.t.i.i, i32 %76
  %arrayidx46.i.i = getelementptr [2 x ptr], ptr %rbuf.i.i, i32 0, i32 %active.0313.i.i
  %77 = ptrtoint ptr %arrayidx46.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %arrayidx46.i.i, align 4
  %call47.i.i = call i32 @integrity_kernel_read(ptr noundef %f.0, i64 noundef %offset.0312.i.i, ptr noundef %78, i32 noundef %cond.off0.i.i) #11
  call void @__sanitizer_cov_trace_cmp4(i32 %call47.i.i, i32 %cond.off0.i.i)
  %cmp48.not.i.i = icmp eq i32 %call47.i.i, %cond.off0.i.i
  br i1 %cmp48.not.i.i, label %if.end56.i.i, label %if.then50.i.i

if.then50.i.i:                                    ; preds = %if.end39.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call47.i.i)
  %cmp51.i.i = icmp sgt i32 %call47.i.i, -1
  %spec.store.select.i.i = select i1 %cmp51.i.i, i32 -22, i32 %call47.i.i
  %79 = zext i32 %ahash_rc.0314.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %79, ptr @__sancov_gen_cov_switch_values.19)
  switch i32 %ahash_rc.0314.i.i, label %if.then50.i.i.crypto_wait_req.exit.i204.i.i_crit_edge [
    i32 -115, label %if.then50.i.i.sw.bb.i.i201.i.i_crit_edge
    i32 -16, label %if.then50.i.i.sw.bb.i.i201.i.i_crit_edge135
  ]

if.then50.i.i.sw.bb.i.i201.i.i_crit_edge135:      ; preds = %if.then50.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb.i.i201.i.i

if.then50.i.i.sw.bb.i.i201.i.i_crit_edge:         ; preds = %if.then50.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb.i.i201.i.i

if.then50.i.i.crypto_wait_req.exit.i204.i.i_crit_edge: ; preds = %if.then50.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %crypto_wait_req.exit.i204.i.i

sw.bb.i.i201.i.i:                                 ; preds = %if.then50.i.i.sw.bb.i.i201.i.i_crit_edge, %if.then50.i.i.sw.bb.i.i201.i.i_crit_edge135
  call void @wait_for_completion(ptr noundef nonnull %wait.i.i) #11
  %80 = ptrtoint ptr %wait.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 0, ptr %wait.i.i, align 4
  %81 = ptrtoint ptr %err2.i.i189.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %err2.i.i189.i.i, align 4
  br label %crypto_wait_req.exit.i204.i.i

crypto_wait_req.exit.i204.i.i:                    ; preds = %sw.bb.i.i201.i.i, %if.then50.i.i.crypto_wait_req.exit.i204.i.i_crit_edge
  %err.addr.0.i.i202.i.i = phi i32 [ %ahash_rc.0314.i.i, %if.then50.i.i.crypto_wait_req.exit.i204.i.i_crit_edge ], [ %82, %sw.bb.i.i201.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.addr.0.i.i202.i.i)
  %tobool.not.i203.i.i = icmp eq i32 %err.addr.0.i.i202.i.i, 0
  br i1 %tobool.not.i203.i.i, label %crypto_wait_req.exit.i204.i.i.ima_free_pages.exit.i.i_crit_edge, label %if.then.i207.i.i

crypto_wait_req.exit.i204.i.i.ima_free_pages.exit.i.i_crit_edge: ; preds = %crypto_wait_req.exit.i204.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ima_free_pages.exit.i.i

if.then.i207.i.i:                                 ; preds = %crypto_wait_req.exit.i204.i.i
  %call1.i205.i.i = call i32 @___ratelimit(ptr noundef nonnull @ahash_wait._rs, ptr noundef nonnull @__func__.ahash_wait) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i205.i.i)
  %tobool2.not.i206.i.i = icmp eq i32 %call1.i205.i.i, 0
  br i1 %tobool2.not.i206.i.i, label %if.then.i207.i.i.ima_free_pages.exit.i.i_crit_edge, label %if.then.i207.i.i.if.end.i236.sink.split.i.i_crit_edge

if.then.i207.i.i.if.end.i236.sink.split.i.i_crit_edge: ; preds = %if.then.i207.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i236.sink.split.i.i

if.then.i207.i.i.ima_free_pages.exit.i.i_crit_edge: ; preds = %if.then.i207.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ima_free_pages.exit.i.i

if.end56.i.i:                                     ; preds = %if.end39.i.i
  %or.cond136.i.i = select i1 %tobool58.not.i.i, i1 true, i1 %tobool33.not.i.i
  br i1 %or.cond136.i.i, label %if.end56.i.i.if.end66.i.i_crit_edge, label %if.then61.i.i

if.end56.i.i.if.end66.i.i_crit_edge:              ; preds = %if.end56.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end66.i.i

if.then61.i.i:                                    ; preds = %if.end56.i.i
  %83 = zext i32 %ahash_rc.0314.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %83, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %ahash_rc.0314.i.i, label %if.then61.i.i.crypto_wait_req.exit.i215.i.i_crit_edge [
    i32 -115, label %if.then61.i.i.sw.bb.i.i212.i.i_crit_edge
    i32 -16, label %if.then61.i.i.sw.bb.i.i212.i.i_crit_edge136
  ]

if.then61.i.i.sw.bb.i.i212.i.i_crit_edge136:      ; preds = %if.then61.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb.i.i212.i.i

if.then61.i.i.sw.bb.i.i212.i.i_crit_edge:         ; preds = %if.then61.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb.i.i212.i.i

if.then61.i.i.crypto_wait_req.exit.i215.i.i_crit_edge: ; preds = %if.then61.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %crypto_wait_req.exit.i215.i.i

sw.bb.i.i212.i.i:                                 ; preds = %if.then61.i.i.sw.bb.i.i212.i.i_crit_edge, %if.then61.i.i.sw.bb.i.i212.i.i_crit_edge136
  call void @wait_for_completion(ptr noundef nonnull %wait.i.i) #11
  %84 = ptrtoint ptr %wait.i.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 0, ptr %wait.i.i, align 4
  %85 = ptrtoint ptr %err2.i.i189.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %err2.i.i189.i.i, align 4
  br label %crypto_wait_req.exit.i215.i.i

crypto_wait_req.exit.i215.i.i:                    ; preds = %sw.bb.i.i212.i.i, %if.then61.i.i.crypto_wait_req.exit.i215.i.i_crit_edge
  %err.addr.0.i.i213.i.i = phi i32 [ %ahash_rc.0314.i.i, %if.then61.i.i.crypto_wait_req.exit.i215.i.i_crit_edge ], [ %86, %sw.bb.i.i212.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.addr.0.i.i213.i.i)
  %tobool.not.i214.i.i = icmp eq i32 %err.addr.0.i.i213.i.i, 0
  br i1 %tobool.not.i214.i.i, label %crypto_wait_req.exit.i215.i.i.if.end66.i.i_crit_edge, label %if.then.i218.i.i

crypto_wait_req.exit.i215.i.i.if.end66.i.i_crit_edge: ; preds = %crypto_wait_req.exit.i215.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end66.i.i

if.then.i218.i.i:                                 ; preds = %crypto_wait_req.exit.i215.i.i
  %call1.i216.i.i = call i32 @___ratelimit(ptr noundef nonnull @ahash_wait._rs, ptr noundef nonnull @__func__.ahash_wait) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i216.i.i)
  %tobool2.not.i217.i.i = icmp eq i32 %call1.i216.i.i, 0
  br i1 %tobool2.not.i217.i.i, label %if.then.i218.i.i.ima_free_pages.exit.i.i_crit_edge, label %if.then.i218.i.i.if.end.i236.sink.split.i.i_crit_edge

if.then.i218.i.i.if.end.i236.sink.split.i.i_crit_edge: ; preds = %if.then.i218.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i236.sink.split.i.i

if.then.i218.i.i.ima_free_pages.exit.i.i_crit_edge: ; preds = %if.then.i218.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ima_free_pages.exit.i.i

if.end66.i.i:                                     ; preds = %crypto_wait_req.exit.i215.i.i.if.end66.i.i_crit_edge, %if.end56.i.i.if.end66.i.i_crit_edge
  call void @sg_init_one(ptr noundef nonnull %sg.i.i, ptr noundef %78, i32 noundef %cond.off0.i.i) #11
  %87 = ptrtoint ptr %src1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %sg.i.i, ptr %src1.i.i.i, align 4
  %88 = ptrtoint ptr %nbytes2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %cond.off0.i.i, ptr %nbytes2.i.i.i, align 8
  %89 = ptrtoint ptr %result3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr null, ptr %result3.i.i.i, align 32
  %90 = ptrtoint ptr %tfm1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %tfm1.i.i.i.i, align 16
  %__crt_alg.i.i.i = getelementptr i8, ptr %91, i32 12
  %92 = ptrtoint ptr %__crt_alg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %__crt_alg.i.i.i, align 4
  call void @crypto_stats_get(ptr noundef %93) #11
  %94 = ptrtoint ptr %tfm1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %tfm1.i.i.i.i, align 16
  %update.i.i.i = getelementptr i8, ptr %95, i32 -124
  %96 = ptrtoint ptr %update.i.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %update.i.i.i, align 4
  %call3.i223.i.i = call i32 %97(ptr noundef nonnull %call9.i.i.i.i) #11
  call void @crypto_stats_ahash_update(i32 noundef %cond.off0.i.i, i32 noundef %call3.i223.i.i, ptr noundef %93) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %active.0313.i.i)
  %tobool73.not.i.i = icmp eq i32 %active.0313.i.i, 0
  %lnot.ext.i.i = zext i1 %tobool73.not.i.i to i32
  %active.1.i.i = select i1 %tobool58.not.i.i, i32 %active.0313.i.i, i32 %lnot.ext.i.i
  %conv75.i.i = sext i32 %cond.off0.i.i to i64
  %add.i.i = add i64 %offset.0312.i.i, %conv75.i.i
  %cmp29.i.i = icmp sgt i64 %call8.i.i, %add.i.i
  br i1 %cmp29.i.i, label %if.end66.i.i.for.body.i.i_crit_edge, label %for.end.i.i

if.end66.i.i.for.body.i.i_crit_edge:              ; preds = %if.end66.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %if.end66.i.i
  %98 = zext i32 %call3.i223.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %98, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %call3.i223.i.i, label %for.end.i.i.crypto_wait_req.exit.i228.i.i_crit_edge [
    i32 -115, label %for.end.i.i.sw.bb.i.i225.i.i_crit_edge
    i32 -16, label %for.end.i.i.sw.bb.i.i225.i.i_crit_edge137
  ]

for.end.i.i.sw.bb.i.i225.i.i_crit_edge137:        ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb.i.i225.i.i

for.end.i.i.sw.bb.i.i225.i.i_crit_edge:           ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb.i.i225.i.i

for.end.i.i.crypto_wait_req.exit.i228.i.i_crit_edge: ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %crypto_wait_req.exit.i228.i.i

sw.bb.i.i225.i.i:                                 ; preds = %for.end.i.i.sw.bb.i.i225.i.i_crit_edge, %for.end.i.i.sw.bb.i.i225.i.i_crit_edge137
  call void @wait_for_completion(ptr noundef nonnull %wait.i.i) #11
  %99 = ptrtoint ptr %wait.i.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 0, ptr %wait.i.i, align 4
  %100 = ptrtoint ptr %err2.i.i189.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %err2.i.i189.i.i, align 4
  br label %crypto_wait_req.exit.i228.i.i

crypto_wait_req.exit.i228.i.i:                    ; preds = %sw.bb.i.i225.i.i, %for.end.i.i.crypto_wait_req.exit.i228.i.i_crit_edge
  %err.addr.0.i.i226.i.i = phi i32 [ %call3.i223.i.i, %for.end.i.i.crypto_wait_req.exit.i228.i.i_crit_edge ], [ %101, %sw.bb.i.i225.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.addr.0.i.i226.i.i)
  %tobool.not.i227.i.i = icmp eq i32 %err.addr.0.i.i226.i.i, 0
  br i1 %tobool.not.i227.i.i, label %crypto_wait_req.exit.i228.i.i.ima_free_pages.exit.i.i_crit_edge, label %if.then.i231.i.i

crypto_wait_req.exit.i228.i.i.ima_free_pages.exit.i.i_crit_edge: ; preds = %crypto_wait_req.exit.i228.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ima_free_pages.exit.i.i

if.then.i231.i.i:                                 ; preds = %crypto_wait_req.exit.i228.i.i
  %call1.i229.i.i = call i32 @___ratelimit(ptr noundef nonnull @ahash_wait._rs, ptr noundef nonnull @__func__.ahash_wait) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i229.i.i)
  %tobool2.not.i230.i.i = icmp eq i32 %call1.i229.i.i, 0
  br i1 %tobool2.not.i230.i.i, label %if.then.i231.i.i.ima_free_pages.exit.i.i_crit_edge, label %if.then.i231.i.i.if.end.i236.sink.split.i.i_crit_edge

if.then.i231.i.i.if.end.i236.sink.split.i.i_crit_edge: ; preds = %if.then.i231.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i236.sink.split.i.i

if.then.i231.i.i.ima_free_pages.exit.i.i_crit_edge: ; preds = %if.then.i231.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ima_free_pages.exit.i.i

if.end.i236.sink.split.i.i:                       ; preds = %if.then.i231.i.i.if.end.i236.sink.split.i.i_crit_edge, %if.then.i218.i.i.if.end.i236.sink.split.i.i_crit_edge, %if.then.i207.i.i.if.end.i236.sink.split.i.i_crit_edge, %if.then.i196.i.i.if.end.i236.sink.split.i.i_crit_edge
  %err.addr.0.i.i213.lcssa.sink.i.i = phi i32 [ %err.addr.0.i.i191.i.i, %if.then.i196.i.i.if.end.i236.sink.split.i.i_crit_edge ], [ %err.addr.0.i.i202.i.i, %if.then.i207.i.i.if.end.i236.sink.split.i.i_crit_edge ], [ %err.addr.0.i.i213.i.i, %if.then.i218.i.i.if.end.i236.sink.split.i.i_crit_edge ], [ %err.addr.0.i.i226.i.i, %if.then.i231.i.i.if.end.i236.sink.split.i.i_crit_edge ]
  %rc.0.ph.i.i = phi i32 [ %err.addr.0.i.i191.i.i, %if.then.i196.i.i.if.end.i236.sink.split.i.i_crit_edge ], [ %spec.store.select.i.i, %if.then.i207.i.i.if.end.i236.sink.split.i.i_crit_edge ], [ %err.addr.0.i.i213.i.i, %if.then.i218.i.i.if.end.i236.sink.split.i.i_crit_edge ], [ %err.addr.0.i.i226.i.i, %if.then.i231.i.i.if.end.i236.sink.split.i.i_crit_edge ]
  %call4.i219.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %err.addr.0.i.i213.lcssa.sink.i.i) #16
  br label %ima_free_pages.exit.i.i

ima_free_pages.exit.i.i:                          ; preds = %if.end.i236.sink.split.i.i, %if.then.i231.i.i.ima_free_pages.exit.i.i_crit_edge, %crypto_wait_req.exit.i228.i.i.ima_free_pages.exit.i.i_crit_edge, %if.then.i218.i.i.ima_free_pages.exit.i.i_crit_edge, %if.then.i207.i.i.ima_free_pages.exit.i.i_crit_edge, %crypto_wait_req.exit.i204.i.i.ima_free_pages.exit.i.i_crit_edge, %if.then.i196.i.i.ima_free_pages.exit.i.i_crit_edge, %if.end28.i.i.ima_free_pages.exit.i.i_crit_edge
  %rc.0.i.i = phi i32 [ %spec.store.select.i.i, %crypto_wait_req.exit.i204.i.i.ima_free_pages.exit.i.i_crit_edge ], [ %spec.store.select.i.i, %if.then.i207.i.i.ima_free_pages.exit.i.i_crit_edge ], [ 0, %crypto_wait_req.exit.i228.i.i.ima_free_pages.exit.i.i_crit_edge ], [ %err.addr.0.i.i226.i.i, %if.then.i231.i.i.ima_free_pages.exit.i.i_crit_edge ], [ %err.addr.0.i.i191.i.i, %if.then.i196.i.i.ima_free_pages.exit.i.i_crit_edge ], [ %err.addr.0.i.i213.i.i, %if.then.i218.i.i.ima_free_pages.exit.i.i_crit_edge ], [ 0, %if.end28.i.i.ima_free_pages.exit.i.i_crit_edge ], [ %rc.0.ph.i.i, %if.end.i236.sink.split.i.i ]
  %dec.i.i247.i.i = add i32 %.sink.i328.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %dec.i.i247.i.i)
  %tobool.not.i.i.i249.i.i = icmp eq i32 %dec.i.i247.i.i, 4095
  %shr.i.i248.i.i = lshr i32 %dec.i.i247.i.i, 12
  %102 = call i32 @llvm.ctlz.i32(i32 %shr.i.i248.i.i, i1 true) #11, !range !86
  %sub.i.i.i250.i.i = sub nuw nsw i32 32, %102
  %cond.i.i.i251.i.i = select i1 %tobool.not.i.i.i249.i.i, i32 0, i32 %sub.i.i.i250.i.i
  call void @free_pages(i32 noundef %retval.0.in.i329.i.i, i32 noundef %cond.i.i.i251.i.i) #11
  %arrayidx79.i.i = getelementptr inbounds [2 x ptr], ptr %rbuf.i.i, i32 0, i32 1
  %103 = ptrtoint ptr %arrayidx79.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %arrayidx79.i.i, align 4
  %tobool.not.i254.i.i = icmp eq ptr %104, null
  br i1 %tobool.not.i254.i.i, label %ima_free_pages.exit.i.i.out2.i.i_crit_edge, label %if.end.i255.i.i

ima_free_pages.exit.i.i.out2.i.i_crit_edge:       ; preds = %ima_free_pages.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out2.i.i

if.end.i255.i.i:                                  ; preds = %ima_free_pages.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %105 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %29, align 4
  %107 = ptrtoint ptr %104 to i32
  %dec.i.i266.i.i = add i32 %106, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %dec.i.i266.i.i)
  %tobool.not.i.i.i268.i.i = icmp ult i32 %dec.i.i266.i.i, 4096
  %shr.i.i267.i.i = lshr i32 %dec.i.i266.i.i, 12
  %108 = call i32 @llvm.ctlz.i32(i32 %shr.i.i267.i.i, i1 true) #11, !range !86
  %sub.i.i.i269.i.i = sub nuw nsw i32 32, %108
  %cond.i.i.i270.i.i = select i1 %tobool.not.i.i.i268.i.i, i32 0, i32 %sub.i.i.i269.i.i
  call void @free_pages(i32 noundef %107, i32 noundef %cond.i.i.i270.i.i) #11
  br label %out2.i.i

out2.i.i:                                         ; preds = %if.end.i255.i.i, %ima_free_pages.exit.i.i.out2.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.0.i.i)
  %tobool81.not.i.i = icmp eq i32 %rc.0.i.i, 0
  br i1 %tobool81.not.i.i, label %out2.i.i.if.then82.i.i_crit_edge, label %out2.i.i.out1.i.i_crit_edge

out2.i.i.out1.i.i_crit_edge:                      ; preds = %out2.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out1.i.i

out2.i.i.if.then82.i.i_crit_edge:                 ; preds = %out2.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then82.i.i

if.then82.i.i:                                    ; preds = %out2.i.i.if.then82.i.i_crit_edge, %if.end6.i.i.if.then82.i.i_crit_edge
  %digest.i.i = getelementptr inbounds %struct.ima_digest_data, ptr %hash, i32 0, i32 3
  %src1.i275.i.i = getelementptr inbounds %struct.ahash_request, ptr %call9.i.i.i.i, i32 0, i32 2
  %109 = ptrtoint ptr %src1.i275.i.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr null, ptr %src1.i275.i.i, align 4
  %nbytes2.i276.i.i = getelementptr inbounds %struct.ahash_request, ptr %call9.i.i.i.i, i32 0, i32 1
  %110 = ptrtoint ptr %nbytes2.i276.i.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 0, ptr %nbytes2.i276.i.i, align 8
  %result3.i277.i.i = getelementptr inbounds %struct.ahash_request, ptr %call9.i.i.i.i, i32 0, i32 3
  %111 = ptrtoint ptr %result3.i277.i.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %digest.i.i, ptr %result3.i277.i.i, align 32
  %call84.i.i = call i32 @crypto_ahash_final(ptr noundef nonnull %call9.i.i.i.i) #11
  %112 = zext i32 %call84.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %112, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %call84.i.i, label %if.then82.i.i.crypto_wait_req.exit.i282.i.i_crit_edge [
    i32 -115, label %if.then82.i.i.sw.bb.i.i279.i.i_crit_edge
    i32 -16, label %if.then82.i.i.sw.bb.i.i279.i.i_crit_edge138
  ]

if.then82.i.i.sw.bb.i.i279.i.i_crit_edge138:      ; preds = %if.then82.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb.i.i279.i.i

if.then82.i.i.sw.bb.i.i279.i.i_crit_edge:         ; preds = %if.then82.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb.i.i279.i.i

if.then82.i.i.crypto_wait_req.exit.i282.i.i_crit_edge: ; preds = %if.then82.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %crypto_wait_req.exit.i282.i.i

sw.bb.i.i279.i.i:                                 ; preds = %if.then82.i.i.sw.bb.i.i279.i.i_crit_edge, %if.then82.i.i.sw.bb.i.i279.i.i_crit_edge138
  call void @wait_for_completion(ptr noundef nonnull %wait.i.i) #11
  %113 = ptrtoint ptr %wait.i.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 0, ptr %wait.i.i, align 4
  %err2.i.i278.i.i = getelementptr inbounds %struct.crypto_wait, ptr %wait.i.i, i32 0, i32 1
  %114 = ptrtoint ptr %err2.i.i278.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %err2.i.i278.i.i, align 4
  br label %crypto_wait_req.exit.i282.i.i

crypto_wait_req.exit.i282.i.i:                    ; preds = %sw.bb.i.i279.i.i, %if.then82.i.i.crypto_wait_req.exit.i282.i.i_crit_edge
  %err.addr.0.i.i280.i.i = phi i32 [ %call84.i.i, %if.then82.i.i.crypto_wait_req.exit.i282.i.i_crit_edge ], [ %115, %sw.bb.i.i279.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.addr.0.i.i280.i.i)
  %tobool.not.i281.i.i = icmp eq i32 %err.addr.0.i.i280.i.i, 0
  br i1 %tobool.not.i281.i.i, label %crypto_wait_req.exit.i282.i.i.out1.i.i_crit_edge, label %if.then.i285.i.i

crypto_wait_req.exit.i282.i.i.out1.i.i_crit_edge: ; preds = %crypto_wait_req.exit.i282.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out1.i.i

if.then.i285.i.i:                                 ; preds = %crypto_wait_req.exit.i282.i.i
  %call1.i283.i.i = call i32 @___ratelimit(ptr noundef nonnull @ahash_wait._rs, ptr noundef nonnull @__func__.ahash_wait) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i283.i.i)
  %tobool2.not.i284.i.i = icmp eq i32 %call1.i283.i.i, 0
  br i1 %tobool2.not.i284.i.i, label %if.then.i285.i.i.out1.i.i_crit_edge, label %if.then.i285.i.i.out1.sink.split.i.i_crit_edge

if.then.i285.i.i.out1.sink.split.i.i_crit_edge:   ; preds = %if.then.i285.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out1.sink.split.i.i

if.then.i285.i.i.out1.i.i_crit_edge:              ; preds = %if.then.i285.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out1.i.i

out1.sink.split.i.i:                              ; preds = %if.then.i285.i.i.out1.sink.split.i.i_crit_edge, %if.then.i140.i.i.out1.sink.split.i.i_crit_edge
  %err.addr.0.i.i295.sink.i.i = phi i32 [ %err.addr.0.i.i295.i.i, %if.then.i140.i.i.out1.sink.split.i.i_crit_edge ], [ %err.addr.0.i.i280.i.i, %if.then.i285.i.i.out1.sink.split.i.i_crit_edge ]
  %call4.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %err.addr.0.i.i295.sink.i.i) #16
  br label %out1.i.i

out1.i.i:                                         ; preds = %out1.sink.split.i.i, %if.then.i285.i.i.out1.i.i_crit_edge, %crypto_wait_req.exit.i282.i.i.out1.i.i_crit_edge, %out2.i.i.out1.i.i_crit_edge, %ima_alloc_pages.exit.i.i.out1.i.i_crit_edge, %if.then.i140.i.i.out1.i.i_crit_edge
  %rc.2.i.i = phi i32 [ %rc.0.i.i, %out2.i.i.out1.i.i_crit_edge ], [ -12, %ima_alloc_pages.exit.i.i.out1.i.i_crit_edge ], [ 0, %crypto_wait_req.exit.i282.i.i.out1.i.i_crit_edge ], [ %err.addr.0.i.i280.i.i, %if.then.i285.i.i.out1.i.i_crit_edge ], [ %err.addr.0.i.i295.i.i, %if.then.i140.i.i.out1.i.i_crit_edge ], [ %err.addr.0.i.i295.sink.i.i, %out1.sink.split.i.i ]
  call void @kfree_sensitive(ptr noundef nonnull %call9.i.i.i.i) #11
  br label %ima_calc_file_hash_atfm.exit.i

ima_calc_file_hash_atfm.exit.i:                   ; preds = %out1.i.i, %if.end.i.ima_calc_file_hash_atfm.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %rc.2.i.i, %out1.i.i ], [ -12, %if.end.i.ima_calc_file_hash_atfm.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rbuf_size.i.i) #11
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %wait.i.i) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg.i.i) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rbuf.i.i) #11
  %116 = load ptr, ptr @ima_ahash_tfm, align 4
  %cmp.not.i.i = icmp eq ptr %116, %tfm.0.i.i
  br i1 %cmp.not.i.i, label %ima_calc_file_hash_atfm.exit.i.ima_calc_file_ahash.exit_crit_edge, label %if.then.i12.i

ima_calc_file_hash_atfm.exit.i.ima_calc_file_ahash.exit_crit_edge: ; preds = %ima_calc_file_hash_atfm.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ima_calc_file_ahash.exit

if.then.i12.i:                                    ; preds = %ima_calc_file_hash_atfm.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %base.i.i.i.i = getelementptr inbounds %struct.crypto_ahash, ptr %tfm.0.i.i, i32 0, i32 10
  call void @crypto_destroy_tfm(ptr noundef %tfm.0.i.i, ptr noundef %base.i.i.i.i) #11
  br label %ima_calc_file_ahash.exit

ima_calc_file_ahash.exit:                         ; preds = %if.then.i12.i, %ima_calc_file_hash_atfm.exit.i.ima_calc_file_ahash.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %tobool19.not = icmp eq i32 %retval.0.i.i, 0
  br i1 %tobool19.not, label %ima_calc_file_ahash.exit.out_crit_edge, label %ima_calc_file_ahash.exit.if.end22_crit_edge

ima_calc_file_ahash.exit.if.end22_crit_edge:      ; preds = %ima_calc_file_ahash.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22

ima_calc_file_ahash.exit.out_crit_edge:           ; preds = %ima_calc_file_ahash.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end22:                                         ; preds = %ima_calc_file_ahash.exit.if.end22_crit_edge, %ima_alloc_atfm.exit.i.if.end22_crit_edge, %if.end11.if.end22_crit_edge
  %117 = ptrtoint ptr %hash to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %hash, align 1
  %conv.i46 = zext i8 %118 to i32
  %119 = load ptr, ptr @ima_shash_tfm, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 19, i8 %118)
  %cmp1.i.i47 = icmp ugt i8 %118, 19
  br i1 %cmp1.i.i47, label %if.then.i.i48, label %if.end22.if.end.i.i50_crit_edge

if.end22.if.end.i.i50_crit_edge:                  ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i50

if.then.i.i48:                                    ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ima_hash_algo to i32))
  %120 = load i32, ptr @ima_hash_algo, align 4
  br label %if.end.i.i50

if.end.i.i50:                                     ; preds = %if.then.i.i48, %if.end22.if.end.i.i50_crit_edge
  %algo.addr.0.i.i49 = phi i32 [ %120, %if.then.i.i48 ], [ %conv.i46, %if.end22.if.end.i.i50_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ima_hash_algo to i32))
  %121 = load i32, ptr @ima_hash_algo, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %algo.addr.0.i.i49, i32 %121)
  %cmp2.i.i = icmp eq i32 %algo.addr.0.i.i49, %121
  br i1 %cmp2.i.i, label %if.end.i.i50.ima_alloc_tfm.exit.i_crit_edge, label %for.cond.preheader.i.i

if.end.i.i50.ima_alloc_tfm.exit.i_crit_edge:      ; preds = %if.end.i.i50
  call void @__sanitizer_cov_trace_pc() #13
  br label %ima_alloc_tfm.exit.i

for.cond.preheader.i.i:                           ; preds = %if.end.i.i50
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ima_tpm_chip to i32))
  %122 = load ptr, ptr @ima_tpm_chip, align 4
  %cmp5.not.i.i = icmp eq ptr %122, null
  %123 = load i32, ptr @ima_extra_slots, align 4
  %nr_allocated_banks.i.i = getelementptr inbounds %struct.tpm_chip, ptr %122, i32 0, i32 25
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.inc.i.i, %for.cond.preheader.i.i
  %i.0.i.i = phi i32 [ %inc.i.i, %for.inc.i.i ], [ 0, %for.cond.preheader.i.i ]
  br i1 %cmp5.not.i.i, label %for.cond.i.i.cond.end.i.i_crit_edge, label %cond.true.i.i

for.cond.i.i.cond.end.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end.i.i

cond.true.i.i:                                    ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %124 = ptrtoint ptr %nr_allocated_banks.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %nr_allocated_banks.i.i, align 8
  br label %cond.end.i.i

cond.end.i.i:                                     ; preds = %cond.true.i.i, %for.cond.i.i.cond.end.i.i_crit_edge
  %cond.i.i = phi i32 [ %125, %cond.true.i.i ], [ 0, %for.cond.i.i.cond.end.i.i_crit_edge ]
  %add.i.i51 = add i32 %cond.i.i, %123
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.i.i, i32 %add.i.i51)
  %cmp6.i.i = icmp ult i32 %i.0.i.i, %add.i.i51
  br i1 %cmp6.i.i, label %for.body.i.i54, label %for.end.i.i57

for.body.i.i54:                                   ; preds = %cond.end.i.i
  %126 = load ptr, ptr @ima_algo_array, align 4
  %arrayidx.i.i52 = getelementptr %struct.ima_algo_desc, ptr %126, i32 %i.0.i.i
  %127 = ptrtoint ptr %arrayidx.i.i52 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %arrayidx.i.i52, align 4
  %tobool.not.i.i53 = icmp eq ptr %128, null
  br i1 %tobool.not.i.i53, label %for.body.i.i54.for.inc.i.i_crit_edge, label %land.lhs.true.i.i

for.body.i.i54.for.inc.i.i_crit_edge:             ; preds = %for.body.i.i54
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i54
  %algo9.i.i = getelementptr %struct.ima_algo_desc, ptr %126, i32 %i.0.i.i, i32 1
  %129 = ptrtoint ptr %algo9.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %algo9.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %130, i32 %algo.addr.0.i.i49)
  %cmp10.i.i = icmp eq i32 %130, %algo.addr.0.i.i49
  br i1 %cmp10.i.i, label %land.lhs.true.i.i.ima_alloc_tfm.exit.i_crit_edge, label %land.lhs.true.i.i.for.inc.i.i_crit_edge

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

land.lhs.true.i.i.ima_alloc_tfm.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ima_alloc_tfm.exit.i

for.inc.i.i:                                      ; preds = %land.lhs.true.i.i.for.inc.i.i_crit_edge, %for.body.i.i54.for.inc.i.i_crit_edge
  %inc.i.i = add nuw i32 %i.0.i.i, 1
  br label %for.cond.i.i

for.end.i.i57:                                    ; preds = %cond.end.i.i
  %arrayidx15.i.i = getelementptr [20 x ptr], ptr @hash_algo_name, i32 0, i32 %algo.addr.0.i.i49
  %131 = ptrtoint ptr %arrayidx15.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %arrayidx15.i.i, align 4
  %call.i.i55 = call ptr @crypto_alloc_shash(ptr noundef %132, i32 noundef 0, i32 noundef 0) #11
  %cmp.i.i.i56 = icmp ugt ptr %call.i.i55, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i56, label %if.then17.i.i, label %for.end.i.i57.ima_alloc_tfm.exit.i_crit_edge

for.end.i.i57.ima_alloc_tfm.exit.i_crit_edge:     ; preds = %for.end.i.i57
  call void @__sanitizer_cov_trace_pc() #13
  br label %ima_alloc_tfm.exit.i

if.then17.i.i:                                    ; preds = %for.end.i.i57
  call void @__sanitizer_cov_trace_pc() #13
  %133 = ptrtoint ptr %call.i.i55 to i32
  %call20.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %132, i32 noundef %133) #16
  br label %ima_alloc_tfm.exit.i

ima_alloc_tfm.exit.i:                             ; preds = %if.then17.i.i, %for.end.i.i57.ima_alloc_tfm.exit.i_crit_edge, %land.lhs.true.i.i.ima_alloc_tfm.exit.i_crit_edge, %if.end.i.i50.ima_alloc_tfm.exit.i_crit_edge
  %retval.0.i.i58 = phi ptr [ %119, %if.end.i.i50.ima_alloc_tfm.exit.i_crit_edge ], [ %call.i.i55, %if.then17.i.i ], [ %call.i.i55, %for.end.i.i57.ima_alloc_tfm.exit.i_crit_edge ], [ %128, %land.lhs.true.i.i.ima_alloc_tfm.exit.i_crit_edge ]
  %cmp.i.i59 = icmp ugt ptr %retval.0.i.i58, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i59, label %if.then.i60, label %if.end.i67

if.then.i60:                                      ; preds = %ima_alloc_tfm.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %134 = ptrtoint ptr %retval.0.i.i58 to i32
  br label %out

if.end.i67:                                       ; preds = %ima_alloc_tfm.exit.i
  call void @llvm.lifetime.start.p0(i64 376, ptr nonnull %__shash_desc.i.i) #11
  %135 = call ptr @memset(ptr %__shash_desc.i.i, i32 255, i32 376)
  %136 = ptrtoint ptr %__shash_desc.i.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store ptr %retval.0.i.i58, ptr %__shash_desc.i.i, align 8
  %__crt_alg.i.i.i.i61 = getelementptr inbounds %struct.crypto_shash, ptr %retval.0.i.i58, i32 0, i32 2, i32 3
  %137 = ptrtoint ptr %__crt_alg.i.i.i.i61 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %__crt_alg.i.i.i.i61, align 4
  %digestsize.i.i.i = getelementptr i8, ptr %138, i32 -128
  %139 = ptrtoint ptr %digestsize.i.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %digestsize.i.i.i, align 128
  %conv.i.i62 = trunc i32 %140 to i8
  %length.i.i63 = getelementptr inbounds %struct.ima_digest_data, ptr %hash, i32 0, i32 1
  %141 = ptrtoint ptr %length.i.i63 to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 %conv.i.i62, ptr %length.i.i63, align 1
  %base.i.i.i.i.i64 = getelementptr inbounds %struct.crypto_shash, ptr %retval.0.i.i58, i32 0, i32 2
  %142 = ptrtoint ptr %base.i.i.i.i.i64 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %base.i.i.i.i.i64, align 128
  %and.i.i.i65 = and i32 %143, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i65)
  %tobool.not.i.i.i66 = icmp eq i32 %and.i.i.i65, 0
  br i1 %tobool.not.i.i.i66, label %crypto_shash_init.exit.i.i, label %if.end.i67.ima_calc_file_hash_tfm.exit.i_crit_edge

if.end.i67.ima_calc_file_hash_tfm.exit.i_crit_edge: ; preds = %if.end.i67
  call void @__sanitizer_cov_trace_pc() #13
  br label %ima_calc_file_hash_tfm.exit.i

crypto_shash_init.exit.i.i:                       ; preds = %if.end.i67
  %144 = ptrtoint ptr %__crt_alg.i.i.i.i61 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %__crt_alg.i.i.i.i61, align 4
  %add.ptr.i.i.i.i.i68 = getelementptr i8, ptr %145, i32 -256
  %146 = ptrtoint ptr %add.ptr.i.i.i.i.i68 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %add.ptr.i.i.i.i.i68, align 128
  %call3.i.i.i69 = call i32 %147(ptr noundef nonnull %__shash_desc.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i.i69)
  %cmp.not.i.i70 = icmp eq i32 %call3.i.i.i69, 0
  br i1 %cmp.not.i.i70, label %if.end.i10.i, label %crypto_shash_init.exit.i.i.ima_calc_file_hash_tfm.exit.i_crit_edge

crypto_shash_init.exit.i.i.ima_calc_file_hash_tfm.exit.i_crit_edge: ; preds = %crypto_shash_init.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ima_calc_file_hash_tfm.exit.i

if.end.i10.i:                                     ; preds = %crypto_shash_init.exit.i.i
  %148 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %f_inode.i, align 8
  %call5.i.i = call fastcc i64 @i_size_read(ptr noundef %149) #11
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call5.i.i)
  %cmp6.i9.i = icmp eq i64 %call5.i.i, 0
  br i1 %cmp6.i9.i, label %if.end.i10.i.if.then30.i.i_crit_edge, label %if.end9.i.i

if.end.i10.i.if.then30.i.i_crit_edge:             ; preds = %if.end.i10.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then30.i.i

if.end9.i.i:                                      ; preds = %if.end.i10.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %150 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i.i.i72 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %150, i32 noundef 3520, i32 noundef 4096) #17
  %tobool.not.i11.i = icmp eq ptr %call7.i.i.i.i72, null
  br i1 %tobool.not.i11.i, label %if.end9.i.i.ima_calc_file_hash_tfm.exit.i_crit_edge, label %if.end9.i.i.while.cond.i.i_crit_edge

if.end9.i.i.while.cond.i.i_crit_edge:             ; preds = %if.end9.i.i
  br label %while.cond.i.i

if.end9.i.i.ima_calc_file_hash_tfm.exit.i_crit_edge: ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ima_calc_file_hash_tfm.exit.i

while.cond.i.i:                                   ; preds = %if.end23.i.i.while.cond.i.i_crit_edge, %if.end9.i.i.while.cond.i.i_crit_edge
  %offset.0.i.i = phi i64 [ %add.i12.i, %if.end23.i.i.while.cond.i.i_crit_edge ], [ 0, %if.end9.i.i.while.cond.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp8(i64 %offset.0.i.i, i64 %call5.i.i)
  %cmp13.i.i = icmp slt i64 %offset.0.i.i, %call5.i.i
  br i1 %cmp13.i.i, label %while.body.i.i, label %out.thread69.i.i

out.thread69.i.i:                                 ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @kfree(ptr noundef nonnull %call7.i.i.i.i72) #11
  br label %if.then30.i.i

while.body.i.i:                                   ; preds = %while.cond.i.i
  %call15.i.i = call i32 @integrity_kernel_read(ptr noundef %f.0, i64 noundef %offset.0.i.i, ptr noundef nonnull %call7.i.i.i.i72, i32 noundef 4096) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i.i)
  %cmp16.i.i = icmp slt i32 %call15.i.i, 0
  br i1 %cmp16.i.i, label %while.body.i.i.out.i.i_crit_edge, label %if.end19.i.i

while.body.i.i.out.i.i_crit_edge:                 ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.i.i

if.end19.i.i:                                     ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i.i)
  %cmp20.i.i73 = icmp eq i32 %call15.i.i, 0
  br i1 %cmp20.i.i73, label %if.end19.i.i.out.i.i_crit_edge, label %if.end23.i.i

if.end19.i.i.out.i.i_crit_edge:                   ; preds = %if.end19.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.i.i

if.end23.i.i:                                     ; preds = %if.end19.i.i
  %conv2472.i.i = zext i32 %call15.i.i to i64
  %add.i12.i = add i64 %offset.0.i.i, %conv2472.i.i
  %call25.i.i = call i32 @crypto_shash_update(ptr noundef nonnull %__shash_desc.i.i, ptr noundef nonnull %call7.i.i.i.i72, i32 noundef %call15.i.i) #11
  %tobool26.not.i.i = icmp eq i32 %call25.i.i, 0
  br i1 %tobool26.not.i.i, label %if.end23.i.i.while.cond.i.i_crit_edge, label %if.end23.i.i.out.i.i_crit_edge

if.end23.i.i.out.i.i_crit_edge:                   ; preds = %if.end23.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.i.i

if.end23.i.i.while.cond.i.i_crit_edge:            ; preds = %if.end23.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i.i

out.i.i:                                          ; preds = %if.end23.i.i.out.i.i_crit_edge, %if.end19.i.i.out.i.i_crit_edge, %while.body.i.i.out.i.i_crit_edge
  %rc.1.ph.i.i = phi i32 [ %call25.i.i, %if.end23.i.i.out.i.i_crit_edge ], [ -22, %if.end19.i.i.out.i.i_crit_edge ], [ %call15.i.i, %while.body.i.i.out.i.i_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i.i.i72) #11
  br label %ima_calc_file_hash_tfm.exit.i

if.then30.i.i:                                    ; preds = %out.thread69.i.i, %if.end.i10.i.if.then30.i.i_crit_edge
  %digest.i.i74 = getelementptr inbounds %struct.ima_digest_data, ptr %hash, i32 0, i32 3
  %call32.i.i = call i32 @crypto_shash_final(ptr noundef nonnull %__shash_desc.i.i, ptr noundef %digest.i.i74) #11
  br label %ima_calc_file_hash_tfm.exit.i

ima_calc_file_hash_tfm.exit.i:                    ; preds = %if.then30.i.i, %out.i.i, %if.end9.i.i.ima_calc_file_hash_tfm.exit.i_crit_edge, %crypto_shash_init.exit.i.i.ima_calc_file_hash_tfm.exit.i_crit_edge, %if.end.i67.ima_calc_file_hash_tfm.exit.i_crit_edge
  %retval.0.i13.i = phi i32 [ %call3.i.i.i69, %crypto_shash_init.exit.i.i.ima_calc_file_hash_tfm.exit.i_crit_edge ], [ -12, %if.end9.i.i.ima_calc_file_hash_tfm.exit.i_crit_edge ], [ %rc.1.ph.i.i, %out.i.i ], [ %call32.i.i, %if.then30.i.i ], [ -126, %if.end.i67.ima_calc_file_hash_tfm.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 376, ptr nonnull %__shash_desc.i.i) #11
  %151 = load ptr, ptr @ima_shash_tfm, align 4
  %cmp.i14.i = icmp eq ptr %151, %retval.0.i.i58
  br i1 %cmp.i14.i, label %ima_calc_file_hash_tfm.exit.i.out_crit_edge, label %for.cond.preheader.i16.i

ima_calc_file_hash_tfm.exit.i.out_crit_edge:      ; preds = %ima_calc_file_hash_tfm.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

for.cond.preheader.i16.i:                         ; preds = %ima_calc_file_hash_tfm.exit.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ima_tpm_chip to i32))
  %152 = load ptr, ptr @ima_tpm_chip, align 4
  %cmp1.not.i.i = icmp eq ptr %152, null
  %153 = load i32, ptr @ima_extra_slots, align 4
  %nr_allocated_banks.i15.i = getelementptr inbounds %struct.tpm_chip, ptr %152, i32 0, i32 25
  br label %for.cond.i18.i

for.cond.i18.i:                                   ; preds = %for.body.i26.i.for.cond.i18.i_crit_edge, %for.cond.preheader.i16.i
  %i.0.i17.i = phi i32 [ %inc.i25.i, %for.body.i26.i.for.cond.i18.i_crit_edge ], [ 0, %for.cond.preheader.i16.i ]
  br i1 %cmp1.not.i.i, label %for.cond.i18.i.cond.end.i23.i_crit_edge, label %cond.true.i19.i

for.cond.i18.i.cond.end.i23.i_crit_edge:          ; preds = %for.cond.i18.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end.i23.i

cond.true.i19.i:                                  ; preds = %for.cond.i18.i
  call void @__sanitizer_cov_trace_pc() #13
  %154 = ptrtoint ptr %nr_allocated_banks.i15.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %nr_allocated_banks.i15.i, align 8
  br label %cond.end.i23.i

cond.end.i23.i:                                   ; preds = %cond.true.i19.i, %for.cond.i18.i.cond.end.i23.i_crit_edge
  %cond.i20.i = phi i32 [ %155, %cond.true.i19.i ], [ 0, %for.cond.i18.i.cond.end.i23.i_crit_edge ]
  %add.i21.i = add i32 %cond.i20.i, %153
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.i17.i, i32 %add.i21.i)
  %cmp2.i22.i = icmp ult i32 %i.0.i17.i, %add.i21.i
  br i1 %cmp2.i22.i, label %for.body.i26.i, label %for.end.i27.i

for.body.i26.i:                                   ; preds = %cond.end.i23.i
  %156 = load ptr, ptr @ima_algo_array, align 4
  %arrayidx.i24.i = getelementptr %struct.ima_algo_desc, ptr %156, i32 %i.0.i17.i
  %157 = ptrtoint ptr %arrayidx.i24.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %arrayidx.i24.i, align 4
  %cmp4.i.i = icmp eq ptr %158, %retval.0.i.i58
  %inc.i25.i = add nuw i32 %i.0.i17.i, 1
  br i1 %cmp4.i.i, label %for.body.i26.i.out_crit_edge, label %for.body.i26.i.for.cond.i18.i_crit_edge

for.body.i26.i.for.cond.i18.i_crit_edge:          ; preds = %for.body.i26.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i18.i

for.body.i26.i.out_crit_edge:                     ; preds = %for.body.i26.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

for.end.i27.i:                                    ; preds = %cond.end.i23.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @crypto_destroy_tfm(ptr noundef %retval.0.i.i58, ptr noundef %base.i.i.i.i.i64) #11
  br label %out

out:                                              ; preds = %for.end.i27.i, %for.body.i26.i.out_crit_edge, %ima_calc_file_hash_tfm.exit.i.out_crit_edge, %if.then.i60, %ima_calc_file_ahash.exit.out_crit_edge
  %rc.0 = phi i32 [ 0, %ima_calc_file_ahash.exit.out_crit_edge ], [ %134, %if.then.i60 ], [ %retval.0.i13.i, %ima_calc_file_hash_tfm.exit.i.out_crit_edge ], [ %retval.0.i13.i, %for.end.i27.i ], [ %retval.0.i13.i, %for.body.i26.i.out_crit_edge ]
  br i1 %tobool3.not, label %if.then25, label %out.cleanup27_crit_edge

out.cleanup27_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup27

if.then25:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #13
  call void @fput(ptr noundef %f.0) #11
  br label %cleanup27

cleanup27:                                        ; preds = %if.then25, %out.cleanup27_crit_edge, %cleanup.thread, %if.then
  %retval.1 = phi i32 [ -22, %if.then ], [ %rc.0, %if.then25 ], [ %rc.0, %out.cleanup27_crit_edge ], [ %12, %cleanup.thread ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dentry_open(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i64 @i_size_read(ptr noundef %inode) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %i_size_seqcount = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23
  %dep_map.c48.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23, i32 1
  %i_size18 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  br label %do.body

do.body:                                          ; preds = %while.end.do.body_crit_edge, %entry
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !87
  %and.i.i = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %do.body24.critedge.i

if.then.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @trace_hardirqs_off() #11
  %1 = tail call ptr @llvm.returnaddress(i32 0) #11
  %2 = ptrtoint ptr %1 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %2) #11
  tail call void @lock_release(ptr noundef %dep_map.c48.i, i32 noundef %2) #11
  tail call void @trace_hardirqs_on() #11
  br label %do.body24.i

do.body24.critedge.i:                             ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %3 = tail call ptr @llvm.returnaddress(i32 0) #11
  %4 = ptrtoint ptr %3 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %4) #11
  tail call void @lock_release(ptr noundef %dep_map.c48.i, i32 noundef %4) #11
  br label %do.body24.i

do.body24.i:                                      ; preds = %do.body24.critedge.i, %if.then.i
  %5 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !88
  %and.i.i.i = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool32.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool32.not.i, label %if.then36.i, label %do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge, !prof !84

do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge: ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %seqcount_lockdep_reader_access.exit

if.then36.i:                                      ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @warn_bogus_irq_restore() #11
  br label %seqcount_lockdep_reader_access.exit

seqcount_lockdep_reader_access.exit:              ; preds = %if.then36.i, %do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #11, !srcloc !89
  %6 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %i_size_seqcount, align 4
  %and29 = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool.not30 = icmp eq i32 %and29, 0
  br i1 %tobool.not30, label %seqcount_lockdep_reader_access.exit.while.end_crit_edge, label %seqcount_lockdep_reader_access.exit.do.end_crit_edge

seqcount_lockdep_reader_access.exit.do.end_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit
  br label %do.end

seqcount_lockdep_reader_access.exit.while.end_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

do.end:                                           ; preds = %do.end.do.end_crit_edge, %seqcount_lockdep_reader_access.exit.do.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !90
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !91
  %8 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %i_size_seqcount, align 4
  %and = and i32 %9, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end.while.end_crit_edge, label %do.end.do.end_crit_edge

do.end.do.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %do.end.while.end_crit_edge, %seqcount_lockdep_reader_access.exit.while.end_crit_edge
  %.lcssa = phi i32 [ %7, %seqcount_lockdep_reader_access.exit.while.end_crit_edge ], [ %9, %do.end.while.end_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !92
  %10 = ptrtoint ptr %i_size18 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %i_size18, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !93
  %12 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %i_size_seqcount, align 4
  %cmp.i.i.not = icmp eq i32 %13, %.lcssa
  br i1 %cmp.i.i.not, label %do.end24, label %while.end.do.body_crit_edge

while.end.do.body_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

do.end24:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  ret i64 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ima_calc_field_array_hash(ptr nocapture noundef readonly %field_data, ptr nocapture noundef readonly %entry1) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @ima_sha1_idx, align 4
  %call = tail call fastcc i32 @ima_calc_field_array_hash_tfm(ptr noundef %field_data, ptr noundef %entry1, i32 noundef %0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %digests = getelementptr inbounds %struct.ima_template_entry, ptr %entry1, i32 0, i32 1
  %1 = ptrtoint ptr %digests to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %digests, align 4
  %3 = load i32, ptr @ima_sha1_idx, align 4
  %arrayidx = getelementptr %struct.tpm_digest, ptr %2, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_storeN_noabort(i32 %4, i32 2)
  store i16 4, ptr %arrayidx, align 1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %i.0 = phi i32 [ 0, %if.end ], [ %inc, %for.inc ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ima_tpm_chip to i32))
  %5 = load ptr, ptr @ima_tpm_chip, align 4
  %cmp.not = icmp eq ptr %5, null
  br i1 %cmp.not, label %for.cond.cond.end_crit_edge, label %cond.true

for.cond.cond.end_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.true:                                        ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  %nr_allocated_banks = getelementptr inbounds %struct.tpm_chip, ptr %5, i32 0, i32 25
  %6 = ptrtoint ptr %nr_allocated_banks to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nr_allocated_banks, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %for.cond.cond.end_crit_edge
  %cond = phi i32 [ %7, %cond.true ], [ 0, %for.cond.cond.end_crit_edge ]
  %8 = load i32, ptr @ima_extra_slots, align 4
  %add = add i32 %8, %cond
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0, i32 %add)
  %cmp3 = icmp ult i32 %i.0, %add
  br i1 %cmp3, label %for.body, label %cond.end.cleanup_crit_edge

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body:                                         ; preds = %cond.end
  %9 = load i32, ptr @ima_sha1_idx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0, i32 %9)
  %cmp4 = icmp eq i32 %i.0, %9
  br i1 %cmp4, label %for.body.for.inc_crit_edge, label %if.end6

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end6:                                          ; preds = %for.body
  br i1 %cmp.not, label %if.end6.cond.end11_crit_edge, label %cond.true8

if.end6.cond.end11_crit_edge:                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end11

cond.true8:                                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  %nr_allocated_banks9 = getelementptr inbounds %struct.tpm_chip, ptr %5, i32 0, i32 25
  %10 = ptrtoint ptr %nr_allocated_banks9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nr_allocated_banks9, align 8
  br label %cond.end11

cond.end11:                                       ; preds = %cond.true8, %if.end6.cond.end11_crit_edge
  %cond12 = phi i32 [ %11, %cond.true8 ], [ 0, %if.end6.cond.end11_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0, i32 %cond12)
  %cmp13 = icmp ult i32 %i.0, %cond12
  br i1 %cmp13, label %if.then14, label %cond.end11.if.end20_crit_edge

cond.end11.if.end20_crit_edge:                    ; preds = %cond.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20

if.then14:                                        ; preds = %cond.end11
  call void @__sanitizer_cov_trace_pc() #13
  %allocated_banks = getelementptr inbounds %struct.tpm_chip, ptr %5, i32 0, i32 26
  %12 = ptrtoint ptr %allocated_banks to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %allocated_banks, align 4
  %arrayidx15 = getelementptr %struct.tpm_bank_info, ptr %13, i32 %i.0
  %14 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %arrayidx15, align 2
  %16 = ptrtoint ptr %digests to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %digests, align 4
  %arrayidx18 = getelementptr %struct.tpm_digest, ptr %17, i32 %i.0
  %18 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_storeN_noabort(i32 %18, i32 2)
  store i16 %15, ptr %arrayidx18, align 1
  br label %if.end20

if.end20:                                         ; preds = %if.then14, %cond.end11.if.end20_crit_edge
  %19 = load ptr, ptr @ima_algo_array, align 4
  %arrayidx21 = getelementptr %struct.ima_algo_desc, ptr %19, i32 %i.0
  %20 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx21, align 4
  %tobool22.not = icmp eq ptr %21, null
  br i1 %tobool22.not, label %if.then23, label %if.end30

if.then23:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  %22 = ptrtoint ptr %digests to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %digests, align 4
  %digest = getelementptr %struct.tpm_digest, ptr %23, i32 %i.0, i32 1
  %24 = load i32, ptr @ima_sha1_idx, align 4
  %digest28 = getelementptr %struct.tpm_digest, ptr %23, i32 %24, i32 1
  %25 = call ptr @memcpy(ptr %digest, ptr %digest28, i32 20)
  br label %for.inc

if.end30:                                         ; preds = %if.end20
  %call31 = tail call fastcc i32 @ima_calc_field_array_hash_tfm(ptr noundef %field_data, ptr noundef %entry1, i32 noundef %i.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end30.for.inc_crit_edge, label %if.end30.cleanup_crit_edge

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end30.for.inc_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

for.inc:                                          ; preds = %if.end30.for.inc_crit_edge, %if.then23, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.0, 1
  br label %for.cond

cleanup:                                          ; preds = %if.end30.cleanup_crit_edge, %cond.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ 0, %cond.end.cleanup_crit_edge ], [ %call31, %if.end30.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ima_calc_field_array_hash_tfm(ptr nocapture noundef readonly %field_data, ptr nocapture noundef readonly %entry1, i32 noundef %tfm_idx) unnamed_addr #2 align 64 {
entry:
  %__shash_desc = alloca [376 x i8], align 8
  %buffer = alloca [256 x i8], align 1
  %datalen_to_hash = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 376, ptr nonnull %__shash_desc) #11
  %0 = call ptr @memset(ptr %__shash_desc, i32 255, i32 376)
  %template_desc = getelementptr inbounds %struct.ima_template_entry, ptr %entry1, i32 0, i32 2
  %1 = ptrtoint ptr %template_desc to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %template_desc, align 4
  %num_fields3 = getelementptr inbounds %struct.ima_template_desc, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %num_fields3 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %num_fields3, align 4
  %5 = load ptr, ptr @ima_algo_array, align 4
  %arrayidx = getelementptr %struct.ima_algo_desc, ptr %5, i32 %tfm_idx
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %8 = ptrtoint ptr %__shash_desc to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %__shash_desc, align 8
  %base.i.i.i = getelementptr inbounds %struct.crypto_shash, ptr %7, i32 0, i32 2
  %9 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %base.i.i.i, align 128
  %and.i = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %crypto_shash_init.exit, label %entry.cleanup37_crit_edge

entry.cleanup37_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup37

crypto_shash_init.exit:                           ; preds = %entry
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_shash, ptr %7, i32 0, i32 2, i32 3
  %11 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %__crt_alg.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %12, i32 -256
  %13 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %add.ptr.i.i.i, align 128
  %call3.i = call i32 %14(ptr noundef nonnull %__shash_desc) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp.not = icmp eq i32 %call3.i, 0
  br i1 %cmp.not, label %for.cond.preheader, label %crypto_shash_init.exit.cleanup37_crit_edge

crypto_shash_init.exit.cleanup37_crit_edge:       ; preds = %crypto_shash_init.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup37

for.cond.preheader:                               ; preds = %crypto_shash_init.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp572 = icmp sgt i32 %4, 0
  br i1 %cmp572, label %for.body.lr.ph, label %for.cond.preheader.if.then32_crit_edge

for.cond.preheader.if.then32_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then32

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %name = getelementptr inbounds %struct.ima_template_desc, ptr %2, i32 0, i32 1
  %fields = getelementptr inbounds %struct.ima_template_desc, ptr %2, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.073 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %buffer) #11
  %15 = call ptr @memset(ptr %buffer, i32 0, i32 256)
  %arrayidx6 = getelementptr %struct.ima_field_data, ptr %field_data, i32 %i.073
  %16 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx6, align 4
  %len = getelementptr %struct.ima_field_data, ptr %field_data, i32 %i.073, i32 1
  %18 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %len, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %datalen_to_hash) #11
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @ima_canonical_fmt to i32))
  %20 = load i8, ptr @ima_canonical_fmt, align 1, !range !94
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not = icmp eq i8 %20, 0
  %21 = call i32 @llvm.bswap.i32(i32 %19)
  %cond = select i1 %tobool.not, i32 %19, i32 %21
  %22 = ptrtoint ptr %datalen_to_hash to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %cond, ptr %datalen_to_hash, align 4
  %23 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %name, align 4
  %call8 = call i32 @strcmp(ptr noundef %24, ptr noundef nonnull dereferenceable(4) @.str.14) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9.not = icmp eq i32 %call8, 0
  br i1 %cmp9.not, label %if.else, label %if.then10

if.then10:                                        ; preds = %for.body
  %call11 = call i32 @crypto_shash_update(ptr noundef nonnull %__shash_desc, ptr noundef nonnull %datalen_to_hash, i32 noundef 4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.then10.if.end23_crit_edge, label %if.then10.for.end_crit_edge

if.then10.for.end_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.then10.if.end23_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23

if.else:                                          ; preds = %for.body
  %25 = ptrtoint ptr %fields to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %fields, align 4
  %arrayidx15 = getelementptr ptr, ptr %26, i32 %i.073
  %27 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx15, align 4
  %call17 = call i32 @strcmp(ptr noundef %28, ptr noundef nonnull dereferenceable(2) @.str.15) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp18 = icmp eq i32 %call17, 0
  br i1 %cmp18, label %if.then19, label %if.else.if.end23_crit_edge

if.else.if.end23_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23

if.then19:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %29 = call ptr @memcpy(ptr %buffer, ptr %17, i32 %19)
  br label %if.end23

if.end23:                                         ; preds = %if.then19, %if.else.if.end23_crit_edge, %if.then10.if.end23_crit_edge
  %data_to_hash.0 = phi ptr [ %17, %if.then10.if.end23_crit_edge ], [ %buffer, %if.then19 ], [ %17, %if.else.if.end23_crit_edge ]
  %datalen.0 = phi i32 [ %19, %if.then10.if.end23_crit_edge ], [ 256, %if.then19 ], [ %19, %if.else.if.end23_crit_edge ]
  %call24 = call i32 @crypto_shash_update(ptr noundef nonnull %__shash_desc, ptr noundef %data_to_hash.0, i32 noundef %datalen.0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %for.inc, label %if.end23.for.end_crit_edge

if.end23.for.end_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc:                                          ; preds = %if.end23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %datalen_to_hash) #11
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %buffer) #11
  %inc = add nuw nsw i32 %i.073, 1
  %exitcond.not = icmp eq i32 %inc, %4
  br i1 %exitcond.not, label %for.inc.if.then32_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.if.then32_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then32

for.end:                                          ; preds = %if.end23.for.end_crit_edge, %if.then10.for.end_crit_edge
  %rc.1.ph = phi i32 [ %call24, %if.end23.for.end_crit_edge ], [ %call11, %if.then10.for.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %datalen_to_hash) #11
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %buffer) #11
  br label %cleanup37

if.then32:                                        ; preds = %for.inc.if.then32_crit_edge, %for.cond.preheader.if.then32_crit_edge
  %digests = getelementptr inbounds %struct.ima_template_entry, ptr %entry1, i32 0, i32 1
  %30 = ptrtoint ptr %digests to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %digests, align 4
  %digest = getelementptr %struct.tpm_digest, ptr %31, i32 %tfm_idx, i32 1
  %call35 = call i32 @crypto_shash_final(ptr noundef nonnull %__shash_desc, ptr noundef %digest) #11
  br label %cleanup37

cleanup37:                                        ; preds = %if.then32, %for.end, %crypto_shash_init.exit.cleanup37_crit_edge, %entry.cleanup37_crit_edge
  %retval.0 = phi i32 [ %call3.i, %crypto_shash_init.exit.cleanup37_crit_edge ], [ %rc.1.ph, %for.end ], [ %call35, %if.then32 ], [ -126, %entry.cleanup37_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 376, ptr nonnull %__shash_desc) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ima_calc_buffer_hash(ptr noundef %buf, i64 noundef %len, ptr noundef %hash) local_unnamed_addr #2 align 64 {
entry:
  %__shash_desc.i.i = alloca [376 x i8], align 8
  %sg.i.i = alloca %struct.scatterlist, align 4
  %wait.i.i = alloca %struct.crypto_wait, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @ima_ahash_minsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  %conv = zext i32 %0 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %conv, i64 %len)
  %cmp.not = icmp sgt i64 %conv, %len
  %or.cond = or i1 %tobool.not, %cmp.not
  br i1 %or.cond, label %entry.if.end4_crit_edge, label %if.then

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4

if.then:                                          ; preds = %entry
  %1 = ptrtoint ptr %hash to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %hash, align 1
  %conv.i = zext i8 %2 to i32
  %3 = load ptr, ptr @ima_ahash_tfm, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 19, i8 %2)
  %cmp1.i.i = icmp ugt i8 %2, 19
  br i1 %cmp1.i.i, label %if.then.i.i, label %if.then.if.end.i.i_crit_edge

if.then.if.end.i.i_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ima_hash_algo to i32))
  %4 = load i32, ptr @ima_hash_algo, align 4
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %if.then.if.end.i.i_crit_edge
  %algo.addr.0.i.i = phi i32 [ %4, %if.then.i.i ], [ %conv.i, %if.then.if.end.i.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ima_hash_algo to i32))
  %5 = load i32, ptr @ima_hash_algo, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %algo.addr.0.i.i, i32 %5)
  %cmp2.not.i.i = icmp ne i32 %algo.addr.0.i.i, %5
  %tobool.not.i.i = icmp eq ptr %3, null
  %or.cond.i.i = select i1 %cmp2.not.i.i, i1 true, i1 %tobool.not.i.i
  br i1 %or.cond.i.i, label %if.then4.i.i, label %if.end.i.i.ima_alloc_atfm.exit.i_crit_edge

if.end.i.i.ima_alloc_atfm.exit.i_crit_edge:       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ima_alloc_atfm.exit.i

if.then4.i.i:                                     ; preds = %if.end.i.i
  %arrayidx.i.i = getelementptr [20 x ptr], ptr @hash_algo_name, i32 0, i32 %algo.addr.0.i.i
  %6 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i.i, align 4
  %call.i.i = tail call ptr @crypto_alloc_ahash(ptr noundef %7, i32 noundef 0, i32 noundef 0) #11
  %cmp.i.i.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %if.else.i.i, label %if.then6.i.i

if.then6.i.i:                                     ; preds = %if.then4.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ima_hash_algo to i32))
  %8 = load i32, ptr @ima_hash_algo, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %algo.addr.0.i.i, i32 %8)
  %cmp7.i.i = icmp eq i32 %algo.addr.0.i.i, %8
  br i1 %cmp7.i.i, label %if.then8.i.i, label %if.then6.i.i.ima_alloc_atfm.exit.i_crit_edge

if.then6.i.i.ima_alloc_atfm.exit.i_crit_edge:     ; preds = %if.then6.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ima_alloc_atfm.exit.i

if.then8.i.i:                                     ; preds = %if.then6.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store ptr %call.i.i, ptr @ima_ahash_tfm, align 4
  br label %ima_alloc_atfm.exit.i

if.else.i.i:                                      ; preds = %if.then4.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %9 = ptrtoint ptr %call.i.i to i32
  %call12.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %7, i32 noundef %9) #16
  br label %ima_alloc_atfm.exit.i

ima_alloc_atfm.exit.i:                            ; preds = %if.else.i.i, %if.then8.i.i, %if.then6.i.i.ima_alloc_atfm.exit.i_crit_edge, %if.end.i.i.ima_alloc_atfm.exit.i_crit_edge
  %tfm.0.i.i = phi ptr [ %call.i.i, %if.else.i.i ], [ %call.i.i, %if.then8.i.i ], [ %call.i.i, %if.then6.i.i.ima_alloc_atfm.exit.i_crit_edge ], [ %3, %if.end.i.i.ima_alloc_atfm.exit.i_crit_edge ]
  %cmp.i.i = icmp ugt ptr %tfm.0.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %ima_alloc_atfm.exit.i.if.end4_crit_edge, label %if.end.i

ima_alloc_atfm.exit.i.if.end4_crit_edge:          ; preds = %ima_alloc_atfm.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4

if.end.i:                                         ; preds = %ima_alloc_atfm.exit.i
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %sg.i.i) #11
  %10 = call ptr @memset(ptr %sg.i.i, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %wait.i.i) #11
  %11 = getelementptr inbounds i8, ptr %wait.i.i, i32 4
  %12 = call ptr @memset(ptr %11, i32 255, i32 56)
  %__crt_alg.i.i.i.i = getelementptr inbounds %struct.crypto_ahash, ptr %tfm.0.i.i, i32 0, i32 10, i32 3
  %13 = ptrtoint ptr %__crt_alg.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %__crt_alg.i.i.i.i, align 4
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %14, i32 -128
  %15 = ptrtoint ptr %add.ptr.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %add.ptr.i.i.i.i.i, align 128
  %conv.i.i = trunc i32 %16 to i8
  %length.i.i = getelementptr inbounds %struct.ima_digest_data, ptr %hash, i32 0, i32 1
  %17 = ptrtoint ptr %length.i.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv.i.i, ptr %length.i.i, align 1
  %reqsize.i.i.i.i = getelementptr inbounds %struct.crypto_ahash, ptr %tfm.0.i.i, i32 0, i32 8
  %18 = ptrtoint ptr %reqsize.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %reqsize.i.i.i.i, align 32
  %add.i.i.i = add i32 %19, 128
  %call9.i.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i.i.i, i32 noundef 3264) #15
  %tobool.not.i.i.i = icmp eq ptr %call9.i.i.i.i, null
  br i1 %tobool.not.i.i.i, label %if.end.i.calc_buffer_ahash_atfm.exit.i_crit_edge, label %if.end.i9.i, !prof !84

if.end.i.calc_buffer_ahash_atfm.exit.i_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %calc_buffer_ahash_atfm.exit.i

if.end.i9.i:                                      ; preds = %if.end.i
  %base.i.i.i.i.i = getelementptr inbounds %struct.crypto_ahash, ptr %tfm.0.i.i, i32 0, i32 10
  %tfm1.i.i.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %call9.i.i.i.i, i32 0, i32 3
  %20 = ptrtoint ptr %tfm1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %base.i.i.i.i.i, ptr %tfm1.i.i.i.i, align 16
  %21 = ptrtoint ptr %wait.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %wait.i.i, align 4
  call void @__init_swait_queue_head(ptr noundef %11, ptr noundef nonnull @.str.11, ptr noundef nonnull @init_completion.__key) #11
  %complete.i.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %call9.i.i.i.i, i32 0, i32 1
  %22 = ptrtoint ptr %complete.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @crypto_req_done, ptr %complete.i.i.i, align 8
  %data2.i.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %call9.i.i.i.i, i32 0, i32 2
  %23 = ptrtoint ptr %data2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %wait.i.i, ptr %data2.i.i.i, align 4
  %flags4.i.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %call9.i.i.i.i, i32 0, i32 4
  %24 = ptrtoint ptr %flags4.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1536, ptr %flags4.i.i.i, align 4
  %25 = ptrtoint ptr %tfm1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %tfm1.i.i.i.i, align 16
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %26, align 128
  %and.i.i.i = and i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i32.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i32.i.i, label %crypto_ahash_init.exit.i.i, label %if.end.i9.i.if.then.i35.i.i_crit_edge

if.end.i9.i.if.then.i35.i.i_crit_edge:            ; preds = %if.end.i9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i35.i.i

crypto_ahash_init.exit.i.i:                       ; preds = %if.end.i9.i
  %add.ptr.i.i.i33.i.i = getelementptr i8, ptr %26, i32 -128
  %29 = ptrtoint ptr %add.ptr.i.i.i33.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %add.ptr.i.i.i33.i.i, align 128
  %call2.i.i.i = call i32 %30(ptr noundef nonnull %call9.i.i.i.i) #11
  %31 = zext i32 %call2.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %call2.i.i.i, label %crypto_ahash_init.exit.i.i.crypto_wait_req.exit.i.i.i_crit_edge [
    i32 -115, label %crypto_ahash_init.exit.i.i.sw.bb.i.i.i.i_crit_edge
    i32 -16, label %crypto_ahash_init.exit.i.i.sw.bb.i.i.i.i_crit_edge42
  ]

crypto_ahash_init.exit.i.i.sw.bb.i.i.i.i_crit_edge42: ; preds = %crypto_ahash_init.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb.i.i.i.i

crypto_ahash_init.exit.i.i.sw.bb.i.i.i.i_crit_edge: ; preds = %crypto_ahash_init.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb.i.i.i.i

crypto_ahash_init.exit.i.i.crypto_wait_req.exit.i.i.i_crit_edge: ; preds = %crypto_ahash_init.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %crypto_wait_req.exit.i.i.i

sw.bb.i.i.i.i:                                    ; preds = %crypto_ahash_init.exit.i.i.sw.bb.i.i.i.i_crit_edge, %crypto_ahash_init.exit.i.i.sw.bb.i.i.i.i_crit_edge42
  call void @wait_for_completion(ptr noundef nonnull %wait.i.i) #11
  %32 = ptrtoint ptr %wait.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %wait.i.i, align 4
  %err2.i.i.i.i = getelementptr inbounds %struct.crypto_wait, ptr %wait.i.i, i32 0, i32 1
  %33 = ptrtoint ptr %err2.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %err2.i.i.i.i, align 4
  br label %crypto_wait_req.exit.i.i.i

crypto_wait_req.exit.i.i.i:                       ; preds = %sw.bb.i.i.i.i, %crypto_ahash_init.exit.i.i.crypto_wait_req.exit.i.i.i_crit_edge
  %err.addr.0.i.i.i.i = phi i32 [ %call2.i.i.i, %crypto_ahash_init.exit.i.i.crypto_wait_req.exit.i.i.i_crit_edge ], [ %34, %sw.bb.i.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.addr.0.i.i.i.i)
  %tobool.not.i34.i.i = icmp eq i32 %err.addr.0.i.i.i.i, 0
  br i1 %tobool.not.i34.i.i, label %if.end6.i.i, label %crypto_wait_req.exit.i.i.i.if.then.i35.i.i_crit_edge

crypto_wait_req.exit.i.i.i.if.then.i35.i.i_crit_edge: ; preds = %crypto_wait_req.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i35.i.i

if.then.i35.i.i:                                  ; preds = %crypto_wait_req.exit.i.i.i.if.then.i35.i.i_crit_edge, %if.end.i9.i.if.then.i35.i.i_crit_edge
  %err.addr.0.i.i68.i.i = phi i32 [ %err.addr.0.i.i.i.i, %crypto_wait_req.exit.i.i.i.if.then.i35.i.i_crit_edge ], [ -126, %if.end.i9.i.if.then.i35.i.i_crit_edge ]
  %call1.i.i.i = call i32 @___ratelimit(ptr noundef nonnull @ahash_wait._rs, ptr noundef nonnull @__func__.ahash_wait) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool2.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool2.not.i.i.i, label %if.then.i35.i.i.out.i.i_crit_edge, label %if.then.i35.i.i.out.sink.split.i.i_crit_edge

if.then.i35.i.i.out.sink.split.i.i_crit_edge:     ; preds = %if.then.i35.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.sink.split.i.i

if.then.i35.i.i.out.i.i_crit_edge:                ; preds = %if.then.i35.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.i.i

if.end6.i.i:                                      ; preds = %crypto_wait_req.exit.i.i.i
  %conv7.i.i = trunc i64 %len to i32
  call void @sg_init_one(ptr noundef nonnull %sg.i.i, ptr noundef %buf, i32 noundef %conv7.i.i) #11
  %src1.i.i.i = getelementptr inbounds %struct.ahash_request, ptr %call9.i.i.i.i, i32 0, i32 2
  %35 = ptrtoint ptr %src1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %sg.i.i, ptr %src1.i.i.i, align 4
  %nbytes2.i.i.i = getelementptr inbounds %struct.ahash_request, ptr %call9.i.i.i.i, i32 0, i32 1
  %36 = ptrtoint ptr %nbytes2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %conv7.i.i, ptr %nbytes2.i.i.i, align 8
  %result3.i.i.i = getelementptr inbounds %struct.ahash_request, ptr %call9.i.i.i.i, i32 0, i32 3
  %37 = ptrtoint ptr %result3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %result3.i.i.i, align 32
  %38 = ptrtoint ptr %tfm1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %tfm1.i.i.i.i, align 16
  %__crt_alg.i.i.i = getelementptr i8, ptr %39, i32 12
  %40 = ptrtoint ptr %__crt_alg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %__crt_alg.i.i.i, align 4
  call void @crypto_stats_get(ptr noundef %41) #11
  %42 = ptrtoint ptr %tfm1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %tfm1.i.i.i.i, align 16
  %update.i.i.i = getelementptr i8, ptr %43, i32 -124
  %44 = ptrtoint ptr %update.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %update.i.i.i, align 4
  %call3.i.i.i = call i32 %45(ptr noundef nonnull %call9.i.i.i.i) #11
  call void @crypto_stats_ahash_update(i32 noundef %conv7.i.i, i32 noundef %call3.i.i.i, ptr noundef %41) #11
  %46 = zext i32 %call3.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %46, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %call3.i.i.i, label %if.end6.i.i.crypto_wait_req.exit.i41.i.i_crit_edge [
    i32 -115, label %if.end6.i.i.sw.bb.i.i38.i.i_crit_edge
    i32 -16, label %if.end6.i.i.sw.bb.i.i38.i.i_crit_edge43
  ]

if.end6.i.i.sw.bb.i.i38.i.i_crit_edge43:          ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb.i.i38.i.i

if.end6.i.i.sw.bb.i.i38.i.i_crit_edge:            ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb.i.i38.i.i

if.end6.i.i.crypto_wait_req.exit.i41.i.i_crit_edge: ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %crypto_wait_req.exit.i41.i.i

sw.bb.i.i38.i.i:                                  ; preds = %if.end6.i.i.sw.bb.i.i38.i.i_crit_edge, %if.end6.i.i.sw.bb.i.i38.i.i_crit_edge43
  call void @wait_for_completion(ptr noundef nonnull %wait.i.i) #11
  %47 = ptrtoint ptr %wait.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %wait.i.i, align 4
  %err2.i.i37.i.i = getelementptr inbounds %struct.crypto_wait, ptr %wait.i.i, i32 0, i32 1
  %48 = ptrtoint ptr %err2.i.i37.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %err2.i.i37.i.i, align 4
  br label %crypto_wait_req.exit.i41.i.i

crypto_wait_req.exit.i41.i.i:                     ; preds = %sw.bb.i.i38.i.i, %if.end6.i.i.crypto_wait_req.exit.i41.i.i_crit_edge
  %err.addr.0.i.i39.i.i = phi i32 [ %call3.i.i.i, %if.end6.i.i.crypto_wait_req.exit.i41.i.i_crit_edge ], [ %49, %sw.bb.i.i38.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.addr.0.i.i39.i.i)
  %tobool.not.i40.i.i = icmp eq i32 %err.addr.0.i.i39.i.i, 0
  br i1 %tobool.not.i40.i.i, label %if.then12.i.i, label %if.then.i44.i.i

if.then.i44.i.i:                                  ; preds = %crypto_wait_req.exit.i41.i.i
  %call1.i42.i.i = call i32 @___ratelimit(ptr noundef nonnull @ahash_wait._rs, ptr noundef nonnull @__func__.ahash_wait) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i42.i.i)
  %tobool2.not.i43.i.i = icmp eq i32 %call1.i42.i.i, 0
  br i1 %tobool2.not.i43.i.i, label %if.then.i44.i.i.out.i.i_crit_edge, label %if.then.i44.i.i.out.sink.split.i.i_crit_edge

if.then.i44.i.i.out.sink.split.i.i_crit_edge:     ; preds = %if.then.i44.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.sink.split.i.i

if.then.i44.i.i.out.i.i_crit_edge:                ; preds = %if.then.i44.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.i.i

if.then12.i.i:                                    ; preds = %crypto_wait_req.exit.i41.i.i
  %digest.i.i = getelementptr inbounds %struct.ima_digest_data, ptr %hash, i32 0, i32 3
  %50 = ptrtoint ptr %src1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr null, ptr %src1.i.i.i, align 4
  %51 = ptrtoint ptr %nbytes2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %nbytes2.i.i.i, align 8
  %52 = ptrtoint ptr %result3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %digest.i.i, ptr %result3.i.i.i, align 32
  %call13.i.i = call i32 @crypto_ahash_final(ptr noundef nonnull %call9.i.i.i.i) #11
  %53 = zext i32 %call13.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %53, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %call13.i.i, label %if.then12.i.i.crypto_wait_req.exit.i55.i.i_crit_edge [
    i32 -115, label %if.then12.i.i.sw.bb.i.i52.i.i_crit_edge
    i32 -16, label %if.then12.i.i.sw.bb.i.i52.i.i_crit_edge44
  ]

if.then12.i.i.sw.bb.i.i52.i.i_crit_edge44:        ; preds = %if.then12.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb.i.i52.i.i

if.then12.i.i.sw.bb.i.i52.i.i_crit_edge:          ; preds = %if.then12.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb.i.i52.i.i

if.then12.i.i.crypto_wait_req.exit.i55.i.i_crit_edge: ; preds = %if.then12.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %crypto_wait_req.exit.i55.i.i

sw.bb.i.i52.i.i:                                  ; preds = %if.then12.i.i.sw.bb.i.i52.i.i_crit_edge, %if.then12.i.i.sw.bb.i.i52.i.i_crit_edge44
  call void @wait_for_completion(ptr noundef nonnull %wait.i.i) #11
  %54 = ptrtoint ptr %wait.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 0, ptr %wait.i.i, align 4
  %err2.i.i51.i.i = getelementptr inbounds %struct.crypto_wait, ptr %wait.i.i, i32 0, i32 1
  %55 = ptrtoint ptr %err2.i.i51.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %err2.i.i51.i.i, align 4
  br label %crypto_wait_req.exit.i55.i.i

crypto_wait_req.exit.i55.i.i:                     ; preds = %sw.bb.i.i52.i.i, %if.then12.i.i.crypto_wait_req.exit.i55.i.i_crit_edge
  %err.addr.0.i.i53.i.i = phi i32 [ %call13.i.i, %if.then12.i.i.crypto_wait_req.exit.i55.i.i_crit_edge ], [ %56, %sw.bb.i.i52.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.addr.0.i.i53.i.i)
  %tobool.not.i54.i.i = icmp eq i32 %err.addr.0.i.i53.i.i, 0
  br i1 %tobool.not.i54.i.i, label %crypto_wait_req.exit.i55.i.i.out.i.i_crit_edge, label %if.then.i58.i.i

crypto_wait_req.exit.i55.i.i.out.i.i_crit_edge:   ; preds = %crypto_wait_req.exit.i55.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.i.i

if.then.i58.i.i:                                  ; preds = %crypto_wait_req.exit.i55.i.i
  %call1.i56.i.i = call i32 @___ratelimit(ptr noundef nonnull @ahash_wait._rs, ptr noundef nonnull @__func__.ahash_wait) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i56.i.i)
  %tobool2.not.i57.i.i = icmp eq i32 %call1.i56.i.i, 0
  br i1 %tobool2.not.i57.i.i, label %if.then.i58.i.i.out.i.i_crit_edge, label %if.then.i58.i.i.out.sink.split.i.i_crit_edge

if.then.i58.i.i.out.sink.split.i.i_crit_edge:     ; preds = %if.then.i58.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.sink.split.i.i

if.then.i58.i.i.out.i.i_crit_edge:                ; preds = %if.then.i58.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.i.i

out.sink.split.i.i:                               ; preds = %if.then.i58.i.i.out.sink.split.i.i_crit_edge, %if.then.i44.i.i.out.sink.split.i.i_crit_edge, %if.then.i35.i.i.out.sink.split.i.i_crit_edge
  %err.addr.0.i.i39.sink.i.i = phi i32 [ %err.addr.0.i.i68.i.i, %if.then.i35.i.i.out.sink.split.i.i_crit_edge ], [ %err.addr.0.i.i39.i.i, %if.then.i44.i.i.out.sink.split.i.i_crit_edge ], [ %err.addr.0.i.i53.i.i, %if.then.i58.i.i.out.sink.split.i.i_crit_edge ]
  %call4.i45.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %err.addr.0.i.i39.sink.i.i) #16
  br label %out.i.i

out.i.i:                                          ; preds = %out.sink.split.i.i, %if.then.i58.i.i.out.i.i_crit_edge, %crypto_wait_req.exit.i55.i.i.out.i.i_crit_edge, %if.then.i44.i.i.out.i.i_crit_edge, %if.then.i35.i.i.out.i.i_crit_edge
  %rc.0.i.i = phi i32 [ 0, %crypto_wait_req.exit.i55.i.i.out.i.i_crit_edge ], [ %err.addr.0.i.i53.i.i, %if.then.i58.i.i.out.i.i_crit_edge ], [ %err.addr.0.i.i68.i.i, %if.then.i35.i.i.out.i.i_crit_edge ], [ %err.addr.0.i.i39.i.i, %if.then.i44.i.i.out.i.i_crit_edge ], [ %err.addr.0.i.i39.sink.i.i, %out.sink.split.i.i ]
  call void @kfree_sensitive(ptr noundef nonnull %call9.i.i.i.i) #11
  br label %calc_buffer_ahash_atfm.exit.i

calc_buffer_ahash_atfm.exit.i:                    ; preds = %out.i.i, %if.end.i.calc_buffer_ahash_atfm.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %rc.0.i.i, %out.i.i ], [ -12, %if.end.i.calc_buffer_ahash_atfm.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %wait.i.i) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg.i.i) #11
  %57 = load ptr, ptr @ima_ahash_tfm, align 4
  %cmp.not.i.i = icmp eq ptr %57, %tfm.0.i.i
  br i1 %cmp.not.i.i, label %calc_buffer_ahash_atfm.exit.i.calc_buffer_ahash.exit_crit_edge, label %if.then.i10.i

calc_buffer_ahash_atfm.exit.i.calc_buffer_ahash.exit_crit_edge: ; preds = %calc_buffer_ahash_atfm.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %calc_buffer_ahash.exit

if.then.i10.i:                                    ; preds = %calc_buffer_ahash_atfm.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %base.i.i.i.i = getelementptr inbounds %struct.crypto_ahash, ptr %tfm.0.i.i, i32 0, i32 10
  call void @crypto_destroy_tfm(ptr noundef %tfm.0.i.i, ptr noundef %base.i.i.i.i) #11
  br label %calc_buffer_ahash.exit

calc_buffer_ahash.exit:                           ; preds = %if.then.i10.i, %calc_buffer_ahash_atfm.exit.i.calc_buffer_ahash.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %tobool2.not = icmp eq i32 %retval.0.i.i, 0
  br i1 %tobool2.not, label %calc_buffer_ahash.exit.cleanup_crit_edge, label %calc_buffer_ahash.exit.if.end4_crit_edge

calc_buffer_ahash.exit.if.end4_crit_edge:         ; preds = %calc_buffer_ahash.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4

calc_buffer_ahash.exit.cleanup_crit_edge:         ; preds = %calc_buffer_ahash.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end4:                                          ; preds = %calc_buffer_ahash.exit.if.end4_crit_edge, %ima_alloc_atfm.exit.i.if.end4_crit_edge, %entry.if.end4_crit_edge
  %58 = ptrtoint ptr %hash to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %hash, align 1
  %conv.i10 = zext i8 %59 to i32
  %60 = load ptr, ptr @ima_shash_tfm, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 19, i8 %59)
  %cmp1.i.i11 = icmp ugt i8 %59, 19
  br i1 %cmp1.i.i11, label %if.then.i.i12, label %if.end4.if.end.i.i14_crit_edge

if.end4.if.end.i.i14_crit_edge:                   ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i14

if.then.i.i12:                                    ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ima_hash_algo to i32))
  %61 = load i32, ptr @ima_hash_algo, align 4
  br label %if.end.i.i14

if.end.i.i14:                                     ; preds = %if.then.i.i12, %if.end4.if.end.i.i14_crit_edge
  %algo.addr.0.i.i13 = phi i32 [ %61, %if.then.i.i12 ], [ %conv.i10, %if.end4.if.end.i.i14_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ima_hash_algo to i32))
  %62 = load i32, ptr @ima_hash_algo, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %algo.addr.0.i.i13, i32 %62)
  %cmp2.i.i = icmp eq i32 %algo.addr.0.i.i13, %62
  br i1 %cmp2.i.i, label %if.end.i.i14.ima_alloc_tfm.exit.i_crit_edge, label %for.cond.preheader.i.i

if.end.i.i14.ima_alloc_tfm.exit.i_crit_edge:      ; preds = %if.end.i.i14
  call void @__sanitizer_cov_trace_pc() #13
  br label %ima_alloc_tfm.exit.i

for.cond.preheader.i.i:                           ; preds = %if.end.i.i14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ima_tpm_chip to i32))
  %63 = load ptr, ptr @ima_tpm_chip, align 4
  %cmp5.not.i.i = icmp eq ptr %63, null
  %64 = load i32, ptr @ima_extra_slots, align 4
  %nr_allocated_banks.i.i = getelementptr inbounds %struct.tpm_chip, ptr %63, i32 0, i32 25
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.inc.i.i, %for.cond.preheader.i.i
  %i.0.i.i = phi i32 [ %inc.i.i, %for.inc.i.i ], [ 0, %for.cond.preheader.i.i ]
  br i1 %cmp5.not.i.i, label %for.cond.i.i.cond.end.i.i_crit_edge, label %cond.true.i.i

for.cond.i.i.cond.end.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end.i.i

cond.true.i.i:                                    ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %65 = ptrtoint ptr %nr_allocated_banks.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %nr_allocated_banks.i.i, align 8
  br label %cond.end.i.i

cond.end.i.i:                                     ; preds = %cond.true.i.i, %for.cond.i.i.cond.end.i.i_crit_edge
  %cond.i.i = phi i32 [ %66, %cond.true.i.i ], [ 0, %for.cond.i.i.cond.end.i.i_crit_edge ]
  %add.i.i = add i32 %cond.i.i, %64
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.i.i, i32 %add.i.i)
  %cmp6.i.i = icmp ult i32 %i.0.i.i, %add.i.i
  br i1 %cmp6.i.i, label %for.body.i.i, label %for.end.i.i

for.body.i.i:                                     ; preds = %cond.end.i.i
  %67 = load ptr, ptr @ima_algo_array, align 4
  %arrayidx.i.i15 = getelementptr %struct.ima_algo_desc, ptr %67, i32 %i.0.i.i
  %68 = ptrtoint ptr %arrayidx.i.i15 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %arrayidx.i.i15, align 4
  %tobool.not.i.i16 = icmp eq ptr %69, null
  br i1 %tobool.not.i.i16, label %for.body.i.i.for.inc.i.i_crit_edge, label %land.lhs.true.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %algo9.i.i = getelementptr %struct.ima_algo_desc, ptr %67, i32 %i.0.i.i, i32 1
  %70 = ptrtoint ptr %algo9.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %algo9.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %71, i32 %algo.addr.0.i.i13)
  %cmp10.i.i = icmp eq i32 %71, %algo.addr.0.i.i13
  br i1 %cmp10.i.i, label %land.lhs.true.i.i.ima_alloc_tfm.exit.i_crit_edge, label %land.lhs.true.i.i.for.inc.i.i_crit_edge

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

land.lhs.true.i.i.ima_alloc_tfm.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ima_alloc_tfm.exit.i

for.inc.i.i:                                      ; preds = %land.lhs.true.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw i32 %i.0.i.i, 1
  br label %for.cond.i.i

for.end.i.i:                                      ; preds = %cond.end.i.i
  %arrayidx15.i.i = getelementptr [20 x ptr], ptr @hash_algo_name, i32 0, i32 %algo.addr.0.i.i13
  %72 = ptrtoint ptr %arrayidx15.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %arrayidx15.i.i, align 4
  %call.i.i17 = call ptr @crypto_alloc_shash(ptr noundef %73, i32 noundef 0, i32 noundef 0) #11
  %cmp.i.i.i18 = icmp ugt ptr %call.i.i17, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i18, label %if.then17.i.i, label %for.end.i.i.ima_alloc_tfm.exit.i_crit_edge

for.end.i.i.ima_alloc_tfm.exit.i_crit_edge:       ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ima_alloc_tfm.exit.i

if.then17.i.i:                                    ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %74 = ptrtoint ptr %call.i.i17 to i32
  %call20.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %73, i32 noundef %74) #16
  br label %ima_alloc_tfm.exit.i

ima_alloc_tfm.exit.i:                             ; preds = %if.then17.i.i, %for.end.i.i.ima_alloc_tfm.exit.i_crit_edge, %land.lhs.true.i.i.ima_alloc_tfm.exit.i_crit_edge, %if.end.i.i14.ima_alloc_tfm.exit.i_crit_edge
  %retval.0.i.i19 = phi ptr [ %60, %if.end.i.i14.ima_alloc_tfm.exit.i_crit_edge ], [ %call.i.i17, %if.then17.i.i ], [ %call.i.i17, %for.end.i.i.ima_alloc_tfm.exit.i_crit_edge ], [ %69, %land.lhs.true.i.i.ima_alloc_tfm.exit.i_crit_edge ]
  %cmp.i.i20 = icmp ugt ptr %retval.0.i.i19, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i20, label %if.then.i21, label %if.end.i28

if.then.i21:                                      ; preds = %ima_alloc_tfm.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %75 = ptrtoint ptr %retval.0.i.i19 to i32
  br label %cleanup

if.end.i28:                                       ; preds = %ima_alloc_tfm.exit.i
  call void @llvm.lifetime.start.p0(i64 376, ptr nonnull %__shash_desc.i.i) #11
  %76 = call ptr @memset(ptr %__shash_desc.i.i, i32 255, i32 376)
  %77 = ptrtoint ptr %__shash_desc.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %retval.0.i.i19, ptr %__shash_desc.i.i, align 8
  %__crt_alg.i.i.i.i22 = getelementptr inbounds %struct.crypto_shash, ptr %retval.0.i.i19, i32 0, i32 2, i32 3
  %78 = ptrtoint ptr %__crt_alg.i.i.i.i22 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %__crt_alg.i.i.i.i22, align 4
  %digestsize.i.i.i = getelementptr i8, ptr %79, i32 -128
  %80 = ptrtoint ptr %digestsize.i.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %digestsize.i.i.i, align 128
  %conv.i.i23 = trunc i32 %81 to i8
  %length.i.i24 = getelementptr inbounds %struct.ima_digest_data, ptr %hash, i32 0, i32 1
  %82 = ptrtoint ptr %length.i.i24 to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %conv.i.i23, ptr %length.i.i24, align 1
  %base.i.i.i.i.i25 = getelementptr inbounds %struct.crypto_shash, ptr %retval.0.i.i19, i32 0, i32 2
  %83 = ptrtoint ptr %base.i.i.i.i.i25 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %base.i.i.i.i.i25, align 128
  %and.i.i.i26 = and i32 %84, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i26)
  %tobool.not.i.i.i27 = icmp eq i32 %and.i.i.i26, 0
  br i1 %tobool.not.i.i.i27, label %crypto_shash_init.exit.i.i, label %if.end.i28.calc_buffer_shash_tfm.exit.i_crit_edge

if.end.i28.calc_buffer_shash_tfm.exit.i_crit_edge: ; preds = %if.end.i28
  call void @__sanitizer_cov_trace_pc() #13
  br label %calc_buffer_shash_tfm.exit.i

crypto_shash_init.exit.i.i:                       ; preds = %if.end.i28
  %85 = ptrtoint ptr %__crt_alg.i.i.i.i22 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %__crt_alg.i.i.i.i22, align 4
  %add.ptr.i.i.i.i.i29 = getelementptr i8, ptr %86, i32 -256
  %87 = ptrtoint ptr %add.ptr.i.i.i.i.i29 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %add.ptr.i.i.i.i.i29, align 128
  %call3.i.i.i30 = call i32 %88(ptr noundef nonnull %__shash_desc.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i.i30)
  %cmp.not.i.i31 = icmp eq i32 %call3.i.i.i30, 0
  br i1 %cmp.not.i.i31, label %while.cond.preheader.i.i, label %crypto_shash_init.exit.i.i.calc_buffer_shash_tfm.exit.i_crit_edge

crypto_shash_init.exit.i.i.calc_buffer_shash_tfm.exit.i_crit_edge: ; preds = %crypto_shash_init.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %calc_buffer_shash_tfm.exit.i

while.cond.preheader.i.i:                         ; preds = %crypto_shash_init.exit.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %len)
  %tobool.not41.i.i = icmp eq i64 %len, 0
  br i1 %tobool.not41.i.i, label %while.cond.preheader.i.i.if.then13.i.i_crit_edge, label %while.cond.preheader.i.i.while.body.i.i_crit_edge

while.cond.preheader.i.i.while.body.i.i_crit_edge: ; preds = %while.cond.preheader.i.i
  br label %while.body.i.i

while.cond.preheader.i.i.if.then13.i.i_crit_edge: ; preds = %while.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then13.i.i

while.body.i.i:                                   ; preds = %if.end10.i.i.while.body.i.i_crit_edge, %while.cond.preheader.i.i.while.body.i.i_crit_edge
  %buf.addr.043.i.i = phi ptr [ %add.ptr.i.i, %if.end10.i.i.while.body.i.i_crit_edge ], [ %buf, %while.cond.preheader.i.i.while.body.i.i_crit_edge ]
  %size.addr.042.i.i = phi i64 [ %sub.i.i, %if.end10.i.i.while.body.i.i_crit_edge ], [ %len, %while.cond.preheader.i.i.while.body.i.i_crit_edge ]
  %89 = call i64 @llvm.smin.i64(i64 %size.addr.042.i.i, i64 4096) #11
  %90 = trunc i64 %89 to i32
  %call7.i.i = call i32 @crypto_shash_update(ptr noundef nonnull %__shash_desc.i.i, ptr noundef %buf.addr.043.i.i, i32 noundef %90) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i)
  %tobool8.not.i.i = icmp eq i32 %call7.i.i, 0
  br i1 %tobool8.not.i.i, label %if.end10.i.i, label %while.body.i.i.calc_buffer_shash_tfm.exit.i_crit_edge

while.body.i.i.calc_buffer_shash_tfm.exit.i_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %calc_buffer_shash_tfm.exit.i

if.end10.i.i:                                     ; preds = %while.body.i.i
  %add.ptr.i.i = getelementptr i8, ptr %buf.addr.043.i.i, i32 %90
  %conv11.i.i = and i64 %89, 4294967295
  %sub.i.i = sub i64 %size.addr.042.i.i, %conv11.i.i
  %tobool.not.i9.i = icmp eq i64 %sub.i.i, 0
  br i1 %tobool.not.i9.i, label %if.end10.i.i.if.then13.i.i_crit_edge, label %if.end10.i.i.while.body.i.i_crit_edge

if.end10.i.i.while.body.i.i_crit_edge:            ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i.i

if.end10.i.i.if.then13.i.i_crit_edge:             ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then13.i.i

if.then13.i.i:                                    ; preds = %if.end10.i.i.if.then13.i.i_crit_edge, %while.cond.preheader.i.i.if.then13.i.i_crit_edge
  %digest.i.i32 = getelementptr inbounds %struct.ima_digest_data, ptr %hash, i32 0, i32 3
  %call15.i.i = call i32 @crypto_shash_final(ptr noundef nonnull %__shash_desc.i.i, ptr noundef %digest.i.i32) #11
  br label %calc_buffer_shash_tfm.exit.i

calc_buffer_shash_tfm.exit.i:                     ; preds = %if.then13.i.i, %while.body.i.i.calc_buffer_shash_tfm.exit.i_crit_edge, %crypto_shash_init.exit.i.i.calc_buffer_shash_tfm.exit.i_crit_edge, %if.end.i28.calc_buffer_shash_tfm.exit.i_crit_edge
  %retval.0.i10.i = phi i32 [ %call3.i.i.i30, %crypto_shash_init.exit.i.i.calc_buffer_shash_tfm.exit.i_crit_edge ], [ %call15.i.i, %if.then13.i.i ], [ -126, %if.end.i28.calc_buffer_shash_tfm.exit.i_crit_edge ], [ %call7.i.i, %while.body.i.i.calc_buffer_shash_tfm.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 376, ptr nonnull %__shash_desc.i.i) #11
  %91 = load ptr, ptr @ima_shash_tfm, align 4
  %cmp.i11.i = icmp eq ptr %91, %retval.0.i.i19
  br i1 %cmp.i11.i, label %calc_buffer_shash_tfm.exit.i.cleanup_crit_edge, label %for.cond.preheader.i13.i

calc_buffer_shash_tfm.exit.i.cleanup_crit_edge:   ; preds = %calc_buffer_shash_tfm.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond.preheader.i13.i:                         ; preds = %calc_buffer_shash_tfm.exit.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ima_tpm_chip to i32))
  %92 = load ptr, ptr @ima_tpm_chip, align 4
  %cmp1.not.i.i = icmp eq ptr %92, null
  %93 = load i32, ptr @ima_extra_slots, align 4
  %nr_allocated_banks.i12.i = getelementptr inbounds %struct.tpm_chip, ptr %92, i32 0, i32 25
  br label %for.cond.i15.i

for.cond.i15.i:                                   ; preds = %for.body.i23.i.for.cond.i15.i_crit_edge, %for.cond.preheader.i13.i
  %i.0.i14.i = phi i32 [ %inc.i22.i, %for.body.i23.i.for.cond.i15.i_crit_edge ], [ 0, %for.cond.preheader.i13.i ]
  br i1 %cmp1.not.i.i, label %for.cond.i15.i.cond.end.i20.i_crit_edge, label %cond.true.i16.i

for.cond.i15.i.cond.end.i20.i_crit_edge:          ; preds = %for.cond.i15.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end.i20.i

cond.true.i16.i:                                  ; preds = %for.cond.i15.i
  call void @__sanitizer_cov_trace_pc() #13
  %94 = ptrtoint ptr %nr_allocated_banks.i12.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %nr_allocated_banks.i12.i, align 8
  br label %cond.end.i20.i

cond.end.i20.i:                                   ; preds = %cond.true.i16.i, %for.cond.i15.i.cond.end.i20.i_crit_edge
  %cond.i17.i = phi i32 [ %95, %cond.true.i16.i ], [ 0, %for.cond.i15.i.cond.end.i20.i_crit_edge ]
  %add.i18.i = add i32 %cond.i17.i, %93
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.i14.i, i32 %add.i18.i)
  %cmp2.i19.i = icmp ult i32 %i.0.i14.i, %add.i18.i
  br i1 %cmp2.i19.i, label %for.body.i23.i, label %for.end.i24.i

for.body.i23.i:                                   ; preds = %cond.end.i20.i
  %96 = load ptr, ptr @ima_algo_array, align 4
  %arrayidx.i21.i = getelementptr %struct.ima_algo_desc, ptr %96, i32 %i.0.i14.i
  %97 = ptrtoint ptr %arrayidx.i21.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %arrayidx.i21.i, align 4
  %cmp4.i.i = icmp eq ptr %98, %retval.0.i.i19
  %inc.i22.i = add nuw i32 %i.0.i14.i, 1
  br i1 %cmp4.i.i, label %for.body.i23.i.cleanup_crit_edge, label %for.body.i23.i.for.cond.i15.i_crit_edge

for.body.i23.i.for.cond.i15.i_crit_edge:          ; preds = %for.body.i23.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i15.i

for.body.i23.i.cleanup_crit_edge:                 ; preds = %for.body.i23.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.end.i24.i:                                    ; preds = %cond.end.i20.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @crypto_destroy_tfm(ptr noundef %retval.0.i.i19, ptr noundef %base.i.i.i.i.i25) #11
  br label %cleanup

cleanup:                                          ; preds = %for.end.i24.i, %for.body.i23.i.cleanup_crit_edge, %calc_buffer_shash_tfm.exit.i.cleanup_crit_edge, %if.then.i21, %calc_buffer_ahash.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %calc_buffer_ahash.exit.cleanup_crit_edge ], [ %75, %if.then.i21 ], [ %retval.0.i10.i, %calc_buffer_shash_tfm.exit.i.cleanup_crit_edge ], [ %retval.0.i10.i, %for.end.i24.i ], [ %retval.0.i10.i, %for.body.i23.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ima_calc_boot_aggregate(ptr noundef %hash) local_unnamed_addr #2 align 64 {
entry:
  %d.i = alloca %struct.tpm_digest, align 2
  %__shash_desc.i = alloca [376 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ima_tpm_chip to i32))
  %0 = load ptr, ptr @ima_tpm_chip, align 4
  %nr_allocated_banks = getelementptr inbounds %struct.tpm_chip, ptr %0, i32 0, i32 25
  %1 = ptrtoint ptr %nr_allocated_banks to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %nr_allocated_banks, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp91.not = icmp eq i32 %2, 0
  br i1 %cmp91.not, label %entry.do.end_crit_edge, label %for.body.lr.ph

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

for.body.lr.ph:                                   ; preds = %entry
  %allocated_banks = getelementptr inbounds %struct.tpm_chip, ptr %0, i32 0, i32 26
  %3 = ptrtoint ptr %allocated_banks to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %allocated_banks, align 4
  %5 = ptrtoint ptr %hash to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %hash, align 1
  %7 = zext i8 %6 to i16
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.body.lr.ph
  %bank_idx.093 = phi i32 [ -1, %for.body.lr.ph ], [ %bank_idx.2, %if.end.for.body_crit_edge ]
  %i.092 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end.for.body_crit_edge ]
  %crypto_id1 = getelementptr %struct.tpm_bank_info, ptr %4, i32 %i.092, i32 2
  %8 = ptrtoint ptr %crypto_id1 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %crypto_id1, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %9, i16 %7)
  %cmp3 = icmp eq i16 %9, %7
  br i1 %cmp3, label %for.body.if.end20_crit_edge, label %if.end

for.body.if.end20_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20

if.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %9)
  %cmp6 = icmp eq i16 %9, 4
  %spec.select = select i1 %cmp6, i32 %i.092, i32 %bank_idx.093
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %spec.select)
  %cmp10 = icmp eq i32 %spec.select, -1
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %9)
  %cmp13 = icmp eq i16 %9, 2
  %spec.select62 = select i1 %cmp13, i32 %i.092, i32 -1
  %bank_idx.2 = select i1 %cmp10, i32 %spec.select62, i32 %spec.select
  %inc = add nuw i32 %i.092, 1
  %exitcond.not = icmp eq i32 %inc, %2
  br i1 %exitcond.not, label %for.end, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bank_idx.2)
  %cmp17 = icmp eq i32 %bank_idx.2, -1
  br i1 %cmp17, label %for.end.do.end_crit_edge, label %for.end.if.end20_crit_edge

for.end.if.end20_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20

for.end.do.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

do.end:                                           ; preds = %for.end.do.end_crit_edge, %entry.do.end_crit_edge
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #16
  br label %cleanup

if.end20:                                         ; preds = %for.end.if.end20_crit_edge, %for.body.if.end20_crit_edge
  %bank_idx.385 = phi i32 [ %bank_idx.2, %for.end.if.end20_crit_edge ], [ %i.092, %for.body.if.end20_crit_edge ]
  %allocated_banks21 = getelementptr inbounds %struct.tpm_chip, ptr %0, i32 0, i32 26
  %10 = ptrtoint ptr %allocated_banks21 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %allocated_banks21, align 4
  %crypto_id23 = getelementptr %struct.tpm_bank_info, ptr %11, i32 %bank_idx.385, i32 2
  %12 = ptrtoint ptr %crypto_id23 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %crypto_id23, align 2
  %conv24 = trunc i16 %13 to i8
  %14 = ptrtoint ptr %hash to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv24, ptr %hash, align 1
  %conv24.mask = and i16 %13, 255
  %conv27 = zext i16 %conv24.mask to i32
  %15 = load ptr, ptr @ima_shash_tfm, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 19, i16 %conv24.mask)
  %cmp1.i = icmp ugt i16 %conv24.mask, 19
  br i1 %cmp1.i, label %if.then.i, label %if.end20.if.end.i_crit_edge

if.end20.if.end.i_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then.i:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ima_hash_algo to i32))
  %16 = load i32, ptr @ima_hash_algo, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end20.if.end.i_crit_edge
  %algo.addr.0.i = phi i32 [ %16, %if.then.i ], [ %conv27, %if.end20.if.end.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ima_hash_algo to i32))
  %17 = load i32, ptr @ima_hash_algo, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %algo.addr.0.i, i32 %17)
  %cmp2.i = icmp eq i32 %algo.addr.0.i, %17
  br i1 %cmp2.i, label %if.end.i.ima_alloc_tfm.exit_crit_edge, label %for.cond.preheader.i

if.end.i.ima_alloc_tfm.exit_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ima_alloc_tfm.exit

for.cond.preheader.i:                             ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ima_tpm_chip to i32))
  %18 = load ptr, ptr @ima_tpm_chip, align 4
  %cmp5.not.i = icmp eq ptr %18, null
  %19 = load i32, ptr @ima_extra_slots, align 4
  %nr_allocated_banks.i = getelementptr inbounds %struct.tpm_chip, ptr %18, i32 0, i32 25
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.inc.i, %for.cond.preheader.i
  %i.0.i = phi i32 [ %inc.i, %for.inc.i ], [ 0, %for.cond.preheader.i ]
  br i1 %cmp5.not.i, label %for.cond.i.cond.end.i_crit_edge, label %cond.true.i

for.cond.i.cond.end.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end.i

cond.true.i:                                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  %20 = ptrtoint ptr %nr_allocated_banks.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %nr_allocated_banks.i, align 8
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %for.cond.i.cond.end.i_crit_edge
  %cond.i = phi i32 [ %21, %cond.true.i ], [ 0, %for.cond.i.cond.end.i_crit_edge ]
  %add.i = add i32 %cond.i, %19
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.i, i32 %add.i)
  %cmp6.i = icmp ult i32 %i.0.i, %add.i
  br i1 %cmp6.i, label %for.body.i, label %for.end.i

for.body.i:                                       ; preds = %cond.end.i
  %22 = load ptr, ptr @ima_algo_array, align 4
  %arrayidx.i = getelementptr %struct.ima_algo_desc, ptr %22, i32 %i.0.i
  %23 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %24, null
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %land.lhs.true.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %algo9.i = getelementptr %struct.ima_algo_desc, ptr %22, i32 %i.0.i, i32 1
  %25 = ptrtoint ptr %algo9.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %algo9.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %algo.addr.0.i)
  %cmp10.i = icmp eq i32 %26, %algo.addr.0.i
  br i1 %cmp10.i, label %land.lhs.true.i.ima_alloc_tfm.exit_crit_edge, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

land.lhs.true.i.ima_alloc_tfm.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ima_alloc_tfm.exit

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.0.i, 1
  br label %for.cond.i

for.end.i:                                        ; preds = %cond.end.i
  %arrayidx15.i = getelementptr [20 x ptr], ptr @hash_algo_name, i32 0, i32 %algo.addr.0.i
  %27 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx15.i, align 4
  %call.i = tail call ptr @crypto_alloc_shash(ptr noundef %28, i32 noundef 0, i32 noundef 0) #11
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then17.i, label %for.end.i.ima_alloc_tfm.exit_crit_edge

for.end.i.ima_alloc_tfm.exit_crit_edge:           ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ima_alloc_tfm.exit

if.then17.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %29 = ptrtoint ptr %call.i to i32
  %call20.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %28, i32 noundef %29) #16
  br label %ima_alloc_tfm.exit

ima_alloc_tfm.exit:                               ; preds = %if.then17.i, %for.end.i.ima_alloc_tfm.exit_crit_edge, %land.lhs.true.i.ima_alloc_tfm.exit_crit_edge, %if.end.i.ima_alloc_tfm.exit_crit_edge
  %retval.0.i = phi ptr [ %15, %if.end.i.ima_alloc_tfm.exit_crit_edge ], [ %call.i, %if.then17.i ], [ %call.i, %for.end.i.ima_alloc_tfm.exit_crit_edge ], [ %24, %land.lhs.true.i.ima_alloc_tfm.exit_crit_edge ]
  %cmp.i = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then30, label %if.end32

if.then30:                                        ; preds = %ima_alloc_tfm.exit
  call void @__sanitizer_cov_trace_pc() #13
  %30 = ptrtoint ptr %retval.0.i to i32
  br label %cleanup

if.end32:                                         ; preds = %ima_alloc_tfm.exit
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_shash, ptr %retval.0.i, i32 0, i32 2, i32 3
  %31 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %__crt_alg.i.i, align 4
  %digestsize.i = getelementptr i8, ptr %32, i32 -128
  %33 = ptrtoint ptr %digestsize.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %digestsize.i, align 128
  %conv34 = trunc i32 %34 to i8
  %length = getelementptr inbounds %struct.ima_digest_data, ptr %hash, i32 0, i32 1
  %35 = ptrtoint ptr %length to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %conv34, ptr %length, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ima_tpm_chip to i32))
  %36 = load ptr, ptr @ima_tpm_chip, align 4
  %allocated_banks35 = getelementptr inbounds %struct.tpm_chip, ptr %36, i32 0, i32 26
  %37 = ptrtoint ptr %allocated_banks35 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %allocated_banks35, align 4
  %arrayidx36 = getelementptr %struct.tpm_bank_info, ptr %38, i32 %bank_idx.385
  %39 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %arrayidx36, align 2
  %digest = getelementptr inbounds %struct.ima_digest_data, ptr %hash, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 66, ptr nonnull %d.i) #11
  %41 = getelementptr inbounds i8, ptr %d.i, i32 2
  %42 = call ptr @memset(ptr %41, i32 0, i32 64)
  %43 = ptrtoint ptr %d.i to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %40, ptr %d.i, align 2
  call void @llvm.lifetime.start.p0(i64 376, ptr nonnull %__shash_desc.i) #11
  %44 = call ptr @memset(ptr %__shash_desc.i, i32 255, i32 376)
  %45 = ptrtoint ptr %__shash_desc.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %retval.0.i, ptr %__shash_desc.i, align 8
  %base.i.i.i.i = getelementptr inbounds %struct.crypto_shash, ptr %retval.0.i, i32 0, i32 2
  %46 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %base.i.i.i.i, align 128
  %and.i.i = and i32 %47, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %crypto_shash_init.exit.i, label %if.end32.ima_calc_boot_aggregate_tfm.exit_crit_edge

if.end32.ima_calc_boot_aggregate_tfm.exit_crit_edge: ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #13
  br label %ima_calc_boot_aggregate_tfm.exit

crypto_shash_init.exit.i:                         ; preds = %if.end32
  %48 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %__crt_alg.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %49, i32 -256
  %50 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %add.ptr.i.i.i.i, align 128
  %call3.i.i = call i32 %51(ptr noundef nonnull %__shash_desc.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %cmp.not.i = icmp eq i32 %call3.i.i, 0
  br i1 %cmp.not.i, label %crypto_shash_init.exit.i.for.body.i65_crit_edge, label %crypto_shash_init.exit.i.ima_calc_boot_aggregate_tfm.exit_crit_edge

crypto_shash_init.exit.i.ima_calc_boot_aggregate_tfm.exit_crit_edge: ; preds = %crypto_shash_init.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ima_calc_boot_aggregate_tfm.exit

crypto_shash_init.exit.i.for.body.i65_crit_edge:  ; preds = %crypto_shash_init.exit.i
  br label %for.body.i65

for.cond.i64:                                     ; preds = %ima_pcrread.exit.i
  %inc.i63 = add nuw nsw i32 %i.068.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i63, 8
  br i1 %exitcond.not.i, label %for.end.i66, label %for.cond.i64.for.body.i65_crit_edge

for.cond.i64.for.body.i65_crit_edge:              ; preds = %for.cond.i64
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i65

for.body.i65:                                     ; preds = %for.cond.i64.for.body.i65_crit_edge, %crypto_shash_init.exit.i.for.body.i65_crit_edge
  %i.068.i = phi i32 [ %inc.i63, %for.cond.i64.for.body.i65_crit_edge ], [ 0, %crypto_shash_init.exit.i.for.body.i65_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ima_tpm_chip to i32))
  %52 = load ptr, ptr @ima_tpm_chip, align 4
  %tobool.not.i51.i = icmp eq ptr %52, null
  br i1 %tobool.not.i51.i, label %for.body.i65.ima_pcrread.exit.i_crit_edge, label %if.end.i52.i

for.body.i65.ima_pcrread.exit.i_crit_edge:        ; preds = %for.body.i65
  call void @__sanitizer_cov_trace_pc() #13
  br label %ima_pcrread.exit.i

if.end.i52.i:                                     ; preds = %for.body.i65
  %call.i.i = call i32 @tpm_pcr_read(ptr noundef nonnull %52, i32 noundef %i.068.i, ptr noundef nonnull %d.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i.i, label %if.end.i52.i.ima_pcrread.exit.i_crit_edge, label %do.end.i.i

if.end.i52.i.ima_pcrread.exit.i_crit_edge:        ; preds = %if.end.i52.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ima_pcrread.exit.i

do.end.i.i:                                       ; preds = %if.end.i52.i
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #16
  br label %ima_pcrread.exit.i

ima_pcrread.exit.i:                               ; preds = %do.end.i.i, %if.end.i52.i.ima_pcrread.exit.i_crit_edge, %for.body.i65.ima_pcrread.exit.i_crit_edge
  %53 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %__crt_alg.i.i, align 4
  %digestsize.i.i = getelementptr i8, ptr %54, i32 -128
  %55 = ptrtoint ptr %digestsize.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %digestsize.i.i, align 128
  %call8.i = call i32 @crypto_shash_update(ptr noundef nonnull %__shash_desc.i, ptr noundef %41, i32 noundef %56) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %cmp9.not.i = icmp eq i32 %call8.i, 0
  br i1 %cmp9.not.i, label %for.cond.i64, label %ima_pcrread.exit.i.ima_calc_boot_aggregate_tfm.exit_crit_edge

ima_pcrread.exit.i.ima_calc_boot_aggregate_tfm.exit_crit_edge: ; preds = %ima_pcrread.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ima_calc_boot_aggregate_tfm.exit

for.end.i66:                                      ; preds = %for.cond.i64
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %40)
  %cmp12.not.i = icmp eq i16 %40, 4
  br i1 %cmp12.not.i, label %for.end.i66.if.then27.i_crit_edge, label %for.cond15.preheader.i

for.end.i66.if.then27.i_crit_edge:                ; preds = %for.end.i66
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then27.i

for.cond15.preheader.i:                           ; preds = %for.end.i66
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ima_tpm_chip to i32))
  %57 = load ptr, ptr @ima_tpm_chip, align 4
  %tobool.not.i54.i = icmp eq ptr %57, null
  br i1 %tobool.not.i54.i, label %for.cond15.preheader.i.ima_pcrread.exit60.i_crit_edge, label %if.end.i57.i

for.cond15.preheader.i.ima_pcrread.exit60.i_crit_edge: ; preds = %for.cond15.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ima_pcrread.exit60.i

if.end.i57.i:                                     ; preds = %for.cond15.preheader.i
  %call.i55.i = call i32 @tpm_pcr_read(ptr noundef nonnull %57, i32 noundef 8, ptr noundef nonnull %d.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i55.i)
  %cmp.not.i56.i = icmp eq i32 %call.i55.i, 0
  br i1 %cmp.not.i56.i, label %if.end.i57.i.ima_pcrread.exit60.i_crit_edge, label %do.end.i59.i

if.end.i57.i.ima_pcrread.exit60.i_crit_edge:      ; preds = %if.end.i57.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ima_pcrread.exit60.i

do.end.i59.i:                                     ; preds = %if.end.i57.i
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i58.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #16
  br label %ima_pcrread.exit60.i

ima_pcrread.exit60.i:                             ; preds = %do.end.i59.i, %if.end.i57.i.ima_pcrread.exit60.i_crit_edge, %for.cond15.preheader.i.ima_pcrread.exit60.i_crit_edge
  %58 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %__crt_alg.i.i, align 4
  %digestsize.i62.i = getelementptr i8, ptr %59, i32 -128
  %60 = ptrtoint ptr %digestsize.i62.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %digestsize.i62.i, align 128
  %call22.i = call i32 @crypto_shash_update(ptr noundef nonnull %__shash_desc.i, ptr noundef %41, i32 noundef %61) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ima_tpm_chip to i32))
  %62 = load ptr, ptr @ima_tpm_chip, align 4
  %tobool.not.i54.1.i = icmp eq ptr %62, null
  br i1 %tobool.not.i54.1.i, label %ima_pcrread.exit60.i.ima_pcrread.exit60.1.i_crit_edge, label %if.end.i57.1.i

ima_pcrread.exit60.i.ima_pcrread.exit60.1.i_crit_edge: ; preds = %ima_pcrread.exit60.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ima_pcrread.exit60.1.i

if.end.i57.1.i:                                   ; preds = %ima_pcrread.exit60.i
  %call.i55.1.i = call i32 @tpm_pcr_read(ptr noundef nonnull %62, i32 noundef 9, ptr noundef nonnull %d.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i55.1.i)
  %cmp.not.i56.1.i = icmp eq i32 %call.i55.1.i, 0
  br i1 %cmp.not.i56.1.i, label %if.end.i57.1.i.ima_pcrread.exit60.1.i_crit_edge, label %do.end.i59.1.i

if.end.i57.1.i.ima_pcrread.exit60.1.i_crit_edge:  ; preds = %if.end.i57.1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ima_pcrread.exit60.1.i

do.end.i59.1.i:                                   ; preds = %if.end.i57.1.i
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i58.1.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #16
  br label %ima_pcrread.exit60.1.i

ima_pcrread.exit60.1.i:                           ; preds = %do.end.i59.1.i, %if.end.i57.1.i.ima_pcrread.exit60.1.i_crit_edge, %ima_pcrread.exit60.i.ima_pcrread.exit60.1.i_crit_edge
  %63 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %__crt_alg.i.i, align 4
  %digestsize.i62.1.i = getelementptr i8, ptr %64, i32 -128
  %65 = ptrtoint ptr %digestsize.i62.1.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %digestsize.i62.1.i, align 128
  %call22.1.i = call i32 @crypto_shash_update(ptr noundef nonnull %__shash_desc.i, ptr noundef %41, i32 noundef %66) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.1.i)
  %tobool.not.i67 = icmp eq i32 %call22.1.i, 0
  br i1 %tobool.not.i67, label %ima_pcrread.exit60.1.i.if.then27.i_crit_edge, label %ima_pcrread.exit60.1.i.ima_calc_boot_aggregate_tfm.exit_crit_edge

ima_pcrread.exit60.1.i.ima_calc_boot_aggregate_tfm.exit_crit_edge: ; preds = %ima_pcrread.exit60.1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ima_calc_boot_aggregate_tfm.exit

ima_pcrread.exit60.1.i.if.then27.i_crit_edge:     ; preds = %ima_pcrread.exit60.1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then27.i

if.then27.i:                                      ; preds = %ima_pcrread.exit60.1.i.if.then27.i_crit_edge, %for.end.i66.if.then27.i_crit_edge
  %call28.i = call i32 @crypto_shash_final(ptr noundef nonnull %__shash_desc.i, ptr noundef %digest) #11
  br label %ima_calc_boot_aggregate_tfm.exit

ima_calc_boot_aggregate_tfm.exit:                 ; preds = %if.then27.i, %ima_pcrread.exit60.1.i.ima_calc_boot_aggregate_tfm.exit_crit_edge, %ima_pcrread.exit.i.ima_calc_boot_aggregate_tfm.exit_crit_edge, %crypto_shash_init.exit.i.ima_calc_boot_aggregate_tfm.exit_crit_edge, %if.end32.ima_calc_boot_aggregate_tfm.exit_crit_edge
  %retval.0.i68 = phi i32 [ %call3.i.i, %crypto_shash_init.exit.i.ima_calc_boot_aggregate_tfm.exit_crit_edge ], [ 0, %if.then27.i ], [ %call22.1.i, %ima_pcrread.exit60.1.i.ima_calc_boot_aggregate_tfm.exit_crit_edge ], [ -126, %if.end32.ima_calc_boot_aggregate_tfm.exit_crit_edge ], [ %call8.i, %ima_pcrread.exit.i.ima_calc_boot_aggregate_tfm.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 376, ptr nonnull %__shash_desc.i) #11
  call void @llvm.lifetime.end.p0(i64 66, ptr nonnull %d.i) #11
  %67 = load ptr, ptr @ima_shash_tfm, align 4
  %cmp.i69 = icmp eq ptr %67, %retval.0.i
  br i1 %cmp.i69, label %ima_calc_boot_aggregate_tfm.exit.cleanup_crit_edge, label %for.cond.preheader.i71

ima_calc_boot_aggregate_tfm.exit.cleanup_crit_edge: ; preds = %ima_calc_boot_aggregate_tfm.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond.preheader.i71:                           ; preds = %ima_calc_boot_aggregate_tfm.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ima_tpm_chip to i32))
  %68 = load ptr, ptr @ima_tpm_chip, align 4
  %cmp1.not.i = icmp eq ptr %68, null
  %69 = load i32, ptr @ima_extra_slots, align 4
  %nr_allocated_banks.i70 = getelementptr inbounds %struct.tpm_chip, ptr %68, i32 0, i32 25
  br label %for.cond.i73

for.cond.i73:                                     ; preds = %for.body.i81.for.cond.i73_crit_edge, %for.cond.preheader.i71
  %i.0.i72 = phi i32 [ %inc.i80, %for.body.i81.for.cond.i73_crit_edge ], [ 0, %for.cond.preheader.i71 ]
  br i1 %cmp1.not.i, label %for.cond.i73.cond.end.i78_crit_edge, label %cond.true.i74

for.cond.i73.cond.end.i78_crit_edge:              ; preds = %for.cond.i73
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end.i78

cond.true.i74:                                    ; preds = %for.cond.i73
  call void @__sanitizer_cov_trace_pc() #13
  %70 = ptrtoint ptr %nr_allocated_banks.i70 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %nr_allocated_banks.i70, align 8
  br label %cond.end.i78

cond.end.i78:                                     ; preds = %cond.true.i74, %for.cond.i73.cond.end.i78_crit_edge
  %cond.i75 = phi i32 [ %71, %cond.true.i74 ], [ 0, %for.cond.i73.cond.end.i78_crit_edge ]
  %add.i76 = add i32 %cond.i75, %69
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.i72, i32 %add.i76)
  %cmp2.i77 = icmp ult i32 %i.0.i72, %add.i76
  br i1 %cmp2.i77, label %for.body.i81, label %for.end.i82

for.body.i81:                                     ; preds = %cond.end.i78
  %72 = load ptr, ptr @ima_algo_array, align 4
  %arrayidx.i79 = getelementptr %struct.ima_algo_desc, ptr %72, i32 %i.0.i72
  %73 = ptrtoint ptr %arrayidx.i79 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %arrayidx.i79, align 4
  %cmp4.i = icmp eq ptr %74, %retval.0.i
  %inc.i80 = add nuw i32 %i.0.i72, 1
  br i1 %cmp4.i, label %for.body.i81.cleanup_crit_edge, label %for.body.i81.for.cond.i73_crit_edge

for.body.i81.for.cond.i73_crit_edge:              ; preds = %for.body.i81
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i73

for.body.i81.cleanup_crit_edge:                   ; preds = %for.body.i81
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.end.i82:                                      ; preds = %cond.end.i78
  call void @__sanitizer_cov_trace_pc() #13
  call void @crypto_destroy_tfm(ptr noundef %retval.0.i, ptr noundef %base.i.i.i.i) #11
  br label %cleanup

cleanup:                                          ; preds = %for.end.i82, %for.body.i81.cleanup_crit_edge, %ima_calc_boot_aggregate_tfm.exit.cleanup_crit_edge, %if.then30, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ %30, %if.then30 ], [ %retval.0.i68, %ima_calc_boot_aggregate_tfm.exit.cleanup_crit_edge ], [ %retval.0.i68, %for.end.i82 ], [ %retval.0.i68, %for.body.i81.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @param_set_bufsize(ptr noundef %val, ptr nocapture noundef readnone %kp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i64 @memparse(ptr noundef %val, ptr noundef null) #11
  %conv = trunc i64 %call to i32
  %dec.i = add i32 %conv, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %dec.i)
  %tobool.not.i.i = icmp ult i32 %dec.i, 4096
  br i1 %tobool.not.i.i, label %entry.if.end_crit_edge, label %get_order.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

get_order.exit:                                   ; preds = %entry
  %shr.i = lshr i32 %dec.i, 12
  %0 = tail call i32 @llvm.ctlz.i32(i32 %shr.i, i1 true) #11, !range !86
  %sub.i.i = sub nuw nsw i32 32, %0
  call void @__sanitizer_cov_trace_const_cmp4(i32 8388607, i32 %dec.i)
  %cmp = icmp ugt i32 %dec.i, 8388607
  br i1 %cmp, label %get_order.exit.cleanup_crit_edge, label %get_order.exit.if.end_crit_edge

get_order.exit.if.end_crit_edge:                  ; preds = %get_order.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

get_order.exit.cleanup_crit_edge:                 ; preds = %get_order.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %get_order.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %retval.0.i8 = phi i32 [ %sub.i.i, %get_order.exit.if.end_crit_edge ], [ 0, %entry.if.end_crit_edge ]
  store i32 %retval.0.i8, ptr @ima_maxorder, align 4
  %shl = shl nuw nsw i32 4096, %retval.0.i8
  store i32 %shl, ptr @ima_bufsize, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %get_order.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %get_order.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @param_get_uint(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @memparse(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_alloc_shash(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_destroy_tfm(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_alloc_ahash(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_req_done(ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @integrity_kernel_read(ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_one(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_ahash_final(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__get_free_pages(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_stats_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_stats_ahash_update(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_sensitive(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_shash_update(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_shash_final(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tpm_pcr_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smin.i64(i64, i64) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

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
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #10 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { cold nounwind }
attributes #17 = { nounwind allocsize(2) }
attributes #18 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !14, !15, !16, !18, !20, !22, !24, !26, !28, !29, !30, !32, !34, !36, !38, !39, !40, !41, !43, !44, !45, !47, !48, !49, !50, !52, !53, !54, !56, !58, !59, !61, !62, !63, !64, !65, !66, !68, !70, !72, !73, !74}
!llvm.module.flags = !{!75, !76, !77, !78, !79, !80, !81, !82}
!llvm.ident = !{!83}

!0 = !{ptr @__param_ahash_minsize, !1, !"__param_ahash_minsize", i1 false, i1 false}
!1 = !{!"../security/integrity/ima/ima_crypto.c", i32 27, i32 1}
!2 = !{ptr @__UNIQUE_ID_ahash_minsizetype244, !1, !"__UNIQUE_ID_ahash_minsizetype244", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_ahash_minsize245, !4, !"__UNIQUE_ID_ahash_minsize245", i1 false, i1 false}
!4 = !{!"../security/integrity/ima/ima_crypto.c", i32 28, i32 1}
!5 = !{ptr @__param_ahash_bufsize, !6, !"__param_ahash_bufsize", i1 false, i1 false}
!6 = !{!"../security/integrity/ima/ima_crypto.c", i32 54, i32 1}
!7 = !{ptr @__UNIQUE_ID_ahash_bufsizetype246, !6, !"__UNIQUE_ID_ahash_bufsizetype246", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_ahash_bufsize247, !9, !"__UNIQUE_ID_ahash_bufsize247", i1 false, i1 false}
!9 = !{!"../security/integrity/ima/ima_crypto.c", i32 55, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../security/integrity/ima/ima_crypto.c", i32 864, i32 3}
!12 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @ima_calc_boot_aggregate._entry, !11, !"_entry", i1 false, i1 false}
!15 = !{ptr @ima_calc_boot_aggregate._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @ima_ahash_minsize, !17, !"ima_ahash_minsize", i1 false, i1 false}
!17 = !{!"../security/integrity/ima/ima_crypto.c", i32 26, i32 22}
!18 = !{ptr @ima_shash_tfm, !19, !"ima_shash_tfm", i1 false, i1 false}
!19 = !{!"../security/integrity/ima/ima_crypto.c", i32 57, i32 29}
!20 = !{ptr @ima_sha1_idx, !21, !"ima_sha1_idx", i1 false, i1 false}
!21 = !{!"../security/integrity/ima/ima_crypto.c", i32 65, i32 5}
!22 = !{ptr @ima_hash_algo_idx, !23, !"ima_hash_algo_idx", i1 false, i1 false}
!23 = !{!"../security/integrity/ima/ima_crypto.c", i32 66, i32 5}
!24 = !{ptr @ima_extra_slots, !25, !"ima_extra_slots", i1 false, i1 false}
!25 = !{!"../security/integrity/ima/ima_crypto.c", i32 71, i32 5}
!26 = !{ptr @ima_algo_array, !27, !"ima_algo_array", i1 false, i1 false}
!27 = !{!"../security/integrity/ima/ima_crypto.c", i32 73, i32 30}
!28 = !{ptr @__param_str_ahash_minsize, !1, !"__param_str_ahash_minsize", i1 false, i1 false}
!29 = !{ptr @__param_str_ahash_bufsize, !6, !"__param_str_ahash_bufsize", i1 false, i1 false}
!30 = !{ptr @param_ops_bufsize, !31, !"param_ops_bufsize", i1 false, i1 false}
!31 = !{!"../security/integrity/ima/ima_crypto.c", i32 48, i32 38}
!32 = !{ptr @ima_maxorder, !33, !"ima_maxorder", i1 false, i1 false}
!33 = !{!"../security/integrity/ima/ima_crypto.c", i32 31, i32 12}
!34 = !{ptr @ima_bufsize, !35, !"ima_bufsize", i1 false, i1 false}
!35 = !{!"../security/integrity/ima/ima_crypto.c", i32 32, i32 21}
!36 = !{ptr @.str.3, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../security/integrity/ima/ima_crypto.c", i32 82, i32 3}
!38 = !{ptr @.str.4, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @ima_init_ima_crypto._entry, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @ima_init_ima_crypto._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.6, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../security/integrity/ima/ima_crypto.c", i32 86, i32 2}
!43 = !{ptr @ima_init_ima_crypto._entry.5, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @ima_init_ima_crypto._entry_ptr.7, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.8, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../security/integrity/ima/ima_crypto.c", i32 109, i32 3}
!47 = !{ptr @.str.9, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @ima_alloc_tfm._entry, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @ima_alloc_tfm._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.10, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../security/integrity/ima/ima_crypto.c", i32 304, i32 4}
!52 = !{ptr @ima_alloc_atfm._entry, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @ima_alloc_atfm._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @ima_ahash_tfm, !55, !"ima_ahash_tfm", i1 false, i1 false}
!55 = !{!"../security/integrity/ima/ima_crypto.c", i32 58, i32 29}
!56 = !{ptr @init_completion.__key, !57, !"__key", i1 false, i1 false}
!57 = !{!"../include/linux/completion.h", i32 87, i32 2}
!58 = !{ptr @.str.11, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.12, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../security/integrity/ima/ima_crypto.c", i32 323, i32 3}
!61 = !{ptr @ahash_wait._rs, !60, !"_rs", i1 false, i1 false}
!62 = !{ptr @__func__.ahash_wait, !60, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @.str.13, !60, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @ahash_wait._entry, !60, !"_entry", i1 false, i1 false}
!65 = !{ptr @ahash_wait._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.14, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../security/integrity/ima/ima_crypto.c", i32 604, i32 24}
!68 = !{ptr @.str.15, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../security/integrity/ima/ima_crypto.c", i32 610, i32 46}
!70 = !{ptr @.str.16, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../security/integrity/ima/ima_crypto.c", i32 785, i32 3}
!72 = !{ptr @.str.17, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @ima_pcrread._entry, !71, !"_entry", i1 false, i1 false}
!74 = !{ptr @ima_pcrread._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!75 = !{i32 1, !"wchar_size", i32 2}
!76 = !{i32 1, !"min_enum_size", i32 4}
!77 = !{i32 8, !"branch-target-enforcement", i32 0}
!78 = !{i32 8, !"sign-return-address", i32 0}
!79 = !{i32 8, !"sign-return-address-all", i32 0}
!80 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!81 = !{i32 7, !"uwtable", i32 1}
!82 = !{i32 7, !"frame-pointer", i32 2}
!83 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!84 = !{!"branch_weights", i32 1, i32 2000}
!85 = !{!"auto-init"}
!86 = !{i32 0, i32 33}
!87 = !{i64 621148, i64 621209}
!88 = !{i64 623880}
!89 = !{i64 624165}
!90 = !{i64 2153197341}
!91 = !{i64 2153197183}
!92 = !{i64 2153197511}
!93 = !{i64 2150217896}
!94 = !{i8 0, i8 2}
