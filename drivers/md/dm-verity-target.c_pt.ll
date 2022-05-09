; ModuleID = '/llk/IR_all_yes/drivers/md/dm-verity-target.c_pt.bc'
source_filename = "../drivers/md/dm-verity-target.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.69 }
%union.anon.69 = type { ptr }
%struct.target_type = type { i64, ptr, ptr, [3 x i32], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.cpu_cache_fns = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.dm_arg = type { i32, i32, ptr }
%struct.atomic_t = type { i32 }
%struct.crypto_wait = type { %struct.completion, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.dm_verity = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i64, i64, i64, i64, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, ptr, [63 x i64], ptr, ptr, ptr }
%struct.ahash_request = type { %struct.crypto_async_request, i32, ptr, ptr, ptr, [88 x i8], [0 x ptr] }
%struct.crypto_async_request = type { %struct.list_head, ptr, ptr, ptr, i32 }
%struct.crypto_ahash = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, [92 x i8], %struct.crypto_tfm }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [112 x i8], [0 x ptr] }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.dm_verity_io = type { ptr, ptr, i64, i32, %struct.bvec_iter, %struct.work_struct }
%struct.bvec_iter = type <{ i64, i32, i32, i32 }>
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.dm_target = type { ptr, ptr, i64, i64, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i8 }
%struct.bio = type { ptr, ptr, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, i32, ptr, ptr, ptr, %struct.bio_issue, i64, ptr, %union.anon.37, i16, i16, %struct.atomic_t, ptr, ptr, [0 x %struct.bio_vec] }
%struct.bio_issue = type { i64 }
%union.anon.37 = type { ptr }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.page = type { i32, %union.anon.2, %union.anon.67, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.67 = type { %struct.atomic_t }
%struct.dm_dev = type { ptr, ptr, i32, [16 x i8] }
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.xarray, ptr, ptr, ptr, ptr, i32, i32, %struct.mutex, i32, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, ptr, %struct.kobject, ptr, i32, ptr, %struct.lockdep_map, i64 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.block_device = type { i64, i64, ptr, i32, i8, i32, i32, ptr, ptr, ptr, %struct.device, ptr, i32, i8, ptr, i8, %struct.spinlock, ptr, ptr, i32, %struct.mutex, ptr, ptr, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.dm_verity_sig_opts = type { i32, ptr }
%struct.dm_arg_set = type { i32, ptr }
%struct.request_queue = type { ptr, ptr, %struct.percpu_ref, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, %struct.atomic_t, i32, %struct.spinlock, ptr, %struct.kobject, ptr, %struct.blk_integrity, ptr, i32, i32, i32, i32, ptr, i32, i32, ptr, ptr, %struct.timer_list, %struct.work_struct, %struct.atomic_t, ptr, %struct.list_head, [1 x i32], ptr, %struct.list_head, %struct.queue_limits, i32, i32, ptr, ptr, i32, i32, i32, %struct.mutex, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, ptr, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, i32, ptr, %struct.list_head, %struct.bio_set, ptr, ptr, ptr, i8, [5 x i64], ptr, [0 x %struct.srcu_struct] }
%struct.percpu_ref = type { i32, ptr }
%struct.blk_integrity = type { ptr, i8, i8, i8, i8 }
%struct.queue_limits = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.bio_list = type { ptr, ptr }
%struct.srcu_struct = type { [3 x %struct.srcu_node], [3 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.dm_verity_prefetch_work = type { %struct.work_struct, ptr, i64, i32 }

@__param_str_prefetch_cluster = internal constant [27 x i8] c"dm_verity.prefetch_cluster\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@dm_verity_prefetch_cluster = internal global { i32, [28 x i8] } { i32 262144, [28 x i8] zeroinitializer }, align 32
@__param_prefetch_cluster = internal constant %struct.kernel_param { ptr @__param_str_prefetch_cluster, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.69 { ptr @dm_verity_prefetch_cluster } }, section "__param", align 4
@__UNIQUE_ID_prefetch_clustertype267 = internal constant [41 x i8] c"dm_verity.parmtype=prefetch_cluster:uint\00", section ".modinfo", align 1
@verity_target = internal global { %struct.target_type, [40 x i8] } { %struct.target_type { i64 0, ptr @.str.19, ptr null, [3 x i32] [i32 1, i32 8, i32 0], ptr @verity_ctr, ptr @verity_dtr, ptr @verity_map, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @verity_status, ptr null, ptr @verity_prepare_ioctl, ptr null, ptr null, ptr @verity_iterate_devices, ptr @verity_io_hints, ptr null, ptr null, %struct.list_head zeroinitializer }, [40 x i8] zeroinitializer }, align 32
@__initcall__kmod_dm_verity__280_1342_dm_verity_init6 = internal global ptr @dm_verity_init, section ".initcall6.init", align 4
@__exitcall_dm_verity_exit = internal global ptr @dm_verity_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author281 = internal constant [55 x i8] c"dm_verity.author=Mikulas Patocka <mpatocka@redhat.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author282 = internal constant [51 x i8] c"dm_verity.author=Mandeep Baines <msb@chromium.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_author283 = internal constant [48 x i8] c"dm_verity.author=Will Drewry <wad@chromium.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description284 = internal constant [83 x i8] c"dm_verity.description=device-mapper target for transparent disk integrity checking\00", section ".modinfo", align 1
@__UNIQUE_ID_file285 = internal constant [36 x i8] c"dm_verity.file=drivers/md/dm-verity\00", section ".modinfo", align 1
@__UNIQUE_ID_license286 = internal constant [22 x i8] c"dm_verity.license=GPL\00", section ".modinfo", align 1
@verity_hash_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 143, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013device-mapper: verity: crypto_ahash_init failed: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"verity_hash_init\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/md/dm-verity-target.c\00", [34 x i8] zeroinitializer }, align 32
@verity_hash_init._entry_ptr = internal global ptr @verity_hash_init._entry, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@cpu_cache = external dso_local local_unnamed_addr global %struct.cpu_cache_fns, align 4
@cacheid = external dso_local local_unnamed_addr global i32, align 4
@verity_hash_final._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.2, i32 162, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\013device-mapper: verity: verity_hash_final failed updating salt: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"verity_hash_final\00", [46 x i8] zeroinitializer }, align 32
@verity_hash_final._entry_ptr = internal global ptr @verity_hash_final._entry, section ".printk_index", align 4
@.str.7 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"data\00", [27 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"metadata\00", [23 x i8] zeroinitializer }, align 32
@verity_handle_err._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.9, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.verity_handle_err = private unnamed_addr constant [18 x i8] c"verity_handle_err\00", align 1
@verity_handle_err._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @__func__.verity_handle_err, ptr @.str.2, i32 242, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013device-mapper: verity: %s: %s block %llu is corrupted\0A\00", [39 x i8] zeroinitializer }, align 32
@verity_handle_err._entry_ptr = internal global ptr @verity_handle_err._entry, section ".printk_index", align 4
@verity_handle_err._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @__func__.verity_handle_err, ptr @.str.2, i32 245, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013device-mapper: verity: %s: reached maximum errors\0A\00", [43 x i8] zeroinitializer }, align 32
@verity_handle_err._entry_ptr.13 = internal global ptr @verity_handle_err._entry.11, section ".printk_index", align 4
@.str.14 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%s=%d,%llu\00", [21 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"DM_VERITY_ERR_BLOCK_NR\00", [41 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"dm-verity device corrupted\00", [37 x i8] zeroinitializer }, align 32
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@bvec_iter_advance.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.17 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"include/linux/bvec.h\00", [43 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Attempted to advance past end of bvec iter\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"verity\00", [25 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Cannot allocate verity structure\00", [63 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Device must be readonly\00", [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Not enough arguments\00", [43 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%u%c\00", [27 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Invalid version\00", [16 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Data device lookup failed\00", [38 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Hash device lookup failed\00", [38 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Invalid data device block size\00", [33 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Invalid hash device block size\00", [33 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%llu%c\00", [25 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Invalid data blocks\00", [44 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Data device is too small\00", [39 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Invalid hash start\00", [45 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Cannot allocate algorithm name\00", [33 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Cannot initialize hash function\00", [32 x i8] zeroinitializer }, align 32
@verity_ctr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.2, i32 1173, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\016device-mapper: verity: %s using implementation \22%s\22\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"verity_ctr\00", [21 x i8] zeroinitializer }, align 32
@verity_ctr._entry_ptr = internal global ptr @verity_ctr._entry, section ".printk_index", align 4
@.str.37 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Digest size too big\00", [44 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Cannot allocate root digest\00", [36 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Invalid root digest\00", [44 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"-\00", [30 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Cannot allocate salt\00", [43 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Invalid salt\00", [19 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Root hash verification failed\00", [34 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Too many tree levels\00", [43 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Hash device offset overflow\00", [36 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Cannot initialize dm-bufio\00", [37 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Hash device is too small\00", [39 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"kverityd\00", [23 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Cannot allocate workqueue\00", [38 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@verity_parse_opt_args._args = internal constant { [1 x %struct.dm_arg], [20 x i8] } { [1 x %struct.dm_arg] [%struct.dm_arg { i32 0, i32 13, ptr @.str.50 }], [20 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Invalid number of feature args\00", [33 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Conflicting error handling parameters\00", [58 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ignore_zero_blocks\00", [45 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Cannot allocate zero digest\00", [36 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"check_at_most_once\00", [45 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Unrecognized verity feature request\00", [60 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ignore_corruption\00", [46 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"restart_on_corruption\00", [42 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"panic_on_corruption\00", [44 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"device too large to use check_at_most_once\00", [53 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"failed to allocate bitset for check_at_most_once\00", [47 x i8] zeroinitializer }, align 32
@__num_online_cpus = external dso_local global %struct.atomic_t, align 4
@verity_map._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.9, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.verity_map = private unnamed_addr constant [11 x i8] c"verity_map\00", align 1
@verity_map._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @__func__.verity_map, ptr @.str.2, i32 681, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013device-mapper: verity: unaligned io\0A\00", [57 x i8] zeroinitializer }, align 32
@verity_map._entry_ptr = internal global ptr @verity_map._entry, section ".printk_index", align 4
@verity_map._rs.62 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.9, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@verity_map._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @__func__.verity_map, ptr @.str.2, i32 687, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013device-mapper: verity: io out of range\0A\00", [54 x i8] zeroinitializer }, align 32
@verity_map._entry_ptr.65 = internal global ptr @verity_map._entry.63, section ".printk_index", align 4
@verity_end_io.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.66 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"(work_completion)(&io->work)\00", [35 x i8] zeroinitializer }, align 32
@system_state = external dso_local local_unnamed_addr global i32, align 4
@verity_for_io_block._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.68, ptr @.str.2, i32 401, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\013device-mapper: verity: verity_for_io_block crypto op failed: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"verity_for_io_block\00", [44 x i8] zeroinitializer }, align 32
@verity_for_io_block._entry_ptr = internal global ptr @verity_for_io_block._entry, section ".printk_index", align 4
@verity_submit_prefetch.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.69 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"(work_completion)(&pw->work)\00", [35 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%c\00", [29 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%u %s %s %u %u %llu %llu %s \00", [35 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%02x\00", [27 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c" \00", [30 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c" %u\00", [28 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c" ignore_zero_blocks\00", [44 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c" check_at_most_once\00", [44 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c" root_hash_sig_key_desc %s\00", [37 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"target_name=%s,target_version=%u.%u.%u\00", [57 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c",hash_failed=%c\00", [16 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c",verity_version=%u\00", [45 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c",data_device_name=%s\00", [43 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c",hash_device_name=%s\00", [43 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c",verity_algorithm=%s\00", [43 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c",root_digest=\00", [18 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c",salt=\00", [25 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c",ignore_zero_blocks=%c\00", [41 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c",check_at_most_once=%c\00", [41 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c",root_hash_sig_key_desc=%s\00", [37 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c",verity_mode=\00", [18 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"invalid\00", [24 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c";\00", [30 x i8] zeroinitializer }, align 32
@dm_verity_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.93, ptr @.str.2, i32 1332, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013device-mapper: verity: register failed %d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dm_verity_init\00", [17 x i8] zeroinitializer }, align 32
@dm_verity_init._entry_ptr = internal global ptr @dm_verity_init._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 4294967181, i64 4294967280]
@__sancov_gen_cov_switch_values.94 = internal global [4 x i64] [i64 2, i64 32, i64 4294967181, i64 4294967280]
@__sancov_gen_cov_switch_values.95 = internal global [4 x i64] [i64 2, i64 32, i64 4294967181, i64 4294967280]
@__sancov_gen_cov_switch_values.96 = internal global [4 x i64] [i64 2, i64 32, i64 4294967181, i64 4294967280]
@__sancov_gen_cov_switch_values.97 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.98 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.99 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.100 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.101 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.102 = internal global [4 x i64] [i64 2, i64 32, i64 4294967181, i64 4294967280]
@__sancov_gen_cov_switch_values.103 = internal global [4 x i64] [i64 2, i64 32, i64 4294967181, i64 4294967280]
@___asan_gen_.104 = private unnamed_addr constant [27 x i8] c"dm_verity_prefetch_cluster\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 41, i32 17 }
@___asan_gen_.107 = private unnamed_addr constant [14 x i8] c"verity_target\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1313, i32 27 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 143, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 87, i32 2 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 162, i32 4 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 232, i32 14 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 235, i32 14 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 241, i32 2 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 245, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 247, i32 45 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 248, i32 3 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 257, i32 18 }
@___asan_gen_.174 = private unnamed_addr constant [24 x i8] c"../include/linux/bvec.h\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 106, i32 6 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1314, i32 11 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1066, i32 15 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1077, i32 15 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1083, i32 15 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1088, i32 22 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1090, i32 15 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1098, i32 15 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1104, i32 15 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1112, i32 15 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1122, i32 15 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1128, i32 22 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1131, i32 15 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1138, i32 15 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1146, i32 15 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1154, i32 15 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1161, i32 15 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1172, i32 2 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1177, i32 15 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1186, i32 15 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1192, i32 15 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1198, i32 22 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1202, i32 16 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1208, i32 16 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1233, i32 15 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1247, i32 15 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1259, i32 16 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1271, i32 15 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1278, i32 15 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1284, i32 33 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1286, i32 15 }
@___asan_gen_.272 = private unnamed_addr constant [6 x i8] c"_args\00", align 1
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 978, i32 29 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 979, i32 27 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 996, i32 17 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1001, i32 36 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1004, i32 17 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1009, i32 36 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1030, i32 15 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 950, i32 32 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 951, i32 25 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 952, i32 25 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 902, i32 15 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 910, i32 15 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 681, i32 3 }
@___asan_gen_.317 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 687, i32 3 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 592, i32 2 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 401, i32 4 }
@___asan_gen_.341 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 660, i32 2 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 726, i32 3 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 729, i32 3 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 740, i32 4 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 741, i32 3 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 759, i32 3 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 777, i32 4 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 779, i32 4 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 782, i32 4 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 787, i32 3 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 788, i32 3 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 789, i32 3 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 790, i32 3 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 791, i32 3 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 792, i32 3 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 794, i32 3 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 798, i32 3 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 805, i32 3 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 806, i32 3 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 808, i32 4 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 811, i32 4 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 823, i32 5 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 826, i32 3 }
@___asan_gen_.413 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.419 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.420 = private constant [33 x i8] c"../drivers/md/dm-verity-target.c\00", align 1
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1332, i32 3 }
@llvm.compiler.used = appending global [126 x ptr] [ptr @__UNIQUE_ID_author281, ptr @__UNIQUE_ID_author282, ptr @__UNIQUE_ID_author283, ptr @__UNIQUE_ID_description284, ptr @__UNIQUE_ID_file285, ptr @__UNIQUE_ID_license286, ptr @__UNIQUE_ID_prefetch_clustertype267, ptr @__exitcall_dm_verity_exit, ptr @__initcall__kmod_dm_verity__280_1342_dm_verity_init6, ptr @__param_prefetch_cluster, ptr @dm_verity_exit, ptr @dm_verity_init._entry, ptr @dm_verity_init._entry_ptr, ptr @verity_ctr._entry, ptr @verity_ctr._entry_ptr, ptr @verity_for_io_block._entry, ptr @verity_for_io_block._entry_ptr, ptr @verity_handle_err._entry, ptr @verity_handle_err._entry.11, ptr @verity_handle_err._entry_ptr, ptr @verity_handle_err._entry_ptr.13, ptr @verity_hash_final._entry, ptr @verity_hash_final._entry_ptr, ptr @verity_hash_init._entry, ptr @verity_hash_init._entry_ptr, ptr @verity_map._entry, ptr @verity_map._entry.63, ptr @verity_map._entry_ptr, ptr @verity_map._entry_ptr.65, ptr @dm_verity_prefetch_cluster, ptr @verity_target, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @init_completion.__key, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.8, ptr @verity_handle_err._rs, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @verity_parse_opt_args._args, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @verity_map._rs, ptr @.str.61, ptr @verity_map._rs.62, ptr @.str.64, ptr @verity_end_io.__key, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @verity_submit_prefetch.__key, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93], section "llvm.metadata"
@0 = internal global [106 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm_verity_prefetch_cluster to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @verity_target to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @verity_hash_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @verity_hash_final._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @verity_handle_err._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @verity_handle_err._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @verity_handle_err._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @verity_ctr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @verity_parse_opt_args._args to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @verity_map._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @verity_map._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @verity_map._rs.62 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @verity_map._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @verity_end_io.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @verity_for_io_block._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @verity_submit_prefetch.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm_verity_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @verity_hash(ptr nocapture noundef readonly %v, ptr noundef %req, ptr noundef %data, i32 noundef %len, ptr noundef %digest) local_unnamed_addr #0 align 64 {
entry:
  %wait = alloca %struct.crypto_wait, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %wait) #16
  %0 = call ptr @memset(ptr %wait, i32 255, i32 60)
  %call = call fastcc i32 @verity_hash_init(ptr noundef %v, ptr noundef %req, ptr noundef nonnull %wait)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.out_crit_edge, label %if.end, !prof !231

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.end:                                           ; preds = %entry
  %call2 = call fastcc i32 @verity_hash_update(ptr noundef %req, ptr noundef %data, i32 noundef %len, ptr noundef nonnull %wait)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %if.end.out_crit_edge, label %if.end11, !prof !231

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.end11:                                         ; preds = %if.end
  %salt_size.i = getelementptr inbounds %struct.dm_verity, ptr %v, i32 0, i32 9
  %1 = ptrtoint ptr %salt_size.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %salt_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i, label %if.end11.if.end8.i_crit_edge, label %land.rhs.i

if.end11.if.end8.i_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end8.i

land.rhs.i:                                       ; preds = %if.end11
  %version.i = getelementptr inbounds %struct.dm_verity, ptr %v, i32 0, i32 18
  %3 = ptrtoint ptr %version.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %version.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool1.not.i = icmp eq i8 %4, 0
  br i1 %tobool1.not.i, label %if.then.i, label %land.rhs.i.if.end8.i_crit_edge, !prof !231

land.rhs.i.if.end8.i_crit_edge:                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end8.i

if.then.i:                                        ; preds = %land.rhs.i
  %salt.i = getelementptr inbounds %struct.dm_verity, ptr %v, i32 0, i32 7
  %5 = ptrtoint ptr %salt.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %salt.i, align 4
  %call.i = call fastcc i32 @verity_hash_update(ptr noundef %req, ptr noundef %6, i32 noundef %2, ptr noundef nonnull %wait) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.then.i.if.end8.i_crit_edge

if.then.i.if.end8.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end8.i

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  %call7.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %call.i) #19
  br label %out

if.end8.i:                                        ; preds = %if.then.i.if.end8.i_crit_edge, %land.rhs.i.if.end8.i_crit_edge, %if.end11.if.end8.i_crit_edge
  %src1.i.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 2
  %7 = ptrtoint ptr %src1.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %src1.i.i, align 4
  %nbytes2.i.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 1
  %8 = ptrtoint ptr %nbytes2.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %nbytes2.i.i, align 8
  %result3.i.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 3
  %9 = ptrtoint ptr %result3.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %digest, ptr %result3.i.i, align 32
  %call9.i = call i32 @crypto_ahash_final(ptr noundef %req) #16
  %10 = zext i32 %call9.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call9.i, label %if.end8.i.out_crit_edge [
    i32 -115, label %if.end8.i.sw.bb.i.i_crit_edge
    i32 -16, label %if.end8.i.sw.bb.i.i_crit_edge19
  ]

if.end8.i.sw.bb.i.i_crit_edge19:                  ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb.i.i

if.end8.i.sw.bb.i.i_crit_edge:                    ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb.i.i

if.end8.i.out_crit_edge:                          ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

sw.bb.i.i:                                        ; preds = %if.end8.i.sw.bb.i.i_crit_edge, %if.end8.i.sw.bb.i.i_crit_edge19
  call void @wait_for_completion(ptr noundef nonnull %wait) #16
  %err2.i.i = getelementptr inbounds %struct.crypto_wait, ptr %wait, i32 0, i32 1
  %11 = ptrtoint ptr %err2.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %err2.i.i, align 4
  br label %out

out:                                              ; preds = %sw.bb.i.i, %if.end8.i.out_crit_edge, %do.end.i, %if.end.out_crit_edge, %entry.out_crit_edge
  %r.0 = phi i32 [ %call, %entry.out_crit_edge ], [ %call2, %if.end.out_crit_edge ], [ %call.i, %do.end.i ], [ %call9.i, %if.end8.i.out_crit_edge ], [ %12, %sw.bb.i.i ]
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %wait) #16
  ret i32 %r.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @verity_hash_init(ptr nocapture noundef readonly %v, ptr noundef %req, ptr noundef %wait) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm = getelementptr inbounds %struct.dm_verity, ptr %v, i32 0, i32 5
  %0 = ptrtoint ptr %tfm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm, align 4
  %base.i.i = getelementptr inbounds %struct.crypto_ahash, ptr %1, i32 0, i32 10
  %tfm1.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %2 = ptrtoint ptr %tfm1.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %base.i.i, ptr %tfm1.i, align 16
  %complete.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 1
  %3 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @crypto_req_done, ptr %complete.i, align 8
  %data2.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 2
  %4 = ptrtoint ptr %data2.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %wait, ptr %data2.i, align 4
  %flags4.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 4
  %5 = ptrtoint ptr %flags4.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1536, ptr %flags4.i, align 4
  %6 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %wait, align 4
  %wait.i.i = getelementptr inbounds %struct.completion, ptr %wait, i32 0, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i.i, ptr noundef nonnull @.str.3, ptr noundef nonnull @init_completion.__key) #16
  %7 = ptrtoint ptr %tfm1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tfm1.i, align 16
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 128
  %and.i = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %crypto_ahash_init.exit, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

crypto_ahash_init.exit:                           ; preds = %entry
  %add.ptr.i.i.i = getelementptr i8, ptr %8, i32 -128
  %11 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %add.ptr.i.i.i, align 128
  %call2.i = tail call i32 %12(ptr noundef %req) #16
  %13 = zext i32 %call2.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.94)
  switch i32 %call2.i, label %crypto_ahash_init.exit.crypto_wait_req.exit_crit_edge [
    i32 -115, label %crypto_ahash_init.exit.sw.bb.i_crit_edge
    i32 -16, label %crypto_ahash_init.exit.sw.bb.i_crit_edge35
  ]

crypto_ahash_init.exit.sw.bb.i_crit_edge35:       ; preds = %crypto_ahash_init.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb.i

crypto_ahash_init.exit.sw.bb.i_crit_edge:         ; preds = %crypto_ahash_init.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb.i

crypto_ahash_init.exit.crypto_wait_req.exit_crit_edge: ; preds = %crypto_ahash_init.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %crypto_wait_req.exit

sw.bb.i:                                          ; preds = %crypto_ahash_init.exit.sw.bb.i_crit_edge, %crypto_ahash_init.exit.sw.bb.i_crit_edge35
  tail call void @wait_for_completion(ptr noundef %wait) #16
  %14 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %wait, align 4
  %err2.i = getelementptr inbounds %struct.crypto_wait, ptr %wait, i32 0, i32 1
  %15 = ptrtoint ptr %err2.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %err2.i, align 4
  br label %crypto_wait_req.exit

crypto_wait_req.exit:                             ; preds = %sw.bb.i, %crypto_ahash_init.exit.crypto_wait_req.exit_crit_edge
  %err.addr.0.i = phi i32 [ %call2.i, %crypto_ahash_init.exit.crypto_wait_req.exit_crit_edge ], [ %16, %sw.bb.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.addr.0.i)
  %cmp = icmp slt i32 %err.addr.0.i, 0
  br i1 %cmp, label %crypto_wait_req.exit.do.end_crit_edge, label %if.end, !prof !231

crypto_wait_req.exit.do.end_crit_edge:            ; preds = %crypto_wait_req.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

do.end:                                           ; preds = %crypto_wait_req.exit.do.end_crit_edge, %entry.do.end_crit_edge
  %err.addr.0.i34 = phi i32 [ %err.addr.0.i, %crypto_wait_req.exit.do.end_crit_edge ], [ -126, %entry.do.end_crit_edge ]
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %err.addr.0.i34) #19
  br label %cleanup

if.end:                                           ; preds = %crypto_wait_req.exit
  %salt_size = getelementptr inbounds %struct.dm_verity, ptr %v, i32 0, i32 9
  %17 = ptrtoint ptr %salt_size to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %salt_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool4.not = icmp eq i32 %18, 0
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %land.rhs, !prof !231

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

land.rhs:                                         ; preds = %if.end
  %version = getelementptr inbounds %struct.dm_verity, ptr %v, i32 0, i32 18
  %19 = ptrtoint ptr %version to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %version, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %cmp5.not = icmp eq i8 %20, 0
  br i1 %cmp5.not, label %land.rhs.cleanup_crit_edge, label %if.then13, !prof !231

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then13:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #18
  %salt = getelementptr inbounds %struct.dm_verity, ptr %v, i32 0, i32 7
  %21 = ptrtoint ptr %salt to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %salt, align 4
  %call15 = tail call fastcc i32 @verity_hash_update(ptr noundef %req, ptr noundef %22, i32 noundef %18, ptr noundef %wait)
  br label %cleanup

cleanup:                                          ; preds = %if.then13, %land.rhs.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %err.addr.0.i34, %do.end ], [ %call15, %if.then13 ], [ %err.addr.0.i, %land.rhs.cleanup_crit_edge ], [ %err.addr.0.i, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @verity_hash_update(ptr noundef %req, ptr noundef %data, i32 noundef %len, ptr noundef %wait) unnamed_addr #0 align 64 {
entry:
  %sg = alloca %struct.scatterlist, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %sg) #16
  %0 = getelementptr inbounds %struct.scatterlist, ptr %sg, i32 0, i32 1
  %1 = getelementptr inbounds %struct.scatterlist, ptr %sg, i32 0, i32 2
  %2 = call ptr @memset(ptr %sg, i32 255, i32 20)
  %call = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %data) #16
  br i1 %call, label %do.body.preheader, label %if.then, !prof !231

do.body.preheader:                                ; preds = %entry
  %src1.i2 = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 2
  %nbytes2.i3 = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 1
  %result3.i4 = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 3
  %err2.i5 = getelementptr inbounds %struct.crypto_wait, ptr %wait, i32 0, i32 1
  br label %do.body

if.then:                                          ; preds = %entry
  call void @sg_init_one(ptr noundef nonnull %sg, ptr noundef %data, i32 noundef %len) #16
  %src1.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 2
  %3 = ptrtoint ptr %src1.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %sg, ptr %src1.i, align 4
  %nbytes2.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 1
  %4 = ptrtoint ptr %nbytes2.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %len, ptr %nbytes2.i, align 8
  %result3.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 3
  %5 = ptrtoint ptr %result3.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %result3.i, align 32
  %tfm.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %6 = ptrtoint ptr %tfm.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tfm.i.i, align 16
  %__crt_alg.i = getelementptr i8, ptr %7, i32 12
  %8 = ptrtoint ptr %__crt_alg.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %__crt_alg.i, align 4
  call void @crypto_stats_get(ptr noundef %9) #16
  %10 = ptrtoint ptr %tfm.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tfm.i.i, align 16
  %update.i = getelementptr i8, ptr %11, i32 -124
  %12 = ptrtoint ptr %update.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %update.i, align 4
  %call3.i = call i32 %13(ptr noundef %req) #16
  call void @crypto_stats_ahash_update(i32 noundef %len, i32 noundef %call3.i, ptr noundef %9) #16
  %14 = zext i32 %call3.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.95)
  switch i32 %call3.i, label %if.then.cleanup20_crit_edge [
    i32 -115, label %if.then.sw.bb.i_crit_edge
    i32 -16, label %if.then.sw.bb.i_crit_edge9
  ]

if.then.sw.bb.i_crit_edge9:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb.i

if.then.sw.bb.i_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb.i

if.then.cleanup20_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup20

sw.bb.i:                                          ; preds = %if.then.sw.bb.i_crit_edge, %if.then.sw.bb.i_crit_edge9
  call void @wait_for_completion(ptr noundef %wait) #16
  %15 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %wait, align 4
  %err2.i = getelementptr inbounds %struct.crypto_wait, ptr %wait, i32 0, i32 1
  %16 = ptrtoint ptr %err2.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %err2.i, align 4
  br label %cleanup20

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %do.body.preheader
  %len.addr.0 = phi i32 [ %sub17, %do.cond.do.body_crit_edge ], [ %len, %do.body.preheader ]
  %data.addr.0 = phi ptr [ %add.ptr, %do.cond.do.body_crit_edge ], [ %data, %do.body.preheader ]
  %18 = ptrtoint ptr %data.addr.0 to i32
  %and = and i32 %18, 4095
  %sub = sub nuw nsw i32 4096, %and
  %19 = call i32 @llvm.umin.i32(i32 %len.addr.0, i32 %sub)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cacheid to i32))
  %20 = load i32, ptr @cacheid, align 4
  %and2.i.i = and i32 %20, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %tobool2.not.i = icmp eq i32 %and2.i.i, 0
  br i1 %tobool2.not.i, label %do.body.flush_kernel_vmap_range.exit_crit_edge, label %if.then.i

do.body.flush_kernel_vmap_range.exit_crit_edge:   ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %flush_kernel_vmap_range.exit

if.then.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 7) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 7), align 4
  call void %21(ptr noundef %data.addr.0, i32 noundef %19) #16
  br label %flush_kernel_vmap_range.exit

flush_kernel_vmap_range.exit:                     ; preds = %if.then.i, %do.body.flush_kernel_vmap_range.exit_crit_edge
  call void @sg_init_table(ptr noundef nonnull %sg, i32 noundef 1) #16
  %call5 = call ptr @vmalloc_to_page(ptr noundef %data.addr.0) #16
  %22 = ptrtoint ptr %sg to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %sg, align 4
  %24 = ptrtoint ptr %call5 to i32
  %and2.i.i1 = and i32 %24, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i1)
  %tobool.not.i.i = icmp eq i32 %and2.i.i1, 0
  br i1 %tobool.not.i.i, label %do.body11.i.i, label %do.body5.i.i, !prof !232

do.body5.i.i:                                     ; preds = %flush_kernel_vmap_range.exit
  call void @__sanitizer_cov_trace_pc() #18
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #16, !srcloc !233
  unreachable

do.body11.i.i:                                    ; preds = %flush_kernel_vmap_range.exit
  %and.i.i.i = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %sg_set_page.exit, label %do.body19.i.i, !prof !232

do.body19.i.i:                                    ; preds = %do.body11.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #16, !srcloc !234
  unreachable

sg_set_page.exit:                                 ; preds = %do.body11.i.i
  %and.i.i = and i32 %23, 3
  %or.i.i = or i32 %and.i.i, %24
  %25 = ptrtoint ptr %sg to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %or.i.i, ptr %sg, align 4
  %26 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %and, ptr %0, align 4
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %19, ptr %1, align 4
  %28 = ptrtoint ptr %src1.i2 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %sg, ptr %src1.i2, align 4
  %29 = ptrtoint ptr %nbytes2.i3 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %19, ptr %nbytes2.i3, align 8
  %30 = ptrtoint ptr %result3.i4 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %result3.i4, align 32
  %call7 = call fastcc i32 @crypto_ahash_update(ptr noundef %req)
  %31 = zext i32 %call7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.96)
  switch i32 %call7, label %sg_set_page.exit.crypto_wait_req.exit8_crit_edge [
    i32 -115, label %sg_set_page.exit.sw.bb.i6_crit_edge
    i32 -16, label %sg_set_page.exit.sw.bb.i6_crit_edge10
  ]

sg_set_page.exit.sw.bb.i6_crit_edge10:            ; preds = %sg_set_page.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb.i6

sg_set_page.exit.sw.bb.i6_crit_edge:              ; preds = %sg_set_page.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb.i6

sg_set_page.exit.crypto_wait_req.exit8_crit_edge: ; preds = %sg_set_page.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %crypto_wait_req.exit8

sw.bb.i6:                                         ; preds = %sg_set_page.exit.sw.bb.i6_crit_edge, %sg_set_page.exit.sw.bb.i6_crit_edge10
  call void @wait_for_completion(ptr noundef %wait) #16
  %32 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %wait, align 4
  %33 = ptrtoint ptr %err2.i5 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %err2.i5, align 4
  br label %crypto_wait_req.exit8

crypto_wait_req.exit8:                            ; preds = %sw.bb.i6, %sg_set_page.exit.crypto_wait_req.exit8_crit_edge
  %err.addr.0.i7 = phi i32 [ %call7, %sg_set_page.exit.crypto_wait_req.exit8_crit_edge ], [ %34, %sw.bb.i6 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.addr.0.i7)
  %tobool9.not = icmp eq i32 %err.addr.0.i7, 0
  br i1 %tobool9.not, label %do.cond, label %crypto_wait_req.exit8.cleanup20_crit_edge

crypto_wait_req.exit8.cleanup20_crit_edge:        ; preds = %crypto_wait_req.exit8
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup20

do.cond:                                          ; preds = %crypto_wait_req.exit8
  %sub17 = sub i32 %len.addr.0, %19
  %add.ptr = getelementptr i8, ptr %data.addr.0, i32 %19
  %tobool19.not = icmp eq i32 %sub17, 0
  br i1 %tobool19.not, label %do.cond.cleanup20_crit_edge, label %do.cond.do.body_crit_edge

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body

do.cond.cleanup20_crit_edge:                      ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup20

cleanup20:                                        ; preds = %do.cond.cleanup20_crit_edge, %crypto_wait_req.exit8.cleanup20_crit_edge, %sw.bb.i, %if.then.cleanup20_crit_edge
  %retval.2 = phi i32 [ %call3.i, %if.then.cleanup20_crit_edge ], [ %17, %sw.bb.i ], [ 0, %do.cond.cleanup20_crit_edge ], [ %err.addr.0.i7, %crypto_wait_req.exit8.cleanup20_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg) #16
  ret i32 %retval.2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @verity_hash_for_block(ptr noundef %v, ptr noundef %io, i64 noundef %block, ptr nocapture noundef %digest, ptr nocapture noundef writeonly %is_zero) local_unnamed_addr #0 align 64 {
entry:
  %buf.i53 = alloca ptr, align 4
  %buf.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %levels = getelementptr inbounds %struct.dm_verity, ptr %v, i32 0, i32 17
  %0 = ptrtoint ptr %levels to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %levels, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end10_crit_edge, label %if.then, !prof !231

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end10

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i) #16
  %2 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %buf.i, align 4, !annotation !235
  %hash_per_block_bits.i.i.i = getelementptr inbounds %struct.dm_verity, ptr %v, i32 0, i32 16
  %3 = ptrtoint ptr %hash_per_block_bits.i.i.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %hash_per_block_bits.i.i.i, align 2
  %conv.i.i.i = zext i8 %4 to i32
  %arrayidx.i.i = getelementptr %struct.dm_verity, ptr %v, i32 0, i32 25, i32 0
  %5 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %arrayidx.i.i, align 8
  %sh_prom.i.i = zext i8 %4 to i64
  %shr.i.i = lshr i64 %block, %sh_prom.i.i
  %add.i.i = add i64 %shr.i.i, %6
  %notmask.i.i = shl nsw i32 -1, %conv.i.i.i
  %sub.i.i = xor i32 %notmask.i.i, -1
  %7 = trunc i64 %block to i32
  %conv4.i.i = and i32 %sub.i.i, %7
  %version.i.i = getelementptr inbounds %struct.dm_verity, ptr %v, i32 0, i32 18
  %8 = ptrtoint ptr %version.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %version.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool5.not.i.i = icmp eq i8 %9, 0
  br i1 %tobool5.not.i.i, label %if.then6.i.i, label %if.else.i.i

if.then6.i.i:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  %digest_size.i.i = getelementptr inbounds %struct.dm_verity, ptr %v, i32 0, i32 19
  %10 = ptrtoint ptr %digest_size.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %digest_size.i.i, align 8
  %mul.i.i = mul i32 %11, %conv4.i.i
  br label %verity_hash_at_level.exit.i

if.else.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  %hash_dev_block_bits.i.i = getelementptr inbounds %struct.dm_verity, ptr %v, i32 0, i32 15
  %12 = ptrtoint ptr %hash_dev_block_bits.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %hash_dev_block_bits.i.i, align 1
  %conv7.i.i = zext i8 %13 to i32
  %sub10.i.i = sub nsw i32 %conv7.i.i, %conv.i.i.i
  %shl11.i.i = shl i32 %conv4.i.i, %sub10.i.i
  br label %verity_hash_at_level.exit.i

verity_hash_at_level.exit.i:                      ; preds = %if.else.i.i, %if.then6.i.i
  %storemerge.i.i = phi i32 [ %mul.i.i, %if.then6.i.i ], [ %shl11.i.i, %if.else.i.i ]
  %bufio.i = getelementptr inbounds %struct.dm_verity, ptr %v, i32 0, i32 3
  %14 = ptrtoint ptr %bufio.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bufio.i, align 4
  %call.i = call ptr @dm_bufio_read(ptr noundef %15, i64 noundef %add.i.i, ptr noundef nonnull %buf.i) #16
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %verity_hash_at_level.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  %16 = ptrtoint ptr %call.i to i32
  br label %verity_verify_level.exit

if.end.i:                                         ; preds = %verity_hash_at_level.exit.i
  %17 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %buf.i, align 4
  %call3.i = call ptr @dm_bufio_get_aux_data(ptr noundef %18) #16
  %19 = ptrtoint ptr %call3.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %call3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not.i = icmp eq i32 %20, 0
  br i1 %tobool.not.i, label %if.end.i.release_ret_r.i_crit_edge, label %if.end40.i

if.end.i.release_ret_r.i_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %release_ret_r.i

if.end40.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr.i = getelementptr i8, ptr %call.i, i32 %storemerge.i.i
  %digest_size41.i = getelementptr inbounds %struct.dm_verity, ptr %v, i32 0, i32 19
  %21 = ptrtoint ptr %digest_size41.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %digest_size41.i, align 8
  %23 = call ptr @memcpy(ptr %digest, ptr %add.ptr.i, i32 %22)
  br label %release_ret_r.i

release_ret_r.i:                                  ; preds = %if.end40.i, %if.end.i.release_ret_r.i_crit_edge
  %r.0.i = phi i32 [ 0, %if.end40.i ], [ 1, %if.end.i.release_ret_r.i_crit_edge ]
  %24 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %buf.i, align 4
  call void @dm_bufio_release(ptr noundef %25) #16
  br label %verity_verify_level.exit

verity_verify_level.exit:                         ; preds = %release_ret_r.i, %if.then.i
  %retval.0.i = phi i32 [ %16, %if.then.i ], [ %r.0.i, %release_ret_r.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %retval.0.i)
  %cmp = icmp slt i32 %retval.0.i, 1
  br i1 %cmp, label %verity_verify_level.exit.out_crit_edge, label %verity_verify_level.exit.if.end10_crit_edge, !prof !232

verity_verify_level.exit.if.end10_crit_edge:      ; preds = %verity_verify_level.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end10

verity_verify_level.exit.out_crit_edge:           ; preds = %verity_verify_level.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.end10:                                         ; preds = %verity_verify_level.exit.if.end10_crit_edge, %entry.if.end10_crit_edge
  %r.0 = phi i32 [ %retval.0.i, %verity_verify_level.exit.if.end10_crit_edge ], [ 0, %entry.if.end10_crit_edge ]
  %root_digest = getelementptr inbounds %struct.dm_verity, ptr %v, i32 0, i32 6
  %26 = ptrtoint ptr %root_digest to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %root_digest, align 8
  %digest_size = getelementptr inbounds %struct.dm_verity, ptr %v, i32 0, i32 19
  %28 = ptrtoint ptr %digest_size to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %digest_size, align 8
  %30 = call ptr @memcpy(ptr %digest, ptr %27, i32 %29)
  %31 = ptrtoint ptr %levels to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %levels, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %cmp1295.not = icmp eq i8 %32, 0
  br i1 %cmp1295.not, label %if.end10.out_crit_edge, label %for.body.lr.ph

if.end10.out_crit_edge:                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

for.body.lr.ph:                                   ; preds = %if.end10
  %conv = zext i8 %32 to i32
  %hash_per_block_bits.i.i.i54 = getelementptr inbounds %struct.dm_verity, ptr %v, i32 0, i32 16
  %version.i.i63 = getelementptr inbounds %struct.dm_verity, ptr %v, i32 0, i32 18
  %hash_dev_block_bits.i.i68 = getelementptr inbounds %struct.dm_verity, ptr %v, i32 0, i32 15
  %bufio.i74 = getelementptr inbounds %struct.dm_verity, ptr %v, i32 0, i32 3
  %add.ptr.i.i = getelementptr %struct.dm_verity_io, ptr %io, i32 1
  %ahash_reqsize.i.i = getelementptr inbounds %struct.dm_verity, ptr %v, i32 0, i32 20
  br label %for.body

for.cond:                                         ; preds = %verity_verify_level.exit89
  %cmp12 = icmp ugt i32 %i.096.in, 1
  br i1 %cmp12, label %for.cond.for.body_crit_edge, label %for.cond.land.lhs.true_crit_edge

for.cond.land.lhs.true_crit_edge:                 ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.lhs.true

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.096.in = phi i32 [ %conv, %for.body.lr.ph ], [ %i.096, %for.cond.for.body_crit_edge ]
  %i.096 = add nsw i32 %i.096.in, -1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i53) #16
  %33 = ptrtoint ptr %buf.i53 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr inttoptr (i32 -1 to ptr), ptr %buf.i53, align 4, !annotation !235
  %34 = ptrtoint ptr %hash_per_block_bits.i.i.i54 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %hash_per_block_bits.i.i.i54, align 2
  %conv.i.i.i55 = zext i8 %35 to i32
  %mul.i.i.i = mul i32 %i.096, %conv.i.i.i55
  %sh_prom.i.i.i = zext i32 %mul.i.i.i to i64
  %shr.i.i.i = lshr i64 %block, %sh_prom.i.i.i
  %arrayidx.i.i56 = getelementptr %struct.dm_verity, ptr %v, i32 0, i32 25, i32 %i.096
  %36 = ptrtoint ptr %arrayidx.i.i56 to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %arrayidx.i.i56, align 8
  %sh_prom.i.i57 = zext i8 %35 to i64
  %shr.i.i58 = lshr i64 %shr.i.i.i, %sh_prom.i.i57
  %add.i.i59 = add i64 %shr.i.i58, %37
  %notmask.i.i60 = shl nsw i32 -1, %conv.i.i.i55
  %sub.i.i61 = xor i32 %notmask.i.i60, -1
  %38 = trunc i64 %shr.i.i.i to i32
  %conv4.i.i62 = and i32 %38, %sub.i.i61
  %39 = ptrtoint ptr %version.i.i63 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %version.i.i63, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool5.not.i.i64 = icmp eq i8 %40, 0
  br i1 %tobool5.not.i.i64, label %if.then6.i.i67, label %if.else.i.i72

if.then6.i.i67:                                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  %41 = ptrtoint ptr %digest_size to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %digest_size, align 8
  %mul.i.i66 = mul i32 %42, %conv4.i.i62
  br label %verity_hash_at_level.exit.i77

if.else.i.i72:                                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  %43 = ptrtoint ptr %hash_dev_block_bits.i.i68 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %hash_dev_block_bits.i.i68, align 1
  %conv7.i.i69 = zext i8 %44 to i32
  %sub10.i.i70 = sub nsw i32 %conv7.i.i69, %conv.i.i.i55
  %shl11.i.i71 = shl i32 %conv4.i.i62, %sub10.i.i70
  br label %verity_hash_at_level.exit.i77

verity_hash_at_level.exit.i77:                    ; preds = %if.else.i.i72, %if.then6.i.i67
  %storemerge.i.i73 = phi i32 [ %mul.i.i66, %if.then6.i.i67 ], [ %shl11.i.i71, %if.else.i.i72 ]
  %45 = ptrtoint ptr %bufio.i74 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %bufio.i74, align 4
  %call.i75 = call ptr @dm_bufio_read(ptr noundef %46, i64 noundef %add.i.i59, ptr noundef nonnull %buf.i53) #16
  %cmp.i.i76 = icmp ugt ptr %call.i75, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i76, label %if.then.i78, label %if.end.i81

if.then.i78:                                      ; preds = %verity_hash_at_level.exit.i77
  call void @__sanitizer_cov_trace_pc() #18
  %47 = ptrtoint ptr %call.i75 to i32
  br label %verity_verify_level.exit89

if.end.i81:                                       ; preds = %verity_hash_at_level.exit.i77
  %48 = ptrtoint ptr %buf.i53 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %buf.i53, align 4
  %call3.i79 = call ptr @dm_bufio_get_aux_data(ptr noundef %49) #16
  %50 = ptrtoint ptr %call3.i79 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %call3.i79, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool.not.i80 = icmp eq i32 %51, 0
  br i1 %tobool.not.i80, label %if.then4.i82, label %if.end.i81.if.end40.i85_crit_edge

if.end.i81.if.end40.i85_crit_edge:                ; preds = %if.end.i81
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end40.i85

if.then4.i82:                                     ; preds = %if.end.i81
  %52 = ptrtoint ptr %hash_dev_block_bits.i.i68 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %hash_dev_block_bits.i.i68, align 1
  %conv.i = zext i8 %53 to i32
  %shl.i = shl nuw i32 1, %conv.i
  %54 = ptrtoint ptr %ahash_reqsize.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %ahash_reqsize.i.i, align 4
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %55
  %call10.i = call i32 @verity_hash(ptr noundef %v, ptr noundef %add.ptr.i.i, ptr noundef %call.i75, i32 noundef %shl.i, ptr noundef %add.ptr1.i.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %cmp.i = icmp slt i32 %call10.i, 0
  br i1 %cmp.i, label %if.then4.i82.release_ret_r.i87_crit_edge, label %if.end15.i, !prof !231

if.then4.i82.release_ret_r.i87_crit_edge:         ; preds = %if.then4.i82
  call void @__sanitizer_cov_trace_pc() #18
  br label %release_ret_r.i87

if.end15.i:                                       ; preds = %if.then4.i82
  %56 = ptrtoint ptr %ahash_reqsize.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %ahash_reqsize.i.i, align 4
  %add.ptr1.i72.i = getelementptr i8, ptr %add.ptr.i.i, i32 %57
  %58 = ptrtoint ptr %digest_size to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %digest_size, align 8
  %bcmp.i = call i32 @bcmp(ptr %add.ptr1.i72.i, ptr %digest, i32 %59) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %cmp18.i = icmp eq i32 %bcmp.i, 0
  br i1 %cmp18.i, label %if.end15.i.if.end40.sink.split.i_crit_edge, label %if.else.i, !prof !232

if.end15.i.if.end40.sink.split.i_crit_edge:       ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end40.sink.split.i

if.else.i:                                        ; preds = %if.end15.i
  %call28.i = call i32 @verity_fec_decode(ptr noundef %v, ptr noundef %io, i32 noundef 1, i64 noundef %add.i.i59, ptr noundef %call.i75, ptr noundef null) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i)
  %cmp29.i = icmp eq i32 %call28.i, 0
  br i1 %cmp29.i, label %if.else.i.if.end40.sink.split.i_crit_edge, label %if.else33.i

if.else.i.if.end40.sink.split.i_crit_edge:        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end40.sink.split.i

if.else33.i:                                      ; preds = %if.else.i
  %call34.i = call fastcc i32 @verity_handle_err(ptr noundef %v, i32 noundef 1, i64 noundef %add.i.i59) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34.i)
  %tobool35.not.i = icmp eq i32 %call34.i, 0
  br i1 %tobool35.not.i, label %if.else33.i.if.end40.i85_crit_edge, label %if.else33.i.release_ret_r.i87_crit_edge

if.else33.i.release_ret_r.i87_crit_edge:          ; preds = %if.else33.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %release_ret_r.i87

if.else33.i.if.end40.i85_crit_edge:               ; preds = %if.else33.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end40.i85

if.end40.sink.split.i:                            ; preds = %if.else.i.if.end40.sink.split.i_crit_edge, %if.end15.i.if.end40.sink.split.i_crit_edge
  %60 = ptrtoint ptr %call3.i79 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 1, ptr %call3.i79, align 4
  br label %if.end40.i85

if.end40.i85:                                     ; preds = %if.end40.sink.split.i, %if.else33.i.if.end40.i85_crit_edge, %if.end.i81.if.end40.i85_crit_edge
  %add.ptr.i83 = getelementptr i8, ptr %call.i75, i32 %storemerge.i.i73
  %61 = ptrtoint ptr %digest_size to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %digest_size, align 8
  %63 = call ptr @memcpy(ptr %digest, ptr %add.ptr.i83, i32 %62)
  br label %release_ret_r.i87

release_ret_r.i87:                                ; preds = %if.end40.i85, %if.else33.i.release_ret_r.i87_crit_edge, %if.then4.i82.release_ret_r.i87_crit_edge
  %r.0.i86 = phi i32 [ 0, %if.end40.i85 ], [ %call10.i, %if.then4.i82.release_ret_r.i87_crit_edge ], [ -5, %if.else33.i.release_ret_r.i87_crit_edge ]
  %64 = ptrtoint ptr %buf.i53 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %buf.i53, align 4
  call void @dm_bufio_release(ptr noundef %65) #16
  br label %verity_verify_level.exit89

verity_verify_level.exit89:                       ; preds = %release_ret_r.i87, %if.then.i78
  %retval.0.i88 = phi i32 [ %47, %if.then.i78 ], [ %r.0.i86, %release_ret_r.i87 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i53) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i88)
  %tobool15.not = icmp eq i32 %retval.0.i88, 0
  br i1 %tobool15.not, label %for.cond, label %verity_verify_level.exit89.if.end33_crit_edge, !prof !232

verity_verify_level.exit89.if.end33_crit_edge:    ; preds = %verity_verify_level.exit89
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end33

out:                                              ; preds = %if.end10.out_crit_edge, %verity_verify_level.exit.out_crit_edge
  %r.2 = phi i32 [ %retval.0.i, %verity_verify_level.exit.out_crit_edge ], [ %r.0, %if.end10.out_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %r.2)
  %tobool24.not = icmp eq i32 %r.2, 0
  br i1 %tobool24.not, label %out.land.lhs.true_crit_edge, label %out.if.end33_crit_edge

out.if.end33_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end33

out.land.lhs.true_crit_edge:                      ; preds = %out
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %out.land.lhs.true_crit_edge, %for.cond.land.lhs.true_crit_edge
  %zero_digest = getelementptr inbounds %struct.dm_verity, ptr %v, i32 0, i32 8
  %66 = ptrtoint ptr %zero_digest to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %zero_digest, align 8
  %tobool25.not = icmp eq ptr %67, null
  br i1 %tobool25.not, label %land.lhs.true.if.end33_crit_edge, label %if.then26

land.lhs.true.if.end33_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end33

if.then26:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  %digest_size28 = getelementptr inbounds %struct.dm_verity, ptr %v, i32 0, i32 19
  %68 = ptrtoint ptr %digest_size28 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %digest_size28, align 8
  %bcmp = call i32 @bcmp(ptr nonnull %67, ptr %digest, i32 %69) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool30.not = icmp eq i32 %bcmp, 0
  %frombool = zext i1 %tobool30.not to i8
  br label %if.end33

if.end33:                                         ; preds = %if.then26, %land.lhs.true.if.end33_crit_edge, %out.if.end33_crit_edge, %verity_verify_level.exit89.if.end33_crit_edge
  %r.292 = phi i32 [ 0, %if.then26 ], [ 0, %land.lhs.true.if.end33_crit_edge ], [ %r.2, %out.if.end33_crit_edge ], [ %retval.0.i88, %verity_verify_level.exit89.if.end33_crit_edge ]
  %storemerge = phi i8 [ %frombool, %if.then26 ], [ 0, %land.lhs.true.if.end33_crit_edge ], [ 0, %out.if.end33_crit_edge ], [ 0, %verity_verify_level.exit89.if.end33_crit_edge ]
  %70 = ptrtoint ptr %is_zero to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %storemerge, ptr %is_zero, align 1
  ret i32 %r.292
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @verity_for_bv_block(ptr noundef %v, ptr noundef %io, ptr nocapture noundef %iter, ptr nocapture noundef readonly %process) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %data_dev_block_bits = getelementptr inbounds %struct.dm_verity, ptr %v, i32 0, i32 14
  %0 = ptrtoint ptr %data_dev_block_bits to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %data_dev_block_bits, align 8
  %conv = zext i8 %1 to i32
  %shl = shl nuw i32 1, %conv
  %ti = getelementptr inbounds %struct.dm_verity, ptr %v, i32 0, i32 2
  %2 = ptrtoint ptr %ti to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ti, align 8
  %per_io_data_size = getelementptr inbounds %struct.dm_target, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %per_io_data_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %per_io_data_size, align 8
  %call = tail call ptr @dm_bio_from_per_bio_data(ptr noundef %io, i32 noundef %5) #16
  %bi_io_vec = getelementptr inbounds %struct.bio, ptr %call, i32 0, i32 20
  %bi_idx = getelementptr inbounds %struct.bvec_iter, ptr %iter, i32 0, i32 2
  %bi_bvec_done = getelementptr inbounds %struct.bvec_iter, ptr %iter, i32 0, i32 3
  %bi_size = getelementptr inbounds %struct.bvec_iter, ptr %iter, i32 0, i32 1
  %bi_opf.i.i = getelementptr inbounds %struct.bio, ptr %call, i32 0, i32 2
  br label %do.body

do.body:                                          ; preds = %do.cond51.do.body_crit_edge, %entry
  %todo.0 = phi i32 [ %shl, %entry ], [ %sub4793, %do.cond51.do.body_crit_edge ]
  %6 = ptrtoint ptr %bi_io_vec to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bi_io_vec, align 8
  %8 = ptrtoint ptr %bi_idx to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %bi_idx, align 1
  %arrayidx = getelementptr %struct.bio_vec, ptr %7, i32 %9
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %bv_offset = getelementptr %struct.bio_vec, ptr %7, i32 %9, i32 2
  %12 = ptrtoint ptr %bv_offset to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bv_offset, align 4
  %14 = ptrtoint ptr %bi_bvec_done to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %bi_bvec_done, align 1
  %add = add i32 %15, %13
  %div88 = lshr i32 %add, 12
  %add.ptr = getelementptr %struct.page, ptr %11, i32 %div88
  %16 = ptrtoint ptr %bi_size to i32
  call void @__asan_loadN_noabort(i32 %16, i32 4)
  %17 = load i32, ptr %bi_size, align 1
  %bv_len8 = getelementptr %struct.bio_vec, ptr %7, i32 %9, i32 1
  %18 = ptrtoint ptr %bv_len8 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %bv_len8, align 4
  %sub = sub i32 %19, %15
  %20 = tail call i32 @llvm.umin.i32(i32 %17, i32 %sub)
  %rem = and i32 %add, 4095
  %sub17 = sub nuw nsw i32 4096, %rem
  %21 = tail call i32 @llvm.umin.i32(i32 %20, i32 %sub17)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %22 = load i32, ptr @pgprot_kernel, align 4
  %or.i.i = or i32 %22, 512
  %call.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef %add.ptr, i32 noundef %or.i.i) #16
  %add.ptr.i = getelementptr i8, ptr %call.i.i, i32 %rem
  %23 = tail call i32 @llvm.umin.i32(i32 %21, i32 %todo.0)
  %call38 = tail call i32 %process(ptr noundef %v, ptr noundef %io, ptr noundef %add.ptr.i, i32 noundef %23) #16
  tail call void @kunmap_local_indexed(ptr noundef %add.ptr.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %cmp43 = icmp slt i32 %call38, 0
  br i1 %cmp43, label %do.body.cleanup54_crit_edge, label %if.end46

do.body.cleanup54_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup54

if.end46:                                         ; preds = %do.body
  %shr.i = lshr i32 %23, 9
  %conv.i = zext i32 %shr.i to i64
  %24 = ptrtoint ptr %iter to i32
  call void @__asan_loadN_noabort(i32 %24, i32 8)
  %25 = load i64, ptr %iter, align 1
  %add.i = add i64 %25, %conv.i
  store i64 %add.i, ptr %iter, align 1
  %26 = ptrtoint ptr %bi_opf.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %bi_opf.i.i, align 8
  %and.i.i = and i32 %27, 255
  %28 = add nsw i32 %and.i.i, -3
  %switch.and.i.i = and i32 %28, -7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.and.i.i)
  %switch.selectcmp.i.i = icmp eq i32 %switch.and.i.i, 0
  br i1 %switch.selectcmp.i.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #18
  %29 = ptrtoint ptr %bi_size to i32
  call void @__asan_loadN_noabort(i32 %29, i32 4)
  %30 = load i32, ptr %bi_size, align 1
  %sub.i = sub i32 %30, %23
  br label %cleanup.thread91

if.else.i:                                        ; preds = %if.end46
  %31 = ptrtoint ptr %bi_io_vec to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %bi_io_vec, align 8
  %33 = ptrtoint ptr %bi_size to i32
  call void @__asan_loadN_noabort(i32 %33, i32 4)
  %34 = load i32, ptr %bi_size, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %23)
  %cmp.i.i = icmp ult i32 %34, %23
  br i1 %cmp.i.i, label %land.rhs.i.i, label %if.end38.i.i

land.rhs.i.i:                                     ; preds = %if.else.i
  %.b1.i.i = load i1, ptr @bvec_iter_advance.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.cleanup.thread91_crit_edge, label %if.then.i.i, !prof !232

land.rhs.i.i.cleanup.thread91_crit_edge:          ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.thread91

if.then.i.i:                                      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @bvec_iter_advance.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 107, i32 noundef 9, ptr noundef nonnull @.str.18) #16
  br label %cleanup.thread91

if.end38.i.i:                                     ; preds = %if.else.i
  %35 = ptrtoint ptr %bi_idx to i32
  call void @__asan_loadN_noabort(i32 %35, i32 4)
  %36 = load i32, ptr %bi_idx, align 1
  %sub.i.i = sub i32 %34, %23
  %37 = ptrtoint ptr %bi_size to i32
  call void @__asan_storeN_noabort(i32 %37, i32 4)
  store i32 %sub.i.i, ptr %bi_size, align 1
  %38 = ptrtoint ptr %bi_bvec_done to i32
  call void @__asan_loadN_noabort(i32 %38, i32 4)
  %39 = load i32, ptr %bi_bvec_done, align 1
  %add.i.i = add i32 %39, %23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i.i)
  %tobool40.not3.i.i = icmp eq i32 %add.i.i, 0
  br i1 %tobool40.not3.i.i, label %cleanup.thread94, label %if.end38.i.i.land.rhs41.i.i_crit_edge

if.end38.i.i.land.rhs41.i.i_crit_edge:            ; preds = %if.end38.i.i
  br label %land.rhs41.i.i

cleanup.thread94:                                 ; preds = %if.end38.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %40 = ptrtoint ptr %bi_bvec_done to i32
  call void @__asan_storeN_noabort(i32 %40, i32 4)
  store i32 0, ptr %bi_bvec_done, align 1
  br label %do.cond51

land.rhs41.i.i:                                   ; preds = %while.body.i.i.land.rhs41.i.i_crit_edge, %if.end38.i.i.land.rhs41.i.i_crit_edge
  %bytes.addr.05.i.i = phi i32 [ %sub46.i.i, %while.body.i.i.land.rhs41.i.i_crit_edge ], [ %add.i.i, %if.end38.i.i.land.rhs41.i.i_crit_edge ]
  %idx.04.i.i = phi i32 [ %inc.i.i, %while.body.i.i.land.rhs41.i.i_crit_edge ], [ %36, %if.end38.i.i.land.rhs41.i.i_crit_edge ]
  %bv_len.i.i = getelementptr %struct.bio_vec, ptr %32, i32 %idx.04.i.i, i32 1
  %41 = ptrtoint ptr %bv_len.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %bv_len.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %bytes.addr.05.i.i, i32 %42)
  %cmp42.not.i.i = icmp ult i32 %bytes.addr.05.i.i, %42
  br i1 %cmp42.not.i.i, label %land.rhs41.i.i.cleanup_crit_edge, label %while.body.i.i

land.rhs41.i.i.cleanup_crit_edge:                 ; preds = %land.rhs41.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

while.body.i.i:                                   ; preds = %land.rhs41.i.i
  %sub46.i.i = sub i32 %bytes.addr.05.i.i, %42
  %inc.i.i = add i32 %idx.04.i.i, 1
  %tobool40.not.i.i = icmp eq i32 %sub46.i.i, 0
  br i1 %tobool40.not.i.i, label %while.body.i.i.cleanup_crit_edge, label %while.body.i.i.land.rhs41.i.i_crit_edge

while.body.i.i.land.rhs41.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.rhs41.i.i

while.body.i.i.cleanup_crit_edge:                 ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

cleanup.thread91:                                 ; preds = %if.then.i.i, %land.rhs.i.i.cleanup.thread91_crit_edge, %if.then.i
  %storemerge = phi i32 [ %sub.i, %if.then.i ], [ 0, %if.then.i.i ], [ 0, %land.rhs.i.i.cleanup.thread91_crit_edge ]
  %43 = ptrtoint ptr %bi_size to i32
  call void @__asan_storeN_noabort(i32 %43, i32 4)
  store i32 %storemerge, ptr %bi_size, align 1
  br label %do.cond51

cleanup:                                          ; preds = %while.body.i.i.cleanup_crit_edge, %land.rhs41.i.i.cleanup_crit_edge
  %idx.0.lcssa.i.i = phi i32 [ %idx.04.i.i, %land.rhs41.i.i.cleanup_crit_edge ], [ %inc.i.i, %while.body.i.i.cleanup_crit_edge ]
  %bytes.addr.0.lcssa.i.i = phi i32 [ %bytes.addr.05.i.i, %land.rhs41.i.i.cleanup_crit_edge ], [ 0, %while.body.i.i.cleanup_crit_edge ]
  %44 = ptrtoint ptr %bi_idx to i32
  call void @__asan_storeN_noabort(i32 %44, i32 4)
  store i32 %idx.0.lcssa.i.i, ptr %bi_idx, align 1
  %45 = ptrtoint ptr %bi_bvec_done to i32
  call void @__asan_storeN_noabort(i32 %45, i32 4)
  store i32 %bytes.addr.0.lcssa.i.i, ptr %bi_bvec_done, align 1
  br label %do.cond51

do.cond51:                                        ; preds = %cleanup, %cleanup.thread91, %cleanup.thread94
  %sub4793 = sub i32 %todo.0, %23
  %tobool52.not = icmp eq i32 %sub4793, 0
  br i1 %tobool52.not, label %do.cond51.cleanup54_crit_edge, label %do.cond51.do.body_crit_edge

do.cond51.do.body_crit_edge:                      ; preds = %do.cond51
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body

do.cond51.cleanup54_crit_edge:                    ; preds = %do.cond51
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup54

cleanup54:                                        ; preds = %do.cond51.cleanup54_crit_edge, %do.body.cleanup54_crit_edge
  %retval.2.ph = phi i32 [ %call38, %do.body.cleanup54_crit_edge ], [ 0, %do.cond51.cleanup54_crit_edge ]
  ret i32 %retval.2.ph
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dm_bio_from_per_bio_data(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @dm_verity_exit() #3 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @dm_unregister_target(ptr noundef nonnull @verity_target) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_unregister_target(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @dm_verity_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @dm_register_target(ptr noundef nonnull @verity_target) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.92, i32 noundef %call) #19
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_req_done(ptr noundef, i32 noundef) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_one(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @crypto_ahash_update(ptr noundef %req) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
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
  tail call void @crypto_stats_get(ptr noundef %3) #16
  %6 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tfm.i, align 16
  %update = getelementptr i8, ptr %7, i32 -124
  %8 = ptrtoint ptr %update to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %update, align 4
  %call3 = tail call i32 %9(ptr noundef %req) #16
  tail call void @crypto_stats_ahash_update(i32 noundef %5, i32 noundef %call3, ptr noundef %3) #16
  ret i32 %call3
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_table(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vmalloc_to_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_stats_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_stats_ahash_update(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_ahash_final(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dm_bufio_read(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dm_bufio_get_aux_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @verity_fec_decode(ptr noundef, ptr noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @verity_handle_err(ptr nocapture noundef %v, i32 noundef %type, i64 noundef %block) unnamed_addr #0 align 64 {
entry:
  %verity_env = alloca [42 x i8], align 1
  %envp = alloca [2 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 42, ptr nonnull %verity_env) #16
  %0 = call ptr @memset(ptr %verity_env, i32 255, i32 42)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %envp) #16
  %1 = getelementptr inbounds [2 x ptr], ptr %envp, i32 0, i32 1
  %2 = ptrtoint ptr %envp to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %verity_env, ptr %envp, align 4
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %1, align 4
  %ti = getelementptr inbounds %struct.dm_verity, ptr %v, i32 0, i32 2
  %4 = ptrtoint ptr %ti to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ti, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %call = call ptr @dm_table_get_md(ptr noundef %7) #16
  %hash_failed = getelementptr inbounds %struct.dm_verity, ptr %v, i32 0, i32 21
  %8 = ptrtoint ptr %hash_failed to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %hash_failed, align 8
  %corrupted_errs = getelementptr inbounds %struct.dm_verity, ptr %v, i32 0, i32 23
  %9 = ptrtoint ptr %corrupted_errs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %corrupted_errs, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 99, i32 %10)
  %cmp = icmp ugt i32 %10, 99
  br i1 %cmp, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.end:                                           ; preds = %entry
  %inc = add nuw nsw i32 %10, 1
  %11 = ptrtoint ptr %corrupted_errs to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %inc, ptr %corrupted_errs, align 8
  %12 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.97)
  switch i32 %type, label %do.body [
    i32 0, label %if.end.sw.epilog_crit_edge
    i32 1, label %sw.bb2
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

sw.bb2:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/dm-verity-target.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 238, 0\0A.popsection", ""() #16, !srcloc !236
  unreachable

sw.epilog:                                        ; preds = %sw.bb2, %if.end.sw.epilog_crit_edge
  %type_str.0 = phi ptr [ @.str.8, %sw.bb2 ], [ @.str.7, %if.end.sw.epilog_crit_edge ]
  %call6 = call i32 @___ratelimit(ptr noundef nonnull @verity_handle_err._rs, ptr noundef nonnull @__func__.verity_handle_err) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %sw.epilog.if.end13_crit_edge, label %do.end10

sw.epilog.if.end13_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end13

do.end10:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #18
  %13 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %v, align 8
  %name = getelementptr inbounds %struct.dm_dev, ptr %14, i32 0, i32 3
  %call12 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %name, ptr noundef nonnull %type_str.0, i64 noundef %block) #19
  br label %if.end13

if.end13:                                         ; preds = %do.end10, %sw.epilog.if.end13_crit_edge
  %15 = ptrtoint ptr %corrupted_errs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %corrupted_errs, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %16)
  %cmp15 = icmp eq i32 %16, 100
  br i1 %cmp15, label %do.end19, label %if.end13.if.end25_crit_edge

if.end13.if.end25_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end25

do.end19:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #18
  %17 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %v, align 8
  %name22 = getelementptr inbounds %struct.dm_dev, ptr %18, i32 0, i32 3
  %call24 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %name22) #19
  br label %if.end25

if.end25:                                         ; preds = %do.end19, %if.end13.if.end25_crit_edge
  %call27 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %verity_env, i32 noundef 42, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, i32 noundef %type, i64 noundef %block)
  %call28 = call ptr @dm_disk(ptr noundef %call) #16
  %part0 = getelementptr inbounds %struct.gendisk, ptr %call28, i32 0, i32 7
  %19 = ptrtoint ptr %part0 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %part0, align 4
  %bd_device = getelementptr inbounds %struct.block_device, ptr %20, i32 0, i32 10
  %call30 = call i32 @kobject_uevent_env(ptr noundef %bd_device, i32 noundef 2, ptr noundef nonnull %envp) #16
  br label %out

out:                                              ; preds = %if.end25, %entry.out_crit_edge
  %mode = getelementptr inbounds %struct.dm_verity, ptr %v, i32 0, i32 22
  %21 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %mode, align 4
  %23 = zext i32 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.98)
  switch i32 %22, label %out.if.end37_crit_edge [
    i32 1, label %out.cleanup_crit_edge
    i32 2, label %if.then36
  ]

out.cleanup_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

out.if.end37_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end37

if.then36:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #18
  call void @kernel_restart(ptr noundef nonnull @.str.16) #16
  %24 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %24)
  %.pr = load i32, ptr %mode, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.then36, %out.if.end37_crit_edge
  %25 = phi i32 [ %22, %out.if.end37_crit_edge ], [ %.pr, %if.then36 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %25)
  %cmp39 = icmp eq i32 %25, 3
  br i1 %cmp39, label %if.then40, label %if.end37.cleanup_crit_edge

if.end37.cleanup_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then40:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #18
  call void @__asan_handle_no_return()
  call void (ptr, ...) @panic(ptr noundef nonnull @.str.16) #22
  unreachable

cleanup:                                          ; preds = %if.end37.cleanup_crit_edge, %out.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %out.cleanup_crit_edge ], [ 1, %if.end37.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %envp) #16
  call void @llvm.lifetime.end.p0(i64 42, ptr nonnull %verity_env) #16
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_bufio_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dm_table_get_md(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_uevent_env(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dm_disk(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kernel_restart(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @verity_ctr(ptr noundef %ti, i32 noundef %argc, ptr noundef %argv) #0 align 64 {
entry:
  %verify_args = alloca %struct.dm_verity_sig_opts, align 8
  %as = alloca %struct.dm_arg_set, align 4
  %num = alloca i32, align 4
  %num_ll = alloca i64, align 8
  %dummy = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %verify_args) #16
  %0 = ptrtoint ptr %verify_args to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %verify_args, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %as) #16
  %1 = ptrtoint ptr %as to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %as, align 4, !annotation !235
  %2 = getelementptr inbounds %struct.dm_arg_set, ptr %as, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %2, align 4, !annotation !235
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %num) #16
  %4 = ptrtoint ptr %num to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %num, align 4, !annotation !235
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %num_ll) #16
  %5 = ptrtoint ptr %num_ll to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 -1, ptr %num_ll, align 8, !annotation !235
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %dummy) #16
  %6 = ptrtoint ptr %dummy to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %dummy, align 1, !annotation !235
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %7 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 624) #23
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %error = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 12
  %8 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @.str.20, ptr %error, align 8
  br label %cleanup340

if.end:                                           ; preds = %entry
  %private = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 11
  %9 = ptrtoint ptr %private to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call7.i.i, ptr %private, align 4
  %ti1 = getelementptr inbounds %struct.dm_verity, ptr %call7.i.i, i32 0, i32 2
  %10 = ptrtoint ptr %ti1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %ti, ptr %ti1, align 8
  %call2 = tail call i32 @verity_fec_ctr_alloc(ptr noundef nonnull %call7.i.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.bad_crit_edge

if.end.bad_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %bad

if.end5:                                          ; preds = %if.end
  %11 = ptrtoint ptr %ti to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ti, align 8
  %call6 = tail call i32 @dm_table_get_mode(ptr noundef %12) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call6)
  %tobool7.not = icmp ult i32 %call6, 2
  br i1 %tobool7.not, label %if.end10, label %if.then8

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #18
  %error9 = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 12
  %13 = ptrtoint ptr %error9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @.str.21, ptr %error9, align 8
  br label %bad

if.end10:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %argc)
  %cmp = icmp ult i32 %argc, 10
  br i1 %cmp, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #18
  %error12 = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 12
  %14 = ptrtoint ptr %error12 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @.str.22, ptr %error12, align 8
  br label %bad

if.end13:                                         ; preds = %if.end10
  %15 = ptrtoint ptr %argv to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %argv, align 4
  %call14 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %16, ptr noundef nonnull @.str.23, ptr noundef nonnull %num, ptr noundef nonnull %dummy)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call14)
  %cmp15.not = icmp eq i32 %call14, 1
  br i1 %cmp15.not, label %lor.lhs.false, label %if.end13.if.then17_crit_edge

if.end13.if.then17_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then17

lor.lhs.false:                                    ; preds = %if.end13
  %17 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %18)
  %cmp16 = icmp ugt i32 %18, 1
  br i1 %cmp16, label %lor.lhs.false.if.then17_crit_edge, label %if.end19

lor.lhs.false.if.then17_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then17

if.then17:                                        ; preds = %lor.lhs.false.if.then17_crit_edge, %if.end13.if.then17_crit_edge
  %error18 = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 12
  %19 = ptrtoint ptr %error18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @.str.24, ptr %error18, align 8
  br label %bad

if.end19:                                         ; preds = %lor.lhs.false
  %conv = trunc i32 %18 to i8
  %version = getelementptr inbounds %struct.dm_verity, ptr %call7.i.i, i32 0, i32 18
  %20 = ptrtoint ptr %version to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv, ptr %version, align 4
  %arrayidx20 = getelementptr ptr, ptr %argv, i32 1
  %21 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx20, align 4
  %call21 = call i32 @dm_get_device(ptr noundef %ti, ptr noundef %22, i32 noundef 1, ptr noundef nonnull %call7.i.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end25, label %if.then23

if.then23:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #18
  %error24 = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 12
  %23 = ptrtoint ptr %error24 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @.str.25, ptr %error24, align 8
  br label %bad

if.end25:                                         ; preds = %if.end19
  %arrayidx26 = getelementptr ptr, ptr %argv, i32 2
  %24 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx26, align 4
  %hash_dev = getelementptr inbounds %struct.dm_verity, ptr %call7.i.i, i32 0, i32 1
  %call27 = call i32 @dm_get_device(ptr noundef %ti, ptr noundef %25, i32 noundef 1, ptr noundef %hash_dev) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end31, label %if.then29

if.then29:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #18
  %error30 = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 12
  %26 = ptrtoint ptr %error30 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @.str.26, ptr %error30, align 8
  br label %bad

if.end31:                                         ; preds = %if.end25
  %arrayidx32 = getelementptr ptr, ptr %argv, i32 3
  %27 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx32, align 4
  %call33 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %28, ptr noundef nonnull @.str.23, ptr noundef nonnull %num, ptr noundef nonnull %dummy)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call33)
  %cmp34.not = icmp eq i32 %call33, 1
  br i1 %cmp34.not, label %lor.lhs.false36, label %if.end31.if.then49_crit_edge

if.end31.if.then49_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then49

lor.lhs.false36:                                  ; preds = %if.end31
  %29 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %num, align 4
  %31 = call i32 @llvm.ctpop.i32(i32 %30), !range !237
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %31)
  %32 = icmp eq i32 %31, 1
  br i1 %32, label %lor.lhs.false41, label %lor.lhs.false36.if.then49_crit_edge

lor.lhs.false36.if.then49_crit_edge:              ; preds = %lor.lhs.false36
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then49

lor.lhs.false41:                                  ; preds = %lor.lhs.false36
  %33 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %call7.i.i, align 8
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %34, align 4
  %bd_queue.i.i = getelementptr inbounds %struct.block_device, ptr %36, i32 0, i32 18
  %37 = ptrtoint ptr %bd_queue.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %bd_queue.i.i, align 4
  %tobool.not.i.i540 = icmp eq ptr %38, null
  br i1 %tobool.not.i.i540, label %lor.lhs.false41.bdev_logical_block_size.exit_crit_edge, label %land.lhs.true.i.i

lor.lhs.false41.bdev_logical_block_size.exit_crit_edge: ; preds = %lor.lhs.false41
  call void @__sanitizer_cov_trace_pc() #18
  br label %bdev_logical_block_size.exit

land.lhs.true.i.i:                                ; preds = %lor.lhs.false41
  call void @__sanitizer_cov_trace_pc() #18
  %logical_block_size.i.i = getelementptr inbounds %struct.request_queue, ptr %38, i32 0, i32 37, i32 9
  %39 = ptrtoint ptr %logical_block_size.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %logical_block_size.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool2.not.i.i = icmp eq i32 %40, 0
  %spec.select.i.i541 = select i1 %tobool2.not.i.i, i32 512, i32 %40
  br label %bdev_logical_block_size.exit

bdev_logical_block_size.exit:                     ; preds = %land.lhs.true.i.i, %lor.lhs.false41.bdev_logical_block_size.exit_crit_edge
  %retval1.0.i.i = phi i32 [ 512, %lor.lhs.false41.bdev_logical_block_size.exit_crit_edge ], [ %spec.select.i.i541, %land.lhs.true.i.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %retval1.0.i.i)
  %cmp44 = icmp ult i32 %30, %retval1.0.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %30)
  %cmp47 = icmp ugt i32 %30, 4096
  %or.cond565 = or i1 %cmp47, %cmp44
  br i1 %or.cond565, label %bdev_logical_block_size.exit.if.then49_crit_edge, label %if.end51

bdev_logical_block_size.exit.if.then49_crit_edge: ; preds = %bdev_logical_block_size.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then49

if.then49:                                        ; preds = %bdev_logical_block_size.exit.if.then49_crit_edge, %lor.lhs.false36.if.then49_crit_edge, %if.end31.if.then49_crit_edge
  %error50 = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 12
  %41 = ptrtoint ptr %error50 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @.str.27, ptr %error50, align 8
  br label %bad

if.end51:                                         ; preds = %bdev_logical_block_size.exit
  %42 = call i32 @llvm.cttz.i32(i32 %30, i1 false) #16, !range !237
  %conv53 = trunc i32 %42 to i8
  %data_dev_block_bits = getelementptr inbounds %struct.dm_verity, ptr %call7.i.i, i32 0, i32 14
  %43 = ptrtoint ptr %data_dev_block_bits to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %conv53, ptr %data_dev_block_bits, align 8
  %arrayidx54 = getelementptr ptr, ptr %argv, i32 4
  %44 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx54, align 4
  %call55 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %45, ptr noundef nonnull @.str.23, ptr noundef nonnull %num, ptr noundef nonnull %dummy)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call55)
  %cmp56.not = icmp eq i32 %call55, 1
  br i1 %cmp56.not, label %lor.lhs.false58, label %if.end51.if.then73_crit_edge

if.end51.if.then73_crit_edge:                     ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then73

lor.lhs.false58:                                  ; preds = %if.end51
  %46 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %num, align 4
  %48 = call i32 @llvm.ctpop.i32(i32 %47), !range !237
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %48)
  %49 = icmp eq i32 %48, 1
  br i1 %49, label %lor.lhs.false64, label %lor.lhs.false58.if.then73_crit_edge

lor.lhs.false58.if.then73_crit_edge:              ; preds = %lor.lhs.false58
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then73

lor.lhs.false64:                                  ; preds = %lor.lhs.false58
  %50 = ptrtoint ptr %hash_dev to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %hash_dev, align 4
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %51, align 4
  %bd_queue.i.i542 = getelementptr inbounds %struct.block_device, ptr %53, i32 0, i32 18
  %54 = ptrtoint ptr %bd_queue.i.i542 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %bd_queue.i.i542, align 4
  %tobool.not.i.i543 = icmp eq ptr %55, null
  br i1 %tobool.not.i.i543, label %lor.lhs.false64.bdev_logical_block_size.exit549_crit_edge, label %land.lhs.true.i.i547

lor.lhs.false64.bdev_logical_block_size.exit549_crit_edge: ; preds = %lor.lhs.false64
  call void @__sanitizer_cov_trace_pc() #18
  br label %bdev_logical_block_size.exit549

land.lhs.true.i.i547:                             ; preds = %lor.lhs.false64
  call void @__sanitizer_cov_trace_pc() #18
  %logical_block_size.i.i544 = getelementptr inbounds %struct.request_queue, ptr %55, i32 0, i32 37, i32 9
  %56 = ptrtoint ptr %logical_block_size.i.i544 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %logical_block_size.i.i544, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool2.not.i.i545 = icmp eq i32 %57, 0
  %spec.select.i.i546 = select i1 %tobool2.not.i.i545, i32 512, i32 %57
  br label %bdev_logical_block_size.exit549

bdev_logical_block_size.exit549:                  ; preds = %land.lhs.true.i.i547, %lor.lhs.false64.bdev_logical_block_size.exit549_crit_edge
  %retval1.0.i.i548 = phi i32 [ 512, %lor.lhs.false64.bdev_logical_block_size.exit549_crit_edge ], [ %spec.select.i.i546, %land.lhs.true.i.i547 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %retval1.0.i.i548)
  %cmp68 = icmp ult i32 %47, %retval1.0.i.i548
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp71 = icmp slt i32 %47, 0
  %or.cond566 = or i1 %cmp71, %cmp68
  br i1 %or.cond566, label %bdev_logical_block_size.exit549.if.then73_crit_edge, label %if.end75

bdev_logical_block_size.exit549.if.then73_crit_edge: ; preds = %bdev_logical_block_size.exit549
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then73

if.then73:                                        ; preds = %bdev_logical_block_size.exit549.if.then73_crit_edge, %lor.lhs.false58.if.then73_crit_edge, %if.end51.if.then73_crit_edge
  %error74 = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 12
  %58 = ptrtoint ptr %error74 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr @.str.28, ptr %error74, align 8
  br label %bad

if.end75:                                         ; preds = %bdev_logical_block_size.exit549
  %59 = call i32 @llvm.cttz.i32(i32 %47, i1 false) #16, !range !237
  %conv77 = trunc i32 %59 to i8
  %hash_dev_block_bits = getelementptr inbounds %struct.dm_verity, ptr %call7.i.i, i32 0, i32 15
  %60 = ptrtoint ptr %hash_dev_block_bits to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %conv77, ptr %hash_dev_block_bits, align 1
  %arrayidx78 = getelementptr ptr, ptr %argv, i32 5
  %61 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %arrayidx78, align 4
  %call79 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %62, ptr noundef nonnull @.str.29, ptr noundef nonnull %num_ll, ptr noundef nonnull %dummy)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call79)
  %cmp80.not = icmp eq i32 %call79, 1
  br i1 %cmp80.not, label %lor.lhs.false82, label %if.end75.if.then92_crit_edge

if.end75.if.then92_crit_edge:                     ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then92

lor.lhs.false82:                                  ; preds = %if.end75
  %63 = ptrtoint ptr %num_ll to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %num_ll, align 8
  %65 = ptrtoint ptr %data_dev_block_bits to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %data_dev_block_bits, align 8
  %conv84 = zext i8 %66 to i32
  %sub85 = add nsw i32 %conv84, -9
  %sh_prom = zext i32 %sub85 to i64
  %67 = lshr i64 -1, %sh_prom
  call void @__sanitizer_cov_trace_cmp8(i64 %64, i64 %67)
  %.not = icmp ugt i64 %64, %67
  br i1 %.not, label %lor.lhs.false82.if.then92_crit_edge, label %if.end94

lor.lhs.false82.if.then92_crit_edge:              ; preds = %lor.lhs.false82
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then92

if.then92:                                        ; preds = %lor.lhs.false82.if.then92_crit_edge, %if.end75.if.then92_crit_edge
  %error93 = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 12
  %68 = ptrtoint ptr %error93 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr @.str.30, ptr %error93, align 8
  br label %bad

if.end94:                                         ; preds = %lor.lhs.false82
  %data_blocks = getelementptr inbounds %struct.dm_verity, ptr %call7.i.i, i32 0, i32 12
  %69 = ptrtoint ptr %data_blocks to i32
  call void @__asan_store8_noabort(i32 %69)
  store i64 %64, ptr %data_blocks, align 8
  %len = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 3
  %70 = ptrtoint ptr %len to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %len, align 8
  %shl100 = shl i64 %64, %sh_prom
  call void @__sanitizer_cov_trace_cmp8(i64 %71, i64 %shl100)
  %cmp101 = icmp ugt i64 %71, %shl100
  br i1 %cmp101, label %if.then103, label %if.end105

if.then103:                                       ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #18
  %error104 = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 12
  %72 = ptrtoint ptr %error104 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr @.str.31, ptr %error104, align 8
  br label %bad

if.end105:                                        ; preds = %if.end94
  %arrayidx106 = getelementptr ptr, ptr %argv, i32 6
  %73 = ptrtoint ptr %arrayidx106 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %arrayidx106, align 4
  %call107 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %74, ptr noundef nonnull @.str.29, ptr noundef nonnull %num_ll, ptr noundef nonnull %dummy)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call107)
  %cmp108.not = icmp eq i32 %call107, 1
  br i1 %cmp108.not, label %lor.lhs.false110, label %if.end105.if.then123_crit_edge

if.end105.if.then123_crit_edge:                   ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then123

lor.lhs.false110:                                 ; preds = %if.end105
  %75 = ptrtoint ptr %num_ll to i32
  call void @__asan_load8_noabort(i32 %75)
  %76 = load i64, ptr %num_ll, align 8
  %77 = ptrtoint ptr %hash_dev_block_bits to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %hash_dev_block_bits, align 1
  %conv112 = zext i8 %78 to i32
  %sub113 = add nsw i32 %conv112, -9
  %sh_prom114 = zext i32 %sub113 to i64
  %79 = lshr i64 -1, %sh_prom114
  call void @__sanitizer_cov_trace_cmp8(i64 %76, i64 %79)
  %.not505 = icmp ugt i64 %76, %79
  br i1 %.not505, label %lor.lhs.false110.if.then123_crit_edge, label %if.end125

lor.lhs.false110.if.then123_crit_edge:            ; preds = %lor.lhs.false110
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then123

if.then123:                                       ; preds = %lor.lhs.false110.if.then123_crit_edge, %if.end105.if.then123_crit_edge
  %error124 = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 12
  %80 = ptrtoint ptr %error124 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr @.str.32, ptr %error124, align 8
  br label %bad

if.end125:                                        ; preds = %lor.lhs.false110
  %hash_start = getelementptr inbounds %struct.dm_verity, ptr %call7.i.i, i32 0, i32 11
  %81 = ptrtoint ptr %hash_start to i32
  call void @__asan_store8_noabort(i32 %81)
  store i64 %76, ptr %hash_start, align 8
  %arrayidx126 = getelementptr ptr, ptr %argv, i32 7
  %82 = ptrtoint ptr %arrayidx126 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %arrayidx126, align 4
  %call127 = call noalias ptr @kstrdup(ptr noundef %83, i32 noundef 3264) #16
  %alg_name = getelementptr inbounds %struct.dm_verity, ptr %call7.i.i, i32 0, i32 4
  %84 = ptrtoint ptr %alg_name to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %call127, ptr %alg_name, align 8
  %tobool129.not = icmp eq ptr %call127, null
  br i1 %tobool129.not, label %if.then130, label %if.end132

if.then130:                                       ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #18
  %error131 = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 12
  %85 = ptrtoint ptr %error131 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr @.str.33, ptr %error131, align 8
  br label %bad

if.end132:                                        ; preds = %if.end125
  %call134 = call ptr @crypto_alloc_ahash(ptr noundef nonnull %call127, i32 noundef 0, i32 noundef 0) #16
  %tfm = getelementptr inbounds %struct.dm_verity, ptr %call7.i.i, i32 0, i32 5
  %86 = ptrtoint ptr %tfm to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %call134, ptr %tfm, align 4
  %cmp.i550 = icmp ugt ptr %call134, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i550, label %if.then137, label %do.end

if.then137:                                       ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #18
  %error138 = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 12
  %87 = ptrtoint ptr %error138 to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr @.str.34, ptr %error138, align 8
  %88 = ptrtoint ptr %call134 to i32
  %89 = ptrtoint ptr %tfm to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr null, ptr %tfm, align 4
  br label %bad

do.end:                                           ; preds = %if.end132
  %90 = ptrtoint ptr %alg_name to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %alg_name, align 8
  %__crt_alg.i = getelementptr inbounds %struct.crypto_ahash, ptr %call134, i32 0, i32 10, i32 3
  %92 = ptrtoint ptr %__crt_alg.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %__crt_alg.i, align 4
  %cra_driver_name = getelementptr i8, ptr %93, i32 168
  %call146 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef %91, ptr noundef %cra_driver_name) #19
  %94 = ptrtoint ptr %tfm to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %tfm, align 4
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_ahash, ptr %95, i32 0, i32 10, i32 3
  %96 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %__crt_alg.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %97, i32 -128
  %98 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %add.ptr.i.i.i, align 128
  %digest_size = getelementptr inbounds %struct.dm_verity, ptr %call7.i.i, i32 0, i32 19
  %100 = ptrtoint ptr %digest_size to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %99, ptr %digest_size, align 8
  %101 = ptrtoint ptr %hash_dev_block_bits to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %hash_dev_block_bits, align 1
  %conv150 = zext i8 %102 to i32
  %shl151 = shl nuw i32 1, %conv150
  %mul = shl i32 %99, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %shl151, i32 %mul)
  %cmp153 = icmp ult i32 %shl151, %mul
  br i1 %cmp153, label %if.then155, label %if.end157

if.then155:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  %error156 = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 12
  %103 = ptrtoint ptr %error156 to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr @.str.37, ptr %error156, align 8
  br label %bad

if.end157:                                        ; preds = %do.end
  %reqsize.i = getelementptr inbounds %struct.crypto_ahash, ptr %95, i32 0, i32 8
  %104 = ptrtoint ptr %reqsize.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %reqsize.i, align 32
  %add = add i32 %105, 128
  %ahash_reqsize = getelementptr inbounds %struct.dm_verity, ptr %call7.i.i, i32 0, i32 20
  %106 = ptrtoint ptr %ahash_reqsize to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %add, ptr %ahash_reqsize, align 4
  %call9.i = call noalias align 128 ptr @__kmalloc(i32 noundef %99, i32 noundef 3264) #24
  %root_digest = getelementptr inbounds %struct.dm_verity, ptr %call7.i.i, i32 0, i32 6
  %107 = ptrtoint ptr %root_digest to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %call9.i, ptr %root_digest, align 8
  %tobool163.not = icmp eq ptr %call9.i, null
  br i1 %tobool163.not, label %if.then164, label %if.end166

if.then164:                                       ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #18
  %error165 = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 12
  %108 = ptrtoint ptr %error165 to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr @.str.38, ptr %error165, align 8
  br label %bad

if.end166:                                        ; preds = %if.end157
  %arrayidx167 = getelementptr ptr, ptr %argv, i32 8
  %109 = ptrtoint ptr %arrayidx167 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %arrayidx167, align 4
  %call168 = call i32 @strlen(ptr noundef %110) #21
  %111 = ptrtoint ptr %digest_size to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %digest_size, align 8
  %mul170 = shl i32 %112, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %call168, i32 %mul170)
  %cmp171.not = icmp eq i32 %call168, %mul170
  br i1 %cmp171.not, label %lor.lhs.false173, label %if.end166.if.then179_crit_edge

if.end166.if.then179_crit_edge:                   ; preds = %if.end166
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then179

lor.lhs.false173:                                 ; preds = %if.end166
  %call177 = call i32 @hex2bin(ptr noundef nonnull %call9.i, ptr noundef %110, i32 noundef %112) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call177)
  %tobool178.not = icmp eq i32 %call177, 0
  br i1 %tobool178.not, label %if.end181, label %lor.lhs.false173.if.then179_crit_edge

lor.lhs.false173.if.then179_crit_edge:            ; preds = %lor.lhs.false173
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then179

if.then179:                                       ; preds = %lor.lhs.false173.if.then179_crit_edge, %if.end166.if.then179_crit_edge
  %error180 = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 12
  %113 = ptrtoint ptr %error180 to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr @.str.39, ptr %error180, align 8
  br label %bad

if.end181:                                        ; preds = %lor.lhs.false173
  %114 = ptrtoint ptr %arrayidx167 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %arrayidx167, align 4
  %arrayidx183 = getelementptr ptr, ptr %argv, i32 9
  %116 = ptrtoint ptr %arrayidx183 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %arrayidx183, align 4
  %call184 = call i32 @strcmp(ptr noundef %117, ptr noundef nonnull dereferenceable(2) @.str.40) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call184)
  %tobool185.not = icmp eq i32 %call184, 0
  br i1 %tobool185.not, label %if.end181.if.end211_crit_edge, label %if.then186

if.end181.if.end211_crit_edge:                    ; preds = %if.end181
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end211

if.then186:                                       ; preds = %if.end181
  %call188 = call i32 @strlen(ptr noundef %117) #21
  %div507 = lshr i32 %call188, 1
  %salt_size = getelementptr inbounds %struct.dm_verity, ptr %call7.i.i, i32 0, i32 9
  %118 = ptrtoint ptr %salt_size to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %div507, ptr %salt_size, align 4
  %call9.i535 = call noalias align 128 ptr @__kmalloc(i32 noundef %div507, i32 noundef 3264) #24
  %salt = getelementptr inbounds %struct.dm_verity, ptr %call7.i.i, i32 0, i32 7
  %119 = ptrtoint ptr %salt to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr %call9.i535, ptr %salt, align 4
  %tobool192.not = icmp eq ptr %call9.i535, null
  br i1 %tobool192.not, label %if.then193, label %if.end195

if.then193:                                       ; preds = %if.then186
  call void @__sanitizer_cov_trace_pc() #18
  %error194 = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 12
  %120 = ptrtoint ptr %error194 to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr @.str.41, ptr %error194, align 8
  br label %bad

if.end195:                                        ; preds = %if.then186
  %121 = ptrtoint ptr %arrayidx183 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %arrayidx183, align 4
  %call197 = call i32 @strlen(ptr noundef %122) #21
  %123 = ptrtoint ptr %salt_size to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %salt_size, align 4
  %mul199 = shl i32 %124, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %call197, i32 %mul199)
  %cmp200.not = icmp eq i32 %call197, %mul199
  br i1 %cmp200.not, label %lor.lhs.false202, label %if.end195.if.then208_crit_edge

if.end195.if.then208_crit_edge:                   ; preds = %if.end195
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then208

lor.lhs.false202:                                 ; preds = %if.end195
  %call206 = call i32 @hex2bin(ptr noundef nonnull %call9.i535, ptr noundef %122, i32 noundef %124) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call206)
  %tobool207.not = icmp eq i32 %call206, 0
  br i1 %tobool207.not, label %lor.lhs.false202.if.end211_crit_edge, label %lor.lhs.false202.if.then208_crit_edge

lor.lhs.false202.if.then208_crit_edge:            ; preds = %lor.lhs.false202
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then208

lor.lhs.false202.if.end211_crit_edge:             ; preds = %lor.lhs.false202
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end211

if.then208:                                       ; preds = %lor.lhs.false202.if.then208_crit_edge, %if.end195.if.then208_crit_edge
  %error209 = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 12
  %125 = ptrtoint ptr %error209 to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr @.str.42, ptr %error209, align 8
  br label %bad

if.end211:                                        ; preds = %lor.lhs.false202.if.end211_crit_edge, %if.end181.if.end211_crit_edge
  %sub212 = add i32 %argc, -10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub212)
  %tobool213.not = icmp eq i32 %sub212, 0
  br i1 %tobool213.not, label %if.end211.if.end222_crit_edge, label %if.then214

if.end211.if.end222_crit_edge:                    ; preds = %if.end211
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end222

if.then214:                                       ; preds = %if.end211
  %add.ptr = getelementptr ptr, ptr %argv, i32 10
  %126 = ptrtoint ptr %as to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %sub212, ptr %as, align 4
  %127 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr %add.ptr, ptr %2, align 4
  %call217 = call fastcc i32 @verity_parse_opt_args(ptr noundef nonnull %as, ptr noundef nonnull %call7.i.i, ptr noundef nonnull %verify_args)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call217)
  %cmp218 = icmp slt i32 %call217, 0
  br i1 %cmp218, label %if.then214.bad_crit_edge, label %if.then214.if.end222_crit_edge

if.then214.if.end222_crit_edge:                   ; preds = %if.then214
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end222

if.then214.bad_crit_edge:                         ; preds = %if.then214
  call void @__sanitizer_cov_trace_pc() #18
  br label %bad

if.end222:                                        ; preds = %if.then214.if.end222_crit_edge, %if.end211.if.end222_crit_edge
  %call223 = call i32 @strlen(ptr noundef %115) #21
  %sig = getelementptr inbounds %struct.dm_verity_sig_opts, ptr %verify_args, i32 0, i32 1
  %128 = ptrtoint ptr %sig to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %sig, align 4
  %130 = ptrtoint ptr %verify_args to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %verify_args, align 8
  %call224 = call i32 @verity_verify_root_hash(ptr noundef %115, i32 noundef %call223, ptr noundef %129, i32 noundef %131) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call224)
  %cmp225 = icmp slt i32 %call224, 0
  br i1 %cmp225, label %if.then227, label %if.end229

if.then227:                                       ; preds = %if.end222
  call void @__sanitizer_cov_trace_pc() #18
  %error228 = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 12
  %132 = ptrtoint ptr %error228 to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr @.str.43, ptr %error228, align 8
  br label %bad

if.end229:                                        ; preds = %if.end222
  %133 = ptrtoint ptr %hash_dev_block_bits to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %hash_dev_block_bits, align 1
  %conv231 = zext i8 %134 to i32
  %shl232 = shl nuw i32 1, %conv231
  %135 = ptrtoint ptr %digest_size to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %digest_size, align 8
  %div234 = udiv i32 %shl232, %136
  %137 = call i32 @llvm.ctlz.i32(i32 %div234, i1 false) #16, !range !237
  %138 = trunc i32 %137 to i8
  %conv236 = sub nsw i8 31, %138
  %hash_per_block_bits = getelementptr inbounds %struct.dm_verity, ptr %call7.i.i, i32 0, i32 16
  %139 = ptrtoint ptr %hash_per_block_bits to i32
  call void @__asan_store1_noabort(i32 %139)
  store i8 %conv236, ptr %hash_per_block_bits, align 2
  %levels = getelementptr inbounds %struct.dm_verity, ptr %call7.i.i, i32 0, i32 17
  %140 = ptrtoint ptr %levels to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 0, ptr %levels, align 1
  %141 = ptrtoint ptr %data_blocks to i32
  call void @__asan_load8_noabort(i32 %141)
  %142 = load i64, ptr %data_blocks, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %142)
  %tobool238.not = icmp eq i64 %142, 0
  br i1 %tobool238.not, label %if.end229.if.end265_crit_edge, label %while.cond.preheader

if.end229.if.end265_crit_edge:                    ; preds = %if.end229
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end265

while.cond.preheader:                             ; preds = %if.end229
  %143 = ptrtoint ptr %levels to i32
  call void @__asan_load1_noabort(i32 %143)
  %levels.promoted = load i8, ptr %levels, align 1
  %144 = ptrtoint ptr %hash_per_block_bits to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %hash_per_block_bits, align 2
  %conv241570 = zext i8 %145 to i32
  %conv243571 = zext i8 %levels.promoted to i32
  %mul244572 = mul nuw nsw i32 %conv243571, %conv241570
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %mul244572)
  %cmp245573 = icmp ult i32 %mul244572, 64
  br i1 %cmp245573, label %while.cond.preheader.land.rhs_crit_edge, label %while.cond.preheader.if.end258_crit_edge

while.cond.preheader.if.end258_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end258

while.cond.preheader.land.rhs_crit_edge:          ; preds = %while.cond.preheader
  br label %land.rhs

land.rhs:                                         ; preds = %while.body.land.rhs_crit_edge, %while.cond.preheader.land.rhs_crit_edge
  %mul244575 = phi i32 [ %mul244, %while.body.land.rhs_crit_edge ], [ %mul244572, %while.cond.preheader.land.rhs_crit_edge ]
  %inc569574 = phi i8 [ %inc, %while.body.land.rhs_crit_edge ], [ %levels.promoted, %while.cond.preheader.land.rhs_crit_edge ]
  %146 = ptrtoint ptr %data_blocks to i32
  call void @__asan_load8_noabort(i32 %146)
  %147 = load i64, ptr %data_blocks, align 8
  %sub248 = add i64 %147, -1
  %sh_prom254 = zext i32 %mul244575 to i64
  %shr255 = lshr i64 %sub248, %sh_prom254
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shr255)
  %tobool256.not = icmp eq i64 %shr255, 0
  br i1 %tobool256.not, label %if.end258thread-pre-split, label %while.body

while.body:                                       ; preds = %land.rhs
  %inc = add i8 %inc569574, 1
  %148 = ptrtoint ptr %levels to i32
  call void @__asan_store1_noabort(i32 %148)
  store i8 %inc, ptr %levels, align 1
  %149 = ptrtoint ptr %hash_per_block_bits to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %hash_per_block_bits, align 2
  %conv241 = zext i8 %150 to i32
  %conv243 = zext i8 %inc to i32
  %mul244 = mul nuw nsw i32 %conv243, %conv241
  %cmp245 = icmp ult i32 %mul244, 64
  br i1 %cmp245, label %while.body.land.rhs_crit_edge, label %while.body.if.end258_crit_edge

while.body.if.end258_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end258

while.body.land.rhs_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.rhs

if.end258thread-pre-split:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #18
  %151 = ptrtoint ptr %levels to i32
  call void @__asan_load1_noabort(i32 %151)
  %.pr = load i8, ptr %levels, align 1
  br label %if.end258

if.end258:                                        ; preds = %if.end258thread-pre-split, %while.body.if.end258_crit_edge, %while.cond.preheader.if.end258_crit_edge
  %152 = phi i8 [ %.pr, %if.end258thread-pre-split ], [ %levels.promoted, %while.cond.preheader.if.end258_crit_edge ], [ %inc, %while.body.if.end258_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 63, i8 %152)
  %cmp261 = icmp ugt i8 %152, 63
  br i1 %cmp261, label %if.then263, label %if.end258.if.end265_crit_edge

if.end258.if.end265_crit_edge:                    ; preds = %if.end258
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end265

if.then263:                                       ; preds = %if.end258
  call void @__sanitizer_cov_trace_pc() #18
  %error264 = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 12
  %153 = ptrtoint ptr %error264 to i32
  call void @__asan_store4_noabort(i32 %153)
  store ptr @.str.44, ptr %error264, align 8
  br label %bad

if.end265:                                        ; preds = %if.end258.if.end265_crit_edge, %if.end229.if.end265_crit_edge
  %154 = phi i8 [ %152, %if.end258.if.end265_crit_edge ], [ 0, %if.end229.if.end265_crit_edge ]
  %conv260 = zext i8 %154 to i32
  %155 = ptrtoint ptr %hash_start to i32
  call void @__asan_load8_noabort(i32 %155)
  %156 = load i64, ptr %hash_start, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end265
  %i.0.in = phi i32 [ %conv260, %if.end265 ], [ %i.0, %for.body.for.cond_crit_edge ]
  %hash_position.0 = phi i64 [ %156, %if.end265 ], [ %add288, %for.body.for.cond_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0.in)
  %cmp270 = icmp sgt i32 %i.0.in, 0
  br i1 %cmp270, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %i.0 = add nsw i32 %i.0.in, -1
  %arrayidx272 = getelementptr %struct.dm_verity, ptr %call7.i.i, i32 0, i32 25, i32 %i.0
  %157 = ptrtoint ptr %arrayidx272 to i32
  call void @__asan_store8_noabort(i32 %157)
  store i64 %hash_position.0, ptr %arrayidx272, align 8
  %158 = ptrtoint ptr %data_blocks to i32
  call void @__asan_load8_noabort(i32 %158)
  %159 = load i64, ptr %data_blocks, align 8
  %160 = ptrtoint ptr %hash_per_block_bits to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %hash_per_block_bits, align 2
  %conv276 = zext i8 %161 to i32
  %mul277 = mul i32 %i.0.in, %conv276
  %sh_prom278 = zext i32 %mul277 to i64
  %shl279 = shl nuw i64 1, %sh_prom278
  %add280 = add i64 %159, -1
  %sub281 = add i64 %add280, %shl279
  %shr287 = lshr i64 %sub281, %sh_prom278
  %add288 = add i64 %shr287, %hash_position.0
  %cmp289 = icmp ult i64 %add288, %hash_position.0
  br i1 %cmp289, label %cleanup.thread, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond

cleanup.thread:                                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  %error292 = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 12
  %162 = ptrtoint ptr %error292 to i32
  call void @__asan_store4_noabort(i32 %162)
  store ptr @.str.45, ptr %error292, align 8
  br label %bad

for.end:                                          ; preds = %for.cond
  %hash_blocks = getelementptr inbounds %struct.dm_verity, ptr %call7.i.i, i32 0, i32 13
  %163 = ptrtoint ptr %hash_blocks to i32
  call void @__asan_store8_noabort(i32 %163)
  store i64 %hash_position.0, ptr %hash_blocks, align 8
  %164 = ptrtoint ptr %hash_dev to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %hash_dev, align 4
  %166 = ptrtoint ptr %165 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %165, align 4
  %168 = ptrtoint ptr %hash_dev_block_bits to i32
  call void @__asan_load1_noabort(i32 %168)
  %169 = load i8, ptr %hash_dev_block_bits, align 1
  %conv298 = zext i8 %169 to i32
  %shl299 = shl nuw i32 1, %conv298
  %call300 = call ptr @dm_bufio_client_create(ptr noundef %167, i32 noundef %shl299, i32 noundef 1, i32 noundef 4, ptr noundef nonnull @dm_bufio_alloc_callback, ptr noundef null) #16
  %bufio = getelementptr inbounds %struct.dm_verity, ptr %call7.i.i, i32 0, i32 3
  %170 = ptrtoint ptr %bufio to i32
  call void @__asan_store4_noabort(i32 %170)
  store ptr %call300, ptr %bufio, align 4
  %cmp.i551 = icmp ugt ptr %call300, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i551, label %if.then303, label %if.end308

if.then303:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  %error304 = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 12
  %171 = ptrtoint ptr %error304 to i32
  call void @__asan_store4_noabort(i32 %171)
  store ptr @.str.46, ptr %error304, align 8
  %172 = ptrtoint ptr %call300 to i32
  %173 = ptrtoint ptr %bufio to i32
  call void @__asan_store4_noabort(i32 %173)
  store ptr null, ptr %bufio, align 4
  br label %bad

if.end308:                                        ; preds = %for.end
  %call310 = call i64 @dm_bufio_get_device_size(ptr noundef %call300) #16
  %174 = ptrtoint ptr %hash_blocks to i32
  call void @__asan_load8_noabort(i32 %174)
  %175 = load i64, ptr %hash_blocks, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %call310, i64 %175)
  %cmp312 = icmp ult i64 %call310, %175
  br i1 %cmp312, label %if.then314, label %if.end316

if.then314:                                       ; preds = %if.end308
  call void @__sanitizer_cov_trace_pc() #18
  %error315 = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 12
  %176 = ptrtoint ptr %error315 to i32
  call void @__asan_store4_noabort(i32 %176)
  store ptr @.str.47, ptr %error315, align 8
  br label %bad

if.end316:                                        ; preds = %if.end308
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull @__num_online_cpus, i32 noundef 4) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__num_online_cpus to i32))
  %177 = load volatile i32, ptr @__num_online_cpus, align 4
  %call318 = call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.48, i32 noundef 42, i32 noundef %177) #16
  %verify_wq = getelementptr inbounds %struct.dm_verity, ptr %call7.i.i, i32 0, i32 24
  %178 = ptrtoint ptr %verify_wq to i32
  call void @__asan_store4_noabort(i32 %178)
  store ptr %call318, ptr %verify_wq, align 4
  %tobool320.not = icmp eq ptr %call318, null
  br i1 %tobool320.not, label %if.then321, label %if.end323

if.then321:                                       ; preds = %if.end316
  call void @__sanitizer_cov_trace_pc() #18
  %error322 = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 12
  %179 = ptrtoint ptr %error322 to i32
  call void @__asan_store4_noabort(i32 %179)
  store ptr @.str.49, ptr %error322, align 8
  br label %bad

if.end323:                                        ; preds = %if.end316
  %180 = ptrtoint ptr %ahash_reqsize to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %ahash_reqsize, align 4
  %add325 = add i32 %181, 88
  %182 = ptrtoint ptr %digest_size to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %digest_size, align 8
  %mul327 = shl i32 %183, 1
  %add328 = add i32 %add325, %mul327
  %per_io_data_size = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 10
  %184 = ptrtoint ptr %per_io_data_size to i32
  call void @__asan_store4_noabort(i32 %184)
  store i32 %add328, ptr %per_io_data_size, align 8
  %call329 = call i32 @verity_fec_ctr(ptr noundef nonnull %call7.i.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call329)
  %tobool330.not = icmp eq i32 %call329, 0
  br i1 %tobool330.not, label %if.end332, label %if.end323.bad_crit_edge

if.end323.bad_crit_edge:                          ; preds = %if.end323
  call void @__sanitizer_cov_trace_pc() #18
  br label %bad

if.end332:                                        ; preds = %if.end323
  call void @__sanitizer_cov_trace_pc() #18
  %185 = ptrtoint ptr %per_io_data_size to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %per_io_data_size, align 8
  %add336 = add i32 %186, 7
  %div337506 = and i32 %add336, -8
  store i32 %div337506, ptr %per_io_data_size, align 8
  call void @verity_verify_sig_opts_cleanup(ptr noundef nonnull %verify_args) #16
  br label %cleanup340

bad:                                              ; preds = %if.end323.bad_crit_edge, %if.then321, %if.then314, %if.then303, %cleanup.thread, %if.then263, %if.then227, %if.then214.bad_crit_edge, %if.then208, %if.then193, %if.then179, %if.then164, %if.then155, %if.then137, %if.then130, %if.then123, %if.then103, %if.then92, %if.then73, %if.then49, %if.then29, %if.then23, %if.then17, %if.then11, %if.then8, %if.end.bad_crit_edge
  %r.2 = phi i32 [ %call2, %if.end.bad_crit_edge ], [ -22, %if.then8 ], [ -22, %if.then11 ], [ -22, %if.then17 ], [ %call21, %if.then23 ], [ %call27, %if.then29 ], [ -22, %if.then49 ], [ -22, %if.then73 ], [ -22, %if.then92 ], [ -22, %if.then103 ], [ -22, %if.then123 ], [ %88, %if.then137 ], [ -22, %if.then155 ], [ -22, %if.then179 ], [ -22, %if.then208 ], [ %call217, %if.then214.bad_crit_edge ], [ %call224, %if.then227 ], [ -7, %if.then263 ], [ %172, %if.then303 ], [ -7, %if.then314 ], [ %call329, %if.end323.bad_crit_edge ], [ -12, %if.then321 ], [ -12, %if.then193 ], [ -12, %if.then164 ], [ -12, %if.then130 ], [ -7, %cleanup.thread ]
  call void @verity_verify_sig_opts_cleanup(ptr noundef nonnull %verify_args) #16
  call void @verity_dtr(ptr noundef %ti)
  br label %cleanup340

cleanup340:                                       ; preds = %bad, %if.end332, %if.then
  %retval.0 = phi i32 [ %r.2, %bad ], [ 0, %if.end332 ], [ -12, %if.then ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %dummy) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %num_ll) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %as) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %verify_args) #16
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @verity_dtr(ptr noundef %ti) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %verify_wq = getelementptr inbounds %struct.dm_verity, ptr %1, i32 0, i32 24
  %2 = ptrtoint ptr %verify_wq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %verify_wq, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @destroy_workqueue(ptr noundef nonnull %3) #16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %bufio = getelementptr inbounds %struct.dm_verity, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %bufio to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bufio, align 4
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %if.end.if.end5_crit_edge, label %if.then3

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @dm_bufio_client_destroy(ptr noundef nonnull %5) #16
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  %validated_blocks = getelementptr inbounds %struct.dm_verity, ptr %1, i32 0, i32 27
  %6 = ptrtoint ptr %validated_blocks to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %validated_blocks, align 4
  tail call void @kvfree(ptr noundef %7) #16
  %salt = getelementptr inbounds %struct.dm_verity, ptr %1, i32 0, i32 7
  %8 = ptrtoint ptr %salt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %salt, align 4
  tail call void @kfree(ptr noundef %9) #16
  %root_digest = getelementptr inbounds %struct.dm_verity, ptr %1, i32 0, i32 6
  %10 = ptrtoint ptr %root_digest to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %root_digest, align 8
  tail call void @kfree(ptr noundef %11) #16
  %zero_digest = getelementptr inbounds %struct.dm_verity, ptr %1, i32 0, i32 8
  %12 = ptrtoint ptr %zero_digest to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %zero_digest, align 8
  tail call void @kfree(ptr noundef %13) #16
  %tfm = getelementptr inbounds %struct.dm_verity, ptr %1, i32 0, i32 5
  %14 = ptrtoint ptr %tfm to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tfm, align 4
  %tobool6.not = icmp eq ptr %15, null
  br i1 %tobool6.not, label %if.end5.if.end9_crit_edge, label %if.then7

if.end5.if.end9_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end9

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #18
  %base.i.i = getelementptr inbounds %struct.crypto_ahash, ptr %15, i32 0, i32 10
  tail call void @crypto_destroy_tfm(ptr noundef nonnull %15, ptr noundef %base.i.i) #16
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.end5.if.end9_crit_edge
  %alg_name = getelementptr inbounds %struct.dm_verity, ptr %1, i32 0, i32 4
  %16 = ptrtoint ptr %alg_name to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %alg_name, align 8
  tail call void @kfree(ptr noundef %17) #16
  %hash_dev = getelementptr inbounds %struct.dm_verity, ptr %1, i32 0, i32 1
  %18 = ptrtoint ptr %hash_dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hash_dev, align 4
  %tobool10.not = icmp eq ptr %19, null
  br i1 %tobool10.not, label %if.end9.if.end13_crit_edge, label %if.then11

if.end9.if.end13_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end13

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @dm_put_device(ptr noundef %ti, ptr noundef nonnull %19) #16
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.end9.if.end13_crit_edge
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 8
  %tobool14.not = icmp eq ptr %21, null
  br i1 %tobool14.not, label %if.end13.if.end17_crit_edge, label %if.then15

if.end13.if.end17_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end17

if.then15:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @dm_put_device(ptr noundef %ti, ptr noundef nonnull %21) #16
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %if.end13.if.end17_crit_edge
  tail call void @verity_fec_dtr(ptr noundef %1) #16
  %signature_key_desc = getelementptr inbounds %struct.dm_verity, ptr %1, i32 0, i32 28
  %22 = ptrtoint ptr %signature_key_desc to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %signature_key_desc, align 8
  tail call void @kfree(ptr noundef %23) #16
  tail call void @kfree(ptr noundef %1) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @verity_map(ptr nocapture noundef readonly %ti, ptr noundef %bio) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %bi_flags.i.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 3
  %6 = ptrtoint ptr %bi_flags.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %bi_flags.i.i, align 4
  %conv1.i.i = and i16 %7, -2049
  store i16 %conv1.i.i, ptr %bi_flags.i.i, align 4
  %bi_bdev.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 1
  %8 = ptrtoint ptr %bi_bdev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bi_bdev.i, align 4
  %cmp.not.i = icmp eq ptr %9, %5
  br i1 %cmp.not.i, label %entry.bio_set_dev.exit_crit_edge, label %if.then.i

entry.bio_set_dev.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %bio_set_dev.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %conv1.i8.i = and i16 %7, -2177
  %10 = ptrtoint ptr %bi_flags.i.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv1.i8.i, ptr %bi_flags.i.i, align 4
  br label %bio_set_dev.exit

bio_set_dev.exit:                                 ; preds = %if.then.i, %entry.bio_set_dev.exit_crit_edge
  %11 = ptrtoint ptr %bi_bdev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %5, ptr %bi_bdev.i, align 4
  tail call void @bio_associate_blkg(ptr noundef %bio) #16
  %bi_iter = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 8
  %12 = ptrtoint ptr %bi_iter to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %bi_iter, align 8
  %data_start.i = getelementptr inbounds %struct.dm_verity, ptr %1, i32 0, i32 10
  %14 = ptrtoint ptr %data_start.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %data_start.i, align 8
  %ti.i = getelementptr inbounds %struct.dm_verity, ptr %1, i32 0, i32 2
  %16 = ptrtoint ptr %ti.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ti.i, align 8
  %begin.i = getelementptr inbounds %struct.dm_target, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %begin.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %begin.i, align 8
  %sub.i = add i64 %15, %13
  %add.i = sub i64 %sub.i, %19
  store i64 %add.i, ptr %bi_iter, align 8
  %conv = trunc i64 %add.i to i32
  %bi_size = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 8, i32 1
  %20 = ptrtoint ptr %bi_size to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %bi_size, align 8
  %shr = lshr i32 %21, 9
  %or = or i32 %shr, %conv
  %data_dev_block_bits = getelementptr inbounds %struct.dm_verity, ptr %1, i32 0, i32 14
  %22 = ptrtoint ptr %data_dev_block_bits to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %data_dev_block_bits, align 8
  %conv6 = zext i8 %23 to i32
  %sub = add nsw i32 %conv6, -9
  %notmask = shl nsw i32 -1, %sub
  %sub7 = xor i32 %notmask, -1
  %and = and i32 %or, %sub7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end12, label %if.then

if.then:                                          ; preds = %bio_set_dev.exit
  %call8 = tail call i32 @___ratelimit(ptr noundef nonnull @verity_map._rs, ptr noundef nonnull @__func__.verity_map) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.then.cleanup_crit_edge, label %do.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61) #19
  br label %cleanup

if.end12:                                         ; preds = %bio_set_dev.exit
  %conv18 = zext i32 %shr to i64
  %add = add i64 %add.i, %conv18
  %sh_prom = zext i32 %sub to i64
  %shr22 = lshr i64 %add, %sh_prom
  %data_blocks = getelementptr inbounds %struct.dm_verity, ptr %1, i32 0, i32 12
  %24 = ptrtoint ptr %data_blocks to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %data_blocks, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %shr22, i64 %25)
  %cmp = icmp ugt i64 %shr22, %25
  br i1 %cmp, label %if.then24, label %if.end34

if.then24:                                        ; preds = %if.end12
  %call25 = tail call i32 @___ratelimit(ptr noundef nonnull @verity_map._rs.62, ptr noundef nonnull @__func__.verity_map) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.then24.cleanup_crit_edge, label %do.end30

if.then24.cleanup_crit_edge:                      ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

do.end30:                                         ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #18
  %call32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64) #19
  br label %cleanup

if.end34:                                         ; preds = %if.end12
  %bi_opf = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 2
  %26 = ptrtoint ptr %bi_opf to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %bi_opf, align 8
  %and.i = and i32 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.end41, label %if.end34.cleanup_crit_edge

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end41:                                         ; preds = %if.end34
  %per_io_data_size = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 10
  %28 = ptrtoint ptr %per_io_data_size to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %per_io_data_size, align 8
  %call42 = tail call ptr @dm_per_bio_data(ptr noundef %bio, i32 noundef %29) #16
  %30 = ptrtoint ptr %call42 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %1, ptr %call42, align 8
  %bi_end_io = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 10
  %31 = ptrtoint ptr %bi_end_io to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %bi_end_io, align 8
  %orig_bi_end_io = getelementptr inbounds %struct.dm_verity_io, ptr %call42, i32 0, i32 1
  %33 = ptrtoint ptr %orig_bi_end_io to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %32, ptr %orig_bi_end_io, align 4
  %34 = ptrtoint ptr %bi_iter to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %bi_iter, align 8
  %36 = ptrtoint ptr %data_dev_block_bits to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %data_dev_block_bits, align 8
  %conv47 = zext i8 %37 to i32
  %sub48 = add nsw i32 %conv47, -9
  %sh_prom49 = zext i32 %sub48 to i64
  %shr50 = lshr i64 %35, %sh_prom49
  %block = getelementptr inbounds %struct.dm_verity_io, ptr %call42, i32 0, i32 2
  %38 = ptrtoint ptr %block to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 %shr50, ptr %block, align 8
  %39 = ptrtoint ptr %bi_size to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %bi_size, align 8
  %41 = load i8, ptr %data_dev_block_bits, align 8
  %conv54 = zext i8 %41 to i32
  %shr55 = lshr i32 %40, %conv54
  %n_blocks = getelementptr inbounds %struct.dm_verity_io, ptr %call42, i32 0, i32 3
  %42 = ptrtoint ptr %n_blocks to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %shr55, ptr %n_blocks, align 8
  store ptr @verity_end_io, ptr %bi_end_io, align 8
  %bi_private = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 11
  %43 = ptrtoint ptr %bi_private to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call42, ptr %bi_private, align 4
  %iter = getelementptr inbounds %struct.dm_verity_io, ptr %call42, i32 0, i32 4
  %44 = call ptr @memcpy(ptr %iter, ptr %bi_iter, i32 20)
  tail call void @verity_fec_init_io(ptr noundef %call42) #16
  %45 = ptrtoint ptr %block to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %block, align 8
  %47 = ptrtoint ptr %n_blocks to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %n_blocks, align 8
  %validated_blocks.i = getelementptr inbounds %struct.dm_verity, ptr %1, i32 0, i32 27
  %49 = ptrtoint ptr %validated_blocks.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %validated_blocks.i, align 4
  %tobool.not.i = icmp eq ptr %50, null
  br i1 %tobool.not.i, label %if.end41.if.end20.i_crit_edge, label %while.cond.preheader.i

if.end41.if.end20.i_crit_edge:                    ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end20.i

while.cond.preheader.i:                           ; preds = %if.end41
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool3.not66.i = icmp eq i32 %48, 0
  br i1 %tobool3.not66.i, label %while.cond.preheader.i.verity_submit_prefetch.exit_crit_edge, label %while.cond.preheader.i.land.rhs.i_crit_edge

while.cond.preheader.i.land.rhs.i_crit_edge:      ; preds = %while.cond.preheader.i
  br label %land.rhs.i

while.cond.preheader.i.verity_submit_prefetch.exit_crit_edge: ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %verity_submit_prefetch.exit

land.rhs.i:                                       ; preds = %while.body.i.land.rhs.i_crit_edge, %while.cond.preheader.i.land.rhs.i_crit_edge
  %block.068.i = phi i64 [ %inc.i, %while.body.i.land.rhs.i_crit_edge ], [ %46, %while.cond.preheader.i.land.rhs.i_crit_edge ]
  %n_blocks.067.i = phi i32 [ %dec.i, %while.body.i.land.rhs.i_crit_edge ], [ %48, %while.cond.preheader.i.land.rhs.i_crit_edge ]
  %conv.i = trunc i64 %block.068.i to i32
  %div3.i.i = lshr i32 %conv.i, 5
  %arrayidx.i.i = getelementptr i32, ptr %50, i32 %div3.i.i
  %51 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %arrayidx.i.i, align 4
  %and.i.i = and i32 %conv.i, 31
  %53 = shl nuw i32 1, %and.i.i
  %54 = and i32 %53, %52
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool5.not.i = icmp eq i32 %54, 0
  br i1 %tobool5.not.i, label %land.rhs8.i.preheader, label %while.body.i

land.rhs8.i.preheader:                            ; preds = %land.rhs.i
  %conv.i.le = trunc i64 %block.068.i to i32
  br label %land.rhs8.i

while.body.i:                                     ; preds = %land.rhs.i
  %inc.i = add i64 %block.068.i, 1
  %dec.i = add i32 %n_blocks.067.i, -1
  %tobool3.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool3.not.i, label %while.body.i.verity_submit_prefetch.exit_crit_edge, label %while.body.i.land.rhs.i_crit_edge

while.body.i.land.rhs.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.rhs.i

while.body.i.verity_submit_prefetch.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %verity_submit_prefetch.exit

land.rhs8.i:                                      ; preds = %while.body15.i.land.rhs8.i_crit_edge, %land.rhs8.i.preheader
  %n_blocks.173.i = phi i32 [ %55, %while.body15.i.land.rhs8.i_crit_edge ], [ %n_blocks.067.i, %land.rhs8.i.preheader ]
  %55 = add i32 %n_blocks.173.i, -1
  %conv10.i = add i32 %55, %conv.i.le
  %div3.i60.i = lshr i32 %conv10.i, 5
  %arrayidx.i61.i = getelementptr i32, ptr %50, i32 %div3.i60.i
  %56 = ptrtoint ptr %arrayidx.i61.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %arrayidx.i61.i, align 4
  %and.i62.i = and i32 %conv10.i, 31
  %58 = shl nuw i32 1, %and.i62.i
  %59 = and i32 %58, %57
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool13.not.i = icmp eq i32 %59, 0
  br i1 %tobool13.not.i, label %land.rhs8.i.if.end20.i_crit_edge, label %while.body15.i

land.rhs8.i.if.end20.i_crit_edge:                 ; preds = %land.rhs8.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end20.i

while.body15.i:                                   ; preds = %land.rhs8.i
  %tobool7.not.i = icmp eq i32 %55, 0
  br i1 %tobool7.not.i, label %while.body15.i.verity_submit_prefetch.exit_crit_edge, label %while.body15.i.land.rhs8.i_crit_edge

while.body15.i.land.rhs8.i_crit_edge:             ; preds = %while.body15.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.rhs8.i

while.body15.i.verity_submit_prefetch.exit_crit_edge: ; preds = %while.body15.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %verity_submit_prefetch.exit

if.end20.i:                                       ; preds = %land.rhs8.i.if.end20.i_crit_edge, %if.end41.if.end20.i_crit_edge
  %n_blocks.2.i = phi i32 [ %48, %if.end41.if.end20.i_crit_edge ], [ %n_blocks.173.i, %land.rhs8.i.if.end20.i_crit_edge ]
  %block.1.i = phi i64 [ %46, %if.end41.if.end20.i_crit_edge ], [ %block.068.i, %land.rhs8.i.if.end20.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %60 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %60, i32 noundef 601088, i32 noundef 64) #23
  %tobool22.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool22.not.i, label %if.end20.i.verity_submit_prefetch.exit_crit_edge, label %do.body.i

if.end20.i.verity_submit_prefetch.exit_crit_edge: ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %verity_submit_prefetch.exit

do.body.i:                                        ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @__init_work(ptr noundef nonnull %call7.i.i, i32 noundef 0) #16
  %61 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 -64, ptr %call7.i.i, align 8
  %lockdep_map.i = getelementptr inbounds %struct.work_struct, ptr %call7.i.i, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.69, ptr noundef nonnull @verity_submit_prefetch.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #16
  %entry28.i = getelementptr inbounds %struct.work_struct, ptr %call7.i.i, i32 0, i32 1
  %62 = ptrtoint ptr %entry28.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store volatile ptr %entry28.i, ptr %entry28.i, align 4
  %prev.i.i = getelementptr inbounds %struct.work_struct, ptr %call7.i.i, i32 0, i32 1, i32 1
  %63 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %entry28.i, ptr %prev.i.i, align 8
  %func.i = getelementptr inbounds %struct.work_struct, ptr %call7.i.i, i32 0, i32 2
  %64 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr @verity_prefetch_io, ptr %func.i, align 4
  %v30.i = getelementptr inbounds %struct.dm_verity_prefetch_work, ptr %call7.i.i, i32 0, i32 1
  %65 = ptrtoint ptr %v30.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %1, ptr %v30.i, align 4
  %block31.i = getelementptr inbounds %struct.dm_verity_prefetch_work, ptr %call7.i.i, i32 0, i32 2
  %66 = ptrtoint ptr %block31.i to i32
  call void @__asan_store8_noabort(i32 %66)
  store i64 %block.1.i, ptr %block31.i, align 8
  %n_blocks32.i = getelementptr inbounds %struct.dm_verity_prefetch_work, ptr %call7.i.i, i32 0, i32 3
  %67 = ptrtoint ptr %n_blocks32.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %n_blocks.2.i, ptr %n_blocks32.i, align 8
  %verify_wq.i = getelementptr inbounds %struct.dm_verity, ptr %1, i32 0, i32 24
  %68 = ptrtoint ptr %verify_wq.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %verify_wq.i, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %69, ptr noundef nonnull %call7.i.i) #16
  br label %verity_submit_prefetch.exit

verity_submit_prefetch.exit:                      ; preds = %do.body.i, %if.end20.i.verity_submit_prefetch.exit_crit_edge, %while.body15.i.verity_submit_prefetch.exit_crit_edge, %while.body.i.verity_submit_prefetch.exit_crit_edge, %while.cond.preheader.i.verity_submit_prefetch.exit_crit_edge
  tail call void @submit_bio_noacct(ptr noundef %bio) #16
  br label %cleanup

cleanup:                                          ; preds = %verity_submit_prefetch.exit, %if.end34.cleanup_crit_edge, %do.end30, %if.then24.cleanup_crit_edge, %do.end, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %verity_submit_prefetch.exit ], [ 4, %do.end ], [ 4, %if.then.cleanup_crit_edge ], [ 4, %do.end30 ], [ 4, %if.then24.cleanup_crit_edge ], [ 4, %if.end34.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @verity_status(ptr nocapture noundef readonly %ti, i32 noundef %type, i32 noundef %status_flags, ptr noundef %result, i32 noundef %maxlen) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %2 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.99)
  switch i32 %type, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb2
    i32 2, label %sw.bb201
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %maxlen)
  %cmp = icmp eq i32 %maxlen, 0
  br i1 %cmp, label %sw.bb.cleanup_crit_edge, label %cond.false

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

cond.false:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #18
  %hash_failed = getelementptr inbounds %struct.dm_verity, ptr %1, i32 0, i32 21
  %3 = ptrtoint ptr %hash_failed to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %hash_failed, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  %cond = select i1 %tobool.not, i32 86, i32 67
  %call = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %result, i32 noundef %maxlen, ptr noundef nonnull @.str.70, i32 noundef %cond) #16
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %maxlen)
  %cmp3 = icmp eq i32 %maxlen, 0
  br i1 %cmp3, label %sw.bb2.cond.end14_crit_edge, label %cond.false5

sw.bb2.cond.end14_crit_edge:                      ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end14

cond.false5:                                      ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #18
  %version = getelementptr inbounds %struct.dm_verity, ptr %1, i32 0, i32 18
  %5 = ptrtoint ptr %version to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %version, align 4
  %conv = zext i8 %6 to i32
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 8
  %name = getelementptr inbounds %struct.dm_dev, ptr %8, i32 0, i32 3
  %hash_dev = getelementptr inbounds %struct.dm_verity, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %hash_dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hash_dev, align 4
  %name8 = getelementptr inbounds %struct.dm_dev, ptr %10, i32 0, i32 3
  %data_dev_block_bits = getelementptr inbounds %struct.dm_verity, ptr %1, i32 0, i32 14
  %11 = ptrtoint ptr %data_dev_block_bits to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %data_dev_block_bits, align 8
  %conv10 = zext i8 %12 to i32
  %shl = shl nuw i32 1, %conv10
  %hash_dev_block_bits = getelementptr inbounds %struct.dm_verity, ptr %1, i32 0, i32 15
  %13 = ptrtoint ptr %hash_dev_block_bits to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %hash_dev_block_bits, align 1
  %conv11 = zext i8 %14 to i32
  %shl12 = shl nuw i32 1, %conv11
  %data_blocks = getelementptr inbounds %struct.dm_verity, ptr %1, i32 0, i32 12
  %15 = ptrtoint ptr %data_blocks to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %data_blocks, align 8
  %hash_start = getelementptr inbounds %struct.dm_verity, ptr %1, i32 0, i32 11
  %17 = ptrtoint ptr %hash_start to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %hash_start, align 8
  %alg_name = getelementptr inbounds %struct.dm_verity, ptr %1, i32 0, i32 4
  %19 = ptrtoint ptr %alg_name to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %alg_name, align 8
  %call13 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %result, i32 noundef %maxlen, ptr noundef nonnull @.str.71, i32 noundef %conv, ptr noundef %name, ptr noundef %name8, i32 noundef %shl, i32 noundef %shl12, i64 noundef %16, i64 noundef %18, ptr noundef %20) #16
  br label %cond.end14

cond.end14:                                       ; preds = %cond.false5, %sw.bb2.cond.end14_crit_edge
  %cond15 = phi i32 [ %call13, %cond.false5 ], [ 0, %sw.bb2.cond.end14_crit_edge ]
  %digest_size = getelementptr inbounds %struct.dm_verity, ptr %1, i32 0, i32 19
  %21 = ptrtoint ptr %digest_size to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %digest_size, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp17789.not = icmp eq i32 %22, 0
  br i1 %cmp17789.not, label %cond.end14.for.end_crit_edge, label %for.body.lr.ph

cond.end14.for.end_crit_edge:                     ; preds = %cond.end14
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body.lr.ph:                                   ; preds = %cond.end14
  %root_digest = getelementptr inbounds %struct.dm_verity, ptr %1, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %cond.end27.for.body_crit_edge, %for.body.lr.ph
  %x.0792 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %cond.end27.for.body_crit_edge ]
  %sz.0790 = phi i32 [ %cond15, %for.body.lr.ph ], [ %add29, %cond.end27.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %sz.0790, i32 %maxlen)
  %cmp19.not = icmp ult i32 %sz.0790, %maxlen
  br i1 %cmp19.not, label %cond.false22, label %for.body.cond.end27_crit_edge

for.body.cond.end27_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end27

cond.false22:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr23 = getelementptr i8, ptr %result, i32 %sz.0790
  %sub24 = sub i32 %maxlen, %sz.0790
  %23 = ptrtoint ptr %root_digest to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %root_digest, align 8
  %arrayidx = getelementptr i8, ptr %24, i32 %x.0792
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx, align 1
  %conv25 = zext i8 %26 to i32
  %call26 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr23, i32 noundef %sub24, ptr noundef nonnull @.str.72, i32 noundef %conv25) #16
  br label %cond.end27

cond.end27:                                       ; preds = %cond.false22, %for.body.cond.end27_crit_edge
  %cond28 = phi i32 [ %call26, %cond.false22 ], [ 0, %for.body.cond.end27_crit_edge ]
  %add29 = add i32 %cond28, %sz.0790
  %inc = add nuw i32 %x.0792, 1
  %27 = ptrtoint ptr %digest_size to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %digest_size, align 8
  %cmp17 = icmp ult i32 %inc, %28
  br i1 %cmp17, label %cond.end27.for.body_crit_edge, label %cond.end27.for.end_crit_edge

cond.end27.for.end_crit_edge:                     ; preds = %cond.end27
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

cond.end27.for.body_crit_edge:                    ; preds = %cond.end27
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.end:                                          ; preds = %cond.end27.for.end_crit_edge, %cond.end14.for.end_crit_edge
  %sz.0.lcssa = phi i32 [ %cond15, %cond.end14.for.end_crit_edge ], [ %add29, %cond.end27.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %sz.0.lcssa, i32 %maxlen)
  %cmp30.not = icmp ult i32 %sz.0.lcssa, %maxlen
  br i1 %cmp30.not, label %cond.false33, label %for.end.cond.end37_crit_edge

for.end.cond.end37_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end37

cond.false33:                                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr34 = getelementptr i8, ptr %result, i32 %sz.0.lcssa
  %sub35 = sub i32 %maxlen, %sz.0.lcssa
  %call36 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr34, i32 noundef %sub35, ptr noundef nonnull @.str.73) #16
  br label %cond.end37

cond.end37:                                       ; preds = %cond.false33, %for.end.cond.end37_crit_edge
  %cond38 = phi i32 [ %call36, %cond.false33 ], [ 0, %for.end.cond.end37_crit_edge ]
  %add39 = add i32 %cond38, %sz.0.lcssa
  %salt_size = getelementptr inbounds %struct.dm_verity, ptr %1, i32 0, i32 9
  %29 = ptrtoint ptr %salt_size to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %salt_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool40.not = icmp eq i32 %30, 0
  br i1 %tobool40.not, label %if.then, label %for.cond51.preheader

for.cond51.preheader:                             ; preds = %cond.end37
  %31 = ptrtoint ptr %salt_size to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %salt_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp53794.not = icmp eq i32 %32, 0
  br i1 %cmp53794.not, label %for.cond51.preheader.if.end_crit_edge, label %for.body55.lr.ph

for.cond51.preheader.if.end_crit_edge:            ; preds = %for.cond51.preheader
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

for.body55.lr.ph:                                 ; preds = %for.cond51.preheader
  %salt = getelementptr inbounds %struct.dm_verity, ptr %1, i32 0, i32 7
  br label %for.body55

if.then:                                          ; preds = %cond.end37
  call void @__sanitizer_cov_trace_cmp4(i32 %add39, i32 %maxlen)
  %cmp41.not = icmp ult i32 %add39, %maxlen
  br i1 %cmp41.not, label %cond.false44, label %if.then.cond.end48_crit_edge

if.then.cond.end48_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end48

cond.false44:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr45 = getelementptr i8, ptr %result, i32 %add39
  %sub46 = sub i32 %maxlen, %add39
  %call47 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr45, i32 noundef %sub46, ptr noundef nonnull @.str.40) #16
  br label %cond.end48

cond.end48:                                       ; preds = %cond.false44, %if.then.cond.end48_crit_edge
  %cond49 = phi i32 [ %call47, %cond.false44 ], [ 0, %if.then.cond.end48_crit_edge ]
  %add50 = add i32 %cond49, %add39
  br label %if.end

for.body55:                                       ; preds = %cond.end65.for.body55_crit_edge, %for.body55.lr.ph
  %x.1797 = phi i32 [ 0, %for.body55.lr.ph ], [ %inc69, %cond.end65.for.body55_crit_edge ]
  %sz.1795 = phi i32 [ %add39, %for.body55.lr.ph ], [ %add67, %cond.end65.for.body55_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %sz.1795, i32 %maxlen)
  %cmp56.not = icmp ult i32 %sz.1795, %maxlen
  br i1 %cmp56.not, label %cond.false59, label %for.body55.cond.end65_crit_edge

for.body55.cond.end65_crit_edge:                  ; preds = %for.body55
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end65

cond.false59:                                     ; preds = %for.body55
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr60 = getelementptr i8, ptr %result, i32 %sz.1795
  %sub61 = sub i32 %maxlen, %sz.1795
  %33 = ptrtoint ptr %salt to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %salt, align 4
  %arrayidx62 = getelementptr i8, ptr %34, i32 %x.1797
  %35 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx62, align 1
  %conv63 = zext i8 %36 to i32
  %call64 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr60, i32 noundef %sub61, ptr noundef nonnull @.str.72, i32 noundef %conv63) #16
  br label %cond.end65

cond.end65:                                       ; preds = %cond.false59, %for.body55.cond.end65_crit_edge
  %cond66 = phi i32 [ %call64, %cond.false59 ], [ 0, %for.body55.cond.end65_crit_edge ]
  %add67 = add i32 %cond66, %sz.1795
  %inc69 = add nuw i32 %x.1797, 1
  %37 = ptrtoint ptr %salt_size to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %salt_size, align 4
  %cmp53 = icmp ult i32 %inc69, %38
  br i1 %cmp53, label %cond.end65.for.body55_crit_edge, label %cond.end65.if.end_crit_edge

cond.end65.if.end_crit_edge:                      ; preds = %cond.end65
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

cond.end65.for.body55_crit_edge:                  ; preds = %cond.end65
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body55

if.end:                                           ; preds = %cond.end65.if.end_crit_edge, %cond.end48, %for.cond51.preheader.if.end_crit_edge
  %sz.2 = phi i32 [ %add50, %cond.end48 ], [ %add39, %for.cond51.preheader.if.end_crit_edge ], [ %add67, %cond.end65.if.end_crit_edge ]
  %mode = getelementptr inbounds %struct.dm_verity, ptr %1, i32 0, i32 22
  %39 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp71.not = icmp ne i32 %40, 0
  %spec.select = zext i1 %cmp71.not to i32
  %call76 = tail call zeroext i1 @verity_fec_is_enabled(ptr noundef %1) #16
  %add78 = or i32 %spec.select, 8
  %args.1 = select i1 %call76, i32 %add78, i32 %spec.select
  %zero_digest = getelementptr inbounds %struct.dm_verity, ptr %1, i32 0, i32 8
  %41 = ptrtoint ptr %zero_digest to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %zero_digest, align 8
  %tobool80.not = icmp ne ptr %42, null
  %inc82 = zext i1 %tobool80.not to i32
  %args.2 = add nuw nsw i32 %args.1, %inc82
  %validated_blocks = getelementptr inbounds %struct.dm_verity, ptr %1, i32 0, i32 27
  %43 = ptrtoint ptr %validated_blocks to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %validated_blocks, align 4
  %tobool84.not = icmp ne ptr %44, null
  %inc86 = zext i1 %tobool84.not to i32
  %args.3 = add nuw nsw i32 %args.2, %inc86
  %signature_key_desc = getelementptr inbounds %struct.dm_verity, ptr %1, i32 0, i32 28
  %45 = ptrtoint ptr %signature_key_desc to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %signature_key_desc, align 8
  %tobool88.not = icmp eq ptr %46, null
  %add90 = add nuw nsw i32 %args.3, 2
  %args.4 = select i1 %tobool88.not, i32 %args.3, i32 %add90
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %args.4)
  %tobool92.not = icmp eq i32 %args.4, 0
  br i1 %tobool92.not, label %if.end.cleanup_crit_edge, label %if.end94

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end94:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_cmp4(i32 %sz.2, i32 %maxlen)
  %cmp95.not = icmp ult i32 %sz.2, %maxlen
  br i1 %cmp95.not, label %cond.false98, label %if.end94.cond.end102_crit_edge

if.end94.cond.end102_crit_edge:                   ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end102

cond.false98:                                     ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr99 = getelementptr i8, ptr %result, i32 %sz.2
  %sub100 = sub i32 %maxlen, %sz.2
  %call101 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr99, i32 noundef %sub100, ptr noundef nonnull @.str.74, i32 noundef %args.4) #16
  br label %cond.end102

cond.end102:                                      ; preds = %cond.false98, %if.end94.cond.end102_crit_edge
  %cond103 = phi i32 [ %call101, %cond.false98 ], [ 0, %if.end94.cond.end102_crit_edge ]
  %add104 = add i32 %cond103, %sz.2
  %47 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp106.not = icmp eq i32 %48, 0
  br i1 %cmp106.not, label %cond.end102.if.end156_crit_edge, label %if.then108

cond.end102.if.end156_crit_edge:                  ; preds = %cond.end102
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end156

if.then108:                                       ; preds = %cond.end102
  call void @__sanitizer_cov_trace_cmp4(i32 %add104, i32 %maxlen)
  %cmp109.not = icmp ult i32 %add104, %maxlen
  br i1 %cmp109.not, label %cond.false112, label %if.then108.cond.end116_crit_edge

if.then108.cond.end116_crit_edge:                 ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end116

cond.false112:                                    ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr113 = getelementptr i8, ptr %result, i32 %add104
  %sub114 = sub i32 %maxlen, %add104
  %call115 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr113, i32 noundef %sub114, ptr noundef nonnull @.str.73) #16
  %49 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %49)
  %.pr = load i32, ptr %mode, align 4
  br label %cond.end116

cond.end116:                                      ; preds = %cond.false112, %if.then108.cond.end116_crit_edge
  %50 = phi i32 [ %48, %if.then108.cond.end116_crit_edge ], [ %.pr, %cond.false112 ]
  %cond117 = phi i32 [ 0, %if.then108.cond.end116_crit_edge ], [ %call115, %cond.false112 ]
  %add118 = add i32 %cond117, %add104
  %51 = zext i32 %50 to i64
  call void @__sanitizer_cov_trace_switch(i64 %51, ptr @__sancov_gen_cov_switch_values.100)
  switch i32 %50, label %do.body [
    i32 1, label %sw.bb120
    i32 2, label %sw.bb131
    i32 3, label %sw.bb142
  ]

sw.bb120:                                         ; preds = %cond.end116
  call void @__sanitizer_cov_trace_cmp4(i32 %add118, i32 %maxlen)
  %cmp121.not = icmp ult i32 %add118, %maxlen
  br i1 %cmp121.not, label %cond.false124, label %sw.bb120.cond.end128_crit_edge

sw.bb120.cond.end128_crit_edge:                   ; preds = %sw.bb120
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end128

cond.false124:                                    ; preds = %sw.bb120
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr125 = getelementptr i8, ptr %result, i32 %add118
  %sub126 = sub i32 %maxlen, %add118
  %call127 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr125, i32 noundef %sub126, ptr noundef nonnull @.str.56) #16
  br label %cond.end128

cond.end128:                                      ; preds = %cond.false124, %sw.bb120.cond.end128_crit_edge
  %cond129 = phi i32 [ %call127, %cond.false124 ], [ 0, %sw.bb120.cond.end128_crit_edge ]
  %add130 = add i32 %cond129, %add118
  br label %if.end156

sw.bb131:                                         ; preds = %cond.end116
  call void @__sanitizer_cov_trace_cmp4(i32 %add118, i32 %maxlen)
  %cmp132.not = icmp ult i32 %add118, %maxlen
  br i1 %cmp132.not, label %cond.false135, label %sw.bb131.cond.end139_crit_edge

sw.bb131.cond.end139_crit_edge:                   ; preds = %sw.bb131
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end139

cond.false135:                                    ; preds = %sw.bb131
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr136 = getelementptr i8, ptr %result, i32 %add118
  %sub137 = sub i32 %maxlen, %add118
  %call138 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr136, i32 noundef %sub137, ptr noundef nonnull @.str.57) #16
  br label %cond.end139

cond.end139:                                      ; preds = %cond.false135, %sw.bb131.cond.end139_crit_edge
  %cond140 = phi i32 [ %call138, %cond.false135 ], [ 0, %sw.bb131.cond.end139_crit_edge ]
  %add141 = add i32 %cond140, %add118
  br label %if.end156

sw.bb142:                                         ; preds = %cond.end116
  call void @__sanitizer_cov_trace_cmp4(i32 %add118, i32 %maxlen)
  %cmp143.not = icmp ult i32 %add118, %maxlen
  br i1 %cmp143.not, label %cond.false146, label %sw.bb142.cond.end150_crit_edge

sw.bb142.cond.end150_crit_edge:                   ; preds = %sw.bb142
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end150

cond.false146:                                    ; preds = %sw.bb142
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr147 = getelementptr i8, ptr %result, i32 %add118
  %sub148 = sub i32 %maxlen, %add118
  %call149 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr147, i32 noundef %sub148, ptr noundef nonnull @.str.58) #16
  br label %cond.end150

cond.end150:                                      ; preds = %cond.false146, %sw.bb142.cond.end150_crit_edge
  %cond151 = phi i32 [ %call149, %cond.false146 ], [ 0, %sw.bb142.cond.end150_crit_edge ]
  %add152 = add i32 %cond151, %add118
  br label %if.end156

do.body:                                          ; preds = %cond.end116
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/dm-verity-target.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 773, 0\0A.popsection", ""() #16, !srcloc !238
  unreachable

if.end156:                                        ; preds = %cond.end150, %cond.end139, %cond.end128, %cond.end102.if.end156_crit_edge
  %sz.3 = phi i32 [ %add152, %cond.end150 ], [ %add141, %cond.end139 ], [ %add130, %cond.end128 ], [ %add104, %cond.end102.if.end156_crit_edge ]
  %52 = ptrtoint ptr %zero_digest to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %zero_digest, align 8
  %tobool158.not = icmp eq ptr %53, null
  br i1 %tobool158.not, label %if.end156.if.end170_crit_edge, label %if.then159

if.end156.if.end170_crit_edge:                    ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end170

if.then159:                                       ; preds = %if.end156
  call void @__sanitizer_cov_trace_cmp4(i32 %sz.3, i32 %maxlen)
  %cmp160.not = icmp ult i32 %sz.3, %maxlen
  br i1 %cmp160.not, label %cond.false163, label %if.then159.cond.end167_crit_edge

if.then159.cond.end167_crit_edge:                 ; preds = %if.then159
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end167

cond.false163:                                    ; preds = %if.then159
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr164 = getelementptr i8, ptr %result, i32 %sz.3
  %sub165 = sub i32 %maxlen, %sz.3
  %call166 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr164, i32 noundef %sub165, ptr noundef nonnull @.str.75) #16
  br label %cond.end167

cond.end167:                                      ; preds = %cond.false163, %if.then159.cond.end167_crit_edge
  %cond168 = phi i32 [ %call166, %cond.false163 ], [ 0, %if.then159.cond.end167_crit_edge ]
  %add169 = add i32 %cond168, %sz.3
  br label %if.end170

if.end170:                                        ; preds = %cond.end167, %if.end156.if.end170_crit_edge
  %sz.4 = phi i32 [ %add169, %cond.end167 ], [ %sz.3, %if.end156.if.end170_crit_edge ]
  %54 = ptrtoint ptr %validated_blocks to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %validated_blocks, align 4
  %tobool172.not = icmp eq ptr %55, null
  br i1 %tobool172.not, label %if.end170.if.end184_crit_edge, label %if.then173

if.end170.if.end184_crit_edge:                    ; preds = %if.end170
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end184

if.then173:                                       ; preds = %if.end170
  call void @__sanitizer_cov_trace_cmp4(i32 %sz.4, i32 %maxlen)
  %cmp174.not = icmp ult i32 %sz.4, %maxlen
  br i1 %cmp174.not, label %cond.false177, label %if.then173.cond.end181_crit_edge

if.then173.cond.end181_crit_edge:                 ; preds = %if.then173
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end181

cond.false177:                                    ; preds = %if.then173
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr178 = getelementptr i8, ptr %result, i32 %sz.4
  %sub179 = sub i32 %maxlen, %sz.4
  %call180 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr178, i32 noundef %sub179, ptr noundef nonnull @.str.76) #16
  br label %cond.end181

cond.end181:                                      ; preds = %cond.false177, %if.then173.cond.end181_crit_edge
  %cond182 = phi i32 [ %call180, %cond.false177 ], [ 0, %if.then173.cond.end181_crit_edge ]
  %add183 = add i32 %cond182, %sz.4
  br label %if.end184

if.end184:                                        ; preds = %cond.end181, %if.end170.if.end184_crit_edge
  %sz.5 = phi i32 [ %add183, %cond.end181 ], [ %sz.4, %if.end170.if.end184_crit_edge ]
  %call185 = tail call i32 @verity_fec_status_table(ptr noundef %1, i32 noundef %sz.5, ptr noundef %result, i32 noundef %maxlen) #16
  %56 = ptrtoint ptr %signature_key_desc to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %signature_key_desc, align 8
  %tobool187.not = icmp ne ptr %57, null
  call void @__sanitizer_cov_trace_cmp4(i32 %call185, i32 %maxlen)
  %cmp189.not = icmp ult i32 %call185, %maxlen
  %or.cond = select i1 %tobool187.not, i1 %cmp189.not, i1 false
  br i1 %or.cond, label %cond.false192, label %if.end184.cleanup_crit_edge

if.end184.cleanup_crit_edge:                      ; preds = %if.end184
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

cond.false192:                                    ; preds = %if.end184
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr193 = getelementptr i8, ptr %result, i32 %call185
  %sub194 = sub i32 %maxlen, %call185
  %call196 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr193, i32 noundef %sub194, ptr noundef nonnull @.str.77, ptr noundef nonnull %57) #16
  br label %cleanup

sw.bb201:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %maxlen)
  %cmp202 = icmp eq i32 %maxlen, 0
  br i1 %cmp202, label %sw.bb201.cond.end220_crit_edge, label %cond.false205

sw.bb201.cond.end220_crit_edge:                   ; preds = %sw.bb201
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end220

cond.false205:                                    ; preds = %sw.bb201
  call void @__sanitizer_cov_trace_pc() #18
  %type208 = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 1
  %58 = ptrtoint ptr %type208 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %type208, align 4
  %name209 = getelementptr inbounds %struct.target_type, ptr %59, i32 0, i32 1
  %60 = ptrtoint ptr %name209 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %name209, align 8
  %version211 = getelementptr inbounds %struct.target_type, ptr %59, i32 0, i32 3
  %62 = ptrtoint ptr %version211 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %version211, align 8
  %arrayidx215 = getelementptr %struct.target_type, ptr %59, i32 0, i32 3, i32 1
  %64 = ptrtoint ptr %arrayidx215 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx215, align 4
  %arrayidx218 = getelementptr %struct.target_type, ptr %59, i32 0, i32 3, i32 2
  %66 = ptrtoint ptr %arrayidx218 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx218, align 8
  %call219 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %result, i32 noundef %maxlen, ptr noundef nonnull @.str.78, ptr noundef %61, i32 noundef %63, i32 noundef %65, i32 noundef %67) #16
  br label %cond.end220

cond.end220:                                      ; preds = %cond.false205, %sw.bb201.cond.end220_crit_edge
  %cond221 = phi i32 [ %call219, %cond.false205 ], [ 0, %sw.bb201.cond.end220_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %cond221, i32 %maxlen)
  %cmp223.not = icmp ult i32 %cond221, %maxlen
  br i1 %cmp223.not, label %cond.false226, label %cond.end220.cond.end233_crit_edge

cond.end220.cond.end233_crit_edge:                ; preds = %cond.end220
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end233

cond.false226:                                    ; preds = %cond.end220
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr227 = getelementptr i8, ptr %result, i32 %cond221
  %sub228 = sub i32 %maxlen, %cond221
  %hash_failed229 = getelementptr inbounds %struct.dm_verity, ptr %1, i32 0, i32 21
  %68 = ptrtoint ptr %hash_failed229 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %hash_failed229, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool230.not = icmp eq i32 %69, 0
  %cond231 = select i1 %tobool230.not, i32 86, i32 67
  %call232 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr227, i32 noundef %sub228, ptr noundef nonnull @.str.79, i32 noundef %cond231) #16
  br label %cond.end233

cond.end233:                                      ; preds = %cond.false226, %cond.end220.cond.end233_crit_edge
  %cond234 = phi i32 [ %call232, %cond.false226 ], [ 0, %cond.end220.cond.end233_crit_edge ]
  %add235 = add i32 %cond234, %cond221
  call void @__sanitizer_cov_trace_cmp4(i32 %add235, i32 %maxlen)
  %cmp236.not = icmp ult i32 %add235, %maxlen
  br i1 %cmp236.not, label %cond.false239, label %cond.end233.cond.end245_crit_edge

cond.end233.cond.end245_crit_edge:                ; preds = %cond.end233
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end245

cond.false239:                                    ; preds = %cond.end233
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr240 = getelementptr i8, ptr %result, i32 %add235
  %sub241 = sub i32 %maxlen, %add235
  %version242 = getelementptr inbounds %struct.dm_verity, ptr %1, i32 0, i32 18
  %70 = ptrtoint ptr %version242 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %version242, align 4
  %conv243 = zext i8 %71 to i32
  %call244 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr240, i32 noundef %sub241, ptr noundef nonnull @.str.80, i32 noundef %conv243) #16
  br label %cond.end245

cond.end245:                                      ; preds = %cond.false239, %cond.end233.cond.end245_crit_edge
  %cond246 = phi i32 [ %call244, %cond.false239 ], [ 0, %cond.end233.cond.end245_crit_edge ]
  %add247 = add i32 %cond246, %add235
  call void @__sanitizer_cov_trace_cmp4(i32 %add247, i32 %maxlen)
  %cmp248.not = icmp ult i32 %add247, %maxlen
  br i1 %cmp248.not, label %cond.false251, label %cond.end245.cond.end258_crit_edge

cond.end245.cond.end258_crit_edge:                ; preds = %cond.end245
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end258

cond.false251:                                    ; preds = %cond.end245
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr252 = getelementptr i8, ptr %result, i32 %add247
  %sub253 = sub i32 %maxlen, %add247
  %72 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %1, align 8
  %name255 = getelementptr inbounds %struct.dm_dev, ptr %73, i32 0, i32 3
  %call257 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr252, i32 noundef %sub253, ptr noundef nonnull @.str.81, ptr noundef %name255) #16
  br label %cond.end258

cond.end258:                                      ; preds = %cond.false251, %cond.end245.cond.end258_crit_edge
  %cond259 = phi i32 [ %call257, %cond.false251 ], [ 0, %cond.end245.cond.end258_crit_edge ]
  %add260 = add i32 %cond259, %add247
  call void @__sanitizer_cov_trace_cmp4(i32 %add260, i32 %maxlen)
  %cmp261.not = icmp ult i32 %add260, %maxlen
  br i1 %cmp261.not, label %cond.false264, label %cond.end258.cond.end271_crit_edge

cond.end258.cond.end271_crit_edge:                ; preds = %cond.end258
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end271

cond.false264:                                    ; preds = %cond.end258
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr265 = getelementptr i8, ptr %result, i32 %add260
  %sub266 = sub i32 %maxlen, %add260
  %hash_dev267 = getelementptr inbounds %struct.dm_verity, ptr %1, i32 0, i32 1
  %74 = ptrtoint ptr %hash_dev267 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %hash_dev267, align 4
  %name268 = getelementptr inbounds %struct.dm_dev, ptr %75, i32 0, i32 3
  %call270 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr265, i32 noundef %sub266, ptr noundef nonnull @.str.82, ptr noundef %name268) #16
  br label %cond.end271

cond.end271:                                      ; preds = %cond.false264, %cond.end258.cond.end271_crit_edge
  %cond272 = phi i32 [ %call270, %cond.false264 ], [ 0, %cond.end258.cond.end271_crit_edge ]
  %add273 = add i32 %cond272, %add260
  call void @__sanitizer_cov_trace_cmp4(i32 %add273, i32 %maxlen)
  %cmp274.not = icmp ult i32 %add273, %maxlen
  br i1 %cmp274.not, label %cond.false277, label %cond.end271.cond.end282_crit_edge

cond.end271.cond.end282_crit_edge:                ; preds = %cond.end271
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end282

cond.false277:                                    ; preds = %cond.end271
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr278 = getelementptr i8, ptr %result, i32 %add273
  %sub279 = sub i32 %maxlen, %add273
  %alg_name280 = getelementptr inbounds %struct.dm_verity, ptr %1, i32 0, i32 4
  %76 = ptrtoint ptr %alg_name280 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %alg_name280, align 8
  %call281 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr278, i32 noundef %sub279, ptr noundef nonnull @.str.83, ptr noundef %77) #16
  br label %cond.end282

cond.end282:                                      ; preds = %cond.false277, %cond.end271.cond.end282_crit_edge
  %cond283 = phi i32 [ %call281, %cond.false277 ], [ 0, %cond.end271.cond.end282_crit_edge ]
  %add284 = add i32 %cond283, %add273
  call void @__sanitizer_cov_trace_cmp4(i32 %add284, i32 %maxlen)
  %cmp285.not = icmp ult i32 %add284, %maxlen
  br i1 %cmp285.not, label %cond.false288, label %cond.end282.cond.end292_crit_edge

cond.end282.cond.end292_crit_edge:                ; preds = %cond.end282
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end292

cond.false288:                                    ; preds = %cond.end282
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr289 = getelementptr i8, ptr %result, i32 %add284
  %sub290 = sub i32 %maxlen, %add284
  %call291 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr289, i32 noundef %sub290, ptr noundef nonnull @.str.84) #16
  br label %cond.end292

cond.end292:                                      ; preds = %cond.false288, %cond.end282.cond.end292_crit_edge
  %cond293 = phi i32 [ %call291, %cond.false288 ], [ 0, %cond.end282.cond.end292_crit_edge ]
  %add294 = add i32 %cond293, %add284
  %digest_size296 = getelementptr inbounds %struct.dm_verity, ptr %1, i32 0, i32 19
  %78 = ptrtoint ptr %digest_size296 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %digest_size296, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %cmp297780.not = icmp eq i32 %79, 0
  br i1 %cmp297780.not, label %cond.end292.for.end315_crit_edge, label %for.body299.lr.ph

cond.end292.for.end315_crit_edge:                 ; preds = %cond.end292
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end315

for.body299.lr.ph:                                ; preds = %cond.end292
  %root_digest306 = getelementptr inbounds %struct.dm_verity, ptr %1, i32 0, i32 6
  br label %for.body299

for.body299:                                      ; preds = %cond.end310.for.body299_crit_edge, %for.body299.lr.ph
  %x.2783 = phi i32 [ 0, %for.body299.lr.ph ], [ %inc314, %cond.end310.for.body299_crit_edge ]
  %sz.6781 = phi i32 [ %add294, %for.body299.lr.ph ], [ %add312, %cond.end310.for.body299_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %sz.6781, i32 %maxlen)
  %cmp300.not = icmp ult i32 %sz.6781, %maxlen
  br i1 %cmp300.not, label %cond.false303, label %for.body299.cond.end310_crit_edge

for.body299.cond.end310_crit_edge:                ; preds = %for.body299
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end310

cond.false303:                                    ; preds = %for.body299
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr304 = getelementptr i8, ptr %result, i32 %sz.6781
  %sub305 = sub i32 %maxlen, %sz.6781
  %80 = ptrtoint ptr %root_digest306 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %root_digest306, align 8
  %arrayidx307 = getelementptr i8, ptr %81, i32 %x.2783
  %82 = ptrtoint ptr %arrayidx307 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %arrayidx307, align 1
  %conv308 = zext i8 %83 to i32
  %call309 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr304, i32 noundef %sub305, ptr noundef nonnull @.str.72, i32 noundef %conv308) #16
  br label %cond.end310

cond.end310:                                      ; preds = %cond.false303, %for.body299.cond.end310_crit_edge
  %cond311 = phi i32 [ %call309, %cond.false303 ], [ 0, %for.body299.cond.end310_crit_edge ]
  %add312 = add i32 %cond311, %sz.6781
  %inc314 = add nuw i32 %x.2783, 1
  %84 = ptrtoint ptr %digest_size296 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %digest_size296, align 8
  %cmp297 = icmp ult i32 %inc314, %85
  br i1 %cmp297, label %cond.end310.for.body299_crit_edge, label %cond.end310.for.end315_crit_edge

cond.end310.for.end315_crit_edge:                 ; preds = %cond.end310
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end315

cond.end310.for.body299_crit_edge:                ; preds = %cond.end310
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body299

for.end315:                                       ; preds = %cond.end310.for.end315_crit_edge, %cond.end292.for.end315_crit_edge
  %sz.6.lcssa = phi i32 [ %add294, %cond.end292.for.end315_crit_edge ], [ %add312, %cond.end310.for.end315_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %sz.6.lcssa, i32 %maxlen)
  %cmp316.not = icmp ult i32 %sz.6.lcssa, %maxlen
  br i1 %cmp316.not, label %cond.false319, label %for.end315.cond.end323_crit_edge

for.end315.cond.end323_crit_edge:                 ; preds = %for.end315
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end323

cond.false319:                                    ; preds = %for.end315
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr320 = getelementptr i8, ptr %result, i32 %sz.6.lcssa
  %sub321 = sub i32 %maxlen, %sz.6.lcssa
  %call322 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr320, i32 noundef %sub321, ptr noundef nonnull @.str.85) #16
  br label %cond.end323

cond.end323:                                      ; preds = %cond.false319, %for.end315.cond.end323_crit_edge
  %cond324 = phi i32 [ %call322, %cond.false319 ], [ 0, %for.end315.cond.end323_crit_edge ]
  %add325 = add i32 %cond324, %sz.6.lcssa
  %salt_size326 = getelementptr inbounds %struct.dm_verity, ptr %1, i32 0, i32 9
  %86 = ptrtoint ptr %salt_size326 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %salt_size326, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %tobool327.not = icmp eq i32 %87, 0
  br i1 %tobool327.not, label %if.then328, label %for.cond340.preheader

for.cond340.preheader:                            ; preds = %cond.end323
  %88 = ptrtoint ptr %salt_size326 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %salt_size326, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %cmp342784.not = icmp eq i32 %89, 0
  br i1 %cmp342784.not, label %for.cond340.preheader.if.end361_crit_edge, label %for.body344.lr.ph

for.cond340.preheader.if.end361_crit_edge:        ; preds = %for.cond340.preheader
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end361

for.body344.lr.ph:                                ; preds = %for.cond340.preheader
  %salt351 = getelementptr inbounds %struct.dm_verity, ptr %1, i32 0, i32 7
  br label %for.body344

if.then328:                                       ; preds = %cond.end323
  call void @__sanitizer_cov_trace_cmp4(i32 %add325, i32 %maxlen)
  %cmp329.not = icmp ult i32 %add325, %maxlen
  br i1 %cmp329.not, label %cond.false332, label %if.then328.cond.end336_crit_edge

if.then328.cond.end336_crit_edge:                 ; preds = %if.then328
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end336

cond.false332:                                    ; preds = %if.then328
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr333 = getelementptr i8, ptr %result, i32 %add325
  %sub334 = sub i32 %maxlen, %add325
  %call335 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr333, i32 noundef %sub334, ptr noundef nonnull @.str.40) #16
  br label %cond.end336

cond.end336:                                      ; preds = %cond.false332, %if.then328.cond.end336_crit_edge
  %cond337 = phi i32 [ %call335, %cond.false332 ], [ 0, %if.then328.cond.end336_crit_edge ]
  %add338 = add i32 %cond337, %add325
  br label %if.end361

for.body344:                                      ; preds = %cond.end355.for.body344_crit_edge, %for.body344.lr.ph
  %x.3787 = phi i32 [ 0, %for.body344.lr.ph ], [ %inc359, %cond.end355.for.body344_crit_edge ]
  %sz.7785 = phi i32 [ %add325, %for.body344.lr.ph ], [ %add357, %cond.end355.for.body344_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %sz.7785, i32 %maxlen)
  %cmp345.not = icmp ult i32 %sz.7785, %maxlen
  br i1 %cmp345.not, label %cond.false348, label %for.body344.cond.end355_crit_edge

for.body344.cond.end355_crit_edge:                ; preds = %for.body344
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end355

cond.false348:                                    ; preds = %for.body344
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr349 = getelementptr i8, ptr %result, i32 %sz.7785
  %sub350 = sub i32 %maxlen, %sz.7785
  %90 = ptrtoint ptr %salt351 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %salt351, align 4
  %arrayidx352 = getelementptr i8, ptr %91, i32 %x.3787
  %92 = ptrtoint ptr %arrayidx352 to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %arrayidx352, align 1
  %conv353 = zext i8 %93 to i32
  %call354 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr349, i32 noundef %sub350, ptr noundef nonnull @.str.72, i32 noundef %conv353) #16
  br label %cond.end355

cond.end355:                                      ; preds = %cond.false348, %for.body344.cond.end355_crit_edge
  %cond356 = phi i32 [ %call354, %cond.false348 ], [ 0, %for.body344.cond.end355_crit_edge ]
  %add357 = add i32 %cond356, %sz.7785
  %inc359 = add nuw i32 %x.3787, 1
  %94 = ptrtoint ptr %salt_size326 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %salt_size326, align 4
  %cmp342 = icmp ult i32 %inc359, %95
  br i1 %cmp342, label %cond.end355.for.body344_crit_edge, label %cond.end355.if.end361_crit_edge

cond.end355.if.end361_crit_edge:                  ; preds = %cond.end355
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end361

cond.end355.for.body344_crit_edge:                ; preds = %cond.end355
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body344

if.end361:                                        ; preds = %cond.end355.if.end361_crit_edge, %cond.end336, %for.cond340.preheader.if.end361_crit_edge
  %sz.8 = phi i32 [ %add338, %cond.end336 ], [ %add325, %for.cond340.preheader.if.end361_crit_edge ], [ %add357, %cond.end355.if.end361_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %sz.8, i32 %maxlen)
  %cmp362.not = icmp ult i32 %sz.8, %maxlen
  br i1 %cmp362.not, label %cond.false365, label %if.end361.cond.end372_crit_edge

if.end361.cond.end372_crit_edge:                  ; preds = %if.end361
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end372

cond.false365:                                    ; preds = %if.end361
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr366 = getelementptr i8, ptr %result, i32 %sz.8
  %sub367 = sub i32 %maxlen, %sz.8
  %zero_digest368 = getelementptr inbounds %struct.dm_verity, ptr %1, i32 0, i32 8
  %96 = ptrtoint ptr %zero_digest368 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %zero_digest368, align 8
  %tobool369.not = icmp eq ptr %97, null
  %cond370 = select i1 %tobool369.not, i32 110, i32 121
  %call371 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr366, i32 noundef %sub367, ptr noundef nonnull @.str.86, i32 noundef %cond370) #16
  br label %cond.end372

cond.end372:                                      ; preds = %cond.false365, %if.end361.cond.end372_crit_edge
  %cond373 = phi i32 [ %call371, %cond.false365 ], [ 0, %if.end361.cond.end372_crit_edge ]
  %add374 = add i32 %cond373, %sz.8
  call void @__sanitizer_cov_trace_cmp4(i32 %add374, i32 %maxlen)
  %cmp375.not = icmp ult i32 %add374, %maxlen
  br i1 %cmp375.not, label %cond.false378, label %cond.end372.cond.end385_crit_edge

cond.end372.cond.end385_crit_edge:                ; preds = %cond.end372
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end385

cond.false378:                                    ; preds = %cond.end372
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr379 = getelementptr i8, ptr %result, i32 %add374
  %sub380 = sub i32 %maxlen, %add374
  %validated_blocks381 = getelementptr inbounds %struct.dm_verity, ptr %1, i32 0, i32 27
  %98 = ptrtoint ptr %validated_blocks381 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %validated_blocks381, align 4
  %tobool382.not = icmp eq ptr %99, null
  %cond383 = select i1 %tobool382.not, i32 110, i32 121
  %call384 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr379, i32 noundef %sub380, ptr noundef nonnull @.str.87, i32 noundef %cond383) #16
  br label %cond.end385

cond.end385:                                      ; preds = %cond.false378, %cond.end372.cond.end385_crit_edge
  %cond386 = phi i32 [ %call384, %cond.false378 ], [ 0, %cond.end372.cond.end385_crit_edge ]
  %add387 = add i32 %cond386, %add374
  %signature_key_desc388 = getelementptr inbounds %struct.dm_verity, ptr %1, i32 0, i32 28
  %100 = ptrtoint ptr %signature_key_desc388 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %signature_key_desc388, align 8
  %tobool389.not = icmp eq ptr %101, null
  br i1 %tobool389.not, label %cond.end385.if.end402_crit_edge, label %if.then390

cond.end385.if.end402_crit_edge:                  ; preds = %cond.end385
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end402

if.then390:                                       ; preds = %cond.end385
  call void @__sanitizer_cov_trace_cmp4(i32 %add387, i32 %maxlen)
  %cmp391.not = icmp ult i32 %add387, %maxlen
  br i1 %cmp391.not, label %cond.false394, label %if.then390.cond.end399_crit_edge

if.then390.cond.end399_crit_edge:                 ; preds = %if.then390
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end399

cond.false394:                                    ; preds = %if.then390
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr395 = getelementptr i8, ptr %result, i32 %add387
  %sub396 = sub i32 %maxlen, %add387
  %call398 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr395, i32 noundef %sub396, ptr noundef nonnull @.str.88, ptr noundef nonnull %101) #16
  br label %cond.end399

cond.end399:                                      ; preds = %cond.false394, %if.then390.cond.end399_crit_edge
  %cond400 = phi i32 [ %call398, %cond.false394 ], [ 0, %if.then390.cond.end399_crit_edge ]
  %add401 = add i32 %cond400, %add387
  br label %if.end402

if.end402:                                        ; preds = %cond.end399, %cond.end385.if.end402_crit_edge
  %sz.9 = phi i32 [ %add401, %cond.end399 ], [ %add387, %cond.end385.if.end402_crit_edge ]
  %mode403 = getelementptr inbounds %struct.dm_verity, ptr %1, i32 0, i32 22
  %102 = ptrtoint ptr %mode403 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %mode403, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %103)
  %cmp404.not = icmp eq i32 %103, 0
  br i1 %cmp404.not, label %if.end402.if.end463_crit_edge, label %if.then406

if.end402.if.end463_crit_edge:                    ; preds = %if.end402
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end463

if.then406:                                       ; preds = %if.end402
  call void @__sanitizer_cov_trace_cmp4(i32 %sz.9, i32 %maxlen)
  %cmp407.not = icmp ult i32 %sz.9, %maxlen
  br i1 %cmp407.not, label %cond.false410, label %if.then406.cond.end414_crit_edge

if.then406.cond.end414_crit_edge:                 ; preds = %if.then406
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end414

cond.false410:                                    ; preds = %if.then406
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr411 = getelementptr i8, ptr %result, i32 %sz.9
  %sub412 = sub i32 %maxlen, %sz.9
  %call413 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr411, i32 noundef %sub412, ptr noundef nonnull @.str.89) #16
  %104 = ptrtoint ptr %mode403 to i32
  call void @__asan_load4_noabort(i32 %104)
  %.pr779 = load i32, ptr %mode403, align 4
  br label %cond.end414

cond.end414:                                      ; preds = %cond.false410, %if.then406.cond.end414_crit_edge
  %105 = phi i32 [ %103, %if.then406.cond.end414_crit_edge ], [ %.pr779, %cond.false410 ]
  %cond415 = phi i32 [ 0, %if.then406.cond.end414_crit_edge ], [ %call413, %cond.false410 ]
  %add416 = add i32 %cond415, %sz.9
  %106 = zext i32 %105 to i64
  call void @__sanitizer_cov_trace_switch(i64 %106, ptr @__sancov_gen_cov_switch_values.101)
  switch i32 %105, label %sw.default451 [
    i32 1, label %sw.bb418
    i32 2, label %sw.bb429
    i32 3, label %sw.bb440
  ]

sw.bb418:                                         ; preds = %cond.end414
  call void @__sanitizer_cov_trace_cmp4(i32 %add416, i32 %maxlen)
  %cmp419.not = icmp ult i32 %add416, %maxlen
  br i1 %cmp419.not, label %cond.false422, label %sw.bb418.cond.end426_crit_edge

sw.bb418.cond.end426_crit_edge:                   ; preds = %sw.bb418
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end426

cond.false422:                                    ; preds = %sw.bb418
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr423 = getelementptr i8, ptr %result, i32 %add416
  %sub424 = sub i32 %maxlen, %add416
  %call425 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr423, i32 noundef %sub424, ptr noundef nonnull @.str.56) #16
  br label %cond.end426

cond.end426:                                      ; preds = %cond.false422, %sw.bb418.cond.end426_crit_edge
  %cond427 = phi i32 [ %call425, %cond.false422 ], [ 0, %sw.bb418.cond.end426_crit_edge ]
  %add428 = add i32 %cond427, %add416
  br label %if.end463

sw.bb429:                                         ; preds = %cond.end414
  call void @__sanitizer_cov_trace_cmp4(i32 %add416, i32 %maxlen)
  %cmp430.not = icmp ult i32 %add416, %maxlen
  br i1 %cmp430.not, label %cond.false433, label %sw.bb429.cond.end437_crit_edge

sw.bb429.cond.end437_crit_edge:                   ; preds = %sw.bb429
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end437

cond.false433:                                    ; preds = %sw.bb429
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr434 = getelementptr i8, ptr %result, i32 %add416
  %sub435 = sub i32 %maxlen, %add416
  %call436 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr434, i32 noundef %sub435, ptr noundef nonnull @.str.57) #16
  br label %cond.end437

cond.end437:                                      ; preds = %cond.false433, %sw.bb429.cond.end437_crit_edge
  %cond438 = phi i32 [ %call436, %cond.false433 ], [ 0, %sw.bb429.cond.end437_crit_edge ]
  %add439 = add i32 %cond438, %add416
  br label %if.end463

sw.bb440:                                         ; preds = %cond.end414
  call void @__sanitizer_cov_trace_cmp4(i32 %add416, i32 %maxlen)
  %cmp441.not = icmp ult i32 %add416, %maxlen
  br i1 %cmp441.not, label %cond.false444, label %sw.bb440.cond.end448_crit_edge

sw.bb440.cond.end448_crit_edge:                   ; preds = %sw.bb440
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end448

cond.false444:                                    ; preds = %sw.bb440
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr445 = getelementptr i8, ptr %result, i32 %add416
  %sub446 = sub i32 %maxlen, %add416
  %call447 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr445, i32 noundef %sub446, ptr noundef nonnull @.str.58) #16
  br label %cond.end448

cond.end448:                                      ; preds = %cond.false444, %sw.bb440.cond.end448_crit_edge
  %cond449 = phi i32 [ %call447, %cond.false444 ], [ 0, %sw.bb440.cond.end448_crit_edge ]
  %add450 = add i32 %cond449, %add416
  br label %if.end463

sw.default451:                                    ; preds = %cond.end414
  call void @__sanitizer_cov_trace_cmp4(i32 %add416, i32 %maxlen)
  %cmp452.not = icmp ult i32 %add416, %maxlen
  br i1 %cmp452.not, label %cond.false455, label %sw.default451.cond.end459_crit_edge

sw.default451.cond.end459_crit_edge:              ; preds = %sw.default451
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end459

cond.false455:                                    ; preds = %sw.default451
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr456 = getelementptr i8, ptr %result, i32 %add416
  %sub457 = sub i32 %maxlen, %add416
  %call458 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr456, i32 noundef %sub457, ptr noundef nonnull @.str.90) #16
  br label %cond.end459

cond.end459:                                      ; preds = %cond.false455, %sw.default451.cond.end459_crit_edge
  %cond460 = phi i32 [ %call458, %cond.false455 ], [ 0, %sw.default451.cond.end459_crit_edge ]
  %add461 = add i32 %cond460, %add416
  br label %if.end463

if.end463:                                        ; preds = %cond.end459, %cond.end448, %cond.end437, %cond.end426, %if.end402.if.end463_crit_edge
  %sz.10 = phi i32 [ %add461, %cond.end459 ], [ %add450, %cond.end448 ], [ %add439, %cond.end437 ], [ %add428, %cond.end426 ], [ %sz.9, %if.end402.if.end463_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %sz.10, i32 %maxlen)
  %cmp464.not = icmp ult i32 %sz.10, %maxlen
  br i1 %cmp464.not, label %cond.false467, label %if.end463.cleanup_crit_edge

if.end463.cleanup_crit_edge:                      ; preds = %if.end463
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

cond.false467:                                    ; preds = %if.end463
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr468 = getelementptr i8, ptr %result, i32 %sz.10
  %sub469 = sub i32 %maxlen, %sz.10
  %call470 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr468, i32 noundef %sub469, ptr noundef nonnull @.str.91) #16
  br label %cleanup

cleanup:                                          ; preds = %cond.false467, %if.end463.cleanup_crit_edge, %cond.false192, %if.end184.cleanup_crit_edge, %if.end.cleanup_crit_edge, %cond.false, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @verity_prepare_ioctl(ptr nocapture noundef readonly %ti, ptr nocapture noundef writeonly %bdev) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %6 = ptrtoint ptr %bdev to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %bdev, align 4
  %data_start = getelementptr inbounds %struct.dm_verity, ptr %1, i32 0, i32 10
  %7 = ptrtoint ptr %data_start to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %data_start, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %8)
  %tobool.not = icmp eq i64 %8, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %len = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 3
  %9 = ptrtoint ptr %len to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %len, align 8
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 8
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %bd_nr_sectors.i = getelementptr inbounds %struct.block_device, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %bd_nr_sectors.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %bd_nr_sectors.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %10, i64 %16)
  %cmp.not = icmp ne i64 %10, %16
  %spec.select = zext i1 %cmp.not to i32
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %entry.cleanup_crit_edge ], [ %spec.select, %lor.lhs.false ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @verity_iterate_devices(ptr noundef %ti, ptr nocapture noundef readonly %fn, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %data_start = getelementptr inbounds %struct.dm_verity, ptr %1, i32 0, i32 10
  %4 = ptrtoint ptr %data_start to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %data_start, align 8
  %len = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 3
  %6 = ptrtoint ptr %len to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %len, align 8
  %call = tail call i32 %fn(ptr noundef %ti, ptr noundef %3, i64 noundef %5, i64 noundef %7, ptr noundef %data) #16
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @verity_io_hints(ptr nocapture noundef readonly %ti, ptr noundef %limits) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %logical_block_size = getelementptr inbounds %struct.queue_limits, ptr %limits, i32 0, i32 9
  %2 = ptrtoint ptr %logical_block_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %logical_block_size, align 4
  %data_dev_block_bits = getelementptr inbounds %struct.dm_verity, ptr %1, i32 0, i32 14
  %4 = ptrtoint ptr %data_dev_block_bits to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %data_dev_block_bits, align 8
  %conv = zext i8 %5 to i32
  %shl = shl nuw i32 1, %conv
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %shl)
  %cmp = icmp ult i32 %3, %shl
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %6 = ptrtoint ptr %logical_block_size to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %shl, ptr %logical_block_size, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %physical_block_size = getelementptr inbounds %struct.queue_limits, ptr %limits, i32 0, i32 8
  %7 = ptrtoint ptr %physical_block_size to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %physical_block_size, align 4
  %9 = ptrtoint ptr %data_dev_block_bits to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %data_dev_block_bits, align 8
  %conv7 = zext i8 %10 to i32
  %shl8 = shl nuw i32 1, %conv7
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %shl8)
  %cmp9 = icmp ult i32 %8, %shl8
  br i1 %cmp9, label %if.then11, label %if.end.if.end16_crit_edge

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end16

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %11 = ptrtoint ptr %physical_block_size to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %shl8, ptr %physical_block_size, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then11, %if.end.if.end16_crit_edge
  %12 = ptrtoint ptr %logical_block_size to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %logical_block_size, align 4
  tail call void @blk_limits_io_min(ptr noundef %limits, i32 noundef %13) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @verity_fec_ctr_alloc(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_table_get_mode(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_get_device(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_alloc_ahash(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hex2bin(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @verity_parse_opt_args(ptr noundef %as, ptr noundef %v, ptr noundef %verify_args) unnamed_addr #0 align 64 {
entry:
  %argc = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %argc) #16
  %0 = ptrtoint ptr %argc to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %argc, align 4, !annotation !235
  %ti1 = getelementptr inbounds %struct.dm_verity, ptr %v, i32 0, i32 2
  %1 = ptrtoint ptr %ti1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ti1, align 8
  %error = getelementptr inbounds %struct.dm_target, ptr %2, i32 0, i32 12
  %call = call i32 @dm_read_arg_group(ptr noundef nonnull @verity_parse_opt_args._args, ptr noundef %as, ptr noundef nonnull %argc, ptr noundef %error) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %argc to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %argc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool2.not = icmp eq i32 %4, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %do.body.preheader

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

do.body.preheader:                                ; preds = %if.end
  %data_blocks.i = getelementptr inbounds %struct.dm_verity, ptr %v, i32 0, i32 12
  %validated_blocks.i = getelementptr inbounds %struct.dm_verity, ptr %v, i32 0, i32 27
  %digest_size.i = getelementptr inbounds %struct.dm_verity, ptr %v, i32 0, i32 19
  %zero_digest63.i = getelementptr inbounds %struct.dm_verity, ptr %v, i32 0, i32 8
  %ahash_reqsize.i = getelementptr inbounds %struct.dm_verity, ptr %v, i32 0, i32 20
  %data_dev_block_bits.i = getelementptr inbounds %struct.dm_verity, ptr %v, i32 0, i32 14
  %mode.i91 = getelementptr inbounds %struct.dm_verity, ptr %v, i32 0, i32 22
  br label %do.body

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %do.body.preheader
  %call5 = call ptr @dm_shift_arg(ptr noundef %as) #16
  %5 = ptrtoint ptr %argc to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %argc, align 4
  %dec = add i32 %6, -1
  store i32 %dec, ptr %argc, align 4
  %call.i = call i32 @strcasecmp(ptr noundef %call5, ptr noundef nonnull @.str.56) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then7, label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %do.body
  %call1.i = call i32 @strcasecmp(ptr noundef %call5, ptr noundef nonnull @.str.57) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.then7.thread104, label %verity_is_verity_mode.exit

verity_is_verity_mode.exit:                       ; preds = %lor.lhs.false.i
  %call3.i = call i32 @strcasecmp(ptr noundef %call5, ptr noundef nonnull @.str.58) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %if.then7.thread, label %if.else

if.then7:                                         ; preds = %do.body
  %7 = ptrtoint ptr %mode.i91 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mode.i91, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i84 = icmp eq i32 %8, 0
  br i1 %tobool.not.i84, label %if.then7.return.sink.split.i_crit_edge, label %if.then7.if.then10_crit_edge

if.then7.if.then10_crit_edge:                     ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then10

if.then7.return.sink.split.i_crit_edge:           ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #18
  br label %return.sink.split.i

if.then7.thread104:                               ; preds = %lor.lhs.false.i
  %9 = ptrtoint ptr %mode.i91 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mode.i91, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i84106 = icmp eq i32 %10, 0
  br i1 %tobool.not.i84106, label %if.then7.thread104.if.else.i_crit_edge, label %if.then7.thread104.if.then10_crit_edge

if.then7.thread104.if.then10_crit_edge:           ; preds = %if.then7.thread104
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then10

if.then7.thread104.if.else.i_crit_edge:           ; preds = %if.then7.thread104
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else.i

if.then7.thread:                                  ; preds = %verity_is_verity_mode.exit
  %11 = ptrtoint ptr %mode.i91 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mode.i91, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.i8492 = icmp eq i32 %12, 0
  br i1 %tobool.not.i8492, label %if.then7.thread.if.else.i_crit_edge, label %if.then7.thread.if.then10_crit_edge

if.then7.thread.if.then10_crit_edge:              ; preds = %if.then7.thread
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then10

if.then7.thread.if.else.i_crit_edge:              ; preds = %if.then7.thread
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else.i

if.else.i:                                        ; preds = %if.then7.thread.if.else.i_crit_edge, %if.then7.thread104.if.else.i_crit_edge
  %call4.i = call i32 @strcasecmp(ptr noundef %call5, ptr noundef nonnull @.str.57) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.else.i.return.sink.split.i_crit_edge, label %if.else8.i

if.else.i.return.sink.split.i_crit_edge:          ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %return.sink.split.i

if.else8.i:                                       ; preds = %if.else.i
  %call9.i = call i32 @strcasecmp(ptr noundef %call5, ptr noundef nonnull @.str.58) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %if.else8.i.return.sink.split.i_crit_edge, label %if.else8.i.do.cond_crit_edge

if.else8.i.do.cond_crit_edge:                     ; preds = %if.else8.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.cond

if.else8.i.return.sink.split.i_crit_edge:         ; preds = %if.else8.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %return.sink.split.i

return.sink.split.i:                              ; preds = %if.else8.i.return.sink.split.i_crit_edge, %if.else.i.return.sink.split.i_crit_edge, %if.then7.return.sink.split.i_crit_edge
  %.sink.i = phi i32 [ 2, %if.else.i.return.sink.split.i_crit_edge ], [ 3, %if.else8.i.return.sink.split.i_crit_edge ], [ 1, %if.then7.return.sink.split.i_crit_edge ]
  %13 = ptrtoint ptr %mode.i91 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %.sink.i, ptr %mode.i91, align 4
  br label %do.cond

if.then10:                                        ; preds = %if.then7.thread.if.then10_crit_edge, %if.then7.thread104.if.then10_crit_edge, %if.then7.if.then10_crit_edge
  %14 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @.str.51, ptr %error, align 8
  br label %cleanup

if.else:                                          ; preds = %verity_is_verity_mode.exit
  %call13 = call i32 @strcasecmp(ptr noundef %call5, ptr noundef nonnull @.str.52)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end8.i.i, label %if.else21

if.end8.i.i:                                      ; preds = %if.else
  %15 = ptrtoint ptr %digest_size.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %digest_size.i, align 8
  %call9.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %16, i32 noundef 3264) #24
  %17 = ptrtoint ptr %zero_digest63.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call9.i.i, ptr %zero_digest63.i, align 8
  %tobool.not.i86 = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not.i86, label %if.end8.i.i.if.then18_crit_edge, label %if.end8.i56.i

if.end8.i.i.if.then18_crit_edge:                  ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then18

if.end8.i56.i:                                    ; preds = %if.end8.i.i
  %18 = ptrtoint ptr %ahash_reqsize.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ahash_reqsize.i, align 4
  %call9.i55.i = call noalias align 128 ptr @__kmalloc(i32 noundef %19, i32 noundef 3264) #24
  %tobool3.not.i = icmp eq ptr %call9.i55.i, null
  br i1 %tobool3.not.i, label %if.end8.i56.i.if.then18_crit_edge, label %if.end8.i.i.i

if.end8.i56.i.if.then18_crit_edge:                ; preds = %if.end8.i56.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then18

if.end8.i.i.i:                                    ; preds = %if.end8.i56.i
  %20 = ptrtoint ptr %data_dev_block_bits.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %data_dev_block_bits.i, align 8
  %conv.i = zext i8 %21 to i32
  %shl.i = shl nuw i32 1, %conv.i
  %call9.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %shl.i, i32 noundef 3520) #24
  %tobool7.not.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool7.not.i, label %if.end8.i.i.i.verity_alloc_zero_digest.exit_crit_edge, label %if.end9.i

if.end8.i.i.i.verity_alloc_zero_digest.exit_crit_edge: ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %verity_alloc_zero_digest.exit

if.end9.i:                                        ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %22 = ptrtoint ptr %data_dev_block_bits.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %data_dev_block_bits.i, align 8
  %conv11.i = zext i8 %23 to i32
  %shl12.i = shl nuw i32 1, %conv11.i
  %24 = ptrtoint ptr %zero_digest63.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %zero_digest63.i, align 8
  %call14.i = call i32 @verity_hash(ptr noundef %v, ptr noundef nonnull %call9.i55.i, ptr noundef nonnull %call9.i.i.i, i32 noundef %shl12.i, ptr noundef %25) #16
  br label %verity_alloc_zero_digest.exit

verity_alloc_zero_digest.exit:                    ; preds = %if.end9.i, %if.end8.i.i.i.verity_alloc_zero_digest.exit_crit_edge
  %r.0.i = phi i32 [ %call14.i, %if.end9.i ], [ -12, %if.end8.i.i.i.verity_alloc_zero_digest.exit_crit_edge ]
  call void @kfree(ptr noundef nonnull %call9.i55.i) #16
  call void @kfree(ptr noundef %call9.i.i.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %r.0.i)
  %tobool17.not = icmp eq i32 %r.0.i, 0
  br i1 %tobool17.not, label %verity_alloc_zero_digest.exit.do.cond_crit_edge, label %verity_alloc_zero_digest.exit.if.then18_crit_edge

verity_alloc_zero_digest.exit.if.then18_crit_edge: ; preds = %verity_alloc_zero_digest.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then18

verity_alloc_zero_digest.exit.do.cond_crit_edge:  ; preds = %verity_alloc_zero_digest.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.cond

if.then18:                                        ; preds = %verity_alloc_zero_digest.exit.if.then18_crit_edge, %if.end8.i56.i.if.then18_crit_edge, %if.end8.i.i.if.then18_crit_edge
  %retval.0.i88101 = phi i32 [ %r.0.i, %verity_alloc_zero_digest.exit.if.then18_crit_edge ], [ -12, %if.end8.i.i.if.then18_crit_edge ], [ -12, %if.end8.i56.i.if.then18_crit_edge ]
  %26 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @.str.53, ptr %error, align 8
  br label %cleanup

if.else21:                                        ; preds = %if.else
  %call22 = call i32 @strcasecmp(ptr noundef %call5, ptr noundef nonnull @.str.54)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.then24, label %if.else29

if.then24:                                        ; preds = %if.else21
  %27 = ptrtoint ptr %ti1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ti1, align 8
  %29 = ptrtoint ptr %data_blocks.i to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %data_blocks.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 2147483647, i64 %30)
  %cmp.i = icmp ugt i64 %30, 2147483647
  br i1 %cmp.i, label %if.then24.verity_alloc_most_once.exit_crit_edge, label %kvcalloc.exit.i

if.then24.verity_alloc_most_once.exit_crit_edge:  ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #18
  br label %verity_alloc_most_once.exit

kvcalloc.exit.i:                                  ; preds = %if.then24
  %sub.i = add nuw nsw i64 %30, 31
  %sh.diff.i = lshr i64 %sub.i, 3
  %tr.sh.diff.i = trunc i64 %sh.diff.i to i32
  %31 = and i32 %tr.sh.diff.i, -4
  %call.i.i.i.i = call noalias ptr @kvmalloc_node(i32 noundef %31, i32 noundef 3520, i32 noundef -1) #24
  %32 = ptrtoint ptr %validated_blocks.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call.i.i.i.i, ptr %validated_blocks.i, align 4
  %tobool.not.i89 = icmp eq ptr %call.i.i.i.i, null
  br i1 %tobool.not.i89, label %kvcalloc.exit.i.verity_alloc_most_once.exit_crit_edge, label %kvcalloc.exit.i.do.cond_crit_edge

kvcalloc.exit.i.do.cond_crit_edge:                ; preds = %kvcalloc.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.cond

kvcalloc.exit.i.verity_alloc_most_once.exit_crit_edge: ; preds = %kvcalloc.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %verity_alloc_most_once.exit

verity_alloc_most_once.exit:                      ; preds = %kvcalloc.exit.i.verity_alloc_most_once.exit_crit_edge, %if.then24.verity_alloc_most_once.exit_crit_edge
  %.str.60.sink.i = phi ptr [ @.str.59, %if.then24.verity_alloc_most_once.exit_crit_edge ], [ @.str.60, %kvcalloc.exit.i.verity_alloc_most_once.exit_crit_edge ]
  %retval.0.ph.i = phi i32 [ -7, %if.then24.verity_alloc_most_once.exit_crit_edge ], [ -12, %kvcalloc.exit.i.verity_alloc_most_once.exit_crit_edge ]
  %error5.i = getelementptr inbounds %struct.dm_target, ptr %28, i32 0, i32 12
  %33 = ptrtoint ptr %error5.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %.str.60.sink.i, ptr %error5.i, align 8
  br label %cleanup

if.else29:                                        ; preds = %if.else21
  %call30 = call zeroext i1 @verity_is_fec_opt_arg(ptr noundef %call5) #16
  br i1 %call30, label %if.then31, label %if.else36

if.then31:                                        ; preds = %if.else29
  %call32 = call i32 @verity_fec_parse_opt_args(ptr noundef %as, ptr noundef %v, ptr noundef nonnull %argc, ptr noundef %call5) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.then31.do.cond_crit_edge, label %if.then31.cleanup_crit_edge

if.then31.cleanup_crit_edge:                      ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then31.do.cond_crit_edge:                      ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.cond

if.else36:                                        ; preds = %if.else29
  %call37 = call zeroext i1 @verity_verify_is_sig_opt_arg(ptr noundef %call5) #16
  br i1 %call37, label %if.then38, label %if.end47

if.then38:                                        ; preds = %if.else36
  %call39 = call i32 @verity_verify_sig_parse_opt_args(ptr noundef %as, ptr noundef %v, ptr noundef %verify_args, ptr noundef nonnull %argc, ptr noundef %call5) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.then38.do.cond_crit_edge, label %if.then38.cleanup_crit_edge

if.then38.cleanup_crit_edge:                      ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then38.do.cond_crit_edge:                      ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.cond

if.end47:                                         ; preds = %if.else36
  call void @__sanitizer_cov_trace_pc() #18
  %34 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @.str.55, ptr %error, align 8
  br label %cleanup

do.cond:                                          ; preds = %if.then38.do.cond_crit_edge, %if.then31.do.cond_crit_edge, %kvcalloc.exit.i.do.cond_crit_edge, %verity_alloc_zero_digest.exit.do.cond_crit_edge, %return.sink.split.i, %if.else8.i.do.cond_crit_edge
  %35 = ptrtoint ptr %argc to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %argc, align 4
  %tobool49.not = icmp eq i32 %36, 0
  br i1 %tobool49.not, label %do.cond.cleanup_crit_edge, label %do.cond.do.body_crit_edge

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body

do.cond.cleanup_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

cleanup:                                          ; preds = %do.cond.cleanup_crit_edge, %if.end47, %if.then38.cleanup_crit_edge, %if.then31.cleanup_crit_edge, %verity_alloc_most_once.exit, %if.then18, %if.then10, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then10 ], [ -22, %if.end47 ], [ %retval.0.i88101, %if.then18 ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %retval.0.ph.i, %verity_alloc_most_once.exit ], [ 0, %do.cond.cleanup_crit_edge ], [ %call39, %if.then38.cleanup_crit_edge ], [ %call32, %if.then31.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %argc) #16
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @verity_verify_root_hash(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dm_bufio_client_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dm_bufio_alloc_callback(ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @dm_bufio_get_aux_data(ptr noundef %buf) #16
  %0 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %call, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @dm_bufio_get_device_size(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @verity_fec_ctr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @verity_verify_sig_opts_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #10

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_read_arg_group(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dm_shift_arg(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcasecmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @verity_is_fec_opt_arg(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @verity_fec_parse_opt_args(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @verity_verify_is_sig_opt_arg(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @verity_verify_sig_parse_opt_args(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_bufio_client_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_put_device(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @verity_fec_dtr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_destroy_tfm(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dm_per_bio_data(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @verity_end_io(ptr nocapture noundef readonly %bio) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %bi_private = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 11
  %0 = ptrtoint ptr %bi_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bi_private, align 4
  %bi_status = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 6
  %2 = ptrtoint ptr %bi_status to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bi_status, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.do.body_crit_edge, label %land.lhs.true

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body

land.lhs.true:                                    ; preds = %entry
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  %call = tail call zeroext i1 @verity_fec_is_enabled(ptr noundef %5) #16
  br i1 %call, label %lor.lhs.false, label %land.lhs.true.if.then_crit_edge

land.lhs.true.if.then_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then

lor.lhs.false:                                    ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_state to i32))
  %6 = load i32, ptr @system_state, align 4
  %.off.i = add i32 %6, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off.i)
  %switch.i = icmp ult i32 %.off.i, 3
  br i1 %switch.i, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false.do.body_crit_edge

lor.lhs.false.do.body_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %land.lhs.true.if.then_crit_edge
  %7 = ptrtoint ptr %bi_status to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %bi_status, align 2
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 8
  %ti.i = getelementptr inbounds %struct.dm_verity, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %ti.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ti.i, align 8
  %per_io_data_size.i = getelementptr inbounds %struct.dm_target, ptr %12, i32 0, i32 10
  %13 = ptrtoint ptr %per_io_data_size.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %per_io_data_size.i, align 8
  %call.i = tail call ptr @dm_bio_from_per_bio_data(ptr noundef %1, i32 noundef %14) #16
  %orig_bi_end_io.i = getelementptr inbounds %struct.dm_verity_io, ptr %1, i32 0, i32 1
  %15 = ptrtoint ptr %orig_bi_end_io.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %orig_bi_end_io.i, align 4
  %bi_end_io.i = getelementptr inbounds %struct.bio, ptr %call.i, i32 0, i32 10
  %17 = ptrtoint ptr %bi_end_io.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %16, ptr %bi_end_io.i, align 8
  %bi_status.i = getelementptr inbounds %struct.bio, ptr %call.i, i32 0, i32 6
  %18 = ptrtoint ptr %bi_status.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %8, ptr %bi_status.i, align 2
  tail call void @verity_fec_finish_io(ptr noundef %1) #16
  tail call void @bio_endio(ptr noundef %call.i) #16
  br label %cleanup

do.body:                                          ; preds = %lor.lhs.false.do.body_crit_edge, %entry.do.body_crit_edge
  %work = getelementptr inbounds %struct.dm_verity_io, ptr %1, i32 0, i32 5
  tail call void @__init_work(ptr noundef %work, i32 noundef 0) #16
  %19 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -64, ptr %work, align 8
  %lockdep_map = getelementptr inbounds %struct.dm_verity_io, ptr %1, i32 0, i32 5, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.66, ptr noundef nonnull @verity_end_io.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #16
  %entry7 = getelementptr inbounds %struct.dm_verity_io, ptr %1, i32 0, i32 5, i32 1
  %20 = ptrtoint ptr %entry7 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %entry7, ptr %entry7, align 4
  %prev.i = getelementptr inbounds %struct.dm_verity_io, ptr %1, i32 0, i32 5, i32 1, i32 1
  %21 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %entry7, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.dm_verity_io, ptr %1, i32 0, i32 5, i32 2
  %22 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @verity_work, ptr %func, align 4
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %1, align 8
  %verify_wq = getelementptr inbounds %struct.dm_verity, ptr %24, i32 0, i32 24
  %25 = ptrtoint ptr %verify_wq to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %verify_wq, align 4
  %call.i22 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %26, ptr noundef %work) #16
  br label %cleanup

cleanup:                                          ; preds = %do.body, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @verity_fec_init_io(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @submit_bio_noacct(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_associate_blkg(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @verity_fec_is_enabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @verity_work(ptr noundef %w) #0 align 64 {
entry:
  %sg.i.i = alloca %struct.scatterlist, align 4
  %is_zero.i = alloca i8, align 1
  %start.i = alloca %struct.bvec_iter, align 8
  %wait.i = alloca %struct.crypto_wait, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %w, i32 -40
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %is_zero.i) #16
  %0 = ptrtoint ptr %is_zero.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %is_zero.i, align 1, !annotation !235
  %1 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %add.ptr, align 8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %start.i) #16
  %3 = call ptr @memset(ptr %start.i, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %wait.i) #16
  %4 = call ptr @memset(ptr %wait.i, i32 255, i32 60)
  %ti.i = getelementptr inbounds %struct.dm_verity, ptr %2, i32 0, i32 2
  %5 = ptrtoint ptr %ti.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ti.i, align 8
  %per_io_data_size.i = getelementptr inbounds %struct.dm_target, ptr %6, i32 0, i32 10
  %7 = ptrtoint ptr %per_io_data_size.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %per_io_data_size.i, align 8
  %call.i = tail call ptr @dm_bio_from_per_bio_data(ptr noundef %add.ptr, i32 noundef %8) #16
  %n_blocks.i = getelementptr i8, ptr %w, i32 -24
  %9 = ptrtoint ptr %n_blocks.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %n_blocks.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp228.not.i = icmp eq i32 %10, 0
  br i1 %cmp228.not.i, label %entry.verity_verify_io.exit_crit_edge, label %for.body.lr.ph.i

entry.verity_verify_io.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %verity_verify_io.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %block.i = getelementptr i8, ptr %w, i32 -32
  %add.ptr.i.i = getelementptr i8, ptr %w, i32 48
  %validated_blocks.i = getelementptr inbounds %struct.dm_verity, ptr %2, i32 0, i32 27
  %iter.i = getelementptr i8, ptr %w, i32 -20
  %data_dev_block_bits.i.i = getelementptr inbounds %struct.dm_verity, ptr %2, i32 0, i32 14
  %bi_idx.i.i.i.i = getelementptr i8, ptr %w, i32 -8
  %bi_size.i.i.i.i = getelementptr i8, ptr %w, i32 -12
  %bi_bvec_done.i.i.i.i = getelementptr i8, ptr %w, i32 -4
  %ahash_reqsize.i.i = getelementptr inbounds %struct.dm_verity, ptr %2, i32 0, i32 20
  %digest_size.i.i = getelementptr inbounds %struct.dm_verity, ptr %2, i32 0, i32 19
  %11 = getelementptr inbounds %struct.scatterlist, ptr %sg.i.i, i32 0, i32 1
  %12 = getelementptr inbounds %struct.scatterlist, ptr %sg.i.i, i32 0, i32 2
  %src1.i.i.i = getelementptr i8, ptr %w, i32 76
  %nbytes2.i.i.i = getelementptr i8, ptr %w, i32 72
  %result3.i.i.i = getelementptr i8, ptr %w, i32 80
  %tfm.i.i.i.i = getelementptr i8, ptr %w, i32 64
  %err2.i.i.i = getelementptr inbounds %struct.crypto_wait, ptr %wait.i, i32 0, i32 1
  %salt_size.i.i = getelementptr inbounds %struct.dm_verity, ptr %2, i32 0, i32 9
  %version.i.i = getelementptr inbounds %struct.dm_verity, ptr %2, i32 0, i32 18
  %salt.i.i = getelementptr inbounds %struct.dm_verity, ptr %2, i32 0, i32 7
  %bi_status.i = getelementptr inbounds %struct.bio, ptr %call.i, i32 0, i32 6
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %b.0229.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %13 = ptrtoint ptr %block.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %block.i, align 8
  %conv.i = zext i32 %b.0229.i to i64
  %add.i = add i64 %14, %conv.i
  %15 = ptrtoint ptr %validated_blocks.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %validated_blocks.i, align 4
  %tobool.not.i = icmp eq ptr %16, null
  br i1 %tobool.not.i, label %for.body.i.if.end.i_crit_edge, label %land.lhs.true.i

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %conv3.i = trunc i64 %add.i to i32
  %div3.i.i = lshr i32 %conv3.i, 5
  %arrayidx.i.i = getelementptr i32, ptr %16, i32 %div3.i.i
  %17 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %arrayidx.i.i, align 4
  %and.i.i = and i32 %conv3.i, 31
  %19 = shl nuw i32 1, %and.i.i
  %20 = and i32 %18, %19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool6.not.i = icmp eq i32 %20, 0
  br i1 %tobool6.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %if.then.i, !prof !231

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i

if.then.i:                                        ; preds = %land.lhs.true.i
  %21 = ptrtoint ptr %ti.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ti.i, align 8
  %per_io_data_size.i.i = getelementptr inbounds %struct.dm_target, ptr %22, i32 0, i32 10
  %23 = ptrtoint ptr %per_io_data_size.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %per_io_data_size.i.i, align 8
  %call.i.i = call ptr @dm_bio_from_per_bio_data(ptr noundef %add.ptr, i32 noundef %24) #16
  %25 = ptrtoint ptr %data_dev_block_bits.i.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %data_dev_block_bits.i.i, align 8
  %conv.i.i = zext i8 %26 to i32
  %shl.i.i = shl nuw i32 1, %conv.i.i
  %shr.i.i.i = lshr i32 %shl.i.i, 9
  %conv.i.i.i = zext i32 %shr.i.i.i to i64
  %27 = ptrtoint ptr %iter.i to i32
  call void @__asan_loadN_noabort(i32 %27, i32 8)
  %28 = load i64, ptr %iter.i, align 1
  %add.i.i.i = add i64 %28, %conv.i.i.i
  store i64 %add.i.i.i, ptr %iter.i, align 1
  %bi_opf.i.i.i.i = getelementptr inbounds %struct.bio, ptr %call.i.i, i32 0, i32 2
  %29 = ptrtoint ptr %bi_opf.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %bi_opf.i.i.i.i, align 8
  %and.i.i.i.i = and i32 %30, 255
  %31 = add nsw i32 %and.i.i.i.i, -3
  %switch.and.i.i.i.i = and i32 %31, -7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.and.i.i.i.i)
  %switch.selectcmp.i.i.i.i = icmp eq i32 %switch.and.i.i.i.i, 0
  br i1 %switch.selectcmp.i.i.i.i, label %if.then.i.i.i, label %if.else.i.i.i

if.then.i.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  %32 = ptrtoint ptr %bi_size.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %32, i32 4)
  %33 = load i32, ptr %bi_size.i.i.i.i, align 1
  %sub.i.i.i = sub i32 %33, %shl.i.i
  store i32 %sub.i.i.i, ptr %bi_size.i.i.i.i, align 1
  br label %for.inc.i

if.else.i.i.i:                                    ; preds = %if.then.i
  %bi_io_vec.i.i.i = getelementptr inbounds %struct.bio, ptr %call.i.i, i32 0, i32 20
  %34 = ptrtoint ptr %bi_io_vec.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %bi_io_vec.i.i.i, align 8
  %36 = ptrtoint ptr %bi_size.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %36, i32 4)
  %37 = load i32, ptr %bi_size.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %shl.i.i)
  %cmp.i.i.i.i = icmp ult i32 %37, %shl.i.i
  br i1 %cmp.i.i.i.i, label %land.rhs.i.i.i.i, label %if.end38.i.i.i.i

land.rhs.i.i.i.i:                                 ; preds = %if.else.i.i.i
  %.b1.i.i.i.i = load i1, ptr @bvec_iter_advance.__already_done, align 1
  br i1 %.b1.i.i.i.i, label %land.rhs.i.i.i.i.if.then36.i.i.i.i_crit_edge, label %if.then.i.i.i.i, !prof !232

land.rhs.i.i.i.i.if.then36.i.i.i.i_crit_edge:     ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then36.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @bvec_iter_advance.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 107, i32 noundef 9, ptr noundef nonnull @.str.18) #16
  br label %if.then36.i.i.i.i

if.then36.i.i.i.i:                                ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.if.then36.i.i.i.i_crit_edge
  %38 = ptrtoint ptr %bi_size.i.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %38, i32 4)
  store i32 0, ptr %bi_size.i.i.i.i, align 1
  br label %for.inc.i

if.end38.i.i.i.i:                                 ; preds = %if.else.i.i.i
  %39 = ptrtoint ptr %bi_idx.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %39, i32 4)
  %40 = load i32, ptr %bi_idx.i.i.i.i, align 1
  %sub.i.i.i.i = sub i32 %37, %shl.i.i
  %41 = ptrtoint ptr %bi_size.i.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %41, i32 4)
  store i32 %sub.i.i.i.i, ptr %bi_size.i.i.i.i, align 1
  %42 = ptrtoint ptr %bi_bvec_done.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %42, i32 4)
  %43 = load i32, ptr %bi_bvec_done.i.i.i.i, align 1
  %add.i.i.i.i = add i32 %43, %shl.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i.i.i.i)
  %tobool40.not3.i.i.i.i = icmp eq i32 %add.i.i.i.i, 0
  br i1 %tobool40.not3.i.i.i.i, label %if.end38.i.i.i.i.while.end.i.i.i.i_crit_edge, label %if.end38.i.i.i.i.land.rhs41.i.i.i.i_crit_edge

if.end38.i.i.i.i.land.rhs41.i.i.i.i_crit_edge:    ; preds = %if.end38.i.i.i.i
  br label %land.rhs41.i.i.i.i

if.end38.i.i.i.i.while.end.i.i.i.i_crit_edge:     ; preds = %if.end38.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end.i.i.i.i

land.rhs41.i.i.i.i:                               ; preds = %while.body.i.i.i.i.land.rhs41.i.i.i.i_crit_edge, %if.end38.i.i.i.i.land.rhs41.i.i.i.i_crit_edge
  %bytes.addr.05.i.i.i.i = phi i32 [ %sub46.i.i.i.i, %while.body.i.i.i.i.land.rhs41.i.i.i.i_crit_edge ], [ %add.i.i.i.i, %if.end38.i.i.i.i.land.rhs41.i.i.i.i_crit_edge ]
  %idx.04.i.i.i.i = phi i32 [ %inc.i.i.i.i, %while.body.i.i.i.i.land.rhs41.i.i.i.i_crit_edge ], [ %40, %if.end38.i.i.i.i.land.rhs41.i.i.i.i_crit_edge ]
  %bv_len.i.i.i.i = getelementptr %struct.bio_vec, ptr %35, i32 %idx.04.i.i.i.i, i32 1
  %44 = ptrtoint ptr %bv_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %bv_len.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %bytes.addr.05.i.i.i.i, i32 %45)
  %cmp42.not.i.i.i.i = icmp ult i32 %bytes.addr.05.i.i.i.i, %45
  br i1 %cmp42.not.i.i.i.i, label %land.rhs41.i.i.i.i.while.end.i.i.i.i_crit_edge, label %while.body.i.i.i.i

land.rhs41.i.i.i.i.while.end.i.i.i.i_crit_edge:   ; preds = %land.rhs41.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end.i.i.i.i

while.body.i.i.i.i:                               ; preds = %land.rhs41.i.i.i.i
  %sub46.i.i.i.i = sub i32 %bytes.addr.05.i.i.i.i, %45
  %inc.i.i.i.i = add i32 %idx.04.i.i.i.i, 1
  %tobool40.not.i.i.i.i = icmp eq i32 %sub46.i.i.i.i, 0
  br i1 %tobool40.not.i.i.i.i, label %while.body.i.i.i.i.while.end.i.i.i.i_crit_edge, label %while.body.i.i.i.i.land.rhs41.i.i.i.i_crit_edge

while.body.i.i.i.i.land.rhs41.i.i.i.i_crit_edge:  ; preds = %while.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.rhs41.i.i.i.i

while.body.i.i.i.i.while.end.i.i.i.i_crit_edge:   ; preds = %while.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end.i.i.i.i

while.end.i.i.i.i:                                ; preds = %while.body.i.i.i.i.while.end.i.i.i.i_crit_edge, %land.rhs41.i.i.i.i.while.end.i.i.i.i_crit_edge, %if.end38.i.i.i.i.while.end.i.i.i.i_crit_edge
  %idx.0.lcssa.i.i.i.i = phi i32 [ %40, %if.end38.i.i.i.i.while.end.i.i.i.i_crit_edge ], [ %inc.i.i.i.i, %while.body.i.i.i.i.while.end.i.i.i.i_crit_edge ], [ %idx.04.i.i.i.i, %land.rhs41.i.i.i.i.while.end.i.i.i.i_crit_edge ]
  %bytes.addr.0.lcssa.i.i.i.i = phi i32 [ 0, %if.end38.i.i.i.i.while.end.i.i.i.i_crit_edge ], [ 0, %while.body.i.i.i.i.while.end.i.i.i.i_crit_edge ], [ %bytes.addr.05.i.i.i.i, %land.rhs41.i.i.i.i.while.end.i.i.i.i_crit_edge ]
  %46 = ptrtoint ptr %bi_idx.i.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %46, i32 4)
  store i32 %idx.0.lcssa.i.i.i.i, ptr %bi_idx.i.i.i.i, align 1
  %47 = ptrtoint ptr %bi_bvec_done.i.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %47, i32 4)
  store i32 %bytes.addr.0.lcssa.i.i.i.i, ptr %bi_bvec_done.i.i.i.i, align 1
  br label %for.inc.i

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %for.body.i.if.end.i_crit_edge
  %48 = ptrtoint ptr %ahash_reqsize.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %ahash_reqsize.i.i, align 4
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %49
  %50 = ptrtoint ptr %digest_size.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %digest_size.i.i, align 8
  %add.ptr2.i.i = getelementptr i8, ptr %add.ptr1.i.i, i32 %51
  %call10.i = call i32 @verity_hash_for_block(ptr noundef %2, ptr noundef %add.ptr, i64 noundef %add.i, ptr noundef %add.ptr2.i.i, ptr noundef nonnull %is_zero.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %cmp11.i = icmp slt i32 %call10.i, 0
  br i1 %cmp11.i, label %if.end.i.verity_verify_io.exit_crit_edge, label %if.end20.i, !prof !231

if.end.i.verity_verify_io.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %verity_verify_io.exit

if.end20.i:                                       ; preds = %if.end.i
  %52 = ptrtoint ptr %is_zero.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %is_zero.i, align 1, !range !239
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool21.not.i = icmp eq i8 %53, 0
  br i1 %tobool21.not.i, label %if.end35.i, label %if.then22.i

if.then22.i:                                      ; preds = %if.end20.i
  %call24.i = call i32 @verity_for_bv_block(ptr noundef %2, ptr noundef %add.ptr, ptr noundef %iter.i, ptr noundef nonnull @verity_bv_zero) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i)
  %cmp25.i = icmp slt i32 %call24.i, 0
  br i1 %cmp25.i, label %if.then22.i.verity_verify_io.exit_crit_edge, label %if.then22.i.for.inc.i_crit_edge

if.then22.i.for.inc.i_crit_edge:                  ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i

if.then22.i.verity_verify_io.exit_crit_edge:      ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %verity_verify_io.exit

if.end35.i:                                       ; preds = %if.end20.i
  %call36.i = call fastcc i32 @verity_hash_init(ptr noundef %2, ptr noundef %add.ptr.i.i, ptr noundef nonnull %wait.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.i)
  %cmp37.i = icmp slt i32 %call36.i, 0
  br i1 %cmp37.i, label %if.end35.i.verity_verify_io.exit_crit_edge, label %if.end46.i, !prof !231

if.end35.i.verity_verify_io.exit_crit_edge:       ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %verity_verify_io.exit

if.end46.i:                                       ; preds = %if.end35.i
  %54 = call ptr @memcpy(ptr %start.i, ptr %iter.i, i32 20)
  %55 = ptrtoint ptr %data_dev_block_bits.i.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %data_dev_block_bits.i.i, align 8
  %conv.i167.i = zext i8 %56 to i32
  %shl.i168.i = shl nuw i32 1, %conv.i167.i
  %57 = ptrtoint ptr %ti.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %ti.i, align 8
  %per_io_data_size.i170.i = getelementptr inbounds %struct.dm_target, ptr %58, i32 0, i32 10
  %59 = ptrtoint ptr %per_io_data_size.i170.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %per_io_data_size.i170.i, align 8
  %call.i171.i = call ptr @dm_bio_from_per_bio_data(ptr noundef %add.ptr, i32 noundef %60) #16
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %sg.i.i) #16
  %bi_io_vec.i.i = getelementptr inbounds %struct.bio, ptr %call.i171.i, i32 0, i32 20
  %bi_opf.i.i.i172.i = getelementptr inbounds %struct.bio, ptr %call.i171.i, i32 0, i32 2
  %61 = call ptr @memset(ptr %sg.i.i, i32 255, i32 20)
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.cond58.i.i.do.body.i.i_crit_edge, %if.end46.i
  %todo.0.i.i = phi i32 [ %shl.i168.i, %if.end46.i ], [ %sub55104.i.i, %do.cond58.i.i.do.body.i.i_crit_edge ]
  %62 = ptrtoint ptr %bi_io_vec.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %bi_io_vec.i.i, align 8
  %64 = ptrtoint ptr %bi_idx.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %64, i32 4)
  %65 = load i32, ptr %bi_idx.i.i.i.i, align 1
  %arrayidx.i173.i = getelementptr %struct.bio_vec, ptr %63, i32 %65
  %66 = ptrtoint ptr %arrayidx.i173.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %arrayidx.i173.i, align 4
  %bv_offset.i.i = getelementptr %struct.bio_vec, ptr %63, i32 %65, i32 2
  %68 = ptrtoint ptr %bv_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %bv_offset.i.i, align 4
  %70 = ptrtoint ptr %bi_bvec_done.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %70, i32 4)
  %71 = load i32, ptr %bi_bvec_done.i.i.i.i, align 1
  %add.i.i = add i32 %71, %69
  %div98.i.i = lshr i32 %add.i.i, 12
  %add.ptr.i174.i = getelementptr %struct.page, ptr %67, i32 %div98.i.i
  %72 = ptrtoint ptr %bi_size.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %72, i32 4)
  %73 = load i32, ptr %bi_size.i.i.i.i, align 1
  %bv_len9.i.i = getelementptr %struct.bio_vec, ptr %63, i32 %65, i32 1
  %74 = ptrtoint ptr %bv_len9.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %bv_len9.i.i, align 4
  %sub.i.i = sub i32 %75, %71
  %76 = call i32 @llvm.umin.i32(i32 %73, i32 %sub.i.i) #16
  %rem.i.i = and i32 %add.i.i, 4095
  %sub18.i.i = sub nuw nsw i32 4096, %rem.i.i
  %77 = call i32 @llvm.umin.i32(i32 %76, i32 %sub18.i.i) #16
  call void @sg_init_table(ptr noundef nonnull %sg.i.i, i32 noundef 1) #16
  %78 = call i32 @llvm.umin.i32(i32 %77, i32 %todo.0.i.i) #16
  %79 = ptrtoint ptr %sg.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %sg.i.i, align 4
  %81 = ptrtoint ptr %add.ptr.i174.i to i32
  %and2.i.i.i.i = and i32 %81, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and2.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %do.body11.i.i.i.i, label %do.body5.i.i.i.i, !prof !232

do.body5.i.i.i.i:                                 ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #16, !srcloc !233
  unreachable

do.body11.i.i.i.i:                                ; preds = %do.body.i.i
  %and.i.i.i.i.i = and i32 %80, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.i.not.i.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i.i, label %sg_set_page.exit.i.i, label %do.body19.i.i.i.i, !prof !232

do.body19.i.i.i.i:                                ; preds = %do.body11.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #16, !srcloc !234
  unreachable

sg_set_page.exit.i.i:                             ; preds = %do.body11.i.i.i.i
  %and.i.i.i175.i = and i32 %80, 3
  %or.i.i.i.i = or i32 %and.i.i.i175.i, %81
  %82 = ptrtoint ptr %sg.i.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %or.i.i.i.i, ptr %sg.i.i, align 4
  %83 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %rem.i.i, ptr %11, align 4
  %84 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %78, ptr %12, align 4
  %85 = ptrtoint ptr %src1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %sg.i.i, ptr %src1.i.i.i, align 4
  %86 = ptrtoint ptr %nbytes2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %78, ptr %nbytes2.i.i.i, align 8
  %87 = ptrtoint ptr %result3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr null, ptr %result3.i.i.i, align 32
  %88 = ptrtoint ptr %tfm.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %tfm.i.i.i.i, align 16
  %__crt_alg.i.i.i = getelementptr i8, ptr %89, i32 12
  %90 = ptrtoint ptr %__crt_alg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %__crt_alg.i.i.i, align 4
  call void @crypto_stats_get(ptr noundef %91) #16
  %92 = ptrtoint ptr %tfm.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %tfm.i.i.i.i, align 16
  %update.i.i.i = getelementptr i8, ptr %93, i32 -124
  %94 = ptrtoint ptr %update.i.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %update.i.i.i, align 4
  %call3.i.i.i = call i32 %95(ptr noundef %add.ptr.i.i) #16
  call void @crypto_stats_ahash_update(i32 noundef %78, i32 noundef %call3.i.i.i, ptr noundef %91) #16
  %96 = zext i32 %call3.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %96, ptr @__sancov_gen_cov_switch_values.102)
  switch i32 %call3.i.i.i, label %sg_set_page.exit.i.i.crypto_wait_req.exit.i.i_crit_edge [
    i32 -115, label %sg_set_page.exit.i.i.sw.bb.i.i.i_crit_edge
    i32 -16, label %sg_set_page.exit.i.i.sw.bb.i.i.i_crit_edge13
  ]

sg_set_page.exit.i.i.sw.bb.i.i.i_crit_edge13:     ; preds = %sg_set_page.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb.i.i.i

sg_set_page.exit.i.i.sw.bb.i.i.i_crit_edge:       ; preds = %sg_set_page.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb.i.i.i

sg_set_page.exit.i.i.crypto_wait_req.exit.i.i_crit_edge: ; preds = %sg_set_page.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %crypto_wait_req.exit.i.i

sw.bb.i.i.i:                                      ; preds = %sg_set_page.exit.i.i.sw.bb.i.i.i_crit_edge, %sg_set_page.exit.i.i.sw.bb.i.i.i_crit_edge13
  call void @wait_for_completion(ptr noundef nonnull %wait.i) #16
  %97 = ptrtoint ptr %wait.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 0, ptr %wait.i, align 4
  %98 = ptrtoint ptr %err2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %err2.i.i.i, align 4
  br label %crypto_wait_req.exit.i.i

crypto_wait_req.exit.i.i:                         ; preds = %sw.bb.i.i.i, %sg_set_page.exit.i.i.crypto_wait_req.exit.i.i_crit_edge
  %err.addr.0.i.i.i = phi i32 [ %call3.i.i.i, %sg_set_page.exit.i.i.crypto_wait_req.exit.i.i_crit_edge ], [ %99, %sw.bb.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.addr.0.i.i.i)
  %cmp42.i.i = icmp slt i32 %err.addr.0.i.i.i, 0
  br i1 %cmp42.i.i, label %verity_for_io_block.exit.thread.i, label %if.end54.i.i, !prof !231

verity_for_io_block.exit.thread.i:                ; preds = %crypto_wait_req.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %call53.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67, i32 noundef %err.addr.0.i.i.i) #19
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg.i.i) #16
  br label %verity_verify_io.exit

if.end54.i.i:                                     ; preds = %crypto_wait_req.exit.i.i
  %shr.i.i176.i = lshr i32 %78, 9
  %conv.i.i177.i = zext i32 %shr.i.i176.i to i64
  %100 = ptrtoint ptr %iter.i to i32
  call void @__asan_loadN_noabort(i32 %100, i32 8)
  %101 = load i64, ptr %iter.i, align 1
  %add.i.i178.i = add i64 %101, %conv.i.i177.i
  store i64 %add.i.i178.i, ptr %iter.i, align 1
  %102 = ptrtoint ptr %bi_opf.i.i.i172.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %bi_opf.i.i.i172.i, align 8
  %and.i.i99.i.i = and i32 %103, 255
  %104 = add nsw i32 %and.i.i99.i.i, -3
  %switch.and.i.i.i179.i = and i32 %104, -7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.and.i.i.i179.i)
  %switch.selectcmp.i.i.i180.i = icmp eq i32 %switch.and.i.i.i179.i, 0
  br i1 %switch.selectcmp.i.i.i180.i, label %if.then.i.i182.i, label %if.else.i.i184.i

if.then.i.i182.i:                                 ; preds = %if.end54.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %105 = ptrtoint ptr %bi_size.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %105, i32 4)
  %106 = load i32, ptr %bi_size.i.i.i.i, align 1
  %sub.i.i181.i = sub i32 %106, %78
  br label %cleanup.thread102.i.i

if.else.i.i184.i:                                 ; preds = %if.end54.i.i
  %107 = ptrtoint ptr %bi_io_vec.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %bi_io_vec.i.i, align 8
  %109 = ptrtoint ptr %bi_size.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %109, i32 4)
  %110 = load i32, ptr %bi_size.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %110, i32 %78)
  %cmp.i.i.i183.i = icmp ult i32 %110, %78
  br i1 %cmp.i.i.i183.i, label %land.rhs.i.i.i186.i, label %if.end38.i.i.i191.i

land.rhs.i.i.i186.i:                              ; preds = %if.else.i.i184.i
  %.b1.i.i.i185.i = load i1, ptr @bvec_iter_advance.__already_done, align 1
  br i1 %.b1.i.i.i185.i, label %land.rhs.i.i.i186.i.cleanup.thread102.i.i_crit_edge, label %if.then.i.i.i187.i, !prof !232

land.rhs.i.i.i186.i.cleanup.thread102.i.i_crit_edge: ; preds = %land.rhs.i.i.i186.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.thread102.i.i

if.then.i.i.i187.i:                               ; preds = %land.rhs.i.i.i186.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @bvec_iter_advance.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 107, i32 noundef 9, ptr noundef nonnull @.str.18) #16
  br label %cleanup.thread102.i.i

if.end38.i.i.i191.i:                              ; preds = %if.else.i.i184.i
  %111 = ptrtoint ptr %bi_idx.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %111, i32 4)
  %112 = load i32, ptr %bi_idx.i.i.i.i, align 1
  %sub.i.i.i188.i = sub i32 %110, %78
  %113 = ptrtoint ptr %bi_size.i.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %113, i32 4)
  store i32 %sub.i.i.i188.i, ptr %bi_size.i.i.i.i, align 1
  %114 = ptrtoint ptr %bi_bvec_done.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %114, i32 4)
  %115 = load i32, ptr %bi_bvec_done.i.i.i.i, align 1
  %add.i.i.i189.i = add i32 %115, %78
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i.i.i189.i)
  %tobool40.not3.i.i.i190.i = icmp eq i32 %add.i.i.i189.i, 0
  br i1 %tobool40.not3.i.i.i190.i, label %cleanup.thread105.i.i, label %if.end38.i.i.i191.i.land.rhs41.i.i.i196.i_crit_edge

if.end38.i.i.i191.i.land.rhs41.i.i.i196.i_crit_edge: ; preds = %if.end38.i.i.i191.i
  br label %land.rhs41.i.i.i196.i

cleanup.thread105.i.i:                            ; preds = %if.end38.i.i.i191.i
  call void @__sanitizer_cov_trace_pc() #18
  %116 = ptrtoint ptr %bi_bvec_done.i.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %116, i32 4)
  store i32 0, ptr %bi_bvec_done.i.i.i.i, align 1
  br label %do.cond58.i.i

land.rhs41.i.i.i196.i:                            ; preds = %while.body.i.i.i200.i.land.rhs41.i.i.i196.i_crit_edge, %if.end38.i.i.i191.i.land.rhs41.i.i.i196.i_crit_edge
  %bytes.addr.05.i.i.i192.i = phi i32 [ %sub46.i.i.i197.i, %while.body.i.i.i200.i.land.rhs41.i.i.i196.i_crit_edge ], [ %add.i.i.i189.i, %if.end38.i.i.i191.i.land.rhs41.i.i.i196.i_crit_edge ]
  %idx.04.i.i.i193.i = phi i32 [ %inc.i.i.i198.i, %while.body.i.i.i200.i.land.rhs41.i.i.i196.i_crit_edge ], [ %112, %if.end38.i.i.i191.i.land.rhs41.i.i.i196.i_crit_edge ]
  %bv_len.i.i.i194.i = getelementptr %struct.bio_vec, ptr %108, i32 %idx.04.i.i.i193.i, i32 1
  %117 = ptrtoint ptr %bv_len.i.i.i194.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %bv_len.i.i.i194.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %bytes.addr.05.i.i.i192.i, i32 %118)
  %cmp42.not.i.i.i195.i = icmp ult i32 %bytes.addr.05.i.i.i192.i, %118
  br i1 %cmp42.not.i.i.i195.i, label %land.rhs41.i.i.i196.i.cleanup.i.i_crit_edge, label %while.body.i.i.i200.i

land.rhs41.i.i.i196.i.cleanup.i.i_crit_edge:      ; preds = %land.rhs41.i.i.i196.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.i.i

while.body.i.i.i200.i:                            ; preds = %land.rhs41.i.i.i196.i
  %sub46.i.i.i197.i = sub i32 %bytes.addr.05.i.i.i192.i, %118
  %inc.i.i.i198.i = add i32 %idx.04.i.i.i193.i, 1
  %tobool40.not.i.i.i199.i = icmp eq i32 %sub46.i.i.i197.i, 0
  br i1 %tobool40.not.i.i.i199.i, label %while.body.i.i.i200.i.cleanup.i.i_crit_edge, label %while.body.i.i.i200.i.land.rhs41.i.i.i196.i_crit_edge

while.body.i.i.i200.i.land.rhs41.i.i.i196.i_crit_edge: ; preds = %while.body.i.i.i200.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.rhs41.i.i.i196.i

while.body.i.i.i200.i.cleanup.i.i_crit_edge:      ; preds = %while.body.i.i.i200.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.i.i

cleanup.thread102.i.i:                            ; preds = %if.then.i.i.i187.i, %land.rhs.i.i.i186.i.cleanup.thread102.i.i_crit_edge, %if.then.i.i182.i
  %storemerge.i.i = phi i32 [ %sub.i.i181.i, %if.then.i.i182.i ], [ 0, %if.then.i.i.i187.i ], [ 0, %land.rhs.i.i.i186.i.cleanup.thread102.i.i_crit_edge ]
  %119 = ptrtoint ptr %bi_size.i.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %119, i32 4)
  store i32 %storemerge.i.i, ptr %bi_size.i.i.i.i, align 1
  br label %do.cond58.i.i

cleanup.i.i:                                      ; preds = %while.body.i.i.i200.i.cleanup.i.i_crit_edge, %land.rhs41.i.i.i196.i.cleanup.i.i_crit_edge
  %idx.0.lcssa.i.i.i201.i = phi i32 [ %idx.04.i.i.i193.i, %land.rhs41.i.i.i196.i.cleanup.i.i_crit_edge ], [ %inc.i.i.i198.i, %while.body.i.i.i200.i.cleanup.i.i_crit_edge ]
  %bytes.addr.0.lcssa.i.i.i202.i = phi i32 [ %bytes.addr.05.i.i.i192.i, %land.rhs41.i.i.i196.i.cleanup.i.i_crit_edge ], [ 0, %while.body.i.i.i200.i.cleanup.i.i_crit_edge ]
  %120 = ptrtoint ptr %bi_idx.i.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %120, i32 4)
  store i32 %idx.0.lcssa.i.i.i201.i, ptr %bi_idx.i.i.i.i, align 1
  %121 = ptrtoint ptr %bi_bvec_done.i.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %121, i32 4)
  store i32 %bytes.addr.0.lcssa.i.i.i202.i, ptr %bi_bvec_done.i.i.i.i, align 1
  br label %do.cond58.i.i

do.cond58.i.i:                                    ; preds = %cleanup.i.i, %cleanup.thread102.i.i, %cleanup.thread105.i.i
  %sub55104.i.i = sub i32 %todo.0.i.i, %78
  %tobool59.not.i.i = icmp eq i32 %sub55104.i.i, 0
  br i1 %tobool59.not.i.i, label %if.end59.i, label %do.cond58.i.i.do.body.i.i_crit_edge

do.cond58.i.i.do.body.i.i_crit_edge:              ; preds = %do.cond58.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body.i.i

if.end59.i:                                       ; preds = %do.cond58.i.i
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg.i.i) #16
  %122 = ptrtoint ptr %ahash_reqsize.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %ahash_reqsize.i.i, align 4
  %add.ptr1.i205.i = getelementptr i8, ptr %add.ptr.i.i, i32 %123
  %124 = ptrtoint ptr %salt_size.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %salt_size.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %125)
  %tobool.not.i.i = icmp eq i32 %125, 0
  br i1 %tobool.not.i.i, label %if.end59.i.if.end8.i.i_crit_edge, label %land.rhs.i.i

if.end59.i.if.end8.i.i_crit_edge:                 ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end8.i.i

land.rhs.i.i:                                     ; preds = %if.end59.i
  %126 = ptrtoint ptr %version.i.i to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %version.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %127)
  %tobool1.not.i.i = icmp eq i8 %127, 0
  br i1 %tobool1.not.i.i, label %if.then.i.i, label %land.rhs.i.i.if.end8.i.i_crit_edge, !prof !231

land.rhs.i.i.if.end8.i.i_crit_edge:               ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end8.i.i

if.then.i.i:                                      ; preds = %land.rhs.i.i
  %128 = ptrtoint ptr %salt.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %salt.i.i, align 4
  %call.i206.i = call fastcc i32 @verity_hash_update(ptr noundef %add.ptr.i.i, ptr noundef %129, i32 noundef %125, ptr noundef nonnull %wait.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i206.i)
  %cmp.i.i = icmp slt i32 %call.i206.i, 0
  br i1 %cmp.i.i, label %verity_hash_final.exit.thread.i, label %if.then.i.i.if.end8.i.i_crit_edge

if.then.i.i.if.end8.i.i_crit_edge:                ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end8.i.i

verity_hash_final.exit.thread.i:                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %call7.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %call.i206.i) #19
  br label %verity_verify_io.exit

if.end8.i.i:                                      ; preds = %if.then.i.i.if.end8.i.i_crit_edge, %land.rhs.i.i.if.end8.i.i_crit_edge, %if.end59.i.if.end8.i.i_crit_edge
  %130 = ptrtoint ptr %src1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr null, ptr %src1.i.i.i, align 4
  %131 = ptrtoint ptr %nbytes2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 0, ptr %nbytes2.i.i.i, align 8
  %132 = ptrtoint ptr %result3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr %add.ptr1.i205.i, ptr %result3.i.i.i, align 32
  %call9.i.i = call i32 @crypto_ahash_final(ptr noundef %add.ptr.i.i) #16
  %133 = zext i32 %call9.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %133, ptr @__sancov_gen_cov_switch_values.103)
  switch i32 %call9.i.i, label %if.end8.i.i.verity_hash_final.exit.i_crit_edge [
    i32 -115, label %if.end8.i.i.sw.bb.i.i211.i_crit_edge
    i32 -16, label %if.end8.i.i.sw.bb.i.i211.i_crit_edge14
  ]

if.end8.i.i.sw.bb.i.i211.i_crit_edge14:           ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb.i.i211.i

if.end8.i.i.sw.bb.i.i211.i_crit_edge:             ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb.i.i211.i

if.end8.i.i.verity_hash_final.exit.i_crit_edge:   ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %verity_hash_final.exit.i

sw.bb.i.i211.i:                                   ; preds = %if.end8.i.i.sw.bb.i.i211.i_crit_edge, %if.end8.i.i.sw.bb.i.i211.i_crit_edge14
  call void @wait_for_completion(ptr noundef nonnull %wait.i) #16
  %134 = ptrtoint ptr %wait.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 0, ptr %wait.i, align 4
  %135 = ptrtoint ptr %err2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %err2.i.i.i, align 4
  br label %verity_hash_final.exit.i

verity_hash_final.exit.i:                         ; preds = %sw.bb.i.i211.i, %if.end8.i.i.verity_hash_final.exit.i_crit_edge
  %r.0.i.i = phi i32 [ %call9.i.i, %if.end8.i.i.verity_hash_final.exit.i_crit_edge ], [ %136, %sw.bb.i.i211.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %r.0.i.i)
  %cmp62.i = icmp slt i32 %r.0.i.i, 0
  br i1 %cmp62.i, label %verity_hash_final.exit.i.verity_verify_io.exit_crit_edge, label %if.end71.i, !prof !231

verity_hash_final.exit.i.verity_verify_io.exit_crit_edge: ; preds = %verity_hash_final.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %verity_verify_io.exit

if.end71.i:                                       ; preds = %verity_hash_final.exit.i
  %137 = ptrtoint ptr %ahash_reqsize.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %ahash_reqsize.i.i, align 4
  %add.ptr1.i214.i = getelementptr i8, ptr %add.ptr.i.i, i32 %138
  %139 = ptrtoint ptr %digest_size.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %digest_size.i.i, align 8
  %add.ptr2.i219.i = getelementptr i8, ptr %add.ptr1.i214.i, i32 %140
  %bcmp.i = call i32 @bcmp(ptr %add.ptr1.i214.i, ptr %add.ptr2.i219.i, i32 %140) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %cmp75.i = icmp eq i32 %bcmp.i, 0
  br i1 %cmp75.i, label %if.then83.i, label %if.else.i, !prof !232

if.then83.i:                                      ; preds = %if.end71.i
  %141 = ptrtoint ptr %validated_blocks.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %validated_blocks.i, align 4
  %tobool85.not.i = icmp eq ptr %142, null
  br i1 %tobool85.not.i, label %if.then83.i.for.inc.i_crit_edge, label %if.then86.i

if.then83.i.for.inc.i_crit_edge:                  ; preds = %if.then83.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i

if.then86.i:                                      ; preds = %if.then83.i
  call void @__sanitizer_cov_trace_pc() #18
  %conv87.i = trunc i64 %add.i to i32
  call void @_set_bit(i32 noundef %conv87.i, ptr noundef nonnull %142) #16
  br label %for.inc.i

if.else.i:                                        ; preds = %if.end71.i
  %call90.i = call i32 @verity_fec_decode(ptr noundef %2, ptr noundef %add.ptr, i32 noundef 0, i64 noundef %add.i, ptr noundef null, ptr noundef nonnull %start.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90.i)
  %cmp91.i = icmp eq i32 %call90.i, 0
  br i1 %cmp91.i, label %if.else.i.for.inc.i_crit_edge, label %if.else94.i

if.else.i.for.inc.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i

if.else94.i:                                      ; preds = %if.else.i
  %143 = ptrtoint ptr %bi_status.i to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %bi_status.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %144)
  %tobool95.not.i = icmp eq i8 %144, 0
  br i1 %tobool95.not.i, label %if.end97.i, label %if.else94.i.verity_verify_io.exit_crit_edge

if.else94.i.verity_verify_io.exit_crit_edge:      ; preds = %if.else94.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %verity_verify_io.exit

if.end97.i:                                       ; preds = %if.else94.i
  %call98.i = call fastcc i32 @verity_handle_err(ptr noundef %2, i32 noundef 0, i64 noundef %add.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call98.i)
  %tobool99.not.i = icmp eq i32 %call98.i, 0
  br i1 %tobool99.not.i, label %if.end97.i.for.inc.i_crit_edge, label %if.end97.i.verity_verify_io.exit_crit_edge

if.end97.i.verity_verify_io.exit_crit_edge:       ; preds = %if.end97.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %verity_verify_io.exit

if.end97.i.for.inc.i_crit_edge:                   ; preds = %if.end97.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end97.i.for.inc.i_crit_edge, %if.else.i.for.inc.i_crit_edge, %if.then86.i, %if.then83.i.for.inc.i_crit_edge, %if.then22.i.for.inc.i_crit_edge, %while.end.i.i.i.i, %if.then36.i.i.i.i, %if.then.i.i.i
  %inc.i = add nuw i32 %b.0229.i, 1
  %145 = ptrtoint ptr %n_blocks.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %n_blocks.i, align 8
  %cmp.i = icmp ult i32 %inc.i, %146
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.verity_verify_io.exit_crit_edge

for.inc.i.verity_verify_io.exit_crit_edge:        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %verity_verify_io.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

verity_verify_io.exit:                            ; preds = %for.inc.i.verity_verify_io.exit_crit_edge, %if.end97.i.verity_verify_io.exit_crit_edge, %if.else94.i.verity_verify_io.exit_crit_edge, %verity_hash_final.exit.i.verity_verify_io.exit_crit_edge, %verity_hash_final.exit.thread.i, %verity_for_io_block.exit.thread.i, %if.end35.i.verity_verify_io.exit_crit_edge, %if.then22.i.verity_verify_io.exit_crit_edge, %if.end.i.verity_verify_io.exit_crit_edge, %entry.verity_verify_io.exit_crit_edge
  %retval.2.i = phi i32 [ %call.i206.i, %verity_hash_final.exit.thread.i ], [ %err.addr.0.i.i.i, %verity_for_io_block.exit.thread.i ], [ 0, %entry.verity_verify_io.exit_crit_edge ], [ %call24.i, %if.then22.i.verity_verify_io.exit_crit_edge ], [ -5, %if.end97.i.verity_verify_io.exit_crit_edge ], [ -5, %if.else94.i.verity_verify_io.exit_crit_edge ], [ %r.0.i.i, %verity_hash_final.exit.i.verity_verify_io.exit_crit_edge ], [ %call36.i, %if.end35.i.verity_verify_io.exit_crit_edge ], [ %call10.i, %if.end.i.verity_verify_io.exit_crit_edge ], [ 0, %for.inc.i.verity_verify_io.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %wait.i) #16
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %start.i) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %is_zero.i) #16
  %call1 = call zeroext i8 @errno_to_blk_status(i32 noundef %retval.2.i) #16
  %147 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %add.ptr, align 8
  %ti.i3 = getelementptr inbounds %struct.dm_verity, ptr %148, i32 0, i32 2
  %149 = ptrtoint ptr %ti.i3 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %ti.i3, align 8
  %per_io_data_size.i4 = getelementptr inbounds %struct.dm_target, ptr %150, i32 0, i32 10
  %151 = ptrtoint ptr %per_io_data_size.i4 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %per_io_data_size.i4, align 8
  %call.i5 = call ptr @dm_bio_from_per_bio_data(ptr noundef %add.ptr, i32 noundef %152) #16
  %orig_bi_end_io.i = getelementptr i8, ptr %w, i32 -36
  %153 = ptrtoint ptr %orig_bi_end_io.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %orig_bi_end_io.i, align 4
  %bi_end_io.i = getelementptr inbounds %struct.bio, ptr %call.i5, i32 0, i32 10
  %155 = ptrtoint ptr %bi_end_io.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store ptr %154, ptr %bi_end_io.i, align 8
  %bi_status.i6 = getelementptr inbounds %struct.bio, ptr %call.i5, i32 0, i32 6
  %156 = ptrtoint ptr %bi_status.i6 to i32
  call void @__asan_store1_noabort(i32 %156)
  store i8 %call1, ptr %bi_status.i6, align 2
  call void @verity_fec_finish_io(ptr noundef %add.ptr) #16
  call void @bio_endio(ptr noundef %call.i5) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @verity_fec_finish_io(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_endio(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @errno_to_blk_status(i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @verity_bv_zero(ptr nocapture noundef readnone %v, ptr nocapture noundef readnone %io, ptr nocapture noundef writeonly %data, i32 noundef %len) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %data, i32 0, i32 %len)
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @verity_prefetch_io(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %v1 = getelementptr inbounds %struct.dm_verity_prefetch_work, ptr %work, i32 0, i32 1
  %0 = ptrtoint ptr %v1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %v1, align 4
  %levels = getelementptr inbounds %struct.dm_verity, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %levels to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %levels, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %3)
  %cmp75 = icmp ugt i8 %3, 1
  br i1 %cmp75, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %conv = zext i8 %3 to i32
  %sub = add nsw i32 %conv, -2
  %block = getelementptr inbounds %struct.dm_verity_prefetch_work, ptr %work, i32 0, i32 2
  %hash_per_block_bits.i.i = getelementptr inbounds %struct.dm_verity, ptr %1, i32 0, i32 16
  %n_blocks = getelementptr inbounds %struct.dm_verity_prefetch_work, ptr %work, i32 0, i32 3
  %data_dev_block_bits = getelementptr inbounds %struct.dm_verity, ptr %1, i32 0, i32 14
  %hash_blocks = getelementptr inbounds %struct.dm_verity, ptr %1, i32 0, i32 13
  %bufio = getelementptr inbounds %struct.dm_verity, ptr %1, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %no_prefetch_cluster.for.body_crit_edge, %for.body.lr.ph
  %i.076 = phi i32 [ %sub, %for.body.lr.ph ], [ %dec, %no_prefetch_cluster.for.body_crit_edge ]
  %4 = ptrtoint ptr %block to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %block, align 8
  %6 = ptrtoint ptr %hash_per_block_bits.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %hash_per_block_bits.i.i, align 2
  %conv.i.i = zext i8 %7 to i32
  %mul.i.i = mul i32 %i.076, %conv.i.i
  %sh_prom.i.i = zext i32 %mul.i.i to i64
  %shr.i.i = lshr i64 %5, %sh_prom.i.i
  %arrayidx.i = getelementptr %struct.dm_verity, ptr %1, i32 0, i32 25, i32 %i.076
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %arrayidx.i, align 8
  %sh_prom.i = zext i8 %7 to i64
  %shr.i = lshr i64 %shr.i.i, %sh_prom.i
  %add.i = add i64 %shr.i, %9
  %10 = ptrtoint ptr %n_blocks to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %n_blocks, align 8
  %conv4 = zext i32 %11 to i64
  %add = add i64 %5, -1
  %sub5 = add i64 %add, %conv4
  %shr.i.i68 = lshr i64 %sub5, %sh_prom.i.i
  %shr.i71 = lshr i64 %shr.i.i68, %sh_prom.i
  %add.i72 = add i64 %shr.i71, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.076)
  %tobool.not = icmp eq i32 %i.076, 0
  br i1 %tobool.not, label %if.then, label %for.body.no_prefetch_cluster_crit_edge

for.body.no_prefetch_cluster_crit_edge:           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %no_prefetch_cluster

if.then:                                          ; preds = %for.body
  %12 = load volatile i32, ptr @dm_verity_prefetch_cluster, align 4
  %13 = ptrtoint ptr %data_dev_block_bits to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %data_dev_block_bits, align 8
  %conv7 = zext i8 %14 to i32
  %shr = lshr i32 %12, %conv7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr)
  %tobool8.not = icmp eq i32 %shr, 0
  br i1 %tobool8.not, label %if.then.no_prefetch_cluster_crit_edge, label %if.end, !prof !231

if.then.no_prefetch_cluster_crit_edge:            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %no_prefetch_cluster

if.end:                                           ; preds = %if.then
  %15 = tail call i32 @llvm.ctpop.i32(i32 %shr), !range !237
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %15)
  %tobool14.not = icmp ult i32 %15, 2
  br i1 %tobool14.not, label %if.end.if.end22_crit_edge, label %if.then21, !prof !232

if.end.if.end22_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end22

if.then21:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %16 = tail call i32 @llvm.ctlz.i32(i32 %shr, i1 true) #16, !range !237
  %sub.i = xor i32 %16, 31
  %shl = shl nuw i32 1, %sub.i
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %if.end.if.end22_crit_edge
  %cluster.0 = phi i32 [ %shl, %if.then21 ], [ %shr, %if.end.if.end22_crit_edge ]
  %sub23 = add i32 %cluster.0, -1
  %conv24 = zext i32 %sub23 to i64
  %neg = xor i64 %conv24, -1
  %and25 = and i64 %add.i, %neg
  %or = or i64 %add.i72, %conv24
  %17 = ptrtoint ptr %hash_blocks to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %hash_blocks, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %or, i64 %18)
  %cmp28.not = icmp ult i64 %or, %18
  br i1 %cmp28.not, label %if.end22.no_prefetch_cluster_crit_edge, label %if.then36, !prof !232

if.end22.no_prefetch_cluster_crit_edge:           ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #18
  br label %no_prefetch_cluster

if.then36:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #18
  %sub38 = add i64 %18, -1
  br label %no_prefetch_cluster

no_prefetch_cluster:                              ; preds = %if.then36, %if.end22.no_prefetch_cluster_crit_edge, %if.then.no_prefetch_cluster_crit_edge, %for.body.no_prefetch_cluster_crit_edge
  %hash_block_start.0 = phi i64 [ %add.i, %if.then.no_prefetch_cluster_crit_edge ], [ %and25, %if.end22.no_prefetch_cluster_crit_edge ], [ %and25, %if.then36 ], [ %add.i, %for.body.no_prefetch_cluster_crit_edge ]
  %hash_block_end.0 = phi i64 [ %add.i72, %if.then.no_prefetch_cluster_crit_edge ], [ %or, %if.end22.no_prefetch_cluster_crit_edge ], [ %sub38, %if.then36 ], [ %add.i72, %for.body.no_prefetch_cluster_crit_edge ]
  %19 = ptrtoint ptr %bufio to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bufio, align 4
  %sub41 = sub i64 %hash_block_end.0, %hash_block_start.0
  %21 = trunc i64 %sub41 to i32
  %conv43 = add i32 %21, 1
  tail call void @dm_bufio_prefetch(ptr noundef %20, i64 noundef %hash_block_start.0, i32 noundef %conv43) #16
  %dec = add nsw i32 %i.076, -1
  %cmp = icmp sgt i32 %i.076, 0
  br i1 %cmp, label %no_prefetch_cluster.for.body_crit_edge, label %no_prefetch_cluster.for.end_crit_edge

no_prefetch_cluster.for.end_crit_edge:            ; preds = %no_prefetch_cluster
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

no_prefetch_cluster.for.body_crit_edge:           ; preds = %no_prefetch_cluster
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.end:                                          ; preds = %no_prefetch_cluster.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @kfree(ptr noundef %work) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_bufio_prefetch(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @verity_fec_status_table(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_limits_io_min(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_register_target(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #15

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #16

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

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

declare void @__asan_handle_no_return()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #17 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 106)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #17 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 106)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { cold noreturn null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #15 = { argmemonly nofree nounwind readonly willreturn }
attributes #16 = { nounwind }
attributes #17 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #18 = { nomerge }
attributes #19 = { cold nounwind }
attributes #20 = { nobuiltin nounwind }
attributes #21 = { nobuiltin }
attributes #22 = { cold noreturn nounwind }
attributes #23 = { nounwind allocsize(2) }
attributes #24 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !18, !19, !21, !23, !24, !25, !26, !27, !29, !30, !32, !33, !34, !35, !37, !39, !41, !43, !44, !45, !46, !47, !48, !50, !51, !52, !54, !56, !58, !60, !61, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !99, !100, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !154, !155, !156, !157, !159, !160, !161, !162, !164, !165, !167, !168, !169, !170, !172, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195, !197, !199, !201, !203, !205, !207, !209, !211, !213, !215, !217, !219, !220, !221}
!llvm.module.flags = !{!222, !223, !224, !225, !226, !227, !228, !229}
!llvm.ident = !{!230}

!0 = !{ptr @__param_prefetch_cluster, !1, !"__param_prefetch_cluster", i1 false, i1 false}
!1 = !{!"../drivers/md/dm-verity-target.c", i32 43, i32 1}
!2 = !{ptr @__UNIQUE_ID_prefetch_clustertype267, !1, !"__UNIQUE_ID_prefetch_clustertype267", i1 false, i1 false}
!3 = !{ptr @__initcall__kmod_dm_verity__280_1342_dm_verity_init6, !4, !"__initcall__kmod_dm_verity__280_1342_dm_verity_init6", i1 false, i1 false}
!4 = !{!"../drivers/md/dm-verity-target.c", i32 1342, i32 1}
!5 = !{ptr @__exitcall_dm_verity_exit, !6, !"__exitcall_dm_verity_exit", i1 false, i1 false}
!6 = !{!"../drivers/md/dm-verity-target.c", i32 1343, i32 1}
!7 = !{ptr @__UNIQUE_ID_author281, !8, !"__UNIQUE_ID_author281", i1 false, i1 false}
!8 = !{!"../drivers/md/dm-verity-target.c", i32 1345, i32 1}
!9 = !{ptr @__UNIQUE_ID_author282, !10, !"__UNIQUE_ID_author282", i1 false, i1 false}
!10 = !{!"../drivers/md/dm-verity-target.c", i32 1346, i32 1}
!11 = !{ptr @__UNIQUE_ID_author283, !12, !"__UNIQUE_ID_author283", i1 false, i1 false}
!12 = !{!"../drivers/md/dm-verity-target.c", i32 1347, i32 1}
!13 = !{ptr @__UNIQUE_ID_description284, !14, !"__UNIQUE_ID_description284", i1 false, i1 false}
!14 = !{!"../drivers/md/dm-verity-target.c", i32 1348, i32 1}
!15 = !{ptr @__UNIQUE_ID_file285, !16, !"__UNIQUE_ID_file285", i1 false, i1 false}
!16 = !{!"../drivers/md/dm-verity-target.c", i32 1349, i32 1}
!17 = !{ptr @__UNIQUE_ID_license286, !16, !"__UNIQUE_ID_license286", i1 false, i1 false}
!18 = !{ptr @__param_str_prefetch_cluster, !1, !"__param_str_prefetch_cluster", i1 false, i1 false}
!19 = !{ptr @dm_verity_prefetch_cluster, !20, !"dm_verity_prefetch_cluster", i1 false, i1 false}
!20 = !{!"../drivers/md/dm-verity-target.c", i32 41, i32 17}
!21 = !{ptr @.str, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/md/dm-verity-target.c", i32 143, i32 3}
!23 = !{ptr @.str.1, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.2, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @verity_hash_init._entry, !22, !"_entry", i1 false, i1 false}
!26 = !{ptr @verity_hash_init._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @init_completion.__key, !28, !"__key", i1 false, i1 false}
!28 = !{!"../include/linux/completion.h", i32 87, i32 2}
!29 = !{ptr @.str.3, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.4, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/md/dm-verity-target.c", i32 162, i32 4}
!32 = !{ptr @.str.5, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @verity_hash_final._entry, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @verity_hash_final._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!35 = distinct !{null, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/md/dm-verity-target.c", i32 219, i32 25}
!37 = !{ptr @.str.7, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/md/dm-verity-target.c", i32 232, i32 14}
!39 = !{ptr @.str.8, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/md/dm-verity-target.c", i32 235, i32 14}
!41 = !{ptr @.str.9, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/md/dm-verity-target.c", i32 241, i32 2}
!43 = !{ptr @verity_handle_err._rs, !42, !"_rs", i1 false, i1 false}
!44 = !{ptr @__func__.verity_handle_err, !42, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.10, !42, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @verity_handle_err._entry, !42, !"_entry", i1 false, i1 false}
!47 = !{ptr @verity_handle_err._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.12, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/md/dm-verity-target.c", i32 245, i32 3}
!50 = !{ptr @verity_handle_err._entry.11, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @verity_handle_err._entry_ptr.13, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.14, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/md/dm-verity-target.c", i32 247, i32 45}
!54 = !{ptr @.str.15, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/md/dm-verity-target.c", i32 248, i32 3}
!56 = !{ptr @.str.16, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/md/dm-verity-target.c", i32 257, i32 18}
!58 = distinct !{null, !59, !"__already_done", i1 false, i1 false}
!59 = !{!"../include/linux/bvec.h", i32 106, i32 6}
!60 = !{ptr @.str.17, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @.str.18, !59, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @.str.19, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/md/dm-verity-target.c", i32 1314, i32 11}
!64 = !{ptr @verity_target, !65, !"verity_target", i1 false, i1 false}
!65 = !{!"../drivers/md/dm-verity-target.c", i32 1313, i32 27}
!66 = !{ptr @.str.20, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/md/dm-verity-target.c", i32 1066, i32 15}
!68 = !{ptr @.str.21, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/md/dm-verity-target.c", i32 1077, i32 15}
!70 = !{ptr @.str.22, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/md/dm-verity-target.c", i32 1083, i32 15}
!72 = !{ptr @.str.23, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/md/dm-verity-target.c", i32 1088, i32 22}
!74 = !{ptr @.str.24, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/md/dm-verity-target.c", i32 1090, i32 15}
!76 = !{ptr @.str.25, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/md/dm-verity-target.c", i32 1098, i32 15}
!78 = !{ptr @.str.26, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/md/dm-verity-target.c", i32 1104, i32 15}
!80 = !{ptr @.str.27, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/md/dm-verity-target.c", i32 1112, i32 15}
!82 = !{ptr @.str.28, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/md/dm-verity-target.c", i32 1122, i32 15}
!84 = !{ptr @.str.29, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/md/dm-verity-target.c", i32 1128, i32 22}
!86 = !{ptr @.str.30, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/md/dm-verity-target.c", i32 1131, i32 15}
!88 = !{ptr @.str.31, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/md/dm-verity-target.c", i32 1138, i32 15}
!90 = !{ptr @.str.32, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/md/dm-verity-target.c", i32 1146, i32 15}
!92 = !{ptr @.str.33, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/md/dm-verity-target.c", i32 1154, i32 15}
!94 = !{ptr @.str.34, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/md/dm-verity-target.c", i32 1161, i32 15}
!96 = !{ptr @.str.35, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/md/dm-verity-target.c", i32 1172, i32 2}
!98 = !{ptr @.str.36, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @verity_ctr._entry, !97, !"_entry", i1 false, i1 false}
!100 = !{ptr @verity_ctr._entry_ptr, !97, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.37, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/md/dm-verity-target.c", i32 1177, i32 15}
!103 = !{ptr @.str.38, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/md/dm-verity-target.c", i32 1186, i32 15}
!105 = !{ptr @.str.39, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/md/dm-verity-target.c", i32 1192, i32 15}
!107 = !{ptr @.str.40, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/md/dm-verity-target.c", i32 1198, i32 22}
!109 = !{ptr @.str.41, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/md/dm-verity-target.c", i32 1202, i32 16}
!111 = !{ptr @.str.42, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/md/dm-verity-target.c", i32 1208, i32 16}
!113 = !{ptr @.str.43, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/md/dm-verity-target.c", i32 1233, i32 15}
!115 = !{ptr @.str.44, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/md/dm-verity-target.c", i32 1247, i32 15}
!117 = !{ptr @.str.45, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/md/dm-verity-target.c", i32 1259, i32 16}
!119 = !{ptr @.str.46, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/md/dm-verity-target.c", i32 1271, i32 15}
!121 = !{ptr @.str.47, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/md/dm-verity-target.c", i32 1278, i32 15}
!123 = !{ptr @.str.48, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/md/dm-verity-target.c", i32 1284, i32 33}
!125 = !{ptr @.str.49, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/md/dm-verity-target.c", i32 1286, i32 15}
!127 = !{ptr @.str.50, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/md/dm-verity-target.c", i32 979, i32 27}
!129 = !{ptr @verity_parse_opt_args._args, !130, !"_args", i1 false, i1 false}
!130 = !{!"../drivers/md/dm-verity-target.c", i32 978, i32 29}
!131 = !{ptr @.str.51, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/md/dm-verity-target.c", i32 996, i32 17}
!133 = !{ptr @.str.52, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/md/dm-verity-target.c", i32 1001, i32 36}
!135 = !{ptr @.str.53, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/md/dm-verity-target.c", i32 1004, i32 17}
!137 = !{ptr @.str.54, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/md/dm-verity-target.c", i32 1009, i32 36}
!139 = !{ptr @.str.55, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/md/dm-verity-target.c", i32 1030, i32 15}
!141 = !{ptr @.str.56, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/md/dm-verity-target.c", i32 950, i32 32}
!143 = !{ptr @.str.57, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/md/dm-verity-target.c", i32 951, i32 25}
!145 = !{ptr @.str.58, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/md/dm-verity-target.c", i32 952, i32 25}
!147 = !{ptr @.str.59, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/md/dm-verity-target.c", i32 902, i32 15}
!149 = !{ptr @.str.60, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/md/dm-verity-target.c", i32 910, i32 15}
!151 = !{ptr @verity_map._rs, !152, !"_rs", i1 false, i1 false}
!152 = !{!"../drivers/md/dm-verity-target.c", i32 681, i32 3}
!153 = !{ptr @__func__.verity_map, !152, !"<string literal>", i1 false, i1 false}
!154 = !{ptr @.str.61, !152, !"<string literal>", i1 false, i1 false}
!155 = !{ptr @verity_map._entry, !152, !"_entry", i1 false, i1 false}
!156 = !{ptr @verity_map._entry_ptr, !152, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @verity_map._rs.62, !158, !"_rs", i1 false, i1 false}
!158 = !{!"../drivers/md/dm-verity-target.c", i32 687, i32 3}
!159 = !{ptr @.str.64, !158, !"<string literal>", i1 false, i1 false}
!160 = !{ptr @verity_map._entry.63, !158, !"_entry", i1 false, i1 false}
!161 = !{ptr @verity_map._entry_ptr.65, !158, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @verity_end_io.__key, !163, !"__key", i1 false, i1 false}
!163 = !{!"../drivers/md/dm-verity-target.c", i32 592, i32 2}
!164 = !{ptr @.str.66, !163, !"<string literal>", i1 false, i1 false}
!165 = !{ptr @.str.67, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/md/dm-verity-target.c", i32 401, i32 4}
!167 = !{ptr @.str.68, !166, !"<string literal>", i1 false, i1 false}
!168 = !{ptr @verity_for_io_block._entry, !166, !"_entry", i1 false, i1 false}
!169 = !{ptr @verity_for_io_block._entry_ptr, !166, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @verity_submit_prefetch.__key, !171, !"__key", i1 false, i1 false}
!171 = !{!"../drivers/md/dm-verity-target.c", i32 660, i32 2}
!172 = !{ptr @.str.69, !171, !"<string literal>", i1 false, i1 false}
!173 = !{ptr @.str.70, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/md/dm-verity-target.c", i32 726, i32 3}
!175 = !{ptr @.str.71, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/md/dm-verity-target.c", i32 729, i32 3}
!177 = !{ptr @.str.72, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/md/dm-verity-target.c", i32 740, i32 4}
!179 = !{ptr @.str.73, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/md/dm-verity-target.c", i32 741, i32 3}
!181 = !{ptr @.str.74, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/md/dm-verity-target.c", i32 759, i32 3}
!183 = !{ptr @.str.75, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/md/dm-verity-target.c", i32 777, i32 4}
!185 = !{ptr @.str.76, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/md/dm-verity-target.c", i32 779, i32 4}
!187 = !{ptr @.str.77, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/md/dm-verity-target.c", i32 782, i32 4}
!189 = !{ptr @.str.78, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/md/dm-verity-target.c", i32 787, i32 3}
!191 = !{ptr @.str.79, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/md/dm-verity-target.c", i32 788, i32 3}
!193 = !{ptr @.str.80, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/md/dm-verity-target.c", i32 789, i32 3}
!195 = !{ptr @.str.81, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/md/dm-verity-target.c", i32 790, i32 3}
!197 = !{ptr @.str.82, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/md/dm-verity-target.c", i32 791, i32 3}
!199 = !{ptr @.str.83, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/md/dm-verity-target.c", i32 792, i32 3}
!201 = !{ptr @.str.84, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/md/dm-verity-target.c", i32 794, i32 3}
!203 = !{ptr @.str.85, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/md/dm-verity-target.c", i32 798, i32 3}
!205 = !{ptr @.str.86, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/md/dm-verity-target.c", i32 805, i32 3}
!207 = !{ptr @.str.87, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/md/dm-verity-target.c", i32 806, i32 3}
!209 = !{ptr @.str.88, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/md/dm-verity-target.c", i32 808, i32 4}
!211 = !{ptr @.str.89, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/md/dm-verity-target.c", i32 811, i32 4}
!213 = !{ptr @.str.90, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/md/dm-verity-target.c", i32 823, i32 5}
!215 = !{ptr @.str.91, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/md/dm-verity-target.c", i32 826, i32 3}
!217 = !{ptr @.str.92, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/md/dm-verity-target.c", i32 1332, i32 3}
!219 = !{ptr @.str.93, !218, !"<string literal>", i1 false, i1 false}
!220 = !{ptr @dm_verity_init._entry, !218, !"_entry", i1 false, i1 false}
!221 = !{ptr @dm_verity_init._entry_ptr, !218, !"_entry_ptr", i1 false, i1 false}
!222 = !{i32 1, !"wchar_size", i32 2}
!223 = !{i32 1, !"min_enum_size", i32 4}
!224 = !{i32 8, !"branch-target-enforcement", i32 0}
!225 = !{i32 8, !"sign-return-address", i32 0}
!226 = !{i32 8, !"sign-return-address-all", i32 0}
!227 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!228 = !{i32 7, !"uwtable", i32 1}
!229 = !{i32 7, !"frame-pointer", i32 2}
!230 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!231 = !{!"branch_weights", i32 1, i32 2000}
!232 = !{!"branch_weights", i32 2000, i32 1}
!233 = !{i64 2154433227, i64 2154433719, i64 2154433264, i64 2154433320, i64 2154433354, i64 2154433378, i64 2154433419, i64 2154433440, i64 2154433468, i64 2154433502}
!234 = !{i64 2154438898, i64 2154439390, i64 2154438935, i64 2154438991, i64 2154439025, i64 2154439049, i64 2154439090, i64 2154439111, i64 2154439139, i64 2154439173}
!235 = !{!"auto-init"}
!236 = !{i64 2154459273, i64 2154459767, i64 2154459310, i64 2154459366, i64 2154459400, i64 2154459424, i64 2154459465, i64 2154459486, i64 2154459514, i64 2154459548}
!237 = !{i32 0, i32 33}
!238 = !{i64 2154539221, i64 2154539715, i64 2154539258, i64 2154539314, i64 2154539348, i64 2154539372, i64 2154539413, i64 2154539434, i64 2154539462, i64 2154539496}
!239 = !{i8 0, i8 2}
