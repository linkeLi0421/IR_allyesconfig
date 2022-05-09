; ModuleID = '/llk/IR_all_yes/drivers/md/dm-crypt.c_pt.bc'
source_filename = "../drivers/md/dm-crypt.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.target_type = type { i64, ptr, ptr, [3 x i32], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.dm_arg = type { i32, i32, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.crypt_iv_operations = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.key_type = type { ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.lock_class_key }
%struct.dm_arg_set = type { i32, ptr }
%struct.dm_target = type { ptr, ptr, i64, i64, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i8 }
%struct.crypt_config = type { ptr, i64, %struct.percpu_counter, ptr, ptr, %struct.spinlock, ptr, %struct.rb_root, ptr, ptr, ptr, ptr, %union.anon.131, i64, i32, i16, i8, %union.anon.132, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, %struct.bio_set, %struct.mutex, ptr, [0 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.rb_root = type { ptr }
%union.anon.131 = type { %struct.iv_tcw_private }
%struct.iv_tcw_private = type { ptr, ptr, ptr }
%union.anon.132 = type { ptr }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.bio_list = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.crypto_ahash = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, [92 x i8], %struct.crypto_tfm }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [112 x i8], [0 x ptr] }
%struct.crypto_aead = type { i32, i32, [120 x i8], %struct.crypto_tfm }
%struct.crypto_skcipher = type { i32, [124 x i8], %struct.crypto_tfm }
%struct.crypto_alg = type { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, %struct.refcount_struct, [128 x i8], [128 x i8], ptr, %union.anon.129, ptr, ptr, ptr, ptr, %union.anon.130, [120 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%union.anon.129 = type { %struct.cipher_alg }
%struct.cipher_alg = type { i32, i32, ptr, ptr, ptr }
%union.anon.130 = type { %struct.crypto_istat_akcipher }
%struct.crypto_istat_akcipher = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%struct.block_device = type { i64, i64, ptr, i32, i8, i32, i32, ptr, ptr, ptr, %struct.device, ptr, i32, i8, ptr, i8, %struct.spinlock, ptr, ptr, i32, %struct.mutex, ptr, ptr, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.request_queue = type { ptr, ptr, %struct.percpu_ref, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, %struct.atomic_t, i32, %struct.spinlock, ptr, %struct.kobject, ptr, %struct.blk_integrity, ptr, i32, i32, i32, i32, ptr, i32, i32, ptr, ptr, %struct.timer_list, %struct.work_struct, %struct.atomic_t, ptr, %struct.list_head, [1 x i32], ptr, %struct.list_head, %struct.queue_limits, i32, i32, ptr, ptr, i32, i32, i32, %struct.mutex, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, ptr, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, i32, ptr, %struct.list_head, %struct.bio_set, ptr, ptr, ptr, i8, [5 x i64], ptr, [0 x %struct.srcu_struct] }
%struct.percpu_ref = type { i32, ptr }
%struct.blk_integrity = type { ptr, i8, i8, i8, i8 }
%struct.queue_limits = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.srcu_struct = type { [3 x %struct.srcu_node], [3 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.bio = type { ptr, ptr, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, i32, ptr, ptr, ptr, %struct.bio_issue, i64, ptr, %union.anon.65, i16, i16, %struct.atomic_t, ptr, ptr, [0 x %struct.bio_vec] }
%struct.bvec_iter = type <{ i64, i32, i32, i32 }>
%struct.bio_issue = type { i64 }
%union.anon.65 = type { ptr }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.dm_crypt_io = type { ptr, ptr, ptr, i8, %struct.work_struct, %struct.tasklet_struct, %struct.convert_context, %struct.atomic_t, i8, i64, %struct.rb_node, [20 x i8] }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.137, i32 }
%union.anon.137 = type { ptr }
%struct.convert_context = type { %struct.completion, ptr, ptr, %struct.bvec_iter, %struct.bvec_iter, i64, %struct.atomic_t, %union.anon.128 }
%union.anon.128 = type { ptr }
%struct.dm_dev = type { ptr, ptr, i32, [16 x i8] }
%struct.dm_report_zones_args = type { ptr, i64, ptr, ptr, i32, i64 }
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.xarray, ptr, ptr, ptr, ptr, i32, i32, %struct.mutex, i32, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, ptr, %struct.kobject, ptr, i32, ptr, %struct.lockdep_map, i64 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.blk_integrity_profile = type { ptr, ptr, ptr, ptr, ptr }
%struct.blk_plug = type { ptr, ptr, i16, i16, i8, i8, i8, %struct.list_head }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.89, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.20 }
%struct.llist_node = type { ptr }
%union.anon.20 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, i32, ptr, ptr, ptr, i32, [36 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [72 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr, ptr, ptr, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.uclamp_se = type { i16, [2 x i8] }
%struct.sched_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [24 x i8] }
%struct.cpumask = type { [1 x i32] }
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.22 }
%union.anon.22 = type { %struct.anon.23 }
%struct.anon.23 = type { ptr, i32, i32, i32, i64, ptr }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.sysv_sem = type { ptr }
%struct.sysv_shm = type { %struct.list_head }
%struct.sigset_t = type { [2 x i32] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.kuid_t = type { i32 }
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type {}
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.tlbflush_unmap_batch = type {}
%union.anon.89 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.key = type { %struct.refcount_struct, i32, %union.anon.29, ptr, %struct.rw_semaphore, ptr, ptr, %union.anon.30, i64, %struct.kuid_t, %struct.kgid_t, i32, i16, i16, i16, i32, %union.anon.31, %union.anon.35, ptr }
%union.anon.29 = type { %struct.rb_node }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.30 = type { i64 }
%struct.kgid_t = type { i32 }
%union.anon.31 = type { %struct.keyring_index_key }
%struct.keyring_index_key = type { i32, %union.anon.32, ptr, ptr, ptr }
%union.anon.32 = type { i32 }
%union.anon.35 = type { %union.key_payload }
%union.key_payload = type { [4 x ptr] }
%struct.dm_crypt_request = type { ptr, [4 x %struct.scatterlist], [4 x %struct.scatterlist], i64 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.crypto_wait = type { %struct.completion, i32 }
%struct.skcipher_request = type { i32, ptr, ptr, ptr, %struct.crypto_async_request, [88 x i8], [0 x ptr] }
%struct.crypto_async_request = type { %struct.list_head, ptr, ptr, ptr, i32 }
%struct.crypto_shash = type { i32, [124 x i8], %struct.crypto_tfm }
%struct.md5_state = type { [4 x i32], [16 x i32], i64 }
%struct.rtattr = type { i16, i16 }
%struct.user_key_payload = type { %struct.callback_head, i16, [6 x i8], [0 x i8] }
%struct.encrypted_key_payload = type { %struct.callback_head, ptr, ptr, ptr, ptr, ptr, i16, i16, i16, i16, ptr, [0 x i8] }
%struct.trusted_key_payload = type { %struct.callback_head, i32, i32, i8, i8, [129 x i8], [512 x i8] }
%struct.bio_integrity_payload = type { ptr, %struct.bvec_iter, i16, i16, i16, %struct.bvec_iter, %struct.work_struct, ptr, [0 x %struct.bio_vec] }
%struct.page = type { i32, %union.anon.2, %union.anon.105, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.105 = type { %struct.atomic_t }
%struct.aead_request = type { %struct.crypto_async_request, i32, i32, ptr, ptr, ptr, [84 x i8], [0 x ptr] }

@crypt_target = internal global { %struct.target_type, [40 x i8] } { %struct.target_type { i64 64, ptr @.str, ptr null, [3 x i32] [i32 1, i32 23, i32 0], ptr @crypt_ctr, ptr @crypt_dtr, ptr @crypt_map, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @crypt_postsuspend, ptr @crypt_preresume, ptr @crypt_resume, ptr @crypt_status, ptr @crypt_message, ptr null, ptr @crypt_report_zones, ptr null, ptr @crypt_iterate_devices, ptr @crypt_io_hints, ptr null, ptr null, %struct.list_head zeroinitializer }, [40 x i8] zeroinitializer }, align 32
@__initcall__kmod_dm_crypt__420_3671_dm_crypt_init6 = internal global ptr @dm_crypt_init, section ".initcall6.init", align 4
@__exitcall_dm_crypt_exit = internal global ptr @dm_crypt_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author421 = internal constant [43 x i8] c"dm_crypt.author=Jana Saout <jana@saout.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description422 = internal constant [82 x i8] c"dm_crypt.description=device-mapper target for transparent encryption / decryption\00", section ".modinfo", align 1
@__UNIQUE_ID_file423 = internal constant [34 x i8] c"dm_crypt.file=drivers/md/dm-crypt\00", section ".modinfo", align 1
@__UNIQUE_ID_license424 = internal constant [21 x i8] c"dm_crypt.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"crypt\00", [26 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Not enough arguments\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Cannot parse key size\00", [42 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Cannot allocate encryption context\00", [61 x i8] zeroinitializer }, align 32
@dm_crypt_clients_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.29, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@dm_crypt_clients_n = internal global { i32, [28 x i8] } zeroinitializer, align 32
@crypt_ctr.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Cannot allocate crypt request mempool\00", [58 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Cannot allocate page mempool\00", [35 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Cannot allocate crypt bioset\00", [35 x i8] zeroinitializer }, align 32
@crypt_ctr.__key.7 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&cc->bio_alloc_lock\00", [44 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%llu%c\00", [25 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Invalid iv_offset sector\00", [39 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Device lookup failed\00", [43 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Invalid device sector\00", [42 x i8] zeroinitializer }, align 32
@crypt_ctr.__UNIQUE_ID_ddebug413 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, i8 3, i8 62, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dm_crypt\00", [23 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"crypt_ctr\00", [22 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"drivers/md/dm-crypt.c\00", [42 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"device-mapper: crypt: Zone append operations will be emulated\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"trusted_key: device-mapper: crypt: Zone append operations will be emulated\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Cannot allocate integrity tags mempool\00", [57 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"kcryptd_io/%s\00", [18 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Couldn't create kcryptd io queue\00", [63 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"kcryptd/%s\00", [21 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Couldn't create kcryptd queue\00", [34 x i8] zeroinitializer }, align 32
@crypt_ctr.__key.23 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.24 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"&cc->write_thread_lock\00", [41 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dmcrypt_write/%s\00", [47 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Couldn't spawn write thread\00", [36 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c":\00", [30 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%u%c\00", [27 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.29 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"dm_crypt_clients_lock\00", [42 x i8] zeroinitializer }, align 32
@dm_crypt_pages_per_client = internal global { i32, [28 x i8] } zeroinitializer, align 32
@_totalram_pages = external dso_local global %struct.atomic_t, align 4
@_totalhigh_pages = external dso_local global %struct.atomic_t, align 4
@crypt_ctr_optional._args = internal constant { [1 x %struct.dm_arg], [20 x i8] } { [1 x %struct.dm_arg] [%struct.dm_arg { i32 0, i32 8, ptr @.str.30 }], [20 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Invalid number of feature args\00", [33 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Not enough feature arguments\00", [35 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"allow_discards\00", [17 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"same_cpu_crypt\00", [17 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"submit_from_crypt_cpus\00", [41 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"no_read_workqueue\00", [46 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"no_write_workqueue\00", [45 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"integrity:%u:\00", [18 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Invalid integrity arguments\00", [36 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"aead\00", [27 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"none\00", [27 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Unknown integrity profile\00", [38 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sector_size:%hu%c\00", [46 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Invalid feature value for sector_size\00", [58 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Device size is not multiple of sector_size feature\00", [45 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"iv_large_sectors\00", [47 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Invalid feature arguments\00", [38 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Cannot allocate cipher strings\00", [33 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"capi:\00", [26 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Error decoding and setting key\00", [33 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Error creating IV\00", [46 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Error initialising IV\00", [42 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Invalid AEAD cipher spec\00", [39 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"lmk\00", [28 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"essiv\00", [26 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Digest algorithm missing for ESSIV mode\00", [56 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"essiv(%s,%s)\00", [19 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Cannot allocate cipher string\00", [34 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Error allocating crypto tfm\00", [36 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"authenc(\00", [23 x i8] zeroinitializer }, align 32
@crypt_alloc_tfms_aead._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.60, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@crypt_alloc_tfms_aead.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.61, ptr @.str.15, ptr @.str.62, i8 2, i8 73, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.61 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"crypt_alloc_tfms_aead\00", [42 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"trusted_key: device-mapper: crypt: %s using implementation \22%s\22\0A\00", [63 x i8] zeroinitializer }, align 32
@crypt_alloc_tfms_skcipher._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.60, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@crypt_alloc_tfms_skcipher.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.63, ptr @.str.15, ptr @.str.62, i8 2, i8 68, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.63 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"crypt_alloc_tfms_skcipher\00", [38 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Bad cipher specification\00", [39 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"-\00", [30 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Bad cipher key count specification\00", [61 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"plain\00", [26 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"cbc\00", [28 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ecb\00", [28 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"IV mechanism required\00", [42 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"essiv(%s(%s),%s)\00", [47 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%s(%s)\00", [25 x i8] zeroinitializer }, align 32
@crypt_ctr_ivmode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.74, ptr @.str.15, i32 2766, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"\014trusted_key: device-mapper: crypt: Selected cipher does not support IVs\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"crypt_ctr_ivmode\00", [47 x i8] zeroinitializer }, align 32
@crypt_ctr_ivmode._entry_ptr = internal global ptr @crypt_ctr_ivmode._entry, section ".printk_index", align 4
@crypt_iv_plain_ops = internal constant { %struct.crypt_iv_operations, [40 x i8] } { %struct.crypt_iv_operations { ptr null, ptr null, ptr null, ptr null, ptr @crypt_iv_plain_gen, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"plain64\00", [24 x i8] zeroinitializer }, align 32
@crypt_iv_plain64_ops = internal constant { %struct.crypt_iv_operations, [40 x i8] } { %struct.crypt_iv_operations { ptr null, ptr null, ptr null, ptr null, ptr @crypt_iv_plain64_gen, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"plain64be\00", [22 x i8] zeroinitializer }, align 32
@crypt_iv_plain64be_ops = internal constant { %struct.crypt_iv_operations, [40 x i8] } { %struct.crypt_iv_operations { ptr null, ptr null, ptr null, ptr null, ptr @crypt_iv_plain64be_gen, ptr null }, [40 x i8] zeroinitializer }, align 32
@crypt_iv_essiv_ops = internal constant { %struct.crypt_iv_operations, [40 x i8] } { %struct.crypt_iv_operations { ptr null, ptr null, ptr null, ptr null, ptr @crypt_iv_essiv_gen, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"benbi\00", [26 x i8] zeroinitializer }, align 32
@crypt_iv_benbi_ops = internal constant { %struct.crypt_iv_operations, [40 x i8] } { %struct.crypt_iv_operations { ptr @crypt_iv_benbi_ctr, ptr @crypt_iv_benbi_dtr, ptr null, ptr null, ptr @crypt_iv_benbi_gen, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"null\00", [27 x i8] zeroinitializer }, align 32
@crypt_iv_null_ops = internal constant { %struct.crypt_iv_operations, [40 x i8] } { %struct.crypt_iv_operations { ptr null, ptr null, ptr null, ptr null, ptr @crypt_iv_null_gen, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"eboiv\00", [26 x i8] zeroinitializer }, align 32
@crypt_iv_eboiv_ops = internal constant { %struct.crypt_iv_operations, [40 x i8] } { %struct.crypt_iv_operations { ptr @crypt_iv_eboiv_ctr, ptr null, ptr null, ptr null, ptr @crypt_iv_eboiv_gen, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"elephant\00", [23 x i8] zeroinitializer }, align 32
@crypt_iv_elephant_ops = internal constant { %struct.crypt_iv_operations, [40 x i8] } { %struct.crypt_iv_operations { ptr @crypt_iv_elephant_ctr, ptr @crypt_iv_elephant_dtr, ptr @crypt_iv_elephant_init, ptr @crypt_iv_elephant_wipe, ptr @crypt_iv_elephant_gen, ptr @crypt_iv_elephant_post }, [40 x i8] zeroinitializer }, align 32
@crypt_iv_lmk_ops = internal constant { %struct.crypt_iv_operations, [40 x i8] } { %struct.crypt_iv_operations { ptr @crypt_iv_lmk_ctr, ptr @crypt_iv_lmk_dtr, ptr @crypt_iv_lmk_init, ptr @crypt_iv_lmk_wipe, ptr @crypt_iv_lmk_gen, ptr @crypt_iv_lmk_post }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"tcw\00", [28 x i8] zeroinitializer }, align 32
@crypt_iv_tcw_ops = internal constant { %struct.crypt_iv_operations, [40 x i8] } { %struct.crypt_iv_operations { ptr @crypt_iv_tcw_ctr, ptr @crypt_iv_tcw_dtr, ptr @crypt_iv_tcw_init, ptr @crypt_iv_tcw_wipe, ptr @crypt_iv_tcw_gen, ptr @crypt_iv_tcw_post }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"random\00", [25 x i8] zeroinitializer }, align 32
@crypt_iv_random_ops = internal constant { %struct.crypt_iv_operations, [40 x i8] } { %struct.crypt_iv_operations { ptr null, ptr null, ptr null, ptr null, ptr @crypt_iv_random_gen, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Invalid IV mode\00", [16 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"cypher blocksize is not a power of 2\00", [59 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"cypher blocksize is > 512\00", [38 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"AEAD transforms not supported for EBOIV\00", [56 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"Block size of EBOIV cipher does not match IV size of block cipher\00", [62 x i8] zeroinitializer }, align 32
@empty_zero_page = external dso_local local_unnamed_addr global ptr, align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.88 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ecb(aes)\00", [23 x i8] zeroinitializer }, align 32
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@.str.90 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Unsupported sector size for LMK\00", [32 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"md5\00", [28 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Error initializing LMK hash\00", [36 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Error kmallocing seed storage in LMK\00", [59 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Unsupported sector size for TCW\00", [32 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Wrong key size for TCW\00", [41 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"crc32\00", [26 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Error initializing CRC32 in TCW\00", [32 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Error allocating seed storage in TCW\00", [59 x i8] zeroinitializer }, align 32
@crypt_set_keyring_key._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.100, ptr @.str.15, i32 2496, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"\013trusted_key: device-mapper: crypt: whitespace chars not allowed in key string\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"crypt_set_keyring_key\00", [42 x i8] zeroinitializer }, align 32
@crypt_set_keyring_key._entry_ptr = internal global ptr @crypt_set_keyring_key._entry, section ".printk_index", align 4
@.str.101 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"logon:\00", [25 x i8] zeroinitializer }, align 32
@key_type_logon = external dso_local global %struct.key_type, align 4
@.str.102 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"user:\00", [26 x i8] zeroinitializer }, align 32
@key_type_user = external dso_local global %struct.key_type, align 4
@.str.103 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"encrypted:\00", [21 x i8] zeroinitializer }, align 32
@key_type_encrypted = external dso_local global %struct.key_type, align 4
@.str.104 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"trusted:\00", [23 x i8] zeroinitializer }, align 32
@key_type_trusted = external dso_local global %struct.key_type, align 4
@_ctype = external dso_local local_unnamed_addr constant [0 x i8], align 1
@user_key_payload_locked.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.105 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/keys/user-type.h\00", [39 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@percpu_counter_batch = external dso_local local_unnamed_addr global i32, align 4
@.str.108 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"DM-DIF-EXT-TAG\00", [17 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Integrity profile not supported.\00", [63 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Integrity profile tag size mismatch.\00", [59 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Integrity profile sector size mismatch.\00", [56 x i8] zeroinitializer }, align 32
@crypt_integrity_ctr.__UNIQUE_ID_ddebug387 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.112, ptr @.str.15, ptr @.str.113, i8 1, i8 41, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.112 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"crypt_integrity_ctr\00", [44 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"device-mapper: crypt: %s: Integrity AEAD, tag size %u, IV size %u.\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"trusted_key: device-mapper: crypt: %s: Integrity AEAD, tag size %u, IV size %u.\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Integrity AEAD auth tag size is not supported.\00", [49 x i8] zeroinitializer }, align 32
@crypt_integrity_ctr.__UNIQUE_ID_ddebug388 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.112, ptr @.str.15, ptr @.str.116, i8 1, i8 43, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.116 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"device-mapper: crypt: %s: Additional per-sector space %u bytes for IV.\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [85 x i8], [43 x i8] } { [85 x i8] c"trusted_key: device-mapper: crypt: %s: Additional per-sector space %u bytes for IV.\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Not enough space for integrity tag in the profile.\00", [45 x i8] zeroinitializer }, align 32
@__num_online_cpus = external dso_local global %struct.atomic_t, align 4
@.str.121 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ctr\00", [28 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dtr\00", [28 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@crypt_dec_pending.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.123 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"(work_completion)(&io->work)\00", [35 x i8] zeroinitializer }, align 32
@kcryptd_queue_read.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@kcryptd_queue_crypt.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@kcryptd_crypt_read_convert.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@kcryptd_async_done._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.60, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.kcryptd_async_done = private unnamed_addr constant [19 x i8] c"kcryptd_async_done\00", align 1
@kcryptd_async_done._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.124, ptr @__func__.kcryptd_async_done, ptr @.str.15, i32 2186, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"\013trusted_key: device-mapper: crypt: %s: INTEGRITY AEAD ERROR, sector %llu\0A\00", [52 x i8] zeroinitializer }, align 32
@kcryptd_async_done._entry_ptr = internal global ptr @kcryptd_async_done._entry, section ".printk_index", align 4
@.str.125 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"integrity-aead\00", [17 x i8] zeroinitializer }, align 32
@crypt_convert_block_aead._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.60, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.crypt_convert_block_aead = private unnamed_addr constant [25 x i8] c"crypt_convert_block_aead\00", align 1
@crypt_convert_block_aead._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.124, ptr @__func__.crypt_convert_block_aead, ptr @.str.15, i32 1371, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@crypt_convert_block_aead._entry_ptr = internal global ptr @crypt_convert_block_aead._entry, section ".printk_index", align 4
@high_memory = external dso_local local_unnamed_addr global ptr, align 4
@bvec_iter_advance.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.126 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"include/linux/bvec.h\00", [43 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Attempted to advance past end of bvec iter\0A\00", [52 x i8] zeroinitializer }, align 32
@kcryptd_crypt_write_convert.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@crypt_preresume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.128, ptr @.str.129, ptr @.str.15, i32 3551, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"\013trusted_key: device-mapper: crypt: aborting resume - crypt key is not set.\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"crypt_preresume\00", [16 x i8] zeroinitializer }, align 32
@crypt_preresume._entry_ptr = internal global ptr @crypt_preresume._entry, section ".printk_index", align 4
@.str.130 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s \00", [28 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c":%u:%s\00", [25 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%02x\00", [27 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c" %llu %s %llu\00", [18 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c" %d\00", [28 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c" allow_discards\00", [16 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c" same_cpu_crypt\00", [16 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c" submit_from_crypt_cpus\00", [40 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c" no_read_workqueue\00", [45 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c" no_write_workqueue\00", [44 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c" integrity:%u:%s\00", [47 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c" sector_size:%d\00", [16 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c" iv_large_sectors\00", [46 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"target_name=%s,target_version=%u.%u.%u\00", [57 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c",allow_discards=%c\00", [45 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c",same_cpu_crypt=%c\00", [45 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c",submit_from_crypt_cpus=%c\00", [37 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c",no_read_workqueue=%c\00", [42 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c",no_write_workqueue=%c\00", [41 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c",iv_large_sectors=%c\00", [43 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c",integrity_tag_size=%u,cipher_auth=%s\00", [58 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c",sector_size=%d\00", [16 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c",cipher_string=%s\00", [46 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c",key_size=%u\00", [19 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c",key_parts=%u\00", [18 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c",key_extra_size=%u\00", [45 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c",key_mac_size=%u\00", [47 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c";\00", [30 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"key\00", [28 x i8] zeroinitializer }, align 32
@crypt_message._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.160, ptr @.str.15, i32 3580, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"\014trusted_key: device-mapper: crypt: not suspended during key manipulation.\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"crypt_message\00", [18 x i8] zeroinitializer }, align 32
@crypt_message._entry_ptr = internal global ptr @crypt_message._entry, section ".printk_index", align 4
@.str.161 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"set\00", [28 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"wipe\00", [27 x i8] zeroinitializer }, align 32
@crypt_message._entry.163 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.164, ptr @.str.160, ptr @.str.15, i32 3606, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\014trusted_key: device-mapper: crypt: unrecognised message received.\0A\00", [59 x i8] zeroinitializer }, align 32
@crypt_message._entry_ptr.165 = internal global ptr @crypt_message._entry.163, section ".printk_index", align 4
@dm_crypt_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.166, ptr @.str.167, ptr @.str.15, i32 3661, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013trusted_key: device-mapper: crypt: register failed %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"dm_crypt_init\00", [18 x i8] zeroinitializer }, align 32
@dm_crypt_init._entry_ptr = internal global ptr @dm_crypt_init._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.168 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.169 = internal global [4 x i64] [i64 2, i64 32, i64 4294967181, i64 4294967280]
@__sancov_gen_cov_switch_values.170 = internal global [4 x i64] [i64 2, i64 32, i64 4294967181, i64 4294967280]
@__sancov_gen_cov_switch_values.171 = internal global [4 x i64] [i64 2, i64 32, i64 4294967181, i64 4294967280]
@__sancov_gen_cov_switch_values.172 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 13]
@__sancov_gen_cov_switch_values.173 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 13]
@__sancov_gen_cov_switch_values.174 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 7, i64 9]
@__sancov_gen_cov_switch_values.175 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967222]
@__sancov_gen_cov_switch_values.176 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 4294967181, i64 4294967222, i64 4294967280]
@__sancov_gen_cov_switch_values.177 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967181]
@__sancov_gen_cov_switch_values.178 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 7, i64 9]
@__sancov_gen_cov_switch_values.179 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 7, i64 9]
@___asan_gen_.180 = private unnamed_addr constant [13 x i8] c"crypt_target\00", align 1
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 3637, i32 27 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 3638, i32 12 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 3184, i32 15 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 3190, i32 15 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 3196, i32 15 }
@___asan_gen_.195 = private unnamed_addr constant [22 x i8] c"dm_crypt_clients_lock\00", align 1
@___asan_gen_.198 = private unnamed_addr constant [19 x i8] c"dm_crypt_clients_n\00", align 1
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 232, i32 17 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 3210, i32 8 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 3258, i32 15 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 3268, i32 15 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 3274, i32 15 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 3278, i32 2 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 3281, i32 23 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 3283, i32 15 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 3290, i32 15 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 3296, i32 15 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 3321, i32 3 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 3337, i32 16 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 3345, i32 33 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 3347, i32 15 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 3352, i32 37 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 3359, i32 15 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 3363, i32 2 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 3366, i32 21 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 3370, i32 15 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 2570, i32 35 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 2574, i32 30 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 231, i32 8 }
@___asan_gen_.282 = private unnamed_addr constant [26 x i8] c"dm_crypt_pages_per_client\00", align 1
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 233, i32 31 }
@___asan_gen_.285 = private unnamed_addr constant [6 x i8] c"_args\00", align 1
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 3079, i32 29 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 3080, i32 10 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 3098, i32 16 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 3102, i32 31 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 3105, i32 36 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 3108, i32 36 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 3110, i32 36 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 3112, i32 36 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 3114, i32 31 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 3116, i32 17 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 3121, i32 26 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 3123, i32 33 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 3124, i32 17 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 3131, i32 33 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 3135, i32 17 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 3139, i32 17 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 3143, i32 38 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 3146, i32 16 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 3027, i32 15 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 3031, i32 27 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 3046, i32 15 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 3054, i32 16 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 3063, i32 16 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 2895, i32 16 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 2900, i32 34 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 2903, i32 34 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 2905, i32 16 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 2908, i32 44 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 2911, i32 16 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 2922, i32 15 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 2832, i32 29 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 2341, i32 2 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 2320, i32 2 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 2944, i32 15 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 2953, i32 26 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 2960, i32 15 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 2973, i32 40 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 2974, i32 15 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 2978, i32 24 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 2979, i32 15 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 2994, i32 11 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 2997, i32 11 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 2766, i32 3 }
@___asan_gen_.432 = private unnamed_addr constant [19 x i8] c"crypt_iv_plain_ops\00", align 1
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 1053, i32 41 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 2775, i32 26 }
@___asan_gen_.438 = private unnamed_addr constant [21 x i8] c"crypt_iv_plain64_ops\00", align 1
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 1057, i32 41 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 2777, i32 26 }
@___asan_gen_.444 = private unnamed_addr constant [23 x i8] c"crypt_iv_plain64be_ops\00", align 1
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 1061, i32 41 }
@___asan_gen_.447 = private unnamed_addr constant [19 x i8] c"crypt_iv_essiv_ops\00", align 1
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 1065, i32 41 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 2781, i32 26 }
@___asan_gen_.453 = private unnamed_addr constant [19 x i8] c"crypt_iv_benbi_ops\00", align 1
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 1069, i32 41 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 2783, i32 26 }
@___asan_gen_.459 = private unnamed_addr constant [18 x i8] c"crypt_iv_null_ops\00", align 1
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 1075, i32 41 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 2785, i32 26 }
@___asan_gen_.465 = private unnamed_addr constant [19 x i8] c"crypt_iv_eboiv_ops\00", align 1
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 1101, i32 41 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 2787, i32 26 }
@___asan_gen_.471 = private unnamed_addr constant [22 x i8] c"crypt_iv_elephant_ops\00", align 1
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 1106, i32 41 }
@___asan_gen_.474 = private unnamed_addr constant [17 x i8] c"crypt_iv_lmk_ops\00", align 1
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 1079, i32 41 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 2806, i32 28 }
@___asan_gen_.480 = private unnamed_addr constant [17 x i8] c"crypt_iv_tcw_ops\00", align 1
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 1088, i32 41 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 2810, i32 28 }
@___asan_gen_.486 = private unnamed_addr constant [20 x i8] c"crypt_iv_random_ops\00", align 1
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 1097, i32 41 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 2815, i32 15 }
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 370, i32 15 }
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 375, i32 15 }
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 729, i32 15 }
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 734, i32 15 }
@___asan_gen_.508 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 87, i32 2 }
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 782, i32 40 }
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 427, i32 15 }
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 431, i32 37 }
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 434, i32 15 }
@___asan_gen_.524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 447, i32 15 }
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 585, i32 15 }
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 590, i32 15 }
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 594, i32 38 }
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 597, i32 15 }
@___asan_gen_.539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 605, i32 15 }
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 2496, i32 3 }
@___asan_gen_.551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 2505, i32 27 }
@___asan_gen_.554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 2508, i32 34 }
@___asan_gen_.557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 2512, i32 27 }
@___asan_gen_.560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 2516, i32 34 }
@___asan_gen_.565 = private unnamed_addr constant [28 x i8] c"../include/keys/user-type.h\00", align 1
@___asan_gen_.566 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 53, i32 36 }
@___asan_gen_.569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 1171, i32 43 }
@___asan_gen_.572 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 1172, i32 15 }
@___asan_gen_.575 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 1178, i32 15 }
@___asan_gen_.578 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 1182, i32 15 }
@___asan_gen_.587 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 1188, i32 3 }
@___asan_gen_.590 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 1192, i32 16 }
@___asan_gen_.596 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 1196, i32 3 }
@___asan_gen_.599 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 1200, i32 15 }
@___asan_gen_.602 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 30, i32 48 }
@___asan_gen_.604 = private unnamed_addr constant [25 x i8] c"../drivers/md/dm-audit.h\00", align 1
@___asan_gen_.605 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 36, i32 48 }
@___asan_gen_.611 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 1784, i32 2 }
@___asan_gen_.614 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 1886, i32 2 }
@___asan_gen_.617 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 2251, i32 2 }
@___asan_gen_.620 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 2147, i32 3 }
@___asan_gen_.629 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 2185, i32 3 }
@___asan_gen_.632 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 2187, i32 35 }
@___asan_gen_.633 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.638 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 1370, i32 3 }
@___asan_gen_.643 = private unnamed_addr constant [24 x i8] c"../include/linux/bvec.h\00", align 1
@___asan_gen_.644 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.643, i32 106, i32 6 }
@___asan_gen_.645 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.647 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 2083, i32 3 }
@___asan_gen_.656 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 3551, i32 3 }
@___asan_gen_.659 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 3465, i32 3 }
@___asan_gen_.662 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 3469, i32 5 }
@___asan_gen_.665 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 3472, i32 6 }
@___asan_gen_.668 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 3476, i32 3 }
@___asan_gen_.671 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 3489, i32 4 }
@___asan_gen_.674 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 3491, i32 5 }
@___asan_gen_.677 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 3493, i32 5 }
@___asan_gen_.680 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 3495, i32 5 }
@___asan_gen_.683 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 3497, i32 5 }
@___asan_gen_.686 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 3499, i32 5 }
@___asan_gen_.689 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 3501, i32 5 }
@___asan_gen_.692 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 3503, i32 5 }
@___asan_gen_.695 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 3505, i32 5 }
@___asan_gen_.698 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 3510, i32 3 }
@___asan_gen_.701 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 3511, i32 3 }
@___asan_gen_.704 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 3512, i32 3 }
@___asan_gen_.707 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 3513, i32 3 }
@___asan_gen_.710 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 3515, i32 3 }
@___asan_gen_.713 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 3517, i32 3 }
@___asan_gen_.716 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 3519, i32 3 }
@___asan_gen_.719 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 3523, i32 4 }
@___asan_gen_.722 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 3526, i32 4 }
@___asan_gen_.725 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 3528, i32 4 }
@___asan_gen_.728 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 3530, i32 3 }
@___asan_gen_.731 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 3531, i32 3 }
@___asan_gen_.734 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 3532, i32 3 }
@___asan_gen_.737 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 3533, i32 3 }
@___asan_gen_.740 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 3534, i32 3 }
@___asan_gen_.743 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 3578, i32 27 }
@___asan_gen_.752 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 3580, i32 4 }
@___asan_gen_.755 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 3583, i32 41 }
@___asan_gen_.758 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 3601, i32 41 }
@___asan_gen_.764 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 3606, i32 2 }
@___asan_gen_.765 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.771 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.772 = private constant [25 x i8] c"../drivers/md/dm-crypt.c\00", align 1
@___asan_gen_.773 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 3661, i32 3 }
@llvm.compiler.used = appending global [213 x ptr] [ptr @__UNIQUE_ID_author421, ptr @__UNIQUE_ID_description422, ptr @__UNIQUE_ID_file423, ptr @__UNIQUE_ID_license424, ptr @__exitcall_dm_crypt_exit, ptr @__initcall__kmod_dm_crypt__420_3671_dm_crypt_init6, ptr @crypt_convert_block_aead._entry, ptr @crypt_convert_block_aead._entry_ptr, ptr @crypt_ctr_ivmode._entry, ptr @crypt_ctr_ivmode._entry_ptr, ptr @crypt_message._entry, ptr @crypt_message._entry.163, ptr @crypt_message._entry_ptr, ptr @crypt_message._entry_ptr.165, ptr @crypt_preresume._entry, ptr @crypt_preresume._entry_ptr, ptr @crypt_set_keyring_key._entry, ptr @crypt_set_keyring_key._entry_ptr, ptr @dm_crypt_exit, ptr @dm_crypt_init._entry, ptr @dm_crypt_init._entry_ptr, ptr @kcryptd_async_done._entry, ptr @kcryptd_async_done._entry_ptr, ptr @crypt_target, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @dm_crypt_clients_lock, ptr @dm_crypt_clients_n, ptr @crypt_ctr.__key, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @crypt_ctr.__key.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @crypt_ctr.__key.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @dm_crypt_pages_per_client, ptr @crypt_ctr_optional._args, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @crypt_alloc_tfms_aead._rs, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @crypt_alloc_tfms_skcipher._rs, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @crypt_iv_plain_ops, ptr @.str.75, ptr @crypt_iv_plain64_ops, ptr @.str.76, ptr @crypt_iv_plain64be_ops, ptr @crypt_iv_essiv_ops, ptr @.str.77, ptr @crypt_iv_benbi_ops, ptr @.str.78, ptr @crypt_iv_null_ops, ptr @.str.79, ptr @crypt_iv_eboiv_ops, ptr @.str.80, ptr @crypt_iv_elephant_ops, ptr @crypt_iv_lmk_ops, ptr @.str.81, ptr @crypt_iv_tcw_ops, ptr @.str.82, ptr @crypt_iv_random_ops, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @init_completion.__key, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.121, ptr @.str.122, ptr @crypt_dec_pending.__key, ptr @.str.123, ptr @kcryptd_queue_read.__key, ptr @kcryptd_queue_crypt.__key, ptr @kcryptd_crypt_read_convert.__key, ptr @kcryptd_async_done._rs, ptr @.str.124, ptr @.str.125, ptr @crypt_convert_block_aead._rs, ptr @.str.126, ptr @.str.127, ptr @kcryptd_crypt_write_convert.__key, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.164, ptr @.str.166, ptr @.str.167], section "llvm.metadata"
@0 = internal global [198 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @crypt_target to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm_crypt_clients_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm_crypt_clients_n to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @crypt_ctr.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @crypt_ctr.__key.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @crypt_ctr.__key.23 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm_crypt_pages_per_client to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @crypt_ctr_optional._args to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @crypt_alloc_tfms_aead._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @crypt_alloc_tfms_skcipher._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @crypt_ctr_ivmode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @crypt_iv_plain_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @crypt_iv_plain64_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @crypt_iv_plain64be_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @crypt_iv_essiv_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @crypt_iv_benbi_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @crypt_iv_null_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @crypt_iv_eboiv_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @crypt_iv_elephant_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @crypt_iv_lmk_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @crypt_iv_tcw_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @crypt_iv_random_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @crypt_set_keyring_key._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 85, i32 128, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @crypt_dec_pending.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kcryptd_queue_read.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kcryptd_queue_crypt.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kcryptd_crypt_read_convert.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kcryptd_async_done._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kcryptd_async_done._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @crypt_convert_block_aead._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @crypt_convert_block_aead._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kcryptd_crypt_write_convert.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @crypt_preresume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @crypt_message._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @crypt_message._entry.163 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm_crypt_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @dm_crypt_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  tail call void @dm_unregister_target(ptr noundef nonnull @crypt_target) #20
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_unregister_target(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @dm_crypt_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @dm_register_target(ptr noundef nonnull @crypt_target) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.166, i32 noundef %call) #23
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @crypt_ctr(ptr noundef %ti, i32 noundef %argc, ptr noundef %argv) #2 align 64 {
entry:
  %tmp.i.i = alloca ptr, align 4
  %keycount.i.i = alloca ptr, align 4
  %dummy.i.i = alloca i8, align 1
  %buf.i.i = alloca [128 x i8], align 1
  %as.i = alloca %struct.dm_arg_set, align 4
  %opt_params.i = alloca i32, align 4
  %val.i = alloca i32, align 4
  %dummy.i319 = alloca i8, align 1
  %dummy.i = alloca i8, align 1
  %ret.i = alloca i32, align 4
  %tmpll = alloca i64, align 8
  %dummy = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ti to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ti, align 8
  %call = tail call ptr @dm_table_device_name(ptr noundef %1) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmpll) #20
  %2 = ptrtoint ptr %tmpll to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -1, ptr %tmpll, align 8, !annotation !410
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %dummy) #20
  %3 = ptrtoint ptr %dummy to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %dummy, align 1, !annotation !410
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %argc)
  %cmp = icmp ult i32 %argc, 5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  %error = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 12
  %4 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @.str.1, ptr %error, align 8
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr ptr, ptr %argv, i32 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %dummy.i) #20
  %5 = ptrtoint ptr %dummy.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -1, ptr %dummy.i, align 1, !annotation !410
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ret.i) #20
  %6 = ptrtoint ptr %ret.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %ret.i, align 4, !annotation !410
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %8, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 58, i8 %10)
  %cmp.not.i = icmp eq i8 %10, 58
  br i1 %cmp.not.i, label %if.end.i, label %get_key_size.exit.thread357

get_key_size.exit.thread357:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  %call.i = tail call i32 @strlen(ptr noundef %8) #24
  %shr.i315 = lshr i32 %call.i, 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret.i) #20
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %dummy.i) #20
  br label %if.end8.i.i

if.end.i:                                         ; preds = %if.end
  %add.ptr.i = getelementptr i8, ptr %8, i32 1
  %strchr.i = tail call ptr @strchr(ptr %add.ptr.i, i32 58) #20
  %tobool.not.i = icmp eq ptr %strchr.i, null
  br i1 %tobool.not.i, label %if.end.i.get_key_size.exit.thread_crit_edge, label %if.end4.i

if.end.i.get_key_size.exit.thread_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %get_key_size.exit.thread

if.end4.i:                                        ; preds = %if.end.i
  %call6.i = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %add.ptr.i, ptr noundef nonnull @.str.28, ptr noundef nonnull %ret.i, ptr noundef nonnull %dummy.i) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call6.i)
  %cmp7.not.i = icmp eq i32 %call6.i, 2
  br i1 %cmp7.not.i, label %lor.lhs.false.i, label %if.end4.i.get_key_size.exit.thread_crit_edge

if.end4.i.get_key_size.exit.thread_crit_edge:     ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %get_key_size.exit.thread

lor.lhs.false.i:                                  ; preds = %if.end4.i
  %11 = ptrtoint ptr %dummy.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %dummy.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 58, i8 %12)
  %cmp10.not.i = icmp eq i8 %12, 58
  br i1 %cmp10.not.i, label %get_key_size.exit, label %lor.lhs.false.i.get_key_size.exit.thread_crit_edge

lor.lhs.false.i.get_key_size.exit.thread_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %get_key_size.exit.thread

get_key_size.exit.thread:                         ; preds = %lor.lhs.false.i.get_key_size.exit.thread_crit_edge, %if.end4.i.get_key_size.exit.thread_crit_edge, %if.end.i.get_key_size.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret.i) #20
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %dummy.i) #20
  br label %if.then3

get_key_size.exit:                                ; preds = %lor.lhs.false.i
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %strchr.i, ptr %arrayidx, align 4
  %14 = ptrtoint ptr %ret.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ret.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret.i) #20
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %dummy.i) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp2 = icmp slt i32 %15, 0
  br i1 %cmp2, label %get_key_size.exit.if.then3_crit_edge, label %get_key_size.exit.if.end8.i.i_crit_edge

get_key_size.exit.if.end8.i.i_crit_edge:          ; preds = %get_key_size.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end8.i.i

get_key_size.exit.if.then3_crit_edge:             ; preds = %get_key_size.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then3

if.then3:                                         ; preds = %get_key_size.exit.if.then3_crit_edge, %get_key_size.exit.thread
  %error4 = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 12
  %16 = ptrtoint ptr %error4 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @.str.2, ptr %error4, align 8
  br label %cleanup

if.end8.i.i:                                      ; preds = %get_key_size.exit.if.end8.i.i_crit_edge, %get_key_size.exit.thread357
  %retval.0.i316360 = phi i32 [ %shr.i315, %get_key_size.exit.thread357 ], [ %15, %get_key_size.exit.if.end8.i.i_crit_edge ]
  %spec.select.i369 = add nuw i32 %retval.0.i316360, 1312
  %call9.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %spec.select.i369, i32 noundef 3520) #25
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #22
  %error9 = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 12
  %17 = ptrtoint ptr %error9 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @.str.3, ptr %error9, align 8
  br label %cleanup

if.end10:                                         ; preds = %if.end8.i.i
  %key_size11 = getelementptr inbounds %struct.crypt_config, ptr %call9.i.i, i32 0, i32 23
  %18 = ptrtoint ptr %key_size11 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %retval.0.i316360, ptr %key_size11, align 8
  %sector_size = getelementptr inbounds %struct.crypt_config, ptr %call9.i.i, i32 0, i32 15
  %19 = ptrtoint ptr %sector_size to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 512, ptr %sector_size, align 4
  %sector_shift = getelementptr inbounds %struct.crypt_config, ptr %call9.i.i, i32 0, i32 16
  %20 = ptrtoint ptr %sector_shift to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %sector_shift, align 2
  %private = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 11
  %21 = ptrtoint ptr %private to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call9.i.i, ptr %private, align 4
  call void @_raw_spin_lock(ptr noundef nonnull @dm_crypt_clients_lock) #20
  %22 = load i32, ptr @dm_crypt_clients_n, align 4
  %inc = add i32 %22, 1
  store i32 %inc, ptr @dm_crypt_clients_n, align 4
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull @_totalram_pages, i32 noundef 4) #20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @_totalram_pages to i32))
  %23 = load volatile i32, ptr @_totalram_pages, align 4
  %call.i.i.i7.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull @_totalhigh_pages, i32 noundef 4) #20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @_totalhigh_pages to i32))
  %24 = load volatile i32, ptr @_totalhigh_pages, align 4
  %25 = load i32, ptr @dm_crypt_clients_n, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.not.i317 = icmp eq i32 %25, 0
  br i1 %tobool.not.i317, label %if.end10.crypt_calculate_pages_per_client.exit_crit_edge, label %if.end.i318

if.end10.crypt_calculate_pages_per_client.exit_crit_edge: ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #22
  br label %crypt_calculate_pages_per_client.exit

if.end.i318:                                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #22
  %sub.i = sub i32 %23, %24
  %mul.i = shl i32 %sub.i, 1
  %div.i = udiv i32 %mul.i, 100
  %div2.i = udiv i32 %div.i, %25
  %26 = call i32 @llvm.umax.i32(i32 %div2.i, i32 4096) #20
  store volatile i32 %26, ptr @dm_crypt_pages_per_client, align 4
  br label %crypt_calculate_pages_per_client.exit

crypt_calculate_pages_per_client.exit:            ; preds = %if.end.i318, %if.end10.crypt_calculate_pages_per_client.exit_crit_edge
  call void @_raw_spin_unlock(ptr noundef nonnull @dm_crypt_clients_lock) #20
  %n_allocated_pages = getelementptr inbounds %struct.crypt_config, ptr %call9.i.i, i32 0, i32 2
  %call12 = call i32 @__percpu_counter_init(ptr noundef %n_allocated_pages, i64 noundef 0, i32 noundef 3264, ptr noundef nonnull @crypt_ctr.__key) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %crypt_calculate_pages_per_client.exit.bad_crit_edge, label %if.end15

crypt_calculate_pages_per_client.exit.bad_crit_edge: ; preds = %crypt_calculate_pages_per_client.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %bad

if.end15:                                         ; preds = %crypt_calculate_pages_per_client.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %argc)
  %cmp16 = icmp ugt i32 %argc, 5
  br i1 %cmp16, label %if.then17, label %if.end15.if.end23_crit_edge

if.end15.if.end23_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end23

if.then17:                                        ; preds = %if.end15
  %sub = add i32 %argc, -5
  %arrayidx18 = getelementptr ptr, ptr %argv, i32 5
  %27 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %private, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %as.i) #20
  %29 = getelementptr inbounds %struct.dm_arg_set, ptr %as.i, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %opt_params.i) #20
  %30 = ptrtoint ptr %opt_params.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 -1, ptr %opt_params.i, align 4, !annotation !410
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #20
  %31 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 -1, ptr %val.i, align 4, !annotation !410
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %dummy.i319) #20
  %32 = ptrtoint ptr %dummy.i319 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 -1, ptr %dummy.i319, align 1, !annotation !410
  %33 = ptrtoint ptr %as.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %sub, ptr %as.i, align 4
  %34 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %arrayidx18, ptr %29, align 4
  %error.i = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 12
  %call.i320 = call i32 @dm_read_arg_group(ptr noundef nonnull @crypt_ctr_optional._args, ptr noundef nonnull %as.i, ptr noundef nonnull %opt_params.i, ptr noundef %error.i) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i320)
  %tobool.not.i321 = icmp eq i32 %call.i320, 0
  br i1 %tobool.not.i321, label %while.cond.preheader.i, label %if.then17.crypt_ctr_optional.exit.thread_crit_edge

if.then17.crypt_ctr_optional.exit.thread_crit_edge: ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #22
  br label %crypt_ctr_optional.exit.thread

while.cond.preheader.i:                           ; preds = %if.then17
  %35 = ptrtoint ptr %opt_params.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %opt_params.i, align 4
  %dec150.i = add i32 %36, -1
  store i32 %dec150.i, ptr %opt_params.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool3.not151.i = icmp eq i32 %36, 0
  br i1 %tobool3.not151.i, label %while.cond.preheader.i.crypt_ctr_optional.exit_crit_edge, label %while.body.lr.ph.i

while.cond.preheader.i.crypt_ctr_optional.exit_crit_edge: ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %crypt_ctr_optional.exit

while.body.lr.ph.i:                               ; preds = %while.cond.preheader.i
  %sector_size.i = getelementptr inbounds %struct.crypt_config, ptr %28, i32 0, i32 15
  %cipher_flags94.i = getelementptr inbounds %struct.crypt_config, ptr %28, i32 0, i32 19
  %len.i = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 3
  %sector_shift.i = getelementptr inbounds %struct.crypt_config, ptr %28, i32 0, i32 16
  %on_disk_tag_size.i = getelementptr inbounds %struct.crypt_config, ptr %28, i32 0, i32 29
  %cipher_auth.i = getelementptr inbounds %struct.crypt_config, ptr %28, i32 0, i32 9
  %flags29.i = getelementptr inbounds %struct.crypt_config, ptr %28, i32 0, i32 22
  %num_discard_bios.i = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 6
  br label %while.body.i

while.body.i:                                     ; preds = %if.end104.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %call4.i = call ptr @dm_shift_arg(ptr noundef nonnull %as.i) #20
  %tobool5.not.i = icmp eq ptr %call4.i, null
  br i1 %tobool5.not.i, label %while.body.i.cleanup.sink.split.i_crit_edge, label %if.end8.i

while.body.i.cleanup.sink.split.i_crit_edge:      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup.sink.split.i

if.end8.i:                                        ; preds = %while.body.i
  %call9.i = call i32 @strcasecmp(ptr noundef nonnull %call4.i, ptr noundef nonnull @.str.32) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %if.then11.i, label %if.else.i

if.then11.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #22
  %37 = ptrtoint ptr %num_discard_bios.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 1, ptr %num_discard_bios.i, align 8
  br label %if.end104.i

if.else.i:                                        ; preds = %if.end8.i
  %call12.i = call i32 @strcasecmp(ptr noundef nonnull %call4.i, ptr noundef nonnull @.str.33) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool13.not.i, label %if.then14.i, label %if.else15.i

if.then14.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #22
  call void @_set_bit(i32 noundef 2, ptr noundef %flags29.i) #20
  br label %if.end104.i

if.else15.i:                                      ; preds = %if.else.i
  %call16.i = call i32 @strcasecmp(ptr noundef nonnull %call4.i, ptr noundef nonnull @.str.34) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool17.not.i = icmp eq i32 %call16.i, 0
  br i1 %tobool17.not.i, label %if.then18.i, label %if.else20.i

if.then18.i:                                      ; preds = %if.else15.i
  call void @__sanitizer_cov_trace_pc() #22
  call void @_set_bit(i32 noundef 3, ptr noundef %flags29.i) #20
  br label %if.end104.i

if.else20.i:                                      ; preds = %if.else15.i
  %call21.i = call i32 @strcasecmp(ptr noundef nonnull %call4.i, ptr noundef nonnull @.str.35) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i)
  %tobool22.not.i = icmp eq i32 %call21.i, 0
  br i1 %tobool22.not.i, label %if.then23.i, label %if.else25.i

if.then23.i:                                      ; preds = %if.else20.i
  call void @__sanitizer_cov_trace_pc() #22
  call void @_set_bit(i32 noundef 4, ptr noundef %flags29.i) #20
  br label %if.end104.i

if.else25.i:                                      ; preds = %if.else20.i
  %call26.i = call i32 @strcasecmp(ptr noundef nonnull %call4.i, ptr noundef nonnull @.str.36) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i)
  %tobool27.not.i = icmp eq i32 %call26.i, 0
  br i1 %tobool27.not.i, label %if.then28.i, label %if.else30.i

if.then28.i:                                      ; preds = %if.else25.i
  call void @__sanitizer_cov_trace_pc() #22
  call void @_set_bit(i32 noundef 5, ptr noundef %flags29.i) #20
  br label %if.end104.i

if.else30.i:                                      ; preds = %if.else25.i
  %call31.i = call i32 (ptr, ptr, ...) @sscanf(ptr noundef nonnull %call4.i, ptr noundef nonnull @.str.37, ptr noundef nonnull %val.i) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call31.i)
  %cmp.i = icmp eq i32 %call31.i, 1
  br i1 %cmp.i, label %if.then32.i, label %if.else55.i

if.then32.i:                                      ; preds = %if.else30.i
  %38 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %val.i, align 4
  %40 = add i32 %39, -481
  call void @__sanitizer_cov_trace_const_cmp4(i32 -480, i32 %40)
  %41 = icmp ult i32 %40, -480
  br i1 %41, label %if.then32.i.cleanup.sink.split.i_crit_edge, label %if.end37.i

if.then32.i.cleanup.sink.split.i_crit_edge:       ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup.sink.split.i

if.end37.i:                                       ; preds = %if.then32.i
  %42 = ptrtoint ptr %on_disk_tag_size.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %39, ptr %on_disk_tag_size.i, align 8
  %add.ptr.i322 = getelementptr i8, ptr %call4.i, i32 10
  %call38.i = call ptr @strchr(ptr noundef %add.ptr.i322, i32 noundef 58) #20
  %add.ptr39.i = getelementptr i8, ptr %call38.i, i32 1
  %call40.i = call i32 @strcasecmp(ptr noundef %add.ptr39.i, ptr noundef nonnull @.str.39) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40.i)
  %tobool41.not.i = icmp eq i32 %call40.i, 0
  br i1 %tobool41.not.i, label %if.then42.i, label %if.else43.i

if.then42.i:                                      ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #22
  call void @_set_bit(i32 noundef 0, ptr noundef %cipher_flags94.i) #20
  br label %if.end49.i

if.else43.i:                                      ; preds = %if.end37.i
  %call44.i = call i32 @strcasecmp(ptr noundef %add.ptr39.i, ptr noundef nonnull @.str.40) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44.i)
  %tobool45.not.i = icmp eq i32 %call44.i, 0
  br i1 %tobool45.not.i, label %if.else43.i.if.end49.i_crit_edge, label %if.else43.i.cleanup.sink.split.i_crit_edge

if.else43.i.cleanup.sink.split.i_crit_edge:       ; preds = %if.else43.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup.sink.split.i

if.else43.i.if.end49.i_crit_edge:                 ; preds = %if.else43.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end49.i

if.end49.i:                                       ; preds = %if.else43.i.if.end49.i_crit_edge, %if.then42.i
  %call50.i = call noalias ptr @kstrdup(ptr noundef %add.ptr39.i, i32 noundef 3264) #20
  %43 = ptrtoint ptr %cipher_auth.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call50.i, ptr %cipher_auth.i, align 8
  %tobool52.not.i = icmp eq ptr %call50.i, null
  br i1 %tobool52.not.i, label %if.end49.i.crypt_ctr_optional.exit.thread_crit_edge, label %if.end49.i.if.end104.i_crit_edge

if.end49.i.if.end104.i_crit_edge:                 ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end104.i

if.end49.i.crypt_ctr_optional.exit.thread_crit_edge: ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %crypt_ctr_optional.exit.thread

if.else55.i:                                      ; preds = %if.else30.i
  %call56.i = call i32 (ptr, ptr, ...) @sscanf(ptr noundef nonnull %call4.i, ptr noundef nonnull @.str.42, ptr noundef %sector_size.i, ptr noundef nonnull %dummy.i319) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call56.i)
  %cmp57.i = icmp eq i32 %call56.i, 1
  br i1 %cmp57.i, label %if.then58.i, label %if.else90.i

if.then58.i:                                      ; preds = %if.else55.i
  %44 = ptrtoint ptr %sector_size.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %sector_size.i, align 4
  %conv.i = zext i16 %45 to i32
  %46 = add i16 %45, -4097
  call void @__sanitizer_cov_trace_const_cmp2(i16 -3585, i16 %46)
  %47 = icmp ult i16 %46, -3585
  br i1 %47, label %if.then58.i.cleanup.sink.split.i_crit_edge, label %lor.lhs.false67.i

if.then58.i.cleanup.sink.split.i_crit_edge:       ; preds = %if.then58.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup.sink.split.i

lor.lhs.false67.i:                                ; preds = %if.then58.i
  %sub.i323 = add nuw nsw i32 %conv.i, 65535
  %and.i = and i32 %sub.i323, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool72.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool72.not.i, label %if.end75.i, label %lor.lhs.false67.i.cleanup.sink.split.i_crit_edge

lor.lhs.false67.i.cleanup.sink.split.i_crit_edge: ; preds = %lor.lhs.false67.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup.sink.split.i

if.end75.i:                                       ; preds = %lor.lhs.false67.i
  %48 = ptrtoint ptr %len.i to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %len.i, align 8
  %50 = lshr i32 %conv.i, 9
  %sub78.i = add nsw i32 %50, -1
  %51 = zext i32 %sub78.i to i64
  %and80.i = and i64 %49, %51
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and80.i)
  %tobool81.not.i = icmp eq i64 %and80.i, 0
  br i1 %tobool81.not.i, label %if.end84.i, label %if.end75.i.cleanup.sink.split.i_crit_edge

if.end75.i.cleanup.sink.split.i_crit_edge:        ; preds = %if.end75.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup.sink.split.i

if.end84.i:                                       ; preds = %if.end75.i
  call void @__sanitizer_cov_trace_pc() #22
  %52 = call i32 @llvm.cttz.i32(i32 %conv.i, i1 false) #20, !range !411
  %53 = trunc i32 %52 to i8
  %conv89.i = add nsw i8 %53, -9
  %54 = ptrtoint ptr %sector_shift.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %conv89.i, ptr %sector_shift.i, align 2
  br label %if.end104.i

if.else90.i:                                      ; preds = %if.else55.i
  %call91.i = call i32 @strcasecmp(ptr noundef nonnull %call4.i, ptr noundef nonnull @.str.45) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91.i)
  %tobool92.not.i = icmp eq i32 %call91.i, 0
  br i1 %tobool92.not.i, label %if.then93.i, label %if.else90.i.cleanup.sink.split.i_crit_edge

if.else90.i.cleanup.sink.split.i_crit_edge:       ; preds = %if.else90.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup.sink.split.i

if.then93.i:                                      ; preds = %if.else90.i
  call void @__sanitizer_cov_trace_pc() #22
  call void @_set_bit(i32 noundef 1, ptr noundef %cipher_flags94.i) #20
  br label %if.end104.i

if.end104.i:                                      ; preds = %if.then93.i, %if.end84.i, %if.end49.i.if.end104.i_crit_edge, %if.then28.i, %if.then23.i, %if.then18.i, %if.then14.i, %if.then11.i
  %55 = ptrtoint ptr %opt_params.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %opt_params.i, align 4
  %dec.i = add i32 %56, -1
  store i32 %dec.i, ptr %opt_params.i, align 4
  %tobool3.not.i = icmp eq i32 %56, 0
  br i1 %tobool3.not.i, label %if.end104.i.crypt_ctr_optional.exit_crit_edge, label %if.end104.i.while.body.i_crit_edge

if.end104.i.while.body.i_crit_edge:               ; preds = %if.end104.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %while.body.i

if.end104.i.crypt_ctr_optional.exit_crit_edge:    ; preds = %if.end104.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %crypt_ctr_optional.exit

cleanup.sink.split.i:                             ; preds = %if.else90.i.cleanup.sink.split.i_crit_edge, %if.end75.i.cleanup.sink.split.i_crit_edge, %lor.lhs.false67.i.cleanup.sink.split.i_crit_edge, %if.then58.i.cleanup.sink.split.i_crit_edge, %if.else43.i.cleanup.sink.split.i_crit_edge, %if.then32.i.cleanup.sink.split.i_crit_edge, %while.body.i.cleanup.sink.split.i_crit_edge
  %.str.46.sink.i = phi ptr [ @.str.31, %while.body.i.cleanup.sink.split.i_crit_edge ], [ @.str.38, %if.then32.i.cleanup.sink.split.i_crit_edge ], [ @.str.41, %if.else43.i.cleanup.sink.split.i_crit_edge ], [ @.str.43, %lor.lhs.false67.i.cleanup.sink.split.i_crit_edge ], [ @.str.43, %if.then58.i.cleanup.sink.split.i_crit_edge ], [ @.str.44, %if.end75.i.cleanup.sink.split.i_crit_edge ], [ @.str.46, %if.else90.i.cleanup.sink.split.i_crit_edge ]
  %57 = ptrtoint ptr %error.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %.str.46.sink.i, ptr %error.i, align 8
  br label %crypt_ctr_optional.exit.thread

crypt_ctr_optional.exit.thread:                   ; preds = %cleanup.sink.split.i, %if.end49.i.crypt_ctr_optional.exit.thread_crit_edge, %if.then17.crypt_ctr_optional.exit.thread_crit_edge
  %retval.0.i324.ph = phi i32 [ -22, %cleanup.sink.split.i ], [ %call.i320, %if.then17.crypt_ctr_optional.exit.thread_crit_edge ], [ -12, %if.end49.i.crypt_ctr_optional.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %dummy.i319) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %opt_params.i) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %as.i) #20
  br label %bad

crypt_ctr_optional.exit:                          ; preds = %if.end104.i.crypt_ctr_optional.exit_crit_edge, %while.cond.preheader.i.crypt_ctr_optional.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %dummy.i319) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %opt_params.i) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %as.i) #20
  br label %if.end23

if.end23:                                         ; preds = %crypt_ctr_optional.exit, %if.end15.if.end23_crit_edge
  %58 = ptrtoint ptr %argv to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %argv, align 4
  %60 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %arrayidx, align 4
  %62 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %private, align 4
  %call.i326 = call noalias ptr @kstrdup(ptr noundef %59, i32 noundef 3264) #20
  %cipher_string.i = getelementptr inbounds %struct.crypt_config, ptr %63, i32 0, i32 8
  %64 = ptrtoint ptr %cipher_string.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %call.i326, ptr %cipher_string.i, align 4
  %tobool.not.i327 = icmp eq ptr %call.i326, null
  br i1 %tobool.not.i327, label %if.then.i329, label %if.end.i331

if.then.i329:                                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #22
  %error.i328 = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 12
  %65 = ptrtoint ptr %error.i328 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr @.str.47, ptr %error.i328, align 8
  br label %bad

if.end.i331:                                      ; preds = %if.end23
  %call1.i.i = call i32 @strncmp(ptr noundef %59, ptr noundef nonnull dereferenceable(6) @.str.48, i32 noundef 5) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp.i.i330 = icmp eq i32 %call1.i.i, 0
  %66 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %private, align 4
  br i1 %cmp.i.i330, label %if.then3.i, label %if.else.i336

if.then3.i:                                       ; preds = %if.end.i331
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %buf.i.i) #20
  %68 = call ptr @memset(ptr %buf.i.i, i32 255, i32 128)
  %tfms_count.i.i = getelementptr inbounds %struct.crypt_config, ptr %67, i32 0, i32 18
  %69 = ptrtoint ptr %tfms_count.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 1, ptr %tfms_count.i.i, align 4
  %arrayidx.i.i = getelementptr i8, ptr %59, i32 5
  %call.i90.i = call ptr @strrchr(ptr noundef %arrayidx.i.i, i32 noundef 58) #20
  %tobool.not.i.i = icmp eq ptr %call.i90.i, null
  br i1 %tobool.not.i.i, label %if.then3.i.if.end.i.i333_crit_edge, label %if.then.i.i332

if.then3.i.if.end.i.i333_crit_edge:               ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end.i.i333

if.then.i.i332:                                   ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #22
  %70 = ptrtoint ptr %call.i90.i to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 0, ptr %call.i90.i, align 1
  %incdec.ptr.i.i = getelementptr i8, ptr %call.i90.i, i32 1
  br label %if.end.i.i333

if.end.i.i333:                                    ; preds = %if.then.i.i332, %if.then3.i.if.end.i.i333_crit_edge
  %ivopts.0.i = phi ptr [ null, %if.then3.i.if.end.i.i333_crit_edge ], [ %incdec.ptr.i.i, %if.then.i.i332 ]
  %call1.i91.i = call ptr @strrchr(ptr noundef %arrayidx.i.i, i32 noundef 45) #20
  %tobool2.not.i.i = icmp eq ptr %call1.i91.i, null
  br i1 %tobool2.not.i.i, label %if.end.i.i333.if.end5.i.i_crit_edge, label %if.then3.i.i

if.end.i.i333.if.end5.i.i_crit_edge:              ; preds = %if.end.i.i333
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end5.i.i

if.then3.i.i:                                     ; preds = %if.end.i.i333
  call void @__sanitizer_cov_trace_pc() #22
  %71 = ptrtoint ptr %call1.i91.i to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 0, ptr %call1.i91.i, align 1
  %incdec.ptr4.i.i = getelementptr i8, ptr %call1.i91.i, i32 1
  br label %if.end5.i.i

if.end5.i.i:                                      ; preds = %if.then3.i.i, %if.end.i.i333.if.end5.i.i_crit_edge
  %ivmode.0.i = phi ptr [ null, %if.end.i.i333.if.end5.i.i_crit_edge ], [ %incdec.ptr4.i.i, %if.then3.i.i ]
  %cipher_flags.i.i.i = getelementptr inbounds %struct.crypt_config, ptr %67, i32 0, i32 19
  %72 = ptrtoint ptr %cipher_flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load volatile i32, ptr %cipher_flags.i.i.i, align 4
  %and1.i.i.i.i = and i32 %73, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %if.end5.i.i.if.end11.i.i_crit_edge, label %if.then7.i.i

if.end5.i.i.if.end11.i.i_crit_edge:               ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end11.i.i

if.then7.i.i:                                     ; preds = %if.end5.i.i
  %call1.i.i.i.i = call i32 @strncmp(ptr noundef %arrayidx.i.i, ptr noundef nonnull dereferenceable(9) @.str.59, i32 noundef 8) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %cmp.i48.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %cmp.i48.i.i.i, label %if.end.i.i.i, label %if.then7.i.i.if.end11.i.i_crit_edge

if.then7.i.i.if.end11.i.i_crit_edge:              ; preds = %if.then7.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end11.i.i

if.end.i.i.i:                                     ; preds = %if.then7.i.i
  %call1.i.i.i334 = call ptr @strchr(ptr noundef %arrayidx.i.i, i32 noundef 40) #20
  %call2.i.i.i = call ptr @strchr(ptr noundef %arrayidx.i.i, i32 noundef 44) #20
  %tobool.not.i.i.i = icmp eq ptr %call1.i.i.i334, null
  %tobool3.not.i.i.i = icmp eq ptr %call2.i.i.i, null
  %or.cond.i.i.i = select i1 %tobool.not.i.i.i, i1 true, i1 %tobool3.not.i.i.i
  br i1 %or.cond.i.i.i, label %if.end.i.i.i.if.then9.i.i_crit_edge, label %lor.lhs.false4.i.i.i

if.end.i.i.i.if.then9.i.i_crit_edge:              ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then9.i.i

lor.lhs.false4.i.i.i:                             ; preds = %if.end.i.i.i
  %incdec.ptr.i.i.i = getelementptr i8, ptr %call1.i.i.i334, i32 1
  %cmp.i.i.i = icmp ugt ptr %incdec.ptr.i.i.i, %call2.i.i.i
  br i1 %cmp.i.i.i, label %lor.lhs.false4.i.i.i.if.then9.i.i_crit_edge, label %if.end6.i.i.i

lor.lhs.false4.i.i.i.if.then9.i.i_crit_edge:      ; preds = %lor.lhs.false4.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then9.i.i

if.end6.i.i.i:                                    ; preds = %lor.lhs.false4.i.i.i
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %call2.i.i.i to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %incdec.ptr.i.i.i to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  %add.i.i.i = add i32 %sub.ptr.sub.i.i.i, 1
  %call9.i.i.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add.i.i.i, i32 noundef 3520) #25
  %tobool8.not.i.i.i = icmp eq ptr %call9.i.i.i.i.i, null
  br i1 %tobool8.not.i.i.i, label %if.end6.i.i.i.if.then9.i.i_crit_edge, label %if.end10.i.i.i

if.end6.i.i.i.if.then9.i.i_crit_edge:             ; preds = %if.end6.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then9.i.i

if.end10.i.i.i:                                   ; preds = %if.end6.i.i.i
  %call14.i.i.i = call ptr @strncpy(ptr noundef nonnull %call9.i.i.i.i.i, ptr noundef %incdec.ptr.i.i.i, i32 noundef %sub.ptr.sub.i.i.i) #20
  %call15.i.i.i = call ptr @crypto_alloc_ahash(ptr noundef nonnull %call9.i.i.i.i.i, i32 noundef 0, i32 noundef 65536) #20
  call void @kfree(ptr noundef nonnull %call9.i.i.i.i.i) #20
  %cmp.i51.i.i.i = icmp ugt ptr %call15.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i51.i.i.i, label %crypt_ctr_auth_cipher.exit.i.i, label %if.end19.i.i.i

if.end19.i.i.i:                                   ; preds = %if.end10.i.i.i
  %__crt_alg.i.i.i.i.i = getelementptr inbounds %struct.crypto_ahash, ptr %call15.i.i.i, i32 0, i32 10, i32 3
  %74 = ptrtoint ptr %__crt_alg.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %__crt_alg.i.i.i.i.i, align 4
  %add.ptr.i.i.i.i.i.i = getelementptr i8, ptr %75, i32 -128
  %76 = ptrtoint ptr %add.ptr.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %add.ptr.i.i.i.i.i.i, align 128
  %key_mac_size.i.i.i = getelementptr inbounds %struct.crypt_config, ptr %67, i32 0, i32 26
  %78 = ptrtoint ptr %key_mac_size.i.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %77, ptr %key_mac_size.i.i.i, align 4
  %base.i.i.i.i.i = getelementptr inbounds %struct.crypto_ahash, ptr %call15.i.i.i, i32 0, i32 10
  call void @crypto_destroy_tfm(ptr noundef %call15.i.i.i, ptr noundef %base.i.i.i.i.i) #20
  %key_size.i.i.i.i.i = getelementptr inbounds %struct.crypt_config, ptr %67, i32 0, i32 23
  %79 = ptrtoint ptr %key_size.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %key_size.i.i.i.i.i, align 8
  %key_extra_size.i.i.i.i.i = getelementptr inbounds %struct.crypt_config, ptr %67, i32 0, i32 25
  %81 = ptrtoint ptr %key_extra_size.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %key_extra_size.i.i.i.i.i, align 8
  %sub.i.i.i.i.i = sub i32 %80, %82
  %83 = ptrtoint ptr %tfms_count.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %tfms_count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %tobool.not.i.i.i.i.i.i.i = icmp eq i32 %84, 0
  %85 = call i32 @llvm.ctlz.i32(i32 %84, i1 true) #20, !range !411
  %sub.i.op.i.i.i.i.i.i = xor i32 %85, 31
  %sub.i.i.i53.i.i.i = select i1 %tobool.not.i.i.i.i.i.i.i, i32 -1, i32 %sub.i.op.i.i.i.i.i.i
  %shr.i.i.i.i.i = lshr i32 %sub.i.i.i.i.i, %sub.i.i.i53.i.i.i
  %add.i.i.i.i335 = add i32 %shr.i.i.i.i.i, 8
  %call9.i.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add.i.i.i.i335, i32 noundef 3264) #25
  %authenc_key.i.i.i = getelementptr inbounds %struct.crypt_config, ptr %67, i32 0, i32 36
  %86 = ptrtoint ptr %authenc_key.i.i.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %call9.i.i.i.i, ptr %authenc_key.i.i.i, align 8
  %tobool24.not.i.i.i = icmp eq ptr %call9.i.i.i.i, null
  br i1 %tobool24.not.i.i.i, label %if.end19.i.i.i.if.then9.i.i_crit_edge, label %if.end19.i.i.i.if.end11.i.i_crit_edge

if.end19.i.i.i.if.end11.i.i_crit_edge:            ; preds = %if.end19.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end11.i.i

if.end19.i.i.i.if.then9.i.i_crit_edge:            ; preds = %if.end19.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then9.i.i

crypt_ctr_auth_cipher.exit.i.i:                   ; preds = %if.end10.i.i.i
  %cmp.i92.i = icmp slt ptr %call15.i.i.i, null
  br i1 %cmp.i92.i, label %crypt_ctr_auth_cipher.exit.i.i.if.then9.i.i_crit_edge, label %crypt_ctr_auth_cipher.exit.i.i.if.end11.i.i_crit_edge

crypt_ctr_auth_cipher.exit.i.i.if.end11.i.i_crit_edge: ; preds = %crypt_ctr_auth_cipher.exit.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end11.i.i

crypt_ctr_auth_cipher.exit.i.i.if.then9.i.i_crit_edge: ; preds = %crypt_ctr_auth_cipher.exit.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then9.i.i

if.then9.i.i:                                     ; preds = %crypt_ctr_auth_cipher.exit.i.i.if.then9.i.i_crit_edge, %if.end19.i.i.i.if.then9.i.i_crit_edge, %if.end6.i.i.i.if.then9.i.i_crit_edge, %lor.lhs.false4.i.i.i.if.then9.i.i_crit_edge, %if.end.i.i.i.if.then9.i.i_crit_edge
  %error.i.i = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 12
  %87 = ptrtoint ptr %error.i.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr @.str.52, ptr %error.i.i, align 8
  br label %crypt_ctr_cipher_new.exit.i

if.end11.i.i:                                     ; preds = %crypt_ctr_auth_cipher.exit.i.i.if.end11.i.i_crit_edge, %if.end19.i.i.i.if.end11.i.i_crit_edge, %if.then7.i.i.if.end11.i.i_crit_edge, %if.end5.i.i.if.end11.i.i_crit_edge
  %tobool12.not.i.i = icmp eq ptr %ivmode.0.i, null
  br i1 %tobool12.not.i.i, label %if.end11.i.i.if.end34.i.i_crit_edge, label %land.lhs.true.i.i

if.end11.i.i.if.end34.i.i_crit_edge:              ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end34.i.i

land.lhs.true.i.i:                                ; preds = %if.end11.i.i
  %call13.i.i = call i32 @strcmp(ptr noundef nonnull %ivmode.0.i, ptr noundef nonnull dereferenceable(4) @.str.53) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i.i)
  %tobool14.not.i.i = icmp eq i32 %call13.i.i, 0
  br i1 %tobool14.not.i.i, label %if.end17.i.i, label %land.lhs.true.i.i.land.lhs.true19.i.i_crit_edge

land.lhs.true.i.i.land.lhs.true19.i.i_crit_edge:  ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %land.lhs.true19.i.i

if.end17.i.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #22
  %88 = ptrtoint ptr %tfms_count.i.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 64, ptr %tfms_count.i.i, align 4
  br label %land.lhs.true19.i.i

land.lhs.true19.i.i:                              ; preds = %if.end17.i.i, %land.lhs.true.i.i.land.lhs.true19.i.i_crit_edge
  %call20.i.i = call i32 @strcmp(ptr noundef nonnull %ivmode.0.i, ptr noundef nonnull dereferenceable(6) @.str.54) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i.i)
  %tobool21.not.i.i = icmp eq i32 %call20.i.i, 0
  br i1 %tobool21.not.i.i, label %if.then22.i.i, label %land.lhs.true19.i.i.if.end34.i.i_crit_edge

land.lhs.true19.i.i.if.end34.i.i_crit_edge:       ; preds = %land.lhs.true19.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end34.i.i

if.then22.i.i:                                    ; preds = %land.lhs.true19.i.i
  %tobool23.not.i.i = icmp eq ptr %ivopts.0.i, null
  br i1 %tobool23.not.i.i, label %if.then24.i.i, label %if.end26.i.i

if.then24.i.i:                                    ; preds = %if.then22.i.i
  call void @__sanitizer_cov_trace_pc() #22
  %error25.i.i = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 12
  %89 = ptrtoint ptr %error25.i.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr @.str.55, ptr %error25.i.i, align 8
  br label %crypt_ctr_cipher_new.exit.i

if.end26.i.i:                                     ; preds = %if.then22.i.i
  %call27.i.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buf.i.i, i32 noundef 128, ptr noundef nonnull @.str.56, ptr noundef %arrayidx.i.i, ptr noundef nonnull %ivopts.0.i) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %call27.i.i)
  %90 = icmp ugt i32 %call27.i.i, 127
  br i1 %90, label %if.then30.i.i, label %if.end26.i.i.if.end34.i.i_crit_edge

if.end26.i.i.if.end34.i.i_crit_edge:              ; preds = %if.end26.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end34.i.i

if.then30.i.i:                                    ; preds = %if.end26.i.i
  call void @__sanitizer_cov_trace_pc() #22
  %error31.i.i = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 12
  %91 = ptrtoint ptr %error31.i.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr @.str.57, ptr %error31.i.i, align 8
  br label %crypt_ctr_cipher_new.exit.i

if.end34.i.i:                                     ; preds = %if.end26.i.i.if.end34.i.i_crit_edge, %land.lhs.true19.i.i.if.end34.i.i_crit_edge, %if.end11.i.i.if.end34.i.i_crit_edge
  %cipher_api.0.i.i = phi ptr [ %arrayidx.i.i, %land.lhs.true19.i.i.if.end34.i.i_crit_edge ], [ %buf.i.i, %if.end26.i.i.if.end34.i.i_crit_edge ], [ %arrayidx.i.i, %if.end11.i.i.if.end34.i.i_crit_edge ]
  %92 = ptrtoint ptr %tfms_count.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %tfms_count.i.i, align 4
  %key_parts.i.i = getelementptr inbounds %struct.crypt_config, ptr %67, i32 0, i32 24
  %94 = ptrtoint ptr %key_parts.i.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %93, ptr %key_parts.i.i, align 4
  %95 = ptrtoint ptr %cipher_flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load volatile i32, ptr %cipher_flags.i.i.i, align 4
  %and1.i.i.i.i.i = and i32 %96, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool.i.not.i.i.i = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i, label %if.else.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %if.end34.i.i
  call void @__sanitizer_cov_trace_pc() #22
  %call1.i1.i.i = call fastcc i32 @crypt_alloc_tfms_aead(ptr noundef %67, ptr noundef %cipher_api.0.i.i) #20
  br label %crypt_alloc_tfms.exit.i.i

if.else.i.i.i:                                    ; preds = %if.end34.i.i
  call void @__sanitizer_cov_trace_pc() #22
  %call2.i2.i.i = call fastcc i32 @crypt_alloc_tfms_skcipher(ptr noundef %67, ptr noundef %cipher_api.0.i.i) #20
  br label %crypt_alloc_tfms.exit.i.i

crypt_alloc_tfms.exit.i.i:                        ; preds = %if.else.i.i.i, %if.then.i.i.i
  %retval.0.i3.i.i = phi i32 [ %call1.i1.i.i, %if.then.i.i.i ], [ %call2.i2.i.i, %if.else.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i3.i.i)
  %cmp37.i.i = icmp slt i32 %retval.0.i3.i.i, 0
  br i1 %cmp37.i.i, label %if.then38.i.i, label %if.end40.i.i

if.then38.i.i:                                    ; preds = %crypt_alloc_tfms.exit.i.i
  call void @__sanitizer_cov_trace_pc() #22
  %error39.i.i = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 12
  %97 = ptrtoint ptr %error39.i.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr @.str.58, ptr %error39.i.i, align 8
  br label %crypt_ctr_cipher_new.exit.i

if.end40.i.i:                                     ; preds = %crypt_alloc_tfms.exit.i.i
  %98 = ptrtoint ptr %cipher_flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load volatile i32, ptr %cipher_flags.i.i.i, align 4
  %and1.i.i5.i.i = and i32 %99, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i5.i.i)
  %tobool.i6.not.i.i = icmp eq i32 %and1.i.i5.i.i, 0
  %cipher_tfm.i7.i.i = getelementptr inbounds %struct.crypt_config, ptr %67, i32 0, i32 17
  %100 = ptrtoint ptr %cipher_tfm.i7.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %cipher_tfm.i7.i.i, align 8
  %102 = ptrtoint ptr %101 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %101, align 4
  br i1 %tobool.i6.not.i.i, label %if.else.i.i, label %if.then42.i.i

if.then42.i.i:                                    ; preds = %if.end40.i.i
  call void @__sanitizer_cov_trace_pc() #22
  %__crt_alg.i.i.i.i = getelementptr inbounds %struct.crypto_aead, ptr %103, i32 0, i32 3, i32 3
  %104 = ptrtoint ptr %__crt_alg.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %__crt_alg.i.i.i.i, align 4
  %ivsize.i.i.i.i = getelementptr i8, ptr %105, i32 -104
  %106 = ptrtoint ptr %ivsize.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %ivsize.i.i.i.i, align 8
  %iv_size.i.i = getelementptr inbounds %struct.crypt_config, ptr %67, i32 0, i32 14
  %108 = ptrtoint ptr %iv_size.i.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %107, ptr %iv_size.i.i, align 8
  br label %crypt_ctr_cipher_new.exit.i

if.else.i.i:                                      ; preds = %if.end40.i.i
  call void @__sanitizer_cov_trace_pc() #22
  %__crt_alg.i.i8.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %103, i32 0, i32 2, i32 3
  %109 = ptrtoint ptr %__crt_alg.i.i8.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %__crt_alg.i.i8.i.i, align 4
  %ivsize.i.i.i = getelementptr i8, ptr %110, i32 -100
  %111 = ptrtoint ptr %ivsize.i.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %ivsize.i.i.i, align 4
  %iv_size47.i.i = getelementptr inbounds %struct.crypt_config, ptr %67, i32 0, i32 14
  %113 = ptrtoint ptr %iv_size47.i.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %112, ptr %iv_size47.i.i, align 8
  br label %crypt_ctr_cipher_new.exit.i

crypt_ctr_cipher_new.exit.i:                      ; preds = %if.else.i.i, %if.then42.i.i, %if.then38.i.i, %if.then30.i.i, %if.then24.i.i, %if.then9.i.i
  %retval.0.i.i = phi i32 [ -12, %if.then9.i.i ], [ %retval.0.i3.i.i, %if.then38.i.i ], [ -12, %if.then30.i.i ], [ -22, %if.then24.i.i ], [ 0, %if.else.i.i ], [ 0, %if.then42.i.i ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %buf.i.i) #20
  br label %if.end6.i

if.else.i336:                                     ; preds = %if.end.i331
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i) #20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %keycount.i.i) #20
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %dummy.i.i) #20
  %114 = ptrtoint ptr %dummy.i.i to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 -1, ptr %dummy.i.i, align 1, !annotation !410
  %call.i94.i = call ptr @strchr(ptr noundef %59, i32 noundef 40) #20
  %tobool.not.i95.i = icmp eq ptr %call.i94.i, null
  br i1 %tobool.not.i95.i, label %lor.lhs.false.i.i, label %if.else.i336.if.then.i100.i_crit_edge

if.else.i336.if.then.i100.i_crit_edge:            ; preds = %if.else.i336
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then.i100.i

lor.lhs.false.i.i:                                ; preds = %if.else.i336
  %cipher_flags.i.i96.i = getelementptr inbounds %struct.crypt_config, ptr %67, i32 0, i32 19
  %115 = ptrtoint ptr %cipher_flags.i.i96.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load volatile i32, ptr %cipher_flags.i.i96.i, align 4
  %and1.i.i.i97.i = and i32 %116, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i97.i)
  %tobool.i.not.i98.i = icmp eq i32 %and1.i.i.i97.i, 0
  br i1 %tobool.i.not.i98.i, label %if.end.i102.i, label %lor.lhs.false.i.i.if.then.i100.i_crit_edge

lor.lhs.false.i.i.if.then.i100.i_crit_edge:       ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then.i100.i

if.then.i100.i:                                   ; preds = %lor.lhs.false.i.i.if.then.i100.i_crit_edge, %if.else.i336.if.then.i100.i_crit_edge
  %error.i99.i = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 12
  %117 = ptrtoint ptr %error.i99.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr @.str.64, ptr %error.i99.i, align 8
  br label %crypt_ctr_cipher_old.exit.i

if.end.i102.i:                                    ; preds = %lor.lhs.false.i.i
  %118 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr %59, ptr %tmp.i.i, align 4
  %call2.i.i = call ptr @strsep(ptr noundef nonnull %tmp.i.i, ptr noundef nonnull @.str.65) #20
  %119 = ptrtoint ptr %keycount.i.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr %call2.i.i, ptr %keycount.i.i, align 4
  %call3.i.i = call ptr @strsep(ptr noundef nonnull %keycount.i.i, ptr noundef nonnull @.str.27) #20
  %120 = ptrtoint ptr %keycount.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %keycount.i.i, align 4
  %tobool4.not.i.i = icmp eq ptr %121, null
  %tfms_count.i101.i = getelementptr inbounds %struct.crypt_config, ptr %67, i32 0, i32 18
  br i1 %tobool4.not.i.i, label %if.then5.i.i, label %if.else.i103.i

if.then5.i.i:                                     ; preds = %if.end.i102.i
  call void @__sanitizer_cov_trace_pc() #22
  %122 = ptrtoint ptr %tfms_count.i101.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 1, ptr %tfms_count.i101.i, align 4
  br label %if.end14.i.i

if.else.i103.i:                                   ; preds = %if.end.i102.i
  %call7.i.i337 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef nonnull %121, ptr noundef nonnull @.str.28, ptr noundef %tfms_count.i101.i, ptr noundef nonnull %dummy.i.i) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call7.i.i337)
  %cmp.not.i.i = icmp eq i32 %call7.i.i337, 1
  br i1 %cmp.not.i.i, label %lor.lhs.false8.i.i, label %if.else.i103.i.if.then11.i.i_crit_edge

if.else.i103.i.if.then11.i.i_crit_edge:           ; preds = %if.else.i103.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then11.i.i

lor.lhs.false8.i.i:                               ; preds = %if.else.i103.i
  %123 = ptrtoint ptr %tfms_count.i101.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %tfms_count.i101.i, align 4
  %125 = call i32 @llvm.ctpop.i32(i32 %124) #20, !range !411
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %125)
  %126 = icmp eq i32 %125, 1
  br i1 %126, label %lor.lhs.false8.i.i.if.end14.i.i_crit_edge, label %lor.lhs.false8.i.i.if.then11.i.i_crit_edge

lor.lhs.false8.i.i.if.then11.i.i_crit_edge:       ; preds = %lor.lhs.false8.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then11.i.i

lor.lhs.false8.i.i.if.end14.i.i_crit_edge:        ; preds = %lor.lhs.false8.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end14.i.i

if.then11.i.i:                                    ; preds = %lor.lhs.false8.i.i.if.then11.i.i_crit_edge, %if.else.i103.i.if.then11.i.i_crit_edge
  %error12.i.i = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 12
  %127 = ptrtoint ptr %error12.i.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr @.str.66, ptr %error12.i.i, align 8
  br label %crypt_ctr_cipher_old.exit.i

if.end14.i.i:                                     ; preds = %lor.lhs.false8.i.i.if.end14.i.i_crit_edge, %if.then5.i.i
  %128 = ptrtoint ptr %tfms_count.i101.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %tfms_count.i101.i, align 4
  %key_parts.i104.i = getelementptr inbounds %struct.crypt_config, ptr %67, i32 0, i32 24
  %130 = ptrtoint ptr %key_parts.i104.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 %129, ptr %key_parts.i104.i, align 4
  %call16.i.i = call ptr @strsep(ptr noundef nonnull %tmp.i.i, ptr noundef nonnull @.str.65) #20
  %call17.i.i = call ptr @strsep(ptr noundef nonnull %tmp.i.i, ptr noundef nonnull @.str.27) #20
  %131 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %tmp.i.i, align 4
  %tobool18.not.i105.i = icmp eq ptr %call16.i.i, null
  br i1 %tobool18.not.i105.i, label %if.end14.i.i.if.end31.i.i_crit_edge, label %lor.lhs.false19.i.i

if.end14.i.i.if.end31.i.i_crit_edge:              ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end31.i.i

lor.lhs.false19.i.i:                              ; preds = %if.end14.i.i
  %call20.i106.i = call i32 @strcmp(ptr noundef nonnull %call16.i.i, ptr noundef nonnull dereferenceable(6) @.str.67) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i106.i)
  %tobool21.not.i107.i = icmp eq i32 %call20.i106.i, 0
  %tobool22.not.i.i = icmp eq ptr %call17.i.i, null
  %or.cond.i = select i1 %tobool21.not.i107.i, i1 %tobool22.not.i.i, i1 false
  br i1 %or.cond.i, label %lor.lhs.false19.i.i.if.end31.i.i_crit_edge, label %if.end24.i.i

lor.lhs.false19.i.i.if.end31.i.i_crit_edge:       ; preds = %lor.lhs.false19.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end31.i.i

if.end24.i.i:                                     ; preds = %lor.lhs.false19.i.i
  %call25.i.i = call i32 @strcmp(ptr noundef nonnull %call16.i.i, ptr noundef nonnull dereferenceable(4) @.str.69) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i.i)
  %tobool26.not.i.i = icmp ne i32 %call25.i.i, 0
  %or.cond161.i = select i1 %tobool26.not.i.i, i1 %tobool22.not.i.i, i1 false
  br i1 %or.cond161.i, label %if.then29.i.i, label %if.end24.i.i.if.end31.i.i_crit_edge

if.end24.i.i.if.end31.i.i_crit_edge:              ; preds = %if.end24.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end31.i.i

if.then29.i.i:                                    ; preds = %if.end24.i.i
  call void @__sanitizer_cov_trace_pc() #22
  %error30.i.i = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 12
  %133 = ptrtoint ptr %error30.i.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr @.str.70, ptr %error30.i.i, align 8
  br label %crypt_ctr_cipher_old.exit.i

if.end31.i.i:                                     ; preds = %if.end24.i.i.if.end31.i.i_crit_edge, %lor.lhs.false19.i.i.if.end31.i.i_crit_edge, %if.end14.i.i.if.end31.i.i_crit_edge
  %chainmode.0.i149.i = phi ptr [ %call16.i.i, %if.end24.i.i.if.end31.i.i_crit_edge ], [ @.str.68, %lor.lhs.false19.i.i.if.end31.i.i_crit_edge ], [ @.str.68, %if.end14.i.i.if.end31.i.i_crit_edge ]
  %ivmode.1147.i = phi ptr [ %call17.i.i, %if.end24.i.i.if.end31.i.i_crit_edge ], [ @.str.67, %lor.lhs.false19.i.i.if.end31.i.i_crit_edge ], [ @.str.67, %if.end14.i.i.if.end31.i.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %134 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %134, i32 noundef 3264, i32 noundef 128) #26
  %tobool33.not.i.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool33.not.i.i, label %if.end31.i.i.bad_mem.i.i_crit_edge, label %if.end35.i.i

if.end31.i.i.bad_mem.i.i_crit_edge:               ; preds = %if.end31.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %bad_mem.i.i

if.end35.i.i:                                     ; preds = %if.end31.i.i
  %tobool36.not.i.i = icmp eq ptr %ivmode.1147.i, null
  br i1 %tobool36.not.i.i, label %if.end35.i.i.if.else46.i.i_crit_edge, label %land.lhs.true37.i.i

if.end35.i.i.if.else46.i.i_crit_edge:             ; preds = %if.end35.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.else46.i.i

land.lhs.true37.i.i:                              ; preds = %if.end35.i.i
  %call38.i.i = call i32 @strcmp(ptr noundef nonnull %ivmode.1147.i, ptr noundef nonnull dereferenceable(6) @.str.54) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38.i.i)
  %tobool39.not.i.i = icmp eq i32 %call38.i.i, 0
  br i1 %tobool39.not.i.i, label %if.then40.i.i, label %land.lhs.true37.i.i.if.else46.i.i_crit_edge

land.lhs.true37.i.i.if.else46.i.i_crit_edge:      ; preds = %land.lhs.true37.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.else46.i.i

if.then40.i.i:                                    ; preds = %land.lhs.true37.i.i
  %tobool41.not.i.i = icmp eq ptr %132, null
  br i1 %tobool41.not.i.i, label %if.then42.i109.i, label %if.end44.i.i

if.then42.i109.i:                                 ; preds = %if.then40.i.i
  call void @__sanitizer_cov_trace_pc() #22
  %error43.i.i = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 12
  %135 = ptrtoint ptr %error43.i.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store ptr @.str.55, ptr %error43.i.i, align 8
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #20
  br label %crypt_ctr_cipher_old.exit.i

if.end44.i.i:                                     ; preds = %if.then40.i.i
  call void @__sanitizer_cov_trace_pc() #22
  %call45.i.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %call7.i.i.i, i32 noundef 128, ptr noundef nonnull @.str.71, ptr noundef nonnull %chainmode.0.i149.i, ptr noundef %call3.i.i, ptr noundef nonnull %132) #20
  br label %if.end48.i.i

if.else46.i.i:                                    ; preds = %land.lhs.true37.i.i.if.else46.i.i_crit_edge, %if.end35.i.i.if.else46.i.i_crit_edge
  %call47.i.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %call7.i.i.i, i32 noundef 128, ptr noundef nonnull @.str.72, ptr noundef nonnull %chainmode.0.i149.i, ptr noundef %call3.i.i) #20
  br label %if.end48.i.i

if.end48.i.i:                                     ; preds = %if.else46.i.i, %if.end44.i.i
  %ret.0.i.i = phi i32 [ %call47.i.i, %if.else46.i.i ], [ %call45.i.i, %if.end44.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %ret.0.i.i)
  %136 = icmp ugt i32 %ret.0.i.i, 127
  br i1 %136, label %if.then52.i.i, label %if.end53.i.i

if.then52.i.i:                                    ; preds = %if.end48.i.i
  call void @__sanitizer_cov_trace_pc() #22
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #20
  br label %bad_mem.i.i

if.end53.i.i:                                     ; preds = %if.end48.i.i
  %137 = ptrtoint ptr %cipher_flags.i.i96.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load volatile i32, ptr %cipher_flags.i.i96.i, align 4
  %and1.i.i.i.i110.i = and i32 %138, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i110.i)
  %tobool.i.not.i.i111.i = icmp eq i32 %and1.i.i.i.i110.i, 0
  br i1 %tobool.i.not.i.i111.i, label %if.else.i.i115.i, label %if.then.i.i113.i

if.then.i.i113.i:                                 ; preds = %if.end53.i.i
  call void @__sanitizer_cov_trace_pc() #22
  %call1.i.i112.i = call fastcc i32 @crypt_alloc_tfms_aead(ptr noundef %67, ptr noundef nonnull %call7.i.i.i) #20
  br label %crypt_alloc_tfms.exit.i116.i

if.else.i.i115.i:                                 ; preds = %if.end53.i.i
  call void @__sanitizer_cov_trace_pc() #22
  %call2.i.i114.i = call fastcc i32 @crypt_alloc_tfms_skcipher(ptr noundef %67, ptr noundef nonnull %call7.i.i.i) #20
  br label %crypt_alloc_tfms.exit.i116.i

crypt_alloc_tfms.exit.i116.i:                     ; preds = %if.else.i.i115.i, %if.then.i.i113.i
  %retval.0.i.i.i = phi i32 [ %call1.i.i112.i, %if.then.i.i113.i ], [ %call2.i.i114.i, %if.else.i.i115.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i.i)
  %cmp55.i.i = icmp slt i32 %retval.0.i.i.i, 0
  br i1 %cmp55.i.i, label %if.then56.i.i, label %if.end58.i.i

if.then56.i.i:                                    ; preds = %crypt_alloc_tfms.exit.i116.i
  call void @__sanitizer_cov_trace_pc() #22
  %error57.i.i = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 12
  %139 = ptrtoint ptr %error57.i.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr @.str.58, ptr %error57.i.i, align 8
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #20
  br label %crypt_ctr_cipher_old.exit.i

if.end58.i.i:                                     ; preds = %crypt_alloc_tfms.exit.i116.i
  call void @__sanitizer_cov_trace_pc() #22
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #20
  br label %crypt_ctr_cipher_old.exit.i

bad_mem.i.i:                                      ; preds = %if.then52.i.i, %if.end31.i.i.bad_mem.i.i_crit_edge
  %error59.i.i = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 12
  %140 = ptrtoint ptr %error59.i.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store ptr @.str.47, ptr %error59.i.i, align 8
  br label %crypt_ctr_cipher_old.exit.i

crypt_ctr_cipher_old.exit.i:                      ; preds = %bad_mem.i.i, %if.end58.i.i, %if.then56.i.i, %if.then42.i109.i, %if.then29.i.i, %if.then11.i.i, %if.then.i100.i
  %ivmode.2.i = phi ptr [ %ivmode.1147.i, %bad_mem.i.i ], [ %ivmode.1147.i, %if.then56.i.i ], [ %ivmode.1147.i, %if.end58.i.i ], [ %ivmode.1147.i, %if.then42.i109.i ], [ null, %if.then29.i.i ], [ null, %if.then11.i.i ], [ null, %if.then.i100.i ]
  %ivopts.1.i = phi ptr [ %132, %bad_mem.i.i ], [ %132, %if.then56.i.i ], [ %132, %if.end58.i.i ], [ null, %if.then42.i109.i ], [ %132, %if.then29.i.i ], [ null, %if.then11.i.i ], [ null, %if.then.i100.i ]
  %retval.0.i117.i = phi i32 [ -12, %bad_mem.i.i ], [ %retval.0.i.i.i, %if.then56.i.i ], [ 0, %if.end58.i.i ], [ -22, %if.then42.i109.i ], [ -22, %if.then29.i.i ], [ -22, %if.then11.i.i ], [ -22, %if.then.i100.i ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %dummy.i.i) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %keycount.i.i) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i) #20
  br label %if.end6.i

if.end6.i:                                        ; preds = %crypt_ctr_cipher_old.exit.i, %crypt_ctr_cipher_new.exit.i
  %ivmode.3.i = phi ptr [ %ivmode.0.i, %crypt_ctr_cipher_new.exit.i ], [ %ivmode.2.i, %crypt_ctr_cipher_old.exit.i ]
  %ivopts.2.i = phi ptr [ %ivopts.0.i, %crypt_ctr_cipher_new.exit.i ], [ %ivopts.1.i, %crypt_ctr_cipher_old.exit.i ]
  %ret.0.i = phi i32 [ %retval.0.i.i, %crypt_ctr_cipher_new.exit.i ], [ %retval.0.i117.i, %crypt_ctr_cipher_old.exit.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %tobool7.not.i = icmp eq i32 %ret.0.i, 0
  br i1 %tobool7.not.i, label %if.end9.i, label %if.end6.i.bad_crit_edge

if.end6.i.bad_crit_edge:                          ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %bad

if.end9.i:                                        ; preds = %if.end6.i
  %141 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %private, align 4
  %cipher_flags.i.i119.i = getelementptr inbounds %struct.crypt_config, ptr %142, i32 0, i32 19
  %143 = ptrtoint ptr %cipher_flags.i.i119.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load volatile i32, ptr %cipher_flags.i.i119.i, align 4
  %and1.i.i.i120.i = and i32 %144, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i120.i)
  %tobool.i.not.i121.i = icmp eq i32 %and1.i.i.i120.i, 0
  %cipher_tfm.i157.i.i = getelementptr inbounds %struct.crypt_config, ptr %142, i32 0, i32 17
  %145 = ptrtoint ptr %cipher_tfm.i157.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %cipher_tfm.i157.i.i, align 8
  %147 = ptrtoint ptr %146 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %146, align 4
  %__crt_alg.i.i158.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %148, i32 0, i32 2, i32 3
  %.sink162.i.i = select i1 %tobool.i.not.i121.i, i32 -100, i32 -104
  %149 = ptrtoint ptr %__crt_alg.i.i158.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %__crt_alg.i.i158.i.i, align 4
  %ivsize.i.i123.i = getelementptr i8, ptr %150, i32 %.sink162.i.i
  %151 = ptrtoint ptr %ivsize.i.i123.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %.sink.i.i = load i32, ptr %ivsize.i.i123.i, align 4
  %152 = getelementptr inbounds %struct.crypt_config, ptr %142, i32 0, i32 14
  %153 = ptrtoint ptr %152 to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 %.sink.i.i, ptr %152, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.sink.i.i)
  %tobool.not.i124.i = icmp eq i32 %.sink.i.i, 0
  br i1 %tobool.not.i124.i, label %if.else10.i.i, label %if.end16.i.i

if.else10.i.i:                                    ; preds = %if.end9.i
  %tobool11.not.i.i = icmp eq ptr %ivmode.3.i, null
  br i1 %tobool11.not.i.i, label %if.else10.i.i.if.then18.i.i_crit_edge, label %do.end.i.i

if.else10.i.i.if.then18.i.i_crit_edge:            ; preds = %if.else10.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then18.i.i

do.end.i.i:                                       ; preds = %if.else10.i.i
  call void @__sanitizer_cov_trace_pc() #22
  %call14.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.73) #23
  br label %if.then18.i.i

if.end16.i.i:                                     ; preds = %if.end9.i
  %154 = call i32 @llvm.umax.i32(i32 %.sink.i.i, i32 8) #20
  %155 = ptrtoint ptr %152 to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 %154, ptr %152, align 8
  %cmp17.i.i = icmp eq ptr %ivmode.3.i, null
  br i1 %cmp17.i.i, label %if.end16.i.i.if.then18.i.i_crit_edge, label %if.else19.i.i

if.end16.i.i.if.then18.i.i_crit_edge:             ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then18.i.i

if.then18.i.i:                                    ; preds = %if.end16.i.i.if.then18.i.i_crit_edge, %do.end.i.i, %if.else10.i.i.if.then18.i.i_crit_edge
  %iv_gen_ops.i.i = getelementptr inbounds %struct.crypt_config, ptr %142, i32 0, i32 11
  %156 = ptrtoint ptr %iv_gen_ops.i.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store ptr null, ptr %iv_gen_ops.i.i, align 8
  br label %if.end12.i

if.else19.i.i:                                    ; preds = %if.end16.i.i
  %call20.i125.i = call i32 @strcmp(ptr noundef nonnull %ivmode.3.i, ptr noundef nonnull dereferenceable(6) @.str.67) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i125.i)
  %cmp21.i.i = icmp eq i32 %call20.i125.i, 0
  br i1 %cmp21.i.i, label %if.then22.i126.i, label %if.else24.i.i

if.then22.i126.i:                                 ; preds = %if.else19.i.i
  call void @__sanitizer_cov_trace_pc() #22
  %iv_gen_ops23.i.i = getelementptr inbounds %struct.crypt_config, ptr %142, i32 0, i32 11
  %157 = ptrtoint ptr %iv_gen_ops23.i.i to i32
  call void @__asan_store4_noabort(i32 %157)
  store ptr @crypt_iv_plain_ops, ptr %iv_gen_ops23.i.i, align 8
  br label %if.end12.i

if.else24.i.i:                                    ; preds = %if.else19.i.i
  %call25.i127.i = call i32 @strcmp(ptr noundef nonnull %ivmode.3.i, ptr noundef nonnull dereferenceable(8) @.str.75) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i127.i)
  %cmp26.i.i = icmp eq i32 %call25.i127.i, 0
  br i1 %cmp26.i.i, label %if.then27.i.i, label %if.else29.i.i

if.then27.i.i:                                    ; preds = %if.else24.i.i
  call void @__sanitizer_cov_trace_pc() #22
  %iv_gen_ops28.i.i = getelementptr inbounds %struct.crypt_config, ptr %142, i32 0, i32 11
  %158 = ptrtoint ptr %iv_gen_ops28.i.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store ptr @crypt_iv_plain64_ops, ptr %iv_gen_ops28.i.i, align 8
  br label %if.end12.i

if.else29.i.i:                                    ; preds = %if.else24.i.i
  %call30.i.i = call i32 @strcmp(ptr noundef nonnull %ivmode.3.i, ptr noundef nonnull dereferenceable(10) @.str.76) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i.i)
  %cmp31.i.i = icmp eq i32 %call30.i.i, 0
  br i1 %cmp31.i.i, label %if.then32.i.i, label %if.else34.i.i

if.then32.i.i:                                    ; preds = %if.else29.i.i
  call void @__sanitizer_cov_trace_pc() #22
  %iv_gen_ops33.i.i = getelementptr inbounds %struct.crypt_config, ptr %142, i32 0, i32 11
  %159 = ptrtoint ptr %iv_gen_ops33.i.i to i32
  call void @__asan_store4_noabort(i32 %159)
  store ptr @crypt_iv_plain64be_ops, ptr %iv_gen_ops33.i.i, align 8
  br label %if.end12.i

if.else34.i.i:                                    ; preds = %if.else29.i.i
  %call35.i.i = call i32 @strcmp(ptr noundef nonnull %ivmode.3.i, ptr noundef nonnull dereferenceable(6) @.str.54) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35.i.i)
  %cmp36.i.i = icmp eq i32 %call35.i.i, 0
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.else39.i.i

if.then37.i.i:                                    ; preds = %if.else34.i.i
  call void @__sanitizer_cov_trace_pc() #22
  %iv_gen_ops38.i.i = getelementptr inbounds %struct.crypt_config, ptr %142, i32 0, i32 11
  %160 = ptrtoint ptr %iv_gen_ops38.i.i to i32
  call void @__asan_store4_noabort(i32 %160)
  store ptr @crypt_iv_essiv_ops, ptr %iv_gen_ops38.i.i, align 8
  br label %if.end12.i

if.else39.i.i:                                    ; preds = %if.else34.i.i
  %call40.i.i = call i32 @strcmp(ptr noundef nonnull %ivmode.3.i, ptr noundef nonnull dereferenceable(6) @.str.77) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40.i.i)
  %cmp41.i.i = icmp eq i32 %call40.i.i, 0
  br i1 %cmp41.i.i, label %if.then42.i128.i, label %if.else44.i.i

if.then42.i128.i:                                 ; preds = %if.else39.i.i
  call void @__sanitizer_cov_trace_pc() #22
  %iv_gen_ops43.i.i = getelementptr inbounds %struct.crypt_config, ptr %142, i32 0, i32 11
  %161 = ptrtoint ptr %iv_gen_ops43.i.i to i32
  call void @__asan_store4_noabort(i32 %161)
  store ptr @crypt_iv_benbi_ops, ptr %iv_gen_ops43.i.i, align 8
  br label %if.end12.i

if.else44.i.i:                                    ; preds = %if.else39.i.i
  %call45.i129.i = call i32 @strcmp(ptr noundef nonnull %ivmode.3.i, ptr noundef nonnull dereferenceable(5) @.str.78) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45.i129.i)
  %cmp46.i.i = icmp eq i32 %call45.i129.i, 0
  br i1 %cmp46.i.i, label %if.then47.i.i, label %if.else49.i.i

if.then47.i.i:                                    ; preds = %if.else44.i.i
  call void @__sanitizer_cov_trace_pc() #22
  %iv_gen_ops48.i.i = getelementptr inbounds %struct.crypt_config, ptr %142, i32 0, i32 11
  %162 = ptrtoint ptr %iv_gen_ops48.i.i to i32
  call void @__asan_store4_noabort(i32 %162)
  store ptr @crypt_iv_null_ops, ptr %iv_gen_ops48.i.i, align 8
  br label %if.end12.i

if.else49.i.i:                                    ; preds = %if.else44.i.i
  %call50.i.i = call i32 @strcmp(ptr noundef nonnull %ivmode.3.i, ptr noundef nonnull dereferenceable(6) @.str.79) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50.i.i)
  %cmp51.i.i = icmp eq i32 %call50.i.i, 0
  br i1 %cmp51.i.i, label %if.then52.i130.i, label %if.else54.i.i

if.then52.i130.i:                                 ; preds = %if.else49.i.i
  call void @__sanitizer_cov_trace_pc() #22
  %iv_gen_ops53.i.i = getelementptr inbounds %struct.crypt_config, ptr %142, i32 0, i32 11
  %163 = ptrtoint ptr %iv_gen_ops53.i.i to i32
  call void @__asan_store4_noabort(i32 %163)
  store ptr @crypt_iv_eboiv_ops, ptr %iv_gen_ops53.i.i, align 8
  br label %if.end12.i

if.else54.i.i:                                    ; preds = %if.else49.i.i
  %call55.i.i = call i32 @strcmp(ptr noundef nonnull %ivmode.3.i, ptr noundef nonnull dereferenceable(9) @.str.80) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55.i.i)
  %cmp56.i.i = icmp eq i32 %call55.i.i, 0
  br i1 %cmp56.i.i, label %if.then57.i.i, label %if.else63.i.i

if.then57.i.i:                                    ; preds = %if.else54.i.i
  %iv_gen_ops58.i.i = getelementptr inbounds %struct.crypt_config, ptr %142, i32 0, i32 11
  %164 = ptrtoint ptr %iv_gen_ops58.i.i to i32
  call void @__asan_store4_noabort(i32 %164)
  store ptr @crypt_iv_elephant_ops, ptr %iv_gen_ops58.i.i, align 8
  %key_parts.i131.i = getelementptr inbounds %struct.crypt_config, ptr %142, i32 0, i32 24
  %165 = ptrtoint ptr %key_parts.i131.i to i32
  call void @__asan_store4_noabort(i32 %165)
  store i32 2, ptr %key_parts.i131.i, align 4
  %key_size.i.i = getelementptr inbounds %struct.crypt_config, ptr %142, i32 0, i32 23
  %166 = ptrtoint ptr %key_size.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %key_size.i.i, align 8
  %div156.i.i = lshr i32 %167, 1
  %key_extra_size.i.i = getelementptr inbounds %struct.crypt_config, ptr %142, i32 0, i32 25
  %168 = ptrtoint ptr %key_extra_size.i.i to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 %div156.i.i, ptr %key_extra_size.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 65, i32 %167)
  %cmp60.i.i = icmp ugt i32 %167, 65
  br i1 %cmp60.i.i, label %if.then57.i.i.bad_crit_edge, label %if.end62.i.i

if.then57.i.i.bad_crit_edge:                      ; preds = %if.then57.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %bad

if.end62.i.i:                                     ; preds = %if.then57.i.i
  call void @__sanitizer_cov_trace_pc() #22
  call void @_set_bit(i32 noundef 2, ptr noundef %cipher_flags.i.i119.i) #20
  br label %if.end12.i

if.else63.i.i:                                    ; preds = %if.else54.i.i
  %call64.i.i = call i32 @strcmp(ptr noundef nonnull %ivmode.3.i, ptr noundef nonnull dereferenceable(4) @.str.53) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64.i.i)
  %cmp65.i.i = icmp eq i32 %call64.i.i, 0
  br i1 %cmp65.i.i, label %if.then66.i.i, label %if.else78.i.i

if.then66.i.i:                                    ; preds = %if.else63.i.i
  %iv_gen_ops67.i.i = getelementptr inbounds %struct.crypt_config, ptr %142, i32 0, i32 11
  %169 = ptrtoint ptr %iv_gen_ops67.i.i to i32
  call void @__asan_store4_noabort(i32 %169)
  store ptr @crypt_iv_lmk_ops, ptr %iv_gen_ops67.i.i, align 8
  %key_size68.i.i = getelementptr inbounds %struct.crypt_config, ptr %142, i32 0, i32 23
  %170 = ptrtoint ptr %key_size68.i.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %key_size68.i.i, align 8
  %key_parts69.i.i = getelementptr inbounds %struct.crypt_config, ptr %142, i32 0, i32 24
  %172 = ptrtoint ptr %key_parts69.i.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %key_parts69.i.i, align 4
  %rem.i.i = urem i32 %171, %173
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i.i)
  %tobool70.not.i.i = icmp eq i32 %rem.i.i, 0
  br i1 %tobool70.not.i.i, label %if.then66.i.i.if.end12.i_crit_edge, label %if.then71.i.i

if.then66.i.i.if.end12.i_crit_edge:               ; preds = %if.then66.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end12.i

if.then71.i.i:                                    ; preds = %if.then66.i.i
  call void @__sanitizer_cov_trace_pc() #22
  %inc.i.i = add i32 %173, 1
  %174 = ptrtoint ptr %key_parts69.i.i to i32
  call void @__asan_store4_noabort(i32 %174)
  store i32 %inc.i.i, ptr %key_parts69.i.i, align 4
  %div75.i.i = udiv i32 %171, %inc.i.i
  %key_extra_size76.i.i = getelementptr inbounds %struct.crypt_config, ptr %142, i32 0, i32 25
  %175 = ptrtoint ptr %key_extra_size76.i.i to i32
  call void @__asan_store4_noabort(i32 %175)
  store i32 %div75.i.i, ptr %key_extra_size76.i.i, align 8
  br label %if.end12.i

if.else78.i.i:                                    ; preds = %if.else63.i.i
  %call79.i.i = call i32 @strcmp(ptr noundef nonnull %ivmode.3.i, ptr noundef nonnull dereferenceable(4) @.str.81) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79.i.i)
  %cmp80.i.i = icmp eq i32 %call79.i.i, 0
  br i1 %cmp80.i.i, label %if.then81.i.i, label %if.else87.i.i

if.then81.i.i:                                    ; preds = %if.else78.i.i
  call void @__sanitizer_cov_trace_pc() #22
  %iv_gen_ops82.i.i = getelementptr inbounds %struct.crypt_config, ptr %142, i32 0, i32 11
  %176 = ptrtoint ptr %iv_gen_ops82.i.i to i32
  call void @__asan_store4_noabort(i32 %176)
  store ptr @crypt_iv_tcw_ops, ptr %iv_gen_ops82.i.i, align 8
  %key_parts83.i.i = getelementptr inbounds %struct.crypt_config, ptr %142, i32 0, i32 24
  %177 = ptrtoint ptr %key_parts83.i.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %key_parts83.i.i, align 4
  %add.i.i = add i32 %178, 2
  store i32 %add.i.i, ptr %key_parts83.i.i, align 4
  %add85.i.i = add i32 %154, 16
  %key_extra_size86.i.i = getelementptr inbounds %struct.crypt_config, ptr %142, i32 0, i32 25
  %179 = ptrtoint ptr %key_extra_size86.i.i to i32
  call void @__asan_store4_noabort(i32 %179)
  store i32 %add85.i.i, ptr %key_extra_size86.i.i, align 8
  br label %if.end12.i

if.else87.i.i:                                    ; preds = %if.else78.i.i
  %call88.i.i = call i32 @strcmp(ptr noundef nonnull %ivmode.3.i, ptr noundef nonnull dereferenceable(7) @.str.82) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call88.i.i)
  %cmp89.i.i = icmp eq i32 %call88.i.i, 0
  br i1 %cmp89.i.i, label %if.then90.i.i, label %if.else93.i.i

if.then90.i.i:                                    ; preds = %if.else87.i.i
  call void @__sanitizer_cov_trace_pc() #22
  %iv_gen_ops91.i.i = getelementptr inbounds %struct.crypt_config, ptr %142, i32 0, i32 11
  %180 = ptrtoint ptr %iv_gen_ops91.i.i to i32
  call void @__asan_store4_noabort(i32 %180)
  store ptr @crypt_iv_random_ops, ptr %iv_gen_ops91.i.i, align 8
  %integrity_iv_size.i.i = getelementptr inbounds %struct.crypt_config, ptr %142, i32 0, i32 28
  %181 = ptrtoint ptr %integrity_iv_size.i.i to i32
  call void @__asan_store4_noabort(i32 %181)
  store i32 %154, ptr %integrity_iv_size.i.i, align 4
  br label %if.end12.i

if.else93.i.i:                                    ; preds = %if.else87.i.i
  call void @__sanitizer_cov_trace_pc() #22
  %error.i132.i = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 12
  %182 = ptrtoint ptr %error.i132.i to i32
  call void @__asan_store4_noabort(i32 %182)
  store ptr @.str.83, ptr %error.i132.i, align 8
  br label %bad

if.end12.i:                                       ; preds = %if.then90.i.i, %if.then81.i.i, %if.then71.i.i, %if.then66.i.i.if.end12.i_crit_edge, %if.end62.i.i, %if.then52.i130.i, %if.then47.i.i, %if.then42.i128.i, %if.then37.i.i, %if.then32.i.i, %if.then27.i.i, %if.then22.i126.i, %if.then18.i.i
  %call13.i = call fastcc i32 @crypt_set_key(ptr noundef %63, ptr noundef %61) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %cmp14.i = icmp slt i32 %call13.i, 0
  br i1 %cmp14.i, label %if.then15.i, label %if.end17.i

if.then15.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #22
  %error16.i = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 12
  %183 = ptrtoint ptr %error16.i to i32
  call void @__asan_store4_noabort(i32 %183)
  store ptr @.str.49, ptr %error16.i, align 8
  br label %bad

if.end17.i:                                       ; preds = %if.end12.i
  %iv_gen_ops.i = getelementptr inbounds %struct.crypt_config, ptr %63, i32 0, i32 11
  %184 = ptrtoint ptr %iv_gen_ops.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %iv_gen_ops.i, align 8
  %tobool18.not.i = icmp eq ptr %185, null
  br i1 %tobool18.not.i, label %if.end17.i.if.end43.i_crit_edge, label %land.lhs.true.i

if.end17.i.if.end43.i_crit_edge:                  ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end43.i

land.lhs.true.i:                                  ; preds = %if.end17.i
  %186 = ptrtoint ptr %185 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %185, align 4
  %tobool20.not.i = icmp eq ptr %187, null
  br i1 %tobool20.not.i, label %land.lhs.true.i.land.lhs.true32.i_crit_edge, label %if.then21.i

land.lhs.true.i.land.lhs.true32.i_crit_edge:      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %land.lhs.true32.i

if.then21.i:                                      ; preds = %land.lhs.true.i
  %call24.i = call i32 %187(ptr noundef %63, ptr noundef %ti, ptr noundef %ivopts.2.i) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i)
  %cmp25.i = icmp slt i32 %call24.i, 0
  br i1 %cmp25.i, label %if.then26.i, label %if.end29.i

if.then26.i:                                      ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #22
  %error27.i = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 12
  %188 = ptrtoint ptr %error27.i to i32
  call void @__asan_store4_noabort(i32 %188)
  store ptr @.str.50, ptr %error27.i, align 8
  br label %bad

if.end29.i:                                       ; preds = %if.then21.i
  %189 = ptrtoint ptr %iv_gen_ops.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %.pr.i = load ptr, ptr %iv_gen_ops.i, align 8
  %tobool31.not.i = icmp eq ptr %.pr.i, null
  br i1 %tobool31.not.i, label %if.end29.i.if.end43.i_crit_edge, label %if.end29.i.land.lhs.true32.i_crit_edge

if.end29.i.land.lhs.true32.i_crit_edge:           ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %land.lhs.true32.i

if.end29.i.if.end43.i_crit_edge:                  ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end43.i

land.lhs.true32.i:                                ; preds = %if.end29.i.land.lhs.true32.i_crit_edge, %land.lhs.true.i.land.lhs.true32.i_crit_edge
  %190 = phi ptr [ %.pr.i, %if.end29.i.land.lhs.true32.i_crit_edge ], [ %185, %land.lhs.true.i.land.lhs.true32.i_crit_edge ]
  %init.i = getelementptr inbounds %struct.crypt_iv_operations, ptr %190, i32 0, i32 2
  %191 = ptrtoint ptr %init.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %init.i, align 4
  %tobool34.not.i = icmp eq ptr %192, null
  br i1 %tobool34.not.i, label %land.lhs.true32.i.if.end43.i_crit_edge, label %if.then35.i

land.lhs.true32.i.if.end43.i_crit_edge:           ; preds = %land.lhs.true32.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end43.i

if.then35.i:                                      ; preds = %land.lhs.true32.i
  %call38.i338 = call i32 %192(ptr noundef %63) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38.i338)
  %cmp39.i = icmp slt i32 %call38.i338, 0
  br i1 %cmp39.i, label %if.then40.i, label %if.then35.i.if.end43.i_crit_edge

if.then35.i.if.end43.i_crit_edge:                 ; preds = %if.then35.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end43.i

if.then40.i:                                      ; preds = %if.then35.i
  call void @__sanitizer_cov_trace_pc() #22
  %error41.i = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 12
  %193 = ptrtoint ptr %error41.i to i32
  call void @__asan_store4_noabort(i32 %193)
  store ptr @.str.51, ptr %error41.i, align 8
  br label %bad

if.end43.i:                                       ; preds = %if.then35.i.if.end43.i_crit_edge, %land.lhs.true32.i.if.end43.i_crit_edge, %if.end29.i.if.end43.i_crit_edge, %if.end17.i.if.end43.i_crit_edge
  %key_string.i = getelementptr inbounds %struct.crypt_config, ptr %63, i32 0, i32 10
  %194 = ptrtoint ptr %key_string.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %key_string.i, align 4
  %tobool44.not.i = icmp eq ptr %195, null
  br i1 %tobool44.not.i, label %if.end43.i.if.end29_crit_edge, label %if.then45.i

if.end43.i.if.end29_crit_edge:                    ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end29

if.then45.i:                                      ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #22
  %key46.i = getelementptr inbounds %struct.crypt_config, ptr %63, i32 0, i32 37
  %key_size.i = getelementptr inbounds %struct.crypt_config, ptr %63, i32 0, i32 23
  %196 = ptrtoint ptr %key_size.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %key_size.i, align 8
  %198 = call ptr @memset(ptr %key46.i, i32 0, i32 %197)
  br label %if.end29

if.end29:                                         ; preds = %if.then45.i, %if.end43.i.if.end29_crit_edge
  %cipher_flags.i = getelementptr inbounds %struct.crypt_config, ptr %call9.i.i, i32 0, i32 19
  %199 = ptrtoint ptr %cipher_flags.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load volatile i32, ptr %cipher_flags.i, align 8
  %and1.i.i = and i32 %200, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  %dmreq_start37 = getelementptr inbounds %struct.crypt_config, ptr %call9.i.i, i32 0, i32 20
  %201 = ptrtoint ptr %dmreq_start37 to i32
  call void @__asan_store4_noabort(i32 %201)
  store i32 128, ptr %dmreq_start37, align 4
  %cipher_tfm.i341 = getelementptr inbounds %struct.crypt_config, ptr %call9.i.i, i32 0, i32 17
  %202 = ptrtoint ptr %cipher_tfm.i341 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %cipher_tfm.i341, align 64
  %204 = ptrtoint ptr %203 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %203, align 4
  br i1 %tobool.i.not, label %if.else, label %if.then31

if.then31:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #22
  %reqsize.i = getelementptr inbounds %struct.crypto_aead, ptr %205, i32 0, i32 1
  %206 = ptrtoint ptr %reqsize.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %reqsize.i, align 4
  %add = add i32 %207, 128
  %208 = ptrtoint ptr %dmreq_start37 to i32
  call void @__asan_store4_noabort(i32 %208)
  store i32 %add, ptr %dmreq_start37, align 4
  %209 = ptrtoint ptr %203 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %203, align 4
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_aead, ptr %210, i32 0, i32 3, i32 3
  br label %if.end44

if.else:                                          ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #22
  %211 = ptrtoint ptr %205 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %205, align 128
  %add41 = add i32 %212, 128
  %213 = ptrtoint ptr %dmreq_start37 to i32
  call void @__asan_store4_noabort(i32 %213)
  store i32 %add41, ptr %dmreq_start37, align 4
  %214 = ptrtoint ptr %203 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %203, align 4
  %__crt_alg.i.i343 = getelementptr inbounds %struct.crypto_skcipher, ptr %215, i32 0, i32 2, i32 3
  br label %if.end44

if.end44:                                         ; preds = %if.else, %if.then31
  %.pn.in = phi ptr [ %__crt_alg.i.i, %if.then31 ], [ %__crt_alg.i.i343, %if.else ]
  %216 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %216)
  %.pn = load ptr, ptr %.pn.in, align 4
  %align_mask.0.in = getelementptr inbounds %struct.crypto_alg, ptr %.pn, i32 0, i32 5
  %217 = ptrtoint ptr %align_mask.0.in to i32
  call void @__asan_load4_noabort(i32 %217)
  %align_mask.0 = load i32, ptr %align_mask.0.in, align 4
  %dmreq_start45 = getelementptr inbounds %struct.crypt_config, ptr %call9.i.i, i32 0, i32 20
  %218 = ptrtoint ptr %dmreq_start45 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %dmreq_start45, align 4
  %add46 = add i32 %219, 7
  %and = and i32 %add46, -8
  store i32 %and, ptr %dmreq_start45, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %align_mask.0)
  %cmp48 = icmp ult i32 %align_mask.0, 128
  %sub52 = sub i32 -176, %and
  %and53 = select i1 %cmp48, i32 %sub52, i32 -1
  %iv_size_padding.0 = and i32 %and53, %align_mask.0
  %iv_size = getelementptr inbounds %struct.crypt_config, ptr %call9.i.i, i32 0, i32 14
  %220 = ptrtoint ptr %iv_size to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %iv_size, align 8
  %reass.add = shl i32 %221, 1
  %add59 = add i32 %reass.add, 188
  %add61 = add i32 %add59, %iv_size_padding.0
  %req_pool = getelementptr inbounds %struct.crypt_config, ptr %call9.i.i, i32 0, i32 32
  %add63 = add i32 %add61, %and
  %222 = inttoptr i32 %add63 to ptr
  %call.i345 = call i32 @mempool_init(ptr noundef %req_pool, i32 noundef 64, ptr noundef nonnull @mempool_kmalloc, ptr noundef nonnull @mempool_kfree, ptr noundef %222) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i345)
  %tobool65.not = icmp eq i32 %call.i345, 0
  br i1 %tobool65.not, label %if.end68, label %if.then66

if.then66:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #22
  %error67 = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 12
  %223 = ptrtoint ptr %error67 to i32
  call void @__asan_store4_noabort(i32 %223)
  store ptr @.str.4, ptr %error67, align 8
  br label %bad

if.end68:                                         ; preds = %if.end44
  %224 = ptrtoint ptr %dmreq_start45 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %dmreq_start45, align 4
  %add71 = add i32 %add61, 383
  %add72 = add i32 %add71, %225
  %and73 = and i32 %add72, -128
  %per_io_data_size = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 10
  %226 = ptrtoint ptr %per_io_data_size to i32
  call void @__asan_store4_noabort(i32 %226)
  store i32 %and73, ptr %per_io_data_size, align 8
  %per_bio_data_size = getelementptr inbounds %struct.crypt_config, ptr %call9.i.i, i32 0, i32 21
  %227 = ptrtoint ptr %per_bio_data_size to i32
  call void @__asan_store4_noabort(i32 %227)
  store i32 %and73, ptr %per_bio_data_size, align 16
  %page_pool = getelementptr inbounds %struct.crypt_config, ptr %call9.i.i, i32 0, i32 33
  %call74 = call i32 @mempool_init(ptr noundef %page_pool, i32 noundef 256, ptr noundef nonnull @crypt_page_alloc, ptr noundef nonnull @crypt_page_free, ptr noundef nonnull %call9.i.i) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %if.end78, label %if.then76

if.then76:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #22
  %error77 = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 12
  %228 = ptrtoint ptr %error77 to i32
  call void @__asan_store4_noabort(i32 %228)
  store ptr @.str.5, ptr %error77, align 8
  br label %bad

if.end78:                                         ; preds = %if.end68
  %bs = getelementptr inbounds %struct.crypt_config, ptr %call9.i.i, i32 0, i32 34
  %call79 = call i32 @bioset_init(ptr noundef %bs, i32 noundef 64, i32 noundef 0, i32 noundef 1) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %tobool80.not = icmp eq i32 %call79, 0
  br i1 %tobool80.not, label %do.body, label %if.then81

if.then81:                                        ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #22
  %error82 = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 12
  %229 = ptrtoint ptr %error82 to i32
  call void @__asan_store4_noabort(i32 %229)
  store ptr @.str.6, ptr %error82, align 8
  br label %bad

do.body:                                          ; preds = %if.end78
  %bio_alloc_lock = getelementptr inbounds %struct.crypt_config, ptr %call9.i.i, i32 0, i32 35
  call void @__mutex_init(ptr noundef %bio_alloc_lock, ptr noundef nonnull @.str.8, ptr noundef nonnull @crypt_ctr.__key.7) #20
  %arrayidx84 = getelementptr ptr, ptr %argv, i32 2
  %230 = ptrtoint ptr %arrayidx84 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %arrayidx84, align 4
  %call85 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %231, ptr noundef nonnull @.str.9, ptr noundef nonnull %tmpll, ptr noundef nonnull %dummy)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call85)
  %cmp86.not = icmp eq i32 %call85, 1
  br i1 %cmp86.not, label %lor.lhs.false, label %do.body.if.then92_crit_edge

do.body.if.then92_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then92

lor.lhs.false:                                    ; preds = %do.body
  %232 = ptrtoint ptr %tmpll to i32
  call void @__asan_load8_noabort(i32 %232)
  %233 = load i64, ptr %tmpll, align 8
  %234 = ptrtoint ptr %sector_size to i32
  call void @__asan_load2_noabort(i32 %234)
  %235 = load i16, ptr %sector_size, align 4
  %236 = lshr i16 %235, 9
  %237 = zext i16 %236 to i32
  %sub88 = add nsw i32 %237, -1
  %conv89 = sext i32 %sub88 to i64
  %and90 = and i64 %233, %conv89
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and90)
  %tobool91.not = icmp eq i64 %and90, 0
  br i1 %tobool91.not, label %if.end94, label %lor.lhs.false.if.then92_crit_edge

lor.lhs.false.if.then92_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then92

if.then92:                                        ; preds = %lor.lhs.false.if.then92_crit_edge, %do.body.if.then92_crit_edge
  %error93 = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 12
  %238 = ptrtoint ptr %error93 to i32
  call void @__asan_store4_noabort(i32 %238)
  store ptr @.str.10, ptr %error93, align 8
  br label %bad

if.end94:                                         ; preds = %lor.lhs.false
  %iv_offset = getelementptr inbounds %struct.crypt_config, ptr %call9.i.i, i32 0, i32 13
  %239 = ptrtoint ptr %iv_offset to i32
  call void @__asan_store8_noabort(i32 %239)
  store i64 %233, ptr %iv_offset, align 16
  %arrayidx95 = getelementptr ptr, ptr %argv, i32 3
  %240 = ptrtoint ptr %arrayidx95 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %arrayidx95, align 4
  %242 = ptrtoint ptr %ti to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %ti, align 8
  %call97 = call i32 @dm_table_get_mode(ptr noundef %243) #20
  %call98 = call i32 @dm_get_device(ptr noundef %ti, ptr noundef %241, i32 noundef %call97, ptr noundef nonnull %call9.i.i) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call98)
  %tobool99.not = icmp eq i32 %call98, 0
  br i1 %tobool99.not, label %if.end102, label %if.then100

if.then100:                                       ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #22
  %error101 = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 12
  %244 = ptrtoint ptr %error101 to i32
  call void @__asan_store4_noabort(i32 %244)
  store ptr @.str.11, ptr %error101, align 8
  br label %bad

if.end102:                                        ; preds = %if.end94
  %arrayidx103 = getelementptr ptr, ptr %argv, i32 4
  %245 = ptrtoint ptr %arrayidx103 to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %arrayidx103, align 4
  %call104 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %246, ptr noundef nonnull @.str.9, ptr noundef nonnull %tmpll, ptr noundef nonnull %dummy)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call104)
  %cmp105.not = icmp eq i32 %call104, 1
  br i1 %cmp105.not, label %if.end112, label %if.then110

if.then110:                                       ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #22
  %error111 = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 12
  %247 = ptrtoint ptr %error111 to i32
  call void @__asan_store4_noabort(i32 %247)
  store ptr @.str.12, ptr %error111, align 8
  br label %bad

if.end112:                                        ; preds = %if.end102
  %248 = ptrtoint ptr %tmpll to i32
  call void @__asan_load8_noabort(i32 %248)
  %249 = load i64, ptr %tmpll, align 8
  %start = getelementptr inbounds %struct.crypt_config, ptr %call9.i.i, i32 0, i32 1
  %250 = ptrtoint ptr %start to i32
  call void @__asan_store8_noabort(i32 %250)
  store i64 %249, ptr %start, align 8
  %251 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %call9.i.i, align 128
  %253 = ptrtoint ptr %252 to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %252, align 4
  %bd_queue.i.i = getelementptr inbounds %struct.block_device, ptr %254, i32 0, i32 18
  %255 = ptrtoint ptr %bd_queue.i.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %bd_queue.i.i, align 4
  %tobool.not.i346 = icmp eq ptr %256, null
  br i1 %tobool.not.i346, label %if.end112.if.end127_crit_edge, label %bdev_is_zoned.exit

if.end112.if.end127_crit_edge:                    ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end127

bdev_is_zoned.exit:                               ; preds = %if.end112
  %zoned.i.i.i = getelementptr inbounds %struct.request_queue, ptr %256, i32 0, i32 37, i32 27
  %257 = ptrtoint ptr %zoned.i.i.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load i32, ptr %zoned.i.i.i, align 4
  %call.off.i.i = add i32 %258, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.off.i.i)
  %switch.i.i = icmp ult i32 %call.off.i.i, 2
  br i1 %switch.i.i, label %if.then115, label %bdev_is_zoned.exit.if.end127_crit_edge

bdev_is_zoned.exit.if.end127_crit_edge:           ; preds = %bdev_is_zoned.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end127

if.then115:                                       ; preds = %bdev_is_zoned.exit
  %flags = getelementptr inbounds %struct.crypt_config, ptr %call9.i.i, i32 0, i32 22
  call void @_set_bit(i32 noundef 5, ptr noundef %flags) #20
  call void @_set_bit(i32 noundef 6, ptr noundef %flags) #20
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @crypt_ctr.__UNIQUE_ID_ddebug413, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@crypt_ctr, %if.then123)) #20
          to label %do.end126 [label %if.then123], !srcloc !412

if.then123:                                       ; preds = %if.then115
  call void @__sanitizer_cov_trace_pc() #22
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @crypt_ctr.__UNIQUE_ID_ddebug413, ptr noundef nonnull @.str.17) #20
  br label %do.end126

do.end126:                                        ; preds = %if.then123, %if.then115
  %emulate_zone_append = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 13
  %259 = ptrtoint ptr %emulate_zone_append to i32
  call void @__asan_load1_noabort(i32 %259)
  %bf.load = load i8, ptr %emulate_zone_append, align 4
  %bf.set = or i8 %bf.load, 16
  store i8 %bf.set, ptr %emulate_zone_append, align 4
  br label %if.end127

if.end127:                                        ; preds = %do.end126, %bdev_is_zoned.exit.if.end127_crit_edge, %if.end112.if.end127_crit_edge
  %260 = ptrtoint ptr %cipher_flags.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load volatile i32, ptr %cipher_flags.i, align 8
  %and1.i.i350 = and i32 %261, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i350)
  %tobool.i351.not = icmp eq i32 %and1.i.i350, 0
  br i1 %tobool.i351.not, label %lor.lhs.false130, label %if.end127.if.then132_crit_edge

if.end127.if.then132_crit_edge:                   ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then132

lor.lhs.false130:                                 ; preds = %if.end127
  %integrity_iv_size = getelementptr inbounds %struct.crypt_config, ptr %call9.i.i, i32 0, i32 28
  %262 = ptrtoint ptr %integrity_iv_size to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load i32, ptr %integrity_iv_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %263)
  %tobool131.not = icmp eq i32 %263, 0
  br i1 %tobool131.not, label %lor.lhs.false130.if.end152_crit_edge, label %lor.lhs.false130.if.then132_crit_edge

lor.lhs.false130.if.then132_crit_edge:            ; preds = %lor.lhs.false130
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then132

lor.lhs.false130.if.end152_crit_edge:             ; preds = %lor.lhs.false130
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end152

if.then132:                                       ; preds = %lor.lhs.false130.if.then132_crit_edge, %if.end127.if.then132_crit_edge
  %call133 = call fastcc i32 @crypt_integrity_ctr(ptr noundef nonnull %call9.i.i, ptr noundef %ti)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call133)
  %tobool134.not = icmp eq i32 %call133, 0
  br i1 %tobool134.not, label %if.end136, label %if.then132.bad_crit_edge

if.then132.bad_crit_edge:                         ; preds = %if.then132
  call void @__sanitizer_cov_trace_pc() #22
  br label %bad

if.end136:                                        ; preds = %if.then132
  %on_disk_tag_size = getelementptr inbounds %struct.crypt_config, ptr %call9.i.i, i32 0, i32 29
  %264 = ptrtoint ptr %on_disk_tag_size to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load i32, ptr %on_disk_tag_size, align 16
  %div = udiv i32 512, %265
  %tag_pool_max_sectors = getelementptr inbounds %struct.crypt_config, ptr %call9.i.i, i32 0, i32 30
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %265)
  %tobool138.not = icmp ugt i32 %265, 512
  %spec.select = select i1 %tobool138.not, i32 1, i32 %div
  %266 = ptrtoint ptr %tag_pool_max_sectors to i32
  call void @__asan_store4_noabort(i32 %266)
  store i32 %spec.select, ptr %tag_pool_max_sectors, align 4
  %tag_pool = getelementptr inbounds %struct.crypt_config, ptr %call9.i.i, i32 0, i32 31
  %mul = mul i32 %spec.select, %265
  %267 = inttoptr i32 %mul to ptr
  %call.i352 = call i32 @mempool_init(ptr noundef %tag_pool, i32 noundef 64, ptr noundef nonnull @mempool_kmalloc, ptr noundef nonnull @mempool_kfree, ptr noundef %267) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i352)
  %tobool145.not = icmp eq i32 %call.i352, 0
  br i1 %tobool145.not, label %if.end148, label %if.then146

if.then146:                                       ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #22
  %error147 = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 12
  %268 = ptrtoint ptr %error147 to i32
  call void @__asan_store4_noabort(i32 %268)
  store ptr @.str.18, ptr %error147, align 8
  br label %bad

if.end148:                                        ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #22
  %269 = ptrtoint ptr %sector_shift to i32
  call void @__asan_load1_noabort(i32 %269)
  %270 = load i8, ptr %sector_shift, align 2
  %conv150 = zext i8 %270 to i32
  %271 = ptrtoint ptr %tag_pool_max_sectors to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load i32, ptr %tag_pool_max_sectors, align 4
  %shl = shl i32 %272, %conv150
  store i32 %shl, ptr %tag_pool_max_sectors, align 4
  br label %if.end152

if.end152:                                        ; preds = %if.end148, %lor.lhs.false130.if.end152_crit_edge
  %call153 = call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.19, i32 noundef 8, i32 noundef 1, ptr noundef %call) #20
  %io_queue = getelementptr inbounds %struct.crypt_config, ptr %call9.i.i, i32 0, i32 3
  %273 = ptrtoint ptr %io_queue to i32
  call void @__asan_store4_noabort(i32 %273)
  store ptr %call153, ptr %io_queue, align 8
  %tobool155.not = icmp eq ptr %call153, null
  br i1 %tobool155.not, label %if.then156, label %if.end158

if.then156:                                       ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #22
  %error157 = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 12
  %274 = ptrtoint ptr %error157 to i32
  call void @__asan_store4_noabort(i32 %274)
  store ptr @.str.20, ptr %error157, align 8
  br label %bad

if.end158:                                        ; preds = %if.end152
  %flags159 = getelementptr inbounds %struct.crypt_config, ptr %call9.i.i, i32 0, i32 22
  %275 = ptrtoint ptr %flags159 to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load volatile i32, ptr %flags159, align 4
  %277 = and i32 %276, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %277)
  %tobool161.not = icmp eq i32 %277, 0
  br i1 %tobool161.not, label %if.else164, label %if.then162

if.then162:                                       ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #22
  %call163 = call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.21, i32 noundef 40, i32 noundef 1, ptr noundef %call) #20
  br label %if.end168

if.else164:                                       ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #22
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull @__num_online_cpus, i32 noundef 4) #20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__num_online_cpus to i32))
  %278 = load volatile i32, ptr @__num_online_cpus, align 4
  %call166 = call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.21, i32 noundef 42, i32 noundef %278, ptr noundef %call) #20
  br label %if.end168

if.end168:                                        ; preds = %if.else164, %if.then162
  %call163.sink = phi ptr [ %call166, %if.else164 ], [ %call163, %if.then162 ]
  %279 = getelementptr inbounds %struct.crypt_config, ptr %call9.i.i, i32 0, i32 4
  %280 = ptrtoint ptr %279 to i32
  call void @__asan_store4_noabort(i32 %280)
  store ptr %call163.sink, ptr %279, align 4
  %tobool170.not = icmp eq ptr %call163.sink, null
  br i1 %tobool170.not, label %if.then171, label %do.body174

if.then171:                                       ; preds = %if.end168
  call void @__sanitizer_cov_trace_pc() #22
  %error172 = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 12
  %281 = ptrtoint ptr %error172 to i32
  call void @__asan_store4_noabort(i32 %281)
  store ptr @.str.22, ptr %error172, align 8
  br label %bad

do.body174:                                       ; preds = %if.end168
  %write_thread_lock = getelementptr inbounds %struct.crypt_config, ptr %call9.i.i, i32 0, i32 5
  call void @__raw_spin_lock_init(ptr noundef %write_thread_lock, ptr noundef nonnull @.str.24, ptr noundef nonnull @crypt_ctr.__key.23, i16 noundef signext 3) #20
  %write_tree = getelementptr inbounds %struct.crypt_config, ptr %call9.i.i, i32 0, i32 7
  %282 = ptrtoint ptr %write_tree to i32
  call void @__asan_store4_noabort(i32 %282)
  store ptr null, ptr %write_tree, align 16
  %call178 = call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @dmcrypt_write, ptr noundef nonnull %call9.i.i, i32 noundef -1, ptr noundef nonnull @.str.25, ptr noundef %call) #20
  %cmp.i353 = icmp ugt ptr %call178, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i353, label %if.then186, label %if.end191

if.then186:                                       ; preds = %do.body174
  call void @__sanitizer_cov_trace_pc() #22
  %write_thread367 = getelementptr inbounds %struct.crypt_config, ptr %call9.i.i, i32 0, i32 6
  %283 = ptrtoint ptr %call178 to i32
  %284 = ptrtoint ptr %write_thread367 to i32
  call void @__asan_store4_noabort(i32 %284)
  store ptr null, ptr %write_thread367, align 4
  %error190 = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 12
  %285 = ptrtoint ptr %error190 to i32
  call void @__asan_store4_noabort(i32 %285)
  store ptr @.str.26, ptr %error190, align 8
  br label %bad

if.end191:                                        ; preds = %do.body174
  call void @__sanitizer_cov_trace_pc() #22
  %call181 = call i32 @wake_up_process(ptr noundef %call178) #20
  %write_thread = getelementptr inbounds %struct.crypt_config, ptr %call9.i.i, i32 0, i32 6
  %286 = ptrtoint ptr %write_thread to i32
  call void @__asan_store4_noabort(i32 %286)
  store ptr %call178, ptr %write_thread, align 4
  %num_flush_bios = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 5
  %287 = ptrtoint ptr %num_flush_bios to i32
  call void @__asan_store4_noabort(i32 %287)
  store i32 1, ptr %num_flush_bios, align 4
  %limit_swap_bios = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 13
  %288 = ptrtoint ptr %limit_swap_bios to i32
  call void @__asan_load1_noabort(i32 %288)
  %bf.load192 = load i8, ptr %limit_swap_bios, align 4
  %bf.set194 = or i8 %bf.load192, 32
  store i8 %bf.set194, ptr %limit_swap_bios, align 4
  call void @dm_audit_log_ti(i32 noundef 1338, ptr noundef nonnull @.str, ptr noundef nonnull @.str.121, ptr noundef %ti, i32 noundef 1) #20
  br label %cleanup

bad:                                              ; preds = %if.then186, %if.then171, %if.then156, %if.then146, %if.then132.bad_crit_edge, %if.then110, %if.then100, %if.then92, %if.then81, %if.then76, %if.then66, %if.then40.i, %if.then26.i, %if.then15.i, %if.else93.i.i, %if.then57.i.i.bad_crit_edge, %if.end6.i.bad_crit_edge, %if.then.i329, %crypt_ctr_optional.exit.thread, %crypt_calculate_pages_per_client.exit.bad_crit_edge
  %ret.0 = phi i32 [ %call12, %crypt_calculate_pages_per_client.exit.bad_crit_edge ], [ %call.i345, %if.then66 ], [ %call74, %if.then76 ], [ %call79, %if.then81 ], [ -22, %if.then92 ], [ %call98, %if.then100 ], [ -22, %if.then110 ], [ %call133, %if.then132.bad_crit_edge ], [ %call.i352, %if.then146 ], [ %283, %if.then186 ], [ -12, %if.then171 ], [ -12, %if.then156 ], [ %retval.0.i324.ph, %crypt_ctr_optional.exit.thread ], [ -22, %if.then57.i.i.bad_crit_edge ], [ -22, %if.else93.i.i ], [ %ret.0.i, %if.end6.i.bad_crit_edge ], [ -12, %if.then.i329 ], [ %call38.i338, %if.then40.i ], [ %call24.i, %if.then26.i ], [ %call13.i, %if.then15.i ]
  call void @dm_audit_log_ti(i32 noundef 1338, ptr noundef nonnull @.str, ptr noundef nonnull @.str.121, ptr noundef %ti, i32 noundef 0) #20
  call void @crypt_dtr(ptr noundef %ti)
  br label %cleanup

cleanup:                                          ; preds = %bad, %if.end191, %if.then8, %if.then3, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ -22, %if.then3 ], [ %ret.0, %bad ], [ 0, %if.end191 ], [ -12, %if.then8 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %dummy) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmpll) #20
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @crypt_dtr(ptr noundef %ti) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  store ptr null, ptr %private, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end:                                           ; preds = %entry
  %write_thread = getelementptr inbounds %struct.crypt_config, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %write_thread to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %write_thread, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %if.end.if.end5_crit_edge, label %if.then3

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  %call = tail call i32 @kthread_stop(ptr noundef nonnull %3) #20
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  %io_queue = getelementptr inbounds %struct.crypt_config, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %io_queue to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %io_queue, align 8
  %tobool6.not = icmp eq ptr %5, null
  br i1 %tobool6.not, label %if.end5.if.end9_crit_edge, label %if.then7

if.end5.if.end9_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end9

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #22
  tail call void @destroy_workqueue(ptr noundef nonnull %5) #20
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.end5.if.end9_crit_edge
  %crypt_queue = getelementptr inbounds %struct.crypt_config, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %crypt_queue to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %crypt_queue, align 4
  %tobool10.not = icmp eq ptr %7, null
  br i1 %tobool10.not, label %if.end9.if.end13_crit_edge, label %if.then11

if.end9.if.end13_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end13

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #22
  tail call void @destroy_workqueue(ptr noundef nonnull %7) #20
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.end9.if.end13_crit_edge
  tail call fastcc void @crypt_free_tfms(ptr noundef nonnull %1)
  %bs = getelementptr inbounds %struct.crypt_config, ptr %1, i32 0, i32 34
  tail call void @bioset_exit(ptr noundef %bs) #20
  %page_pool = getelementptr inbounds %struct.crypt_config, ptr %1, i32 0, i32 33
  tail call void @mempool_exit(ptr noundef %page_pool) #20
  %req_pool = getelementptr inbounds %struct.crypt_config, ptr %1, i32 0, i32 32
  tail call void @mempool_exit(ptr noundef %req_pool) #20
  %tag_pool = getelementptr inbounds %struct.crypt_config, ptr %1, i32 0, i32 31
  tail call void @mempool_exit(ptr noundef %tag_pool) #20
  %n_allocated_pages = getelementptr inbounds %struct.crypt_config, ptr %1, i32 0, i32 2
  %call.i = tail call i64 @__percpu_counter_sum(ptr noundef %n_allocated_pages) #20
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call.i)
  %cmp.not = icmp eq i64 %call.i, 0
  br i1 %cmp.not, label %if.end13.if.end29_crit_edge, label %do.end, !prof !413

if.end13.if.end29_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end29

do.end:                                           ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #22
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 2724, i32 noundef 9, ptr noundef null) #20
  br label %if.end29

if.end29:                                         ; preds = %do.end, %if.end13.if.end29_crit_edge
  tail call void @percpu_counter_destroy(ptr noundef %n_allocated_pages) #20
  %iv_gen_ops = getelementptr inbounds %struct.crypt_config, ptr %1, i32 0, i32 11
  %8 = ptrtoint ptr %iv_gen_ops to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %iv_gen_ops, align 8
  %tobool37.not = icmp eq ptr %9, null
  br i1 %tobool37.not, label %if.end29.if.end43_crit_edge, label %land.lhs.true

if.end29.if.end43_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end43

land.lhs.true:                                    ; preds = %if.end29
  %dtr = getelementptr inbounds %struct.crypt_iv_operations, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %dtr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dtr, align 4
  %tobool39.not = icmp eq ptr %11, null
  br i1 %tobool39.not, label %land.lhs.true.if.end43_crit_edge, label %if.then40

land.lhs.true.if.end43_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end43

if.then40:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #22
  tail call void %11(ptr noundef nonnull %1) #20
  br label %if.end43

if.end43:                                         ; preds = %if.then40, %land.lhs.true.if.end43_crit_edge, %if.end29.if.end43_crit_edge
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 8
  %tobool44.not = icmp eq ptr %13, null
  br i1 %tobool44.not, label %if.end43.if.end47_crit_edge, label %if.then45

if.end43.if.end47_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end47

if.then45:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #22
  tail call void @dm_put_device(ptr noundef %ti, ptr noundef nonnull %13) #20
  br label %if.end47

if.end47:                                         ; preds = %if.then45, %if.end43.if.end47_crit_edge
  %cipher_string = getelementptr inbounds %struct.crypt_config, ptr %1, i32 0, i32 8
  %14 = ptrtoint ptr %cipher_string to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cipher_string, align 4
  tail call void @kfree_sensitive(ptr noundef %15) #20
  %key_string = getelementptr inbounds %struct.crypt_config, ptr %1, i32 0, i32 10
  %16 = ptrtoint ptr %key_string to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %key_string, align 4
  tail call void @kfree_sensitive(ptr noundef %17) #20
  %cipher_auth = getelementptr inbounds %struct.crypt_config, ptr %1, i32 0, i32 9
  %18 = ptrtoint ptr %cipher_auth to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cipher_auth, align 8
  tail call void @kfree_sensitive(ptr noundef %19) #20
  %authenc_key = getelementptr inbounds %struct.crypt_config, ptr %1, i32 0, i32 36
  %20 = ptrtoint ptr %authenc_key to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %authenc_key, align 8
  tail call void @kfree_sensitive(ptr noundef %21) #20
  %bio_alloc_lock = getelementptr inbounds %struct.crypt_config, ptr %1, i32 0, i32 35
  tail call void @mutex_destroy(ptr noundef %bio_alloc_lock) #20
  tail call void @kfree_sensitive(ptr noundef nonnull %1) #20
  tail call void @_raw_spin_lock(ptr noundef nonnull @dm_crypt_clients_lock) #20
  %22 = load i32, ptr @dm_crypt_clients_n, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool49.not = icmp eq i32 %22, 0
  br i1 %tobool49.not, label %do.end67, label %if.end47.if.end73_crit_edge, !prof !414

if.end47.if.end73_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end73

do.end67:                                         ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #22
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 2744, i32 noundef 9, ptr noundef null) #20
  br label %if.end73

if.end73:                                         ; preds = %do.end67, %if.end47.if.end73_crit_edge
  %23 = load i32, ptr @dm_crypt_clients_n, align 4
  %dec = add i32 %23, -1
  store i32 %dec, ptr @dm_crypt_clients_n, align 4
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @_totalram_pages, i32 noundef 4) #20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @_totalram_pages to i32))
  %24 = load volatile i32, ptr @_totalram_pages, align 4
  %call.i.i.i7.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @_totalhigh_pages, i32 noundef 4) #20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @_totalhigh_pages to i32))
  %25 = load volatile i32, ptr @_totalhigh_pages, align 4
  %26 = load i32, ptr @dm_crypt_clients_n, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not.i = icmp eq i32 %26, 0
  br i1 %tobool.not.i, label %if.end73.crypt_calculate_pages_per_client.exit_crit_edge, label %if.end.i

if.end73.crypt_calculate_pages_per_client.exit_crit_edge: ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #22
  br label %crypt_calculate_pages_per_client.exit

if.end.i:                                         ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #22
  %sub.i = sub i32 %24, %25
  %mul.i = shl i32 %sub.i, 1
  %div.i = udiv i32 %mul.i, 100
  %div2.i = udiv i32 %div.i, %26
  %27 = tail call i32 @llvm.umax.i32(i32 %div2.i, i32 4096) #20
  store volatile i32 %27, ptr @dm_crypt_pages_per_client, align 4
  br label %crypt_calculate_pages_per_client.exit

crypt_calculate_pages_per_client.exit:            ; preds = %if.end.i, %if.end73.crypt_calculate_pages_per_client.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @dm_crypt_clients_lock) #20
  tail call void @dm_audit_log_ti(i32 noundef 1338, ptr noundef nonnull @.str, ptr noundef nonnull @.str.122, ptr noundef %ti, i32 noundef 1) #20
  br label %cleanup

cleanup:                                          ; preds = %crypt_calculate_pages_per_client.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @crypt_map(ptr nocapture noundef readonly %ti, ptr noundef %bio) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %bi_opf = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 2
  %2 = ptrtoint ptr %bi_opf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bi_opf, align 8
  %4 = and i32 %3, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp ne i32 %4, 0
  %and2 = and i32 %3, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and2)
  %cmp = icmp eq i32 %and2, 3
  %5 = or i1 %tobool.not, %cmp
  br i1 %5, label %if.then, label %if.end11, !prof !414

if.then:                                          ; preds = %entry
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %bi_flags.i.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 3
  %10 = ptrtoint ptr %bi_flags.i.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %bi_flags.i.i, align 4
  %conv1.i.i = and i16 %11, -2049
  store i16 %conv1.i.i, ptr %bi_flags.i.i, align 4
  %bi_bdev.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 1
  %12 = ptrtoint ptr %bi_bdev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bi_bdev.i, align 4
  %cmp.not.i = icmp eq ptr %13, %9
  br i1 %cmp.not.i, label %if.then.bio_set_dev.exit_crit_edge, label %if.then.i173

if.then.bio_set_dev.exit_crit_edge:               ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #22
  br label %bio_set_dev.exit

if.then.i173:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #22
  %conv1.i8.i = and i16 %11, -2177
  %14 = ptrtoint ptr %bi_flags.i.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv1.i8.i, ptr %bi_flags.i.i, align 4
  br label %bio_set_dev.exit

bio_set_dev.exit:                                 ; preds = %if.then.i173, %if.then.bio_set_dev.exit_crit_edge
  %15 = ptrtoint ptr %bi_bdev.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %9, ptr %bi_bdev.i, align 4
  tail call void @bio_associate_blkg(ptr noundef %bio) #20
  %bi_size = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 8, i32 1
  %16 = ptrtoint ptr %bi_size to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %bi_size, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %17)
  %tobool6.not = icmp ult i32 %17, 512
  br i1 %tobool6.not, label %bio_set_dev.exit.cleanup_crit_edge, label %if.then7

bio_set_dev.exit.cleanup_crit_edge:               ; preds = %bio_set_dev.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.then7:                                         ; preds = %bio_set_dev.exit
  call void @__sanitizer_cov_trace_pc() #22
  %bi_iter = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 8
  %start = getelementptr inbounds %struct.crypt_config, ptr %1, i32 0, i32 1
  %18 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %start, align 8
  %20 = ptrtoint ptr %bi_iter to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %bi_iter, align 8
  %begin = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 2
  %22 = ptrtoint ptr %begin to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %begin, align 8
  %sub = add i64 %21, %19
  %add = sub i64 %sub, %23
  store i64 %add, ptr %bi_iter, align 8
  br label %cleanup

if.end11:                                         ; preds = %entry
  %bi_iter12 = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 8
  %bi_size13 = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 8, i32 1
  %24 = ptrtoint ptr %bi_size13 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %bi_size13, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048576, i32 %25)
  %cmp14 = icmp ugt i32 %25, 1048576
  br i1 %cmp14, label %land.lhs.true, label %if.end11.if.end29_crit_edge, !prof !414

if.end11.if.end29_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end29

land.lhs.true:                                    ; preds = %if.end11
  %and.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %lor.lhs.false, label %land.lhs.true.if.then28_crit_edge

land.lhs.true.if.then28_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then28

lor.lhs.false:                                    ; preds = %land.lhs.true
  %on_disk_tag_size = getelementptr inbounds %struct.crypt_config, ptr %1, i32 0, i32 29
  %26 = ptrtoint ptr %on_disk_tag_size to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %on_disk_tag_size, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool27.not = icmp eq i32 %27, 0
  br i1 %tobool27.not, label %lor.lhs.false.if.end29_crit_edge, label %lor.lhs.false.if.then28_crit_edge

lor.lhs.false.if.then28_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then28

lor.lhs.false.if.end29_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end29

if.then28:                                        ; preds = %lor.lhs.false.if.then28_crit_edge, %land.lhs.true.if.then28_crit_edge
  tail call void @dm_accept_partial_bio(ptr noundef %bio, i32 noundef 2048) #20
  br label %if.end29

if.end29:                                         ; preds = %if.then28, %lor.lhs.false.if.end29_crit_edge, %if.end11.if.end29_crit_edge
  %28 = ptrtoint ptr %bi_iter12 to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %bi_iter12, align 8
  %sector_size = getelementptr inbounds %struct.crypt_config, ptr %1, i32 0, i32 15
  %30 = ptrtoint ptr %sector_size to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %sector_size, align 4
  %conv32 = zext i16 %31 to i32
  %32 = lshr i32 %conv32, 9
  %sub34 = add nsw i32 %32, -1
  %conv35 = sext i32 %sub34 to i64
  %and36 = and i64 %29, %conv35
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and36)
  %cmp37.not = icmp eq i64 %and36, 0
  br i1 %cmp37.not, label %if.end46, label %if.end29.cleanup_crit_edge, !prof !413

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end46:                                         ; preds = %if.end29
  %33 = ptrtoint ptr %bi_size13 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %bi_size13, align 8
  %sub51 = add nsw i32 %conv32, -1
  %and52 = and i32 %34, %sub51
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52)
  %tobool53.not = icmp eq i32 %and52, 0
  br i1 %tobool53.not, label %if.end61, label %if.end46.cleanup_crit_edge, !prof !413

if.end46.cleanup_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end61:                                         ; preds = %if.end46
  %per_bio_data_size = getelementptr inbounds %struct.crypt_config, ptr %1, i32 0, i32 21
  %35 = ptrtoint ptr %per_bio_data_size to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %per_bio_data_size, align 8
  %call62 = tail call ptr @dm_per_bio_data(ptr noundef %bio, i32 noundef %36) #20
  %37 = ptrtoint ptr %bi_iter12 to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %bi_iter12, align 8
  %begin65 = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 2
  %39 = ptrtoint ptr %begin65 to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %begin65, align 8
  %sub66 = sub i64 %38, %40
  %41 = ptrtoint ptr %call62 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %1, ptr %call62, align 128
  %base_bio.i = getelementptr inbounds %struct.dm_crypt_io, ptr %call62, i32 0, i32 1
  %42 = ptrtoint ptr %base_bio.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %bio, ptr %base_bio.i, align 4
  %sector2.i = getelementptr inbounds %struct.dm_crypt_io, ptr %call62, i32 0, i32 9
  %43 = ptrtoint ptr %sector2.i to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 %sub66, ptr %sector2.i, align 8
  %error.i = getelementptr inbounds %struct.dm_crypt_io, ptr %call62, i32 0, i32 8
  %44 = ptrtoint ptr %error.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 0, ptr %error.i, align 4
  %r.i = getelementptr inbounds %struct.dm_crypt_io, ptr %call62, i32 0, i32 6, i32 7
  %45 = ptrtoint ptr %r.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %r.i, align 4
  %integrity_metadata.i = getelementptr inbounds %struct.dm_crypt_io, ptr %call62, i32 0, i32 2
  %46 = ptrtoint ptr %integrity_metadata.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr null, ptr %integrity_metadata.i, align 8
  %integrity_metadata_from_pool.i = getelementptr inbounds %struct.dm_crypt_io, ptr %call62, i32 0, i32 3
  %47 = ptrtoint ptr %integrity_metadata_from_pool.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 0, ptr %integrity_metadata_from_pool.i, align 4
  %io_pending.i = getelementptr inbounds %struct.dm_crypt_io, ptr %call62, i32 0, i32 7
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %io_pending.i, i32 noundef 4) #20
  %48 = ptrtoint ptr %io_pending.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile i32 0, ptr %io_pending.i, align 4
  %on_disk_tag_size67 = getelementptr inbounds %struct.crypt_config, ptr %1, i32 0, i32 29
  %49 = ptrtoint ptr %on_disk_tag_size67 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %on_disk_tag_size67, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool68.not = icmp eq i32 %50, 0
  br i1 %tobool68.not, label %if.end61.if.end107_crit_edge, label %if.then69

if.end61.if.end107_crit_edge:                     ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end107

if.then69:                                        ; preds = %if.end61
  %51 = ptrtoint ptr %bi_size13 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %bi_size13, align 8
  %shr73 = lshr i32 %52, 9
  %sector_shift = getelementptr inbounds %struct.crypt_config, ptr %1, i32 0, i32 16
  %53 = ptrtoint ptr %sector_shift to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %sector_shift, align 2
  %conv74 = zext i8 %54 to i32
  %shr75 = lshr i32 %shr73, %conv74
  %mul = mul i32 %shr75, %50
  call void @__sanitizer_cov_trace_const_cmp4(i32 8388608, i32 %mul)
  %cmp76 = icmp ugt i32 %mul, 8388608
  br i1 %cmp76, label %if.then69.if.then95_crit_edge, label %if.end8.i, !prof !414

if.then69.if.then95_crit_edge:                    ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then95

if.end8.i:                                        ; preds = %if.then69
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %mul, i32 noundef 601088) #25
  %55 = ptrtoint ptr %integrity_metadata.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %call9.i, ptr %integrity_metadata.i, align 8
  %tobool86.not = icmp eq ptr %call9.i, null
  br i1 %tobool86.not, label %if.end8.i.if.then95_crit_edge, label %if.end8.i.if.end107_crit_edge, !prof !414

if.end8.i.if.end107_crit_edge:                    ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end107

if.end8.i.if.then95_crit_edge:                    ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then95

if.then95:                                        ; preds = %if.end8.i.if.then95_crit_edge, %if.then69.if.then95_crit_edge
  %56 = ptrtoint ptr %bi_size13 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %bi_size13, align 8
  %shr98 = lshr i32 %57, 9
  %tag_pool_max_sectors = getelementptr inbounds %struct.crypt_config, ptr %1, i32 0, i32 30
  %58 = ptrtoint ptr %tag_pool_max_sectors to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %tag_pool_max_sectors, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shr98, i32 %59)
  %cmp99 = icmp ugt i32 %shr98, %59
  br i1 %cmp99, label %if.then101, label %if.then95.if.end103_crit_edge

if.then95.if.end103_crit_edge:                    ; preds = %if.then95
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end103

if.then101:                                       ; preds = %if.then95
  call void @__sanitizer_cov_trace_pc() #22
  tail call void @dm_accept_partial_bio(ptr noundef %bio, i32 noundef %59) #20
  br label %if.end103

if.end103:                                        ; preds = %if.then101, %if.then95.if.end103_crit_edge
  %tag_pool = getelementptr inbounds %struct.crypt_config, ptr %1, i32 0, i32 31
  %call104 = tail call noalias ptr @mempool_alloc(ptr noundef %tag_pool, i32 noundef 3072) #20
  %60 = ptrtoint ptr %integrity_metadata.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %call104, ptr %integrity_metadata.i, align 8
  %61 = ptrtoint ptr %integrity_metadata_from_pool.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 1, ptr %integrity_metadata_from_pool.i, align 4
  br label %if.end107

if.end107:                                        ; preds = %if.end103, %if.end8.i.if.end107_crit_edge, %if.end61.if.end107_crit_edge
  %cipher_flags.i = getelementptr inbounds %struct.crypt_config, ptr %1, i32 0, i32 19
  %62 = ptrtoint ptr %cipher_flags.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile i32, ptr %cipher_flags.i, align 4
  %storemerge = getelementptr %struct.dm_crypt_io, ptr %call62, i32 1
  %64 = ptrtoint ptr %r.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %storemerge, ptr %r.i, align 4
  %65 = ptrtoint ptr %base_bio.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %base_bio.i, align 4
  %bi_opf114 = getelementptr inbounds %struct.bio, ptr %66, i32 0, i32 2
  %67 = ptrtoint ptr %bi_opf114 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %bi_opf114, align 8
  %and.i176 = and i32 %68, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i176)
  %tobool.i177.not = icmp eq i32 %and.i176, 0
  br i1 %tobool.i177.not, label %if.then121, label %if.else126

if.then121:                                       ; preds = %if.end107
  %call122 = tail call fastcc i32 @kcryptd_io_read(ptr noundef %call62, i32 noundef 2048)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call122)
  %tobool123.not = icmp eq i32 %call122, 0
  br i1 %tobool123.not, label %if.then121.cleanup_crit_edge, label %if.then124

if.then121.cleanup_crit_edge:                     ; preds = %if.then121
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.then124:                                       ; preds = %if.then121
  call void @__sanitizer_cov_trace_pc() #22
  %69 = ptrtoint ptr %call62 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %call62, align 128
  %work.i = getelementptr inbounds %struct.dm_crypt_io, ptr %call62, i32 0, i32 4
  tail call void @__init_work(ptr noundef %work.i, i32 noundef 0) #20
  %71 = ptrtoint ptr %work.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 -64, ptr %work.i, align 16
  %lockdep_map.i = getelementptr inbounds %struct.dm_crypt_io, ptr %call62, i32 0, i32 4, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.123, ptr noundef nonnull @kcryptd_queue_read.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #20
  %entry5.i = getelementptr inbounds %struct.dm_crypt_io, ptr %call62, i32 0, i32 4, i32 1
  %72 = ptrtoint ptr %entry5.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store volatile ptr %entry5.i, ptr %entry5.i, align 4
  %prev.i.i = getelementptr inbounds %struct.dm_crypt_io, ptr %call62, i32 0, i32 4, i32 1, i32 1
  %73 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %entry5.i, ptr %prev.i.i, align 4
  %func.i = getelementptr inbounds %struct.dm_crypt_io, ptr %call62, i32 0, i32 4, i32 2
  %74 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr @kcryptd_io_read_work, ptr %func.i, align 4
  %io_queue.i = getelementptr inbounds %struct.crypt_config, ptr %70, i32 0, i32 3
  %75 = ptrtoint ptr %io_queue.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %io_queue.i, align 8
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %76, ptr noundef %work.i) #20
  br label %cleanup

if.else126:                                       ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #22
  tail call fastcc void @kcryptd_queue_crypt(ptr noundef %call62)
  br label %cleanup

cleanup:                                          ; preds = %if.else126, %if.then124, %if.then121.cleanup_crit_edge, %if.end46.cleanup_crit_edge, %if.end29.cleanup_crit_edge, %if.then7, %bio_set_dev.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then7 ], [ 1, %bio_set_dev.exit.cleanup_crit_edge ], [ 4, %if.end29.cleanup_crit_edge ], [ 4, %if.end46.cleanup_crit_edge ], [ 0, %if.then121.cleanup_crit_edge ], [ 0, %if.then124 ], [ 0, %if.else126 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @crypt_postsuspend(ptr nocapture noundef readonly %ti) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %flags = getelementptr inbounds %struct.crypt_config, ptr %1, i32 0, i32 22
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags) #20
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @crypt_preresume(ptr nocapture noundef readonly %ti) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %flags = getelementptr inbounds %struct.crypt_config, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flags, align 4
  %4 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %do.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.128) #23
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -11, %do.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @crypt_resume(ptr nocapture noundef readonly %ti) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %flags = getelementptr inbounds %struct.crypt_config, ptr %1, i32 0, i32 22
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %flags) #20
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @crypt_status(ptr nocapture noundef readonly %ti, i32 noundef %type, i32 noundef %status_flags, ptr noundef %result, i32 noundef %maxlen) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %2 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %type, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb208
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  %3 = ptrtoint ptr %result to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %result, align 1
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %maxlen)
  %cmp = icmp eq i32 %maxlen, 0
  br i1 %cmp, label %cond.end.thread, label %cond.end

cond.end:                                         ; preds = %sw.bb1
  %cipher_string = getelementptr inbounds %struct.crypt_config, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %cipher_string to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cipher_string, align 4
  %call = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %result, i32 noundef %maxlen, ptr noundef nonnull @.str.130, ptr noundef %5) #20
  %key_size = getelementptr inbounds %struct.crypt_config, ptr %1, i32 0, i32 23
  %6 = ptrtoint ptr %key_size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %key_size, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp2.not = icmp eq i32 %7, 0
  br i1 %cmp2.not, label %if.else27, label %if.then

cond.end.thread:                                  ; preds = %sw.bb1
  %key_size706 = getelementptr inbounds %struct.crypt_config, ptr %1, i32 0, i32 23
  %8 = ptrtoint ptr %key_size706 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %key_size706, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp2.not707 = icmp eq i32 %9, 0
  br i1 %cmp2.not707, label %cond.end.thread.cond.end35_crit_edge, label %if.then.thread

cond.end.thread.cond.end35_crit_edge:             ; preds = %cond.end.thread
  call void @__sanitizer_cov_trace_pc() #22
  br label %cond.end35

if.then:                                          ; preds = %cond.end
  %key_string = getelementptr inbounds %struct.crypt_config, ptr %1, i32 0, i32 10
  %10 = ptrtoint ptr %key_string to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %key_string, align 4
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %if.then.for.cond.preheader_crit_edge, label %if.then3

if.then.for.cond.preheader_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.cond.preheader

if.then.thread:                                   ; preds = %cond.end.thread
  %key_string716 = getelementptr inbounds %struct.crypt_config, ptr %1, i32 0, i32 10
  %12 = ptrtoint ptr %key_string716 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %key_string716, align 4
  %tobool.not717 = icmp eq ptr %13, null
  br i1 %tobool.not717, label %if.then.thread.for.cond.preheader_crit_edge, label %if.then.thread.cond.end12_crit_edge

if.then.thread.cond.end12_crit_edge:              ; preds = %if.then.thread
  call void @__sanitizer_cov_trace_pc() #22
  br label %cond.end12

if.then.thread.for.cond.preheader_crit_edge:      ; preds = %if.then.thread
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.then.thread.for.cond.preheader_crit_edge, %if.then.for.cond.preheader_crit_edge
  %key_size710718.ph = phi ptr [ %key_size706, %if.then.thread.for.cond.preheader_crit_edge ], [ %key_size, %if.then.for.cond.preheader_crit_edge ]
  %sz.0.ph = phi i32 [ 0, %if.then.thread.for.cond.preheader_crit_edge ], [ %call, %if.then.for.cond.preheader_crit_edge ]
  %14 = ptrtoint ptr %key_size710718.ph to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %key_size710718.ph, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp16723.not = icmp eq i32 %15, 0
  br i1 %cmp16723.not, label %for.cond.preheader.if.end38_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.if.end38_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end38

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %maxlen)
  %cmp4.not = icmp ult i32 %call, %maxlen
  br i1 %cmp4.not, label %cond.false6, label %if.then3.cond.end12_crit_edge

if.then3.cond.end12_crit_edge:                    ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #22
  br label %cond.end12

cond.false6:                                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #22
  %add.ptr7 = getelementptr i8, ptr %result, i32 %call
  %sub8 = sub i32 %maxlen, %call
  %call11 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr7, i32 noundef %sub8, ptr noundef nonnull @.str.131, i32 noundef %7, ptr noundef nonnull %11) #20
  br label %cond.end12

cond.end12:                                       ; preds = %cond.false6, %if.then3.cond.end12_crit_edge, %if.then.thread.cond.end12_crit_edge
  %cond709719722 = phi i32 [ %call, %cond.false6 ], [ %call, %if.then3.cond.end12_crit_edge ], [ 0, %if.then.thread.cond.end12_crit_edge ]
  %cond13 = phi i32 [ %call11, %cond.false6 ], [ 0, %if.then3.cond.end12_crit_edge ], [ 0, %if.then.thread.cond.end12_crit_edge ]
  %add14 = add i32 %cond13, %cond709719722
  br label %if.end38

for.body:                                         ; preds = %cond.end24.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %sz.0726 = phi i32 [ %add26, %cond.end24.for.body_crit_edge ], [ %sz.0.ph, %for.cond.preheader.for.body_crit_edge ]
  %i.0724 = phi i32 [ %inc, %cond.end24.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %sz.0726, i32 %maxlen)
  %cmp17.not = icmp ult i32 %sz.0726, %maxlen
  br i1 %cmp17.not, label %cond.false19, label %for.body.cond.end24_crit_edge

for.body.cond.end24_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %cond.end24

cond.false19:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #22
  %add.ptr20 = getelementptr i8, ptr %result, i32 %sz.0726
  %sub21 = sub i32 %maxlen, %sz.0726
  %arrayidx22 = getelementptr %struct.crypt_config, ptr %1, i32 0, i32 37, i32 %i.0724
  %16 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx22, align 1
  %conv = zext i8 %17 to i32
  %call23 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr20, i32 noundef %sub21, ptr noundef nonnull @.str.132, i32 noundef %conv) #20
  br label %cond.end24

cond.end24:                                       ; preds = %cond.false19, %for.body.cond.end24_crit_edge
  %cond25 = phi i32 [ %call23, %cond.false19 ], [ 0, %for.body.cond.end24_crit_edge ]
  %add26 = add i32 %cond25, %sz.0726
  %inc = add nuw i32 %i.0724, 1
  %18 = ptrtoint ptr %key_size710718.ph to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %key_size710718.ph, align 8
  %cmp16 = icmp ult i32 %inc, %19
  br i1 %cmp16, label %cond.end24.for.body_crit_edge, label %cond.end24.if.end38_crit_edge

cond.end24.if.end38_crit_edge:                    ; preds = %cond.end24
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end38

cond.end24.for.body_crit_edge:                    ; preds = %cond.end24
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body

if.else27:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %maxlen)
  %cmp28.not = icmp ult i32 %call, %maxlen
  br i1 %cmp28.not, label %cond.false31, label %if.else27.cond.end35_crit_edge

if.else27.cond.end35_crit_edge:                   ; preds = %if.else27
  call void @__sanitizer_cov_trace_pc() #22
  br label %cond.end35

cond.false31:                                     ; preds = %if.else27
  call void @__sanitizer_cov_trace_pc() #22
  %add.ptr32 = getelementptr i8, ptr %result, i32 %call
  %sub33 = sub i32 %maxlen, %call
  %call34 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr32, i32 noundef %sub33, ptr noundef nonnull @.str.65) #20
  br label %cond.end35

cond.end35:                                       ; preds = %cond.false31, %if.else27.cond.end35_crit_edge, %cond.end.thread.cond.end35_crit_edge
  %cond708713 = phi i32 [ %call, %cond.false31 ], [ %call, %if.else27.cond.end35_crit_edge ], [ 0, %cond.end.thread.cond.end35_crit_edge ]
  %cond36 = phi i32 [ %call34, %cond.false31 ], [ 0, %if.else27.cond.end35_crit_edge ], [ 0, %cond.end.thread.cond.end35_crit_edge ]
  %add37 = add i32 %cond36, %cond708713
  br label %if.end38

if.end38:                                         ; preds = %cond.end35, %cond.end24.if.end38_crit_edge, %cond.end12, %for.cond.preheader.if.end38_crit_edge
  %sz.1 = phi i32 [ %add14, %cond.end12 ], [ %add37, %cond.end35 ], [ %sz.0.ph, %for.cond.preheader.if.end38_crit_edge ], [ %add26, %cond.end24.if.end38_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %sz.1, i32 %maxlen)
  %cmp39.not = icmp ult i32 %sz.1, %maxlen
  br i1 %cmp39.not, label %cond.false42, label %if.end38.cond.end46_crit_edge

if.end38.cond.end46_crit_edge:                    ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #22
  br label %cond.end46

cond.false42:                                     ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #22
  %add.ptr43 = getelementptr i8, ptr %result, i32 %sz.1
  %sub44 = sub i32 %maxlen, %sz.1
  %iv_offset = getelementptr inbounds %struct.crypt_config, ptr %1, i32 0, i32 13
  %20 = ptrtoint ptr %iv_offset to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %iv_offset, align 8
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 8
  %name = getelementptr inbounds %struct.dm_dev, ptr %23, i32 0, i32 3
  %start = getelementptr inbounds %struct.crypt_config, ptr %1, i32 0, i32 1
  %24 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %start, align 8
  %call45 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr43, i32 noundef %sub44, ptr noundef nonnull @.str.133, i64 noundef %21, ptr noundef %name, i64 noundef %25) #20
  br label %cond.end46

cond.end46:                                       ; preds = %cond.false42, %if.end38.cond.end46_crit_edge
  %cond47 = phi i32 [ %call45, %cond.false42 ], [ 0, %if.end38.cond.end46_crit_edge ]
  %add48 = add i32 %cond47, %sz.1
  %num_discard_bios = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 6
  %26 = ptrtoint ptr %num_discard_bios to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %num_discard_bios, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool49 = icmp ne i32 %27, 0
  %lnot.ext = zext i1 %tobool49 to i32
  %flags = getelementptr inbounds %struct.crypt_config, ptr %1, i32 0, i32 22
  %28 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %flags, align 4
  %shr.i = lshr i32 %29, 2
  %and1.i = and i32 %shr.i, 1
  %add53 = add nuw nsw i32 %and1.i, %lnot.ext
  %30 = load volatile i32, ptr %flags, align 4
  %shr.i677 = lshr i32 %30, 3
  %and1.i678 = and i32 %shr.i677, 1
  %add56 = add nuw nsw i32 %add53, %and1.i678
  %31 = load volatile i32, ptr %flags, align 4
  %shr.i679 = lshr i32 %31, 4
  %and1.i680 = and i32 %shr.i679, 1
  %add59 = add nuw nsw i32 %add56, %and1.i680
  %32 = load volatile i32, ptr %flags, align 4
  %shr.i681 = lshr i32 %32, 5
  %and1.i682 = and i32 %shr.i681, 1
  %add62 = add nuw nsw i32 %add59, %and1.i682
  %sector_size = getelementptr inbounds %struct.crypt_config, ptr %1, i32 0, i32 15
  %33 = ptrtoint ptr %sector_size to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %sector_size, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %34)
  %cmp64 = icmp ne i16 %34, 512
  %conv65 = zext i1 %cmp64 to i32
  %add66 = add nuw nsw i32 %add62, %conv65
  %cipher_flags = getelementptr inbounds %struct.crypt_config, ptr %1, i32 0, i32 19
  %35 = ptrtoint ptr %cipher_flags to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %cipher_flags, align 4
  %shr.i683 = lshr i32 %36, 1
  %and1.i684 = and i32 %shr.i683, 1
  %add68 = add nuw nsw i32 %add66, %and1.i684
  %on_disk_tag_size = getelementptr inbounds %struct.crypt_config, ptr %1, i32 0, i32 29
  %37 = ptrtoint ptr %on_disk_tag_size to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %on_disk_tag_size, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool69.not = icmp ne i32 %38, 0
  %inc71 = zext i1 %tobool69.not to i32
  %spec.select = add nuw nsw i32 %add68, %inc71
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %tobool73.not = icmp eq i32 %spec.select, 0
  br i1 %tobool73.not, label %cond.end46.sw.epilog_crit_edge, label %if.then74

cond.end46.sw.epilog_crit_edge:                   ; preds = %cond.end46
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.epilog

if.then74:                                        ; preds = %cond.end46
  call void @__sanitizer_cov_trace_cmp4(i32 %add48, i32 %maxlen)
  %cmp75.not = icmp ult i32 %add48, %maxlen
  br i1 %cmp75.not, label %cond.false78, label %if.then74.cond.end82_crit_edge

if.then74.cond.end82_crit_edge:                   ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #22
  br label %cond.end82

cond.false78:                                     ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #22
  %add.ptr79 = getelementptr i8, ptr %result, i32 %add48
  %sub80 = sub i32 %maxlen, %add48
  %call81 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr79, i32 noundef %sub80, ptr noundef nonnull @.str.134, i32 noundef %spec.select) #20
  br label %cond.end82

cond.end82:                                       ; preds = %cond.false78, %if.then74.cond.end82_crit_edge
  %cond83 = phi i32 [ %call81, %cond.false78 ], [ 0, %if.then74.cond.end82_crit_edge ]
  %add84 = add i32 %cond83, %add48
  %39 = ptrtoint ptr %num_discard_bios to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %num_discard_bios, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool86.not = icmp eq i32 %40, 0
  br i1 %tobool86.not, label %cond.end82.if.end98_crit_edge, label %if.then87

cond.end82.if.end98_crit_edge:                    ; preds = %cond.end82
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end98

if.then87:                                        ; preds = %cond.end82
  call void @__sanitizer_cov_trace_cmp4(i32 %add84, i32 %maxlen)
  %cmp88.not = icmp ult i32 %add84, %maxlen
  br i1 %cmp88.not, label %cond.false91, label %if.then87.cond.end95_crit_edge

if.then87.cond.end95_crit_edge:                   ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #22
  br label %cond.end95

cond.false91:                                     ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #22
  %add.ptr92 = getelementptr i8, ptr %result, i32 %add84
  %sub93 = sub i32 %maxlen, %add84
  %call94 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr92, i32 noundef %sub93, ptr noundef nonnull @.str.135) #20
  br label %cond.end95

cond.end95:                                       ; preds = %cond.false91, %if.then87.cond.end95_crit_edge
  %cond96 = phi i32 [ %call94, %cond.false91 ], [ 0, %if.then87.cond.end95_crit_edge ]
  %add97 = add i32 %cond96, %add84
  br label %if.end98

if.end98:                                         ; preds = %cond.end95, %cond.end82.if.end98_crit_edge
  %sz.2 = phi i32 [ %add97, %cond.end95 ], [ %add84, %cond.end82.if.end98_crit_edge ]
  %41 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %flags, align 4
  %43 = and i32 %42, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool101.not = icmp eq i32 %43, 0
  br i1 %tobool101.not, label %if.end98.if.end113_crit_edge, label %if.then102

if.end98.if.end113_crit_edge:                     ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end113

if.then102:                                       ; preds = %if.end98
  call void @__sanitizer_cov_trace_cmp4(i32 %sz.2, i32 %maxlen)
  %cmp103.not = icmp ult i32 %sz.2, %maxlen
  br i1 %cmp103.not, label %cond.false106, label %if.then102.cond.end110_crit_edge

if.then102.cond.end110_crit_edge:                 ; preds = %if.then102
  call void @__sanitizer_cov_trace_pc() #22
  br label %cond.end110

cond.false106:                                    ; preds = %if.then102
  call void @__sanitizer_cov_trace_pc() #22
  %add.ptr107 = getelementptr i8, ptr %result, i32 %sz.2
  %sub108 = sub i32 %maxlen, %sz.2
  %call109 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr107, i32 noundef %sub108, ptr noundef nonnull @.str.136) #20
  br label %cond.end110

cond.end110:                                      ; preds = %cond.false106, %if.then102.cond.end110_crit_edge
  %cond111 = phi i32 [ %call109, %cond.false106 ], [ 0, %if.then102.cond.end110_crit_edge ]
  %add112 = add i32 %cond111, %sz.2
  br label %if.end113

if.end113:                                        ; preds = %cond.end110, %if.end98.if.end113_crit_edge
  %sz.3 = phi i32 [ %add112, %cond.end110 ], [ %sz.2, %if.end98.if.end113_crit_edge ]
  %44 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %flags, align 4
  %46 = and i32 %45, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool116.not = icmp eq i32 %46, 0
  br i1 %tobool116.not, label %if.end113.if.end128_crit_edge, label %if.then117

if.end113.if.end128_crit_edge:                    ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end128

if.then117:                                       ; preds = %if.end113
  call void @__sanitizer_cov_trace_cmp4(i32 %sz.3, i32 %maxlen)
  %cmp118.not = icmp ult i32 %sz.3, %maxlen
  br i1 %cmp118.not, label %cond.false121, label %if.then117.cond.end125_crit_edge

if.then117.cond.end125_crit_edge:                 ; preds = %if.then117
  call void @__sanitizer_cov_trace_pc() #22
  br label %cond.end125

cond.false121:                                    ; preds = %if.then117
  call void @__sanitizer_cov_trace_pc() #22
  %add.ptr122 = getelementptr i8, ptr %result, i32 %sz.3
  %sub123 = sub i32 %maxlen, %sz.3
  %call124 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr122, i32 noundef %sub123, ptr noundef nonnull @.str.137) #20
  br label %cond.end125

cond.end125:                                      ; preds = %cond.false121, %if.then117.cond.end125_crit_edge
  %cond126 = phi i32 [ %call124, %cond.false121 ], [ 0, %if.then117.cond.end125_crit_edge ]
  %add127 = add i32 %cond126, %sz.3
  br label %if.end128

if.end128:                                        ; preds = %cond.end125, %if.end113.if.end128_crit_edge
  %sz.4 = phi i32 [ %add127, %cond.end125 ], [ %sz.3, %if.end113.if.end128_crit_edge ]
  %47 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %flags, align 4
  %49 = and i32 %48, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool131.not = icmp eq i32 %49, 0
  br i1 %tobool131.not, label %if.end128.if.end143_crit_edge, label %if.then132

if.end128.if.end143_crit_edge:                    ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end143

if.then132:                                       ; preds = %if.end128
  call void @__sanitizer_cov_trace_cmp4(i32 %sz.4, i32 %maxlen)
  %cmp133.not = icmp ult i32 %sz.4, %maxlen
  br i1 %cmp133.not, label %cond.false136, label %if.then132.cond.end140_crit_edge

if.then132.cond.end140_crit_edge:                 ; preds = %if.then132
  call void @__sanitizer_cov_trace_pc() #22
  br label %cond.end140

cond.false136:                                    ; preds = %if.then132
  call void @__sanitizer_cov_trace_pc() #22
  %add.ptr137 = getelementptr i8, ptr %result, i32 %sz.4
  %sub138 = sub i32 %maxlen, %sz.4
  %call139 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr137, i32 noundef %sub138, ptr noundef nonnull @.str.138) #20
  br label %cond.end140

cond.end140:                                      ; preds = %cond.false136, %if.then132.cond.end140_crit_edge
  %cond141 = phi i32 [ %call139, %cond.false136 ], [ 0, %if.then132.cond.end140_crit_edge ]
  %add142 = add i32 %cond141, %sz.4
  br label %if.end143

if.end143:                                        ; preds = %cond.end140, %if.end128.if.end143_crit_edge
  %sz.5 = phi i32 [ %add142, %cond.end140 ], [ %sz.4, %if.end128.if.end143_crit_edge ]
  %50 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %flags, align 4
  %52 = and i32 %51, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool146.not = icmp eq i32 %52, 0
  br i1 %tobool146.not, label %if.end143.if.end158_crit_edge, label %if.then147

if.end143.if.end158_crit_edge:                    ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end158

if.then147:                                       ; preds = %if.end143
  call void @__sanitizer_cov_trace_cmp4(i32 %sz.5, i32 %maxlen)
  %cmp148.not = icmp ult i32 %sz.5, %maxlen
  br i1 %cmp148.not, label %cond.false151, label %if.then147.cond.end155_crit_edge

if.then147.cond.end155_crit_edge:                 ; preds = %if.then147
  call void @__sanitizer_cov_trace_pc() #22
  br label %cond.end155

cond.false151:                                    ; preds = %if.then147
  call void @__sanitizer_cov_trace_pc() #22
  %add.ptr152 = getelementptr i8, ptr %result, i32 %sz.5
  %sub153 = sub i32 %maxlen, %sz.5
  %call154 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr152, i32 noundef %sub153, ptr noundef nonnull @.str.139) #20
  br label %cond.end155

cond.end155:                                      ; preds = %cond.false151, %if.then147.cond.end155_crit_edge
  %cond156 = phi i32 [ %call154, %cond.false151 ], [ 0, %if.then147.cond.end155_crit_edge ]
  %add157 = add i32 %cond156, %sz.5
  br label %if.end158

if.end158:                                        ; preds = %cond.end155, %if.end143.if.end158_crit_edge
  %sz.6 = phi i32 [ %add157, %cond.end155 ], [ %sz.5, %if.end143.if.end158_crit_edge ]
  %53 = ptrtoint ptr %on_disk_tag_size to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %on_disk_tag_size, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool160.not = icmp eq i32 %54, 0
  br i1 %tobool160.not, label %if.end158.if.end173_crit_edge, label %if.then161

if.end158.if.end173_crit_edge:                    ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end173

if.then161:                                       ; preds = %if.end158
  call void @__sanitizer_cov_trace_cmp4(i32 %sz.6, i32 %maxlen)
  %cmp162.not = icmp ult i32 %sz.6, %maxlen
  br i1 %cmp162.not, label %cond.false165, label %if.then161.cond.end170_crit_edge

if.then161.cond.end170_crit_edge:                 ; preds = %if.then161
  call void @__sanitizer_cov_trace_pc() #22
  br label %cond.end170

cond.false165:                                    ; preds = %if.then161
  call void @__sanitizer_cov_trace_pc() #22
  %add.ptr166 = getelementptr i8, ptr %result, i32 %sz.6
  %sub167 = sub i32 %maxlen, %sz.6
  %cipher_auth = getelementptr inbounds %struct.crypt_config, ptr %1, i32 0, i32 9
  %55 = ptrtoint ptr %cipher_auth to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %cipher_auth, align 8
  %call169 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr166, i32 noundef %sub167, ptr noundef nonnull @.str.140, i32 noundef %54, ptr noundef %56) #20
  br label %cond.end170

cond.end170:                                      ; preds = %cond.false165, %if.then161.cond.end170_crit_edge
  %cond171 = phi i32 [ %call169, %cond.false165 ], [ 0, %if.then161.cond.end170_crit_edge ]
  %add172 = add i32 %cond171, %sz.6
  br label %if.end173

if.end173:                                        ; preds = %cond.end170, %if.end158.if.end173_crit_edge
  %sz.7 = phi i32 [ %add172, %cond.end170 ], [ %sz.6, %if.end158.if.end173_crit_edge ]
  %57 = ptrtoint ptr %sector_size to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %sector_size, align 4
  %conv175 = zext i16 %58 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %58)
  %cmp176.not = icmp eq i16 %58, 512
  br i1 %cmp176.not, label %if.end173.if.end191_crit_edge, label %if.then178

if.end173.if.end191_crit_edge:                    ; preds = %if.end173
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end191

if.then178:                                       ; preds = %if.end173
  call void @__sanitizer_cov_trace_cmp4(i32 %sz.7, i32 %maxlen)
  %cmp179.not = icmp ult i32 %sz.7, %maxlen
  br i1 %cmp179.not, label %cond.false182, label %if.then178.cond.end188_crit_edge

if.then178.cond.end188_crit_edge:                 ; preds = %if.then178
  call void @__sanitizer_cov_trace_pc() #22
  br label %cond.end188

cond.false182:                                    ; preds = %if.then178
  call void @__sanitizer_cov_trace_pc() #22
  %add.ptr183 = getelementptr i8, ptr %result, i32 %sz.7
  %sub184 = sub i32 %maxlen, %sz.7
  %call187 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr183, i32 noundef %sub184, ptr noundef nonnull @.str.141, i32 noundef %conv175) #20
  br label %cond.end188

cond.end188:                                      ; preds = %cond.false182, %if.then178.cond.end188_crit_edge
  %cond189 = phi i32 [ %call187, %cond.false182 ], [ 0, %if.then178.cond.end188_crit_edge ]
  %add190 = add i32 %cond189, %sz.7
  br label %if.end191

if.end191:                                        ; preds = %cond.end188, %if.end173.if.end191_crit_edge
  %sz.8 = phi i32 [ %add190, %cond.end188 ], [ %sz.7, %if.end173.if.end191_crit_edge ]
  %59 = ptrtoint ptr %cipher_flags to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile i32, ptr %cipher_flags, align 4
  %61 = and i32 %60, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool194.not = icmp ne i32 %61, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %sz.8, i32 %maxlen)
  %cmp196.not = icmp ult i32 %sz.8, %maxlen
  %or.cond = select i1 %tobool194.not, i1 %cmp196.not, i1 false
  br i1 %or.cond, label %cond.false199, label %if.end191.sw.epilog_crit_edge

if.end191.sw.epilog_crit_edge:                    ; preds = %if.end191
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.epilog

cond.false199:                                    ; preds = %if.end191
  call void @__sanitizer_cov_trace_pc() #22
  %add.ptr200 = getelementptr i8, ptr %result, i32 %sz.8
  %sub201 = sub i32 %maxlen, %sz.8
  %call202 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr200, i32 noundef %sub201, ptr noundef nonnull @.str.142) #20
  br label %sw.epilog

sw.bb208:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %maxlen)
  %cmp209 = icmp eq i32 %maxlen, 0
  br i1 %cmp209, label %sw.bb208.cond.end226_crit_edge, label %cond.false212

sw.bb208.cond.end226_crit_edge:                   ; preds = %sw.bb208
  call void @__sanitizer_cov_trace_pc() #22
  br label %cond.end226

cond.false212:                                    ; preds = %sw.bb208
  call void @__sanitizer_cov_trace_pc() #22
  %type215 = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 1
  %62 = ptrtoint ptr %type215 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %type215, align 4
  %name216 = getelementptr inbounds %struct.target_type, ptr %63, i32 0, i32 1
  %64 = ptrtoint ptr %name216 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %name216, align 8
  %version = getelementptr inbounds %struct.target_type, ptr %63, i32 0, i32 3
  %66 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %version, align 8
  %arrayidx221 = getelementptr %struct.target_type, ptr %63, i32 0, i32 3, i32 1
  %68 = ptrtoint ptr %arrayidx221 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx221, align 4
  %arrayidx224 = getelementptr %struct.target_type, ptr %63, i32 0, i32 3, i32 2
  %70 = ptrtoint ptr %arrayidx224 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx224, align 8
  %call225 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %result, i32 noundef %maxlen, ptr noundef nonnull @.str.143, ptr noundef %65, i32 noundef %67, i32 noundef %69, i32 noundef %71) #20
  br label %cond.end226

cond.end226:                                      ; preds = %cond.false212, %sw.bb208.cond.end226_crit_edge
  %cond227 = phi i32 [ %call225, %cond.false212 ], [ 0, %sw.bb208.cond.end226_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %cond227, i32 %maxlen)
  %cmp229.not = icmp ult i32 %cond227, %maxlen
  br i1 %cmp229.not, label %cond.false232, label %cond.end226.cond.end239_crit_edge

cond.end226.cond.end239_crit_edge:                ; preds = %cond.end226
  call void @__sanitizer_cov_trace_pc() #22
  br label %cond.end239

cond.false232:                                    ; preds = %cond.end226
  call void @__sanitizer_cov_trace_pc() #22
  %add.ptr233 = getelementptr i8, ptr %result, i32 %cond227
  %sub234 = sub i32 %maxlen, %cond227
  %num_discard_bios235 = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 6
  %72 = ptrtoint ptr %num_discard_bios235 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %num_discard_bios235, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %tobool236.not = icmp eq i32 %73, 0
  %cond237 = select i1 %tobool236.not, i32 110, i32 121
  %call238 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr233, i32 noundef %sub234, ptr noundef nonnull @.str.144, i32 noundef %cond237) #20
  br label %cond.end239

cond.end239:                                      ; preds = %cond.false232, %cond.end226.cond.end239_crit_edge
  %cond240 = phi i32 [ %call238, %cond.false232 ], [ 0, %cond.end226.cond.end239_crit_edge ]
  %add241 = add i32 %cond240, %cond227
  call void @__sanitizer_cov_trace_cmp4(i32 %add241, i32 %maxlen)
  %cmp242.not = icmp ult i32 %add241, %maxlen
  br i1 %cmp242.not, label %cond.false245, label %cond.end239.cond.end253_crit_edge

cond.end239.cond.end253_crit_edge:                ; preds = %cond.end239
  call void @__sanitizer_cov_trace_pc() #22
  br label %cond.end253

cond.false245:                                    ; preds = %cond.end239
  call void @__sanitizer_cov_trace_pc() #22
  %add.ptr246 = getelementptr i8, ptr %result, i32 %add241
  %sub247 = sub i32 %maxlen, %add241
  %flags248 = getelementptr inbounds %struct.crypt_config, ptr %1, i32 0, i32 22
  %74 = ptrtoint ptr %flags248 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load volatile i32, ptr %flags248, align 4
  %76 = and i32 %75, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool250.not = icmp eq i32 %76, 0
  %cond251 = select i1 %tobool250.not, i32 110, i32 121
  %call252 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr246, i32 noundef %sub247, ptr noundef nonnull @.str.145, i32 noundef %cond251) #20
  br label %cond.end253

cond.end253:                                      ; preds = %cond.false245, %cond.end239.cond.end253_crit_edge
  %cond254 = phi i32 [ %call252, %cond.false245 ], [ 0, %cond.end239.cond.end253_crit_edge ]
  %add255 = add i32 %cond254, %add241
  call void @__sanitizer_cov_trace_cmp4(i32 %add255, i32 %maxlen)
  %cmp256.not = icmp ult i32 %add255, %maxlen
  br i1 %cmp256.not, label %cond.false259, label %cond.end253.cond.end267_crit_edge

cond.end253.cond.end267_crit_edge:                ; preds = %cond.end253
  call void @__sanitizer_cov_trace_pc() #22
  br label %cond.end267

cond.false259:                                    ; preds = %cond.end253
  call void @__sanitizer_cov_trace_pc() #22
  %add.ptr260 = getelementptr i8, ptr %result, i32 %add255
  %sub261 = sub i32 %maxlen, %add255
  %flags262 = getelementptr inbounds %struct.crypt_config, ptr %1, i32 0, i32 22
  %77 = ptrtoint ptr %flags262 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load volatile i32, ptr %flags262, align 4
  %79 = and i32 %78, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %tobool264.not = icmp eq i32 %79, 0
  %cond265 = select i1 %tobool264.not, i32 110, i32 121
  %call266 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr260, i32 noundef %sub261, ptr noundef nonnull @.str.146, i32 noundef %cond265) #20
  br label %cond.end267

cond.end267:                                      ; preds = %cond.false259, %cond.end253.cond.end267_crit_edge
  %cond268 = phi i32 [ %call266, %cond.false259 ], [ 0, %cond.end253.cond.end267_crit_edge ]
  %add269 = add i32 %cond268, %add255
  call void @__sanitizer_cov_trace_cmp4(i32 %add269, i32 %maxlen)
  %cmp270.not = icmp ult i32 %add269, %maxlen
  br i1 %cmp270.not, label %cond.false273, label %cond.end267.cond.end281_crit_edge

cond.end267.cond.end281_crit_edge:                ; preds = %cond.end267
  call void @__sanitizer_cov_trace_pc() #22
  br label %cond.end281

cond.false273:                                    ; preds = %cond.end267
  call void @__sanitizer_cov_trace_pc() #22
  %add.ptr274 = getelementptr i8, ptr %result, i32 %add269
  %sub275 = sub i32 %maxlen, %add269
  %flags276 = getelementptr inbounds %struct.crypt_config, ptr %1, i32 0, i32 22
  %80 = ptrtoint ptr %flags276 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load volatile i32, ptr %flags276, align 4
  %82 = and i32 %81, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %tobool278.not = icmp eq i32 %82, 0
  %cond279 = select i1 %tobool278.not, i32 110, i32 121
  %call280 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr274, i32 noundef %sub275, ptr noundef nonnull @.str.147, i32 noundef %cond279) #20
  br label %cond.end281

cond.end281:                                      ; preds = %cond.false273, %cond.end267.cond.end281_crit_edge
  %cond282 = phi i32 [ %call280, %cond.false273 ], [ 0, %cond.end267.cond.end281_crit_edge ]
  %add283 = add i32 %cond282, %add269
  call void @__sanitizer_cov_trace_cmp4(i32 %add283, i32 %maxlen)
  %cmp284.not = icmp ult i32 %add283, %maxlen
  br i1 %cmp284.not, label %cond.false287, label %cond.end281.cond.end295_crit_edge

cond.end281.cond.end295_crit_edge:                ; preds = %cond.end281
  call void @__sanitizer_cov_trace_pc() #22
  br label %cond.end295

cond.false287:                                    ; preds = %cond.end281
  call void @__sanitizer_cov_trace_pc() #22
  %add.ptr288 = getelementptr i8, ptr %result, i32 %add283
  %sub289 = sub i32 %maxlen, %add283
  %flags290 = getelementptr inbounds %struct.crypt_config, ptr %1, i32 0, i32 22
  %83 = ptrtoint ptr %flags290 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load volatile i32, ptr %flags290, align 4
  %85 = and i32 %84, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %tobool292.not = icmp eq i32 %85, 0
  %cond293 = select i1 %tobool292.not, i32 110, i32 121
  %call294 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr288, i32 noundef %sub289, ptr noundef nonnull @.str.148, i32 noundef %cond293) #20
  br label %cond.end295

cond.end295:                                      ; preds = %cond.false287, %cond.end281.cond.end295_crit_edge
  %cond296 = phi i32 [ %call294, %cond.false287 ], [ 0, %cond.end281.cond.end295_crit_edge ]
  %add297 = add i32 %cond296, %add283
  call void @__sanitizer_cov_trace_cmp4(i32 %add297, i32 %maxlen)
  %cmp298.not = icmp ult i32 %add297, %maxlen
  br i1 %cmp298.not, label %cond.false301, label %cond.end295.cond.end309_crit_edge

cond.end295.cond.end309_crit_edge:                ; preds = %cond.end295
  call void @__sanitizer_cov_trace_pc() #22
  br label %cond.end309

cond.false301:                                    ; preds = %cond.end295
  call void @__sanitizer_cov_trace_pc() #22
  %add.ptr302 = getelementptr i8, ptr %result, i32 %add297
  %sub303 = sub i32 %maxlen, %add297
  %cipher_flags304 = getelementptr inbounds %struct.crypt_config, ptr %1, i32 0, i32 19
  %86 = ptrtoint ptr %cipher_flags304 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load volatile i32, ptr %cipher_flags304, align 4
  %88 = and i32 %87, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %tobool306.not = icmp eq i32 %88, 0
  %cond307 = select i1 %tobool306.not, i32 110, i32 121
  %call308 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr302, i32 noundef %sub303, ptr noundef nonnull @.str.149, i32 noundef %cond307) #20
  br label %cond.end309

cond.end309:                                      ; preds = %cond.false301, %cond.end295.cond.end309_crit_edge
  %cond310 = phi i32 [ %call308, %cond.false301 ], [ 0, %cond.end295.cond.end309_crit_edge ]
  %add311 = add i32 %cond310, %add297
  %on_disk_tag_size312 = getelementptr inbounds %struct.crypt_config, ptr %1, i32 0, i32 29
  %89 = ptrtoint ptr %on_disk_tag_size312 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %on_disk_tag_size312, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %tobool313.not = icmp eq i32 %90, 0
  br i1 %tobool313.not, label %cond.end309.if.end327_crit_edge, label %if.then314

cond.end309.if.end327_crit_edge:                  ; preds = %cond.end309
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end327

if.then314:                                       ; preds = %cond.end309
  call void @__sanitizer_cov_trace_cmp4(i32 %add311, i32 %maxlen)
  %cmp315.not = icmp ult i32 %add311, %maxlen
  br i1 %cmp315.not, label %cond.false318, label %if.then314.cond.end324_crit_edge

if.then314.cond.end324_crit_edge:                 ; preds = %if.then314
  call void @__sanitizer_cov_trace_pc() #22
  br label %cond.end324

cond.false318:                                    ; preds = %if.then314
  call void @__sanitizer_cov_trace_pc() #22
  %add.ptr319 = getelementptr i8, ptr %result, i32 %add311
  %sub320 = sub i32 %maxlen, %add311
  %cipher_auth322 = getelementptr inbounds %struct.crypt_config, ptr %1, i32 0, i32 9
  %91 = ptrtoint ptr %cipher_auth322 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %cipher_auth322, align 8
  %call323 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr319, i32 noundef %sub320, ptr noundef nonnull @.str.150, i32 noundef %90, ptr noundef %92) #20
  br label %cond.end324

cond.end324:                                      ; preds = %cond.false318, %if.then314.cond.end324_crit_edge
  %cond325 = phi i32 [ %call323, %cond.false318 ], [ 0, %if.then314.cond.end324_crit_edge ]
  %add326 = add i32 %cond325, %add311
  br label %if.end327

if.end327:                                        ; preds = %cond.end324, %cond.end309.if.end327_crit_edge
  %sz.9 = phi i32 [ %add326, %cond.end324 ], [ %add311, %cond.end309.if.end327_crit_edge ]
  %sector_size328 = getelementptr inbounds %struct.crypt_config, ptr %1, i32 0, i32 15
  %93 = ptrtoint ptr %sector_size328 to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %sector_size328, align 4
  %conv329 = zext i16 %94 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %94)
  %cmp330.not = icmp eq i16 %94, 512
  br i1 %cmp330.not, label %if.end327.if.end345_crit_edge, label %if.then332

if.end327.if.end345_crit_edge:                    ; preds = %if.end327
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end345

if.then332:                                       ; preds = %if.end327
  call void @__sanitizer_cov_trace_cmp4(i32 %sz.9, i32 %maxlen)
  %cmp333.not = icmp ult i32 %sz.9, %maxlen
  br i1 %cmp333.not, label %cond.false336, label %if.then332.cond.end342_crit_edge

if.then332.cond.end342_crit_edge:                 ; preds = %if.then332
  call void @__sanitizer_cov_trace_pc() #22
  br label %cond.end342

cond.false336:                                    ; preds = %if.then332
  call void @__sanitizer_cov_trace_pc() #22
  %add.ptr337 = getelementptr i8, ptr %result, i32 %sz.9
  %sub338 = sub i32 %maxlen, %sz.9
  %call341 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr337, i32 noundef %sub338, ptr noundef nonnull @.str.151, i32 noundef %conv329) #20
  br label %cond.end342

cond.end342:                                      ; preds = %cond.false336, %if.then332.cond.end342_crit_edge
  %cond343 = phi i32 [ %call341, %cond.false336 ], [ 0, %if.then332.cond.end342_crit_edge ]
  %add344 = add i32 %cond343, %sz.9
  br label %if.end345

if.end345:                                        ; preds = %cond.end342, %if.end327.if.end345_crit_edge
  %sz.10 = phi i32 [ %add344, %cond.end342 ], [ %sz.9, %if.end327.if.end345_crit_edge ]
  %cipher_string346 = getelementptr inbounds %struct.crypt_config, ptr %1, i32 0, i32 8
  %95 = ptrtoint ptr %cipher_string346 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %cipher_string346, align 4
  %tobool347.not = icmp eq ptr %96, null
  br i1 %tobool347.not, label %if.end345.if.end360_crit_edge, label %if.then348

if.end345.if.end360_crit_edge:                    ; preds = %if.end345
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end360

if.then348:                                       ; preds = %if.end345
  call void @__sanitizer_cov_trace_cmp4(i32 %sz.10, i32 %maxlen)
  %cmp349.not = icmp ult i32 %sz.10, %maxlen
  br i1 %cmp349.not, label %cond.false352, label %if.then348.cond.end357_crit_edge

if.then348.cond.end357_crit_edge:                 ; preds = %if.then348
  call void @__sanitizer_cov_trace_pc() #22
  br label %cond.end357

cond.false352:                                    ; preds = %if.then348
  call void @__sanitizer_cov_trace_pc() #22
  %add.ptr353 = getelementptr i8, ptr %result, i32 %sz.10
  %sub354 = sub i32 %maxlen, %sz.10
  %call356 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr353, i32 noundef %sub354, ptr noundef nonnull @.str.152, ptr noundef nonnull %96) #20
  br label %cond.end357

cond.end357:                                      ; preds = %cond.false352, %if.then348.cond.end357_crit_edge
  %cond358 = phi i32 [ %call356, %cond.false352 ], [ 0, %if.then348.cond.end357_crit_edge ]
  %add359 = add i32 %cond358, %sz.10
  br label %if.end360

if.end360:                                        ; preds = %cond.end357, %if.end345.if.end360_crit_edge
  %sz.11 = phi i32 [ %add359, %cond.end357 ], [ %sz.10, %if.end345.if.end360_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %sz.11, i32 %maxlen)
  %cmp361.not = icmp ult i32 %sz.11, %maxlen
  br i1 %cmp361.not, label %cond.false364, label %if.end360.cond.end369_crit_edge

if.end360.cond.end369_crit_edge:                  ; preds = %if.end360
  call void @__sanitizer_cov_trace_pc() #22
  br label %cond.end369

cond.false364:                                    ; preds = %if.end360
  call void @__sanitizer_cov_trace_pc() #22
  %add.ptr365 = getelementptr i8, ptr %result, i32 %sz.11
  %sub366 = sub i32 %maxlen, %sz.11
  %key_size367 = getelementptr inbounds %struct.crypt_config, ptr %1, i32 0, i32 23
  %97 = ptrtoint ptr %key_size367 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %key_size367, align 8
  %call368 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr365, i32 noundef %sub366, ptr noundef nonnull @.str.153, i32 noundef %98) #20
  br label %cond.end369

cond.end369:                                      ; preds = %cond.false364, %if.end360.cond.end369_crit_edge
  %cond370 = phi i32 [ %call368, %cond.false364 ], [ 0, %if.end360.cond.end369_crit_edge ]
  %add371 = add i32 %cond370, %sz.11
  call void @__sanitizer_cov_trace_cmp4(i32 %add371, i32 %maxlen)
  %cmp372.not = icmp ult i32 %add371, %maxlen
  br i1 %cmp372.not, label %cond.false375, label %cond.end369.cond.end379_crit_edge

cond.end369.cond.end379_crit_edge:                ; preds = %cond.end369
  call void @__sanitizer_cov_trace_pc() #22
  br label %cond.end379

cond.false375:                                    ; preds = %cond.end369
  call void @__sanitizer_cov_trace_pc() #22
  %add.ptr376 = getelementptr i8, ptr %result, i32 %add371
  %sub377 = sub i32 %maxlen, %add371
  %key_parts = getelementptr inbounds %struct.crypt_config, ptr %1, i32 0, i32 24
  %99 = ptrtoint ptr %key_parts to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %key_parts, align 4
  %call378 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr376, i32 noundef %sub377, ptr noundef nonnull @.str.154, i32 noundef %100) #20
  br label %cond.end379

cond.end379:                                      ; preds = %cond.false375, %cond.end369.cond.end379_crit_edge
  %cond380 = phi i32 [ %call378, %cond.false375 ], [ 0, %cond.end369.cond.end379_crit_edge ]
  %add381 = add i32 %cond380, %add371
  call void @__sanitizer_cov_trace_cmp4(i32 %add381, i32 %maxlen)
  %cmp382.not = icmp ult i32 %add381, %maxlen
  br i1 %cmp382.not, label %cond.false385, label %cond.end379.cond.end389_crit_edge

cond.end379.cond.end389_crit_edge:                ; preds = %cond.end379
  call void @__sanitizer_cov_trace_pc() #22
  br label %cond.end389

cond.false385:                                    ; preds = %cond.end379
  call void @__sanitizer_cov_trace_pc() #22
  %add.ptr386 = getelementptr i8, ptr %result, i32 %add381
  %sub387 = sub i32 %maxlen, %add381
  %key_extra_size = getelementptr inbounds %struct.crypt_config, ptr %1, i32 0, i32 25
  %101 = ptrtoint ptr %key_extra_size to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %key_extra_size, align 8
  %call388 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr386, i32 noundef %sub387, ptr noundef nonnull @.str.155, i32 noundef %102) #20
  br label %cond.end389

cond.end389:                                      ; preds = %cond.false385, %cond.end379.cond.end389_crit_edge
  %cond390 = phi i32 [ %call388, %cond.false385 ], [ 0, %cond.end379.cond.end389_crit_edge ]
  %add391 = add i32 %cond390, %add381
  call void @__sanitizer_cov_trace_cmp4(i32 %add391, i32 %maxlen)
  %cmp392.not = icmp ult i32 %add391, %maxlen
  br i1 %cmp392.not, label %cond.false395, label %cond.end389.cond.end399_crit_edge

cond.end389.cond.end399_crit_edge:                ; preds = %cond.end389
  call void @__sanitizer_cov_trace_pc() #22
  br label %cond.end399

cond.false395:                                    ; preds = %cond.end389
  call void @__sanitizer_cov_trace_pc() #22
  %add.ptr396 = getelementptr i8, ptr %result, i32 %add391
  %sub397 = sub i32 %maxlen, %add391
  %key_mac_size = getelementptr inbounds %struct.crypt_config, ptr %1, i32 0, i32 26
  %103 = ptrtoint ptr %key_mac_size to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %key_mac_size, align 4
  %call398 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr396, i32 noundef %sub397, ptr noundef nonnull @.str.156, i32 noundef %104) #20
  br label %cond.end399

cond.end399:                                      ; preds = %cond.false395, %cond.end389.cond.end399_crit_edge
  %cond400 = phi i32 [ %call398, %cond.false395 ], [ 0, %cond.end389.cond.end399_crit_edge ]
  %add401 = add i32 %cond400, %add391
  call void @__sanitizer_cov_trace_cmp4(i32 %add401, i32 %maxlen)
  %cmp402.not = icmp ult i32 %add401, %maxlen
  br i1 %cmp402.not, label %cond.false405, label %cond.end399.sw.epilog_crit_edge

cond.end399.sw.epilog_crit_edge:                  ; preds = %cond.end399
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.epilog

cond.false405:                                    ; preds = %cond.end399
  call void @__sanitizer_cov_trace_pc() #22
  %add.ptr406 = getelementptr i8, ptr %result, i32 %add401
  %sub407 = sub i32 %maxlen, %add401
  %call408 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr406, i32 noundef %sub407, ptr noundef nonnull @.str.157) #20
  br label %sw.epilog

sw.epilog:                                        ; preds = %cond.false405, %cond.end399.sw.epilog_crit_edge, %cond.false199, %if.end191.sw.epilog_crit_edge, %cond.end46.sw.epilog_crit_edge, %sw.bb, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @crypt_message(ptr nocapture noundef readonly %ti, i32 noundef %argc, ptr nocapture noundef %argv, ptr nocapture noundef readnone %result, i32 noundef %maxlen) #2 align 64 {
entry:
  %dummy.i = alloca i8, align 1
  %ret.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %argc)
  %cmp = icmp ult i32 %argc, 2
  br i1 %cmp, label %entry.do.end52_crit_edge, label %if.end

entry.do.end52_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end52

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %argv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %argv, align 4
  %call = tail call i32 @strcasecmp(ptr noundef %3, ptr noundef nonnull @.str.158)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then1, label %if.end.do.end52_crit_edge

if.end.do.end52_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end52

if.then1:                                         ; preds = %if.end
  %flags = getelementptr inbounds %struct.crypt_config, ptr %1, i32 0, i32 22
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool3.not = icmp eq i32 %and1.i, 0
  br i1 %tobool3.not, label %do.end, label %if.end6

do.end:                                           ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #22
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.159) #23
  br label %cleanup

if.end6:                                          ; preds = %if.then1
  %6 = zext i32 %argc to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.168)
  switch i32 %argc, label %if.end6.do.end52_crit_edge [
    i32 3, label %land.lhs.true
    i32 2, label %land.lhs.true42
  ]

if.end6.do.end52_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end52

land.lhs.true:                                    ; preds = %if.end6
  %arrayidx8 = getelementptr ptr, ptr %argv, i32 1
  %7 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx8, align 4
  %call9 = tail call i32 @strcasecmp(ptr noundef %8, ptr noundef nonnull @.str.161)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.then11, label %land.lhs.true.do.end52_crit_edge

land.lhs.true.do.end52_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end52

if.then11:                                        ; preds = %land.lhs.true
  %arrayidx12 = getelementptr ptr, ptr %argv, i32 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %dummy.i) #20
  %9 = ptrtoint ptr %dummy.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -1, ptr %dummy.i, align 1, !annotation !410
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ret.i) #20
  %10 = ptrtoint ptr %ret.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %ret.i, align 4, !annotation !410
  %11 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx12, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %12, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 58, i8 %14)
  %cmp.not.i = icmp eq i8 %14, 58
  br i1 %cmp.not.i, label %if.end.i, label %get_key_size.exit.thread85

get_key_size.exit.thread85:                       ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #22
  %call.i = tail call i32 @strlen(ptr noundef %12) #24
  %shr.i = lshr i32 %call.i, 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret.i) #20
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %dummy.i) #20
  br label %lor.lhs.false

if.end.i:                                         ; preds = %if.then11
  %add.ptr.i = getelementptr i8, ptr %12, i32 1
  %strchr.i = tail call ptr @strchr(ptr %add.ptr.i, i32 58) #20
  %tobool.not.i = icmp eq ptr %strchr.i, null
  br i1 %tobool.not.i, label %if.end.i.get_key_size.exit.thread_crit_edge, label %if.end4.i

if.end.i.get_key_size.exit.thread_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %get_key_size.exit.thread

if.end4.i:                                        ; preds = %if.end.i
  %call6.i = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %add.ptr.i, ptr noundef nonnull @.str.28, ptr noundef nonnull %ret.i, ptr noundef nonnull %dummy.i) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call6.i)
  %cmp7.not.i = icmp eq i32 %call6.i, 2
  br i1 %cmp7.not.i, label %lor.lhs.false.i, label %if.end4.i.get_key_size.exit.thread_crit_edge

if.end4.i.get_key_size.exit.thread_crit_edge:     ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %get_key_size.exit.thread

lor.lhs.false.i:                                  ; preds = %if.end4.i
  %15 = ptrtoint ptr %dummy.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %dummy.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 58, i8 %16)
  %cmp10.not.i = icmp eq i8 %16, 58
  br i1 %cmp10.not.i, label %get_key_size.exit, label %lor.lhs.false.i.get_key_size.exit.thread_crit_edge

lor.lhs.false.i.get_key_size.exit.thread_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %get_key_size.exit.thread

get_key_size.exit.thread:                         ; preds = %lor.lhs.false.i.get_key_size.exit.thread_crit_edge, %if.end4.i.get_key_size.exit.thread_crit_edge, %if.end.i.get_key_size.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret.i) #20
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %dummy.i) #20
  br label %if.then17

get_key_size.exit:                                ; preds = %lor.lhs.false.i
  %17 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %strchr.i, ptr %arrayidx12, align 4
  %18 = ptrtoint ptr %ret.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ret.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret.i) #20
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %dummy.i) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp14 = icmp slt i32 %19, 0
  br i1 %cmp14, label %get_key_size.exit.if.then17_crit_edge, label %get_key_size.exit.lor.lhs.false_crit_edge

get_key_size.exit.lor.lhs.false_crit_edge:        ; preds = %get_key_size.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %lor.lhs.false

get_key_size.exit.if.then17_crit_edge:            ; preds = %get_key_size.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then17

lor.lhs.false:                                    ; preds = %get_key_size.exit.lor.lhs.false_crit_edge, %get_key_size.exit.thread85
  %retval.0.i88 = phi i32 [ %shr.i, %get_key_size.exit.thread85 ], [ %19, %get_key_size.exit.lor.lhs.false_crit_edge ]
  %key_size15 = getelementptr inbounds %struct.crypt_config, ptr %1, i32 0, i32 23
  %20 = ptrtoint ptr %key_size15 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %key_size15, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %retval.0.i88)
  %cmp16.not = icmp eq i32 %21, %retval.0.i88
  br i1 %cmp16.not, label %if.end21, label %lor.lhs.false.if.then17_crit_edge

lor.lhs.false.if.then17_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then17

if.then17:                                        ; preds = %lor.lhs.false.if.then17_crit_edge, %get_key_size.exit.if.then17_crit_edge, %get_key_size.exit.thread
  %22 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx12, align 4
  %call20 = call i32 @strlen(ptr noundef %23) #27
  %24 = call ptr @memset(ptr %23, i32 48, i32 %call20)
  br label %cleanup

if.end21:                                         ; preds = %lor.lhs.false
  %25 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx12, align 4
  %call23 = call fastcc i32 @crypt_set_key(ptr noundef %1, ptr noundef %26)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end26, label %if.end21.cleanup_crit_edge

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end26:                                         ; preds = %if.end21
  %iv_gen_ops = getelementptr inbounds %struct.crypt_config, ptr %1, i32 0, i32 11
  %27 = ptrtoint ptr %iv_gen_ops to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %iv_gen_ops, align 8
  %tobool27.not = icmp eq ptr %28, null
  br i1 %tobool27.not, label %if.end26.if.end35_crit_edge, label %land.lhs.true28

if.end26.if.end35_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end35

land.lhs.true28:                                  ; preds = %if.end26
  %init = getelementptr inbounds %struct.crypt_iv_operations, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %init, align 4
  %tobool30.not = icmp eq ptr %30, null
  br i1 %tobool30.not, label %land.lhs.true28.if.end35_crit_edge, label %if.then31

land.lhs.true28.if.end35_crit_edge:               ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end35

if.then31:                                        ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #22
  %call34 = call i32 %30(ptr noundef %1) #20
  br label %if.end35

if.end35:                                         ; preds = %if.then31, %land.lhs.true28.if.end35_crit_edge, %if.end26.if.end35_crit_edge
  %ret.0 = phi i32 [ %call34, %if.then31 ], [ 0, %land.lhs.true28.if.end35_crit_edge ], [ 0, %if.end26.if.end35_crit_edge ]
  %key_string = getelementptr inbounds %struct.crypt_config, ptr %1, i32 0, i32 10
  %31 = ptrtoint ptr %key_string to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %key_string, align 4
  %tobool36.not = icmp eq ptr %32, null
  br i1 %tobool36.not, label %if.end35.cleanup_crit_edge, label %if.then37

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.then37:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #22
  %key = getelementptr inbounds %struct.crypt_config, ptr %1, i32 0, i32 37
  %33 = ptrtoint ptr %key_size15 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %key_size15, align 8
  %35 = call ptr @memset(ptr %key, i32 0, i32 %34)
  br label %cleanup

land.lhs.true42:                                  ; preds = %if.end6
  %arrayidx43 = getelementptr ptr, ptr %argv, i32 1
  %36 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx43, align 4
  %call44 = tail call i32 @strcasecmp(ptr noundef %37, ptr noundef nonnull @.str.162)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.then46, label %land.lhs.true42.do.end52_crit_edge

land.lhs.true42.do.end52_crit_edge:               ; preds = %land.lhs.true42
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end52

if.then46:                                        ; preds = %land.lhs.true42
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %flags) #20
  %key.i = getelementptr inbounds %struct.crypt_config, ptr %1, i32 0, i32 37
  %key_size.i = getelementptr inbounds %struct.crypt_config, ptr %1, i32 0, i32 23
  %38 = ptrtoint ptr %key_size.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %key_size.i, align 8
  tail call void @get_random_bytes(ptr noundef %key.i, i32 noundef %39) #20
  %iv_gen_ops.i = getelementptr inbounds %struct.crypt_config, ptr %1, i32 0, i32 11
  %40 = ptrtoint ptr %iv_gen_ops.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %iv_gen_ops.i, align 8
  %tobool.not.i79 = icmp eq ptr %41, null
  br i1 %tobool.not.i79, label %if.then46.if.end7.i_crit_edge, label %land.lhs.true.i

if.then46.if.end7.i_crit_edge:                    ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end7.i

land.lhs.true.i:                                  ; preds = %if.then46
  %wipe.i = getelementptr inbounds %struct.crypt_iv_operations, ptr %41, i32 0, i32 3
  %42 = ptrtoint ptr %wipe.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %wipe.i, align 4
  %tobool2.not.i = icmp eq ptr %43, null
  br i1 %tobool2.not.i, label %land.lhs.true.i.if.end7.i_crit_edge, label %if.then.i81

land.lhs.true.i.if.end7.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end7.i

if.then.i81:                                      ; preds = %land.lhs.true.i
  %call.i80 = tail call i32 %43(ptr noundef %1) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i80)
  %tobool5.not.i = icmp eq i32 %call.i80, 0
  br i1 %tobool5.not.i, label %if.then.i81.if.end7.i_crit_edge, label %if.then.i81.cleanup_crit_edge

if.then.i81.cleanup_crit_edge:                    ; preds = %if.then.i81
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.then.i81.if.end7.i_crit_edge:                  ; preds = %if.then.i81
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then.i81.if.end7.i_crit_edge, %land.lhs.true.i.if.end7.i_crit_edge, %if.then46.if.end7.i_crit_edge
  %key_string.i = getelementptr inbounds %struct.crypt_config, ptr %1, i32 0, i32 10
  %44 = ptrtoint ptr %key_string.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %key_string.i, align 4
  tail call void @kfree_sensitive(ptr noundef %45) #20
  %46 = ptrtoint ptr %key_string.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr null, ptr %key_string.i, align 4
  %call9.i = tail call fastcc i32 @crypt_setkey(ptr noundef %1) #20
  %47 = ptrtoint ptr %key_size.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %key_size.i, align 8
  %49 = call ptr @memset(ptr %key.i, i32 0, i32 %48)
  br label %cleanup

do.end52:                                         ; preds = %land.lhs.true42.do.end52_crit_edge, %land.lhs.true.do.end52_crit_edge, %if.end6.do.end52_crit_edge, %if.end.do.end52_crit_edge, %entry.do.end52_crit_edge
  %call54 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.164) #23
  br label %cleanup

cleanup:                                          ; preds = %do.end52, %if.end7.i, %if.then.i81.cleanup_crit_edge, %if.then37, %if.end35.cleanup_crit_edge, %if.end21.cleanup_crit_edge, %if.then17, %do.end
  %retval.0 = phi i32 [ -22, %do.end52 ], [ -22, %if.then17 ], [ -22, %do.end ], [ %call23, %if.end21.cleanup_crit_edge ], [ %ret.0, %if.then37 ], [ %ret.0, %if.end35.cleanup_crit_edge ], [ %call9.i, %if.end7.i ], [ %call.i80, %if.then.i81.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @crypt_report_zones(ptr nocapture noundef readonly %ti, ptr noundef %args, i32 noundef %nr_zones) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
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
  %start = getelementptr inbounds %struct.crypt_config, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %start, align 8
  %next_sector = getelementptr inbounds %struct.dm_report_zones_args, ptr %args, i32 0, i32 1
  %8 = ptrtoint ptr %next_sector to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %next_sector, align 8
  %begin = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 2
  %10 = ptrtoint ptr %begin to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %begin, align 8
  %sub = add i64 %9, %7
  %add = sub i64 %sub, %11
  %call = tail call i32 @dm_report_zones(ptr noundef %5, i64 noundef %7, i64 noundef %add, ptr noundef %args, i32 noundef %nr_zones) #20
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @crypt_iterate_devices(ptr noundef %ti, ptr nocapture noundef readonly %fn, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %start = getelementptr inbounds %struct.crypt_config, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %start, align 8
  %len = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 3
  %6 = ptrtoint ptr %len to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %len, align 8
  %call = tail call i32 %fn(ptr noundef %ti, ptr noundef %3, i64 noundef %5, i64 noundef %7, ptr noundef %data) #20
  ret i32 %call
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @crypt_io_hints(ptr nocapture noundef readonly %ti, ptr nocapture noundef %limits) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %max_segment_size = getelementptr inbounds %struct.queue_limits, ptr %limits, i32 0, i32 7
  %2 = ptrtoint ptr %max_segment_size to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 4096, ptr %max_segment_size, align 4
  %logical_block_size = getelementptr inbounds %struct.queue_limits, ptr %limits, i32 0, i32 9
  %3 = ptrtoint ptr %logical_block_size to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %logical_block_size, align 4
  %sector_size = getelementptr inbounds %struct.crypt_config, ptr %1, i32 0, i32 15
  %5 = ptrtoint ptr %sector_size to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %sector_size, align 4
  %conv = zext i16 %6 to i32
  %7 = tail call i32 @llvm.umax.i32(i32 %4, i32 %conv)
  %8 = ptrtoint ptr %logical_block_size to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %logical_block_size, align 4
  %physical_block_size = getelementptr inbounds %struct.queue_limits, ptr %limits, i32 0, i32 8
  %9 = ptrtoint ptr %physical_block_size to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %physical_block_size, align 4
  %11 = ptrtoint ptr %sector_size to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %sector_size, align 4
  %conv4 = zext i16 %12 to i32
  %13 = tail call i32 @llvm.umax.i32(i32 %10, i32 %conv4)
  %14 = ptrtoint ptr %physical_block_size to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %physical_block_size, align 4
  %io_min = getelementptr inbounds %struct.queue_limits, ptr %limits, i32 0, i32 11
  %15 = ptrtoint ptr %io_min to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %io_min, align 4
  %17 = ptrtoint ptr %sector_size to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %sector_size, align 4
  %conv14 = zext i16 %18 to i32
  %19 = tail call i32 @llvm.umax.i32(i32 %16, i32 %conv14)
  %20 = ptrtoint ptr %io_min to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %io_min, align 4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dm_table_device_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__percpu_counter_init(ptr noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mempool_init(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @crypt_page_alloc(i32 noundef %gfp_mask, ptr noundef %pool_data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %n_allocated_pages = getelementptr inbounds %struct.crypt_config, ptr %pool_data, i32 0, i32 2
  %count.i = getelementptr inbounds %struct.crypt_config, ptr %pool_data, i32 0, i32 2, i32 1
  %0 = ptrtoint ptr %count.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load volatile i64, ptr %count.i, align 8
  %2 = tail call i64 @llvm.smax.i64(i64 %1, i64 0) #20
  %3 = load volatile i32, ptr @dm_crypt_pages_per_client, align 4
  %conv = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %2, i64 %conv)
  %cmp.not = icmp ult i64 %2, %conv
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %land.lhs.true, !prof !413

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %and = and i32 %gfp_mask, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup_crit_edge, !prof !414

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %call38.i.i.i = tail call ptr @__alloc_pages(i32 noundef %gfp_mask, i32 noundef 0, i32 noundef 0, ptr noundef null) #20
  %cmp11.not = icmp eq ptr %call38.i.i.i, null
  br i1 %cmp11.not, label %if.end.cleanup_crit_edge, label %if.then19, !prof !414

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.then19:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @percpu_counter_batch to i32))
  %4 = load i32, ptr @percpu_counter_batch, align 4
  tail call void @percpu_counter_add_batch(ptr noundef %n_allocated_pages, i64 noundef 1, i32 noundef %4) #20
  br label %cleanup

cleanup:                                          ; preds = %if.then19, %if.end.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %land.lhs.true.cleanup_crit_edge ], [ %call38.i.i.i, %if.then19 ], [ null, %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @crypt_page_free(ptr noundef %page, ptr noundef %pool_data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__free_pages(ptr noundef %page, i32 noundef 0) #20
  %n_allocated_pages = getelementptr inbounds %struct.crypt_config, ptr %pool_data, i32 0, i32 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @percpu_counter_batch to i32))
  %0 = load i32, ptr @percpu_counter_batch, align 4
  tail call void @percpu_counter_add_batch(ptr noundef %n_allocated_pages, i64 noundef -1, i32 noundef %0) #20
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bioset_init(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_get_device(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_table_get_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @crypt_integrity_ctr(ptr noundef %cc, ptr nocapture noundef %ti) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cc, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %bd_disk = getelementptr inbounds %struct.block_device, ptr %3, i32 0, i32 17
  %4 = ptrtoint ptr %bd_disk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bd_disk, align 8
  %queue.i = getelementptr inbounds %struct.gendisk, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %queue.i, align 4
  %integrity.i = getelementptr inbounds %struct.request_queue, ptr %7, i32 0, i32 18
  %8 = ptrtoint ptr %integrity.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %integrity.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  %10 = ptrtoint ptr %ti to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ti, align 8
  %call1 = tail call ptr @dm_table_get_md(ptr noundef %11) #20
  %tobool.not103 = icmp eq ptr %integrity.i, null
  %tobool.not = or i1 %tobool.not.i, %tobool.not103
  br i1 %tobool.not, label %entry.cleanup.sink.split_crit_edge, label %lor.lhs.false

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup.sink.split

lor.lhs.false:                                    ; preds = %entry
  %12 = ptrtoint ptr %integrity.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %integrity.i, align 4
  %name = getelementptr inbounds %struct.blk_integrity_profile, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %name, align 4
  %call2 = tail call i32 @strcasecmp(ptr noundef %15, ptr noundef nonnull @.str.108)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end, label %lor.lhs.false.cleanup.sink.split_crit_edge

lor.lhs.false.cleanup.sink.split_crit_edge:       ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup.sink.split

if.end:                                           ; preds = %lor.lhs.false
  %tag_size = getelementptr inbounds %struct.request_queue, ptr %7, i32 0, i32 18, i32 4
  %16 = ptrtoint ptr %tag_size to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %tag_size, align 1
  %conv = zext i8 %17 to i32
  %on_disk_tag_size = getelementptr inbounds %struct.crypt_config, ptr %cc, i32 0, i32 29
  %18 = ptrtoint ptr %on_disk_tag_size to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %on_disk_tag_size, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %conv)
  %cmp.not = icmp eq i32 %19, %conv
  br i1 %cmp.not, label %lor.lhs.false5, label %if.end.cleanup.sink.split_crit_edge

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup.sink.split

lor.lhs.false5:                                   ; preds = %if.end
  %tuple_size = getelementptr inbounds %struct.request_queue, ptr %7, i32 0, i32 18, i32 2
  %20 = ptrtoint ptr %tuple_size to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %tuple_size, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %17, i8 %21)
  %cmp8.not = icmp eq i8 %17, %21
  br i1 %cmp8.not, label %if.end12, label %lor.lhs.false5.cleanup.sink.split_crit_edge

lor.lhs.false5.cleanup.sink.split_crit_edge:      ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup.sink.split

if.end12:                                         ; preds = %lor.lhs.false5
  %interval_exp = getelementptr inbounds %struct.request_queue, ptr %7, i32 0, i32 18, i32 3
  %22 = ptrtoint ptr %interval_exp to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %interval_exp, align 2
  %conv13 = zext i8 %23 to i32
  %shl = shl nuw i32 1, %conv13
  %sector_size = getelementptr inbounds %struct.crypt_config, ptr %cc, i32 0, i32 15
  %24 = ptrtoint ptr %sector_size to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %sector_size, align 4
  %conv14 = zext i16 %25 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %shl, i32 %conv14)
  %cmp15.not = icmp eq i32 %shl, %conv14
  br i1 %cmp15.not, label %if.end19, label %if.end12.cleanup.sink.split_crit_edge

if.end12.cleanup.sink.split_crit_edge:            ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup.sink.split

if.end19:                                         ; preds = %if.end12
  %cipher_flags.i = getelementptr inbounds %struct.crypt_config, ptr %cc, i32 0, i32 19
  %26 = ptrtoint ptr %cipher_flags.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %cipher_flags.i, align 4
  %and1.i.i = and i32 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  %integrity_iv_size39 = getelementptr inbounds %struct.crypt_config, ptr %cc, i32 0, i32 28
  %28 = ptrtoint ptr %integrity_iv_size39 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %integrity_iv_size39, align 4
  br i1 %tobool.i.not, label %if.else, label %if.then21

if.then21:                                        ; preds = %if.end19
  %sub = sub i32 %conv, %29
  %integrity_tag_size = getelementptr inbounds %struct.crypt_config, ptr %cc, i32 0, i32 27
  %30 = ptrtoint ptr %integrity_tag_size to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %sub, ptr %integrity_tag_size, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @crypt_integrity_ctr.__UNIQUE_ID_ddebug387, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@crypt_integrity_ctr, %if.then27)) #20
          to label %do.end [label %if.then27], !srcloc !412

if.then27:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #22
  %call28 = tail call ptr @dm_device_name(ptr noundef %call1) #20
  %31 = ptrtoint ptr %integrity_tag_size to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %integrity_tag_size, align 8
  %33 = ptrtoint ptr %integrity_iv_size39 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %integrity_iv_size39, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @crypt_integrity_ctr.__UNIQUE_ID_ddebug387, ptr noundef nonnull @.str.114, ptr noundef %call28, i32 noundef %32, i32 noundef %34) #20
  br label %do.end

do.end:                                           ; preds = %if.then27, %if.then21
  %cipher_tfm.i = getelementptr inbounds %struct.crypt_config, ptr %cc, i32 0, i32 17
  %35 = ptrtoint ptr %cipher_tfm.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %cipher_tfm.i, align 8
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %36, align 4
  %39 = ptrtoint ptr %integrity_tag_size to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %integrity_tag_size, align 8
  %call34 = tail call i32 @crypto_aead_setauthsize(ptr noundef %38, i32 noundef %40) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %do.end.if.end61_crit_edge, label %do.end.cleanup.sink.split_crit_edge

do.end.cleanup.sink.split_crit_edge:              ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup.sink.split

do.end.if.end61_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end61

if.else:                                          ; preds = %if.end19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool40.not = icmp eq i32 %29, 0
  br i1 %tobool40.not, label %if.else.if.end61_crit_edge, label %do.body42

if.else.if.end61_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end61

do.body42:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #22
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @crypt_integrity_ctr.__UNIQUE_ID_ddebug388, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@crypt_integrity_ctr, %if.then54)) #20
          to label %if.end61 [label %if.then54], !srcloc !412

if.then54:                                        ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #22
  %call55 = tail call ptr @dm_device_name(ptr noundef %call1) #20
  %41 = ptrtoint ptr %integrity_iv_size39 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %integrity_iv_size39, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @crypt_integrity_ctr.__UNIQUE_ID_ddebug388, ptr noundef nonnull @.str.117, ptr noundef %call55, i32 noundef %42) #20
  br label %if.end61

if.end61:                                         ; preds = %if.then54, %do.body42, %if.else.if.end61_crit_edge, %do.end.if.end61_crit_edge
  %integrity_tag_size62 = getelementptr inbounds %struct.crypt_config, ptr %cc, i32 0, i32 27
  %43 = ptrtoint ptr %integrity_tag_size62 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %integrity_tag_size62, align 8
  %integrity_iv_size63 = getelementptr inbounds %struct.crypt_config, ptr %cc, i32 0, i32 28
  %45 = ptrtoint ptr %integrity_iv_size63 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %integrity_iv_size63, align 4
  %add = add i32 %46, %44
  %47 = ptrtoint ptr %tag_size to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %tag_size, align 1
  %conv65 = zext i8 %48 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %conv65)
  %cmp66.not = icmp eq i32 %add, %conv65
  br i1 %cmp66.not, label %if.end61.cleanup_crit_edge, label %if.end61.cleanup.sink.split_crit_edge

if.end61.cleanup.sink.split_crit_edge:            ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup.sink.split

if.end61.cleanup_crit_edge:                       ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.end61.cleanup.sink.split_crit_edge, %do.end.cleanup.sink.split_crit_edge, %if.end12.cleanup.sink.split_crit_edge, %lor.lhs.false5.cleanup.sink.split_crit_edge, %if.end.cleanup.sink.split_crit_edge, %lor.lhs.false.cleanup.sink.split_crit_edge, %entry.cleanup.sink.split_crit_edge
  %.str.118.sink = phi ptr [ @.str.109, %lor.lhs.false.cleanup.sink.split_crit_edge ], [ @.str.109, %entry.cleanup.sink.split_crit_edge ], [ @.str.110, %lor.lhs.false5.cleanup.sink.split_crit_edge ], [ @.str.110, %if.end.cleanup.sink.split_crit_edge ], [ @.str.111, %if.end12.cleanup.sink.split_crit_edge ], [ @.str.115, %do.end.cleanup.sink.split_crit_edge ], [ @.str.118, %if.end61.cleanup.sink.split_crit_edge ]
  %error69 = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 12
  %49 = ptrtoint ptr %error69 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %.str.118.sink, ptr %error69, align 8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end61.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end61.cleanup_crit_edge ], [ -22, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_create_on_node(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dmcrypt_write(ptr noundef %data) #2 align 64 {
entry:
  %write_tree = alloca %struct.rb_root, align 4
  %plug = alloca %struct.blk_plug, align 4
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %write_thread_lock = getelementptr inbounds %struct.crypt_config, ptr %data, i32 0, i32 5
  %write_tree1 = getelementptr inbounds %struct.crypt_config, ptr %data, i32 0, i32 7
  br label %while.cond

while.cond:                                       ; preds = %cleanup, %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %write_tree) #20
  %0 = ptrtoint ptr %write_tree to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %write_tree, align 4, !annotation !410
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %plug) #20
  %1 = call ptr @memset(ptr %plug, i32 255, i32 24)
  call void @_raw_spin_lock_irq(ptr noundef %write_thread_lock) #20
  %2 = ptrtoint ptr %write_tree1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %write_tree1, align 8
  %cmp294 = icmp eq ptr %3, null
  br i1 %cmp294, label %while.cond.__here_crit_edge, label %while.cond.pop_from_list_crit_edge

while.cond.pop_from_list_crit_edge:               ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #22
  br label %pop_from_list

while.cond.__here_crit_edge:                      ; preds = %while.cond
  br label %__here

__here:                                           ; preds = %__here207.__here_crit_edge, %while.cond.__here_crit_edge
  %4 = call i32 @llvm.read_register.i32(metadata !400) #20
  %and.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 212
  %8 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 ptrtoint (ptr blockaddress(@dmcrypt_write, %__here) to i32), ptr %task_state_change, align 4
  %9 = load ptr, ptr %task, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile i32 1, ptr %9, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #20, !srcloc !415
  call void @_raw_spin_unlock_irq(ptr noundef %write_thread_lock) #20
  %call68 = call zeroext i1 @kthread_should_stop() #20
  br i1 %call68, label %while.end, label %if.end156, !prof !414

if.end156:                                        ; preds = %__here
  call void @schedule() #20
  br label %__here207

__here207:                                        ; preds = %if.end156
  %11 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %task, align 8
  %task_state_change211 = getelementptr inbounds %struct.task_struct, ptr %12, i32 0, i32 212
  %13 = ptrtoint ptr %task_state_change211 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 ptrtoint (ptr blockaddress(@dmcrypt_write, %__here207) to i32), ptr %task_state_change211, align 4
  %14 = load ptr, ptr %task, align 8
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile i32 0, ptr %14, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #20, !srcloc !416
  call void @_raw_spin_lock_irq(ptr noundef %write_thread_lock) #20
  %16 = ptrtoint ptr %write_tree1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %write_tree1, align 8
  %cmp = icmp eq ptr %17, null
  br i1 %cmp, label %__here207.__here_crit_edge, label %__here207.pop_from_list_crit_edge

__here207.pop_from_list_crit_edge:                ; preds = %__here207
  call void @__sanitizer_cov_trace_pc() #22
  br label %pop_from_list

__here207.__here_crit_edge:                       ; preds = %__here207
  call void @__sanitizer_cov_trace_pc() #22
  br label %__here

pop_from_list:                                    ; preds = %__here207.pop_from_list_crit_edge, %while.cond.pop_from_list_crit_edge
  %18 = ptrtoint ptr %write_tree1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %write_tree1, align 8
  %20 = ptrtoint ptr %write_tree to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %write_tree, align 4
  store ptr null, ptr %write_tree1, align 8
  call void @_raw_spin_unlock_irq(ptr noundef %write_thread_lock) #20
  %21 = ptrtoint ptr %write_tree to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %write_tree, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %22, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %24)
  %tobool244.not = icmp ult i32 %24, 4
  br i1 %tobool244.not, label %do.end260, label %do.body252, !prof !413

do.body252:                                       ; preds = %pop_from_list
  call void @__sanitizer_cov_trace_pc() #22
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/dm-crypt.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1934, 0\0A.popsection", ""() #20, !srcloc !417
  unreachable

do.end260:                                        ; preds = %pop_from_list
  call void @blk_start_plug(ptr noundef nonnull %plug) #20
  br label %do.body261

do.body261:                                       ; preds = %do.body261.do.body261_crit_edge, %do.end260
  %call262 = call ptr @rb_first(ptr noundef nonnull %write_tree) #20
  call void @rb_erase(ptr noundef %call262, ptr noundef nonnull %write_tree) #20
  %bio_out.i = getelementptr i8, ptr %call262, i32 -76
  %25 = ptrtoint ptr %bio_out.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %bio_out.i, align 4
  call void @submit_bio_noacct(ptr noundef %26) #20
  %27 = ptrtoint ptr %write_tree to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile ptr, ptr %write_tree, align 4
  %cmp271.not = icmp eq ptr %28, null
  br i1 %cmp271.not, label %cleanup, label %do.body261.do.body261_crit_edge

do.body261.do.body261_crit_edge:                  ; preds = %do.body261
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.body261

cleanup:                                          ; preds = %do.body261
  call void @__sanitizer_cov_trace_pc() #22
  call void @blk_finish_plug(ptr noundef nonnull %plug) #20
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %plug) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %write_tree) #20
  br label %while.cond

while.end:                                        ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #22
  %29 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %task, align 8
  %task_state_change130 = getelementptr inbounds %struct.task_struct, ptr %30, i32 0, i32 212
  %31 = ptrtoint ptr %task_state_change130 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 ptrtoint (ptr blockaddress(@dmcrypt_write, %while.end) to i32), ptr %task_state_change130, align 4
  %32 = load ptr, ptr %task, align 8
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile i32 0, ptr %32, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #20, !srcloc !418
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %plug) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %write_tree) #20
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_read_arg_group(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dm_shift_arg(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcasecmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @crypt_set_key(ptr noundef %cc, ptr noundef %key) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @strlen(ptr noundef %key) #27
  %key_size = getelementptr inbounds %struct.crypt_config, ptr %cc, i32 0, i32 23
  %0 = ptrtoint ptr %key_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %key_size, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @strcmp(ptr noundef %key, ptr noundef nonnull dereferenceable(2) @.str.65) #27
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.out_crit_edge

land.lhs.true.out_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #22
  br label %out

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %2 = ptrtoint ptr %key to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %key, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 58, i8 %3)
  %cmp = icmp eq i8 %3, 58
  br i1 %cmp, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  %add.ptr = getelementptr i8, ptr %key, i32 1
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %while.body.i.i.while.cond.i.i_crit_edge, %if.then4
  %str.addr.0.i.i = phi ptr [ %add.ptr, %if.then4 ], [ %incdec.ptr.i.i, %while.body.i.i.while.cond.i.i_crit_edge ]
  %4 = ptrtoint ptr %str.addr.0.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %str.addr.0.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i.i, label %if.end.i, label %while.body.i.i

while.body.i.i:                                   ; preds = %while.cond.i.i
  %incdec.ptr.i.i = getelementptr i8, ptr %str.addr.0.i.i, i32 1
  %conv.i.i = zext i8 %5 to i32
  %arrayidx.i.i = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv.i.i
  %6 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.i.i, align 1
  %8 = and i8 %7, 32
  %cmp.not.i.i = icmp eq i8 %8, 0
  br i1 %cmp.not.i.i, label %while.body.i.i.while.cond.i.i_crit_edge, label %do.end.i

while.body.i.i.while.cond.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %while.cond.i.i

do.end.i:                                         ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #22
  %call1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.99) #23
  br label %out

if.end.i:                                         ; preds = %while.cond.i.i
  %strchr.i = tail call ptr @strchr(ptr %add.ptr, i32 58) #20
  %tobool.not.i = icmp eq ptr %strchr.i, null
  %cmp.i = icmp eq ptr %strchr.i, %add.ptr
  %or.cond.i = or i1 %tobool.not.i, %cmp.i
  br i1 %or.cond.i, label %if.end.i.out_crit_edge, label %lor.lhs.false3.i

if.end.i.out_crit_edge:                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %out

lor.lhs.false3.i:                                 ; preds = %if.end.i
  %add.ptr.i = getelementptr i8, ptr %strchr.i, i32 1
  %9 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %char0.i = load i8, ptr %add.ptr.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %char0.i)
  %tobool5.not.i = icmp eq i8 %char0.i, 0
  br i1 %tobool5.not.i, label %lor.lhs.false3.i.out_crit_edge, label %if.end7.i

lor.lhs.false3.i.out_crit_edge:                   ; preds = %lor.lhs.false3.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %out

if.end7.i:                                        ; preds = %lor.lhs.false3.i
  %sub.ptr.lhs.cast.i = ptrtoint ptr %strchr.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %add.ptr to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %add.i = add i32 %sub.ptr.sub.i, 1
  %call8.i = tail call i32 @strncmp(ptr noundef %add.ptr, ptr noundef nonnull @.str.101, i32 noundef %add.i) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %if.end7.i.if.end38.i_crit_edge, label %if.else.i

if.end7.i.if.end38.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end38.i

if.else.i:                                        ; preds = %if.end7.i
  %call15.i = tail call i32 @strncmp(ptr noundef %add.ptr, ptr noundef nonnull @.str.102, i32 noundef %add.i) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %tobool16.not.i = icmp eq i32 %call15.i, 0
  br i1 %tobool16.not.i, label %if.else.i.if.end38.i_crit_edge, label %if.else18.i

if.else.i.if.end38.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end38.i

if.else18.i:                                      ; preds = %if.else.i
  %call23.i = tail call i32 @strncmp(ptr noundef %add.ptr, ptr noundef nonnull @.str.103, i32 noundef %add.i) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i)
  %tobool24.not.i = icmp eq i32 %call23.i, 0
  br i1 %tobool24.not.i, label %if.else18.i.if.end38.i_crit_edge, label %if.else26.i

if.else18.i.if.end38.i_crit_edge:                 ; preds = %if.else18.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end38.i

if.else26.i:                                      ; preds = %if.else18.i
  %call31.i = tail call i32 @strncmp(ptr noundef %add.ptr, ptr noundef nonnull @.str.104, i32 noundef %add.i) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31.i)
  %tobool32.not.i = icmp eq i32 %call31.i, 0
  br i1 %tobool32.not.i, label %if.else26.i.if.end38.i_crit_edge, label %if.else26.i.out_crit_edge

if.else26.i.out_crit_edge:                        ; preds = %if.else26.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %out

if.else26.i.if.end38.i_crit_edge:                 ; preds = %if.else26.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end38.i

if.end38.i:                                       ; preds = %if.else26.i.if.end38.i_crit_edge, %if.else18.i.if.end38.i_crit_edge, %if.else.i.if.end38.i_crit_edge, %if.end7.i.if.end38.i_crit_edge
  %type.0.i = phi ptr [ @key_type_logon, %if.end7.i.if.end38.i_crit_edge ], [ @key_type_user, %if.else.i.if.end38.i_crit_edge ], [ @key_type_encrypted, %if.else18.i.if.end38.i_crit_edge ], [ @key_type_trusted, %if.else26.i.if.end38.i_crit_edge ]
  %set_key.0.i = phi ptr [ @set_key_user, %if.end7.i.if.end38.i_crit_edge ], [ @set_key_user, %if.else.i.if.end38.i_crit_edge ], [ @set_key_encrypted, %if.else18.i.if.end38.i_crit_edge ], [ @set_key_trusted, %if.else26.i.if.end38.i_crit_edge ]
  %call39.i = tail call noalias ptr @kstrdup(ptr noundef %add.ptr, i32 noundef 3264) #20
  %tobool40.not.i = icmp eq ptr %call39.i, null
  br i1 %tobool40.not.i, label %if.end38.i.out_crit_edge, label %if.end42.i

if.end38.i.out_crit_edge:                         ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %out

if.end42.i:                                       ; preds = %if.end38.i
  %call.i.i = tail call ptr @request_key_tag(ptr noundef nonnull %type.0.i, ptr noundef %add.ptr.i, ptr noundef null, ptr noundef null) #20
  %cmp.i.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then46.i, label %if.end48.i

if.then46.i:                                      ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #22
  tail call void @kfree_sensitive(ptr noundef nonnull %call39.i) #20
  %10 = ptrtoint ptr %call.i.i to i32
  br label %out

if.end48.i:                                       ; preds = %if.end42.i
  %sem.i = getelementptr inbounds %struct.key, ptr %call.i.i, i32 0, i32 4
  tail call void @down_read(ptr noundef %sem.i) #20
  %call49.i = tail call i32 %set_key.0.i(ptr noundef %cc, ptr noundef %call.i.i) #20, !callees !419
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49.i)
  %cmp50.i = icmp slt i32 %call49.i, 0
  tail call void @up_read(ptr noundef %sem.i) #20
  tail call void @key_put(ptr noundef %call.i.i) #20
  br i1 %cmp50.i, label %if.then51.i, label %if.end53.i

if.then51.i:                                      ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #22
  tail call void @kfree_sensitive(ptr noundef nonnull %call39.i) #20
  br label %out

if.end53.i:                                       ; preds = %if.end48.i
  %flags.i = getelementptr inbounds %struct.crypt_config, ptr %cc, i32 0, i32 22
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %flags.i) #20
  %call55.i = tail call fastcc i32 @crypt_setkey(ptr noundef %cc) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55.i)
  %tobool56.not.i = icmp eq i32 %call55.i, 0
  br i1 %tobool56.not.i, label %if.then57.i, label %if.else61.i

if.then57.i:                                      ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #22
  tail call void @_set_bit(i32 noundef 1, ptr noundef %flags.i) #20
  %key_string59.i = getelementptr inbounds %struct.crypt_config, ptr %cc, i32 0, i32 10
  %11 = ptrtoint ptr %key_string59.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %key_string59.i, align 4
  tail call void @kfree_sensitive(ptr noundef %12) #20
  %13 = ptrtoint ptr %key_string59.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call39.i, ptr %key_string59.i, align 4
  br label %out

if.else61.i:                                      ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #22
  tail call void @kfree_sensitive(ptr noundef nonnull %call39.i) #20
  br label %out

if.end6:                                          ; preds = %if.end
  %flags = getelementptr inbounds %struct.crypt_config, ptr %cc, i32 0, i32 22
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %flags) #20
  %key_string = getelementptr inbounds %struct.crypt_config, ptr %cc, i32 0, i32 10
  %14 = ptrtoint ptr %key_string to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %key_string, align 4
  tail call void @kfree_sensitive(ptr noundef %15) #20
  %16 = ptrtoint ptr %key_string to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %key_string, align 4
  %17 = ptrtoint ptr %key_size to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %key_size, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool9.not = icmp eq i32 %18, 0
  br i1 %tobool9.not, label %if.end6.if.end17_crit_edge, label %land.lhs.true10

if.end6.if.end17_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end17

land.lhs.true10:                                  ; preds = %if.end6
  %key11 = getelementptr inbounds %struct.crypt_config, ptr %cc, i32 0, i32 37
  %call13 = tail call i32 @hex2bin(ptr noundef %key11, ptr noundef %key, i32 noundef %18) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %land.lhs.true10.out_crit_edge, label %land.lhs.true10.if.end17_crit_edge

land.lhs.true10.if.end17_crit_edge:               ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end17

land.lhs.true10.out_crit_edge:                    ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #22
  br label %out

if.end17:                                         ; preds = %land.lhs.true10.if.end17_crit_edge, %if.end6.if.end17_crit_edge
  %call18 = tail call fastcc i32 @crypt_setkey(ptr noundef %cc)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.then20, label %if.end17.out_crit_edge

if.end17.out_crit_edge:                           ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #22
  br label %out

if.then20:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #22
  tail call void @_set_bit(i32 noundef 1, ptr noundef %flags) #20
  br label %out

out:                                              ; preds = %if.then20, %if.end17.out_crit_edge, %land.lhs.true10.out_crit_edge, %if.else61.i, %if.then57.i, %if.then51.i, %if.then46.i, %if.end38.i.out_crit_edge, %if.else26.i.out_crit_edge, %lor.lhs.false3.i.out_crit_edge, %if.end.i.out_crit_edge, %do.end.i, %land.lhs.true.out_crit_edge
  %r.0 = phi i32 [ -22, %land.lhs.true10.out_crit_edge ], [ %call18, %if.end17.out_crit_edge ], [ 0, %if.then20 ], [ -22, %land.lhs.true.out_crit_edge ], [ -22, %do.end.i ], [ %10, %if.then46.i ], [ %call49.i, %if.then51.i ], [ -22, %lor.lhs.false3.i.out_crit_edge ], [ -22, %if.end.i.out_crit_edge ], [ -22, %if.else26.i.out_crit_edge ], [ -12, %if.end38.i.out_crit_edge ], [ %call55.i, %if.else61.i ], [ 0, %if.then57.i ]
  %19 = call ptr @memset(ptr %key, i32 48, i32 %call)
  ret i32 %r.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_alloc_ahash(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_destroy_tfm(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @crypt_alloc_tfms_aead(ptr noundef %cc, ptr noundef %ciphermode) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 4) #26
  %cipher_tfm = getelementptr inbounds %struct.crypt_config, ptr %cc, i32 0, i32 17
  %1 = ptrtoint ptr %cipher_tfm to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i, ptr %cipher_tfm, align 8
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @crypto_alloc_aead(ptr noundef %ciphermode, i32 noundef 0, i32 noundef 65536) #20
  %2 = ptrtoint ptr %cipher_tfm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cipher_tfm, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call2, ptr %3, align 4
  %5 = load ptr, ptr %cipher_tfm, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %cmp.i = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then7, label %do.body

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  %8 = ptrtoint ptr %7 to i32
  tail call fastcc void @crypt_free_tfms(ptr noundef %cc)
  br label %cleanup

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @crypt_alloc_tfms_aead.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@crypt_alloc_tfms_aead, %land.lhs.true)) #20
          to label %cleanup [label %land.lhs.true], !srcloc !412

land.lhs.true:                                    ; preds = %do.body
  %call16 = tail call i32 @___ratelimit(ptr noundef nonnull @crypt_alloc_tfms_aead._rs, ptr noundef nonnull @.str.61) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %land.lhs.true.cleanup_crit_edge, label %if.then18

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.then18:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #22
  %9 = ptrtoint ptr %cipher_tfm to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cipher_tfm, align 8
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %__crt_alg.i = getelementptr inbounds %struct.crypto_aead, ptr %12, i32 0, i32 3, i32 3
  %13 = ptrtoint ptr %__crt_alg.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %__crt_alg.i, align 4
  %cra_driver_name = getelementptr i8, ptr %14, i32 168
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @crypt_alloc_tfms_aead.descriptor, ptr noundef nonnull @.str.62, ptr noundef %ciphermode, ptr noundef %cra_driver_name) #20
  br label %cleanup

cleanup:                                          ; preds = %if.then18, %land.lhs.true.cleanup_crit_edge, %do.body, %if.then7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %8, %if.then7 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.then18 ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @crypt_alloc_tfms_skcipher(ptr noundef %cc, ptr noundef %ciphermode) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %tfms_count = getelementptr inbounds %struct.crypt_config, ptr %cc, i32 0, i32 18
  %0 = ptrtoint ptr %tfms_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tfms_count, align 4
  %2 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %1, i32 4) #20
  %3 = extractvalue { i32, i1 } %2, 1
  br i1 %3, label %kcalloc.exit.thread, label %if.end7.i.i, !prof !414

kcalloc.exit.thread:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  %cipher_tfm38 = getelementptr inbounds %struct.crypt_config, ptr %cc, i32 0, i32 17
  %4 = ptrtoint ptr %cipher_tfm38 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %cipher_tfm38, align 8
  br label %cleanup

if.end7.i.i:                                      ; preds = %entry
  %5 = extractvalue { i32, i1 } %2, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %5, i32 noundef 3520) #25
  %cipher_tfm = getelementptr inbounds %struct.crypt_config, ptr %cc, i32 0, i32 17
  %6 = ptrtoint ptr %cipher_tfm to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call8.i.i, ptr %cipher_tfm, align 8
  %tobool.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool.not, label %if.end7.i.i.cleanup_crit_edge, label %for.cond.preheader

if.end7.i.i.cleanup_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end7.i.i
  %7 = ptrtoint ptr %tfms_count to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %tfms_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp41.not = icmp eq i32 %8, 0
  br i1 %cmp41.not, label %for.cond.preheader.do.body_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.do.body_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw i32 %i.042, 1
  %9 = ptrtoint ptr %tfms_count to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tfms_count, align 4
  %cmp = icmp ult i32 %inc, %10
  br i1 %cmp, label %for.cond.for.body_crit_edge, label %for.cond.do.body_crit_edge

for.cond.do.body_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.body

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.042 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %call3 = tail call ptr @crypto_alloc_skcipher(ptr noundef %ciphermode, i32 noundef 0, i32 noundef 65536) #20
  %11 = ptrtoint ptr %cipher_tfm to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cipher_tfm, align 8
  %arrayidx = getelementptr ptr, ptr %12, i32 %i.042
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call3, ptr %arrayidx, align 4
  %14 = load ptr, ptr %cipher_tfm, align 8
  %arrayidx6 = getelementptr ptr, ptr %14, i32 %i.042
  %15 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx6, align 4
  %cmp.i = icmp ugt ptr %16, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then8, label %for.cond

if.then8:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #22
  %17 = ptrtoint ptr %16 to i32
  tail call fastcc void @crypt_free_tfms(ptr noundef %cc)
  br label %cleanup

do.body:                                          ; preds = %for.cond.do.body_crit_edge, %for.cond.preheader.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @crypt_alloc_tfms_skcipher.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@crypt_alloc_tfms_skcipher, %land.lhs.true)) #20
          to label %cleanup [label %land.lhs.true], !srcloc !412

land.lhs.true:                                    ; preds = %do.body
  %call17 = tail call i32 @___ratelimit(ptr noundef nonnull @crypt_alloc_tfms_skcipher._rs, ptr noundef nonnull @.str.63) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %land.lhs.true.cleanup_crit_edge, label %if.then19

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.then19:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #22
  %18 = ptrtoint ptr %cipher_tfm to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cipher_tfm, align 8
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %__crt_alg.i = getelementptr inbounds %struct.crypto_skcipher, ptr %21, i32 0, i32 2, i32 3
  %22 = ptrtoint ptr %__crt_alg.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %__crt_alg.i, align 4
  %cra_driver_name = getelementptr i8, ptr %23, i32 168
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @crypt_alloc_tfms_skcipher.descriptor, ptr noundef nonnull @.str.62, ptr noundef %ciphermode, ptr noundef %cra_driver_name) #20
  br label %cleanup

cleanup:                                          ; preds = %if.then19, %land.lhs.true.cleanup_crit_edge, %do.body, %if.then8, %if.end7.i.i.cleanup_crit_edge, %kcalloc.exit.thread
  %retval.0 = phi i32 [ %17, %if.then8 ], [ -12, %if.end7.i.i.cleanup_crit_edge ], [ 0, %if.then19 ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ -12, %kcalloc.exit.thread ], [ 0, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_alloc_aead(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @crypt_free_tfms(ptr noundef %cc) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %cipher_flags.i = getelementptr inbounds %struct.crypt_config, ptr %cc, i32 0, i32 19
  %0 = ptrtoint ptr %cipher_flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %cipher_flags.i, align 4
  %and1.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  %cipher_tfm.i3 = getelementptr inbounds %struct.crypt_config, ptr %cc, i32 0, i32 17
  %2 = ptrtoint ptr %cipher_tfm.i3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cipher_tfm.i3, align 8
  %tobool.not.i4 = icmp eq ptr %3, null
  br i1 %tobool.i.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  br i1 %tobool.not.i4, label %if.then.if.end_crit_edge, label %if.end.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

if.end.i:                                         ; preds = %if.then
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %tobool2.not.i = icmp eq ptr %5, null
  %cmp.i.i = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  %or.cond.i = or i1 %tobool2.not.i, %cmp.i.i
  br i1 %or.cond.i, label %if.end.i.if.end.sink.split_crit_edge, label %if.then5.i

if.end.i.if.end.sink.split_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end.sink.split

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #22
  %base.i.i.i = getelementptr inbounds %struct.crypto_aead, ptr %5, i32 0, i32 3
  tail call void @crypto_destroy_tfm(ptr noundef nonnull %5, ptr noundef %base.i.i.i) #20
  %6 = ptrtoint ptr %cipher_tfm.i3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cipher_tfm.i3, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %7, align 4
  br label %if.end.sink.split

if.else:                                          ; preds = %entry
  br i1 %tobool.not.i4, label %if.else.if.end_crit_edge, label %for.cond.preheader.i

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

for.cond.preheader.i:                             ; preds = %if.else
  %tfms_count.i = getelementptr inbounds %struct.crypt_config, ptr %cc, i32 0, i32 18
  %9 = ptrtoint ptr %tfms_count.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tfms_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp25.not.i = icmp eq i32 %10, 0
  br i1 %cmp25.not.i, label %for.cond.preheader.i.if.end.sink.split_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.if.end.sink.split_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end.sink.split

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.026.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %11 = ptrtoint ptr %cipher_tfm.i3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cipher_tfm.i3, align 8
  %arrayidx.i = getelementptr ptr, ptr %12, i32 %i.026.i
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx.i, align 4
  %tobool2.not.i5 = icmp eq ptr %14, null
  %cmp.i.i6 = icmp ugt ptr %14, inttoptr (i32 -4096 to ptr)
  %or.cond.i7 = or i1 %tobool2.not.i5, %cmp.i.i6
  br i1 %or.cond.i7, label %for.body.i.for.inc.i_crit_edge, label %if.then5.i9

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc.i

if.then5.i9:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #22
  %base.i.i.i8 = getelementptr inbounds %struct.crypto_skcipher, ptr %14, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef nonnull %14, ptr noundef %base.i.i.i8) #20
  %15 = ptrtoint ptr %cipher_tfm.i3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cipher_tfm.i3, align 8
  %arrayidx9.i = getelementptr ptr, ptr %16, i32 %i.026.i
  %17 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %arrayidx9.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then5.i9, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.026.i, 1
  %18 = ptrtoint ptr %tfms_count.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tfms_count.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %19
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.if.end.sink.split_crit_edge

for.inc.i.if.end.sink.split_crit_edge:            ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end.sink.split

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body.i

if.end.sink.split:                                ; preds = %for.inc.i.if.end.sink.split_crit_edge, %for.cond.preheader.i.if.end.sink.split_crit_edge, %if.then5.i, %if.end.i.if.end.sink.split_crit_edge
  %20 = ptrtoint ptr %cipher_tfm.i3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cipher_tfm.i3, align 8
  tail call void @kfree(ptr noundef %21) #20
  %22 = ptrtoint ptr %cipher_tfm.i3 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %cipher_tfm.i3, align 8
  br label %if.end

if.end:                                           ; preds = %if.end.sink.split, %if.else.if.end_crit_edge, %if.then.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_alloc_skcipher(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strsep(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #12

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @crypt_iv_plain_gen(ptr nocapture noundef readonly %cc, ptr nocapture noundef writeonly %iv, ptr nocapture noundef readonly %dmreq) #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %iv_size = getelementptr inbounds %struct.crypt_config, ptr %cc, i32 0, i32 14
  %0 = ptrtoint ptr %iv_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %iv_size, align 8
  %2 = call ptr @memset(ptr %iv, i32 0, i32 %1)
  %iv_sector = getelementptr inbounds %struct.dm_crypt_request, ptr %dmreq, i32 0, i32 3
  %3 = ptrtoint ptr %iv_sector to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %iv_sector, align 8
  %conv = trunc i64 %4 to i32
  %5 = tail call i32 @llvm.bswap.i32(i32 %conv)
  %6 = ptrtoint ptr %iv to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %iv, align 4
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #9

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @crypt_iv_plain64_gen(ptr nocapture noundef readonly %cc, ptr nocapture noundef writeonly %iv, ptr nocapture noundef readonly %dmreq) #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %iv_size = getelementptr inbounds %struct.crypt_config, ptr %cc, i32 0, i32 14
  %0 = ptrtoint ptr %iv_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %iv_size, align 8
  %2 = call ptr @memset(ptr %iv, i32 0, i32 %1)
  %iv_sector = getelementptr inbounds %struct.dm_crypt_request, ptr %dmreq, i32 0, i32 3
  %3 = ptrtoint ptr %iv_sector to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %iv_sector, align 8
  %5 = tail call i64 @llvm.bswap.i64(i64 %4)
  %6 = ptrtoint ptr %iv to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %5, ptr %iv, align 8
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #9

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @crypt_iv_plain64be_gen(ptr nocapture noundef readonly %cc, ptr nocapture noundef writeonly %iv, ptr nocapture noundef readonly %dmreq) #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %iv_size = getelementptr inbounds %struct.crypt_config, ptr %cc, i32 0, i32 14
  %0 = ptrtoint ptr %iv_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %iv_size, align 8
  %2 = call ptr @memset(ptr %iv, i32 0, i32 %1)
  %iv_sector = getelementptr inbounds %struct.dm_crypt_request, ptr %dmreq, i32 0, i32 3
  %3 = ptrtoint ptr %iv_sector to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %iv_sector, align 8
  %5 = load i32, ptr %iv_size, align 8
  %sub = add i32 %5, -8
  %arrayidx = getelementptr i8, ptr %iv, i32 %sub
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %4, ptr %arrayidx, align 8
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @crypt_iv_essiv_gen(ptr nocapture noundef readonly %cc, ptr nocapture noundef writeonly %iv, ptr nocapture noundef readonly %dmreq) #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %iv_size = getelementptr inbounds %struct.crypt_config, ptr %cc, i32 0, i32 14
  %0 = ptrtoint ptr %iv_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %iv_size, align 8
  %2 = call ptr @memset(ptr %iv, i32 0, i32 %1)
  %iv_sector = getelementptr inbounds %struct.dm_crypt_request, ptr %dmreq, i32 0, i32 3
  %3 = ptrtoint ptr %iv_sector to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %iv_sector, align 8
  %5 = tail call i64 @llvm.bswap.i64(i64 %4)
  %6 = ptrtoint ptr %iv to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %5, ptr %iv, align 8
  ret i32 0
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @crypt_iv_benbi_ctr(ptr noundef %cc, ptr nocapture noundef writeonly %ti, ptr nocapture noundef readnone %opts) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %cipher_flags.i = getelementptr inbounds %struct.crypt_config, ptr %cc, i32 0, i32 19
  %0 = ptrtoint ptr %cipher_flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %cipher_flags.i, align 4
  %and1.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  %cipher_tfm.i31 = getelementptr inbounds %struct.crypt_config, ptr %cc, i32 0, i32 17
  %2 = ptrtoint ptr %cipher_tfm.i31 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cipher_tfm.i31, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_aead, ptr %5, i32 0, i32 3, i32 3
  %__crt_alg.i.i32 = getelementptr inbounds %struct.crypto_skcipher, ptr %5, i32 0, i32 2, i32 3
  %.pn.in = select i1 %tobool.i.not, ptr %__crt_alg.i.i32, ptr %__crt_alg.i.i
  %6 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn = load ptr, ptr %.pn.in, align 4
  %bs.0.in = getelementptr inbounds %struct.crypto_alg, ptr %.pn, i32 0, i32 3
  %7 = ptrtoint ptr %bs.0.in to i32
  call void @__asan_load4_noabort(i32 %7)
  %bs.0 = load i32, ptr %bs.0.in, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bs.0)
  %tobool.not.i.i = icmp eq i32 %bs.0, 0
  %8 = tail call i32 @llvm.ctlz.i32(i32 %bs.0, i1 true) #20, !range !411
  %sub.i.op.i = xor i32 %8, 31
  %sub.i = select i1 %tobool.not.i.i, i32 -1, i32 %sub.i.op.i
  %shl = shl nuw i32 1, %sub.i
  call void @__sanitizer_cov_trace_cmp4(i32 %shl, i32 %bs.0)
  %cmp10.not = icmp eq i32 %shl, %bs.0
  br i1 %cmp10.not, label %if.end13, label %if.then12

if.then12:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  %error = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 12
  %9 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @.str.84, ptr %error, align 8
  br label %cleanup

if.end13:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %sub.i)
  %cmp14 = icmp sgt i32 %sub.i, 9
  br i1 %cmp14, label %if.then16, label %if.end18

if.then16:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #22
  %error17 = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 12
  %10 = ptrtoint ptr %error17 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @.str.85, ptr %error17, align 8
  br label %cleanup

if.end18:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #22
  %sub19 = sub nsw i32 9, %sub.i
  %iv_gen_private = getelementptr inbounds %struct.crypt_config, ptr %cc, i32 0, i32 12
  %11 = ptrtoint ptr %iv_gen_private to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %sub19, ptr %iv_gen_private, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %if.then16, %if.then12
  %retval.0 = phi i32 [ -22, %if.then12 ], [ -22, %if.then16 ], [ 0, %if.end18 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @crypt_iv_benbi_dtr(ptr nocapture noundef %cc) #15 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @crypt_iv_benbi_gen(ptr nocapture noundef readonly %cc, ptr nocapture noundef writeonly %iv, ptr nocapture noundef readonly %dmreq) #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %iv_size = getelementptr inbounds %struct.crypt_config, ptr %cc, i32 0, i32 14
  %0 = ptrtoint ptr %iv_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %iv_size, align 8
  %sub = add i32 %1, -8
  %2 = call ptr @memset(ptr %iv, i32 0, i32 %sub)
  %iv_sector = getelementptr inbounds %struct.dm_crypt_request, ptr %dmreq, i32 0, i32 3
  %3 = ptrtoint ptr %iv_sector to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %iv_sector, align 8
  %iv_gen_private = getelementptr inbounds %struct.crypt_config, ptr %cc, i32 0, i32 12
  %5 = ptrtoint ptr %iv_gen_private to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %iv_gen_private, align 4
  %sh_prom = zext i32 %6 to i64
  %shl = shl i64 %4, %sh_prom
  %add = add i64 %shl, 1
  %7 = load i32, ptr %iv_size, align 8
  %add.ptr = getelementptr i8, ptr %iv, i32 %7
  %add.ptr2 = getelementptr i8, ptr %add.ptr, i32 -8
  %8 = ptrtoint ptr %add.ptr2 to i32
  call void @__asan_storeN_noabort(i32 %8, i32 8)
  store i64 %add, ptr %add.ptr2, align 1
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @crypt_iv_null_gen(ptr nocapture noundef readonly %cc, ptr nocapture noundef writeonly %iv, ptr nocapture noundef readnone %dmreq) #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %iv_size = getelementptr inbounds %struct.crypt_config, ptr %cc, i32 0, i32 14
  %0 = ptrtoint ptr %iv_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %iv_size, align 8
  %2 = call ptr @memset(ptr %iv, i32 0, i32 %1)
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @crypt_iv_eboiv_ctr(ptr noundef %cc, ptr nocapture noundef writeonly %ti, ptr nocapture noundef readnone %opts) #16 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %cipher_flags.i = getelementptr inbounds %struct.crypt_config, ptr %cc, i32 0, i32 19
  %0 = ptrtoint ptr %cipher_flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %cipher_flags.i, align 4
  %and1.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.end, label %entry.return.sink.split_crit_edge

entry.return.sink.split_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %return.sink.split

if.end:                                           ; preds = %entry
  %cipher_tfm.i = getelementptr inbounds %struct.crypt_config, ptr %cc, i32 0, i32 17
  %2 = ptrtoint ptr %cipher_tfm.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cipher_tfm.i, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %5, i32 0, i32 2, i32 3
  %6 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %__crt_alg.i.i, align 4
  %cra_blocksize.i.i = getelementptr inbounds %struct.crypto_alg, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %cra_blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cra_blocksize.i.i, align 4
  %iv_size = getelementptr inbounds %struct.crypt_config, ptr %cc, i32 0, i32 14
  %10 = ptrtoint ptr %iv_size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %iv_size, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp.not = icmp eq i32 %9, %11
  br i1 %cmp.not, label %if.end.return_crit_edge, label %if.end.return.sink.split_crit_edge

if.end.return.sink.split_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %return.sink.split

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %return

return.sink.split:                                ; preds = %if.end.return.sink.split_crit_edge, %entry.return.sink.split_crit_edge
  %.str.87.sink = phi ptr [ @.str.86, %entry.return.sink.split_crit_edge ], [ @.str.87, %if.end.return.sink.split_crit_edge ]
  %error4 = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 12
  %12 = ptrtoint ptr %error4 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %.str.87.sink, ptr %error4, align 8
  br label %return

return:                                           ; preds = %return.sink.split, %if.end.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end.return_crit_edge ], [ -22, %return.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @crypt_iv_eboiv_gen(ptr nocapture noundef readonly %cc, ptr noundef %iv, ptr nocapture noundef readonly %dmreq) #2 align 64 {
entry:
  %buf = alloca [16 x i8], align 8
  %src = alloca %struct.scatterlist, align 4
  %dst = alloca %struct.scatterlist, align 4
  %wait = alloca %struct.crypto_wait, align 4
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %buf) #20
  %0 = call ptr @memset(ptr %buf, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %src) #20
  %1 = call ptr @memset(ptr %src, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %dst) #20
  %2 = call ptr @memset(ptr %dst, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %wait) #20
  %3 = getelementptr inbounds i8, ptr %wait, i32 4
  %4 = call ptr @memset(ptr %3, i32 255, i32 56)
  %5 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %wait, align 4
  %wait.i = getelementptr inbounds %struct.completion, ptr %wait, i32 0, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.88, ptr noundef nonnull @init_completion.__key) #20
  %err = getelementptr inbounds %struct.crypto_wait, ptr %wait, i32 0, i32 1
  %6 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %err, align 4
  %cipher_tfm.i = getelementptr inbounds %struct.crypt_config, ptr %cc, i32 0, i32 17
  %7 = ptrtoint ptr %cipher_tfm.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cipher_tfm.i, align 8
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 128
  %add.i = add i32 %12, 128
  %call9.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add.i, i32 noundef 3072) #25
  %tobool.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end, !prof !414

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end:                                           ; preds = %entry
  %base.i.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %10, i32 0, i32 2
  %tfm1.i.i = getelementptr inbounds %struct.skcipher_request, ptr %call9.i.i, i32 0, i32 4, i32 3
  %13 = ptrtoint ptr %tfm1.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %base.i.i.i, ptr %tfm1.i.i, align 32
  %iv_size = getelementptr inbounds %struct.crypt_config, ptr %cc, i32 0, i32 14
  %14 = ptrtoint ptr %iv_size to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %iv_size, align 8
  %16 = call ptr @memset(ptr %buf, i32 0, i32 %15)
  %iv_sector = getelementptr inbounds %struct.dm_crypt_request, ptr %dmreq, i32 0, i32 3
  %17 = ptrtoint ptr %iv_sector to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %iv_sector, align 8
  %sector_size = getelementptr inbounds %struct.crypt_config, ptr %cc, i32 0, i32 15
  %19 = ptrtoint ptr %sector_size to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %sector_size, align 4
  %conv = zext i16 %20 to i64
  %mul = mul i64 %18, %conv
  %21 = call i64 @llvm.bswap.i64(i64 %mul)
  %22 = ptrtoint ptr %buf to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %21, ptr %buf, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @empty_zero_page to i32))
  %23 = load ptr, ptr @empty_zero_page, align 4
  %call6 = call ptr @page_address(ptr noundef %23) #20
  %24 = ptrtoint ptr %iv_size to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %iv_size, align 8
  call void @sg_init_one(ptr noundef nonnull %src, ptr noundef %call6, i32 noundef %25) #20
  %26 = ptrtoint ptr %iv_size to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %iv_size, align 8
  call void @sg_init_one(ptr noundef nonnull %dst, ptr noundef %iv, i32 noundef %27) #20
  %28 = ptrtoint ptr %iv_size to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %iv_size, align 8
  %src1.i = getelementptr inbounds %struct.skcipher_request, ptr %call9.i.i, i32 0, i32 2
  %30 = ptrtoint ptr %src1.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %src, ptr %src1.i, align 8
  %dst2.i = getelementptr inbounds %struct.skcipher_request, ptr %call9.i.i, i32 0, i32 3
  %31 = ptrtoint ptr %dst2.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %dst, ptr %dst2.i, align 4
  %32 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %29, ptr %call9.i.i, align 128
  %iv4.i = getelementptr inbounds %struct.skcipher_request, ptr %call9.i.i, i32 0, i32 1
  %33 = ptrtoint ptr %iv4.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %buf, ptr %iv4.i, align 4
  %complete.i = getelementptr inbounds %struct.skcipher_request, ptr %call9.i.i, i32 0, i32 4, i32 1
  %34 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @crypto_req_done, ptr %complete.i, align 8
  %data2.i = getelementptr inbounds %struct.skcipher_request, ptr %call9.i.i, i32 0, i32 4, i32 2
  %35 = ptrtoint ptr %data2.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %wait, ptr %data2.i, align 4
  %flags4.i = getelementptr inbounds %struct.skcipher_request, ptr %call9.i.i, i32 0, i32 4, i32 4
  %36 = ptrtoint ptr %flags4.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %flags4.i, align 4
  %call11 = call i32 @crypto_skcipher_encrypt(ptr noundef nonnull %call9.i.i) #20
  %37 = zext i32 %call11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.169)
  switch i32 %call11, label %if.end.crypto_wait_req.exit_crit_edge [
    i32 -115, label %if.end.sw.bb.i_crit_edge
    i32 -16, label %if.end.sw.bb.i_crit_edge29
  ]

if.end.sw.bb.i_crit_edge29:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb.i

if.end.sw.bb.i_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb.i

if.end.crypto_wait_req.exit_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %crypto_wait_req.exit

sw.bb.i:                                          ; preds = %if.end.sw.bb.i_crit_edge, %if.end.sw.bb.i_crit_edge29
  call void @wait_for_completion(ptr noundef nonnull %wait) #20
  %38 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %wait, align 4
  %39 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %err, align 4
  br label %crypto_wait_req.exit

crypto_wait_req.exit:                             ; preds = %sw.bb.i, %if.end.crypto_wait_req.exit_crit_edge
  %err.addr.0.i = phi i32 [ %call11, %if.end.crypto_wait_req.exit_crit_edge ], [ %40, %sw.bb.i ]
  call void @kfree_sensitive(ptr noundef nonnull %call9.i.i) #20
  br label %cleanup

cleanup:                                          ; preds = %crypto_wait_req.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.addr.0.i, %crypto_wait_req.exit ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %wait) #20
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %dst) #20
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %src) #20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %buf) #20
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_one(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_req_done(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_skcipher_encrypt(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_sensitive(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @crypt_iv_elephant_ctr(ptr noundef %cc, ptr nocapture noundef writeonly %ti, ptr nocapture noundef readnone %opts) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %iv_gen_private = getelementptr inbounds %struct.crypt_config, ptr %cc, i32 0, i32 12
  %call = tail call ptr @crypto_alloc_skcipher(ptr noundef nonnull @.str.89, i32 noundef 0, i32 noundef 65536) #20
  %0 = ptrtoint ptr %iv_gen_private to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call, ptr %iv_gen_private, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  %1 = ptrtoint ptr %call to i32
  br label %cleanup.sink.split

if.end:                                           ; preds = %entry
  %cipher_flags.i.i = getelementptr inbounds %struct.crypt_config, ptr %cc, i32 0, i32 19
  %2 = ptrtoint ptr %cipher_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %cipher_flags.i.i, align 4
  %and1.i.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.not.i, label %if.end.i, label %if.end.if.then7_crit_edge

if.end.if.then7_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then7

if.end.i:                                         ; preds = %if.end
  %cipher_tfm.i.i = getelementptr inbounds %struct.crypt_config, ptr %cc, i32 0, i32 17
  %4 = ptrtoint ptr %cipher_tfm.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cipher_tfm.i.i, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %__crt_alg.i.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %7, i32 0, i32 2, i32 3
  %8 = ptrtoint ptr %__crt_alg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %__crt_alg.i.i.i, align 4
  %cra_blocksize.i.i.i = getelementptr inbounds %struct.crypto_alg, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %cra_blocksize.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cra_blocksize.i.i.i, align 4
  %iv_size.i = getelementptr inbounds %struct.crypt_config, ptr %cc, i32 0, i32 14
  %12 = ptrtoint ptr %iv_size.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %iv_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %13)
  %cmp.not.i = icmp eq i32 %11, %13
  br i1 %cmp.not.i, label %if.end.i.cleanup_crit_edge, label %if.end.i.if.then7_crit_edge

if.end.i.if.then7_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then7

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.then7:                                         ; preds = %if.end.i.if.then7_crit_edge, %if.end.if.then7_crit_edge
  %.str.87.sink.i = phi ptr [ @.str.86, %if.end.if.then7_crit_edge ], [ @.str.87, %if.end.i.if.then7_crit_edge ]
  %error4.i = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 12
  %14 = ptrtoint ptr %error4.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %.str.87.sink.i, ptr %error4.i, align 8
  %15 = ptrtoint ptr %iv_gen_private to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %iv_gen_private, align 4
  %base.i.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %16, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef %16, ptr noundef %base.i.i.i) #20
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then7, %if.then
  %retval.0.ph = phi i32 [ -22, %if.then7 ], [ %1, %if.then ]
  %17 = ptrtoint ptr %iv_gen_private to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %iv_gen_private, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end.i.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @crypt_iv_elephant_dtr(ptr nocapture noundef %cc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %iv_gen_private = getelementptr inbounds %struct.crypt_config, ptr %cc, i32 0, i32 12
  %0 = ptrtoint ptr %iv_gen_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iv_gen_private, align 4
  %base.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %1, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef %1, ptr noundef %base.i.i) #20
  %2 = ptrtoint ptr %iv_gen_private to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %iv_gen_private, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @crypt_iv_elephant_init(ptr noundef %cc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %iv_gen_private = getelementptr inbounds %struct.crypt_config, ptr %cc, i32 0, i32 12
  %key_size = getelementptr inbounds %struct.crypt_config, ptr %cc, i32 0, i32 23
  %0 = ptrtoint ptr %key_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %key_size, align 8
  %key_extra_size = getelementptr inbounds %struct.crypt_config, ptr %cc, i32 0, i32 25
  %2 = ptrtoint ptr %key_extra_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %key_extra_size, align 8
  %sub = sub i32 %1, %3
  %4 = ptrtoint ptr %iv_gen_private to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %iv_gen_private, align 4
  %arrayidx = getelementptr %struct.crypt_config, ptr %cc, i32 0, i32 37, i32 %sub
  %call = tail call i32 @crypto_skcipher_setkey(ptr noundef %5, ptr noundef %arrayidx, i32 noundef %3) #20
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @crypt_iv_elephant_wipe(ptr nocapture noundef readonly %cc) #2 align 64 {
entry:
  %key = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %iv_gen_private = getelementptr inbounds %struct.crypt_config, ptr %cc, i32 0, i32 12
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %key) #20
  %key_extra_size = getelementptr inbounds %struct.crypt_config, ptr %cc, i32 0, i32 25
  %0 = call ptr @memset(ptr %key, i32 255, i32 32)
  %1 = ptrtoint ptr %key_extra_size to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %key_extra_size, align 8
  %3 = call ptr @memset(ptr %key, i32 0, i32 %2)
  %4 = ptrtoint ptr %iv_gen_private to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %iv_gen_private, align 4
  %call = call i32 @crypto_skcipher_setkey(ptr noundef %5, ptr noundef nonnull %key, i32 noundef %2) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %key) #20
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @crypt_iv_elephant_gen(ptr noundef %cc, ptr noundef %iv, ptr nocapture noundef readonly %dmreq) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dmreq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dmreq, align 8
  %bio_in = getelementptr inbounds %struct.convert_context, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %bio_in to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bio_in, align 8
  %bi_opf = getelementptr inbounds %struct.bio, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %bi_opf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bi_opf, align 8
  %and.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %entry.if.end3_crit_edge, label %if.then

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end3

if.then:                                          ; preds = %entry
  %call1 = tail call fastcc i32 @crypt_iv_elephant(ptr noundef %cc, ptr noundef %dmreq)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then.if.end3_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.then.if.end3_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end3

if.end3:                                          ; preds = %if.then.if.end3_crit_edge, %entry.if.end3_crit_edge
  %call4 = tail call i32 @crypt_iv_eboiv_gen(ptr noundef %cc, ptr noundef %iv, ptr noundef %dmreq)
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end3 ], [ %call1, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @crypt_iv_elephant_post(ptr noundef %cc, ptr nocapture noundef readnone %iv, ptr nocapture noundef readonly %dmreq) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dmreq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dmreq, align 8
  %bio_in = getelementptr inbounds %struct.convert_context, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %bio_in to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bio_in, align 8
  %bi_opf = getelementptr inbounds %struct.bio, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %bi_opf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bi_opf, align 8
  %and.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.then, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %return

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  %call1 = tail call fastcc i32 @crypt_iv_elephant(ptr noundef %cc, ptr noundef %dmreq)
  br label %return

return:                                           ; preds = %if.then, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call1, %if.then ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_skcipher_setkey(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @crypt_iv_elephant(ptr noundef %cc, ptr nocapture noundef readonly %dmreq) unnamed_addr #2 align 64 {
entry:
  %src = alloca %struct.scatterlist, align 4
  %dst = alloca %struct.scatterlist, align 4
  %wait = alloca %struct.crypto_wait, align 4
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %iv_gen_private = getelementptr inbounds %struct.crypt_config, ptr %cc, i32 0, i32 12
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %src) #20
  %0 = call ptr @memset(ptr %src, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %dst) #20
  %1 = call ptr @memset(ptr %dst, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %wait) #20
  %2 = getelementptr inbounds i8, ptr %wait, i32 4
  %3 = call ptr @memset(ptr %2, i32 255, i32 56)
  %4 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %wait, align 4
  %wait.i = getelementptr inbounds %struct.completion, ptr %wait, i32 0, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.88, ptr noundef nonnull @init_completion.__key) #20
  %err = getelementptr inbounds %struct.crypto_wait, ptr %wait, i32 0, i32 1
  %5 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %err, align 4
  %6 = ptrtoint ptr %iv_gen_private to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %iv_gen_private, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 128
  %add.i = add i32 %9, 128
  %call9.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add.i, i32 noundef 3072) #25
  %tobool.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not.i, label %entry.skcipher_request_alloc.exit_crit_edge, label %if.then.i, !prof !414

entry.skcipher_request_alloc.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %skcipher_request_alloc.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  %base.i.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %7, i32 0, i32 2
  %tfm1.i.i = getelementptr inbounds %struct.skcipher_request, ptr %call9.i.i, i32 0, i32 4, i32 3
  %10 = ptrtoint ptr %tfm1.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %base.i.i.i, ptr %tfm1.i.i, align 32
  br label %skcipher_request_alloc.exit

skcipher_request_alloc.exit:                      ; preds = %if.then.i, %entry.skcipher_request_alloc.exit_crit_edge
  %retval.1.i4.i = phi ptr [ %call9.i.i, %if.then.i ], [ null, %entry.skcipher_request_alloc.exit_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %11 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i151 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3328, i32 noundef 16) #26
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %12 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i160 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 3328, i32 noundef 32) #26
  %tobool.not = icmp eq ptr %retval.1.i4.i, null
  %tobool5.not = icmp eq ptr %call7.i.i151, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool5.not
  %tobool7.not = icmp eq ptr %call7.i.i160, null
  %or.cond144 = select i1 %or.cond, i1 true, i1 %tobool7.not
  br i1 %or.cond144, label %skcipher_request_alloc.exit.out_crit_edge, label %if.end

skcipher_request_alloc.exit.out_crit_edge:        ; preds = %skcipher_request_alloc.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %out

if.end:                                           ; preds = %skcipher_request_alloc.exit
  %iv_sector = getelementptr inbounds %struct.dm_crypt_request, ptr %dmreq, i32 0, i32 3
  %13 = ptrtoint ptr %iv_sector to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %iv_sector, align 8
  %sector_size = getelementptr inbounds %struct.crypt_config, ptr %cc, i32 0, i32 15
  %15 = ptrtoint ptr %sector_size to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %sector_size, align 4
  %conv = zext i16 %16 to i64
  %mul = mul i64 %14, %conv
  %17 = call i64 @llvm.bswap.i64(i64 %mul)
  %18 = ptrtoint ptr %call7.i.i151 to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %17, ptr %call7.i.i151, align 8
  call void @sg_init_one(ptr noundef nonnull %src, ptr noundef nonnull %call7.i.i151, i32 noundef 16) #20
  call void @sg_init_one(ptr noundef nonnull %dst, ptr noundef nonnull %call7.i.i160, i32 noundef 16) #20
  %src1.i = getelementptr inbounds %struct.skcipher_request, ptr %retval.1.i4.i, i32 0, i32 2
  %19 = ptrtoint ptr %src1.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %src, ptr %src1.i, align 8
  %dst2.i = getelementptr inbounds %struct.skcipher_request, ptr %retval.1.i4.i, i32 0, i32 3
  %20 = ptrtoint ptr %dst2.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %dst, ptr %dst2.i, align 4
  %21 = ptrtoint ptr %retval.1.i4.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 16, ptr %retval.1.i4.i, align 128
  %iv4.i = getelementptr inbounds %struct.skcipher_request, ptr %retval.1.i4.i, i32 0, i32 1
  %22 = ptrtoint ptr %iv4.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %iv4.i, align 4
  %complete.i = getelementptr inbounds %struct.skcipher_request, ptr %retval.1.i4.i, i32 0, i32 4, i32 1
  %23 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @crypto_req_done, ptr %complete.i, align 8
  %data2.i = getelementptr inbounds %struct.skcipher_request, ptr %retval.1.i4.i, i32 0, i32 4, i32 2
  %24 = ptrtoint ptr %data2.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %wait, ptr %data2.i, align 4
  %flags4.i = getelementptr inbounds %struct.skcipher_request, ptr %retval.1.i4.i, i32 0, i32 4, i32 4
  %25 = ptrtoint ptr %flags4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %flags4.i, align 4
  %call8 = call i32 @crypto_skcipher_encrypt(ptr noundef nonnull %retval.1.i4.i) #20
  %26 = zext i32 %call8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.170)
  switch i32 %call8, label %if.end.crypto_wait_req.exit_crit_edge [
    i32 -115, label %if.end.sw.bb.i_crit_edge
    i32 -16, label %if.end.sw.bb.i_crit_edge302
  ]

if.end.sw.bb.i_crit_edge302:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb.i

if.end.sw.bb.i_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb.i

if.end.crypto_wait_req.exit_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %crypto_wait_req.exit

sw.bb.i:                                          ; preds = %if.end.sw.bb.i_crit_edge, %if.end.sw.bb.i_crit_edge302
  call void @wait_for_completion(ptr noundef nonnull %wait) #20
  %27 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %wait, align 4
  %28 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %err, align 4
  br label %crypto_wait_req.exit

crypto_wait_req.exit:                             ; preds = %sw.bb.i, %if.end.crypto_wait_req.exit_crit_edge
  %err.addr.0.i = phi i32 [ %call8, %if.end.crypto_wait_req.exit_crit_edge ], [ %29, %sw.bb.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.addr.0.i)
  %tobool10.not = icmp eq i32 %err.addr.0.i, 0
  br i1 %tobool10.not, label %if.end12, label %crypto_wait_req.exit.out_crit_edge

crypto_wait_req.exit.out_crit_edge:               ; preds = %crypto_wait_req.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %out

if.end12:                                         ; preds = %crypto_wait_req.exit
  %arrayidx = getelementptr i8, ptr %call7.i.i151, i32 15
  %30 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 -128, ptr %arrayidx, align 1
  %arrayidx13 = getelementptr i8, ptr %call7.i.i160, i32 16
  call void @sg_init_one(ptr noundef nonnull %dst, ptr noundef %arrayidx13, i32 noundef 16) #20
  %call14 = call i32 @crypto_skcipher_encrypt(ptr noundef nonnull %retval.1.i4.i) #20
  %31 = zext i32 %call14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.171)
  switch i32 %call14, label %if.end12.crypto_wait_req.exit166_crit_edge [
    i32 -115, label %if.end12.sw.bb.i164_crit_edge
    i32 -16, label %if.end12.sw.bb.i164_crit_edge303
  ]

if.end12.sw.bb.i164_crit_edge303:                 ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb.i164

if.end12.sw.bb.i164_crit_edge:                    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb.i164

if.end12.crypto_wait_req.exit166_crit_edge:       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #22
  br label %crypto_wait_req.exit166

sw.bb.i164:                                       ; preds = %if.end12.sw.bb.i164_crit_edge, %if.end12.sw.bb.i164_crit_edge303
  call void @wait_for_completion(ptr noundef nonnull %wait) #20
  %32 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %wait, align 4
  %33 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %err, align 4
  br label %crypto_wait_req.exit166

crypto_wait_req.exit166:                          ; preds = %sw.bb.i164, %if.end12.crypto_wait_req.exit166_crit_edge
  %err.addr.0.i165 = phi i32 [ %call14, %if.end12.crypto_wait_req.exit166_crit_edge ], [ %34, %sw.bb.i164 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.addr.0.i165)
  %tobool16.not = icmp eq i32 %err.addr.0.i165, 0
  br i1 %tobool16.not, label %if.end18, label %crypto_wait_req.exit166.out_crit_edge

crypto_wait_req.exit166.out_crit_edge:            ; preds = %crypto_wait_req.exit166
  call void @__sanitizer_cov_trace_pc() #22
  br label %out

if.end18:                                         ; preds = %crypto_wait_req.exit166
  %sg_out = getelementptr inbounds %struct.dm_crypt_request, ptr %dmreq, i32 0, i32 2
  %cipher_flags.i.i = getelementptr inbounds %struct.crypt_config, ptr %cc, i32 0, i32 19
  %35 = ptrtoint ptr %cipher_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %cipher_flags.i.i, align 4
  %and1.i.i.i = and i32 %36, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.not.i, label %if.end18.crypt_get_sg_data.exit_crit_edge, label %if.then.i167, !prof !413

if.end18.crypt_get_sg_data.exit_crit_edge:        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #22
  br label %crypt_get_sg_data.exit

if.then.i167:                                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #22
  %arrayidx.i = getelementptr %struct.dm_crypt_request, ptr %dmreq, i32 0, i32 2, i32 2
  br label %crypt_get_sg_data.exit

crypt_get_sg_data.exit:                           ; preds = %if.then.i167, %if.end18.crypt_get_sg_data.exit_crit_edge
  %retval.0.i = phi ptr [ %arrayidx.i, %if.then.i167 ], [ %sg_out, %if.end18.crypt_get_sg_data.exit_crit_edge ]
  %37 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %retval.0.i, align 4
  %and.i.i = and i32 %38, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i168 = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i168, label %sg_page.exit, label %do.body2.i, !prof !413

do.body2.i:                                       ; preds = %crypt_get_sg_data.exit
  call void @__sanitizer_cov_trace_pc() #22
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #20, !srcloc !420
  unreachable

sg_page.exit:                                     ; preds = %crypt_get_sg_data.exit
  %and.i = and i32 %38, -4
  %39 = inttoptr i32 %and.i to ptr
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %40 = load i32, ptr @pgprot_kernel, align 4
  %or.i = or i32 %40, 512
  %41 = call i32 @llvm.read_register.i32(metadata !400) #20
  %and.i.i.i.i.i = and i32 %41, -16384
  %42 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %44, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #20, !srcloc !421
  %45 = call i32 @llvm.read_register.i32(metadata !400) #20
  %and.i.i.i1.i.i = and i32 %45, -16384
  %46 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %46, i32 0, i32 2
  %47 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %48, i32 0, i32 213
  %49 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %inc.i.i.i.i = add i32 %50, 1
  store i32 %inc.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  call void asm sideeffect "", "~{memory}"() #20, !srcloc !422
  %call.i.i = call ptr @__kmap_local_page_prot(ptr noundef %39, i32 noundef %or.i) #20
  %offset = getelementptr inbounds %struct.scatterlist, ptr %retval.0.i, i32 0, i32 1
  %51 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %offset, align 4
  %add.ptr = getelementptr i8, ptr %call.i.i, i32 %52
  %53 = ptrtoint ptr %dmreq to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dmreq, align 8
  %bio_in = getelementptr inbounds %struct.convert_context, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %bio_in to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %bio_in, align 8
  %bi_opf = getelementptr inbounds %struct.bio, ptr %56, i32 0, i32 2
  %57 = ptrtoint ptr %bi_opf to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %bi_opf, align 8
  %and.i169 = and i32 %58, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i169)
  %tobool.i.not = icmp eq i32 %and.i169, 0
  br i1 %tobool.i.not, label %sg_page.exit.if.end37_crit_edge, label %if.then25

sg_page.exit.if.end37_crit_edge:                  ; preds = %sg_page.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end37

if.then25:                                        ; preds = %sg_page.exit
  %sg_in = getelementptr inbounds %struct.dm_crypt_request, ptr %dmreq, i32 0, i32 1
  %59 = ptrtoint ptr %cipher_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile i32, ptr %cipher_flags.i.i, align 4
  %and1.i.i.i171 = and i32 %60, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i171)
  %tobool.i.not.i172 = icmp eq i32 %and1.i.i.i171, 0
  br i1 %tobool.i.not.i172, label %if.then25.crypt_get_sg_data.exit176_crit_edge, label %if.then.i174, !prof !413

if.then25.crypt_get_sg_data.exit176_crit_edge:    ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #22
  br label %crypt_get_sg_data.exit176

if.then.i174:                                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #22
  %arrayidx.i173 = getelementptr %struct.dm_crypt_request, ptr %dmreq, i32 0, i32 1, i32 2
  br label %crypt_get_sg_data.exit176

crypt_get_sg_data.exit176:                        ; preds = %if.then.i174, %if.then25.crypt_get_sg_data.exit176_crit_edge
  %retval.0.i175 = phi ptr [ %arrayidx.i173, %if.then.i174 ], [ %sg_in, %if.then25.crypt_get_sg_data.exit176_crit_edge ]
  %61 = ptrtoint ptr %retval.0.i175 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %retval.0.i175, align 4
  %and.i.i177 = and i32 %62, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i177)
  %tobool.i.not.i178 = icmp eq i32 %and.i.i177, 0
  br i1 %tobool.i.not.i178, label %sg_page.exit181, label %do.body2.i179, !prof !413

do.body2.i179:                                    ; preds = %crypt_get_sg_data.exit176
  call void @__sanitizer_cov_trace_pc() #22
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #20, !srcloc !420
  unreachable

sg_page.exit181:                                  ; preds = %crypt_get_sg_data.exit176
  call void @__sanitizer_cov_trace_pc() #22
  %and.i180 = and i32 %62, -4
  %63 = inttoptr i32 %and.i180 to ptr
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %64 = load i32, ptr @pgprot_kernel, align 4
  %or.i182 = or i32 %64, 512
  %65 = call i32 @llvm.read_register.i32(metadata !400) #20
  %and.i.i.i.i.i183 = and i32 %65, -16384
  %66 = inttoptr i32 %and.i.i.i.i.i183 to ptr
  %preempt_count.i.i.i.i184 = getelementptr inbounds %struct.thread_info, ptr %66, i32 0, i32 1
  %67 = ptrtoint ptr %preempt_count.i.i.i.i184 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load volatile i32, ptr %preempt_count.i.i.i.i184, align 4
  %add.i.i.i185 = add i32 %68, 1
  store volatile i32 %add.i.i.i185, ptr %preempt_count.i.i.i.i184, align 4
  call void asm sideeffect "", "~{memory}"() #20, !srcloc !421
  %69 = call i32 @llvm.read_register.i32(metadata !400) #20
  %and.i.i.i1.i.i186 = and i32 %69, -16384
  %70 = inttoptr i32 %and.i.i.i1.i.i186 to ptr
  %task.i.i.i.i187 = getelementptr inbounds %struct.thread_info, ptr %70, i32 0, i32 2
  %71 = ptrtoint ptr %task.i.i.i.i187 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %task.i.i.i.i187, align 8
  %pagefault_disabled.i.i.i.i188 = getelementptr inbounds %struct.task_struct, ptr %72, i32 0, i32 213
  %73 = ptrtoint ptr %pagefault_disabled.i.i.i.i188 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %pagefault_disabled.i.i.i.i188, align 8
  %inc.i.i.i.i189 = add i32 %74, 1
  store i32 %inc.i.i.i.i189, ptr %pagefault_disabled.i.i.i.i188, align 8
  call void asm sideeffect "", "~{memory}"() #20, !srcloc !422
  %call.i.i190 = call ptr @__kmap_local_page_prot(ptr noundef %63, i32 noundef %or.i182) #20
  %offset30 = getelementptr inbounds %struct.scatterlist, ptr %retval.0.i175, i32 0, i32 1
  %75 = ptrtoint ptr %offset30 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %offset30, align 4
  %add.ptr31 = getelementptr i8, ptr %call.i.i190, i32 %76
  %77 = ptrtoint ptr %sector_size to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %sector_size, align 4
  %conv33 = zext i16 %78 to i32
  %79 = call ptr @memcpy(ptr %add.ptr, ptr %add.ptr31, i32 %conv33)
  call void @kunmap_local_indexed(ptr noundef %call.i.i190) #20
  call void asm sideeffect "", "~{memory}"() #20, !srcloc !423
  %80 = call i32 @llvm.read_register.i32(metadata !400) #20
  %and.i.i.i1.i = and i32 %80, -16384
  %81 = inttoptr i32 %and.i.i.i1.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %81, i32 0, i32 2
  %82 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %task.i.i.i, align 8
  %pagefault_disabled.i.i.i = getelementptr inbounds %struct.task_struct, ptr %83, i32 0, i32 213
  %84 = ptrtoint ptr %pagefault_disabled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %pagefault_disabled.i.i.i, align 8
  %dec.i.i.i = add i32 %85, -1
  store i32 %dec.i.i.i, ptr %pagefault_disabled.i.i.i, align 8
  call void asm sideeffect "", "~{memory}"() #20, !srcloc !424
  %86 = call i32 @llvm.read_register.i32(metadata !400) #20
  %and.i.i.i.i = and i32 %86, -16384
  %87 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %87, i32 0, i32 1
  %88 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %89, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  br label %if.end37

if.end37:                                         ; preds = %sg_page.exit181, %sg_page.exit.if.end37_crit_edge
  %90 = ptrtoint ptr %dmreq to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %dmreq, align 8
  %bio_in39 = getelementptr inbounds %struct.convert_context, ptr %91, i32 0, i32 1
  %92 = ptrtoint ptr %bio_in39 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %bio_in39, align 8
  %bi_opf40 = getelementptr inbounds %struct.bio, ptr %93, i32 0, i32 2
  %94 = ptrtoint ptr %bi_opf40 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %bi_opf40, align 8
  %and.i191 = and i32 %95, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i191)
  %tobool.i192.not = icmp eq i32 %and.i191, 0
  br i1 %tobool.i192.not, label %if.then47, label %if.end37.if.end59_crit_edge

if.end37.if.end59_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end59

if.then47:                                        ; preds = %if.end37
  %96 = ptrtoint ptr %sector_size to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %sector_size, align 4
  %98 = lshr i16 %97, 2
  %div = zext i16 %98 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %97)
  %cmp6.not.i = icmp ult i16 %97, 4
  br i1 %cmp6.not.i, label %if.then47.diffuser_disk_to_cpu.exit_crit_edge, label %if.then47.for.body.i_crit_edge

if.then47.for.body.i_crit_edge:                   ; preds = %if.then47
  br label %for.body.i

if.then47.diffuser_disk_to_cpu.exit_crit_edge:    ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #22
  br label %diffuser_disk_to_cpu.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then47.for.body.i_crit_edge
  %i.07.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.then47.for.body.i_crit_edge ]
  %arrayidx.i193 = getelementptr i32, ptr %add.ptr, i32 %i.07.i
  %99 = ptrtoint ptr %arrayidx.i193 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %arrayidx.i193, align 4
  %101 = call i32 @llvm.bswap.i32(i32 %100) #20
  %102 = ptrtoint ptr %arrayidx.i193 to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %101, ptr %arrayidx.i193, align 4
  %inc.i = add nuw nsw i32 %i.07.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %div
  br i1 %exitcond.not.i, label %for.body.i.diffuser_disk_to_cpu.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body.i

for.body.i.diffuser_disk_to_cpu.exit_crit_edge:   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %diffuser_disk_to_cpu.exit

diffuser_disk_to_cpu.exit:                        ; preds = %for.body.i.diffuser_disk_to_cpu.exit_crit_edge, %if.then47.diffuser_disk_to_cpu.exit_crit_edge
  %103 = ptrtoint ptr %sector_size to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %sector_size, align 4
  %105 = lshr i16 %104, 2
  %div52 = zext i16 %105 to i32
  %sub.i = add nsw i32 %div52, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp188.not.i = icmp eq i32 %sub.i, 0
  br label %while.cond.preheader.i

while.cond.preheader.i:                           ; preds = %for.inc.i.while.cond.preheader.i_crit_edge, %diffuser_disk_to_cpu.exit
  %i.092.i = phi i32 [ 0, %diffuser_disk_to_cpu.exit ], [ %inc41.i, %for.inc.i.while.cond.preheader.i_crit_edge ]
  br i1 %cmp188.not.i, label %while.cond.preheader.i.for.inc.i_crit_edge, label %while.cond.preheader.i.while.body.i_crit_edge

while.cond.preheader.i.while.body.i_crit_edge:    ; preds = %while.cond.preheader.i
  br label %while.body.i

while.cond.preheader.i.for.inc.i_crit_edge:       ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.cond.preheader.i.while.body.i_crit_edge
  %i3.091.i = phi i32 [ %inc40.i, %while.body.i.while.body.i_crit_edge ], [ 5, %while.cond.preheader.i.while.body.i_crit_edge ]
  %i2.090.i = phi i32 [ %inc39.i, %while.body.i.while.body.i_crit_edge ], [ 2, %while.cond.preheader.i.while.body.i_crit_edge ]
  %i1.089.i = phi i32 [ %inc38.i, %while.body.i.while.body.i_crit_edge ], [ 0, %while.cond.preheader.i.while.body.i_crit_edge ]
  %arrayidx.i194 = getelementptr i32, ptr %add.ptr, i32 %i2.090.i
  %106 = ptrtoint ptr %arrayidx.i194 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %arrayidx.i194, align 4
  %arrayidx2.i = getelementptr i32, ptr %add.ptr, i32 %i3.091.i
  %108 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %arrayidx2.i, align 4
  %xor.i = xor i32 %109, %107
  %arrayidx3.i = getelementptr i32, ptr %add.ptr, i32 %i1.089.i
  %110 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %arrayidx3.i, align 4
  %add.i195 = add i32 %111, %xor.i
  store i32 %add.i195, ptr %arrayidx3.i, align 4
  %inc.i196 = or i32 %i1.089.i, 1
  %inc4.i = add i32 %i2.090.i, 1
  %inc5.i = add i32 %i3.091.i, 1
  %arrayidx6.i = getelementptr i32, ptr %add.ptr, i32 %inc4.i
  %112 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %arrayidx6.i, align 4
  %arrayidx7.i = getelementptr i32, ptr %add.ptr, i32 %inc5.i
  %114 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %arrayidx7.i, align 4
  %or.i197 = call i32 @llvm.fshl.i32(i32 %115, i32 %115, i32 10) #20
  %xor9.i = xor i32 %or.i197, %113
  %arrayidx10.i = getelementptr i32, ptr %add.ptr, i32 %inc.i196
  %116 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %arrayidx10.i, align 4
  %add11.i = add i32 %xor9.i, %117
  store i32 %add11.i, ptr %arrayidx10.i, align 4
  %inc12.i = or i32 %i1.089.i, 2
  %inc13.i = add i32 %i2.090.i, 2
  %inc14.i = add i32 %i3.091.i, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %inc13.i, i32 %div52)
  %cmp15.not.i = icmp ult i32 %inc13.i, %div52
  %sub16.i = select i1 %cmp15.not.i, i32 0, i32 %div52
  %spec.select.i = sub i32 %inc13.i, %sub16.i
  %arrayidx17.i = getelementptr i32, ptr %add.ptr, i32 %spec.select.i
  %118 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %arrayidx17.i, align 4
  %arrayidx18.i = getelementptr i32, ptr %add.ptr, i32 %inc14.i
  %120 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %arrayidx18.i, align 4
  %xor19.i = xor i32 %121, %119
  %arrayidx20.i = getelementptr i32, ptr %add.ptr, i32 %inc12.i
  %122 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %arrayidx20.i, align 4
  %add21.i = add i32 %123, %xor19.i
  store i32 %add21.i, ptr %arrayidx20.i, align 4
  %inc22.i = or i32 %i1.089.i, 3
  %inc23.i = add i32 %spec.select.i, 1
  %inc24.i = add i32 %i3.091.i, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %inc24.i, i32 %div52)
  %cmp25.not.i = icmp ult i32 %inc24.i, %div52
  %sub27.i = select i1 %cmp25.not.i, i32 0, i32 %div52
  %i3.1.i = sub i32 %inc24.i, %sub27.i
  %arrayidx29.i = getelementptr i32, ptr %add.ptr, i32 %inc23.i
  %124 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %arrayidx29.i, align 4
  %arrayidx30.i = getelementptr i32, ptr %add.ptr, i32 %i3.1.i
  %126 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %arrayidx30.i, align 4
  %or34.i = call i32 @llvm.fshl.i32(i32 %127, i32 %127, i32 25) #20
  %xor35.i = xor i32 %or34.i, %125
  %arrayidx36.i = getelementptr i32, ptr %add.ptr, i32 %inc22.i
  %128 = ptrtoint ptr %arrayidx36.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %arrayidx36.i, align 4
  %add37.i = add i32 %xor35.i, %129
  store i32 %add37.i, ptr %arrayidx36.i, align 4
  %inc38.i = add i32 %i1.089.i, 4
  %inc39.i = add i32 %spec.select.i, 2
  %inc40.i = add i32 %i3.1.i, 1
  %cmp1.i = icmp ult i32 %inc38.i, %sub.i
  br i1 %cmp1.i, label %while.body.i.while.body.i_crit_edge, label %while.body.i.for.inc.i_crit_edge

while.body.i.for.inc.i_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc.i

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %while.body.i

for.inc.i:                                        ; preds = %while.body.i.for.inc.i_crit_edge, %while.cond.preheader.i.for.inc.i_crit_edge
  %inc41.i = add nuw nsw i32 %i.092.i, 1
  %exitcond.not.i198 = icmp eq i32 %inc41.i, 3
  br i1 %exitcond.not.i198, label %diffuser_b_decrypt.exit, label %for.inc.i.while.cond.preheader.i_crit_edge

for.inc.i.while.cond.preheader.i_crit_edge:       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %while.cond.preheader.i

diffuser_b_decrypt.exit:                          ; preds = %for.inc.i
  %130 = ptrtoint ptr %sector_size to i32
  call void @__asan_load2_noabort(i32 %130)
  %131 = load i16, ptr %sector_size, align 4
  %132 = lshr i16 %131, 2
  %div55 = zext i16 %132 to i32
  %sub.i199 = add nsw i32 %div55, -2
  %sub1.i = add nsw i32 %div55, -5
  %sub2.i = add nsw i32 %div55, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub2.i)
  %cmp392.not.i = icmp eq i32 %sub2.i, 0
  br label %for.body.i200

for.body.i200:                                    ; preds = %for.inc.i214.for.body.i200_crit_edge, %diffuser_b_decrypt.exit
  %i.096.i = phi i32 [ 0, %diffuser_b_decrypt.exit ], [ %inc43.i, %for.inc.i214.for.body.i200_crit_edge ]
  br i1 %cmp392.not.i, label %for.body.i200.for.inc.i214_crit_edge, label %for.body.i200.while.body.i212_crit_edge

for.body.i200.while.body.i212_crit_edge:          ; preds = %for.body.i200
  br label %while.body.i212

for.body.i200.for.inc.i214_crit_edge:             ; preds = %for.body.i200
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc.i214

while.body.i212:                                  ; preds = %while.body.i212.while.body.i212_crit_edge, %for.body.i200.while.body.i212_crit_edge
  %i3.095.i = phi i32 [ %inc42.i, %while.body.i212.while.body.i212_crit_edge ], [ %sub1.i, %for.body.i200.while.body.i212_crit_edge ]
  %i2.094.i = phi i32 [ %inc41.i211, %while.body.i212.while.body.i212_crit_edge ], [ %sub.i199, %for.body.i200.while.body.i212_crit_edge ]
  %i1.093.i = phi i32 [ %inc40.i210, %while.body.i212.while.body.i212_crit_edge ], [ 0, %for.body.i200.while.body.i212_crit_edge ]
  %arrayidx.i201 = getelementptr i32, ptr %add.ptr, i32 %i2.094.i
  %133 = ptrtoint ptr %arrayidx.i201 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %arrayidx.i201, align 4
  %arrayidx4.i = getelementptr i32, ptr %add.ptr, i32 %i3.095.i
  %135 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %arrayidx4.i, align 4
  %or.i202 = call i32 @llvm.fshl.i32(i32 %136, i32 %136, i32 9) #20
  %xor.i203 = xor i32 %or.i202, %134
  %arrayidx6.i204 = getelementptr i32, ptr %add.ptr, i32 %i1.093.i
  %137 = ptrtoint ptr %arrayidx6.i204 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %arrayidx6.i204, align 4
  %add.i205 = add i32 %xor.i203, %138
  store i32 %add.i205, ptr %arrayidx6.i204, align 4
  %inc.i206 = or i32 %i1.093.i, 1
  %inc7.i = add i32 %i2.094.i, 1
  %inc8.i = add i32 %i3.095.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc8.i, i32 %div55)
  %cmp9.not.i = icmp ult i32 %inc8.i, %div55
  %sub10.i = select i1 %cmp9.not.i, i32 0, i32 %div55
  %spec.select.i207 = sub i32 %inc8.i, %sub10.i
  %arrayidx11.i = getelementptr i32, ptr %add.ptr, i32 %inc7.i
  %139 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %arrayidx11.i, align 4
  %arrayidx12.i = getelementptr i32, ptr %add.ptr, i32 %spec.select.i207
  %141 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %arrayidx12.i, align 4
  %xor13.i = xor i32 %142, %140
  %arrayidx14.i = getelementptr i32, ptr %add.ptr, i32 %inc.i206
  %143 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %arrayidx14.i, align 4
  %add15.i = add i32 %144, %xor13.i
  store i32 %add15.i, ptr %arrayidx14.i, align 4
  %inc16.i = or i32 %i1.093.i, 2
  %inc17.i = add i32 %i2.094.i, 2
  %inc18.i = add i32 %spec.select.i207, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc17.i, i32 %div55)
  %cmp19.not.i = icmp ult i32 %inc17.i, %div55
  %sub21.i = select i1 %cmp19.not.i, i32 0, i32 %div55
  %i2.1.i = sub i32 %inc17.i, %sub21.i
  %arrayidx23.i = getelementptr i32, ptr %add.ptr, i32 %i2.1.i
  %145 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %arrayidx23.i, align 4
  %arrayidx24.i = getelementptr i32, ptr %add.ptr, i32 %inc18.i
  %147 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %arrayidx24.i, align 4
  %or28.i = call i32 @llvm.fshl.i32(i32 %148, i32 %148, i32 13) #20
  %xor29.i = xor i32 %or28.i, %146
  %arrayidx30.i208 = getelementptr i32, ptr %add.ptr, i32 %inc16.i
  %149 = ptrtoint ptr %arrayidx30.i208 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %arrayidx30.i208, align 4
  %add31.i = add i32 %xor29.i, %150
  store i32 %add31.i, ptr %arrayidx30.i208, align 4
  %inc32.i = or i32 %i1.093.i, 3
  %inc33.i = add i32 %i2.1.i, 1
  %inc34.i = add i32 %spec.select.i207, 2
  %arrayidx35.i = getelementptr i32, ptr %add.ptr, i32 %inc33.i
  %151 = ptrtoint ptr %arrayidx35.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %arrayidx35.i, align 4
  %arrayidx36.i209 = getelementptr i32, ptr %add.ptr, i32 %inc34.i
  %153 = ptrtoint ptr %arrayidx36.i209 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %arrayidx36.i209, align 4
  %xor37.i = xor i32 %154, %152
  %arrayidx38.i = getelementptr i32, ptr %add.ptr, i32 %inc32.i
  %155 = ptrtoint ptr %arrayidx38.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %arrayidx38.i, align 4
  %add39.i = add i32 %156, %xor37.i
  store i32 %add39.i, ptr %arrayidx38.i, align 4
  %inc40.i210 = add i32 %i1.093.i, 4
  %inc41.i211 = add i32 %i2.1.i, 2
  %inc42.i = add i32 %spec.select.i207, 3
  %cmp3.i = icmp ult i32 %inc40.i210, %sub2.i
  br i1 %cmp3.i, label %while.body.i212.while.body.i212_crit_edge, label %while.body.i212.for.inc.i214_crit_edge

while.body.i212.for.inc.i214_crit_edge:           ; preds = %while.body.i212
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc.i214

while.body.i212.while.body.i212_crit_edge:        ; preds = %while.body.i212
  call void @__sanitizer_cov_trace_pc() #22
  br label %while.body.i212

for.inc.i214:                                     ; preds = %while.body.i212.for.inc.i214_crit_edge, %for.body.i200.for.inc.i214_crit_edge
  %inc43.i = add nuw nsw i32 %i.096.i, 1
  %exitcond.not.i213 = icmp eq i32 %inc43.i, 5
  br i1 %exitcond.not.i213, label %diffuser_a_decrypt.exit, label %for.inc.i214.for.body.i200_crit_edge

for.inc.i214.for.body.i200_crit_edge:             ; preds = %for.inc.i214
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body.i200

diffuser_a_decrypt.exit:                          ; preds = %for.inc.i214
  %157 = ptrtoint ptr %sector_size to i32
  call void @__asan_load2_noabort(i32 %157)
  %158 = load i16, ptr %sector_size, align 4
  %159 = lshr i16 %158, 2
  %div58 = zext i16 %159 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %158)
  %cmp6.not.i215 = icmp ult i16 %158, 4
  br i1 %cmp6.not.i215, label %diffuser_a_decrypt.exit.for.end_crit_edge, label %diffuser_a_decrypt.exit.for.body.i220_crit_edge

diffuser_a_decrypt.exit.for.body.i220_crit_edge:  ; preds = %diffuser_a_decrypt.exit
  br label %for.body.i220

diffuser_a_decrypt.exit.for.end_crit_edge:        ; preds = %diffuser_a_decrypt.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end

for.body.i220:                                    ; preds = %for.body.i220.for.body.i220_crit_edge, %diffuser_a_decrypt.exit.for.body.i220_crit_edge
  %i.07.i216 = phi i32 [ %inc.i218, %for.body.i220.for.body.i220_crit_edge ], [ 0, %diffuser_a_decrypt.exit.for.body.i220_crit_edge ]
  %arrayidx.i217 = getelementptr i32, ptr %add.ptr, i32 %i.07.i216
  %160 = ptrtoint ptr %arrayidx.i217 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %arrayidx.i217, align 4
  %162 = call i32 @llvm.bswap.i32(i32 %161) #20
  %163 = ptrtoint ptr %arrayidx.i217 to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 %162, ptr %arrayidx.i217, align 4
  %inc.i218 = add nuw nsw i32 %i.07.i216, 1
  %exitcond.not.i219 = icmp eq i32 %inc.i218, %div58
  br i1 %exitcond.not.i219, label %for.body.i220.if.end59_crit_edge, label %for.body.i220.for.body.i220_crit_edge

for.body.i220.for.body.i220_crit_edge:            ; preds = %for.body.i220
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body.i220

for.body.i220.if.end59_crit_edge:                 ; preds = %for.body.i220
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end59

if.end59:                                         ; preds = %for.body.i220.if.end59_crit_edge, %if.end37.if.end59_crit_edge
  %164 = ptrtoint ptr %sector_size to i32
  call void @__asan_load2_noabort(i32 %164)
  %.pr = load i16, ptr %sector_size, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 32, i16 %.pr)
  %cmp63294.not = icmp ult i16 %.pr, 32
  br i1 %cmp63294.not, label %if.end59.for.end_crit_edge, label %for.body.preheader

if.end59.for.end_crit_edge:                       ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end

for.body.preheader:                               ; preds = %if.end59
  %incdec.ptr.i = getelementptr i32, ptr %call7.i.i160, i32 1
  %incdec.ptr.i.1 = getelementptr i32, ptr %call7.i.i160, i32 2
  %incdec.ptr.i.2 = getelementptr i32, ptr %call7.i.i160, i32 3
  %incdec.ptr.i.3 = getelementptr i32, ptr %call7.i.i160, i32 4
  %incdec.ptr.i.4 = getelementptr i32, ptr %call7.i.i160, i32 5
  %incdec.ptr.i.5 = getelementptr i32, ptr %call7.i.i160, i32 6
  %incdec.ptr.i.6 = getelementptr i32, ptr %call7.i.i160, i32 7
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.0295 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %mul65 = shl i32 %i.0295, 5
  %add.ptr66 = getelementptr i8, ptr %add.ptr, i32 %mul65
  %165 = ptrtoint ptr %call7.i.i160 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %call7.i.i160, align 8
  %incdec.ptr2.i = getelementptr i32, ptr %add.ptr66, i32 1
  %167 = ptrtoint ptr %add.ptr66 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %add.ptr66, align 4
  %xor.i222 = xor i32 %168, %166
  store i32 %xor.i222, ptr %add.ptr66, align 4
  %169 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %incdec.ptr.i, align 4
  %incdec.ptr2.i.1 = getelementptr i32, ptr %incdec.ptr2.i, i32 1
  %171 = ptrtoint ptr %incdec.ptr2.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %incdec.ptr2.i, align 4
  %xor.i222.1 = xor i32 %172, %170
  store i32 %xor.i222.1, ptr %incdec.ptr2.i, align 4
  %173 = ptrtoint ptr %incdec.ptr.i.1 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %incdec.ptr.i.1, align 8
  %incdec.ptr2.i.2 = getelementptr i32, ptr %incdec.ptr2.i.1, i32 1
  %175 = ptrtoint ptr %incdec.ptr2.i.1 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %incdec.ptr2.i.1, align 4
  %xor.i222.2 = xor i32 %176, %174
  store i32 %xor.i222.2, ptr %incdec.ptr2.i.1, align 4
  %177 = ptrtoint ptr %incdec.ptr.i.2 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %incdec.ptr.i.2, align 4
  %incdec.ptr2.i.3 = getelementptr i32, ptr %incdec.ptr2.i.2, i32 1
  %179 = ptrtoint ptr %incdec.ptr2.i.2 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %incdec.ptr2.i.2, align 4
  %xor.i222.3 = xor i32 %180, %178
  store i32 %xor.i222.3, ptr %incdec.ptr2.i.2, align 4
  %181 = ptrtoint ptr %incdec.ptr.i.3 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %incdec.ptr.i.3, align 8
  %incdec.ptr2.i.4 = getelementptr i32, ptr %incdec.ptr2.i.3, i32 1
  %183 = ptrtoint ptr %incdec.ptr2.i.3 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %incdec.ptr2.i.3, align 4
  %xor.i222.4 = xor i32 %184, %182
  store i32 %xor.i222.4, ptr %incdec.ptr2.i.3, align 4
  %185 = ptrtoint ptr %incdec.ptr.i.4 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %incdec.ptr.i.4, align 4
  %incdec.ptr2.i.5 = getelementptr i32, ptr %incdec.ptr2.i.4, i32 1
  %187 = ptrtoint ptr %incdec.ptr2.i.4 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %incdec.ptr2.i.4, align 4
  %xor.i222.5 = xor i32 %188, %186
  store i32 %xor.i222.5, ptr %incdec.ptr2.i.4, align 4
  %189 = ptrtoint ptr %incdec.ptr.i.5 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %incdec.ptr.i.5, align 8
  %incdec.ptr2.i.6 = getelementptr i32, ptr %incdec.ptr2.i.5, i32 1
  %191 = ptrtoint ptr %incdec.ptr2.i.5 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %incdec.ptr2.i.5, align 4
  %xor.i222.6 = xor i32 %192, %190
  store i32 %xor.i222.6, ptr %incdec.ptr2.i.5, align 4
  %193 = ptrtoint ptr %incdec.ptr.i.6 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %incdec.ptr.i.6, align 4
  %195 = ptrtoint ptr %incdec.ptr2.i.6 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %incdec.ptr2.i.6, align 4
  %xor.i222.7 = xor i32 %196, %194
  store i32 %xor.i222.7, ptr %incdec.ptr2.i.6, align 4
  %inc = add nuw nsw i32 %i.0295, 1
  %197 = ptrtoint ptr %sector_size to i32
  call void @__asan_load2_noabort(i32 %197)
  %198 = load i16, ptr %sector_size, align 4
  %199 = lshr i16 %198, 5
  %div62 = zext i16 %199 to i32
  %cmp63 = icmp ult i32 %inc, %div62
  br i1 %cmp63, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end59.for.end_crit_edge, %diffuser_a_decrypt.exit.for.end_crit_edge
  %.lcssa = phi i16 [ %.pr, %if.end59.for.end_crit_edge ], [ %158, %diffuser_a_decrypt.exit.for.end_crit_edge ], [ %198, %for.body.for.end_crit_edge ]
  %200 = ptrtoint ptr %dmreq to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %dmreq, align 8
  %bio_in68 = getelementptr inbounds %struct.convert_context, ptr %201, i32 0, i32 1
  %202 = ptrtoint ptr %bio_in68 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %bio_in68, align 8
  %bi_opf69 = getelementptr inbounds %struct.bio, ptr %203, i32 0, i32 2
  %204 = ptrtoint ptr %bi_opf69 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %bi_opf69, align 8
  %and.i225 = and i32 %205, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i225)
  %tobool.i226.not = icmp eq i32 %and.i225, 0
  br i1 %tobool.i226.not, label %for.end.do.end93_crit_edge, label %if.then76

for.end.do.end93_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end93

if.then76:                                        ; preds = %for.end
  %206 = lshr i16 %.lcssa, 2
  %div79 = zext i16 %206 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %.lcssa)
  %cmp6.not.i227 = icmp ult i16 %.lcssa, 4
  br i1 %cmp6.not.i227, label %if.then76.diffuser_disk_to_cpu.exit233_crit_edge, label %if.then76.for.body.i232_crit_edge

if.then76.for.body.i232_crit_edge:                ; preds = %if.then76
  br label %for.body.i232

if.then76.diffuser_disk_to_cpu.exit233_crit_edge: ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #22
  br label %diffuser_disk_to_cpu.exit233

for.body.i232:                                    ; preds = %for.body.i232.for.body.i232_crit_edge, %if.then76.for.body.i232_crit_edge
  %i.07.i228 = phi i32 [ %inc.i230, %for.body.i232.for.body.i232_crit_edge ], [ 0, %if.then76.for.body.i232_crit_edge ]
  %arrayidx.i229 = getelementptr i32, ptr %add.ptr, i32 %i.07.i228
  %207 = ptrtoint ptr %arrayidx.i229 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %arrayidx.i229, align 4
  %209 = call i32 @llvm.bswap.i32(i32 %208) #20
  %210 = ptrtoint ptr %arrayidx.i229 to i32
  call void @__asan_store4_noabort(i32 %210)
  store i32 %209, ptr %arrayidx.i229, align 4
  %inc.i230 = add nuw nsw i32 %i.07.i228, 1
  %exitcond.not.i231 = icmp eq i32 %inc.i230, %div79
  br i1 %exitcond.not.i231, label %for.body.i232.diffuser_disk_to_cpu.exit233_crit_edge, label %for.body.i232.for.body.i232_crit_edge

for.body.i232.for.body.i232_crit_edge:            ; preds = %for.body.i232
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body.i232

for.body.i232.diffuser_disk_to_cpu.exit233_crit_edge: ; preds = %for.body.i232
  call void @__sanitizer_cov_trace_pc() #22
  br label %diffuser_disk_to_cpu.exit233

diffuser_disk_to_cpu.exit233:                     ; preds = %for.body.i232.diffuser_disk_to_cpu.exit233_crit_edge, %if.then76.diffuser_disk_to_cpu.exit233_crit_edge
  %211 = ptrtoint ptr %sector_size to i32
  call void @__asan_load2_noabort(i32 %211)
  %212 = load i16, ptr %sector_size, align 4
  %213 = lshr i16 %212, 2
  %div82 = zext i16 %213 to i32
  %sub2.i234 = add nsw i32 %div82, -3
  %sub4.i = add nsw i32 %div82, -6
  %i1.091.i = add nsw i32 %div82, -1
  call void @__sanitizer_cov_trace_const_cmp2(i16 7, i16 %212)
  %cmp592.i = icmp ugt i16 %212, 7
  br label %for.body.i235

for.body.i235:                                    ; preds = %for.inc.i254.for.body.i235_crit_edge, %diffuser_disk_to_cpu.exit233
  %i.097.i = phi i32 [ 0, %diffuser_disk_to_cpu.exit233 ], [ %inc.i252, %for.inc.i254.for.body.i235_crit_edge ]
  br i1 %cmp592.i, label %for.body.i235.while.body.i251_crit_edge, label %for.body.i235.for.inc.i254_crit_edge

for.body.i235.for.inc.i254_crit_edge:             ; preds = %for.body.i235
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc.i254

for.body.i235.while.body.i251_crit_edge:          ; preds = %for.body.i235
  br label %while.body.i251

while.body.i251:                                  ; preds = %while.body.i251.while.body.i251_crit_edge, %for.body.i235.while.body.i251_crit_edge
  %i1.096.i = phi i32 [ %i1.0.i, %while.body.i251.while.body.i251_crit_edge ], [ %i1.091.i, %for.body.i235.while.body.i251_crit_edge ]
  %i3.095.i236 = phi i32 [ %dec44.i, %while.body.i251.while.body.i251_crit_edge ], [ %sub4.i, %for.body.i235.while.body.i251_crit_edge ]
  %i2.094.i237 = phi i32 [ %dec43.i, %while.body.i251.while.body.i251_crit_edge ], [ %sub2.i234, %for.body.i235.while.body.i251_crit_edge ]
  %i1.0.in93.i = phi i32 [ %dec26.i, %while.body.i251.while.body.i251_crit_edge ], [ %div82, %for.body.i235.while.body.i251_crit_edge ]
  %arrayidx.i238 = getelementptr i32, ptr %add.ptr, i32 %i2.094.i237
  %214 = ptrtoint ptr %arrayidx.i238 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %arrayidx.i238, align 4
  %arrayidx6.i239 = getelementptr i32, ptr %add.ptr, i32 %i3.095.i236
  %216 = ptrtoint ptr %arrayidx6.i239 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %arrayidx6.i239, align 4
  %xor.i240 = xor i32 %217, %215
  %arrayidx7.i241 = getelementptr i32, ptr %add.ptr, i32 %i1.096.i
  %218 = ptrtoint ptr %arrayidx7.i241 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %arrayidx7.i241, align 4
  %sub8.i = sub i32 %219, %xor.i240
  store i32 %sub8.i, ptr %arrayidx7.i241, align 4
  %dec.i = add nsw i32 %i1.0.in93.i, -2
  %dec9.i = add i32 %i2.094.i237, -1
  %dec10.i = add i32 %i3.095.i236, -1
  %arrayidx11.i242 = getelementptr i32, ptr %add.ptr, i32 %dec9.i
  %220 = ptrtoint ptr %arrayidx11.i242 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %arrayidx11.i242, align 4
  %arrayidx12.i243 = getelementptr i32, ptr %add.ptr, i32 %dec10.i
  %222 = ptrtoint ptr %arrayidx12.i243 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %arrayidx12.i243, align 4
  %or.i244 = call i32 @llvm.fshl.i32(i32 %223, i32 %223, i32 13) #20
  %xor14.i = xor i32 %or.i244, %221
  %arrayidx15.i = getelementptr i32, ptr %add.ptr, i32 %dec.i
  %224 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %arrayidx15.i, align 4
  %sub16.i245 = sub i32 %225, %xor14.i
  store i32 %sub16.i245, ptr %arrayidx15.i, align 4
  %dec17.i = add nsw i32 %i1.0.in93.i, -3
  %dec18.i = add i32 %i2.094.i237, -2
  %dec19.i = add i32 %i3.095.i236, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec18.i)
  %cmp20.i = icmp slt i32 %dec18.i, 0
  %add.i246 = select i1 %cmp20.i, i32 %div82, i32 0
  %spec.select.i247 = add i32 %add.i246, %dec18.i
  %arrayidx21.i = getelementptr i32, ptr %add.ptr, i32 %spec.select.i247
  %226 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %arrayidx21.i, align 4
  %arrayidx22.i = getelementptr i32, ptr %add.ptr, i32 %dec19.i
  %228 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %arrayidx22.i, align 4
  %xor23.i = xor i32 %229, %227
  %arrayidx24.i248 = getelementptr i32, ptr %add.ptr, i32 %dec17.i
  %230 = ptrtoint ptr %arrayidx24.i248 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %arrayidx24.i248, align 4
  %sub25.i = sub i32 %231, %xor23.i
  store i32 %sub25.i, ptr %arrayidx24.i248, align 4
  %dec26.i = add nsw i32 %i1.0.in93.i, -4
  %dec27.i = add i32 %spec.select.i247, -1
  %dec28.i = add i32 %i3.095.i236, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec28.i)
  %cmp29.i = icmp slt i32 %dec28.i, 0
  %add31.i249 = select i1 %cmp29.i, i32 %div82, i32 0
  %i3.1.i250 = add i32 %add31.i249, %dec28.i
  %arrayidx33.i = getelementptr i32, ptr %add.ptr, i32 %dec27.i
  %232 = ptrtoint ptr %arrayidx33.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %arrayidx33.i, align 4
  %arrayidx34.i = getelementptr i32, ptr %add.ptr, i32 %i3.1.i250
  %234 = ptrtoint ptr %arrayidx34.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %arrayidx34.i, align 4
  %or38.i = call i32 @llvm.fshl.i32(i32 %235, i32 %235, i32 9) #20
  %xor39.i = xor i32 %or38.i, %233
  %arrayidx40.i = getelementptr i32, ptr %add.ptr, i32 %dec26.i
  %236 = ptrtoint ptr %arrayidx40.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %arrayidx40.i, align 4
  %sub41.i = sub i32 %237, %xor39.i
  store i32 %sub41.i, ptr %arrayidx40.i, align 4
  %dec43.i = add i32 %spec.select.i247, -2
  %dec44.i = add i32 %i3.1.i250, -1
  %i1.0.i = add nsw i32 %i1.0.in93.i, -5
  %cmp5.i = icmp sgt i32 %i1.0.in93.i, 5
  br i1 %cmp5.i, label %while.body.i251.while.body.i251_crit_edge, label %while.body.i251.for.inc.i254_crit_edge

while.body.i251.for.inc.i254_crit_edge:           ; preds = %while.body.i251
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc.i254

while.body.i251.while.body.i251_crit_edge:        ; preds = %while.body.i251
  call void @__sanitizer_cov_trace_pc() #22
  br label %while.body.i251

for.inc.i254:                                     ; preds = %while.body.i251.for.inc.i254_crit_edge, %for.body.i235.for.inc.i254_crit_edge
  %inc.i252 = add nuw nsw i32 %i.097.i, 1
  %exitcond.not.i253 = icmp eq i32 %inc.i252, 5
  br i1 %exitcond.not.i253, label %diffuser_a_encrypt.exit, label %for.inc.i254.for.body.i235_crit_edge

for.inc.i254.for.body.i235_crit_edge:             ; preds = %for.inc.i254
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body.i235

diffuser_a_encrypt.exit:                          ; preds = %for.inc.i254
  %238 = ptrtoint ptr %sector_size to i32
  call void @__asan_load2_noabort(i32 %238)
  %239 = load i16, ptr %sector_size, align 4
  %240 = lshr i16 %239, 2
  %div85 = zext i16 %240 to i32
  %i1.085.i = add nsw i32 %div85, -1
  call void @__sanitizer_cov_trace_const_cmp2(i16 7, i16 %239)
  %cmp186.i = icmp ugt i16 %239, 7
  br label %while.cond.preheader.i255

while.cond.preheader.i255:                        ; preds = %for.inc.i278.while.cond.preheader.i255_crit_edge, %diffuser_a_encrypt.exit
  %i.091.i = phi i32 [ 0, %diffuser_a_encrypt.exit ], [ %inc.i276, %for.inc.i278.while.cond.preheader.i255_crit_edge ]
  br i1 %cmp186.i, label %while.cond.preheader.i255.while.body.i275_crit_edge, label %while.cond.preheader.i255.for.inc.i278_crit_edge

while.cond.preheader.i255.for.inc.i278_crit_edge: ; preds = %while.cond.preheader.i255
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc.i278

while.cond.preheader.i255.while.body.i275_crit_edge: ; preds = %while.cond.preheader.i255
  br label %while.body.i275

while.body.i275:                                  ; preds = %while.body.i275.while.body.i275_crit_edge, %while.cond.preheader.i255.while.body.i275_crit_edge
  %i1.090.i = phi i32 [ %i1.0.i273, %while.body.i275.while.body.i275_crit_edge ], [ %i1.085.i, %while.cond.preheader.i255.while.body.i275_crit_edge ]
  %i3.089.i = phi i32 [ %dec40.i, %while.body.i275.while.body.i275_crit_edge ], [ 4, %while.cond.preheader.i255.while.body.i275_crit_edge ]
  %i2.088.i = phi i32 [ %dec39.i, %while.body.i275.while.body.i275_crit_edge ], [ 1, %while.cond.preheader.i255.while.body.i275_crit_edge ]
  %i1.0.in87.i = phi i32 [ %dec30.i, %while.body.i275.while.body.i275_crit_edge ], [ %div85, %while.cond.preheader.i255.while.body.i275_crit_edge ]
  %arrayidx.i256 = getelementptr i32, ptr %add.ptr, i32 %i2.088.i
  %241 = ptrtoint ptr %arrayidx.i256 to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load i32, ptr %arrayidx.i256, align 4
  %arrayidx2.i257 = getelementptr i32, ptr %add.ptr, i32 %i3.089.i
  %243 = ptrtoint ptr %arrayidx2.i257 to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load i32, ptr %arrayidx2.i257, align 4
  %or.i258 = call i32 @llvm.fshl.i32(i32 %244, i32 %244, i32 25) #20
  %xor.i259 = xor i32 %or.i258, %242
  %arrayidx4.i260 = getelementptr i32, ptr %add.ptr, i32 %i1.090.i
  %245 = ptrtoint ptr %arrayidx4.i260 to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load i32, ptr %arrayidx4.i260, align 4
  %sub5.i = sub i32 %246, %xor.i259
  store i32 %sub5.i, ptr %arrayidx4.i260, align 4
  %dec.i261 = add nsw i32 %i1.0.in87.i, -2
  %dec6.i = add i32 %i2.088.i, -1
  %dec7.i = add i32 %i3.089.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec7.i)
  %cmp8.i = icmp slt i32 %dec7.i, 0
  %add.i262 = select i1 %cmp8.i, i32 %div85, i32 0
  %spec.select.i263 = add i32 %add.i262, %dec7.i
  %arrayidx9.i = getelementptr i32, ptr %add.ptr, i32 %dec6.i
  %247 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %arrayidx9.i, align 4
  %arrayidx10.i264 = getelementptr i32, ptr %add.ptr, i32 %spec.select.i263
  %249 = ptrtoint ptr %arrayidx10.i264 to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load i32, ptr %arrayidx10.i264, align 4
  %xor11.i = xor i32 %250, %248
  %arrayidx12.i265 = getelementptr i32, ptr %add.ptr, i32 %dec.i261
  %251 = ptrtoint ptr %arrayidx12.i265 to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load i32, ptr %arrayidx12.i265, align 4
  %sub13.i = sub i32 %252, %xor11.i
  store i32 %sub13.i, ptr %arrayidx12.i265, align 4
  %dec14.i = add nsw i32 %i1.0.in87.i, -3
  %dec15.i = add i32 %i2.088.i, -2
  %dec16.i = add i32 %spec.select.i263, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec15.i)
  %cmp17.i = icmp slt i32 %dec15.i, 0
  %add19.i = select i1 %cmp17.i, i32 %div85, i32 0
  %i2.1.i266 = add i32 %add19.i, %dec15.i
  %arrayidx21.i267 = getelementptr i32, ptr %add.ptr, i32 %i2.1.i266
  %253 = ptrtoint ptr %arrayidx21.i267 to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load i32, ptr %arrayidx21.i267, align 4
  %arrayidx22.i268 = getelementptr i32, ptr %add.ptr, i32 %dec16.i
  %255 = ptrtoint ptr %arrayidx22.i268 to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load i32, ptr %arrayidx22.i268, align 4
  %or26.i = call i32 @llvm.fshl.i32(i32 %256, i32 %256, i32 10) #20
  %xor27.i = xor i32 %or26.i, %254
  %arrayidx28.i = getelementptr i32, ptr %add.ptr, i32 %dec14.i
  %257 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load i32, ptr %arrayidx28.i, align 4
  %sub29.i = sub i32 %258, %xor27.i
  store i32 %sub29.i, ptr %arrayidx28.i, align 4
  %dec30.i = add nsw i32 %i1.0.in87.i, -4
  %dec31.i = add i32 %i2.1.i266, -1
  %dec32.i = add i32 %spec.select.i263, -2
  %arrayidx33.i269 = getelementptr i32, ptr %add.ptr, i32 %dec31.i
  %259 = ptrtoint ptr %arrayidx33.i269 to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load i32, ptr %arrayidx33.i269, align 4
  %arrayidx34.i270 = getelementptr i32, ptr %add.ptr, i32 %dec32.i
  %261 = ptrtoint ptr %arrayidx34.i270 to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load i32, ptr %arrayidx34.i270, align 4
  %xor35.i271 = xor i32 %262, %260
  %arrayidx36.i272 = getelementptr i32, ptr %add.ptr, i32 %dec30.i
  %263 = ptrtoint ptr %arrayidx36.i272 to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load i32, ptr %arrayidx36.i272, align 4
  %sub37.i = sub i32 %264, %xor35.i271
  store i32 %sub37.i, ptr %arrayidx36.i272, align 4
  %dec39.i = add i32 %i2.1.i266, -2
  %dec40.i = add i32 %spec.select.i263, -3
  %i1.0.i273 = add nsw i32 %i1.0.in87.i, -5
  %cmp1.i274 = icmp sgt i32 %i1.0.in87.i, 5
  br i1 %cmp1.i274, label %while.body.i275.while.body.i275_crit_edge, label %while.body.i275.for.inc.i278_crit_edge

while.body.i275.for.inc.i278_crit_edge:           ; preds = %while.body.i275
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc.i278

while.body.i275.while.body.i275_crit_edge:        ; preds = %while.body.i275
  call void @__sanitizer_cov_trace_pc() #22
  br label %while.body.i275

for.inc.i278:                                     ; preds = %while.body.i275.for.inc.i278_crit_edge, %while.cond.preheader.i255.for.inc.i278_crit_edge
  %inc.i276 = add nuw nsw i32 %i.091.i, 1
  %exitcond.not.i277 = icmp eq i32 %inc.i276, 3
  br i1 %exitcond.not.i277, label %diffuser_b_encrypt.exit, label %for.inc.i278.while.cond.preheader.i255_crit_edge

for.inc.i278.while.cond.preheader.i255_crit_edge: ; preds = %for.inc.i278
  call void @__sanitizer_cov_trace_pc() #22
  br label %while.cond.preheader.i255

diffuser_b_encrypt.exit:                          ; preds = %for.inc.i278
  %265 = ptrtoint ptr %sector_size to i32
  call void @__asan_load2_noabort(i32 %265)
  %266 = load i16, ptr %sector_size, align 4
  %267 = lshr i16 %266, 2
  %div88 = zext i16 %267 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %266)
  %cmp6.not.i279 = icmp ult i16 %266, 4
  br i1 %cmp6.not.i279, label %diffuser_b_encrypt.exit.do.end93_crit_edge, label %diffuser_b_encrypt.exit.for.body.i284_crit_edge

diffuser_b_encrypt.exit.for.body.i284_crit_edge:  ; preds = %diffuser_b_encrypt.exit
  br label %for.body.i284

diffuser_b_encrypt.exit.do.end93_crit_edge:       ; preds = %diffuser_b_encrypt.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end93

for.body.i284:                                    ; preds = %for.body.i284.for.body.i284_crit_edge, %diffuser_b_encrypt.exit.for.body.i284_crit_edge
  %i.07.i280 = phi i32 [ %inc.i282, %for.body.i284.for.body.i284_crit_edge ], [ 0, %diffuser_b_encrypt.exit.for.body.i284_crit_edge ]
  %arrayidx.i281 = getelementptr i32, ptr %add.ptr, i32 %i.07.i280
  %268 = ptrtoint ptr %arrayidx.i281 to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load i32, ptr %arrayidx.i281, align 4
  %270 = call i32 @llvm.bswap.i32(i32 %269) #20
  %271 = ptrtoint ptr %arrayidx.i281 to i32
  call void @__asan_store4_noabort(i32 %271)
  store i32 %270, ptr %arrayidx.i281, align 4
  %inc.i282 = add nuw nsw i32 %i.07.i280, 1
  %exitcond.not.i283 = icmp eq i32 %inc.i282, %div88
  br i1 %exitcond.not.i283, label %for.body.i284.do.end93_crit_edge, label %for.body.i284.for.body.i284_crit_edge

for.body.i284.for.body.i284_crit_edge:            ; preds = %for.body.i284
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body.i284

for.body.i284.do.end93_crit_edge:                 ; preds = %for.body.i284
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end93

do.end93:                                         ; preds = %for.body.i284.do.end93_crit_edge, %diffuser_b_encrypt.exit.do.end93_crit_edge, %for.end.do.end93_crit_edge
  call void @kunmap_local_indexed(ptr noundef %call.i.i) #20
  call void asm sideeffect "", "~{memory}"() #20, !srcloc !423
  %272 = call i32 @llvm.read_register.i32(metadata !400) #20
  %and.i.i.i1.i286 = and i32 %272, -16384
  %273 = inttoptr i32 %and.i.i.i1.i286 to ptr
  %task.i.i.i287 = getelementptr inbounds %struct.thread_info, ptr %273, i32 0, i32 2
  %274 = ptrtoint ptr %task.i.i.i287 to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %task.i.i.i287, align 8
  %pagefault_disabled.i.i.i288 = getelementptr inbounds %struct.task_struct, ptr %275, i32 0, i32 213
  %276 = ptrtoint ptr %pagefault_disabled.i.i.i288 to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load i32, ptr %pagefault_disabled.i.i.i288, align 8
  %dec.i.i.i289 = add i32 %277, -1
  store i32 %dec.i.i.i289, ptr %pagefault_disabled.i.i.i288, align 8
  call void asm sideeffect "", "~{memory}"() #20, !srcloc !424
  %278 = call i32 @llvm.read_register.i32(metadata !400) #20
  %and.i.i.i.i290 = and i32 %278, -16384
  %279 = inttoptr i32 %and.i.i.i.i290 to ptr
  %preempt_count.i.i.i291 = getelementptr inbounds %struct.thread_info, ptr %279, i32 0, i32 1
  %280 = ptrtoint ptr %preempt_count.i.i.i291 to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load volatile i32, ptr %preempt_count.i.i.i291, align 4
  %sub.i.i292 = add i32 %281, -1
  store volatile i32 %sub.i.i292, ptr %preempt_count.i.i.i291, align 4
  br label %out

out:                                              ; preds = %do.end93, %crypto_wait_req.exit166.out_crit_edge, %crypto_wait_req.exit.out_crit_edge, %skcipher_request_alloc.exit.out_crit_edge
  %r.0 = phi i32 [ %err.addr.0.i, %crypto_wait_req.exit.out_crit_edge ], [ %err.addr.0.i165, %crypto_wait_req.exit166.out_crit_edge ], [ 0, %do.end93 ], [ -12, %skcipher_request_alloc.exit.out_crit_edge ]
  call void @kfree_sensitive(ptr noundef %call7.i.i160) #20
  call void @kfree_sensitive(ptr noundef %call7.i.i151) #20
  call void @kfree_sensitive(ptr noundef %retval.1.i4.i) #20
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %wait) #20
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %dst) #20
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %src) #20
  ret i32 %r.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #17

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__crypto_xor(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @crypt_iv_lmk_ctr(ptr nocapture noundef %cc, ptr nocapture noundef writeonly %ti, ptr nocapture noundef readnone %opts) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %iv_gen_private = getelementptr inbounds %struct.crypt_config, ptr %cc, i32 0, i32 12
  %sector_size = getelementptr inbounds %struct.crypt_config, ptr %cc, i32 0, i32 15
  %0 = ptrtoint ptr %sector_size to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %sector_size, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %1)
  %cmp.not = icmp eq i16 %1, 512
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  %error = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 12
  %2 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @.str.90, ptr %error, align 8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call ptr @crypto_alloc_shash(ptr noundef nonnull @.str.91, i32 noundef 0, i32 noundef 65536) #20
  %3 = ptrtoint ptr %iv_gen_private to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call, ptr %iv_gen_private, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then4, label %if.end8

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  %error5 = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 12
  %4 = ptrtoint ptr %error5 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @.str.92, ptr %error5, align 8
  %5 = ptrtoint ptr %iv_gen_private to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %iv_gen_private, align 4
  %7 = ptrtoint ptr %6 to i32
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %key_parts = getelementptr inbounds %struct.crypt_config, ptr %cc, i32 0, i32 24
  %8 = ptrtoint ptr %key_parts to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %key_parts, align 4
  %tfms_count = getelementptr inbounds %struct.crypt_config, ptr %cc, i32 0, i32 18
  %10 = ptrtoint ptr %tfms_count to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tfms_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp9 = icmp eq i32 %9, %11
  br i1 %cmp9, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #22
  %seed = getelementptr inbounds %struct.crypt_config, ptr %cc, i32 0, i32 12, i32 0, i32 1
  %12 = ptrtoint ptr %seed to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %seed, align 4
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %13 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef 3520, i32 noundef 64) #26
  %seed14 = getelementptr inbounds %struct.crypt_config, ptr %cc, i32 0, i32 12, i32 0, i32 1
  %14 = ptrtoint ptr %seed14 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call7.i.i, ptr %seed14, align 4
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.then16, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.then16:                                        ; preds = %if.end12
  %15 = ptrtoint ptr %iv_gen_private to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %iv_gen_private, align 4
  %tobool.not.i = icmp eq ptr %16, null
  %cmp.i.i = icmp ugt ptr %16, inttoptr (i32 -4096 to ptr)
  %or.cond.i = or i1 %tobool.not.i, %cmp.i.i
  br i1 %or.cond.i, label %if.then16.crypt_iv_lmk_dtr.exit_crit_edge, label %if.then.i

if.then16.crypt_iv_lmk_dtr.exit_crit_edge:        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #22
  br label %crypt_iv_lmk_dtr.exit

if.then.i:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #22
  %base.i.i.i = getelementptr inbounds %struct.crypto_shash, ptr %16, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef nonnull %16, ptr noundef %base.i.i.i) #20
  br label %crypt_iv_lmk_dtr.exit

crypt_iv_lmk_dtr.exit:                            ; preds = %if.then.i, %if.then16.crypt_iv_lmk_dtr.exit_crit_edge
  %17 = ptrtoint ptr %iv_gen_private to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %iv_gen_private, align 4
  %18 = ptrtoint ptr %seed14 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %seed14, align 4
  tail call void @kfree_sensitive(ptr noundef %19) #20
  %20 = ptrtoint ptr %seed14 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %seed14, align 4
  %error17 = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 12
  %21 = ptrtoint ptr %error17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @.str.93, ptr %error17, align 8
  br label %cleanup

cleanup:                                          ; preds = %crypt_iv_lmk_dtr.exit, %if.end12.cleanup_crit_edge, %if.then11, %if.then4, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ %7, %if.then4 ], [ 0, %if.then11 ], [ -12, %crypt_iv_lmk_dtr.exit ], [ 0, %if.end12.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @crypt_iv_lmk_dtr(ptr nocapture noundef %cc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %iv_gen_private = getelementptr inbounds %struct.crypt_config, ptr %cc, i32 0, i32 12
  %0 = ptrtoint ptr %iv_gen_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iv_gen_private, align 4
  %tobool.not = icmp eq ptr %1, null
  %cmp.i = icmp ugt ptr %1, inttoptr (i32 -4096 to ptr)
  %or.cond = or i1 %tobool.not, %cmp.i
  br i1 %or.cond, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  %base.i.i = getelementptr inbounds %struct.crypto_shash, ptr %1, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef nonnull %1, ptr noundef %base.i.i) #20
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %2 = ptrtoint ptr %iv_gen_private to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %iv_gen_private, align 4
  %seed = getelementptr inbounds %struct.crypt_config, ptr %cc, i32 0, i32 12, i32 0, i32 1
  %3 = ptrtoint ptr %seed to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %seed, align 4
  tail call void @kfree_sensitive(ptr noundef %4) #20
  %5 = ptrtoint ptr %seed to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %seed, align 4
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @crypt_iv_lmk_init(ptr nocapture noundef readonly %cc) #18 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %seed = getelementptr inbounds %struct.crypt_config, ptr %cc, i32 0, i32 12, i32 0, i32 1
  %0 = ptrtoint ptr %seed to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %seed, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  %iv_gen_private = getelementptr inbounds %struct.crypt_config, ptr %cc, i32 0, i32 12
  %key_size = getelementptr inbounds %struct.crypt_config, ptr %cc, i32 0, i32 23
  %2 = ptrtoint ptr %key_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %key_size, align 8
  %key_parts = getelementptr inbounds %struct.crypt_config, ptr %cc, i32 0, i32 24
  %4 = ptrtoint ptr %key_parts to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %key_parts, align 4
  %div = udiv i32 %3, %5
  %key = getelementptr inbounds %struct.crypt_config, ptr %cc, i32 0, i32 37
  %tfms_count = getelementptr inbounds %struct.crypt_config, ptr %cc, i32 0, i32 18
  %6 = ptrtoint ptr %tfms_count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tfms_count, align 4
  %mul = mul i32 %7, %div
  %add.ptr = getelementptr i8, ptr %key, i32 %mul
  %8 = ptrtoint ptr %iv_gen_private to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %iv_gen_private, align 4
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_shash, ptr %9, i32 0, i32 2, i32 3
  %10 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %__crt_alg.i.i, align 4
  %digestsize.i = getelementptr i8, ptr %11, i32 -128
  %12 = ptrtoint ptr %digestsize.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %digestsize.i, align 128
  %14 = call ptr @memcpy(ptr %1, ptr %add.ptr, i32 %13)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @crypt_iv_lmk_wipe(ptr nocapture noundef readonly %cc) #18 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %seed = getelementptr inbounds %struct.crypt_config, ptr %cc, i32 0, i32 12, i32 0, i32 1
  %0 = ptrtoint ptr %seed to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %seed, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  %2 = call ptr @memset(ptr %1, i32 0, i32 64)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @crypt_iv_lmk_gen(ptr noundef %cc, ptr nocapture noundef writeonly %iv, ptr nocapture noundef readonly %dmreq) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dmreq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dmreq, align 8
  %bio_in = getelementptr inbounds %struct.convert_context, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %bio_in to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bio_in, align 8
  %bi_opf = getelementptr inbounds %struct.bio, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %bi_opf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bi_opf, align 8
  %and.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %sg_in = getelementptr inbounds %struct.dm_crypt_request, ptr %dmreq, i32 0, i32 1
  %cipher_flags.i.i = getelementptr inbounds %struct.crypt_config, ptr %cc, i32 0, i32 19
  %6 = ptrtoint ptr %cipher_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %cipher_flags.i.i, align 4
  %and1.i.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.not.i, label %if.then.crypt_get_sg_data.exit_crit_edge, label %if.then.i, !prof !413

if.then.crypt_get_sg_data.exit_crit_edge:         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #22
  br label %crypt_get_sg_data.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #22
  %arrayidx.i = getelementptr %struct.dm_crypt_request, ptr %dmreq, i32 0, i32 1, i32 2
  br label %crypt_get_sg_data.exit

crypt_get_sg_data.exit:                           ; preds = %if.then.i, %if.then.crypt_get_sg_data.exit_crit_edge
  %retval.0.i = phi ptr [ %arrayidx.i, %if.then.i ], [ %sg_in, %if.then.crypt_get_sg_data.exit_crit_edge ]
  %8 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %retval.0.i, align 4
  %and.i.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i15 = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i15, label %sg_page.exit, label %do.body2.i, !prof !413

do.body2.i:                                       ; preds = %crypt_get_sg_data.exit
  call void @__sanitizer_cov_trace_pc() #22
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #20, !srcloc !420
  unreachable

sg_page.exit:                                     ; preds = %crypt_get_sg_data.exit
  call void @__sanitizer_cov_trace_pc() #22
  %and.i16 = and i32 %9, -4
  %10 = inttoptr i32 %and.i16 to ptr
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %11 = load i32, ptr @pgprot_kernel, align 4
  %or.i = or i32 %11, 512
  %12 = tail call i32 @llvm.read_register.i32(metadata !400) #20
  %and.i.i.i.i.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %15, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !421
  %16 = tail call i32 @llvm.read_register.i32(metadata !400) #20
  %and.i.i.i1.i.i = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %19, i32 0, i32 213
  %20 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %inc.i.i.i.i = add i32 %21, 1
  store i32 %inc.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !422
  %call.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef %10, i32 noundef %or.i) #20
  %offset = getelementptr inbounds %struct.scatterlist, ptr %retval.0.i, i32 0, i32 1
  %22 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %offset, align 4
  %add.ptr = getelementptr i8, ptr %call.i.i, i32 %23
  %call4 = tail call fastcc i32 @crypt_iv_lmk_one(ptr noundef %cc, ptr noundef %iv, ptr noundef %dmreq, ptr noundef %add.ptr)
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i) #20
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !423
  %24 = tail call i32 @llvm.read_register.i32(metadata !400) #20
  %and.i.i.i1.i = and i32 %24, -16384
  %25 = inttoptr i32 %and.i.i.i1.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %task.i.i.i, align 8
  %pagefault_disabled.i.i.i = getelementptr inbounds %struct.task_struct, ptr %27, i32 0, i32 213
  %28 = ptrtoint ptr %pagefault_disabled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %pagefault_disabled.i.i.i, align 8
  %dec.i.i.i = add i32 %29, -1
  store i32 %dec.i.i.i, ptr %pagefault_disabled.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !424
  %30 = tail call i32 @llvm.read_register.i32(metadata !400) #20
  %and.i.i.i.i = and i32 %30, -16384
  %31 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %33, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  %iv_size = getelementptr inbounds %struct.crypt_config, ptr %cc, i32 0, i32 14
  %34 = ptrtoint ptr %iv_size to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %iv_size, align 8
  %36 = call ptr @memset(ptr %iv, i32 0, i32 %35)
  br label %if.end

if.end:                                           ; preds = %if.else, %sg_page.exit
  %r.0 = phi i32 [ %call4, %sg_page.exit ], [ 0, %if.else ]
  ret i32 %r.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @crypt_iv_lmk_post(ptr noundef %cc, ptr noundef %iv, ptr nocapture noundef readonly %dmreq) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dmreq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dmreq, align 8
  %bio_in = getelementptr inbounds %struct.convert_context, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %bio_in to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bio_in, align 8
  %bi_opf = getelementptr inbounds %struct.bio, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %bi_opf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bi_opf, align 8
  %and.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end:                                           ; preds = %entry
  %sg_out = getelementptr inbounds %struct.dm_crypt_request, ptr %dmreq, i32 0, i32 2
  %cipher_flags.i.i = getelementptr inbounds %struct.crypt_config, ptr %cc, i32 0, i32 19
  %6 = ptrtoint ptr %cipher_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %cipher_flags.i.i, align 4
  %and1.i.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.not.i, label %if.end.crypt_get_sg_data.exit_crit_edge, label %if.then.i, !prof !413

if.end.crypt_get_sg_data.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %crypt_get_sg_data.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  %arrayidx.i = getelementptr %struct.dm_crypt_request, ptr %dmreq, i32 0, i32 2, i32 2
  br label %crypt_get_sg_data.exit

crypt_get_sg_data.exit:                           ; preds = %if.then.i, %if.end.crypt_get_sg_data.exit_crit_edge
  %retval.0.i = phi ptr [ %arrayidx.i, %if.then.i ], [ %sg_out, %if.end.crypt_get_sg_data.exit_crit_edge ]
  %8 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %retval.0.i, align 4
  %and.i.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i24 = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i24, label %sg_page.exit, label %do.body2.i, !prof !413

do.body2.i:                                       ; preds = %crypt_get_sg_data.exit
  call void @__sanitizer_cov_trace_pc() #22
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #20, !srcloc !420
  unreachable

sg_page.exit:                                     ; preds = %crypt_get_sg_data.exit
  %and.i25 = and i32 %9, -4
  %10 = inttoptr i32 %and.i25 to ptr
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %11 = load i32, ptr @pgprot_kernel, align 4
  %or.i = or i32 %11, 512
  %12 = tail call i32 @llvm.read_register.i32(metadata !400) #20
  %and.i.i.i.i.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %15, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !421
  %16 = tail call i32 @llvm.read_register.i32(metadata !400) #20
  %and.i.i.i1.i.i = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %19, i32 0, i32 213
  %20 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %inc.i.i.i.i = add i32 %21, 1
  store i32 %inc.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !422
  %call.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef %10, i32 noundef %or.i) #20
  %offset = getelementptr inbounds %struct.scatterlist, ptr %retval.0.i, i32 0, i32 1
  %22 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %offset, align 4
  %add.ptr = getelementptr i8, ptr %call.i.i, i32 %23
  %call4 = tail call fastcc i32 @crypt_iv_lmk_one(ptr noundef %cc, ptr noundef %iv, ptr noundef %dmreq, ptr noundef %add.ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.else.i, label %sg_page.exit.do.end_crit_edge

sg_page.exit.do.end_crit_edge:                    ; preds = %sg_page.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end

if.else.i:                                        ; preds = %sg_page.exit
  call void @__sanitizer_cov_trace_pc() #22
  %iv_size = getelementptr inbounds %struct.crypt_config, ptr %cc, i32 0, i32 14
  %24 = ptrtoint ptr %iv_size to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %iv_size, align 8
  %26 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %offset, align 4
  %add.ptr7 = getelementptr i8, ptr %call.i.i, i32 %27
  tail call void @__crypto_xor(ptr noundef %add.ptr7, ptr noundef %add.ptr7, ptr noundef %iv, i32 noundef %25) #20
  br label %do.end

do.end:                                           ; preds = %if.else.i, %sg_page.exit.do.end_crit_edge
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i) #20
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !423
  %28 = tail call i32 @llvm.read_register.i32(metadata !400) #20
  %and.i.i.i1.i = and i32 %28, -16384
  %29 = inttoptr i32 %and.i.i.i1.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %task.i.i.i, align 8
  %pagefault_disabled.i.i.i = getelementptr inbounds %struct.task_struct, ptr %31, i32 0, i32 213
  %32 = ptrtoint ptr %pagefault_disabled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %pagefault_disabled.i.i.i, align 8
  %dec.i.i.i = add i32 %33, -1
  store i32 %dec.i.i.i, ptr %pagefault_disabled.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !424
  %34 = tail call i32 @llvm.read_register.i32(metadata !400) #20
  %and.i.i.i.i = and i32 %34, -16384
  %35 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %37, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %do.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_alloc_shash(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @crypt_iv_lmk_one(ptr nocapture noundef readonly %cc, ptr nocapture noundef writeonly %iv, ptr nocapture noundef readonly %dmreq, ptr noundef %data) unnamed_addr #2 align 64 {
entry:
  %__desc_desc = alloca [376 x i8], align 8
  %md5state = alloca %struct.md5_state, align 8
  %buf = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %iv_gen_private = getelementptr inbounds %struct.crypt_config, ptr %cc, i32 0, i32 12
  call void @llvm.lifetime.start.p0(i64 376, ptr nonnull %__desc_desc) #20
  %0 = call ptr @memset(ptr %__desc_desc, i32 255, i32 376)
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %md5state) #20
  %1 = call ptr @memset(ptr %md5state, i32 255, i32 88)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %buf) #20
  %2 = getelementptr inbounds [4 x i32], ptr %buf, i32 0, i32 1
  %3 = getelementptr inbounds [4 x i32], ptr %buf, i32 0, i32 2
  %4 = getelementptr inbounds [4 x i32], ptr %buf, i32 0, i32 3
  %5 = ptrtoint ptr %iv_gen_private to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %iv_gen_private, align 4
  %7 = ptrtoint ptr %__desc_desc to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %__desc_desc, align 8
  %base.i.i.i = getelementptr inbounds %struct.crypto_shash, ptr %6, i32 0, i32 2
  %8 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %base.i.i.i, align 128
  %and.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %crypto_shash_init.exit, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

crypto_shash_init.exit:                           ; preds = %entry
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_shash, ptr %6, i32 0, i32 2, i32 3
  %10 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %__crt_alg.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %11, i32 -256
  %12 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr.i.i.i, align 128
  %call3.i = call i32 %13(ptr noundef nonnull %__desc_desc) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not = icmp eq i32 %call3.i, 0
  br i1 %tobool.not, label %if.end, label %crypto_shash_init.exit.cleanup_crit_edge

crypto_shash_init.exit.cleanup_crit_edge:         ; preds = %crypto_shash_init.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end:                                           ; preds = %crypto_shash_init.exit
  %seed = getelementptr inbounds %struct.crypt_config, ptr %cc, i32 0, i32 12, i32 0, i32 1
  %14 = ptrtoint ptr %seed to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %seed, align 4
  %tobool1.not = icmp eq ptr %15, null
  br i1 %tobool1.not, label %if.end.if.end8_crit_edge, label %if.then2

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end8

if.then2:                                         ; preds = %if.end
  %call4 = call i32 @crypto_shash_update(ptr noundef nonnull %__desc_desc, ptr noundef nonnull %15, i32 noundef 64) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then2.if.end8_crit_edge, label %if.then2.cleanup_crit_edge

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.then2.if.end8_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end8

if.end8:                                          ; preds = %if.then2.if.end8_crit_edge, %if.end.if.end8_crit_edge
  %add.ptr = getelementptr i8, ptr %data, i32 16
  %call9 = call i32 @crypto_shash_update(ptr noundef nonnull %__desc_desc, ptr noundef %add.ptr, i32 noundef 496) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  %iv_sector = getelementptr inbounds %struct.dm_crypt_request, ptr %dmreq, i32 0, i32 3
  %16 = ptrtoint ptr %iv_sector to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %iv_sector, align 8
  %conv = trunc i64 %17 to i32
  %18 = call i32 @llvm.bswap.i32(i32 %conv)
  %19 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %buf, align 4
  %shr = lshr i64 %17, 32
  %20 = trunc i64 %shr to i32
  %21 = and i32 %20, 16777215
  %conv15 = or i32 %21, -2147483648
  %22 = call i32 @llvm.bswap.i32(i32 %conv15)
  %23 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %2, align 4
  %24 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -1206976512, ptr %3, align 4
  %25 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %4, align 4
  %call20 = call i32 @crypto_shash_update(ptr noundef nonnull %__desc_desc, ptr noundef nonnull %buf, i32 noundef 16) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end23, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end23:                                         ; preds = %if.end12
  %26 = ptrtoint ptr %__desc_desc to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %__desc_desc, align 8
  %__crt_alg.i.i57 = getelementptr inbounds %struct.crypto_shash, ptr %27, i32 0, i32 2, i32 3
  %28 = ptrtoint ptr %__crt_alg.i.i57 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %__crt_alg.i.i57, align 4
  %export.i = getelementptr i8, ptr %29, i32 -236
  %30 = ptrtoint ptr %export.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %export.i, align 4
  %call1.i = call i32 %31(ptr noundef nonnull %__desc_desc, ptr noundef nonnull %md5state) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool25.not = icmp eq i32 %call1.i, 0
  br i1 %tobool25.not, label %for.body.preheader, label %if.end23.cleanup_crit_edge

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

for.body.preheader:                               ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #22
  %32 = ptrtoint ptr %md5state to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %md5state, align 8
  %34 = call i32 @llvm.bswap.i32(i32 %33) #20
  %35 = ptrtoint ptr %md5state to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %md5state, align 8
  %arrayidx29.1 = getelementptr inbounds [4 x i32], ptr %md5state, i32 0, i32 1
  %36 = ptrtoint ptr %arrayidx29.1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx29.1, align 4
  %38 = call i32 @llvm.bswap.i32(i32 %37) #20
  %39 = ptrtoint ptr %arrayidx29.1 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %arrayidx29.1, align 4
  %arrayidx29.2 = getelementptr inbounds [4 x i32], ptr %md5state, i32 0, i32 2
  %40 = ptrtoint ptr %arrayidx29.2 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx29.2, align 8
  %42 = call i32 @llvm.bswap.i32(i32 %41) #20
  %43 = ptrtoint ptr %arrayidx29.2 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %arrayidx29.2, align 8
  %arrayidx29.3 = getelementptr inbounds [4 x i32], ptr %md5state, i32 0, i32 3
  %44 = ptrtoint ptr %arrayidx29.3 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx29.3, align 4
  %46 = call i32 @llvm.bswap.i32(i32 %45) #20
  %47 = ptrtoint ptr %arrayidx29.3 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %arrayidx29.3, align 4
  %iv_size = getelementptr inbounds %struct.crypt_config, ptr %cc, i32 0, i32 14
  %48 = ptrtoint ptr %iv_size to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %iv_size, align 8
  %50 = call ptr @memcpy(ptr %iv, ptr %md5state, i32 %49)
  br label %cleanup

cleanup:                                          ; preds = %for.body.preheader, %if.end23.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.then2.cleanup_crit_edge, %crypto_shash_init.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.body.preheader ], [ %call3.i, %crypto_shash_init.exit.cleanup_crit_edge ], [ %call4, %if.then2.cleanup_crit_edge ], [ %call9, %if.end8.cleanup_crit_edge ], [ %call20, %if.end12.cleanup_crit_edge ], [ %call1.i, %if.end23.cleanup_crit_edge ], [ -126, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %buf) #20
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %md5state) #20
  call void @llvm.lifetime.end.p0(i64 376, ptr nonnull %__desc_desc) #20
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_shash_update(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @crypt_iv_tcw_ctr(ptr nocapture noundef %cc, ptr nocapture noundef writeonly %ti, ptr nocapture noundef readnone %opts) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %iv_gen_private = getelementptr inbounds %struct.crypt_config, ptr %cc, i32 0, i32 12
  %sector_size = getelementptr inbounds %struct.crypt_config, ptr %cc, i32 0, i32 15
  %0 = ptrtoint ptr %sector_size to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %sector_size, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %1)
  %cmp.not = icmp eq i16 %1, 512
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  %error = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 12
  %2 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @.str.94, ptr %error, align 8
  br label %cleanup

if.end:                                           ; preds = %entry
  %key_size = getelementptr inbounds %struct.crypt_config, ptr %cc, i32 0, i32 23
  %3 = ptrtoint ptr %key_size to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %key_size, align 8
  %iv_size = getelementptr inbounds %struct.crypt_config, ptr %cc, i32 0, i32 14
  %5 = ptrtoint ptr %iv_size to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %iv_size, align 8
  %add = add i32 %6, 16
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %add)
  %cmp2.not = icmp ugt i32 %4, %add
  br i1 %cmp2.not, label %if.end6, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  %error5 = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 12
  %7 = ptrtoint ptr %error5 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @.str.95, ptr %error5, align 8
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call = tail call ptr @crypto_alloc_shash(ptr noundef nonnull @.str.96, i32 noundef 0, i32 noundef 65536) #20
  %8 = ptrtoint ptr %iv_gen_private to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call, ptr %iv_gen_private, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then9, label %if.end8.i.i

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #22
  %error10 = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 12
  %9 = ptrtoint ptr %error10 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @.str.97, ptr %error10, align 8
  %10 = ptrtoint ptr %iv_gen_private to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %iv_gen_private, align 4
  %12 = ptrtoint ptr %11 to i32
  br label %cleanup

if.end8.i.i:                                      ; preds = %if.end6
  %13 = ptrtoint ptr %iv_size to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %iv_size, align 8
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %14, i32 noundef 3520) #25
  %iv_seed = getelementptr inbounds %struct.crypt_config, ptr %cc, i32 0, i32 12, i32 0, i32 1
  %15 = ptrtoint ptr %iv_seed to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call9.i.i, ptr %iv_seed, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %16 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i43 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %16, i32 noundef 3520, i32 noundef 16) #26
  %whitening = getelementptr inbounds %struct.crypt_config, ptr %cc, i32 0, i32 12, i32 0, i32 2
  %17 = ptrtoint ptr %whitening to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call7.i.i43, ptr %whitening, align 4
  %18 = ptrtoint ptr %iv_seed to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %iv_seed, align 4
  %tobool.not = icmp eq ptr %19, null
  %tobool19.not = icmp eq ptr %call7.i.i43, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool19.not
  br i1 %or.cond, label %if.then20, label %if.end8.i.i.cleanup_crit_edge

if.end8.i.i.cleanup_crit_edge:                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.then20:                                        ; preds = %if.end8.i.i
  tail call void @kfree_sensitive(ptr noundef %19) #20
  %20 = ptrtoint ptr %iv_seed to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %iv_seed, align 4
  %21 = ptrtoint ptr %whitening to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %whitening, align 4
  tail call void @kfree_sensitive(ptr noundef %22) #20
  %23 = ptrtoint ptr %whitening to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %whitening, align 4
  %24 = ptrtoint ptr %iv_gen_private to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %iv_gen_private, align 4
  %tobool.not.i = icmp eq ptr %25, null
  %cmp.i.i45 = icmp ugt ptr %25, inttoptr (i32 -4096 to ptr)
  %or.cond.i = or i1 %tobool.not.i, %cmp.i.i45
  br i1 %or.cond.i, label %if.then20.crypt_iv_tcw_dtr.exit_crit_edge, label %if.then.i

if.then20.crypt_iv_tcw_dtr.exit_crit_edge:        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #22
  br label %crypt_iv_tcw_dtr.exit

if.then.i:                                        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #22
  %base.i.i.i = getelementptr inbounds %struct.crypto_shash, ptr %25, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef nonnull %25, ptr noundef %base.i.i.i) #20
  br label %crypt_iv_tcw_dtr.exit

crypt_iv_tcw_dtr.exit:                            ; preds = %if.then.i, %if.then20.crypt_iv_tcw_dtr.exit_crit_edge
  %26 = ptrtoint ptr %iv_gen_private to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %iv_gen_private, align 4
  %error21 = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 12
  %27 = ptrtoint ptr %error21 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @.str.98, ptr %error21, align 8
  br label %cleanup

cleanup:                                          ; preds = %crypt_iv_tcw_dtr.exit, %if.end8.i.i.cleanup_crit_edge, %if.then9, %if.then4, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ -22, %if.then4 ], [ %12, %if.then9 ], [ -12, %crypt_iv_tcw_dtr.exit ], [ 0, %if.end8.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @crypt_iv_tcw_dtr(ptr nocapture noundef %cc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %iv_gen_private = getelementptr inbounds %struct.crypt_config, ptr %cc, i32 0, i32 12
  %iv_seed = getelementptr inbounds %struct.crypt_config, ptr %cc, i32 0, i32 12, i32 0, i32 1
  %0 = ptrtoint ptr %iv_seed to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iv_seed, align 4
  tail call void @kfree_sensitive(ptr noundef %1) #20
  %2 = ptrtoint ptr %iv_seed to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %iv_seed, align 4
  %whitening = getelementptr inbounds %struct.crypt_config, ptr %cc, i32 0, i32 12, i32 0, i32 2
  %3 = ptrtoint ptr %whitening to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %whitening, align 4
  tail call void @kfree_sensitive(ptr noundef %4) #20
  %5 = ptrtoint ptr %whitening to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %whitening, align 4
  %6 = ptrtoint ptr %iv_gen_private to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %iv_gen_private, align 4
  %tobool.not = icmp eq ptr %7, null
  %cmp.i = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  %or.cond = or i1 %tobool.not, %cmp.i
  br i1 %or.cond, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  %base.i.i = getelementptr inbounds %struct.crypto_shash, ptr %7, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef nonnull %7, ptr noundef %base.i.i) #20
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %8 = ptrtoint ptr %iv_gen_private to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %iv_gen_private, align 4
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @crypt_iv_tcw_init(ptr nocapture noundef readonly %cc) #18 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %key_size = getelementptr inbounds %struct.crypt_config, ptr %cc, i32 0, i32 23
  %0 = ptrtoint ptr %key_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %key_size, align 8
  %iv_size = getelementptr inbounds %struct.crypt_config, ptr %cc, i32 0, i32 14
  %2 = ptrtoint ptr %iv_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %iv_size, align 8
  %sub = sub i32 %1, %3
  %sub1 = add i32 %sub, -16
  %iv_seed = getelementptr inbounds %struct.crypt_config, ptr %cc, i32 0, i32 12, i32 0, i32 1
  %4 = ptrtoint ptr %iv_seed to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %iv_seed, align 4
  %arrayidx = getelementptr %struct.crypt_config, ptr %cc, i32 0, i32 37, i32 %sub1
  %6 = call ptr @memcpy(ptr %5, ptr %arrayidx, i32 %3)
  %whitening = getelementptr inbounds %struct.crypt_config, ptr %cc, i32 0, i32 12, i32 0, i32 2
  %7 = ptrtoint ptr %whitening to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %whitening, align 4
  %9 = load i32, ptr %iv_size, align 8
  %add = add i32 %9, %sub1
  %arrayidx5 = getelementptr %struct.crypt_config, ptr %cc, i32 0, i32 37, i32 %add
  %10 = call ptr @memcpy(ptr %8, ptr %arrayidx5, i32 16)
  ret i32 0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @crypt_iv_tcw_wipe(ptr nocapture noundef readonly %cc) #18 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %iv_seed = getelementptr inbounds %struct.crypt_config, ptr %cc, i32 0, i32 12, i32 0, i32 1
  %0 = ptrtoint ptr %iv_seed to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iv_seed, align 4
  %iv_size = getelementptr inbounds %struct.crypt_config, ptr %cc, i32 0, i32 14
  %2 = ptrtoint ptr %iv_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %iv_size, align 8
  %4 = call ptr @memset(ptr %1, i32 0, i32 %3)
  %whitening = getelementptr inbounds %struct.crypt_config, ptr %cc, i32 0, i32 12, i32 0, i32 2
  %5 = ptrtoint ptr %whitening to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %whitening, align 4
  %7 = call ptr @memset(ptr %6, i32 0, i32 16)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @crypt_iv_tcw_gen(ptr noundef %cc, ptr noundef %iv, ptr nocapture noundef readonly %dmreq) #2 align 64 {
entry:
  %sector = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %sector) #20
  %iv_sector = getelementptr inbounds %struct.dm_crypt_request, ptr %dmreq, i32 0, i32 3
  %0 = ptrtoint ptr %iv_sector to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %iv_sector, align 8
  %2 = tail call i64 @llvm.bswap.i64(i64 %1)
  %3 = ptrtoint ptr %sector to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %2, ptr %sector, align 8
  %4 = ptrtoint ptr %dmreq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dmreq, align 8
  %bio_in = getelementptr inbounds %struct.convert_context, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %bio_in to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bio_in, align 8
  %bi_opf = getelementptr inbounds %struct.bio, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %bi_opf to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bi_opf, align 8
  %and.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

if.then:                                          ; preds = %entry
  %sg_in = getelementptr inbounds %struct.dm_crypt_request, ptr %dmreq, i32 0, i32 1
  %cipher_flags.i.i = getelementptr inbounds %struct.crypt_config, ptr %cc, i32 0, i32 19
  %10 = ptrtoint ptr %cipher_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %cipher_flags.i.i, align 4
  %and1.i.i.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.not.i, label %if.then.crypt_get_sg_data.exit_crit_edge, label %if.then.i, !prof !413

if.then.crypt_get_sg_data.exit_crit_edge:         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #22
  br label %crypt_get_sg_data.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #22
  %arrayidx.i = getelementptr %struct.dm_crypt_request, ptr %dmreq, i32 0, i32 1, i32 2
  br label %crypt_get_sg_data.exit

crypt_get_sg_data.exit:                           ; preds = %if.then.i, %if.then.crypt_get_sg_data.exit_crit_edge
  %retval.0.i = phi ptr [ %arrayidx.i, %if.then.i ], [ %sg_in, %if.then.crypt_get_sg_data.exit_crit_edge ]
  %12 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %retval.0.i, align 4
  %and.i.i = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i25 = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i25, label %sg_page.exit, label %do.body2.i, !prof !413

do.body2.i:                                       ; preds = %crypt_get_sg_data.exit
  call void @__sanitizer_cov_trace_pc() #22
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #20, !srcloc !420
  unreachable

sg_page.exit:                                     ; preds = %crypt_get_sg_data.exit
  call void @__sanitizer_cov_trace_pc() #22
  %and.i26 = and i32 %13, -4
  %14 = inttoptr i32 %and.i26 to ptr
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %15 = load i32, ptr @pgprot_kernel, align 4
  %or.i = or i32 %15, 512
  %16 = tail call i32 @llvm.read_register.i32(metadata !400) #20
  %and.i.i.i.i.i = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %19, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !421
  %20 = tail call i32 @llvm.read_register.i32(metadata !400) #20
  %and.i.i.i1.i.i = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %23, i32 0, i32 213
  %24 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %inc.i.i.i.i = add i32 %25, 1
  store i32 %inc.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !422
  %call.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef %14, i32 noundef %or.i) #20
  %offset = getelementptr inbounds %struct.scatterlist, ptr %retval.0.i, i32 0, i32 1
  %26 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %offset, align 4
  %add.ptr = getelementptr i8, ptr %call.i.i, i32 %27
  %call4 = tail call fastcc i32 @crypt_iv_tcw_whitening(ptr noundef %cc, ptr noundef %dmreq, ptr noundef %add.ptr)
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i) #20
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !423
  %28 = tail call i32 @llvm.read_register.i32(metadata !400) #20
  %and.i.i.i1.i = and i32 %28, -16384
  %29 = inttoptr i32 %and.i.i.i1.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %task.i.i.i, align 8
  %pagefault_disabled.i.i.i = getelementptr inbounds %struct.task_struct, ptr %31, i32 0, i32 213
  %32 = ptrtoint ptr %pagefault_disabled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %pagefault_disabled.i.i.i, align 8
  %dec.i.i.i = add i32 %33, -1
  store i32 %dec.i.i.i, ptr %pagefault_disabled.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !424
  %34 = tail call i32 @llvm.read_register.i32(metadata !400) #20
  %and.i.i.i.i = and i32 %34, -16384
  %35 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %37, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  br label %if.end

if.end:                                           ; preds = %sg_page.exit, %entry.if.end_crit_edge
  %r.0 = phi i32 [ %call4, %sg_page.exit ], [ 0, %entry.if.end_crit_edge ]
  %iv_seed = getelementptr inbounds %struct.crypt_config, ptr %cc, i32 0, i32 12, i32 0, i32 1
  %38 = ptrtoint ptr %iv_seed to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %iv_seed, align 4
  %incdec.ptr.i = getelementptr i32, ptr %39, i32 1
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %39, align 4
  %incdec.ptr2.i = getelementptr inbounds i32, ptr %sector, i32 1
  %42 = ptrtoint ptr %sector to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %sector, align 8
  %xor.i = xor i32 %43, %41
  %incdec.ptr3.i = getelementptr i32, ptr %iv, i32 1
  %44 = ptrtoint ptr %iv to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %xor.i, ptr %iv, align 4
  %45 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %incdec.ptr.i, align 4
  %47 = ptrtoint ptr %incdec.ptr2.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %incdec.ptr2.i, align 4
  %xor.i.1 = xor i32 %48, %46
  %49 = ptrtoint ptr %incdec.ptr3.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %xor.i.1, ptr %incdec.ptr3.i, align 4
  %iv_size = getelementptr inbounds %struct.crypt_config, ptr %cc, i32 0, i32 14
  %50 = ptrtoint ptr %iv_size to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %iv_size, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %51)
  %cmp8 = icmp ugt i32 %51, 8
  br i1 %cmp8, label %if.else.i, label %if.end.if.end13_crit_edge

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end13

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  %sub = add i32 %51, -8
  %52 = ptrtoint ptr %iv_seed to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %iv_seed, align 4
  %add.ptr11 = getelementptr i8, ptr %53, i32 8
  %arrayidx = getelementptr i8, ptr %iv, i32 8
  call void @__crypto_xor(ptr noundef %arrayidx, ptr noundef %add.ptr11, ptr noundef nonnull %sector, i32 noundef %sub) #20
  br label %if.end13

if.end13:                                         ; preds = %if.else.i, %if.end.if.end13_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %sector) #20
  ret i32 %r.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @crypt_iv_tcw_post(ptr noundef %cc, ptr nocapture noundef readnone %iv, ptr nocapture noundef readonly %dmreq) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dmreq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dmreq, align 8
  %bio_in = getelementptr inbounds %struct.convert_context, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %bio_in to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bio_in, align 8
  %bi_opf = getelementptr inbounds %struct.bio, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %bi_opf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bi_opf, align 8
  %and.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end:                                           ; preds = %entry
  %sg_out = getelementptr inbounds %struct.dm_crypt_request, ptr %dmreq, i32 0, i32 2
  %cipher_flags.i.i = getelementptr inbounds %struct.crypt_config, ptr %cc, i32 0, i32 19
  %6 = ptrtoint ptr %cipher_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %cipher_flags.i.i, align 4
  %and1.i.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.not.i, label %if.end.crypt_get_sg_data.exit_crit_edge, label %if.then.i, !prof !413

if.end.crypt_get_sg_data.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %crypt_get_sg_data.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  %arrayidx.i = getelementptr %struct.dm_crypt_request, ptr %dmreq, i32 0, i32 2, i32 2
  br label %crypt_get_sg_data.exit

crypt_get_sg_data.exit:                           ; preds = %if.then.i, %if.end.crypt_get_sg_data.exit_crit_edge
  %retval.0.i = phi ptr [ %arrayidx.i, %if.then.i ], [ %sg_out, %if.end.crypt_get_sg_data.exit_crit_edge ]
  %8 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %retval.0.i, align 4
  %and.i.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i15 = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i15, label %sg_page.exit, label %do.body2.i, !prof !413

do.body2.i:                                       ; preds = %crypt_get_sg_data.exit
  call void @__sanitizer_cov_trace_pc() #22
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #20, !srcloc !420
  unreachable

sg_page.exit:                                     ; preds = %crypt_get_sg_data.exit
  call void @__sanitizer_cov_trace_pc() #22
  %and.i16 = and i32 %9, -4
  %10 = inttoptr i32 %and.i16 to ptr
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %11 = load i32, ptr @pgprot_kernel, align 4
  %or.i = or i32 %11, 512
  %12 = tail call i32 @llvm.read_register.i32(metadata !400) #20
  %and.i.i.i.i.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %15, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !421
  %16 = tail call i32 @llvm.read_register.i32(metadata !400) #20
  %and.i.i.i1.i.i = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %19, i32 0, i32 213
  %20 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %inc.i.i.i.i = add i32 %21, 1
  store i32 %inc.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !422
  %call.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef %10, i32 noundef %or.i) #20
  %offset = getelementptr inbounds %struct.scatterlist, ptr %retval.0.i, i32 0, i32 1
  %22 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %offset, align 4
  %add.ptr = getelementptr i8, ptr %call.i.i, i32 %23
  %call4 = tail call fastcc i32 @crypt_iv_tcw_whitening(ptr noundef %cc, ptr noundef %dmreq, ptr noundef %add.ptr)
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i) #20
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !423
  %24 = tail call i32 @llvm.read_register.i32(metadata !400) #20
  %and.i.i.i1.i = and i32 %24, -16384
  %25 = inttoptr i32 %and.i.i.i1.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %task.i.i.i, align 8
  %pagefault_disabled.i.i.i = getelementptr inbounds %struct.task_struct, ptr %27, i32 0, i32 213
  %28 = ptrtoint ptr %pagefault_disabled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %pagefault_disabled.i.i.i, align 8
  %dec.i.i.i = add i32 %29, -1
  store i32 %dec.i.i.i, ptr %pagefault_disabled.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !424
  %30 = tail call i32 @llvm.read_register.i32(metadata !400) #20
  %and.i.i.i.i = and i32 %30, -16384
  %31 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %33, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %sg_page.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %sg_page.exit ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @crypt_iv_tcw_whitening(ptr nocapture noundef readonly %cc, ptr nocapture noundef readonly %dmreq, ptr nocapture noundef %data) unnamed_addr #2 align 64 {
entry:
  %buf = alloca [16 x i8], align 4
  %__desc_desc = alloca [376 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %buf.sroa.gep = getelementptr inbounds i32, ptr %buf, i32 1
  %iv_sector = getelementptr inbounds %struct.dm_crypt_request, ptr %dmreq, i32 0, i32 3
  %0 = ptrtoint ptr %iv_sector to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %iv_sector, align 8
  %2 = tail call i64 @llvm.bswap.i64(i64 %1)
  %sector.sroa.0.0.extract.shift = lshr i64 %2, 32
  %sector.sroa.0.0.extract.trunc = trunc i64 %sector.sroa.0.0.extract.shift to i32
  %sector.sroa.6.0.extract.trunc = trunc i64 %2 to i32
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %buf) #20
  %3 = getelementptr inbounds [16 x i8], ptr %buf, i32 0, i32 8
  %4 = getelementptr inbounds [16 x i8], ptr %buf, i32 0, i32 12
  %5 = call ptr @memset(ptr %buf, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 376, ptr nonnull %__desc_desc) #20
  %6 = call ptr @memset(ptr %__desc_desc, i32 255, i32 376)
  %whitening = getelementptr inbounds %struct.crypt_config, ptr %cc, i32 0, i32 12, i32 0, i32 2
  %7 = ptrtoint ptr %whitening to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %whitening, align 4
  %incdec.ptr.i = getelementptr i32, ptr %8, i32 1
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 4
  %xor.i = xor i32 %10, %sector.sroa.0.0.extract.trunc
  %11 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %xor.i, ptr %buf, align 4
  %12 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %incdec.ptr.i, align 4
  %xor.i.1 = xor i32 %13, %sector.sroa.6.0.extract.trunc
  %14 = ptrtoint ptr %buf.sroa.gep to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %xor.i.1, ptr %buf.sroa.gep, align 4
  %add.ptr = getelementptr i8, ptr %8, i32 8
  %incdec.ptr.i46 = getelementptr i8, ptr %8, i32 12
  %15 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %add.ptr, align 4
  %xor.i48 = xor i32 %16, %sector.sroa.0.0.extract.trunc
  %incdec.ptr3.i49 = getelementptr inbounds [16 x i8], ptr %buf, i32 0, i32 12
  %17 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %xor.i48, ptr %3, align 4
  %18 = ptrtoint ptr %incdec.ptr.i46 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %incdec.ptr.i46, align 4
  %xor.i48.1 = xor i32 %19, %sector.sroa.6.0.extract.trunc
  %20 = ptrtoint ptr %incdec.ptr3.i49 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %xor.i48.1, ptr %incdec.ptr3.i49, align 4
  %iv_gen_private = getelementptr inbounds %struct.crypt_config, ptr %cc, i32 0, i32 12
  %21 = ptrtoint ptr %iv_gen_private to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %iv_gen_private, align 4
  %23 = ptrtoint ptr %__desc_desc to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %22, ptr %__desc_desc, align 8
  %base.i.i.i = getelementptr inbounds %struct.crypto_shash, ptr %22, i32 0, i32 2
  %24 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %base.i.i.i, align 128
  %and.i = and i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %crypto_shash_init.exit, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %out

for.cond:                                         ; preds = %if.end7
  %26 = ptrtoint ptr %__desc_desc to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %__desc_desc, align 8
  %base.i.i.i.1 = getelementptr inbounds %struct.crypto_shash, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %base.i.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %base.i.i.i.1, align 128
  %and.i.1 = and i32 %29, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.1)
  %tobool.not.i.1 = icmp eq i32 %and.i.1, 0
  br i1 %tobool.not.i.1, label %crypto_shash_init.exit.1, label %for.cond.out_crit_edge

for.cond.out_crit_edge:                           ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #22
  br label %out

crypto_shash_init.exit.1:                         ; preds = %for.cond
  %__crt_alg.i.i.1 = getelementptr inbounds %struct.crypto_shash, ptr %27, i32 0, i32 2, i32 3
  %30 = ptrtoint ptr %__crt_alg.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %__crt_alg.i.i.1, align 4
  %add.ptr.i.i.i.1 = getelementptr i8, ptr %31, i32 -256
  %32 = ptrtoint ptr %add.ptr.i.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %add.ptr.i.i.i.1, align 128
  %call3.i.1 = call i32 %33(ptr noundef nonnull %__desc_desc) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.1)
  %tobool.not.1 = icmp eq i32 %call3.i.1, 0
  br i1 %tobool.not.1, label %if.end.1, label %crypto_shash_init.exit.1.out_crit_edge

crypto_shash_init.exit.1.out_crit_edge:           ; preds = %crypto_shash_init.exit.1
  call void @__sanitizer_cov_trace_pc() #22
  br label %out

if.end.1:                                         ; preds = %crypto_shash_init.exit.1
  %call4.1 = call i32 @crypto_shash_update(ptr noundef nonnull %__desc_desc, ptr noundef %buf.sroa.gep, i32 noundef 4) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.1)
  %tobool5.not.1 = icmp eq i32 %call4.1, 0
  br i1 %tobool5.not.1, label %if.end7.1, label %if.end.1.out_crit_edge

if.end.1.out_crit_edge:                           ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #22
  br label %out

if.end7.1:                                        ; preds = %if.end.1
  %call10.1 = call i32 @crypto_shash_final(ptr noundef nonnull %__desc_desc, ptr noundef %buf.sroa.gep) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.1)
  %tobool11.not.1 = icmp eq i32 %call10.1, 0
  br i1 %tobool11.not.1, label %for.cond.1, label %if.end7.1.out_crit_edge

if.end7.1.out_crit_edge:                          ; preds = %if.end7.1
  call void @__sanitizer_cov_trace_pc() #22
  br label %out

for.cond.1:                                       ; preds = %if.end7.1
  %34 = ptrtoint ptr %__desc_desc to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %__desc_desc, align 8
  %base.i.i.i.2 = getelementptr inbounds %struct.crypto_shash, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %base.i.i.i.2 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %base.i.i.i.2, align 128
  %and.i.2 = and i32 %37, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.2)
  %tobool.not.i.2 = icmp eq i32 %and.i.2, 0
  br i1 %tobool.not.i.2, label %crypto_shash_init.exit.2, label %for.cond.1.out_crit_edge

for.cond.1.out_crit_edge:                         ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #22
  br label %out

crypto_shash_init.exit.2:                         ; preds = %for.cond.1
  %__crt_alg.i.i.2 = getelementptr inbounds %struct.crypto_shash, ptr %35, i32 0, i32 2, i32 3
  %38 = ptrtoint ptr %__crt_alg.i.i.2 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %__crt_alg.i.i.2, align 4
  %add.ptr.i.i.i.2 = getelementptr i8, ptr %39, i32 -256
  %40 = ptrtoint ptr %add.ptr.i.i.i.2 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %add.ptr.i.i.i.2, align 128
  %call3.i.2 = call i32 %41(ptr noundef nonnull %__desc_desc) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.2)
  %tobool.not.2 = icmp eq i32 %call3.i.2, 0
  br i1 %tobool.not.2, label %if.end.2, label %crypto_shash_init.exit.2.out_crit_edge

crypto_shash_init.exit.2.out_crit_edge:           ; preds = %crypto_shash_init.exit.2
  call void @__sanitizer_cov_trace_pc() #22
  br label %out

if.end.2:                                         ; preds = %crypto_shash_init.exit.2
  %call4.2 = call i32 @crypto_shash_update(ptr noundef nonnull %__desc_desc, ptr noundef %3, i32 noundef 4) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.2)
  %tobool5.not.2 = icmp eq i32 %call4.2, 0
  br i1 %tobool5.not.2, label %if.end7.2, label %if.end.2.out_crit_edge

if.end.2.out_crit_edge:                           ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #22
  br label %out

if.end7.2:                                        ; preds = %if.end.2
  %call10.2 = call i32 @crypto_shash_final(ptr noundef nonnull %__desc_desc, ptr noundef %3) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.2)
  %tobool11.not.2 = icmp eq i32 %call10.2, 0
  br i1 %tobool11.not.2, label %for.cond.2, label %if.end7.2.out_crit_edge

if.end7.2.out_crit_edge:                          ; preds = %if.end7.2
  call void @__sanitizer_cov_trace_pc() #22
  br label %out

for.cond.2:                                       ; preds = %if.end7.2
  %42 = ptrtoint ptr %__desc_desc to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %__desc_desc, align 8
  %base.i.i.i.3 = getelementptr inbounds %struct.crypto_shash, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %base.i.i.i.3 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %base.i.i.i.3, align 128
  %and.i.3 = and i32 %45, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.3)
  %tobool.not.i.3 = icmp eq i32 %and.i.3, 0
  br i1 %tobool.not.i.3, label %crypto_shash_init.exit.3, label %for.cond.2.out_crit_edge

for.cond.2.out_crit_edge:                         ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #22
  br label %out

crypto_shash_init.exit.3:                         ; preds = %for.cond.2
  %__crt_alg.i.i.3 = getelementptr inbounds %struct.crypto_shash, ptr %43, i32 0, i32 2, i32 3
  %46 = ptrtoint ptr %__crt_alg.i.i.3 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %__crt_alg.i.i.3, align 4
  %add.ptr.i.i.i.3 = getelementptr i8, ptr %47, i32 -256
  %48 = ptrtoint ptr %add.ptr.i.i.i.3 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %add.ptr.i.i.i.3, align 128
  %call3.i.3 = call i32 %49(ptr noundef nonnull %__desc_desc) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.3)
  %tobool.not.3 = icmp eq i32 %call3.i.3, 0
  br i1 %tobool.not.3, label %if.end.3, label %crypto_shash_init.exit.3.out_crit_edge

crypto_shash_init.exit.3.out_crit_edge:           ; preds = %crypto_shash_init.exit.3
  call void @__sanitizer_cov_trace_pc() #22
  br label %out

if.end.3:                                         ; preds = %crypto_shash_init.exit.3
  %call4.3 = call i32 @crypto_shash_update(ptr noundef nonnull %__desc_desc, ptr noundef %4, i32 noundef 4) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.3)
  %tobool5.not.3 = icmp eq i32 %call4.3, 0
  br i1 %tobool5.not.3, label %if.end7.3, label %if.end.3.out_crit_edge

if.end.3.out_crit_edge:                           ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #22
  br label %out

if.end7.3:                                        ; preds = %if.end.3
  %call10.3 = call i32 @crypto_shash_final(ptr noundef nonnull %__desc_desc, ptr noundef %4) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.3)
  %tobool11.not.3 = icmp eq i32 %call10.3, 0
  br i1 %tobool11.not.3, label %for.cond.3, label %if.end7.3.out_crit_edge

if.end7.3.out_crit_edge:                          ; preds = %if.end7.3
  call void @__sanitizer_cov_trace_pc() #22
  br label %out

for.cond.3:                                       ; preds = %if.end7.3
  %50 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %4, align 4
  %52 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %buf, align 4
  %xor.i56 = xor i32 %53, %51
  store i32 %xor.i56, ptr %buf, align 4
  %54 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %3, align 4
  %56 = ptrtoint ptr %buf.sroa.gep to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %buf.sroa.gep, align 4
  %xor.i66 = xor i32 %57, %55
  store i32 %xor.i66, ptr %buf.sroa.gep, align 4
  br label %for.body20

crypto_shash_init.exit:                           ; preds = %entry
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_shash, ptr %22, i32 0, i32 2, i32 3
  %58 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %__crt_alg.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %59, i32 -256
  %60 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %add.ptr.i.i.i, align 128
  %call3.i = call i32 %61(ptr noundef nonnull %__desc_desc) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not = icmp eq i32 %call3.i, 0
  br i1 %tobool.not, label %if.end, label %crypto_shash_init.exit.out_crit_edge

crypto_shash_init.exit.out_crit_edge:             ; preds = %crypto_shash_init.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %out

if.end:                                           ; preds = %crypto_shash_init.exit
  %call4 = call i32 @crypto_shash_update(ptr noundef nonnull %__desc_desc, ptr noundef nonnull %buf, i32 noundef 4) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %out

if.end7:                                          ; preds = %if.end
  %call10 = call i32 @crypto_shash_final(ptr noundef nonnull %__desc_desc, ptr noundef nonnull %buf) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %for.cond, label %if.end7.out_crit_edge

if.end7.out_crit_edge:                            ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #22
  br label %out

for.body20:                                       ; preds = %for.body20.for.body20_crit_edge, %for.cond.3
  %i.188 = phi i32 [ %inc25, %for.body20.for.body20_crit_edge ], [ 0, %for.cond.3 ]
  %mul21 = shl i32 %i.188, 3
  %add.ptr22 = getelementptr i8, ptr %data, i32 %mul21
  %incdec.ptr2.i76 = getelementptr i32, ptr %add.ptr22, i32 1
  %62 = ptrtoint ptr %add.ptr22 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %add.ptr22, align 4
  %xor.i77 = xor i32 %63, %xor.i56
  store i32 %xor.i77, ptr %add.ptr22, align 4
  %64 = ptrtoint ptr %incdec.ptr2.i76 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %incdec.ptr2.i76, align 4
  %xor.i77.1 = xor i32 %65, %xor.i66
  store i32 %xor.i77.1, ptr %incdec.ptr2.i76, align 4
  %inc25 = add nuw nsw i32 %i.188, 1
  %exitcond.not = icmp eq i32 %inc25, 64
  br i1 %exitcond.not, label %for.body20.out_crit_edge, label %for.body20.for.body20_crit_edge

for.body20.for.body20_crit_edge:                  ; preds = %for.body20
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body20

for.body20.out_crit_edge:                         ; preds = %for.body20
  call void @__sanitizer_cov_trace_pc() #22
  br label %out

out:                                              ; preds = %for.body20.out_crit_edge, %if.end7.out_crit_edge, %if.end.out_crit_edge, %crypto_shash_init.exit.out_crit_edge, %if.end7.3.out_crit_edge, %if.end.3.out_crit_edge, %crypto_shash_init.exit.3.out_crit_edge, %for.cond.2.out_crit_edge, %if.end7.2.out_crit_edge, %if.end.2.out_crit_edge, %crypto_shash_init.exit.2.out_crit_edge, %for.cond.1.out_crit_edge, %if.end7.1.out_crit_edge, %if.end.1.out_crit_edge, %crypto_shash_init.exit.1.out_crit_edge, %for.cond.out_crit_edge, %entry.out_crit_edge
  %r.1 = phi i32 [ %call3.i, %crypto_shash_init.exit.out_crit_edge ], [ %call4, %if.end.out_crit_edge ], [ %call10, %if.end7.out_crit_edge ], [ -126, %entry.out_crit_edge ], [ -126, %for.cond.out_crit_edge ], [ %call3.i.1, %crypto_shash_init.exit.1.out_crit_edge ], [ %call4.1, %if.end.1.out_crit_edge ], [ %call10.1, %if.end7.1.out_crit_edge ], [ -126, %for.cond.1.out_crit_edge ], [ %call3.i.2, %crypto_shash_init.exit.2.out_crit_edge ], [ %call4.2, %if.end.2.out_crit_edge ], [ %call10.2, %if.end7.2.out_crit_edge ], [ -126, %for.cond.2.out_crit_edge ], [ %call3.i.3, %crypto_shash_init.exit.3.out_crit_edge ], [ %call4.3, %if.end.3.out_crit_edge ], [ %call10.3, %if.end7.3.out_crit_edge ], [ 0, %for.body20.out_crit_edge ]
  %66 = call ptr @memset(ptr %buf, i32 0, i32 16)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %buf) #20, !srcloc !425
  call void @llvm.lifetime.end.p0(i64 376, ptr nonnull %__desc_desc) #20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %buf) #20
  ret i32 %r.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_shash_final(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @crypt_iv_random_gen(ptr nocapture noundef readonly %cc, ptr noundef %iv, ptr nocapture noundef readnone %dmreq) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %iv_size = getelementptr inbounds %struct.crypt_config, ptr %cc, i32 0, i32 14
  %0 = ptrtoint ptr %iv_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %iv_size, align 8
  tail call void @get_random_bytes(ptr noundef %iv, i32 noundef %1) #20
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hex2bin(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @crypt_setkey(ptr noundef %cc) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %key_size.i = getelementptr inbounds %struct.crypt_config, ptr %cc, i32 0, i32 23
  %0 = ptrtoint ptr %key_size.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %key_size.i, align 8
  %key_extra_size.i = getelementptr inbounds %struct.crypt_config, ptr %cc, i32 0, i32 25
  %2 = ptrtoint ptr %key_extra_size.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %key_extra_size.i, align 8
  %tfms_count.i = getelementptr inbounds %struct.crypt_config, ptr %cc, i32 0, i32 18
  %4 = ptrtoint ptr %tfms_count.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tfms_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i.i.i = icmp eq i32 %5, 0
  %6 = tail call i32 @llvm.ctlz.i32(i32 %5, i1 true) #20, !range !411
  %sub.i.op.i.i = xor i32 %6, 31
  %sub.i.i = select i1 %tobool.not.i.i.i, i32 -1, i32 %sub.i.op.i.i
  %sub.i = sub i32 %1, %3
  %shr.i = lshr i32 %sub.i, %sub.i.i
  %cipher_flags.i.i = getelementptr inbounds %struct.crypt_config, ptr %cc, i32 0, i32 19
  %7 = ptrtoint ptr %cipher_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %cipher_flags.i.i, align 4
  %and1.i.i.i = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.not.i, label %entry.if.end5_crit_edge, label %crypt_integrity_hmac.exit

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end5

crypt_integrity_hmac.exit:                        ; preds = %entry
  %key_mac_size.i = getelementptr inbounds %struct.crypt_config, ptr %cc, i32 0, i32 26
  %9 = ptrtoint ptr %key_mac_size.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %key_mac_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.i.not = icmp eq i32 %10, 0
  br i1 %tobool.i.not, label %crypt_integrity_hmac.exit.if.end5_crit_edge, label %if.then

crypt_integrity_hmac.exit.if.end5_crit_edge:      ; preds = %crypt_integrity_hmac.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end5

if.then:                                          ; preds = %crypt_integrity_hmac.exit
  %11 = ptrtoint ptr %key_mac_size.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %key_mac_size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i, i32 %12)
  %cmp = icmp ult i32 %shr.i, %12
  br i1 %cmp, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #22
  %authenc_key = getelementptr inbounds %struct.crypt_config, ptr %cc, i32 0, i32 36
  %13 = ptrtoint ptr %authenc_key to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %authenc_key, align 8
  %key = getelementptr inbounds %struct.crypt_config, ptr %cc, i32 0, i32 37
  %sub = sub i32 %shr.i, %12
  %add.ptr.i = getelementptr i8, ptr %14, i32 4
  %15 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %sub, ptr %add.ptr.i, align 4
  %16 = ptrtoint ptr %14 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 8, ptr %14, align 2
  %rta_type.i = getelementptr inbounds %struct.rtattr, ptr %14, i32 0, i32 1
  %17 = ptrtoint ptr %rta_type.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 1, ptr %rta_type.i, align 2
  %add.ptr2.i = getelementptr i8, ptr %14, i32 8
  %add.ptr3.i = getelementptr i8, ptr %key, i32 %sub
  %18 = call ptr @memcpy(ptr %add.ptr2.i, ptr %add.ptr3.i, i32 %12)
  %add.ptr4.i = getelementptr i8, ptr %add.ptr2.i, i32 %12
  %19 = call ptr @memcpy(ptr %add.ptr4.i, ptr %key, i32 %sub)
  br label %if.end5

if.end5:                                          ; preds = %if.end, %crypt_integrity_hmac.exit.if.end5_crit_edge, %entry.if.end5_crit_edge
  %20 = ptrtoint ptr %tfms_count.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tfms_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp6102.not = icmp eq i32 %21, 0
  br i1 %cmp6102.not, label %if.end5.for.end_crit_edge, label %for.body.lr.ph

if.end5.for.end_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end5
  %key_mac_size.i73 = getelementptr inbounds %struct.crypt_config, ptr %cc, i32 0, i32 26
  %cipher_tfm = getelementptr inbounds %struct.crypt_config, ptr %cc, i32 0, i32 17
  %authenc_key9 = getelementptr inbounds %struct.crypt_config, ptr %cc, i32 0, i32 36
  %key16 = getelementptr inbounds %struct.crypt_config, ptr %cc, i32 0, i32 37
  br label %for.body

for.body:                                         ; preds = %if.end28.for.body_crit_edge, %for.body.lr.ph
  %22 = phi i32 [ %21, %for.body.lr.ph ], [ %45, %if.end28.for.body_crit_edge ]
  %i.0104 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end28.for.body_crit_edge ]
  %err.0103 = phi i32 [ 0, %for.body.lr.ph ], [ %spec.select, %if.end28.for.body_crit_edge ]
  %23 = ptrtoint ptr %cipher_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %cipher_flags.i.i, align 4
  %and1.i.i.i71 = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i71)
  %tobool.i.not.i72 = icmp eq i32 %and1.i.i.i71, 0
  br i1 %tobool.i.not.i72, label %for.body.if.else_crit_edge, label %crypt_integrity_hmac.exit76

for.body.if.else_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.else

crypt_integrity_hmac.exit76:                      ; preds = %for.body
  %25 = ptrtoint ptr %key_mac_size.i73 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %key_mac_size.i73, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.i74.not = icmp eq i32 %26, 0
  br i1 %tobool.i74.not, label %crypt_integrity_hmac.exit76.if.else_crit_edge, label %if.then8

crypt_integrity_hmac.exit76.if.else_crit_edge:    ; preds = %crypt_integrity_hmac.exit76
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.else

if.then8:                                         ; preds = %crypt_integrity_hmac.exit76
  call void @__sanitizer_cov_trace_pc() #22
  %27 = ptrtoint ptr %cipher_tfm to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %cipher_tfm, align 8
  %arrayidx = getelementptr ptr, ptr %28, i32 %i.0104
  %29 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx, align 4
  %31 = ptrtoint ptr %authenc_key9 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %authenc_key9, align 8
  %33 = ptrtoint ptr %key_size.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %key_size.i, align 8
  %35 = ptrtoint ptr %key_extra_size.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %key_extra_size.i, align 8
  %37 = tail call i32 @llvm.ctlz.i32(i32 %22, i1 true) #20, !range !411
  %sub.i.op.i.i.i = xor i32 %37, 31
  %sub.i.i77 = sub i32 %34, %36
  %shr.i.i = lshr i32 %sub.i.i77, %sub.i.op.i.i.i
  %add.i = add i32 %shr.i.i, 8
  %call11 = tail call i32 @crypto_aead_setkey(ptr noundef %30, ptr noundef %32, i32 noundef %add.i) #20
  br label %if.end28

if.else:                                          ; preds = %crypt_integrity_hmac.exit76.if.else_crit_edge, %for.body.if.else_crit_edge
  %38 = ptrtoint ptr %cipher_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %cipher_flags.i.i, align 4
  %and1.i.i = and i32 %39, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i78.not = icmp eq i32 %and1.i.i, 0
  %40 = ptrtoint ptr %cipher_tfm to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %cipher_tfm, align 8
  %arrayidx21 = getelementptr ptr, ptr %41, i32 %i.0104
  %42 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx21, align 4
  %mul24 = mul i32 %i.0104, %shr.i
  %add.ptr25 = getelementptr i8, ptr %key16, i32 %mul24
  br i1 %tobool.i78.not, label %if.else19, label %if.then13

if.then13:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #22
  %call18 = tail call i32 @crypto_aead_setkey(ptr noundef %43, ptr noundef %add.ptr25, i32 noundef %shr.i) #20
  br label %if.end28

if.else19:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #22
  %call26 = tail call i32 @crypto_skcipher_setkey(ptr noundef %43, ptr noundef %add.ptr25, i32 noundef %shr.i) #20
  br label %if.end28

if.end28:                                         ; preds = %if.else19, %if.then13, %if.then8
  %r.0 = phi i32 [ %call11, %if.then8 ], [ %call18, %if.then13 ], [ %call26, %if.else19 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %r.0)
  %tobool.not = icmp eq i32 %r.0, 0
  %spec.select = select i1 %tobool.not, i32 %err.0103, i32 %r.0
  %inc = add nuw i32 %i.0104, 1
  %44 = ptrtoint ptr %tfms_count.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %tfms_count.i, align 4
  %cmp6 = icmp ult i32 %inc, %45
  br i1 %cmp6, label %if.end28.for.body_crit_edge, label %if.end28.for.end_crit_edge

if.end28.for.end_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end

if.end28.for.body_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body

for.end:                                          ; preds = %if.end28.for.end_crit_edge, %if.end5.for.end_crit_edge
  %err.0.lcssa = phi i32 [ 0, %if.end5.for.end_crit_edge ], [ %spec.select, %if.end28.for.end_crit_edge ]
  %.lcssa = phi i32 [ 0, %if.end5.for.end_crit_edge ], [ %45, %if.end28.for.end_crit_edge ]
  %46 = ptrtoint ptr %cipher_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %cipher_flags.i.i, align 4
  %and1.i.i.i80 = and i32 %47, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i80)
  %tobool.i.not.i81 = icmp eq i32 %and1.i.i.i80, 0
  br i1 %tobool.i.not.i81, label %for.end.cleanup_crit_edge, label %crypt_integrity_hmac.exit85

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

crypt_integrity_hmac.exit85:                      ; preds = %for.end
  %key_mac_size.i82 = getelementptr inbounds %struct.crypt_config, ptr %cc, i32 0, i32 26
  %48 = ptrtoint ptr %key_mac_size.i82 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %key_mac_size.i82, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool.i83.not = icmp eq i32 %49, 0
  br i1 %tobool.i83.not, label %crypt_integrity_hmac.exit85.cleanup_crit_edge, label %if.then32

crypt_integrity_hmac.exit85.cleanup_crit_edge:    ; preds = %crypt_integrity_hmac.exit85
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.then32:                                        ; preds = %crypt_integrity_hmac.exit85
  call void @__sanitizer_cov_trace_pc() #22
  %authenc_key33 = getelementptr inbounds %struct.crypt_config, ptr %cc, i32 0, i32 36
  %50 = ptrtoint ptr %authenc_key33 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %authenc_key33, align 8
  %52 = ptrtoint ptr %key_size.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %key_size.i, align 8
  %54 = ptrtoint ptr %key_extra_size.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %key_extra_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.lcssa)
  %tobool.not.i.i.i.i93 = icmp eq i32 %.lcssa, 0
  %56 = tail call i32 @llvm.ctlz.i32(i32 %.lcssa, i1 true) #20, !range !411
  %sub.i.op.i.i.i94 = xor i32 %56, 31
  %sub.i.i.i95 = select i1 %tobool.not.i.i.i.i93, i32 -1, i32 %sub.i.op.i.i.i94
  %sub.i.i98 = sub i32 %53, %55
  %shr.i.i99 = lshr i32 %sub.i.i98, %sub.i.i.i95
  %add.i100 = add i32 %shr.i.i99, 8
  %57 = call ptr @memset(ptr %51, i32 0, i32 %add.i100)
  tail call void asm sideeffect "", "r,~{memory}"(ptr %51) #20, !srcloc !425
  br label %cleanup

cleanup:                                          ; preds = %if.then32, %crypt_integrity_hmac.exit85.cleanup_crit_edge, %for.end.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then.cleanup_crit_edge ], [ %err.0.lcssa, %if.then32 ], [ %err.0.lcssa, %crypt_integrity_hmac.exit85.cleanup_crit_edge ], [ %err.0.lcssa, %for.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_key_user(ptr nocapture noundef %cc, ptr noundef %key) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %sem.i = getelementptr inbounds %struct.key, ptr %key, i32 0, i32 4
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %sem.i, i32 noundef 4) #20
  %0 = ptrtoint ptr %sem.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %sem.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.i.not.i = icmp eq i32 %1, 0
  br i1 %cmp.i.not.i, label %land.lhs.true.i, label %entry.user_key_payload_locked.exit_crit_edge

entry.user_key_payload_locked.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %user_key_payload_locked.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.user_key_payload_locked.exit_crit_edge, label %land.lhs.true3.i

land.lhs.true.i.user_key_payload_locked.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %user_key_payload_locked.exit

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %.b6.i = load i1, ptr @user_key_payload_locked.__warned, align 1
  br i1 %.b6.i, label %land.lhs.true3.i.user_key_payload_locked.exit_crit_edge, label %if.then.i

land.lhs.true3.i.user_key_payload_locked.exit_crit_edge: ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %user_key_payload_locked.exit

if.then.i:                                        ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #22
  store i1 true, ptr @user_key_payload_locked.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.105, i32 noundef 53, ptr noundef nonnull @.str.106) #20
  br label %user_key_payload_locked.exit

user_key_payload_locked.exit:                     ; preds = %if.then.i, %land.lhs.true3.i.user_key_payload_locked.exit_crit_edge, %land.lhs.true.i.user_key_payload_locked.exit_crit_edge, %entry.user_key_payload_locked.exit_crit_edge
  %2 = getelementptr inbounds %struct.key, ptr %key, i32 0, i32 17
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %user_key_payload_locked.exit.cleanup_crit_edge, label %if.end

user_key_payload_locked.exit.cleanup_crit_edge:   ; preds = %user_key_payload_locked.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end:                                           ; preds = %user_key_payload_locked.exit
  %key_size = getelementptr inbounds %struct.crypt_config, ptr %cc, i32 0, i32 23
  %5 = ptrtoint ptr %key_size to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %key_size, align 8
  %datalen = getelementptr inbounds %struct.user_key_payload, ptr %4, i32 0, i32 1
  %7 = ptrtoint ptr %datalen to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %datalen, align 8
  %conv = zext i16 %8 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %conv)
  %cmp.not = icmp eq i32 %6, %conv
  br i1 %cmp.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  %key4 = getelementptr inbounds %struct.crypt_config, ptr %cc, i32 0, i32 37
  %data = getelementptr inbounds %struct.user_key_payload, ptr %4, i32 0, i32 3
  %9 = call ptr @memcpy(ptr %key4, ptr %data, i32 %6)
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %user_key_payload_locked.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end3 ], [ -128, %user_key_payload_locked.exit.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @set_key_encrypted(ptr nocapture noundef %cc, ptr nocapture noundef readonly %key) unnamed_addr #18 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.key, ptr %key, i32 0, i32 17
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end:                                           ; preds = %entry
  %key_size = getelementptr inbounds %struct.crypt_config, ptr %cc, i32 0, i32 23
  %3 = ptrtoint ptr %key_size to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %key_size, align 8
  %decrypted_datalen = getelementptr inbounds %struct.encrypted_key_payload, ptr %2, i32 0, i32 7
  %5 = ptrtoint ptr %decrypted_datalen to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %decrypted_datalen, align 2
  %conv = zext i16 %6 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %conv)
  %cmp.not = icmp eq i32 %4, %conv
  br i1 %cmp.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  %key4 = getelementptr inbounds %struct.crypt_config, ptr %cc, i32 0, i32 37
  %decrypted_data = getelementptr inbounds %struct.encrypted_key_payload, ptr %2, i32 0, i32 10
  %7 = ptrtoint ptr %decrypted_data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %decrypted_data, align 4
  %9 = call ptr @memcpy(ptr %key4, ptr %8, i32 %4)
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end3 ], [ -128, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @set_key_trusted(ptr nocapture noundef %cc, ptr nocapture noundef readonly %key) unnamed_addr #18 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.key, ptr %key, i32 0, i32 17
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end:                                           ; preds = %entry
  %key_size = getelementptr inbounds %struct.crypt_config, ptr %cc, i32 0, i32 23
  %3 = ptrtoint ptr %key_size to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %key_size, align 8
  %key_len = getelementptr inbounds %struct.trusted_key_payload, ptr %2, i32 0, i32 1
  %5 = ptrtoint ptr %key_len to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %key_len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %6)
  %cmp.not = icmp eq i32 %4, %6
  br i1 %cmp.not, label %if.end2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end2:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  %key3 = getelementptr inbounds %struct.crypt_config, ptr %cc, i32 0, i32 37
  %key4 = getelementptr inbounds %struct.trusted_key_payload, ptr %2, i32 0, i32 5
  %7 = call ptr @memcpy(ptr %key3, ptr %key4, i32 %4)
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end2 ], [ -128, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @key_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @request_key_tag(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_aead_setkey(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mempool_kmalloc(i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mempool_kfree(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @percpu_counter_add_batch(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_pages(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dm_table_get_md(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dm_device_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_aead_setauthsize(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_should_stop() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_start_plug(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_first(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_erase(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_finish_plug(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @submit_bio_noacct(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_audit_log_ti(i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kthread_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bioset_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mempool_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @percpu_counter_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_put_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__percpu_counter_sum(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_accept_partial_bio(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dm_per_bio_data(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @mempool_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @kcryptd_io_read(ptr noundef %io, i32 noundef %gfp) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io, align 128
  %base_bio = getelementptr inbounds %struct.dm_crypt_io, ptr %io, i32 0, i32 1
  %2 = ptrtoint ptr %base_bio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base_bio, align 4
  %bs = getelementptr inbounds %struct.crypt_config, ptr %1, i32 0, i32 34
  %call = tail call ptr @bio_clone_fast(ptr noundef %3, i32 noundef %gfp, ptr noundef %bs) #20
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end:                                           ; preds = %entry
  %io_pending.i = getelementptr inbounds %struct.dm_crypt_io, ptr %io, i32 0, i32 7
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %io_pending.i, i32 noundef 4) #20
  tail call void @llvm.prefetch.p0(ptr %io_pending.i, i32 1, i32 3, i32 1) #20
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %io_pending.i, ptr %io_pending.i, i32 1, ptr elementtype(i32) %io_pending.i) #20, !srcloc !426
  %5 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %io, align 128
  %bi_private.i = getelementptr inbounds %struct.bio, ptr %call, i32 0, i32 11
  %7 = ptrtoint ptr %bi_private.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %io, ptr %bi_private.i, align 4
  %bi_end_io.i = getelementptr inbounds %struct.bio, ptr %call, i32 0, i32 10
  %8 = ptrtoint ptr %bi_end_io.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @crypt_endio, ptr %bi_end_io.i, align 8
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %6, align 8
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %bi_flags.i.i.i = getelementptr inbounds %struct.bio, ptr %call, i32 0, i32 3
  %13 = ptrtoint ptr %bi_flags.i.i.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %bi_flags.i.i.i, align 4
  %conv1.i.i.i = and i16 %14, -2049
  store i16 %conv1.i.i.i, ptr %bi_flags.i.i.i, align 4
  %bi_bdev.i.i = getelementptr inbounds %struct.bio, ptr %call, i32 0, i32 1
  %15 = ptrtoint ptr %bi_bdev.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bi_bdev.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %16, %12
  br i1 %cmp.not.i.i, label %if.end.clone_init.exit_crit_edge, label %if.then.i.i

if.end.clone_init.exit_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %clone_init.exit

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  %conv1.i8.i.i = and i16 %14, -2177
  %17 = ptrtoint ptr %bi_flags.i.i.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv1.i8.i.i, ptr %bi_flags.i.i.i, align 4
  br label %clone_init.exit

clone_init.exit:                                  ; preds = %if.then.i.i, %if.end.clone_init.exit_crit_edge
  %18 = ptrtoint ptr %bi_bdev.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %12, ptr %bi_bdev.i.i, align 4
  tail call void @bio_associate_blkg(ptr noundef nonnull %call) #20
  %19 = ptrtoint ptr %base_bio to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base_bio, align 4
  %bi_opf.i = getelementptr inbounds %struct.bio, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %bi_opf.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %bi_opf.i, align 8
  %bi_opf2.i = getelementptr inbounds %struct.bio, ptr %call, i32 0, i32 2
  %23 = ptrtoint ptr %bi_opf2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %bi_opf2.i, align 8
  %start = getelementptr inbounds %struct.crypt_config, ptr %1, i32 0, i32 1
  %24 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %start, align 8
  %sector = getelementptr inbounds %struct.dm_crypt_io, ptr %io, i32 0, i32 9
  %26 = ptrtoint ptr %sector to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %sector, align 8
  %add = add i64 %27, %25
  %bi_iter = getelementptr inbounds %struct.bio, ptr %call, i32 0, i32 8
  %28 = ptrtoint ptr %bi_iter to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %add, ptr %bi_iter, align 8
  %bi_size.i = getelementptr inbounds %struct.bio, ptr %call, i32 0, i32 8, i32 1
  %29 = ptrtoint ptr %bi_size.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %bi_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %30)
  %tobool.not.i = icmp ult i32 %30, 512
  br i1 %tobool.not.i, label %clone_init.exit.if.end5_crit_edge, label %lor.lhs.false.i

clone_init.exit.if.end5_crit_edge:                ; preds = %clone_init.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end5

lor.lhs.false.i:                                  ; preds = %clone_init.exit
  %31 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %io, align 128
  %on_disk_tag_size.i = getelementptr inbounds %struct.crypt_config, ptr %32, i32 0, i32 29
  %33 = ptrtoint ptr %on_disk_tag_size.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %on_disk_tag_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool1.not.i = icmp eq i32 %34, 0
  br i1 %tobool1.not.i, label %lor.lhs.false.i.if.end5_crit_edge, label %if.end.i

lor.lhs.false.i.if.end5_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end5

if.end.i:                                         ; preds = %lor.lhs.false.i
  %call.i = tail call ptr @bio_integrity_alloc(ptr noundef nonnull %call, i32 noundef 3072, i32 noundef 1) #20
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end.i.if.then4_crit_edge, label %if.end5.i

if.end.i.if.then4_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then4

if.end5.i:                                        ; preds = %if.end.i
  %35 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %io, align 128
  %on_disk_tag_size7.i = getelementptr inbounds %struct.crypt_config, ptr %36, i32 0, i32 29
  %37 = ptrtoint ptr %on_disk_tag_size7.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %on_disk_tag_size7.i, align 8
  %39 = ptrtoint ptr %bi_size.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %bi_size.i, align 8
  %shr10.i = lshr i32 %40, 9
  %sector_shift.i = getelementptr inbounds %struct.crypt_config, ptr %36, i32 0, i32 16
  %41 = ptrtoint ptr %sector_shift.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %sector_shift.i, align 2
  %conv.i = zext i8 %42 to i32
  %shr12.i = lshr i32 %shr10.i, %conv.i
  %mul.i = mul i32 %shr12.i, %38
  %bip_iter.i = getelementptr inbounds %struct.bio_integrity_payload, ptr %call.i, i32 0, i32 1
  %bi_size13.i = getelementptr inbounds %struct.bio_integrity_payload, ptr %call.i, i32 0, i32 1, i32 1
  %43 = ptrtoint ptr %bi_size13.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %mul.i, ptr %bi_size13.i, align 4
  %44 = load ptr, ptr %io, align 128
  %start.i = getelementptr inbounds %struct.crypt_config, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %start.i to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %start.i, align 8
  %47 = ptrtoint ptr %sector to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %sector, align 8
  %add.i = add i64 %48, %46
  %49 = ptrtoint ptr %bip_iter.i to i32
  call void @__asan_storeN_noabort(i32 %49, i32 8)
  store i64 %add.i, ptr %bip_iter.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %50 = load ptr, ptr @mem_map, align 4
  %integrity_metadata.i = getelementptr inbounds %struct.dm_crypt_io, ptr %io, i32 0, i32 2
  %51 = ptrtoint ptr %integrity_metadata.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %integrity_metadata.i, align 8
  %53 = ptrtoint ptr %52 to i32
  %sub.i = add i32 %53, 1073741824
  %shr16.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %50, i32 %shr16.i
  %and.i = and i32 %53, 4095
  %call20.i = tail call i32 @bio_integrity_add_page(ptr noundef nonnull %call, ptr noundef %add.ptr.i, i32 noundef %mul.i, i32 noundef %and.i) #20
  call void @__sanitizer_cov_trace_cmp4(i32 %call20.i, i32 %mul.i)
  %cmp.not.i = icmp eq i32 %call20.i, %mul.i
  br i1 %cmp.not.i, label %if.end5.i.if.end5_crit_edge, label %if.end5.i.if.then4_crit_edge

if.end5.i.if.then4_crit_edge:                     ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then4

if.end5.i.if.end5_crit_edge:                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end5

if.then4:                                         ; preds = %if.end5.i.if.then4_crit_edge, %if.end.i.if.then4_crit_edge
  tail call fastcc void @crypt_dec_pending(ptr noundef %io)
  tail call void @bio_put(ptr noundef nonnull %call) #20
  br label %cleanup

if.end5:                                          ; preds = %if.end5.i.if.end5_crit_edge, %lor.lhs.false.i.if.end5_crit_edge, %clone_init.exit.if.end5_crit_edge
  tail call void @submit_bio_noacct(ptr noundef nonnull %call) #20
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then4 ], [ 0, %if.end5 ], [ 1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @kcryptd_queue_crypt(ptr noundef %io) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io, align 128
  %base_bio = getelementptr inbounds %struct.dm_crypt_io, ptr %io, i32 0, i32 1
  %2 = ptrtoint ptr %base_bio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base_bio, align 4
  %bi_opf = getelementptr inbounds %struct.bio, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %bi_opf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bi_opf, align 8
  %and.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  %flags = getelementptr inbounds %struct.crypt_config, ptr %1, i32 0, i32 22
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %flags, align 4
  br i1 %tobool.i.not, label %land.lhs.true, label %land.lhs.true9

land.lhs.true:                                    ; preds = %entry
  %8 = and i32 %7, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %land.lhs.true.do.body32_crit_edge, label %land.lhs.true.if.then_crit_edge

land.lhs.true.if.then_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then

land.lhs.true.do.body32_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.body32

land.lhs.true9:                                   ; preds = %entry
  %9 = and i32 %7, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool12.not = icmp eq i32 %9, 0
  br i1 %tobool12.not, label %land.lhs.true9.do.body32_crit_edge, label %land.lhs.true9.if.then_crit_edge

land.lhs.true9.if.then_crit_edge:                 ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then

land.lhs.true9.do.body32_crit_edge:               ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.body32

if.then:                                          ; preds = %land.lhs.true9.if.then_crit_edge, %land.lhs.true.if.then_crit_edge
  %10 = tail call i32 @llvm.read_register.i32(metadata !400) #20
  %and.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i to ptr
  %preempt_count.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %preempt_count.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %preempt_count.i, align 4
  %and14 = and i32 %13, 983040
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %lor.lhs.false16, label %if.then.if.then28_crit_edge

if.then.if.then28_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then28

lor.lhs.false16:                                  ; preds = %if.then
  %14 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #20, !srcloc !427
  %and.i61 = and i32 %14, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i61)
  %tobool27.not = icmp eq i32 %and.i61, 0
  br i1 %tobool27.not, label %if.end, label %lor.lhs.false16.if.then28_crit_edge

lor.lhs.false16.if.then28_crit_edge:              ; preds = %lor.lhs.false16
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then28

if.then28:                                        ; preds = %lor.lhs.false16.if.then28_crit_edge, %if.then.if.then28_crit_edge
  %tasklet = getelementptr inbounds %struct.dm_crypt_io, ptr %io, i32 0, i32 5
  %work = getelementptr inbounds %struct.dm_crypt_io, ptr %io, i32 0, i32 4
  %15 = ptrtoint ptr %work to i32
  tail call void @tasklet_init(ptr noundef %tasklet, ptr noundef nonnull @kcryptd_crypt_tasklet, i32 noundef %15) #20
  %state.i = getelementptr inbounds %struct.dm_crypt_io, ptr %io, i32 0, i32 5, i32 1
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then28.cleanup_crit_edge

if.then28.cleanup_crit_edge:                      ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.then.i:                                        ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #22
  tail call void @__tasklet_schedule(ptr noundef %tasklet) #20
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false16
  call void @__sanitizer_cov_trace_pc() #22
  %work30 = getelementptr inbounds %struct.dm_crypt_io, ptr %io, i32 0, i32 4
  tail call void @kcryptd_crypt(ptr noundef %work30)
  br label %cleanup

do.body32:                                        ; preds = %land.lhs.true9.do.body32_crit_edge, %land.lhs.true.do.body32_crit_edge
  %work33 = getelementptr inbounds %struct.dm_crypt_io, ptr %io, i32 0, i32 4
  tail call void @__init_work(ptr noundef %work33, i32 noundef 0) #20
  %16 = ptrtoint ptr %work33 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -64, ptr %work33, align 16
  %lockdep_map = getelementptr inbounds %struct.dm_crypt_io, ptr %io, i32 0, i32 4, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.123, ptr noundef nonnull @kcryptd_queue_crypt.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #20
  %entry37 = getelementptr inbounds %struct.dm_crypt_io, ptr %io, i32 0, i32 4, i32 1
  %17 = ptrtoint ptr %entry37 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %entry37, ptr %entry37, align 4
  %prev.i = getelementptr inbounds %struct.dm_crypt_io, ptr %io, i32 0, i32 4, i32 1, i32 1
  %18 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %entry37, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.dm_crypt_io, ptr %io, i32 0, i32 4, i32 2
  %19 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @kcryptd_crypt, ptr %func, align 4
  %crypt_queue = getelementptr inbounds %struct.crypt_config, ptr %1, i32 0, i32 4
  %20 = ptrtoint ptr %crypt_queue to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %crypt_queue, align 4
  %call.i62 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %21, ptr noundef %work33) #20
  br label %cleanup

cleanup:                                          ; preds = %do.body32, %if.end, %if.then.i, %if.then28.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_associate_blkg(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bio_clone_fast(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @crypt_dec_pending(ptr noundef %io) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io, align 128
  %base_bio2 = getelementptr inbounds %struct.dm_crypt_io, ptr %io, i32 0, i32 1
  %2 = ptrtoint ptr %base_bio2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base_bio2, align 4
  %error3 = getelementptr inbounds %struct.dm_crypt_io, ptr %io, i32 0, i32 8
  %4 = ptrtoint ptr %error3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %error3, align 4
  %io_pending = getelementptr inbounds %struct.dm_crypt_io, ptr %io, i32 0, i32 7
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %io_pending, i32 noundef 4) #20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #20, !srcloc !428
  tail call void @llvm.prefetch.p0(ptr %io_pending, i32 1, i32 3, i32 1) #20
  %6 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %io_pending, ptr %io_pending, i32 1, ptr elementtype(i32) %io_pending) #20, !srcloc !429
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %6, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #20, !srcloc !430
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end:                                           ; preds = %entry
  %r = getelementptr inbounds %struct.dm_crypt_io, ptr %io, i32 0, i32 6, i32 7
  %7 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %r, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %if.end.if.end7_crit_edge, label %if.then4

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end7

if.then4:                                         ; preds = %if.end
  %cipher_flags.i.i = getelementptr inbounds %struct.crypt_config, ptr %1, i32 0, i32 19
  %9 = ptrtoint ptr %cipher_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %cipher_flags.i.i, align 4
  %per_bio_data_size.i5.i = getelementptr inbounds %struct.crypt_config, ptr %1, i32 0, i32 21
  %11 = ptrtoint ptr %per_bio_data_size.i5.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %per_bio_data_size.i5.i, align 8
  %call.i6.i = tail call ptr @dm_per_bio_data(ptr noundef %3, i32 noundef %12) #20
  %add.ptr.i7.i = getelementptr %struct.dm_crypt_io, ptr %call.i6.i, i32 1
  %cmp.not.i8.i = icmp eq ptr %add.ptr.i7.i, %8
  br i1 %cmp.not.i8.i, label %if.then4.if.end7_crit_edge, label %if.end.sink.split.i

if.then4.if.end7_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end7

if.end.sink.split.i:                              ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #22
  %req_pool.i9.i = getelementptr inbounds %struct.crypt_config, ptr %1, i32 0, i32 32
  tail call void @mempool_free(ptr noundef nonnull %8, ptr noundef %req_pool.i9.i) #20
  br label %if.end7

if.end7:                                          ; preds = %if.end.sink.split.i, %if.then4.if.end7_crit_edge, %if.end.if.end7_crit_edge
  %integrity_metadata_from_pool = getelementptr inbounds %struct.dm_crypt_io, ptr %io, i32 0, i32 3
  %13 = ptrtoint ptr %integrity_metadata_from_pool to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %integrity_metadata_from_pool, align 4, !range !431
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool8.not = icmp eq i8 %14, 0
  %integrity_metadata13 = getelementptr inbounds %struct.dm_crypt_io, ptr %io, i32 0, i32 2
  %15 = ptrtoint ptr %integrity_metadata13 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %integrity_metadata13, align 8
  br i1 %tobool8.not, label %if.else, label %if.then11, !prof !413

if.then11:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #22
  %17 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %io, align 128
  %tag_pool = getelementptr inbounds %struct.crypt_config, ptr %18, i32 0, i32 31
  tail call void @mempool_free(ptr noundef %16, ptr noundef %tag_pool) #20
  br label %if.end14

if.else:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #22
  tail call void @kfree(ptr noundef %16) #20
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.then11
  %bi_status = getelementptr inbounds %struct.bio, ptr %3, i32 0, i32 6
  %19 = ptrtoint ptr %bi_status to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %5, ptr %bi_status, align 2
  %state.i = getelementptr inbounds %struct.dm_crypt_io, ptr %io, i32 0, i32 5, i32 1
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 1, ptr noundef %state.i) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i.not, label %if.then17, label %do.body

if.then17:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #22
  %tasklet = getelementptr inbounds %struct.dm_crypt_io, ptr %io, i32 0, i32 5
  tail call void @tasklet_unlock(ptr noundef %tasklet) #20
  tail call void @bio_endio(ptr noundef %3) #20
  br label %cleanup

do.body:                                          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #22
  %work = getelementptr inbounds %struct.dm_crypt_io, ptr %io, i32 0, i32 4
  tail call void @__init_work(ptr noundef %work, i32 noundef 0) #20
  %20 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -64, ptr %work, align 16
  %lockdep_map = getelementptr inbounds %struct.dm_crypt_io, ptr %io, i32 0, i32 4, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.123, ptr noundef nonnull @crypt_dec_pending.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #20
  %entry23 = getelementptr inbounds %struct.dm_crypt_io, ptr %io, i32 0, i32 4, i32 1
  %21 = ptrtoint ptr %entry23 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %entry23, ptr %entry23, align 4
  %prev.i = getelementptr inbounds %struct.dm_crypt_io, ptr %io, i32 0, i32 4, i32 1, i32 1
  %22 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %entry23, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.dm_crypt_io, ptr %io, i32 0, i32 4, i32 2
  %23 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @kcryptd_io_bio_endio, ptr %func, align 4
  %io_queue = getelementptr inbounds %struct.crypt_config, ptr %1, i32 0, i32 3
  %24 = ptrtoint ptr %io_queue to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %io_queue, align 8
  %call.i49 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %25, ptr noundef %work) #20
  br label %cleanup

cleanup:                                          ; preds = %do.body, %if.then17, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #19

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @crypt_endio(ptr noundef %clone) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %bi_private = getelementptr inbounds %struct.bio, ptr %clone, i32 0, i32 11
  %0 = ptrtoint ptr %bi_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bi_private, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 128
  %bi_opf = getelementptr inbounds %struct.bio, ptr %clone, i32 0, i32 2
  %4 = ptrtoint ptr %bi_opf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bi_opf, align 8
  %and.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

if.then:                                          ; preds = %entry
  %bi_vcnt.i.i = getelementptr inbounds %struct.bio, ptr %clone, i32 0, i32 17
  %6 = ptrtoint ptr %bi_vcnt.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %bi_vcnt.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %cmp.not.i23.not.i = icmp eq i16 %7, 0
  br i1 %cmp.not.i23.not.i, label %if.then.if.end_crit_edge, label %if.end.i.lr.ph.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

if.end.i.lr.ph.i:                                 ; preds = %if.then
  %bi_io_vec.i.i = getelementptr inbounds %struct.bio, ptr %clone, i32 0, i32 20
  %page_pool.i = getelementptr inbounds %struct.crypt_config, ptr %3, i32 0, i32 33
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.end10.i.if.end.i.i_crit_edge, %if.end.i.lr.ph.i
  %iter_all.sroa.0.026.i = phi ptr [ inttoptr (i32 -1 to ptr), %if.end.i.lr.ph.i ], [ %iter_all.sroa.0.1.i, %do.end10.i.if.end.i.i_crit_edge ]
  %iter_all.sroa.11.025.i = phi i32 [ 0, %if.end.i.lr.ph.i ], [ %spec.select21.i, %do.end10.i.if.end.i.i_crit_edge ]
  %iter_all.sroa.15.024.i = phi i32 [ 0, %if.end.i.lr.ph.i ], [ %spec.select.i, %do.end10.i.if.end.i.i_crit_edge ]
  %8 = ptrtoint ptr %bi_io_vec.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bi_io_vec.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %iter_all.sroa.15.024.i)
  %tobool.not.i.i.i = icmp eq i32 %iter_all.sroa.15.024.i, 0
  br i1 %tobool.not.i.i.i, label %if.else.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #22
  %incdec.ptr.i.i.i = getelementptr %struct.page, ptr %iter_all.sroa.0.026.i, i32 1
  br label %if.end.i.i.i

if.else.i.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #22
  %arrayidx.i.i = getelementptr %struct.bio_vec, ptr %9, i32 %iter_all.sroa.11.025.i
  %10 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i.i, align 4
  %bv_offset3.i.i.i = getelementptr %struct.bio_vec, ptr %9, i32 %iter_all.sroa.11.025.i, i32 2
  %12 = ptrtoint ptr %bv_offset3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bv_offset3.i.i.i, align 4
  %shr.i.i.i = lshr i32 %13, 12
  %add.ptr.i.i.i = getelementptr %struct.page, ptr %11, i32 %shr.i.i.i
  %and.i.i.i = and i32 %13, 4095
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.else.i.i.i, %if.then.i.i.i
  %iter_all.sroa.0.1.i = phi ptr [ %add.ptr.i.i.i, %if.else.i.i.i ], [ %incdec.ptr.i.i.i, %if.then.i.i.i ]
  %.sink.i.i.i = phi i32 [ %and.i.i.i, %if.else.i.i.i ], [ 0, %if.then.i.i.i ]
  %tobool.not.i = icmp eq ptr %iter_all.sroa.0.1.i, null
  br i1 %tobool.not.i, label %do.body5.i, label %do.end10.i, !prof !414

do.body5.i:                                       ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/dm-crypt.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1718, 0\0A.popsection", ""() #20, !srcloc !432
  unreachable

do.end10.i:                                       ; preds = %if.end.i.i.i
  %sub.i.i.i = sub nuw nsw i32 4096, %.sink.i.i.i
  %bv_len.i.i.i = getelementptr %struct.bio_vec, ptr %9, i32 %iter_all.sroa.11.025.i, i32 1
  %14 = ptrtoint ptr %bv_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %bv_len.i.i.i, align 4
  %sub9.i.i.i = sub i32 %15, %iter_all.sroa.15.024.i
  %16 = tail call i32 @llvm.umin.i32(i32 %sub.i.i.i, i32 %sub9.i.i.i) #20
  %add.i.i.i = add i32 %16, %iter_all.sroa.15.024.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i.i, i32 %15)
  %cmp15.i.i.i = icmp eq i32 %add.i.i.i, %15
  %inc.i.i.i = zext i1 %cmp15.i.i.i to i32
  %spec.select21.i = add nuw nsw i32 %iter_all.sroa.11.025.i, %inc.i.i.i
  %spec.select.i = select i1 %cmp15.i.i.i, i32 0, i32 %add.i.i.i
  tail call void @mempool_free(ptr noundef nonnull %iter_all.sroa.0.1.i, ptr noundef %page_pool.i) #20
  %17 = ptrtoint ptr %bi_vcnt.i.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %bi_vcnt.i.i, align 8
  %conv.i.i = zext i16 %18 to i32
  %cmp.not.i.i = icmp ult i32 %spec.select21.i, %conv.i.i
  br i1 %cmp.not.i.i, label %do.end10.i.if.end.i.i_crit_edge, label %do.end10.i.if.end_crit_edge

do.end10.i.if.end_crit_edge:                      ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

do.end10.i.if.end.i.i_crit_edge:                  ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end.i.i

if.end:                                           ; preds = %do.end10.i.if.end_crit_edge, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %bi_status = getelementptr inbounds %struct.bio, ptr %clone, i32 0, i32 6
  %19 = ptrtoint ptr %bi_status to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %bi_status, align 2
  tail call void @bio_put(ptr noundef %clone) #20
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not = icmp eq i8 %20, 0
  %or.cond = select i1 %tobool.i.not, i1 %tobool.not, i1 false
  br i1 %or.cond, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  tail call fastcc void @kcryptd_queue_crypt(ptr noundef %1)
  br label %cleanup

if.end4:                                          ; preds = %if.end
  br i1 %tobool.not, label %if.end4.if.end10_crit_edge, label %if.then8, !prof !413

if.end4.if.end10_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end10

if.then8:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #22
  %error9 = getelementptr inbounds %struct.dm_crypt_io, ptr %1, i32 0, i32 8
  %21 = ptrtoint ptr %error9 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %error9, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end4.if.end10_crit_edge
  tail call fastcc void @crypt_dec_pending(ptr noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.then3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @crypt_free_buffer_pages(ptr noundef %cc, ptr nocapture noundef readonly %clone) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %bi_vcnt.i = getelementptr inbounds %struct.bio, ptr %clone, i32 0, i32 17
  %0 = ptrtoint ptr %bi_vcnt.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %bi_vcnt.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp.not.i23.not = icmp eq i16 %1, 0
  br i1 %cmp.not.i23.not, label %entry.for.end_crit_edge, label %if.end.i.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end

if.end.i.lr.ph:                                   ; preds = %entry
  %bi_io_vec.i = getelementptr inbounds %struct.bio, ptr %clone, i32 0, i32 20
  %page_pool = getelementptr inbounds %struct.crypt_config, ptr %cc, i32 0, i32 33
  br label %if.end.i

if.end.i:                                         ; preds = %do.end10.if.end.i_crit_edge, %if.end.i.lr.ph
  %iter_all.sroa.0.026 = phi ptr [ inttoptr (i32 -1 to ptr), %if.end.i.lr.ph ], [ %iter_all.sroa.0.1, %do.end10.if.end.i_crit_edge ]
  %iter_all.sroa.11.025 = phi i32 [ 0, %if.end.i.lr.ph ], [ %spec.select21, %do.end10.if.end.i_crit_edge ]
  %iter_all.sroa.15.024 = phi i32 [ 0, %if.end.i.lr.ph ], [ %spec.select, %do.end10.if.end.i_crit_edge ]
  %2 = ptrtoint ptr %bi_io_vec.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bi_io_vec.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %iter_all.sroa.15.024)
  %tobool.not.i.i = icmp eq i32 %iter_all.sroa.15.024, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #22
  %incdec.ptr.i.i = getelementptr %struct.page, ptr %iter_all.sroa.0.026, i32 1
  br label %if.end.i.i

if.else.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #22
  %arrayidx.i = getelementptr %struct.bio_vec, ptr %3, i32 %iter_all.sroa.11.025
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  %bv_offset3.i.i = getelementptr %struct.bio_vec, ptr %3, i32 %iter_all.sroa.11.025, i32 2
  %6 = ptrtoint ptr %bv_offset3.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bv_offset3.i.i, align 4
  %shr.i.i = lshr i32 %7, 12
  %add.ptr.i.i = getelementptr %struct.page, ptr %5, i32 %shr.i.i
  %and.i.i = and i32 %7, 4095
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.else.i.i, %if.then.i.i
  %iter_all.sroa.0.1 = phi ptr [ %add.ptr.i.i, %if.else.i.i ], [ %incdec.ptr.i.i, %if.then.i.i ]
  %.sink.i.i = phi i32 [ %and.i.i, %if.else.i.i ], [ 0, %if.then.i.i ]
  %tobool.not = icmp eq ptr %iter_all.sroa.0.1, null
  br i1 %tobool.not, label %do.body5, label %do.end10, !prof !414

do.body5:                                         ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #22
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/dm-crypt.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1718, 0\0A.popsection", ""() #20, !srcloc !432
  unreachable

do.end10:                                         ; preds = %if.end.i.i
  %sub.i.i = sub nuw nsw i32 4096, %.sink.i.i
  %bv_len.i.i = getelementptr %struct.bio_vec, ptr %3, i32 %iter_all.sroa.11.025, i32 1
  %8 = ptrtoint ptr %bv_len.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bv_len.i.i, align 4
  %sub9.i.i = sub i32 %9, %iter_all.sroa.15.024
  %10 = tail call i32 @llvm.umin.i32(i32 %sub.i.i, i32 %sub9.i.i) #20
  %add.i.i = add i32 %10, %iter_all.sroa.15.024
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %9)
  %cmp15.i.i = icmp eq i32 %add.i.i, %9
  %inc.i.i = zext i1 %cmp15.i.i to i32
  %spec.select21 = add nuw nsw i32 %iter_all.sroa.11.025, %inc.i.i
  %spec.select = select i1 %cmp15.i.i, i32 0, i32 %add.i.i
  tail call void @mempool_free(ptr noundef nonnull %iter_all.sroa.0.1, ptr noundef %page_pool) #20
  %11 = ptrtoint ptr %bi_vcnt.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %bi_vcnt.i, align 8
  %conv.i = zext i16 %12 to i32
  %cmp.not.i = icmp ult i32 %spec.select21, %conv.i
  br i1 %cmp.not.i, label %do.end10.if.end.i_crit_edge, label %do.end10.for.end_crit_edge

do.end10.for.end_crit_edge:                       ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end

do.end10.if.end.i_crit_edge:                      ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end.i

for.end:                                          ; preds = %do.end10.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mempool_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bio_integrity_alloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bio_integrity_add_page(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_endio(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @kcryptd_io_bio_endio(ptr nocapture noundef readonly %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %base_bio = getelementptr i8, ptr %work, i32 -12
  %0 = ptrtoint ptr %base_bio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base_bio, align 4
  tail call void @bio_endio(ptr noundef %1) #20
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @kcryptd_io_read_work(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -16
  %io_pending.i = getelementptr i8, ptr %work, i32 192
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %io_pending.i, i32 noundef 4) #20
  tail call void @llvm.prefetch.p0(ptr %io_pending.i, i32 1, i32 3, i32 1) #20
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %io_pending.i, ptr %io_pending.i, i32 1, ptr elementtype(i32) %io_pending.i) #20, !srcloc !426
  %call = tail call fastcc i32 @kcryptd_io_read(ptr noundef %add.ptr, i32 noundef 3072)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  %error = getelementptr i8, ptr %work, i32 196
  %1 = ptrtoint ptr %error to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 9, ptr %error, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call fastcc void @crypt_dec_pending(ptr noundef %add.ptr)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @kcryptd_crypt_tasklet(i32 noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %work to ptr
  tail call void @kcryptd_crypt(ptr noundef %0)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @kcryptd_crypt(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -16
  %base_bio = getelementptr i8, ptr %work, i32 -12
  %0 = ptrtoint ptr %base_bio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base_bio, align 4
  %bi_opf = getelementptr inbounds %struct.bio, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %bi_opf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bi_opf, align 8
  %and.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr, align 128
  br i1 %tobool.i.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %io_pending.i.i = getelementptr i8, ptr %work, i32 192
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %io_pending.i.i, i32 noundef 4) #20
  tail call void @llvm.prefetch.p0(ptr %io_pending.i.i, i32 1, i32 3, i32 1) #20
  %6 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %io_pending.i.i, ptr %io_pending.i.i, i32 1, ptr elementtype(i32) %io_pending.i.i) #20, !srcloc !426
  %ctx.i = getelementptr i8, ptr %work, i32 72
  %7 = ptrtoint ptr %base_bio to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base_bio, align 4
  %sector.i = getelementptr i8, ptr %work, i32 200
  %9 = ptrtoint ptr %sector.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %sector.i, align 8
  %bio_in1.i.i = getelementptr i8, ptr %work, i32 128
  %11 = ptrtoint ptr %bio_in1.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %bio_in1.i.i, align 8
  %bio_out2.i.i = getelementptr i8, ptr %work, i32 132
  %12 = ptrtoint ptr %bio_out2.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %8, ptr %bio_out2.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %8, null
  br i1 %tobool.not.i.i, label %if.then.crypt_convert_init.exit.i_crit_edge, label %if.then4.i.i

if.then.crypt_convert_init.exit.i_crit_edge:      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #22
  br label %crypt_convert_init.exit.i

if.then4.i.i:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #22
  %iter_in.i.i = getelementptr i8, ptr %work, i32 136
  %bi_iter.i.i = getelementptr inbounds %struct.bio, ptr %8, i32 0, i32 8
  %13 = call ptr @memcpy(ptr %iter_in.i.i, ptr %bi_iter.i.i, i32 20)
  %iter_out.i.i = getelementptr i8, ptr %work, i32 156
  %14 = call ptr @memcpy(ptr %iter_out.i.i, ptr %bi_iter.i.i, i32 20)
  br label %crypt_convert_init.exit.i

crypt_convert_init.exit.i:                        ; preds = %if.then4.i.i, %if.then.crypt_convert_init.exit.i_crit_edge
  %iv_offset.i.i = getelementptr inbounds %struct.crypt_config, ptr %5, i32 0, i32 13
  %15 = ptrtoint ptr %iv_offset.i.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %iv_offset.i.i, align 8
  %add.i.i = add i64 %16, %10
  %cc_sector.i.i = getelementptr i8, ptr %work, i32 176
  %17 = ptrtoint ptr %cc_sector.i.i to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %add.i.i, ptr %cc_sector.i.i, align 8
  %18 = ptrtoint ptr %ctx.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %ctx.i, align 4
  %wait.i.i.i = getelementptr i8, ptr %work, i32 76
  tail call void @__init_swait_queue_head(ptr noundef %wait.i.i.i, ptr noundef nonnull @.str.88, ptr noundef nonnull @init_completion.__key) #20
  %flags.i = getelementptr inbounds %struct.crypt_config, ptr %5, i32 0, i32 22
  %19 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %flags.i, align 4
  %21 = and i32 %20, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.i3 = icmp ne i32 %21, 0
  %call4.i = tail call fastcc zeroext i8 @crypt_convert(ptr noundef %5, ptr noundef %ctx.i, i1 noundef zeroext %tobool.i3, i1 noundef zeroext true) #20
  %22 = zext i8 %call4.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.172)
  switch i8 %call4.i, label %if.then14.i [
    i8 13, label %do.body.i
    i8 0, label %crypt_convert_init.exit.i.if.end15.i_crit_edge
  ]

crypt_convert_init.exit.i.if.end15.i_crit_edge:   ; preds = %crypt_convert_init.exit.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end15.i

do.body.i:                                        ; preds = %crypt_convert_init.exit.i
  call void @__sanitizer_cov_trace_pc() #22
  tail call void @__init_work(ptr noundef %work, i32 noundef 0) #20
  %23 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -64, ptr %work, align 16
  %lockdep_map.i = getelementptr i8, ptr %work, i32 16
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.123, ptr noundef nonnull @kcryptd_crypt_read_convert.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #20
  %entry9.i = getelementptr i8, ptr %work, i32 4
  %24 = ptrtoint ptr %entry9.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %entry9.i, ptr %entry9.i, align 4
  %prev.i.i = getelementptr i8, ptr %work, i32 8
  %25 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %entry9.i, ptr %prev.i.i, align 4
  %func.i = getelementptr i8, ptr %work, i32 12
  %26 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @kcryptd_crypt_read_continue, ptr %func.i, align 4
  %crypt_queue.i = getelementptr inbounds %struct.crypt_config, ptr %5, i32 0, i32 4
  %27 = ptrtoint ptr %crypt_queue.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %crypt_queue.i, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %28, ptr noundef %work) #20
  br label %if.end

if.then14.i:                                      ; preds = %crypt_convert_init.exit.i
  call void @__sanitizer_cov_trace_pc() #22
  %error.i = getelementptr i8, ptr %work, i32 196
  %29 = ptrtoint ptr %error.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %call4.i, ptr %error.i, align 4
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.then14.i, %crypt_convert_init.exit.i.if.end15.i_crit_edge
  %cc_pending.i = getelementptr i8, ptr %work, i32 184
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %cc_pending.i, i32 noundef 4) #20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #20, !srcloc !428
  tail call void @llvm.prefetch.p0(ptr %cc_pending.i, i32 1, i32 3, i32 1) #20
  %30 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %cc_pending.i, ptr %cc_pending.i, i32 1, ptr elementtype(i32) %cc_pending.i) #20, !srcloc !429
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %30, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #20, !srcloc !430
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then18.i, label %if.end15.i.if.end19.i_crit_edge

if.end15.i.if.end19.i_crit_edge:                  ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end19.i

if.then18.i:                                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #22
  tail call fastcc void @crypt_dec_pending(ptr noundef %add.ptr) #20
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.then18.i, %if.end15.i.if.end19.i_crit_edge
  tail call fastcc void @crypt_dec_pending(ptr noundef %add.ptr) #20
  br label %if.end

if.else:                                          ; preds = %entry
  %ctx2.i = getelementptr i8, ptr %work, i32 72
  %sector3.i = getelementptr i8, ptr %work, i32 200
  %31 = ptrtoint ptr %sector3.i to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %sector3.i, align 8
  %io_pending.i.i4 = getelementptr i8, ptr %work, i32 192
  %call.i.i.i.i5 = tail call zeroext i1 @__kasan_check_write(ptr noundef %io_pending.i.i4, i32 noundef 4) #20
  tail call void @llvm.prefetch.p0(ptr %io_pending.i.i4, i32 1, i32 3, i32 1) #20
  %33 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %io_pending.i.i4, ptr %io_pending.i.i4, i32 1, ptr elementtype(i32) %io_pending.i.i4) #20, !srcloc !426
  %34 = ptrtoint ptr %base_bio to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %base_bio, align 4
  %bio_in1.i.i7 = getelementptr i8, ptr %work, i32 128
  %36 = ptrtoint ptr %bio_in1.i.i7 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %35, ptr %bio_in1.i.i7, align 8
  %bio_out2.i.i8 = getelementptr i8, ptr %work, i32 132
  %37 = ptrtoint ptr %bio_out2.i.i8 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %bio_out2.i.i8, align 4
  %tobool.not.i.i9 = icmp eq ptr %35, null
  br i1 %tobool.not.i.i9, label %if.else.crypt_convert_init.exit.i16_crit_edge, label %if.then.i.i

if.else.crypt_convert_init.exit.i16_crit_edge:    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #22
  br label %crypt_convert_init.exit.i16

if.then.i.i:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #22
  %iter_in.i.i10 = getelementptr i8, ptr %work, i32 136
  %bi_iter.i.i11 = getelementptr inbounds %struct.bio, ptr %35, i32 0, i32 8
  %38 = call ptr @memcpy(ptr %iter_in.i.i10, ptr %bi_iter.i.i11, i32 20)
  br label %crypt_convert_init.exit.i16

crypt_convert_init.exit.i16:                      ; preds = %if.then.i.i, %if.else.crypt_convert_init.exit.i16_crit_edge
  %iv_offset.i.i12 = getelementptr inbounds %struct.crypt_config, ptr %5, i32 0, i32 13
  %39 = ptrtoint ptr %iv_offset.i.i12 to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %iv_offset.i.i12, align 8
  %add.i.i13 = add i64 %40, %32
  %cc_sector.i.i14 = getelementptr i8, ptr %work, i32 176
  %41 = ptrtoint ptr %cc_sector.i.i14 to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 %add.i.i13, ptr %cc_sector.i.i14, align 8
  %42 = ptrtoint ptr %ctx2.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %ctx2.i, align 4
  %wait.i.i.i15 = getelementptr i8, ptr %work, i32 76
  tail call void @__init_swait_queue_head(ptr noundef %wait.i.i.i15, ptr noundef nonnull @.str.88, ptr noundef nonnull @init_completion.__key) #20
  %43 = ptrtoint ptr %base_bio to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %base_bio, align 4
  %bi_size.i = getelementptr inbounds %struct.bio, ptr %44, i32 0, i32 8, i32 1
  %45 = ptrtoint ptr %bi_size.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %bi_size.i, align 8
  %47 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %add.ptr, align 128
  %sub.i.i = add i32 %46, 4095
  %shr.i84.i = lshr i32 %sub.i.i, 12
  %bio_alloc_lock.i.i = getelementptr inbounds %struct.crypt_config, ptr %48, i32 0, i32 35
  %conv.i.i = trunc i32 %shr.i84.i to i16
  %bs.i.i = getelementptr inbounds %struct.crypt_config, ptr %48, i32 0, i32 34
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %sub.i.i)
  %cmp105.not.i.i = icmp ult i32 %sub.i.i, 4096
  %page_pool.i.i = getelementptr inbounds %struct.crypt_config, ptr %48, i32 0, i32 33
  %umax.i.i = tail call i32 @llvm.umax.i32(i32 %shr.i84.i, i32 1) #20
  br label %retry.i.i

retry.i.i:                                        ; preds = %crypt_free_buffer_pages.exit.i.i, %crypt_convert_init.exit.i16
  %gfp_mask.0.i.i = phi i32 [ 2050, %crypt_convert_init.exit.i16 ], [ 3074, %crypt_free_buffer_pages.exit.i.i ]
  %and.i.i = and i32 %gfp_mask.0.i.i, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i85.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i85.i, label %retry.i.i.if.end.i.i_crit_edge, label %if.then.i86.i, !prof !413

retry.i.i.if.end.i.i_crit_edge:                   ; preds = %retry.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end.i.i

if.then.i86.i:                                    ; preds = %retry.i.i
  call void @__sanitizer_cov_trace_pc() #22
  tail call void @mutex_lock_nested(ptr noundef %bio_alloc_lock.i.i, i32 noundef 0) #20
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i86.i, %retry.i.i.if.end.i.i_crit_edge
  %call.i.i17 = tail call ptr @bio_alloc_bioset(i32 noundef 3072, i16 noundef zeroext %conv.i.i, ptr noundef %bs.i.i) #20
  %tobool4.not.i.i = icmp eq ptr %call.i.i17, null
  br i1 %tobool4.not.i.i, label %if.end.i.i.out.i.i_crit_edge, label %if.end6.i.i

if.end.i.i.out.i.i_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %out.i.i

if.end6.i.i:                                      ; preds = %if.end.i.i
  %49 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %add.ptr, align 128
  %bi_private.i.i.i = getelementptr inbounds %struct.bio, ptr %call.i.i17, i32 0, i32 11
  %51 = ptrtoint ptr %bi_private.i.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %add.ptr, ptr %bi_private.i.i.i, align 4
  %bi_end_io.i.i.i = getelementptr inbounds %struct.bio, ptr %call.i.i17, i32 0, i32 10
  %52 = ptrtoint ptr %bi_end_io.i.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr @crypt_endio, ptr %bi_end_io.i.i.i, align 8
  %53 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %50, align 8
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %54, align 4
  %bi_flags.i.i.i.i.i = getelementptr inbounds %struct.bio, ptr %call.i.i17, i32 0, i32 3
  %57 = ptrtoint ptr %bi_flags.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %bi_flags.i.i.i.i.i, align 4
  %conv1.i.i.i.i.i = and i16 %58, -2049
  store i16 %conv1.i.i.i.i.i, ptr %bi_flags.i.i.i.i.i, align 4
  %bi_bdev.i.i.i.i = getelementptr inbounds %struct.bio, ptr %call.i.i17, i32 0, i32 1
  %59 = ptrtoint ptr %bi_bdev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %bi_bdev.i.i.i.i, align 4
  %cmp.not.i.i.i.i = icmp eq ptr %60, %56
  br i1 %cmp.not.i.i.i.i, label %if.end6.i.i.clone_init.exit.i.i_crit_edge, label %if.then.i.i.i.i

if.end6.i.i.clone_init.exit.i.i_crit_edge:        ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %clone_init.exit.i.i

if.then.i.i.i.i:                                  ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #22
  %conv1.i8.i.i.i.i = and i16 %58, -2177
  %61 = ptrtoint ptr %bi_flags.i.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 %conv1.i8.i.i.i.i, ptr %bi_flags.i.i.i.i.i, align 4
  br label %clone_init.exit.i.i

clone_init.exit.i.i:                              ; preds = %if.then.i.i.i.i, %if.end6.i.i.clone_init.exit.i.i_crit_edge
  %62 = ptrtoint ptr %bi_bdev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %56, ptr %bi_bdev.i.i.i.i, align 4
  tail call void @bio_associate_blkg(ptr noundef nonnull %call.i.i17) #20
  %63 = ptrtoint ptr %base_bio to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %base_bio, align 4
  %bi_opf.i.i.i = getelementptr inbounds %struct.bio, ptr %64, i32 0, i32 2
  %65 = ptrtoint ptr %bi_opf.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %bi_opf.i.i.i, align 8
  %bi_opf2.i.i.i = getelementptr inbounds %struct.bio, ptr %call.i.i17, i32 0, i32 2
  %67 = ptrtoint ptr %bi_opf2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %bi_opf2.i.i.i, align 8
  br i1 %cmp105.not.i.i, label %clone_init.exit.i.i.for.end.i.i_crit_edge, label %clone_init.exit.i.i.for.body.i.i_crit_edge

clone_init.exit.i.i.for.body.i.i_crit_edge:       ; preds = %clone_init.exit.i.i
  br label %for.body.i.i

clone_init.exit.i.i.for.end.i.i_crit_edge:        ; preds = %clone_init.exit.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end.i.i

for.body.i.i:                                     ; preds = %if.end11.i.i.for.body.i.i_crit_edge, %clone_init.exit.i.i.for.body.i.i_crit_edge
  %remaining_size.0107.i.i = phi i32 [ %sub15.i.i, %if.end11.i.i.for.body.i.i_crit_edge ], [ %46, %clone_init.exit.i.i.for.body.i.i_crit_edge ]
  %i.0106.i.i = phi i32 [ %inc.i.i, %if.end11.i.i.for.body.i.i_crit_edge ], [ 0, %clone_init.exit.i.i.for.body.i.i_crit_edge ]
  %call8.i.i = tail call noalias ptr @mempool_alloc(ptr noundef %page_pool.i.i, i32 noundef %gfp_mask.0.i.i) #20
  %tobool9.not.i.i = icmp eq ptr %call8.i.i, null
  br i1 %tobool9.not.i.i, label %if.then10.i.i, label %if.end11.i.i

if.then10.i.i:                                    ; preds = %for.body.i.i
  %bi_vcnt.i.i.i.i = getelementptr inbounds %struct.bio, ptr %call.i.i17, i32 0, i32 17
  %68 = ptrtoint ptr %bi_vcnt.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %bi_vcnt.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %69)
  %cmp.not.i23.not.i.i.i = icmp eq i16 %69, 0
  br i1 %cmp.not.i23.not.i.i.i, label %if.then10.i.i.crypt_free_buffer_pages.exit.i.i_crit_edge, label %if.end.i.lr.ph.i.i.i

if.then10.i.i.crypt_free_buffer_pages.exit.i.i_crit_edge: ; preds = %if.then10.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %crypt_free_buffer_pages.exit.i.i

if.end.i.lr.ph.i.i.i:                             ; preds = %if.then10.i.i
  %bi_io_vec.i.i.i.i = getelementptr inbounds %struct.bio, ptr %call.i.i17, i32 0, i32 20
  br label %if.end.i.i.i.i

if.end.i.i.i.i:                                   ; preds = %do.end10.i.i.i.if.end.i.i.i.i_crit_edge, %if.end.i.lr.ph.i.i.i
  %iter_all.sroa.0.026.i.i.i = phi ptr [ inttoptr (i32 -1 to ptr), %if.end.i.lr.ph.i.i.i ], [ %iter_all.sroa.0.1.i.i.i, %do.end10.i.i.i.if.end.i.i.i.i_crit_edge ]
  %iter_all.sroa.11.025.i.i.i = phi i32 [ 0, %if.end.i.lr.ph.i.i.i ], [ %spec.select21.i.i.i, %do.end10.i.i.i.if.end.i.i.i.i_crit_edge ]
  %iter_all.sroa.15.024.i.i.i = phi i32 [ 0, %if.end.i.lr.ph.i.i.i ], [ %spec.select.i.i.i, %do.end10.i.i.i.if.end.i.i.i.i_crit_edge ]
  %70 = ptrtoint ptr %bi_io_vec.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %bi_io_vec.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %iter_all.sroa.15.024.i.i.i)
  %tobool.not.i.i.i.i.i = icmp eq i32 %iter_all.sroa.15.024.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i, label %if.else.i.i.i.i.i, label %if.then.i.i.i.i.i

if.then.i.i.i.i.i:                                ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  %incdec.ptr.i.i.i.i.i = getelementptr %struct.page, ptr %iter_all.sroa.0.026.i.i.i, i32 1
  br label %if.end.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  %arrayidx.i.i.i.i = getelementptr %struct.bio_vec, ptr %71, i32 %iter_all.sroa.11.025.i.i.i
  %72 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %bv_offset3.i.i.i.i.i = getelementptr %struct.bio_vec, ptr %71, i32 %iter_all.sroa.11.025.i.i.i, i32 2
  %74 = ptrtoint ptr %bv_offset3.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %bv_offset3.i.i.i.i.i, align 4
  %shr.i.i.i.i.i = lshr i32 %75, 12
  %add.ptr.i.i.i.i.i = getelementptr %struct.page, ptr %73, i32 %shr.i.i.i.i.i
  %and.i.i.i.i.i = and i32 %75, 4095
  br label %if.end.i.i.i.i.i

if.end.i.i.i.i.i:                                 ; preds = %if.else.i.i.i.i.i, %if.then.i.i.i.i.i
  %iter_all.sroa.0.1.i.i.i = phi ptr [ %add.ptr.i.i.i.i.i, %if.else.i.i.i.i.i ], [ %incdec.ptr.i.i.i.i.i, %if.then.i.i.i.i.i ]
  %.sink.i.i.i.i.i = phi i32 [ %and.i.i.i.i.i, %if.else.i.i.i.i.i ], [ 0, %if.then.i.i.i.i.i ]
  %tobool.not.i.i.i = icmp eq ptr %iter_all.sroa.0.1.i.i.i, null
  br i1 %tobool.not.i.i.i, label %do.body5.i.i.i, label %do.end10.i.i.i, !prof !414

do.body5.i.i.i:                                   ; preds = %if.end.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/dm-crypt.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1718, 0\0A.popsection", ""() #20, !srcloc !432
  unreachable

do.end10.i.i.i:                                   ; preds = %if.end.i.i.i.i.i
  %sub.i.i.i.i.i = sub nuw nsw i32 4096, %.sink.i.i.i.i.i
  %bv_len.i.i.i.i.i = getelementptr %struct.bio_vec, ptr %71, i32 %iter_all.sroa.11.025.i.i.i, i32 1
  %76 = ptrtoint ptr %bv_len.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %bv_len.i.i.i.i.i, align 4
  %sub9.i.i.i.i.i = sub i32 %77, %iter_all.sroa.15.024.i.i.i
  %78 = tail call i32 @llvm.umin.i32(i32 %sub.i.i.i.i.i, i32 %sub9.i.i.i.i.i) #20
  %add.i.i.i.i.i = add i32 %78, %iter_all.sroa.15.024.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i.i.i.i, i32 %77)
  %cmp15.i.i.i.i.i = icmp eq i32 %add.i.i.i.i.i, %77
  %inc.i.i.i.i.i = zext i1 %cmp15.i.i.i.i.i to i32
  %spec.select21.i.i.i = add nuw nsw i32 %iter_all.sroa.11.025.i.i.i, %inc.i.i.i.i.i
  %spec.select.i.i.i = select i1 %cmp15.i.i.i.i.i, i32 0, i32 %add.i.i.i.i.i
  tail call void @mempool_free(ptr noundef nonnull %iter_all.sroa.0.1.i.i.i, ptr noundef %page_pool.i.i) #20
  %79 = ptrtoint ptr %bi_vcnt.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %bi_vcnt.i.i.i.i, align 8
  %conv.i.i.i.i = zext i16 %80 to i32
  %cmp.not.i.i56.i.i = icmp ult i32 %spec.select21.i.i.i, %conv.i.i.i.i
  br i1 %cmp.not.i.i56.i.i, label %do.end10.i.i.i.if.end.i.i.i.i_crit_edge, label %do.end10.i.i.i.crypt_free_buffer_pages.exit.i.i_crit_edge

do.end10.i.i.i.crypt_free_buffer_pages.exit.i.i_crit_edge: ; preds = %do.end10.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %crypt_free_buffer_pages.exit.i.i

do.end10.i.i.i.if.end.i.i.i.i_crit_edge:          ; preds = %do.end10.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end.i.i.i.i

crypt_free_buffer_pages.exit.i.i:                 ; preds = %do.end10.i.i.i.crypt_free_buffer_pages.exit.i.i_crit_edge, %if.then10.i.i.crypt_free_buffer_pages.exit.i.i_crit_edge
  tail call void @bio_put(ptr noundef nonnull %call.i.i17) #20
  br label %retry.i.i

if.end11.i.i:                                     ; preds = %for.body.i.i
  %81 = tail call i32 @llvm.umin.i32(i32 %remaining_size.0107.i.i, i32 4096) #20
  %call14.i.i = tail call i32 @bio_add_page(ptr noundef nonnull %call.i.i17, ptr noundef nonnull %call8.i.i, i32 noundef %81, i32 noundef 0) #20
  %sub15.i.i = sub i32 %remaining_size.0107.i.i, %81
  %inc.i.i = add nuw nsw i32 %i.0106.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %umax.i.i
  br i1 %exitcond.not.i.i, label %if.end11.i.i.for.end.i.i_crit_edge, label %if.end11.i.i.for.body.i.i_crit_edge

if.end11.i.i.for.body.i.i_crit_edge:              ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body.i.i

if.end11.i.i.for.end.i.i_crit_edge:               ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %if.end11.i.i.for.end.i.i_crit_edge, %clone_init.exit.i.i.for.end.i.i_crit_edge
  %bi_size.i.i.i = getelementptr inbounds %struct.bio, ptr %call.i.i17, i32 0, i32 8, i32 1
  %82 = ptrtoint ptr %bi_size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %bi_size.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %83)
  %tobool.not.i57.i.i = icmp ult i32 %83, 512
  br i1 %tobool.not.i57.i.i, label %for.end.i.i.out.i.i_crit_edge, label %lor.lhs.false.i.i.i

for.end.i.i.out.i.i_crit_edge:                    ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %out.i.i

lor.lhs.false.i.i.i:                              ; preds = %for.end.i.i
  %84 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %add.ptr, align 128
  %on_disk_tag_size.i.i.i = getelementptr inbounds %struct.crypt_config, ptr %85, i32 0, i32 29
  %86 = ptrtoint ptr %on_disk_tag_size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %on_disk_tag_size.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %tobool1.not.i.i.i = icmp eq i32 %87, 0
  br i1 %tobool1.not.i.i.i, label %lor.lhs.false.i.i.i.out.i.i_crit_edge, label %if.end.i.i.i

lor.lhs.false.i.i.i.out.i.i_crit_edge:            ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %out.i.i

if.end.i.i.i:                                     ; preds = %lor.lhs.false.i.i.i
  %call.i.i87.i = tail call ptr @bio_integrity_alloc(ptr noundef nonnull %call.i.i17, i32 noundef 3072, i32 noundef 1) #20
  %cmp.i.i.i.i = icmp ugt ptr %call.i.i87.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i.i, label %if.end.i.i.i.if.then18.i.i_crit_edge, label %if.end5.i.i.i

if.end.i.i.i.if.then18.i.i_crit_edge:             ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then18.i.i

if.end5.i.i.i:                                    ; preds = %if.end.i.i.i
  %88 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %add.ptr, align 128
  %on_disk_tag_size7.i.i.i = getelementptr inbounds %struct.crypt_config, ptr %89, i32 0, i32 29
  %90 = ptrtoint ptr %on_disk_tag_size7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %on_disk_tag_size7.i.i.i, align 8
  %92 = ptrtoint ptr %bi_size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %bi_size.i.i.i, align 8
  %shr10.i.i.i = lshr i32 %93, 9
  %sector_shift.i.i.i = getelementptr inbounds %struct.crypt_config, ptr %89, i32 0, i32 16
  %94 = ptrtoint ptr %sector_shift.i.i.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %sector_shift.i.i.i, align 2
  %conv.i.i.i = zext i8 %95 to i32
  %shr12.i.i.i = lshr i32 %shr10.i.i.i, %conv.i.i.i
  %mul.i.i.i = mul i32 %shr12.i.i.i, %91
  %bip_iter.i.i.i = getelementptr inbounds %struct.bio_integrity_payload, ptr %call.i.i87.i, i32 0, i32 1
  %bi_size13.i.i.i = getelementptr inbounds %struct.bio_integrity_payload, ptr %call.i.i87.i, i32 0, i32 1, i32 1
  %96 = ptrtoint ptr %bi_size13.i.i.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %mul.i.i.i, ptr %bi_size13.i.i.i, align 4
  %97 = load ptr, ptr %add.ptr, align 128
  %start.i.i.i = getelementptr inbounds %struct.crypt_config, ptr %97, i32 0, i32 1
  %98 = ptrtoint ptr %start.i.i.i to i32
  call void @__asan_load8_noabort(i32 %98)
  %99 = load i64, ptr %start.i.i.i, align 8
  %100 = ptrtoint ptr %sector3.i to i32
  call void @__asan_load8_noabort(i32 %100)
  %101 = load i64, ptr %sector3.i, align 8
  %add.i.i.i = add i64 %101, %99
  %102 = ptrtoint ptr %bip_iter.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %102, i32 8)
  store i64 %add.i.i.i, ptr %bip_iter.i.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %103 = load ptr, ptr @mem_map, align 4
  %integrity_metadata.i.i.i = getelementptr i8, ptr %work, i32 -8
  %104 = ptrtoint ptr %integrity_metadata.i.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %integrity_metadata.i.i.i, align 8
  %106 = ptrtoint ptr %105 to i32
  %sub.i.i.i = add i32 %106, 1073741824
  %shr16.i.i.i = lshr i32 %sub.i.i.i, 12
  %add.ptr.i.i.i = getelementptr %struct.page, ptr %103, i32 %shr16.i.i.i
  %and.i.i.i = and i32 %106, 4095
  %call20.i.i.i = tail call i32 @bio_integrity_add_page(ptr noundef nonnull %call.i.i17, ptr noundef %add.ptr.i.i.i, i32 noundef %mul.i.i.i, i32 noundef %and.i.i.i) #20
  call void @__sanitizer_cov_trace_cmp4(i32 %call20.i.i.i, i32 %mul.i.i.i)
  %cmp.not.i.i.i = icmp eq i32 %call20.i.i.i, %mul.i.i.i
  br i1 %cmp.not.i.i.i, label %if.end5.i.i.i.out.i.i_crit_edge, label %if.end5.i.i.i.if.then18.i.i_crit_edge

if.end5.i.i.i.if.then18.i.i_crit_edge:            ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then18.i.i

if.end5.i.i.i.out.i.i_crit_edge:                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %out.i.i

if.then18.i.i:                                    ; preds = %if.end5.i.i.i.if.then18.i.i_crit_edge, %if.end.i.i.i.if.then18.i.i_crit_edge
  %bi_vcnt.i.i58.i.i = getelementptr inbounds %struct.bio, ptr %call.i.i17, i32 0, i32 17
  %107 = ptrtoint ptr %bi_vcnt.i.i58.i.i to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %bi_vcnt.i.i58.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %108)
  %cmp.not.i23.not.i59.i.i = icmp eq i16 %108, 0
  br i1 %cmp.not.i23.not.i59.i.i, label %if.then18.i.i.crypt_free_buffer_pages.exit92.i.i_crit_edge, label %if.end.i.lr.ph.i62.i.i

if.then18.i.i.crypt_free_buffer_pages.exit92.i.i_crit_edge: ; preds = %if.then18.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %crypt_free_buffer_pages.exit92.i.i

if.end.i.lr.ph.i62.i.i:                           ; preds = %if.then18.i.i
  %bi_io_vec.i.i60.i.i = getelementptr inbounds %struct.bio, ptr %call.i.i17, i32 0, i32 20
  br label %if.end.i.i67.i.i

if.end.i.i67.i.i:                                 ; preds = %do.end10.i91.i.i.if.end.i.i67.i.i_crit_edge, %if.end.i.lr.ph.i62.i.i
  %iter_all.sroa.0.026.i63.i.i = phi ptr [ inttoptr (i32 -1 to ptr), %if.end.i.lr.ph.i62.i.i ], [ %iter_all.sroa.0.1.i76.i.i, %do.end10.i91.i.i.if.end.i.i67.i.i_crit_edge ]
  %iter_all.sroa.11.025.i64.i.i = phi i32 [ 0, %if.end.i.lr.ph.i62.i.i ], [ %spec.select21.i87.i.i, %do.end10.i91.i.i.if.end.i.i67.i.i_crit_edge ]
  %iter_all.sroa.15.024.i65.i.i = phi i32 [ 0, %if.end.i.lr.ph.i62.i.i ], [ %spec.select.i88.i.i, %do.end10.i91.i.i.if.end.i.i67.i.i_crit_edge ]
  %109 = ptrtoint ptr %bi_io_vec.i.i60.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %bi_io_vec.i.i60.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %iter_all.sroa.15.024.i65.i.i)
  %tobool.not.i.i.i66.i.i = icmp eq i32 %iter_all.sroa.15.024.i65.i.i, 0
  br i1 %tobool.not.i.i.i66.i.i, label %if.else.i.i.i75.i.i, label %if.then.i.i.i69.i.i

if.then.i.i.i69.i.i:                              ; preds = %if.end.i.i67.i.i
  call void @__sanitizer_cov_trace_pc() #22
  %incdec.ptr.i.i.i68.i.i = getelementptr %struct.page, ptr %iter_all.sroa.0.026.i63.i.i, i32 1
  br label %if.end.i.i.i79.i.i

if.else.i.i.i75.i.i:                              ; preds = %if.end.i.i67.i.i
  call void @__sanitizer_cov_trace_pc() #22
  %arrayidx.i.i70.i.i = getelementptr %struct.bio_vec, ptr %110, i32 %iter_all.sroa.11.025.i64.i.i
  %111 = ptrtoint ptr %arrayidx.i.i70.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %arrayidx.i.i70.i.i, align 4
  %bv_offset3.i.i.i71.i.i = getelementptr %struct.bio_vec, ptr %110, i32 %iter_all.sroa.11.025.i64.i.i, i32 2
  %113 = ptrtoint ptr %bv_offset3.i.i.i71.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %bv_offset3.i.i.i71.i.i, align 4
  %shr.i.i.i72.i.i = lshr i32 %114, 12
  %add.ptr.i.i.i73.i.i = getelementptr %struct.page, ptr %112, i32 %shr.i.i.i72.i.i
  %and.i.i.i74.i.i = and i32 %114, 4095
  br label %if.end.i.i.i79.i.i

if.end.i.i.i79.i.i:                               ; preds = %if.else.i.i.i75.i.i, %if.then.i.i.i69.i.i
  %iter_all.sroa.0.1.i76.i.i = phi ptr [ %add.ptr.i.i.i73.i.i, %if.else.i.i.i75.i.i ], [ %incdec.ptr.i.i.i68.i.i, %if.then.i.i.i69.i.i ]
  %.sink.i.i.i77.i.i = phi i32 [ %and.i.i.i74.i.i, %if.else.i.i.i75.i.i ], [ 0, %if.then.i.i.i69.i.i ]
  %tobool.not.i78.i.i = icmp eq ptr %iter_all.sroa.0.1.i76.i.i, null
  br i1 %tobool.not.i78.i.i, label %do.body5.i80.i.i, label %do.end10.i91.i.i, !prof !414

do.body5.i80.i.i:                                 ; preds = %if.end.i.i.i79.i.i
  call void @__sanitizer_cov_trace_pc() #22
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/dm-crypt.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1718, 0\0A.popsection", ""() #20, !srcloc !432
  unreachable

do.end10.i91.i.i:                                 ; preds = %if.end.i.i.i79.i.i
  %sub.i.i.i81.i.i = sub nuw nsw i32 4096, %.sink.i.i.i77.i.i
  %bv_len.i.i.i82.i.i = getelementptr %struct.bio_vec, ptr %110, i32 %iter_all.sroa.11.025.i64.i.i, i32 1
  %115 = ptrtoint ptr %bv_len.i.i.i82.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %bv_len.i.i.i82.i.i, align 4
  %sub9.i.i.i83.i.i = sub i32 %116, %iter_all.sroa.15.024.i65.i.i
  %117 = tail call i32 @llvm.umin.i32(i32 %sub.i.i.i81.i.i, i32 %sub9.i.i.i83.i.i) #20
  %add.i.i.i84.i.i = add i32 %117, %iter_all.sroa.15.024.i65.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i.i84.i.i, i32 %116)
  %cmp15.i.i.i85.i.i = icmp eq i32 %add.i.i.i84.i.i, %116
  %inc.i.i.i86.i.i = zext i1 %cmp15.i.i.i85.i.i to i32
  %spec.select21.i87.i.i = add nuw nsw i32 %iter_all.sroa.11.025.i64.i.i, %inc.i.i.i86.i.i
  %spec.select.i88.i.i = select i1 %cmp15.i.i.i85.i.i, i32 0, i32 %add.i.i.i84.i.i
  tail call void @mempool_free(ptr noundef nonnull %iter_all.sroa.0.1.i76.i.i, ptr noundef %page_pool.i.i) #20
  %118 = ptrtoint ptr %bi_vcnt.i.i58.i.i to i32
  call void @__asan_load2_noabort(i32 %118)
  %119 = load i16, ptr %bi_vcnt.i.i58.i.i, align 8
  %conv.i.i89.i.i = zext i16 %119 to i32
  %cmp.not.i.i90.i.i = icmp ult i32 %spec.select21.i87.i.i, %conv.i.i89.i.i
  br i1 %cmp.not.i.i90.i.i, label %do.end10.i91.i.i.if.end.i.i67.i.i_crit_edge, label %do.end10.i91.i.i.crypt_free_buffer_pages.exit92.i.i_crit_edge

do.end10.i91.i.i.crypt_free_buffer_pages.exit92.i.i_crit_edge: ; preds = %do.end10.i91.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %crypt_free_buffer_pages.exit92.i.i

do.end10.i91.i.i.if.end.i.i67.i.i_crit_edge:      ; preds = %do.end10.i91.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end.i.i67.i.i

crypt_free_buffer_pages.exit92.i.i:               ; preds = %do.end10.i91.i.i.crypt_free_buffer_pages.exit92.i.i_crit_edge, %if.then18.i.i.crypt_free_buffer_pages.exit92.i.i_crit_edge
  tail call void @bio_put(ptr noundef nonnull %call.i.i17) #20
  br label %out.i.i

out.i.i:                                          ; preds = %crypt_free_buffer_pages.exit92.i.i, %if.end5.i.i.i.out.i.i_crit_edge, %lor.lhs.false.i.i.i.out.i.i_crit_edge, %for.end.i.i.out.i.i_crit_edge, %if.end.i.i.out.i.i_crit_edge
  %clone.0.i.i = phi ptr [ null, %crypt_free_buffer_pages.exit92.i.i ], [ %call.i.i17, %lor.lhs.false.i.i.i.out.i.i_crit_edge ], [ %call.i.i17, %for.end.i.i.out.i.i_crit_edge ], [ %call.i.i17, %if.end5.i.i.i.out.i.i_crit_edge ], [ null, %if.end.i.i.out.i.i_crit_edge ]
  br i1 %tobool.not.i85.i, label %out.i.i.crypt_alloc_buffer.exit.i_crit_edge, label %if.then28.i.i, !prof !413

out.i.i.crypt_alloc_buffer.exit.i_crit_edge:      ; preds = %out.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %crypt_alloc_buffer.exit.i

if.then28.i.i:                                    ; preds = %out.i.i
  call void @__sanitizer_cov_trace_pc() #22
  tail call void @mutex_unlock(ptr noundef %bio_alloc_lock.i.i) #20
  br label %crypt_alloc_buffer.exit.i

crypt_alloc_buffer.exit.i:                        ; preds = %if.then28.i.i, %out.i.i.crypt_alloc_buffer.exit.i_crit_edge
  %tobool.not.i = icmp eq ptr %clone.0.i.i, null
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i, !prof !414

if.then.i:                                        ; preds = %crypt_alloc_buffer.exit.i
  call void @__sanitizer_cov_trace_pc() #22
  %error.i18 = getelementptr i8, ptr %work, i32 196
  %120 = ptrtoint ptr %error.i18 to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 10, ptr %error.i18, align 4
  br label %dec.i

if.end.i:                                         ; preds = %crypt_alloc_buffer.exit.i
  %121 = ptrtoint ptr %bio_out2.i.i8 to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr %clone.0.i.i, ptr %bio_out2.i.i8, align 4
  %iter_out.i = getelementptr i8, ptr %work, i32 156
  %bi_iter10.i = getelementptr inbounds %struct.bio, ptr %clone.0.i.i, i32 0, i32 8
  %122 = call ptr @memcpy(ptr %iter_out.i, ptr %bi_iter10.i, i32 20)
  %bi_size12.i = getelementptr inbounds %struct.bio, ptr %clone.0.i.i, i32 0, i32 8, i32 1
  %123 = ptrtoint ptr %bi_size12.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %bi_size12.i, align 8
  %shr.i = lshr i32 %124, 9
  %conv.i = zext i32 %shr.i to i64
  %add.i = add i64 %32, %conv.i
  %call.i.i.i89.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %io_pending.i.i4, i32 noundef 4) #20
  tail call void @llvm.prefetch.p0(ptr %io_pending.i.i4, i32 1, i32 3, i32 1) #20
  %125 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %io_pending.i.i4, ptr %io_pending.i.i4, i32 1, ptr elementtype(i32) %io_pending.i.i4) #20, !srcloc !426
  %flags.i19 = getelementptr inbounds %struct.crypt_config, ptr %5, i32 0, i32 22
  %126 = ptrtoint ptr %flags.i19 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load volatile i32, ptr %flags.i19, align 4
  %128 = and i32 %127, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %128)
  %tobool14.i = icmp ne i32 %128, 0
  %call15.i = tail call fastcc zeroext i8 @crypt_convert(ptr noundef %5, ptr noundef %ctx2.i, i1 noundef zeroext %tobool14.i, i1 noundef zeroext true) #20
  %129 = zext i8 %call15.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %129, ptr @__sancov_gen_cov_switch_values.173)
  switch i8 %call15.i, label %if.then28.i [
    i8 13, label %do.body.i25
    i8 0, label %if.end.i.if.end30.i_crit_edge
  ]

if.end.i.if.end30.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end30.i

do.body.i25:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #22
  tail call void @__init_work(ptr noundef %work, i32 noundef 0) #20
  %130 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 -64, ptr %work, align 16
  %lockdep_map.i21 = getelementptr i8, ptr %work, i32 16
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i21, ptr noundef nonnull @.str.123, ptr noundef nonnull @kcryptd_crypt_write_convert.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #20
  %entry22.i = getelementptr i8, ptr %work, i32 4
  %131 = ptrtoint ptr %entry22.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store volatile ptr %entry22.i, ptr %entry22.i, align 4
  %prev.i.i22 = getelementptr i8, ptr %work, i32 8
  %132 = ptrtoint ptr %prev.i.i22 to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr %entry22.i, ptr %prev.i.i22, align 4
  %func.i23 = getelementptr i8, ptr %work, i32 12
  %133 = ptrtoint ptr %func.i23 to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr @kcryptd_crypt_write_continue, ptr %func.i23, align 4
  %crypt_queue.i24 = getelementptr inbounds %struct.crypt_config, ptr %5, i32 0, i32 4
  %134 = ptrtoint ptr %crypt_queue.i24 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %crypt_queue.i24, align 4
  %call.i90.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %135, ptr noundef %work) #20
  br label %if.end

if.then28.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #22
  %error29.i = getelementptr i8, ptr %work, i32 196
  %136 = ptrtoint ptr %error29.i to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 %call15.i, ptr %error29.i, align 4
  br label %if.end30.i

if.end30.i:                                       ; preds = %if.then28.i, %if.end.i.if.end30.i_crit_edge
  %cc_pending.i26 = getelementptr i8, ptr %work, i32 184
  %call.i.i.i27 = tail call zeroext i1 @__kasan_check_write(ptr noundef %cc_pending.i26, i32 noundef 4) #20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #20, !srcloc !428
  tail call void @llvm.prefetch.p0(ptr %cc_pending.i26, i32 1, i32 3, i32 1) #20
  %137 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %cc_pending.i26, ptr %cc_pending.i26, i32 1, ptr elementtype(i32) %cc_pending.i26) #20, !srcloc !429
  %asmresult.i.i.i.i.i.i28 = extractvalue { i32, i32 } %137, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #20, !srcloc !430
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i28)
  %cmp.i.i.i29 = icmp eq i32 %asmresult.i.i.i.i.i.i28, 0
  br i1 %cmp.i.i.i29, label %if.end30.i.if.then39.i_crit_edge, label %land.lhs.true.i

if.end30.i.if.then39.i_crit_edge:                 ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then39.i

land.lhs.true.i:                                  ; preds = %if.end30.i
  %138 = ptrtoint ptr %flags.i19 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load volatile i32, ptr %flags.i19, align 4
  %140 = and i32 %139, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %140)
  %tobool.not.i91.i = icmp eq i32 %140, 0
  br i1 %tobool.not.i91.i, label %land.lhs.true.i.dec.i_crit_edge, label %if.end.i92.i

land.lhs.true.i.dec.i_crit_edge:                  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %dec.i

if.end.i92.i:                                     ; preds = %land.lhs.true.i
  %141 = ptrtoint ptr %bio_in1.i.i7 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %bio_in1.i.i7, align 8
  %bi_opf.i.i = getelementptr inbounds %struct.bio, ptr %142, i32 0, i32 2
  %143 = ptrtoint ptr %bi_opf.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %bi_opf.i.i, align 8
  %trunc.i.i = trunc i32 %144 to i8
  %145 = zext i8 %trunc.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %145, ptr @__sancov_gen_cov_switch_values.174)
  switch i8 %trunc.i.i, label %if.end.i92.i.dec.i_crit_edge [
    i8 1, label %if.end.i92.i.if.then36.i_crit_edge
    i8 7, label %if.end.i92.i.if.then36.i_crit_edge90
    i8 9, label %if.end.i92.i.if.then36.i_crit_edge91
  ]

if.end.i92.i.if.then36.i_crit_edge91:             ; preds = %if.end.i92.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then36.i

if.end.i92.i.if.then36.i_crit_edge90:             ; preds = %if.end.i92.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then36.i

if.end.i92.i.if.then36.i_crit_edge:               ; preds = %if.end.i92.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then36.i

if.end.i92.i.dec.i_crit_edge:                     ; preds = %if.end.i92.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %dec.i

if.then36.i:                                      ; preds = %if.end.i92.i.if.then36.i_crit_edge, %if.end.i92.i.if.then36.i_crit_edge90, %if.end.i92.i.if.then36.i_crit_edge91
  tail call void @wait_for_completion(ptr noundef %ctx2.i) #20
  br label %if.then39.i

if.then39.i:                                      ; preds = %if.then36.i, %if.end30.i.if.then39.i_crit_edge
  tail call fastcc void @kcryptd_crypt_write_io_submit(ptr noundef %add.ptr, i32 noundef 0) #20
  %146 = ptrtoint ptr %sector3.i to i32
  call void @__asan_store8_noabort(i32 %146)
  store i64 %add.i, ptr %sector3.i, align 8
  br label %dec.i

dec.i:                                            ; preds = %if.then39.i, %if.end.i92.i.dec.i_crit_edge, %land.lhs.true.i.dec.i_crit_edge, %if.then.i
  tail call fastcc void @crypt_dec_pending(ptr noundef %add.ptr) #20
  br label %if.end

if.end:                                           ; preds = %dec.i, %do.body.i25, %if.end19.i, %do.body.i
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i8 @crypt_convert(ptr noundef %cc, ptr noundef %ctx, i1 noundef zeroext %atomic, i1 noundef zeroext %reset_pending) unnamed_addr #2 align 64 {
entry:
  %b.i = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %sector_size = getelementptr inbounds %struct.crypt_config, ptr %cc, i32 0, i32 15
  %0 = ptrtoint ptr %sector_size to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %sector_size, align 4
  %2 = lshr i16 %1, 9
  br i1 %reset_pending, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  %cc_pending = getelementptr inbounds %struct.convert_context, ptr %ctx, i32 0, i32 6
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %cc_pending, i32 noundef 4) #20
  %3 = ptrtoint ptr %cc_pending to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile i32 1, ptr %cc_pending, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %bi_size = getelementptr inbounds %struct.convert_context, ptr %ctx, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %bi_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bi_size, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool2.not250 = icmp eq i32 %5, 0
  br i1 %tobool2.not250, label %if.end.cleanup_crit_edge, label %land.rhs.lr.ph

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

land.rhs.lr.ph:                                   ; preds = %if.end
  %bi_size3 = getelementptr inbounds %struct.convert_context, ptr %ctx, i32 0, i32 4, i32 1
  %cipher_flags.i.i = getelementptr inbounds %struct.crypt_config, ptr %cc, i32 0, i32 19
  %r.i.i = getelementptr inbounds %struct.convert_context, ptr %ctx, i32 0, i32 7
  %req_pool.i.i = getelementptr inbounds %struct.crypt_config, ptr %cc, i32 0, i32 32
  %cipher_tfm.i.i = getelementptr inbounds %struct.crypt_config, ptr %cc, i32 0, i32 17
  %dmreq_start.i.i.i = getelementptr inbounds %struct.crypt_config, ptr %cc, i32 0, i32 20
  %cc_sector.i.i = getelementptr inbounds %struct.convert_context, ptr %ctx, i32 0, i32 5
  %tfms_count.i.i = getelementptr inbounds %struct.crypt_config, ptr %cc, i32 0, i32 18
  %cc_pending8 = getelementptr inbounds %struct.convert_context, ptr %ctx, i32 0, i32 6
  %bio_in.i = getelementptr inbounds %struct.convert_context, ptr %ctx, i32 0, i32 1
  %iter_in.i = getelementptr inbounds %struct.convert_context, ptr %ctx, i32 0, i32 3
  %bi_idx.i = getelementptr inbounds %struct.convert_context, ptr %ctx, i32 0, i32 3, i32 2
  %bi_bvec_done.i = getelementptr inbounds %struct.convert_context, ptr %ctx, i32 0, i32 3, i32 3
  %bio_out.i = getelementptr inbounds %struct.convert_context, ptr %ctx, i32 0, i32 2
  %iter_out.i = getelementptr inbounds %struct.convert_context, ptr %ctx, i32 0, i32 4
  %bi_idx46.i = getelementptr inbounds %struct.convert_context, ptr %ctx, i32 0, i32 4, i32 2
  %bi_bvec_done56.i = getelementptr inbounds %struct.convert_context, ptr %ctx, i32 0, i32 4, i32 3
  %integrity_iv_size.i = getelementptr inbounds %struct.crypt_config, ptr %cc, i32 0, i32 28
  %iv_size.i = getelementptr inbounds %struct.crypt_config, ptr %cc, i32 0, i32 14
  %sector_shift.i = getelementptr inbounds %struct.crypt_config, ptr %cc, i32 0, i32 16
  %iv_offset.i = getelementptr inbounds %struct.crypt_config, ptr %cc, i32 0, i32 13
  %on_disk_tag_size.i.i = getelementptr inbounds %struct.crypt_config, ptr %cc, i32 0, i32 29
  %integrity_tag_size.i.i = getelementptr inbounds %struct.crypt_config, ptr %cc, i32 0, i32 27
  %iv_gen_ops.i = getelementptr inbounds %struct.crypt_config, ptr %cc, i32 0, i32 11
  %conv43 = zext i16 %2 to i64
  br label %land.rhs

land.rhs:                                         ; preds = %while.cond.backedge.land.rhs_crit_edge, %land.rhs.lr.ph
  %tag_offset.0251 = phi i32 [ 0, %land.rhs.lr.ph ], [ %tag_offset.0.be, %while.cond.backedge.land.rhs_crit_edge ]
  %6 = ptrtoint ptr %bi_size3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bi_size3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool4.not = icmp eq i32 %7, 0
  br i1 %tobool4.not, label %land.rhs.cleanup_crit_edge, label %while.body

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

while.body:                                       ; preds = %land.rhs
  %8 = ptrtoint ptr %cipher_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %cipher_flags.i.i, align 4
  %and1.i.i.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %while.body
  %10 = ptrtoint ptr %r.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %r.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %11, null
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.then.i.if.end12.i.i_crit_edge

if.then.i.if.end12.i.i_crit_edge:                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end12.i.i

if.then.i.i:                                      ; preds = %if.then.i
  %12 = call i32 @llvm.read_register.i32(metadata !400) #20
  %and.i.i.i.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %and.i.i95 = and i32 %15, 15728640
  %16 = call i32 @llvm.read_register.i32(metadata !400) #20
  %and.i.i24.i.i = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i24.i.i to ptr
  %preempt_count.i25.i.i = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %preempt_count.i25.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %preempt_count.i25.i.i, align 4
  %and2.i.i = and i32 %19, 983040
  %or.i.i = or i32 %and2.i.i, %and.i.i95
  %20 = call i32 @llvm.read_register.i32(metadata !400) #20
  %and.i.i26.i.i = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i26.i.i to ptr
  %preempt_count.i27.i.i = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %preempt_count.i27.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %preempt_count.i27.i.i, align 4
  %and4.i.i = and i32 %23, 65280
  %or5.i.i = or i32 %or.i.i, %and4.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or5.i.i)
  %tobool6.not.i.i = icmp eq i32 %or5.i.i, 0
  %cond.i.i = select i1 %tobool6.not.i.i, i32 3072, i32 2592
  %call7.i.i = call noalias ptr @mempool_alloc(ptr noundef %req_pool.i.i, i32 noundef %cond.i.i) #20
  %24 = ptrtoint ptr %r.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call7.i.i, ptr %r.i.i, align 4
  %tobool10.not.i.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool10.not.i.i, label %if.then.i.i.if.then6_crit_edge, label %if.then.i.i.if.end12.i.i_crit_edge

if.then.i.i.if.end12.i.i_crit_edge:               ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end12.i.i

if.then.i.i.if.then6_crit_edge:                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then6

if.end12.i.i:                                     ; preds = %if.then.i.i.if.end12.i.i_crit_edge, %if.then.i.if.end12.i.i_crit_edge
  %25 = ptrtoint ptr %r.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %r.i.i, align 4
  %27 = ptrtoint ptr %cipher_tfm.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %cipher_tfm.i.i, align 8
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 4
  %base.i.i.i.i = getelementptr inbounds %struct.crypto_aead, ptr %30, i32 0, i32 3
  %tfm1.i.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %26, i32 0, i32 3
  %31 = ptrtoint ptr %tfm1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %base.i.i.i.i, ptr %tfm1.i.i.i, align 16
  %32 = load ptr, ptr %r.i.i, align 4
  %33 = ptrtoint ptr %dmreq_start.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %dmreq_start.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %32, i32 %34
  %complete.i.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %32, i32 0, i32 1
  %35 = ptrtoint ptr %complete.i.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @kcryptd_async_done, ptr %complete.i.i.i, align 8
  %data2.i.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %32, i32 0, i32 2
  %36 = ptrtoint ptr %data2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %add.ptr.i.i.i, ptr %data2.i.i.i, align 4
  %flags4.i.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %32, i32 0, i32 4
  br label %if.end7

if.else.i:                                        ; preds = %while.body
  %37 = ptrtoint ptr %cc_sector.i.i to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %cc_sector.i.i, align 8
  %39 = ptrtoint ptr %tfms_count.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %tfms_count.i.i, align 4
  %sub.i.i = add i32 %40, -1
  %41 = trunc i64 %38 to i32
  %conv1.i.i = and i32 %sub.i.i, %41
  %42 = ptrtoint ptr %r.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %r.i.i, align 4
  %tobool.not.i7.i = icmp eq ptr %43, null
  br i1 %tobool.not.i7.i, label %if.then.i15.i, label %if.else.i.if.end14.i.i_crit_edge

if.else.i.if.end14.i.i_crit_edge:                 ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end14.i.i

if.then.i15.i:                                    ; preds = %if.else.i
  %44 = call i32 @llvm.read_register.i32(metadata !400) #20
  %and.i.i.i9.i = and i32 %44, -16384
  %45 = inttoptr i32 %and.i.i.i9.i to ptr
  %preempt_count.i.i10.i = getelementptr inbounds %struct.thread_info, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %preempt_count.i.i10.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %preempt_count.i.i10.i, align 4
  %and2.i11.i = and i32 %47, 15728640
  %48 = call i32 @llvm.read_register.i32(metadata !400) #20
  %and.i.i28.i.i = and i32 %48, -16384
  %49 = inttoptr i32 %and.i.i28.i.i to ptr
  %preempt_count.i29.i.i = getelementptr inbounds %struct.thread_info, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %preempt_count.i29.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %preempt_count.i29.i.i, align 4
  %and4.i12.i = and i32 %51, 983040
  %or.i13.i = or i32 %and4.i12.i, %and2.i11.i
  %52 = call i32 @llvm.read_register.i32(metadata !400) #20
  %and.i.i30.i.i = and i32 %52, -16384
  %53 = inttoptr i32 %and.i.i30.i.i to ptr
  %preempt_count.i31.i.i = getelementptr inbounds %struct.thread_info, ptr %53, i32 0, i32 1
  %54 = ptrtoint ptr %preempt_count.i31.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile i32, ptr %preempt_count.i31.i.i, align 4
  %and6.i.i = and i32 %55, 65280
  %or7.i.i = or i32 %or.i13.i, %and6.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or7.i.i)
  %tobool8.not.i.i = icmp eq i32 %or7.i.i, 0
  %cond.i14.i = select i1 %tobool8.not.i.i, i32 3072, i32 2592
  %call9.i.i = call noalias ptr @mempool_alloc(ptr noundef %req_pool.i.i, i32 noundef %cond.i14.i) #20
  %56 = ptrtoint ptr %r.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %call9.i.i, ptr %r.i.i, align 4
  %tobool12.not.i.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool12.not.i.i, label %if.then.i15.i.if.then6_crit_edge, label %if.then.i15.i.if.end14.i.i_crit_edge

if.then.i15.i.if.end14.i.i_crit_edge:             ; preds = %if.then.i15.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end14.i.i

if.then.i15.i.if.then6_crit_edge:                 ; preds = %if.then.i15.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then6

if.end14.i.i:                                     ; preds = %if.then.i15.i.if.end14.i.i_crit_edge, %if.else.i.if.end14.i.i_crit_edge
  %57 = ptrtoint ptr %r.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %r.i.i, align 4
  %59 = ptrtoint ptr %cipher_tfm.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %cipher_tfm.i.i, align 8
  %arrayidx.i.i = getelementptr ptr, ptr %60, i32 %conv1.i.i
  %61 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %arrayidx.i.i, align 4
  %base.i.i.i17.i = getelementptr inbounds %struct.crypto_skcipher, ptr %62, i32 0, i32 2
  %tfm1.i.i18.i = getelementptr inbounds %struct.skcipher_request, ptr %58, i32 0, i32 4, i32 3
  %63 = ptrtoint ptr %tfm1.i.i18.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %base.i.i.i17.i, ptr %tfm1.i.i18.i, align 16
  %64 = load ptr, ptr %r.i.i, align 4
  %65 = ptrtoint ptr %dmreq_start.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %dmreq_start.i.i.i, align 4
  %add.ptr.i.i20.i = getelementptr i8, ptr %64, i32 %66
  %complete.i.i21.i = getelementptr inbounds %struct.skcipher_request, ptr %64, i32 0, i32 4, i32 1
  %67 = ptrtoint ptr %complete.i.i21.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr @kcryptd_async_done, ptr %complete.i.i21.i, align 8
  %data2.i.i22.i = getelementptr inbounds %struct.skcipher_request, ptr %64, i32 0, i32 4, i32 2
  %68 = ptrtoint ptr %data2.i.i22.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %add.ptr.i.i20.i, ptr %data2.i.i22.i, align 4
  %flags4.i.i23.i = getelementptr inbounds %struct.skcipher_request, ptr %64, i32 0, i32 4, i32 4
  br label %if.end7

if.then6:                                         ; preds = %if.then.i15.i.if.then6_crit_edge, %if.then.i.i.if.then6_crit_edge
  call void @complete(ptr noundef %ctx) #20
  br label %cleanup

if.end7:                                          ; preds = %if.end14.i.i, %if.end12.i.i
  %flags4.i.i23.sink.i = phi ptr [ %flags4.i.i23.i, %if.end14.i.i ], [ %flags4.i.i.i, %if.end12.i.i ]
  %69 = ptrtoint ptr %flags4.i.i23.sink.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 1024, ptr %flags4.i.i23.sink.i, align 4
  %call.i.i87 = call zeroext i1 @__kasan_check_write(ptr noundef %cc_pending8, i32 noundef 4) #20
  call void @llvm.prefetch.p0(ptr %cc_pending8, i32 1, i32 3, i32 1) #20
  %70 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %cc_pending8, ptr %cc_pending8, i32 1, ptr elementtype(i32) %cc_pending8) #20, !srcloc !426
  %71 = ptrtoint ptr %cipher_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load volatile i32, ptr %cipher_flags.i.i, align 4
  %and1.i.i = and i32 %72, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  %73 = ptrtoint ptr %r.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %r.i.i, align 4
  %75 = ptrtoint ptr %bio_in.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %bio_in.i, align 8
  %bi_io_vec.i106 = getelementptr inbounds %struct.bio, ptr %76, i32 0, i32 20
  %77 = ptrtoint ptr %bi_io_vec.i106 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %bi_io_vec.i106, align 8
  %79 = ptrtoint ptr %bi_idx.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %bi_idx.i, align 4
  %arrayidx.i109 = getelementptr %struct.bio_vec, ptr %78, i32 %80
  %81 = ptrtoint ptr %arrayidx.i109 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %arrayidx.i109, align 4
  %bv_offset.i110 = getelementptr %struct.bio_vec, ptr %78, i32 %80, i32 2
  %83 = ptrtoint ptr %bv_offset.i110 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %bv_offset.i110, align 4
  %85 = ptrtoint ptr %bi_bvec_done.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %bi_bvec_done.i, align 8
  %add.i112 = add i32 %86, %84
  %div315.i = lshr i32 %add.i112, 12
  %add.ptr.i113 = getelementptr %struct.page, ptr %82, i32 %div315.i
  %87 = ptrtoint ptr %bi_size to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %bi_size, align 8
  %bv_len14.i115 = getelementptr %struct.bio_vec, ptr %78, i32 %80, i32 1
  %89 = ptrtoint ptr %bv_len14.i115 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %bv_len14.i115, align 4
  %sub.i116 = sub i32 %90, %86
  %91 = call i32 @llvm.umin.i32(i32 %88, i32 %sub.i116) #20
  %rem.i117 = and i32 %add.i112, 4095
  %sub26.i118 = sub nuw nsw i32 4096, %rem.i117
  %92 = call i32 @llvm.umin.i32(i32 %91, i32 %sub26.i118) #20
  %93 = ptrtoint ptr %bio_out.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %bio_out.i, align 4
  %bi_io_vec45.i120 = getelementptr inbounds %struct.bio, ptr %94, i32 0, i32 20
  %95 = ptrtoint ptr %bi_io_vec45.i120 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %bi_io_vec45.i120, align 8
  %97 = ptrtoint ptr %bi_idx46.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %bi_idx46.i, align 4
  %arrayidx47.i123 = getelementptr %struct.bio_vec, ptr %96, i32 %98
  %99 = ptrtoint ptr %arrayidx47.i123 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %arrayidx47.i123, align 4
  %bv_offset54.i124 = getelementptr %struct.bio_vec, ptr %96, i32 %98, i32 2
  %101 = ptrtoint ptr %bv_offset54.i124 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %bv_offset54.i124, align 4
  %103 = ptrtoint ptr %bi_bvec_done56.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %bi_bvec_done56.i, align 4
  %add57.i126 = add i32 %104, %102
  %div58316.i = lshr i32 %add57.i126, 12
  %add.ptr59.i127 = getelementptr %struct.page, ptr %100, i32 %div58316.i
  %rem87.i128 = and i32 %add57.i126, 4095
  br i1 %tobool.i.not, label %if.else, label %if.then10

if.then10:                                        ; preds = %if.end7
  %105 = ptrtoint ptr %integrity_iv_size.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %integrity_iv_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %106)
  %tobool.not.i = icmp eq i32 %106, 0
  br i1 %tobool.not.i, label %if.then10.do.end115.i_crit_edge, label %land.rhs.i

if.then10.do.end115.i_crit_edge:                  ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end115.i

land.rhs.i:                                       ; preds = %if.then10
  %107 = ptrtoint ptr %iv_size.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %iv_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %106, i32 %108)
  %cmp107.not.i = icmp eq i32 %106, %108
  br i1 %cmp107.not.i, label %land.rhs.i.do.end115.i_crit_edge, label %do.body110.i, !prof !413

land.rhs.i.do.end115.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end115.i

do.body110.i:                                     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #22
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/dm-crypt.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1297, 0\0A.popsection", ""() #20, !srcloc !433
  unreachable

do.end115.i:                                      ; preds = %land.rhs.i.do.end115.i_crit_edge, %if.then10.do.end115.i_crit_edge
  %109 = ptrtoint ptr %sector_size to i32
  call void @__asan_load2_noabort(i32 %109)
  %110 = load i16, ptr %sector_size, align 4
  %conv.i = zext i16 %110 to i32
  %sub117.i = add nuw nsw i32 %conv.i, 8191
  %and.i = and i32 %sub117.i, %92
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool118.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool118.not.i, label %if.end126.i, label %do.end115.i.sw.default_crit_edge, !prof !413

do.end115.i.sw.default_crit_edge:                 ; preds = %do.end115.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.default

if.end126.i:                                      ; preds = %do.end115.i
  %111 = ptrtoint ptr %dmreq_start.i.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %dmreq_start.i.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %74, i32 %112
  %113 = ptrtoint ptr %cc_sector.i.i to i32
  call void @__asan_load8_noabort(i32 %113)
  %114 = load i64, ptr %cc_sector.i.i, align 8
  %iv_sector.i = getelementptr inbounds %struct.dm_crypt_request, ptr %add.ptr.i.i, i32 0, i32 3
  %115 = ptrtoint ptr %iv_sector.i to i32
  call void @__asan_store8_noabort(i32 %115)
  store i64 %114, ptr %iv_sector.i, align 8
  %116 = ptrtoint ptr %cipher_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load volatile i32, ptr %cipher_flags.i.i, align 4
  %118 = and i32 %117, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %118)
  %tobool128.not.i = icmp eq i32 %118, 0
  br i1 %tobool128.not.i, label %if.end126.i.if.end132.i_crit_edge, label %if.then129.i

if.end126.i.if.end132.i_crit_edge:                ; preds = %if.end126.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end132.i

if.then129.i:                                     ; preds = %if.end126.i
  call void @__sanitizer_cov_trace_pc() #22
  %119 = ptrtoint ptr %sector_shift.i to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %sector_shift.i, align 2
  %sh_prom.i = zext i8 %120 to i64
  %shr.i = lshr i64 %114, %sh_prom.i
  %121 = ptrtoint ptr %iv_sector.i to i32
  call void @__asan_store8_noabort(i32 %121)
  store i64 %shr.i, ptr %iv_sector.i, align 8
  br label %if.end132.i

if.end132.i:                                      ; preds = %if.then129.i, %if.end126.i.if.end132.i_crit_edge
  %122 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr %ctx, ptr %add.ptr.i.i, align 8
  %123 = ptrtoint ptr %cipher_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load volatile i32, ptr %cipher_flags.i.i, align 4
  %add.ptr8.i.i.i = getelementptr %struct.dm_crypt_request, ptr %add.ptr.i.i, i32 1
  %125 = ptrtoint ptr %add.ptr8.i.i.i to i32
  %126 = ptrtoint ptr %cipher_tfm.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %cipher_tfm.i.i, align 8
  %128 = ptrtoint ptr %127 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %127, align 4
  %__crt_alg.i.i29.i.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %129, i32 0, i32 2, i32 3
  %130 = ptrtoint ptr %__crt_alg.i.i29.i.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %__crt_alg.i.i29.i.i.i, align 4
  %cra_alignmask.i.i30.i.i.i = getelementptr inbounds %struct.crypto_alg, ptr %131, i32 0, i32 5
  %132 = ptrtoint ptr %cra_alignmask.i.i30.i.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %cra_alignmask.i.i30.i.i.i, align 4
  %add13.i.i.i = add i32 %133, %125
  %neg18.i.i.i = xor i32 %133, -1
  %and19.i.i.i = and i32 %add13.i.i.i, %neg18.i.i.i
  %retval.0.i.i.i = inttoptr i32 %and19.i.i.i to ptr
  %134 = ptrtoint ptr %iv_size.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %iv_size.i, align 8
  %add.ptr.i435.i = getelementptr i8, ptr %retval.0.i.i.i, i32 8
  %add.ptr2.i.i = getelementptr i8, ptr %add.ptr.i435.i, i32 %135
  %add.ptr3.i.i = getelementptr i8, ptr %add.ptr2.i.i, i32 %135
  %136 = ptrtoint ptr %add.ptr3.i.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 %tag_offset.0251, ptr %add.ptr3.i.i, align 4
  %137 = load volatile i32, ptr %cipher_flags.i.i, align 4
  %138 = load ptr, ptr %cipher_tfm.i.i, align 8
  %139 = ptrtoint ptr %138 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %138, align 4
  %__crt_alg.i.i29.i.i439.i = getelementptr inbounds %struct.crypto_skcipher, ptr %140, i32 0, i32 2, i32 3
  %141 = ptrtoint ptr %__crt_alg.i.i29.i.i439.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %__crt_alg.i.i29.i.i439.i, align 4
  %cra_alignmask.i.i30.i.i440.i = getelementptr inbounds %struct.crypto_alg, ptr %142, i32 0, i32 5
  %143 = ptrtoint ptr %cra_alignmask.i.i30.i.i440.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %cra_alignmask.i.i30.i.i440.i, align 4
  %add13.i.i441.i = add i32 %144, %125
  %neg18.i.i442.i = xor i32 %144, -1
  %and19.i.i443.i = and i32 %add13.i.i441.i, %neg18.i.i442.i
  %retval.0.i.i444.i = inttoptr i32 %and19.i.i443.i to ptr
  %145 = load i32, ptr %iv_size.i, align 8
  %add.ptr.i446.i = getelementptr i8, ptr %retval.0.i.i444.i, i32 %145
  %add.ptr2.i447.i = getelementptr i8, ptr %add.ptr.i446.i, i32 %145
  %146 = ptrtoint ptr %cc_sector.i.i to i32
  call void @__asan_load8_noabort(i32 %146)
  %147 = load i64, ptr %cc_sector.i.i, align 8
  %148 = ptrtoint ptr %iv_offset.i to i32
  call void @__asan_load8_noabort(i32 %148)
  %149 = load i64, ptr %iv_offset.i, align 8
  %sub137.i = sub i64 %147, %149
  %150 = call i64 @llvm.bswap.i64(i64 %sub137.i) #20
  %151 = ptrtoint ptr %add.ptr2.i447.i to i32
  call void @__asan_store8_noabort(i32 %151)
  store i64 %150, ptr %add.ptr2.i447.i, align 8
  %152 = ptrtoint ptr %cipher_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load volatile i32, ptr %cipher_flags.i.i, align 4
  %154 = ptrtoint ptr %cipher_tfm.i.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %cipher_tfm.i.i, align 8
  %156 = ptrtoint ptr %155 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %155, align 4
  %__crt_alg.i.i29.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %157, i32 0, i32 2, i32 3
  %158 = ptrtoint ptr %__crt_alg.i.i29.i.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %__crt_alg.i.i29.i.i, align 4
  %cra_alignmask.i.i30.i.i = getelementptr inbounds %struct.crypto_alg, ptr %159, i32 0, i32 5
  %160 = ptrtoint ptr %cra_alignmask.i.i30.i.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %cra_alignmask.i.i30.i.i, align 4
  %add13.i.i = add i32 %161, %125
  %neg18.i.i = xor i32 %161, -1
  %and19.i.i = and i32 %add13.i.i, %neg18.i.i
  %retval.0.i.i = inttoptr i32 %and19.i.i to ptr
  %162 = load volatile i32, ptr %cipher_flags.i.i, align 4
  %163 = ptrtoint ptr %iv_size.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %iv_size.i, align 8
  %add.ptr.i458.i = getelementptr i8, ptr %retval.0.i.i, i32 %164
  %165 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %add.ptr.i.i, align 8
  %integrity_metadata.i.i = getelementptr i8, ptr %166, i32 -80
  %167 = ptrtoint ptr %integrity_metadata.i.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %integrity_metadata.i.i, align 8
  %169 = load volatile i32, ptr %cipher_flags.i.i, align 4
  %add.ptr2.i.i.i = getelementptr i8, ptr %add.ptr.i458.i, i32 8
  %add.ptr3.i.i.i = getelementptr i8, ptr %add.ptr2.i.i.i, i32 %164
  %170 = ptrtoint ptr %add.ptr3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %add.ptr3.i.i.i, align 4
  %172 = ptrtoint ptr %on_disk_tag_size.i.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %on_disk_tag_size.i.i, align 8
  %mul.i.i = mul i32 %173, %171
  %arrayidx.i.i97 = getelementptr i8, ptr %168, i32 %mul.i.i
  %174 = load volatile i32, ptr %cipher_flags.i.i, align 4
  %175 = ptrtoint ptr %integrity_tag_size.i.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %integrity_tag_size.i.i, align 8
  %add.ptr.i459.i = getelementptr i8, ptr %arrayidx.i.i97, i32 %176
  %sg_in.i = getelementptr inbounds %struct.dm_crypt_request, ptr %add.ptr.i.i, i32 0, i32 1
  call void @sg_init_table(ptr noundef %sg_in.i, i32 noundef 4) #20
  %177 = ptrtoint ptr %add.ptr2.i447.i to i32
  %cmp.i.i = icmp ugt ptr %add.ptr2.i447.i, inttoptr (i32 -1073741825 to ptr)
  br i1 %cmp.i.i, label %land.lhs.true.i.i, label %if.end132.i.do.body5.i.i_crit_edge, !prof !413

if.end132.i.do.body5.i.i_crit_edge:               ; preds = %if.end132.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.body5.i.i

land.lhs.true.i.i:                                ; preds = %if.end132.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %178 = load ptr, ptr @high_memory, align 4
  %cmp1.i.i = icmp ugt ptr %178, %add.ptr2.i447.i
  br i1 %cmp1.i.i, label %land.rhs.i.i, label %land.lhs.true.i.i.do.body5.i.i_crit_edge, !prof !413

land.lhs.true.i.i.do.body5.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.body5.i.i

land.rhs.i.i:                                     ; preds = %land.lhs.true.i.i
  %sub.i.i98 = add i32 %177, 1073741824
  %shr.i460.i = lshr i32 %sub.i.i98, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %179 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i.i = add i32 %179, %shr.i460.i
  %call.i.i99 = call i32 @pfn_valid(i32 noundef %add.i.i) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i99)
  %tobool.i.i = icmp eq i32 %call.i.i99, 0
  br i1 %tobool.i.i, label %land.rhs.i.i.do.body5.i.i_crit_edge, label %do.end8.i.i, !prof !414

land.rhs.i.i.do.body5.i.i_crit_edge:              ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.body5.i.i

do.body5.i.i:                                     ; preds = %land.rhs.i.i.do.body5.i.i_crit_edge, %land.lhs.true.i.i.do.body5.i.i_crit_edge, %if.end132.i.do.body5.i.i_crit_edge
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 160, 0\0A.popsection", ""() #20, !srcloc !434
  unreachable

do.end8.i.i:                                      ; preds = %land.rhs.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %180 = load ptr, ptr @mem_map, align 4
  %add.ptr.i461.i = getelementptr %struct.page, ptr %180, i32 %shr.i460.i
  %181 = ptrtoint ptr %sg_in.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %sg_in.i, align 4
  %183 = ptrtoint ptr %add.ptr.i461.i to i32
  %and2.i.i.i.i = and i32 %183, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and2.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %do.body11.i.i.i.i, label %do.body5.i.i.i.i, !prof !413

do.body5.i.i.i.i:                                 ; preds = %do.end8.i.i
  call void @__sanitizer_cov_trace_pc() #22
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #20, !srcloc !435
  unreachable

do.body11.i.i.i.i:                                ; preds = %do.end8.i.i
  %and.i.i.i.i.i = and i32 %182, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.i.not.i.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i.i, label %sg_set_buf.exit.i, label %do.body19.i.i.i.i, !prof !413

do.body19.i.i.i.i:                                ; preds = %do.body11.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #20, !srcloc !436
  unreachable

sg_set_buf.exit.i:                                ; preds = %do.body11.i.i.i.i
  %and.i.i100 = and i32 %177, 4095
  %and.i.i.i.i101 = and i32 %182, 3
  %or.i.i.i.i = or i32 %and.i.i.i.i101, %183
  %184 = ptrtoint ptr %sg_in.i to i32
  call void @__asan_store4_noabort(i32 %184)
  store i32 %or.i.i.i.i, ptr %sg_in.i, align 4
  %offset1.i.i.i = getelementptr inbounds %struct.scatterlist, ptr %sg_in.i, i32 0, i32 1
  %185 = ptrtoint ptr %offset1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %185)
  store i32 %and.i.i100, ptr %offset1.i.i.i, align 4
  %length.i.i.i = getelementptr inbounds %struct.scatterlist, ptr %sg_in.i, i32 0, i32 2
  %186 = ptrtoint ptr %length.i.i.i to i32
  call void @__asan_store4_noabort(i32 %186)
  store i32 8, ptr %length.i.i.i, align 4
  %arrayidx145.i = getelementptr %struct.dm_crypt_request, ptr %add.ptr.i.i, i32 0, i32 1, i32 1
  %187 = ptrtoint ptr %iv_size.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %iv_size.i, align 8
  %189 = ptrtoint ptr %add.ptr.i458.i to i32
  %cmp.i462.i = icmp ugt ptr %add.ptr.i458.i, inttoptr (i32 -1073741825 to ptr)
  br i1 %cmp.i462.i, label %land.lhs.true.i464.i, label %sg_set_buf.exit.i.do.body5.i471.i_crit_edge, !prof !413

sg_set_buf.exit.i.do.body5.i471.i_crit_edge:      ; preds = %sg_set_buf.exit.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.body5.i471.i

land.lhs.true.i464.i:                             ; preds = %sg_set_buf.exit.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %190 = load ptr, ptr @high_memory, align 4
  %cmp1.i463.i = icmp ugt ptr %190, %add.ptr.i458.i
  br i1 %cmp1.i463.i, label %land.rhs.i470.i, label %land.lhs.true.i464.i.do.body5.i471.i_crit_edge, !prof !413

land.lhs.true.i464.i.do.body5.i471.i_crit_edge:   ; preds = %land.lhs.true.i464.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.body5.i471.i

land.rhs.i470.i:                                  ; preds = %land.lhs.true.i464.i
  %sub.i465.i = add i32 %189, 1073741824
  %shr.i466.i = lshr i32 %sub.i465.i, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %191 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i467.i = add i32 %191, %shr.i466.i
  %call.i468.i = call i32 @pfn_valid(i32 noundef %add.i467.i) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i468.i)
  %tobool.i469.i = icmp eq i32 %call.i468.i, 0
  br i1 %tobool.i469.i, label %land.rhs.i470.i.do.body5.i471.i_crit_edge, label %do.end8.i475.i, !prof !414

land.rhs.i470.i.do.body5.i471.i_crit_edge:        ; preds = %land.rhs.i470.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.body5.i471.i

do.body5.i471.i:                                  ; preds = %land.rhs.i470.i.do.body5.i471.i_crit_edge, %land.lhs.true.i464.i.do.body5.i471.i_crit_edge, %sg_set_buf.exit.i.do.body5.i471.i_crit_edge
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 160, 0\0A.popsection", ""() #20, !srcloc !434
  unreachable

do.end8.i475.i:                                   ; preds = %land.rhs.i470.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %192 = load ptr, ptr @mem_map, align 4
  %add.ptr.i472.i = getelementptr %struct.page, ptr %192, i32 %shr.i466.i
  %193 = ptrtoint ptr %arrayidx145.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %arrayidx145.i, align 4
  %195 = ptrtoint ptr %add.ptr.i472.i to i32
  %and2.i.i.i473.i = and i32 %195, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i473.i)
  %tobool.not.i.i.i474.i = icmp eq i32 %and2.i.i.i473.i, 0
  br i1 %tobool.not.i.i.i474.i, label %do.body11.i.i.i479.i, label %do.body5.i.i.i476.i, !prof !413

do.body5.i.i.i476.i:                              ; preds = %do.end8.i475.i
  call void @__sanitizer_cov_trace_pc() #22
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #20, !srcloc !435
  unreachable

do.body11.i.i.i479.i:                             ; preds = %do.end8.i475.i
  %and.i.i.i.i477.i = and i32 %194, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i477.i)
  %tobool.i.not.i.i.i478.i = icmp eq i32 %and.i.i.i.i477.i, 0
  br i1 %tobool.i.not.i.i.i478.i, label %sg_set_buf.exit486.i, label %do.body19.i.i.i480.i, !prof !413

do.body19.i.i.i480.i:                             ; preds = %do.body11.i.i.i479.i
  call void @__sanitizer_cov_trace_pc() #22
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #20, !srcloc !436
  unreachable

sg_set_buf.exit486.i:                             ; preds = %do.body11.i.i.i479.i
  %and.i481.i = and i32 %189, 4095
  %and.i.i.i482.i = and i32 %194, 3
  %or.i.i.i483.i = or i32 %and.i.i.i482.i, %195
  %196 = ptrtoint ptr %arrayidx145.i to i32
  call void @__asan_store4_noabort(i32 %196)
  store i32 %or.i.i.i483.i, ptr %arrayidx145.i, align 4
  %offset1.i.i484.i = getelementptr inbounds %struct.scatterlist, ptr %arrayidx145.i, i32 0, i32 1
  %197 = ptrtoint ptr %offset1.i.i484.i to i32
  call void @__asan_store4_noabort(i32 %197)
  store i32 %and.i481.i, ptr %offset1.i.i484.i, align 4
  %length.i.i485.i = getelementptr inbounds %struct.scatterlist, ptr %arrayidx145.i, i32 0, i32 2
  %198 = ptrtoint ptr %length.i.i485.i to i32
  call void @__asan_store4_noabort(i32 %198)
  store i32 %188, ptr %length.i.i485.i, align 4
  %arrayidx148.i = getelementptr %struct.dm_crypt_request, ptr %add.ptr.i.i, i32 0, i32 1, i32 2
  %199 = ptrtoint ptr %sector_size to i32
  call void @__asan_load2_noabort(i32 %199)
  %200 = load i16, ptr %sector_size, align 4
  %conv151.i = zext i16 %200 to i32
  %201 = ptrtoint ptr %arrayidx148.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %arrayidx148.i, align 4
  %203 = ptrtoint ptr %add.ptr.i113 to i32
  %and2.i.i.i = and i32 %203, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and2.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %do.body11.i.i.i, label %do.body5.i.i.i, !prof !413

do.body5.i.i.i:                                   ; preds = %sg_set_buf.exit486.i
  call void @__sanitizer_cov_trace_pc() #22
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #20, !srcloc !435
  unreachable

do.body11.i.i.i:                                  ; preds = %sg_set_buf.exit486.i
  %and.i.i.i487.i = and i32 %202, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i487.i)
  %tobool.i.not.i.i.i = icmp eq i32 %and.i.i.i487.i, 0
  br i1 %tobool.i.not.i.i.i, label %sg_set_page.exit.i, label %do.body19.i.i.i, !prof !413

do.body19.i.i.i:                                  ; preds = %do.body11.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #20, !srcloc !436
  unreachable

sg_set_page.exit.i:                               ; preds = %do.body11.i.i.i
  %and.i.i.i = and i32 %202, 3
  %or.i.i.i = or i32 %and.i.i.i, %203
  %204 = ptrtoint ptr %arrayidx148.i to i32
  call void @__asan_store4_noabort(i32 %204)
  store i32 %or.i.i.i, ptr %arrayidx148.i, align 4
  %offset1.i.i = getelementptr inbounds %struct.scatterlist, ptr %arrayidx148.i, i32 0, i32 1
  %205 = ptrtoint ptr %offset1.i.i to i32
  call void @__asan_store4_noabort(i32 %205)
  store i32 %rem.i117, ptr %offset1.i.i, align 4
  %length.i.i = getelementptr inbounds %struct.scatterlist, ptr %arrayidx148.i, i32 0, i32 2
  %206 = ptrtoint ptr %length.i.i to i32
  call void @__asan_store4_noabort(i32 %206)
  store i32 %conv151.i, ptr %length.i.i, align 4
  %arrayidx154.i = getelementptr %struct.dm_crypt_request, ptr %add.ptr.i.i, i32 0, i32 1, i32 3
  %207 = ptrtoint ptr %integrity_tag_size.i.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %integrity_tag_size.i.i, align 8
  %209 = ptrtoint ptr %arrayidx.i.i97 to i32
  %cmp.i488.i = icmp ugt ptr %arrayidx.i.i97, inttoptr (i32 -1073741825 to ptr)
  br i1 %cmp.i488.i, label %land.lhs.true.i490.i, label %sg_set_page.exit.i.do.body5.i497.i_crit_edge, !prof !413

sg_set_page.exit.i.do.body5.i497.i_crit_edge:     ; preds = %sg_set_page.exit.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.body5.i497.i

land.lhs.true.i490.i:                             ; preds = %sg_set_page.exit.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %210 = load ptr, ptr @high_memory, align 4
  %cmp1.i489.i = icmp ugt ptr %210, %arrayidx.i.i97
  br i1 %cmp1.i489.i, label %land.rhs.i496.i, label %land.lhs.true.i490.i.do.body5.i497.i_crit_edge, !prof !413

land.lhs.true.i490.i.do.body5.i497.i_crit_edge:   ; preds = %land.lhs.true.i490.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.body5.i497.i

land.rhs.i496.i:                                  ; preds = %land.lhs.true.i490.i
  %sub.i491.i = add i32 %209, 1073741824
  %shr.i492.i = lshr i32 %sub.i491.i, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %211 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i493.i = add i32 %211, %shr.i492.i
  %call.i494.i = call i32 @pfn_valid(i32 noundef %add.i493.i) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i494.i)
  %tobool.i495.i = icmp eq i32 %call.i494.i, 0
  br i1 %tobool.i495.i, label %land.rhs.i496.i.do.body5.i497.i_crit_edge, label %do.end8.i501.i, !prof !414

land.rhs.i496.i.do.body5.i497.i_crit_edge:        ; preds = %land.rhs.i496.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.body5.i497.i

do.body5.i497.i:                                  ; preds = %land.rhs.i496.i.do.body5.i497.i_crit_edge, %land.lhs.true.i490.i.do.body5.i497.i_crit_edge, %sg_set_page.exit.i.do.body5.i497.i_crit_edge
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 160, 0\0A.popsection", ""() #20, !srcloc !434
  unreachable

do.end8.i501.i:                                   ; preds = %land.rhs.i496.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %212 = load ptr, ptr @mem_map, align 4
  %add.ptr.i498.i = getelementptr %struct.page, ptr %212, i32 %shr.i492.i
  %213 = ptrtoint ptr %arrayidx154.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %arrayidx154.i, align 4
  %215 = ptrtoint ptr %add.ptr.i498.i to i32
  %and2.i.i.i499.i = and i32 %215, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i499.i)
  %tobool.not.i.i.i500.i = icmp eq i32 %and2.i.i.i499.i, 0
  br i1 %tobool.not.i.i.i500.i, label %do.body11.i.i.i505.i, label %do.body5.i.i.i502.i, !prof !413

do.body5.i.i.i502.i:                              ; preds = %do.end8.i501.i
  call void @__sanitizer_cov_trace_pc() #22
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #20, !srcloc !435
  unreachable

do.body11.i.i.i505.i:                             ; preds = %do.end8.i501.i
  %and.i.i.i.i503.i = and i32 %214, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i503.i)
  %tobool.i.not.i.i.i504.i = icmp eq i32 %and.i.i.i.i503.i, 0
  br i1 %tobool.i.not.i.i.i504.i, label %land.lhs.true.i515.i, label %do.body19.i.i.i506.i, !prof !413

do.body19.i.i.i506.i:                             ; preds = %do.body11.i.i.i505.i
  call void @__sanitizer_cov_trace_pc() #22
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #20, !srcloc !436
  unreachable

land.lhs.true.i515.i:                             ; preds = %do.body11.i.i.i505.i
  %and.i507.i = and i32 %209, 4095
  %and.i.i.i508.i = and i32 %214, 3
  %or.i.i.i509.i = or i32 %and.i.i.i508.i, %215
  %216 = ptrtoint ptr %arrayidx154.i to i32
  call void @__asan_store4_noabort(i32 %216)
  store i32 %or.i.i.i509.i, ptr %arrayidx154.i, align 4
  %offset1.i.i510.i = getelementptr inbounds %struct.scatterlist, ptr %arrayidx154.i, i32 0, i32 1
  %217 = ptrtoint ptr %offset1.i.i510.i to i32
  call void @__asan_store4_noabort(i32 %217)
  store i32 %and.i507.i, ptr %offset1.i.i510.i, align 4
  %length.i.i511.i = getelementptr inbounds %struct.scatterlist, ptr %arrayidx154.i, i32 0, i32 2
  %218 = ptrtoint ptr %length.i.i511.i to i32
  call void @__asan_store4_noabort(i32 %218)
  store i32 %208, ptr %length.i.i511.i, align 4
  %sg_out.i = getelementptr inbounds %struct.dm_crypt_request, ptr %add.ptr.i.i, i32 0, i32 2
  call void @sg_init_table(ptr noundef %sg_out.i, i32 noundef 4) #20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %219 = load ptr, ptr @high_memory, align 4
  %cmp1.i514.i = icmp ugt ptr %219, %add.ptr2.i447.i
  br i1 %cmp1.i514.i, label %land.rhs.i521.i, label %land.lhs.true.i515.i.do.body5.i522.i_crit_edge, !prof !413

land.lhs.true.i515.i.do.body5.i522.i_crit_edge:   ; preds = %land.lhs.true.i515.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.body5.i522.i

land.rhs.i521.i:                                  ; preds = %land.lhs.true.i515.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %220 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i518.i = add i32 %220, %shr.i460.i
  %call.i519.i = call i32 @pfn_valid(i32 noundef %add.i518.i) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i519.i)
  %tobool.i520.i = icmp eq i32 %call.i519.i, 0
  br i1 %tobool.i520.i, label %land.rhs.i521.i.do.body5.i522.i_crit_edge, label %do.end8.i526.i, !prof !414

land.rhs.i521.i.do.body5.i522.i_crit_edge:        ; preds = %land.rhs.i521.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.body5.i522.i

do.body5.i522.i:                                  ; preds = %land.rhs.i521.i.do.body5.i522.i_crit_edge, %land.lhs.true.i515.i.do.body5.i522.i_crit_edge
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 160, 0\0A.popsection", ""() #20, !srcloc !434
  unreachable

do.end8.i526.i:                                   ; preds = %land.rhs.i521.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %221 = load ptr, ptr @mem_map, align 4
  %add.ptr.i523.i = getelementptr %struct.page, ptr %221, i32 %shr.i460.i
  %222 = ptrtoint ptr %sg_out.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %sg_out.i, align 4
  %224 = ptrtoint ptr %add.ptr.i523.i to i32
  %and2.i.i.i524.i = and i32 %224, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i524.i)
  %tobool.not.i.i.i525.i = icmp eq i32 %and2.i.i.i524.i, 0
  br i1 %tobool.not.i.i.i525.i, label %do.body11.i.i.i530.i, label %do.body5.i.i.i527.i, !prof !413

do.body5.i.i.i527.i:                              ; preds = %do.end8.i526.i
  call void @__sanitizer_cov_trace_pc() #22
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #20, !srcloc !435
  unreachable

do.body11.i.i.i530.i:                             ; preds = %do.end8.i526.i
  %and.i.i.i.i528.i = and i32 %223, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i528.i)
  %tobool.i.not.i.i.i529.i = icmp eq i32 %and.i.i.i.i528.i, 0
  br i1 %tobool.i.not.i.i.i529.i, label %land.lhs.true.i540.i, label %do.body19.i.i.i531.i, !prof !413

do.body19.i.i.i531.i:                             ; preds = %do.body11.i.i.i530.i
  call void @__sanitizer_cov_trace_pc() #22
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #20, !srcloc !436
  unreachable

land.lhs.true.i540.i:                             ; preds = %do.body11.i.i.i530.i
  %and.i.i.i533.i = and i32 %223, 3
  %or.i.i.i534.i = or i32 %and.i.i.i533.i, %224
  %225 = ptrtoint ptr %sg_out.i to i32
  call void @__asan_store4_noabort(i32 %225)
  store i32 %or.i.i.i534.i, ptr %sg_out.i, align 4
  %offset1.i.i535.i = getelementptr inbounds %struct.scatterlist, ptr %sg_out.i, i32 0, i32 1
  %226 = ptrtoint ptr %offset1.i.i535.i to i32
  call void @__asan_store4_noabort(i32 %226)
  store i32 %and.i.i100, ptr %offset1.i.i535.i, align 4
  %length.i.i536.i = getelementptr inbounds %struct.scatterlist, ptr %sg_out.i, i32 0, i32 2
  %227 = ptrtoint ptr %length.i.i536.i to i32
  call void @__asan_store4_noabort(i32 %227)
  store i32 8, ptr %length.i.i536.i, align 4
  %arrayidx159.i = getelementptr %struct.dm_crypt_request, ptr %add.ptr.i.i, i32 0, i32 2, i32 1
  %228 = ptrtoint ptr %iv_size.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %iv_size.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %230 = load ptr, ptr @high_memory, align 4
  %cmp1.i539.i = icmp ugt ptr %230, %add.ptr.i458.i
  br i1 %cmp1.i539.i, label %land.rhs.i546.i, label %land.lhs.true.i540.i.do.body5.i547.i_crit_edge, !prof !413

land.lhs.true.i540.i.do.body5.i547.i_crit_edge:   ; preds = %land.lhs.true.i540.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.body5.i547.i

land.rhs.i546.i:                                  ; preds = %land.lhs.true.i540.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %231 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i543.i = add i32 %231, %shr.i466.i
  %call.i544.i = call i32 @pfn_valid(i32 noundef %add.i543.i) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i544.i)
  %tobool.i545.i = icmp eq i32 %call.i544.i, 0
  br i1 %tobool.i545.i, label %land.rhs.i546.i.do.body5.i547.i_crit_edge, label %do.end8.i551.i, !prof !414

land.rhs.i546.i.do.body5.i547.i_crit_edge:        ; preds = %land.rhs.i546.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.body5.i547.i

do.body5.i547.i:                                  ; preds = %land.rhs.i546.i.do.body5.i547.i_crit_edge, %land.lhs.true.i540.i.do.body5.i547.i_crit_edge
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 160, 0\0A.popsection", ""() #20, !srcloc !434
  unreachable

do.end8.i551.i:                                   ; preds = %land.rhs.i546.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %232 = load ptr, ptr @mem_map, align 4
  %add.ptr.i548.i = getelementptr %struct.page, ptr %232, i32 %shr.i466.i
  %233 = ptrtoint ptr %arrayidx159.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %arrayidx159.i, align 4
  %235 = ptrtoint ptr %add.ptr.i548.i to i32
  %and2.i.i.i549.i = and i32 %235, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i549.i)
  %tobool.not.i.i.i550.i = icmp eq i32 %and2.i.i.i549.i, 0
  br i1 %tobool.not.i.i.i550.i, label %do.body11.i.i.i555.i, label %do.body5.i.i.i552.i, !prof !413

do.body5.i.i.i552.i:                              ; preds = %do.end8.i551.i
  call void @__sanitizer_cov_trace_pc() #22
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #20, !srcloc !435
  unreachable

do.body11.i.i.i555.i:                             ; preds = %do.end8.i551.i
  %and.i.i.i.i553.i = and i32 %234, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i553.i)
  %tobool.i.not.i.i.i554.i = icmp eq i32 %and.i.i.i.i553.i, 0
  br i1 %tobool.i.not.i.i.i554.i, label %sg_set_buf.exit562.i, label %do.body19.i.i.i556.i, !prof !413

do.body19.i.i.i556.i:                             ; preds = %do.body11.i.i.i555.i
  call void @__sanitizer_cov_trace_pc() #22
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #20, !srcloc !436
  unreachable

sg_set_buf.exit562.i:                             ; preds = %do.body11.i.i.i555.i
  %and.i.i.i558.i = and i32 %234, 3
  %or.i.i.i559.i = or i32 %and.i.i.i558.i, %235
  %236 = ptrtoint ptr %arrayidx159.i to i32
  call void @__asan_store4_noabort(i32 %236)
  store i32 %or.i.i.i559.i, ptr %arrayidx159.i, align 4
  %offset1.i.i560.i = getelementptr inbounds %struct.scatterlist, ptr %arrayidx159.i, i32 0, i32 1
  %237 = ptrtoint ptr %offset1.i.i560.i to i32
  call void @__asan_store4_noabort(i32 %237)
  store i32 %and.i481.i, ptr %offset1.i.i560.i, align 4
  %length.i.i561.i = getelementptr inbounds %struct.scatterlist, ptr %arrayidx159.i, i32 0, i32 2
  %238 = ptrtoint ptr %length.i.i561.i to i32
  call void @__asan_store4_noabort(i32 %238)
  store i32 %229, ptr %length.i.i561.i, align 4
  %arrayidx162.i = getelementptr %struct.dm_crypt_request, ptr %add.ptr.i.i, i32 0, i32 2, i32 2
  %239 = ptrtoint ptr %sector_size to i32
  call void @__asan_load2_noabort(i32 %239)
  %240 = load i16, ptr %sector_size, align 4
  %conv165.i = zext i16 %240 to i32
  %241 = ptrtoint ptr %arrayidx162.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load i32, ptr %arrayidx162.i, align 4
  %243 = ptrtoint ptr %add.ptr59.i127 to i32
  %and2.i.i563.i = and i32 %243, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i563.i)
  %tobool.not.i.i564.i = icmp eq i32 %and2.i.i563.i, 0
  br i1 %tobool.not.i.i564.i, label %do.body11.i.i568.i, label %do.body5.i.i565.i, !prof !413

do.body5.i.i565.i:                                ; preds = %sg_set_buf.exit562.i
  call void @__sanitizer_cov_trace_pc() #22
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #20, !srcloc !435
  unreachable

do.body11.i.i568.i:                               ; preds = %sg_set_buf.exit562.i
  %and.i.i.i566.i = and i32 %242, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i566.i)
  %tobool.i.not.i.i567.i = icmp eq i32 %and.i.i.i566.i, 0
  br i1 %tobool.i.not.i.i567.i, label %land.lhs.true.i577.i, label %do.body19.i.i569.i, !prof !413

do.body19.i.i569.i:                               ; preds = %do.body11.i.i568.i
  call void @__sanitizer_cov_trace_pc() #22
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #20, !srcloc !436
  unreachable

land.lhs.true.i577.i:                             ; preds = %do.body11.i.i568.i
  %and.i.i570.i = and i32 %242, 3
  %or.i.i571.i = or i32 %and.i.i570.i, %243
  %244 = ptrtoint ptr %arrayidx162.i to i32
  call void @__asan_store4_noabort(i32 %244)
  store i32 %or.i.i571.i, ptr %arrayidx162.i, align 4
  %offset1.i572.i = getelementptr inbounds %struct.scatterlist, ptr %arrayidx162.i, i32 0, i32 1
  %245 = ptrtoint ptr %offset1.i572.i to i32
  call void @__asan_store4_noabort(i32 %245)
  store i32 %rem87.i128, ptr %offset1.i572.i, align 4
  %length.i573.i = getelementptr inbounds %struct.scatterlist, ptr %arrayidx162.i, i32 0, i32 2
  %246 = ptrtoint ptr %length.i573.i to i32
  call void @__asan_store4_noabort(i32 %246)
  store i32 %conv165.i, ptr %length.i573.i, align 4
  %arrayidx168.i = getelementptr %struct.dm_crypt_request, ptr %add.ptr.i.i, i32 0, i32 2, i32 3
  %247 = ptrtoint ptr %integrity_tag_size.i.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %integrity_tag_size.i.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %249 = load ptr, ptr @high_memory, align 4
  %cmp1.i576.i = icmp ugt ptr %249, %arrayidx.i.i97
  br i1 %cmp1.i576.i, label %land.rhs.i583.i, label %land.lhs.true.i577.i.do.body5.i584.i_crit_edge, !prof !413

land.lhs.true.i577.i.do.body5.i584.i_crit_edge:   ; preds = %land.lhs.true.i577.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.body5.i584.i

land.rhs.i583.i:                                  ; preds = %land.lhs.true.i577.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %250 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i580.i = add i32 %250, %shr.i492.i
  %call.i581.i = call i32 @pfn_valid(i32 noundef %add.i580.i) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i581.i)
  %tobool.i582.i = icmp eq i32 %call.i581.i, 0
  br i1 %tobool.i582.i, label %land.rhs.i583.i.do.body5.i584.i_crit_edge, label %do.end8.i588.i, !prof !414

land.rhs.i583.i.do.body5.i584.i_crit_edge:        ; preds = %land.rhs.i583.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.body5.i584.i

do.body5.i584.i:                                  ; preds = %land.rhs.i583.i.do.body5.i584.i_crit_edge, %land.lhs.true.i577.i.do.body5.i584.i_crit_edge
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 160, 0\0A.popsection", ""() #20, !srcloc !434
  unreachable

do.end8.i588.i:                                   ; preds = %land.rhs.i583.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %251 = load ptr, ptr @mem_map, align 4
  %add.ptr.i585.i = getelementptr %struct.page, ptr %251, i32 %shr.i492.i
  %252 = ptrtoint ptr %arrayidx168.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %arrayidx168.i, align 4
  %254 = ptrtoint ptr %add.ptr.i585.i to i32
  %and2.i.i.i586.i = and i32 %254, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i586.i)
  %tobool.not.i.i.i587.i = icmp eq i32 %and2.i.i.i586.i, 0
  br i1 %tobool.not.i.i.i587.i, label %do.body11.i.i.i592.i, label %do.body5.i.i.i589.i, !prof !413

do.body5.i.i.i589.i:                              ; preds = %do.end8.i588.i
  call void @__sanitizer_cov_trace_pc() #22
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #20, !srcloc !435
  unreachable

do.body11.i.i.i592.i:                             ; preds = %do.end8.i588.i
  %and.i.i.i.i590.i = and i32 %253, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i590.i)
  %tobool.i.not.i.i.i591.i = icmp eq i32 %and.i.i.i.i590.i, 0
  br i1 %tobool.i.not.i.i.i591.i, label %sg_set_buf.exit599.i, label %do.body19.i.i.i593.i, !prof !413

do.body19.i.i.i593.i:                             ; preds = %do.body11.i.i.i592.i
  call void @__sanitizer_cov_trace_pc() #22
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #20, !srcloc !436
  unreachable

sg_set_buf.exit599.i:                             ; preds = %do.body11.i.i.i592.i
  %and.i.i.i595.i = and i32 %253, 3
  %or.i.i.i596.i = or i32 %and.i.i.i595.i, %254
  %255 = ptrtoint ptr %arrayidx168.i to i32
  call void @__asan_store4_noabort(i32 %255)
  store i32 %or.i.i.i596.i, ptr %arrayidx168.i, align 4
  %offset1.i.i597.i = getelementptr inbounds %struct.scatterlist, ptr %arrayidx168.i, i32 0, i32 1
  %256 = ptrtoint ptr %offset1.i.i597.i to i32
  call void @__asan_store4_noabort(i32 %256)
  store i32 %and.i507.i, ptr %offset1.i.i597.i, align 4
  %length.i.i598.i = getelementptr inbounds %struct.scatterlist, ptr %arrayidx168.i, i32 0, i32 2
  %257 = ptrtoint ptr %length.i.i598.i to i32
  call void @__asan_store4_noabort(i32 %257)
  store i32 %248, ptr %length.i.i598.i, align 4
  %258 = ptrtoint ptr %iv_gen_ops.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %iv_gen_ops.i, align 8
  %tobool170.not.i = icmp eq ptr %259, null
  br i1 %tobool170.not.i, label %sg_set_buf.exit599.i.if.end196.i_crit_edge, label %if.then171.i

sg_set_buf.exit599.i.if.end196.i_crit_edge:       ; preds = %sg_set_buf.exit599.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end196.i

if.then171.i:                                     ; preds = %sg_set_buf.exit599.i
  %260 = ptrtoint ptr %integrity_iv_size.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load i32, ptr %integrity_iv_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %261)
  %tobool173.not.i = icmp eq i32 %261, 0
  br i1 %tobool173.not.i, label %if.then171.i.if.else.i102_crit_edge, label %land.lhs.true.i

if.then171.i.if.else.i102_crit_edge:              ; preds = %if.then171.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.else.i102

land.lhs.true.i:                                  ; preds = %if.then171.i
  %262 = ptrtoint ptr %bio_in.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %bio_in.i, align 8
  %bi_opf.i = getelementptr inbounds %struct.bio, ptr %263, i32 0, i32 2
  %264 = ptrtoint ptr %bi_opf.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load i32, ptr %bi_opf.i, align 8
  %and.i600.i = and i32 %265, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i600.i)
  %tobool.i601.not.i = icmp eq i32 %and.i600.i, 0
  br i1 %tobool.i601.not.i, label %if.then181.i, label %land.lhs.true.i.if.else.i102_crit_edge

land.lhs.true.i.if.else.i102_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.else.i102

if.then181.i:                                     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #22
  %266 = ptrtoint ptr %iv_size.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load i32, ptr %iv_size.i, align 8
  %268 = call ptr @memcpy(ptr %add.ptr.i458.i, ptr %add.ptr.i459.i, i32 %267)
  br label %if.end194.i

if.else.i102:                                     ; preds = %land.lhs.true.i.if.else.i102_crit_edge, %if.then171.i.if.else.i102_crit_edge
  %generator.i = getelementptr inbounds %struct.crypt_iv_operations, ptr %259, i32 0, i32 4
  %269 = ptrtoint ptr %generator.i to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %generator.i, align 4
  %call184.i = call i32 %270(ptr noundef %cc, ptr noundef nonnull %add.ptr.i458.i, ptr noundef %add.ptr.i.i) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call184.i)
  %cmp185.i = icmp slt i32 %call184.i, 0
  br i1 %cmp185.i, label %if.else.i102.if.end15_crit_edge, label %if.end188.i

if.else.i102.if.end15_crit_edge:                  ; preds = %if.else.i102
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end15

if.end188.i:                                      ; preds = %if.else.i102
  %271 = ptrtoint ptr %integrity_iv_size.i to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load i32, ptr %integrity_iv_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %272)
  %tobool190.not.i = icmp eq i32 %272, 0
  br i1 %tobool190.not.i, label %if.end188.i.if.end194.i_crit_edge, label %if.then191.i

if.end188.i.if.end194.i_crit_edge:                ; preds = %if.end188.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end194.i

if.then191.i:                                     ; preds = %if.end188.i
  call void @__sanitizer_cov_trace_pc() #22
  %273 = ptrtoint ptr %iv_size.i to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load i32, ptr %iv_size.i, align 8
  %275 = call ptr @memcpy(ptr %add.ptr.i459.i, ptr %add.ptr.i458.i, i32 %274)
  br label %if.end194.i

if.end194.i:                                      ; preds = %if.then191.i, %if.end188.i.if.end194.i_crit_edge, %if.then181.i
  %276 = ptrtoint ptr %iv_size.i to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load i32, ptr %iv_size.i, align 8
  %278 = call ptr @memcpy(ptr %retval.0.i.i, ptr %add.ptr.i458.i, i32 %277)
  br label %if.end196.i

if.end196.i:                                      ; preds = %if.end194.i, %sg_set_buf.exit599.i.if.end196.i_crit_edge
  %279 = ptrtoint ptr %iv_size.i to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load i32, ptr %iv_size.i, align 8
  %add198.i = add i32 %280, 8
  %assoclen1.i.i = getelementptr inbounds %struct.aead_request, ptr %74, i32 0, i32 1
  %281 = ptrtoint ptr %assoclen1.i.i to i32
  call void @__asan_store4_noabort(i32 %281)
  store i32 %add198.i, ptr %assoclen1.i.i, align 8
  %282 = ptrtoint ptr %bio_in.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %bio_in.i, align 8
  %bi_opf200.i = getelementptr inbounds %struct.bio, ptr %283, i32 0, i32 2
  %284 = ptrtoint ptr %bi_opf200.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load i32, ptr %bi_opf200.i, align 8
  %and.i602.i = and i32 %285, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i602.i)
  %tobool.i603.not.i = icmp eq i32 %and.i602.i, 0
  %286 = ptrtoint ptr %sector_size to i32
  call void @__asan_load2_noabort(i32 %286)
  %287 = load i16, ptr %sector_size, align 4
  %conv237.i = zext i16 %287 to i32
  br i1 %tobool.i603.not.i, label %if.else231.i, label %if.then207.i

if.then207.i:                                     ; preds = %if.end196.i
  %src1.i.i = getelementptr inbounds %struct.aead_request, ptr %74, i32 0, i32 4
  %288 = ptrtoint ptr %src1.i.i to i32
  call void @__asan_store4_noabort(i32 %288)
  store ptr %sg_in.i, ptr %src1.i.i, align 4
  %dst2.i.i = getelementptr inbounds %struct.aead_request, ptr %74, i32 0, i32 5
  %289 = ptrtoint ptr %dst2.i.i to i32
  call void @__asan_store4_noabort(i32 %289)
  store ptr %sg_out.i, ptr %dst2.i.i, align 8
  %cryptlen3.i.i = getelementptr inbounds %struct.aead_request, ptr %74, i32 0, i32 2
  %290 = ptrtoint ptr %cryptlen3.i.i to i32
  call void @__asan_store4_noabort(i32 %290)
  store i32 %conv237.i, ptr %cryptlen3.i.i, align 4
  %iv4.i.i = getelementptr inbounds %struct.aead_request, ptr %74, i32 0, i32 3
  %291 = ptrtoint ptr %iv4.i.i to i32
  call void @__asan_store4_noabort(i32 %291)
  store ptr %retval.0.i.i, ptr %iv4.i.i, align 32
  %call214.i = call i32 @crypto_aead_encrypt(ptr noundef %74) #20
  %292 = ptrtoint ptr %integrity_tag_size.i.i to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load i32, ptr %integrity_tag_size.i.i, align 8
  %294 = ptrtoint ptr %integrity_iv_size.i to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load i32, ptr %integrity_iv_size.i, align 4
  %add217.i = add i32 %295, %293
  %296 = ptrtoint ptr %on_disk_tag_size.i.i to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load i32, ptr %on_disk_tag_size.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %297, i32 %add217.i)
  %cmp218.not.i = icmp eq i32 %297, %add217.i
  br i1 %cmp218.not.i, label %if.then207.i.if.end241.i_crit_edge, label %if.then220.i

if.then207.i.if.end241.i_crit_edge:               ; preds = %if.then207.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end241.i

if.then220.i:                                     ; preds = %if.then207.i
  call void @__sanitizer_cov_trace_pc() #22
  %add.ptr222.i = getelementptr i8, ptr %arrayidx.i.i97, i32 %293
  %add.ptr224.i = getelementptr i8, ptr %add.ptr222.i, i32 %295
  %sub229.i = sub i32 %297, %add217.i
  %298 = call ptr @memset(ptr %add.ptr224.i, i32 0, i32 %sub229.i)
  br label %if.end241.i

if.else231.i:                                     ; preds = %if.end196.i
  call void @__sanitizer_cov_trace_pc() #22
  %299 = ptrtoint ptr %integrity_tag_size.i.i to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load i32, ptr %integrity_tag_size.i.i, align 8
  %add239.i = add i32 %300, %conv237.i
  %src1.i604.i = getelementptr inbounds %struct.aead_request, ptr %74, i32 0, i32 4
  %301 = ptrtoint ptr %src1.i604.i to i32
  call void @__asan_store4_noabort(i32 %301)
  store ptr %sg_in.i, ptr %src1.i604.i, align 4
  %dst2.i605.i = getelementptr inbounds %struct.aead_request, ptr %74, i32 0, i32 5
  %302 = ptrtoint ptr %dst2.i605.i to i32
  call void @__asan_store4_noabort(i32 %302)
  store ptr %sg_out.i, ptr %dst2.i605.i, align 8
  %cryptlen3.i606.i = getelementptr inbounds %struct.aead_request, ptr %74, i32 0, i32 2
  %303 = ptrtoint ptr %cryptlen3.i606.i to i32
  call void @__asan_store4_noabort(i32 %303)
  store i32 %add239.i, ptr %cryptlen3.i606.i, align 4
  %iv4.i607.i = getelementptr inbounds %struct.aead_request, ptr %74, i32 0, i32 3
  %304 = ptrtoint ptr %iv4.i607.i to i32
  call void @__asan_store4_noabort(i32 %304)
  store ptr %retval.0.i.i, ptr %iv4.i607.i, align 32
  %call240.i = call i32 @crypto_aead_decrypt(ptr noundef %74) #20
  br label %if.end241.i

if.end241.i:                                      ; preds = %if.else231.i, %if.then220.i, %if.then207.i.if.end241.i_crit_edge
  %r.0.i = phi i32 [ %call214.i, %if.then220.i ], [ %call214.i, %if.then207.i.if.end241.i_crit_edge ], [ %call240.i, %if.else231.i ]
  %305 = zext i32 %r.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %305, ptr @__sancov_gen_cov_switch_values.175)
  switch i32 %r.0.i, label %if.end241.i.if.end270.i_crit_edge [
    i32 -74, label %if.then244.i
    i32 0, label %land.lhs.true260.i
  ]

if.end241.i.if.end270.i_crit_edge:                ; preds = %if.end241.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end270.i

if.then244.i:                                     ; preds = %if.end241.i
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %b.i) #20
  %306 = call ptr @memset(ptr %b.i, i32 255, i32 32)
  %307 = ptrtoint ptr %add.ptr2.i447.i to i32
  call void @__asan_load8_noabort(i32 %307)
  %308 = load i64, ptr %add.ptr2.i447.i, align 8
  %309 = call i64 @llvm.bswap.i64(i64 %308) #20
  %call245.i = call i32 @___ratelimit(ptr noundef nonnull @crypt_convert_block_aead._rs, ptr noundef nonnull @__func__.crypt_convert_block_aead) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call245.i)
  %tobool246.not.i = icmp eq i32 %call245.i, 0
  br i1 %tobool246.not.i, label %if.then244.i.if.end256.i_crit_edge, label %do.end250.i

if.then244.i.if.end256.i_crit_edge:               ; preds = %if.then244.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end256.i

do.end250.i:                                      ; preds = %if.then244.i
  call void @__sanitizer_cov_trace_pc() #22
  %310 = ptrtoint ptr %bio_in.i to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load ptr, ptr %bio_in.i, align 8
  %call254.i = call ptr @bio_devname(ptr noundef %311, ptr noundef nonnull %b.i) #20
  %call255.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.124, ptr noundef %call254.i, i64 noundef %309) #23
  br label %if.end256.i

if.end256.i:                                      ; preds = %do.end250.i, %if.then244.i.if.end256.i_crit_edge
  %312 = ptrtoint ptr %bio_in.i to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load ptr, ptr %bio_in.i, align 8
  call void @dm_audit_log_bio(ptr noundef nonnull @.str, ptr noundef nonnull @.str.125, ptr noundef %313, i64 noundef %309, i32 noundef 0) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %b.i) #20
  br label %if.end270.i

land.lhs.true260.i:                               ; preds = %if.end241.i
  %314 = ptrtoint ptr %iv_gen_ops.i to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load ptr, ptr %iv_gen_ops.i, align 8
  %tobool262.not.i = icmp eq ptr %315, null
  br i1 %tobool262.not.i, label %land.lhs.true260.i.if.end270.i_crit_edge, label %land.lhs.true263.i

land.lhs.true260.i.if.end270.i_crit_edge:         ; preds = %land.lhs.true260.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end270.i

land.lhs.true263.i:                               ; preds = %land.lhs.true260.i
  %post.i = getelementptr inbounds %struct.crypt_iv_operations, ptr %315, i32 0, i32 5
  %316 = ptrtoint ptr %post.i to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load ptr, ptr %post.i, align 4
  %tobool265.not.i = icmp eq ptr %317, null
  br i1 %tobool265.not.i, label %land.lhs.true263.i.if.end270.i_crit_edge, label %if.then266.i

land.lhs.true263.i.if.end270.i_crit_edge:         ; preds = %land.lhs.true263.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end270.i

if.then266.i:                                     ; preds = %land.lhs.true263.i
  call void @__sanitizer_cov_trace_pc() #22
  %call269.i = call i32 %317(ptr noundef %cc, ptr noundef nonnull %add.ptr.i458.i, ptr noundef %add.ptr.i.i) #20
  br label %if.end270.i

if.end270.i:                                      ; preds = %if.then266.i, %land.lhs.true263.i.if.end270.i_crit_edge, %land.lhs.true260.i.if.end270.i_crit_edge, %if.end256.i, %if.end241.i.if.end270.i_crit_edge
  %r.1.i = phi i32 [ -74, %if.end256.i ], [ %call269.i, %if.then266.i ], [ 0, %land.lhs.true263.i.if.end270.i_crit_edge ], [ 0, %land.lhs.true260.i.if.end270.i_crit_edge ], [ %r.0.i, %if.end241.i.if.end270.i_crit_edge ]
  %318 = ptrtoint ptr %bio_in.i to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load ptr, ptr %bio_in.i, align 8
  %320 = ptrtoint ptr %sector_size to i32
  call void @__asan_load2_noabort(i32 %320)
  %321 = load i16, ptr %sector_size, align 4
  %conv274.i = zext i16 %321 to i32
  %shr.i608.i = lshr i32 %conv274.i, 9
  %conv.i.i = zext i32 %shr.i608.i to i64
  %322 = ptrtoint ptr %iter_in.i to i32
  call void @__asan_loadN_noabort(i32 %322, i32 8)
  %323 = load i64, ptr %iter_in.i, align 1
  %add.i609.i = add i64 %323, %conv.i.i
  store i64 %add.i609.i, ptr %iter_in.i, align 1
  %bi_opf.i.i.i = getelementptr inbounds %struct.bio, ptr %319, i32 0, i32 2
  %324 = ptrtoint ptr %bi_opf.i.i.i to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load i32, ptr %bi_opf.i.i.i, align 8
  %and.i.i610.i = and i32 %325, 255
  %326 = add nsw i32 %and.i.i610.i, -3
  %switch.and.i.i.i = and i32 %326, -7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.and.i.i.i)
  %switch.selectcmp.i.i.i = icmp eq i32 %switch.and.i.i.i, 0
  br i1 %switch.selectcmp.i.i.i, label %if.then.i.i103, label %if.else.i.i

if.then.i.i103:                                   ; preds = %if.end270.i
  call void @__sanitizer_cov_trace_pc() #22
  %327 = ptrtoint ptr %bi_size to i32
  call void @__asan_loadN_noabort(i32 %327, i32 4)
  %328 = load i32, ptr %bi_size, align 1
  %sub.i611.i = sub i32 %328, %conv274.i
  store i32 %sub.i611.i, ptr %bi_size, align 1
  br label %bio_advance_iter.exit.i

if.else.i.i:                                      ; preds = %if.end270.i
  %bi_io_vec.i.i = getelementptr inbounds %struct.bio, ptr %319, i32 0, i32 20
  %329 = ptrtoint ptr %bi_io_vec.i.i to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load ptr, ptr %bi_io_vec.i.i, align 8
  %331 = ptrtoint ptr %bi_size to i32
  call void @__asan_loadN_noabort(i32 %331, i32 4)
  %332 = load i32, ptr %bi_size, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %332, i32 %conv274.i)
  %cmp.i.i.i = icmp ult i32 %332, %conv274.i
  br i1 %cmp.i.i.i, label %land.rhs.i.i.i, label %if.end38.i.i.i

land.rhs.i.i.i:                                   ; preds = %if.else.i.i
  %.b1.i.i.i = load i1, ptr @bvec_iter_advance.__already_done, align 1
  br i1 %.b1.i.i.i, label %land.rhs.i.i.i.if.then36.i.i.i_crit_edge, label %if.then.i.i.i, !prof !413

land.rhs.i.i.i.if.then36.i.i.i_crit_edge:         ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then36.i.i.i

if.then.i.i.i:                                    ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  store i1 true, ptr @bvec_iter_advance.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.126, i32 noundef 107, i32 noundef 9, ptr noundef nonnull @.str.127) #20
  br label %if.then36.i.i.i

if.then36.i.i.i:                                  ; preds = %if.then.i.i.i, %land.rhs.i.i.i.if.then36.i.i.i_crit_edge
  %333 = ptrtoint ptr %bi_size to i32
  call void @__asan_storeN_noabort(i32 %333, i32 4)
  store i32 0, ptr %bi_size, align 1
  br label %bio_advance_iter.exit.i

if.end38.i.i.i:                                   ; preds = %if.else.i.i
  %334 = ptrtoint ptr %bi_idx.i to i32
  call void @__asan_loadN_noabort(i32 %334, i32 4)
  %335 = load i32, ptr %bi_idx.i, align 1
  %sub.i.i.i = sub i32 %332, %conv274.i
  %336 = ptrtoint ptr %bi_size to i32
  call void @__asan_storeN_noabort(i32 %336, i32 4)
  store i32 %sub.i.i.i, ptr %bi_size, align 1
  %337 = ptrtoint ptr %bi_bvec_done.i to i32
  call void @__asan_loadN_noabort(i32 %337, i32 4)
  %338 = load i32, ptr %bi_bvec_done.i, align 1
  %add.i.i.i = add i32 %338, %conv274.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i.i.i)
  %tobool40.not3.i.i.i = icmp eq i32 %add.i.i.i, 0
  br i1 %tobool40.not3.i.i.i, label %if.end38.i.i.i.while.end.i.i.i_crit_edge, label %if.end38.i.i.i.land.rhs41.i.i.i_crit_edge

if.end38.i.i.i.land.rhs41.i.i.i_crit_edge:        ; preds = %if.end38.i.i.i
  br label %land.rhs41.i.i.i

if.end38.i.i.i.while.end.i.i.i_crit_edge:         ; preds = %if.end38.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %while.end.i.i.i

land.rhs41.i.i.i:                                 ; preds = %while.body.i.i.i.land.rhs41.i.i.i_crit_edge, %if.end38.i.i.i.land.rhs41.i.i.i_crit_edge
  %bytes.addr.05.i.i.i = phi i32 [ %sub46.i.i.i, %while.body.i.i.i.land.rhs41.i.i.i_crit_edge ], [ %add.i.i.i, %if.end38.i.i.i.land.rhs41.i.i.i_crit_edge ]
  %idx.04.i.i.i = phi i32 [ %inc.i.i.i, %while.body.i.i.i.land.rhs41.i.i.i_crit_edge ], [ %335, %if.end38.i.i.i.land.rhs41.i.i.i_crit_edge ]
  %bv_len.i.i.i = getelementptr %struct.bio_vec, ptr %330, i32 %idx.04.i.i.i, i32 1
  %339 = ptrtoint ptr %bv_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load i32, ptr %bv_len.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %bytes.addr.05.i.i.i, i32 %340)
  %cmp42.not.i.i.i = icmp ult i32 %bytes.addr.05.i.i.i, %340
  br i1 %cmp42.not.i.i.i, label %land.rhs41.i.i.i.while.end.i.i.i_crit_edge, label %while.body.i.i.i

land.rhs41.i.i.i.while.end.i.i.i_crit_edge:       ; preds = %land.rhs41.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %while.end.i.i.i

while.body.i.i.i:                                 ; preds = %land.rhs41.i.i.i
  %sub46.i.i.i = sub i32 %bytes.addr.05.i.i.i, %340
  %inc.i.i.i = add i32 %idx.04.i.i.i, 1
  %tobool40.not.i.i.i = icmp eq i32 %sub46.i.i.i, 0
  br i1 %tobool40.not.i.i.i, label %while.body.i.i.i.while.end.i.i.i_crit_edge, label %while.body.i.i.i.land.rhs41.i.i.i_crit_edge

while.body.i.i.i.land.rhs41.i.i.i_crit_edge:      ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %land.rhs41.i.i.i

while.body.i.i.i.while.end.i.i.i_crit_edge:       ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %while.end.i.i.i

while.end.i.i.i:                                  ; preds = %while.body.i.i.i.while.end.i.i.i_crit_edge, %land.rhs41.i.i.i.while.end.i.i.i_crit_edge, %if.end38.i.i.i.while.end.i.i.i_crit_edge
  %idx.0.lcssa.i.i.i = phi i32 [ %335, %if.end38.i.i.i.while.end.i.i.i_crit_edge ], [ %idx.04.i.i.i, %land.rhs41.i.i.i.while.end.i.i.i_crit_edge ], [ %inc.i.i.i, %while.body.i.i.i.while.end.i.i.i_crit_edge ]
  %bytes.addr.0.lcssa.i.i.i = phi i32 [ 0, %if.end38.i.i.i.while.end.i.i.i_crit_edge ], [ %bytes.addr.05.i.i.i, %land.rhs41.i.i.i.while.end.i.i.i_crit_edge ], [ 0, %while.body.i.i.i.while.end.i.i.i_crit_edge ]
  %341 = ptrtoint ptr %bi_idx.i to i32
  call void @__asan_storeN_noabort(i32 %341, i32 4)
  store i32 %idx.0.lcssa.i.i.i, ptr %bi_idx.i, align 1
  %342 = ptrtoint ptr %bi_bvec_done.i to i32
  call void @__asan_storeN_noabort(i32 %342, i32 4)
  store i32 %bytes.addr.0.lcssa.i.i.i, ptr %bi_bvec_done.i, align 1
  br label %bio_advance_iter.exit.i

bio_advance_iter.exit.i:                          ; preds = %while.end.i.i.i, %if.then36.i.i.i, %if.then.i.i103
  %343 = ptrtoint ptr %bio_out.i to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load ptr, ptr %bio_out.i, align 4
  %345 = ptrtoint ptr %sector_size to i32
  call void @__asan_load2_noabort(i32 %345)
  %346 = load i16, ptr %sector_size, align 4
  %conv278.i = zext i16 %346 to i32
  %shr.i612.i = lshr i32 %conv278.i, 9
  %conv.i613.i = zext i32 %shr.i612.i to i64
  %347 = ptrtoint ptr %iter_out.i to i32
  call void @__asan_loadN_noabort(i32 %347, i32 8)
  %348 = load i64, ptr %iter_out.i, align 1
  %add.i614.i = add i64 %348, %conv.i613.i
  store i64 %add.i614.i, ptr %iter_out.i, align 1
  %bi_opf.i.i615.i = getelementptr inbounds %struct.bio, ptr %344, i32 0, i32 2
  %349 = ptrtoint ptr %bi_opf.i.i615.i to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load i32, ptr %bi_opf.i.i615.i, align 8
  %and.i.i616.i = and i32 %350, 255
  %351 = add nsw i32 %and.i.i616.i, -3
  %switch.and.i.i617.i = and i32 %351, -7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.and.i.i617.i)
  %switch.selectcmp.i.i618.i = icmp eq i32 %switch.and.i.i617.i, 0
  br i1 %switch.selectcmp.i.i618.i, label %if.then.i621.i, label %if.else.i626.i

if.then.i621.i:                                   ; preds = %bio_advance_iter.exit.i
  call void @__sanitizer_cov_trace_pc() #22
  %352 = ptrtoint ptr %bi_size3 to i32
  call void @__asan_loadN_noabort(i32 %352, i32 4)
  %353 = load i32, ptr %bi_size3, align 1
  %sub.i620.i = sub i32 %353, %conv278.i
  store i32 %sub.i620.i, ptr %bi_size3, align 1
  br label %if.end15

if.else.i626.i:                                   ; preds = %bio_advance_iter.exit.i
  %bi_io_vec.i622.i = getelementptr inbounds %struct.bio, ptr %344, i32 0, i32 20
  %354 = ptrtoint ptr %bi_io_vec.i622.i to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load ptr, ptr %bi_io_vec.i622.i, align 8
  %356 = ptrtoint ptr %bi_size3 to i32
  call void @__asan_loadN_noabort(i32 %356, i32 4)
  %357 = load i32, ptr %bi_size3, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %357, i32 %conv278.i)
  %cmp.i.i625.i = icmp ult i32 %357, %conv278.i
  br i1 %cmp.i.i625.i, label %land.rhs.i.i628.i, label %if.end38.i.i635.i

land.rhs.i.i628.i:                                ; preds = %if.else.i626.i
  %.b1.i.i627.i = load i1, ptr @bvec_iter_advance.__already_done, align 1
  br i1 %.b1.i.i627.i, label %land.rhs.i.i628.i.if.then36.i.i630.i_crit_edge, label %if.then.i.i629.i, !prof !413

land.rhs.i.i628.i.if.then36.i.i630.i_crit_edge:   ; preds = %land.rhs.i.i628.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then36.i.i630.i

if.then.i.i629.i:                                 ; preds = %land.rhs.i.i628.i
  call void @__sanitizer_cov_trace_pc() #22
  store i1 true, ptr @bvec_iter_advance.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.126, i32 noundef 107, i32 noundef 9, ptr noundef nonnull @.str.127) #20
  br label %if.then36.i.i630.i

if.then36.i.i630.i:                               ; preds = %if.then.i.i629.i, %land.rhs.i.i628.i.if.then36.i.i630.i_crit_edge
  %358 = ptrtoint ptr %bi_size3 to i32
  call void @__asan_storeN_noabort(i32 %358, i32 4)
  store i32 0, ptr %bi_size3, align 1
  br label %if.end15

if.end38.i.i635.i:                                ; preds = %if.else.i626.i
  %359 = ptrtoint ptr %bi_idx46.i to i32
  call void @__asan_loadN_noabort(i32 %359, i32 4)
  %360 = load i32, ptr %bi_idx46.i, align 1
  %sub.i.i631.i = sub i32 %357, %conv278.i
  %361 = ptrtoint ptr %bi_size3 to i32
  call void @__asan_storeN_noabort(i32 %361, i32 4)
  store i32 %sub.i.i631.i, ptr %bi_size3, align 1
  %362 = ptrtoint ptr %bi_bvec_done56.i to i32
  call void @__asan_loadN_noabort(i32 %362, i32 4)
  %363 = load i32, ptr %bi_bvec_done56.i, align 1
  %add.i.i633.i = add i32 %363, %conv278.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i.i633.i)
  %tobool40.not3.i.i634.i = icmp eq i32 %add.i.i633.i, 0
  br i1 %tobool40.not3.i.i634.i, label %if.end38.i.i635.i.while.end.i.i647.i_crit_edge, label %if.end38.i.i635.i.land.rhs41.i.i640.i_crit_edge

if.end38.i.i635.i.land.rhs41.i.i640.i_crit_edge:  ; preds = %if.end38.i.i635.i
  br label %land.rhs41.i.i640.i

if.end38.i.i635.i.while.end.i.i647.i_crit_edge:   ; preds = %if.end38.i.i635.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %while.end.i.i647.i

land.rhs41.i.i640.i:                              ; preds = %while.body.i.i644.i.land.rhs41.i.i640.i_crit_edge, %if.end38.i.i635.i.land.rhs41.i.i640.i_crit_edge
  %bytes.addr.05.i.i636.i = phi i32 [ %sub46.i.i641.i, %while.body.i.i644.i.land.rhs41.i.i640.i_crit_edge ], [ %add.i.i633.i, %if.end38.i.i635.i.land.rhs41.i.i640.i_crit_edge ]
  %idx.04.i.i637.i = phi i32 [ %inc.i.i642.i, %while.body.i.i644.i.land.rhs41.i.i640.i_crit_edge ], [ %360, %if.end38.i.i635.i.land.rhs41.i.i640.i_crit_edge ]
  %bv_len.i.i638.i = getelementptr %struct.bio_vec, ptr %355, i32 %idx.04.i.i637.i, i32 1
  %364 = ptrtoint ptr %bv_len.i.i638.i to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load i32, ptr %bv_len.i.i638.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %bytes.addr.05.i.i636.i, i32 %365)
  %cmp42.not.i.i639.i = icmp ult i32 %bytes.addr.05.i.i636.i, %365
  br i1 %cmp42.not.i.i639.i, label %land.rhs41.i.i640.i.while.end.i.i647.i_crit_edge, label %while.body.i.i644.i

land.rhs41.i.i640.i.while.end.i.i647.i_crit_edge: ; preds = %land.rhs41.i.i640.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %while.end.i.i647.i

while.body.i.i644.i:                              ; preds = %land.rhs41.i.i640.i
  %sub46.i.i641.i = sub i32 %bytes.addr.05.i.i636.i, %365
  %inc.i.i642.i = add i32 %idx.04.i.i637.i, 1
  %tobool40.not.i.i643.i = icmp eq i32 %sub46.i.i641.i, 0
  br i1 %tobool40.not.i.i643.i, label %while.body.i.i644.i.while.end.i.i647.i_crit_edge, label %while.body.i.i644.i.land.rhs41.i.i640.i_crit_edge

while.body.i.i644.i.land.rhs41.i.i640.i_crit_edge: ; preds = %while.body.i.i644.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %land.rhs41.i.i640.i

while.body.i.i644.i.while.end.i.i647.i_crit_edge: ; preds = %while.body.i.i644.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %while.end.i.i647.i

while.end.i.i647.i:                               ; preds = %while.body.i.i644.i.while.end.i.i647.i_crit_edge, %land.rhs41.i.i640.i.while.end.i.i647.i_crit_edge, %if.end38.i.i635.i.while.end.i.i647.i_crit_edge
  %idx.0.lcssa.i.i645.i = phi i32 [ %360, %if.end38.i.i635.i.while.end.i.i647.i_crit_edge ], [ %idx.04.i.i637.i, %land.rhs41.i.i640.i.while.end.i.i647.i_crit_edge ], [ %inc.i.i642.i, %while.body.i.i644.i.while.end.i.i647.i_crit_edge ]
  %bytes.addr.0.lcssa.i.i646.i = phi i32 [ 0, %if.end38.i.i635.i.while.end.i.i647.i_crit_edge ], [ %bytes.addr.05.i.i636.i, %land.rhs41.i.i640.i.while.end.i.i647.i_crit_edge ], [ 0, %while.body.i.i644.i.while.end.i.i647.i_crit_edge ]
  %366 = ptrtoint ptr %bi_idx46.i to i32
  call void @__asan_storeN_noabort(i32 %366, i32 4)
  store i32 %idx.0.lcssa.i.i645.i, ptr %bi_idx46.i, align 1
  %367 = ptrtoint ptr %bi_bvec_done56.i to i32
  call void @__asan_storeN_noabort(i32 %367, i32 4)
  store i32 %bytes.addr.0.lcssa.i.i646.i, ptr %bi_bvec_done56.i, align 1
  br label %if.end15

if.else:                                          ; preds = %if.end7
  %368 = ptrtoint ptr %sector_size to i32
  call void @__asan_load2_noabort(i32 %368)
  %369 = load i16, ptr %sector_size, align 4
  %conv.i130 = zext i16 %369 to i32
  %sub107.i = add nuw nsw i32 %conv.i130, 8191
  %and.i131 = and i32 %sub107.i, %92
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i131)
  %tobool.not.i132 = icmp eq i32 %and.i131, 0
  br i1 %tobool.not.i132, label %if.end.i, label %if.else.sw.default_crit_edge, !prof !413

if.else.sw.default_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.default

if.end.i:                                         ; preds = %if.else
  %370 = ptrtoint ptr %dmreq_start.i.i.i to i32
  call void @__asan_load4_noabort(i32 %370)
  %371 = load i32, ptr %dmreq_start.i.i.i, align 4
  %add.ptr.i.i134 = getelementptr i8, ptr %74, i32 %371
  %372 = ptrtoint ptr %cc_sector.i.i to i32
  call void @__asan_load8_noabort(i32 %372)
  %373 = load i64, ptr %cc_sector.i.i, align 8
  %iv_sector.i136 = getelementptr inbounds %struct.dm_crypt_request, ptr %add.ptr.i.i134, i32 0, i32 3
  %374 = ptrtoint ptr %iv_sector.i136 to i32
  call void @__asan_store8_noabort(i32 %374)
  store i64 %373, ptr %iv_sector.i136, align 8
  %375 = ptrtoint ptr %cipher_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %375)
  %376 = load volatile i32, ptr %cipher_flags.i.i, align 4
  %377 = and i32 %376, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %377)
  %tobool111.not.i = icmp eq i32 %377, 0
  br i1 %tobool111.not.i, label %if.end.i.if.end115.i_crit_edge, label %if.then112.i

if.end.i.if.end115.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end115.i

if.then112.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #22
  %378 = ptrtoint ptr %sector_shift.i to i32
  call void @__asan_load1_noabort(i32 %378)
  %379 = load i8, ptr %sector_shift.i, align 2
  %sh_prom.i139 = zext i8 %379 to i64
  %shr.i140 = lshr i64 %373, %sh_prom.i139
  %380 = ptrtoint ptr %iv_sector.i136 to i32
  call void @__asan_store8_noabort(i32 %380)
  store i64 %shr.i140, ptr %iv_sector.i136, align 8
  br label %if.end115.i

if.end115.i:                                      ; preds = %if.then112.i, %if.end.i.if.end115.i_crit_edge
  %381 = ptrtoint ptr %add.ptr.i.i134 to i32
  call void @__asan_store4_noabort(i32 %381)
  store ptr %ctx, ptr %add.ptr.i.i134, align 8
  %382 = ptrtoint ptr %cipher_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %382)
  %383 = load volatile i32, ptr %cipher_flags.i.i, align 4
  %add.ptr8.i.i.i141 = getelementptr %struct.dm_crypt_request, ptr %add.ptr.i.i134, i32 1
  %384 = ptrtoint ptr %add.ptr8.i.i.i141 to i32
  %385 = ptrtoint ptr %cipher_tfm.i.i to i32
  call void @__asan_load4_noabort(i32 %385)
  %386 = load ptr, ptr %cipher_tfm.i.i, align 8
  %387 = ptrtoint ptr %386 to i32
  call void @__asan_load4_noabort(i32 %387)
  %388 = load ptr, ptr %386, align 4
  %__crt_alg.i.i29.i.i.i143 = getelementptr inbounds %struct.crypto_skcipher, ptr %388, i32 0, i32 2, i32 3
  %389 = ptrtoint ptr %__crt_alg.i.i29.i.i.i143 to i32
  call void @__asan_load4_noabort(i32 %389)
  %390 = load ptr, ptr %__crt_alg.i.i29.i.i.i143, align 4
  %cra_alignmask.i.i30.i.i.i144 = getelementptr inbounds %struct.crypto_alg, ptr %390, i32 0, i32 5
  %391 = ptrtoint ptr %cra_alignmask.i.i30.i.i.i144 to i32
  call void @__asan_load4_noabort(i32 %391)
  %392 = load i32, ptr %cra_alignmask.i.i30.i.i.i144, align 4
  %add13.i.i.i145 = add i32 %392, %384
  %neg18.i.i.i146 = xor i32 %392, -1
  %and19.i.i.i147 = and i32 %add13.i.i.i145, %neg18.i.i.i146
  %retval.0.i.i.i148 = inttoptr i32 %and19.i.i.i147 to ptr
  %393 = ptrtoint ptr %iv_size.i to i32
  call void @__asan_load4_noabort(i32 %393)
  %394 = load i32, ptr %iv_size.i, align 8
  %add.ptr.i319.i = getelementptr i8, ptr %retval.0.i.i.i148, i32 8
  %add.ptr2.i.i150 = getelementptr i8, ptr %add.ptr.i319.i, i32 %394
  %add.ptr3.i.i151 = getelementptr i8, ptr %add.ptr2.i.i150, i32 %394
  %395 = ptrtoint ptr %add.ptr3.i.i151 to i32
  call void @__asan_store4_noabort(i32 %395)
  store i32 %tag_offset.0251, ptr %add.ptr3.i.i151, align 4
  %396 = load volatile i32, ptr %cipher_flags.i.i, align 4
  %397 = load ptr, ptr %cipher_tfm.i.i, align 8
  %398 = ptrtoint ptr %397 to i32
  call void @__asan_load4_noabort(i32 %398)
  %399 = load ptr, ptr %397, align 4
  %__crt_alg.i.i29.i.i152 = getelementptr inbounds %struct.crypto_skcipher, ptr %399, i32 0, i32 2, i32 3
  %400 = ptrtoint ptr %__crt_alg.i.i29.i.i152 to i32
  call void @__asan_load4_noabort(i32 %400)
  %401 = load ptr, ptr %__crt_alg.i.i29.i.i152, align 4
  %cra_alignmask.i.i30.i.i153 = getelementptr inbounds %struct.crypto_alg, ptr %401, i32 0, i32 5
  %402 = ptrtoint ptr %cra_alignmask.i.i30.i.i153 to i32
  call void @__asan_load4_noabort(i32 %402)
  %403 = load i32, ptr %cra_alignmask.i.i30.i.i153, align 4
  %add13.i.i154 = add i32 %403, %384
  %neg18.i.i155 = xor i32 %403, -1
  %and19.i.i156 = and i32 %add13.i.i154, %neg18.i.i155
  %retval.0.i.i157 = inttoptr i32 %and19.i.i156 to ptr
  %404 = load volatile i32, ptr %cipher_flags.i.i, align 4
  %405 = load i32, ptr %iv_size.i, align 8
  %add.ptr.i330.i = getelementptr i8, ptr %retval.0.i.i157, i32 %405
  %406 = load ptr, ptr %add.ptr.i.i134, align 8
  %integrity_metadata.i.i.i = getelementptr i8, ptr %406, i32 -80
  %407 = ptrtoint ptr %integrity_metadata.i.i.i to i32
  call void @__asan_load4_noabort(i32 %407)
  %408 = load ptr, ptr %integrity_metadata.i.i.i, align 8
  %409 = load volatile i32, ptr %cipher_flags.i.i, align 4
  %add.ptr2.i.i.i.i = getelementptr i8, ptr %add.ptr.i330.i, i32 %405
  %add.ptr3.i.i.i.i = getelementptr i8, ptr %add.ptr2.i.i.i.i, i32 8
  %410 = ptrtoint ptr %add.ptr3.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %410)
  %411 = load i32, ptr %add.ptr3.i.i.i.i, align 4
  %412 = ptrtoint ptr %on_disk_tag_size.i.i to i32
  call void @__asan_load4_noabort(i32 %412)
  %413 = load i32, ptr %on_disk_tag_size.i.i, align 8
  %mul.i.i.i = mul i32 %413, %411
  %arrayidx.i.i.i = getelementptr i8, ptr %408, i32 %mul.i.i.i
  %414 = ptrtoint ptr %integrity_tag_size.i.i to i32
  call void @__asan_load4_noabort(i32 %414)
  %415 = load i32, ptr %integrity_tag_size.i.i, align 8
  %add.ptr.i331.i = getelementptr i8, ptr %arrayidx.i.i.i, i32 %415
  %416 = load volatile i32, ptr %cipher_flags.i.i, align 4
  %417 = ptrtoint ptr %cc_sector.i.i to i32
  call void @__asan_load8_noabort(i32 %417)
  %418 = load i64, ptr %cc_sector.i.i, align 8
  %419 = ptrtoint ptr %iv_offset.i to i32
  call void @__asan_load8_noabort(i32 %419)
  %420 = load i64, ptr %iv_offset.i, align 8
  %sub123.i = sub i64 %418, %420
  %421 = call i64 @llvm.bswap.i64(i64 %sub123.i) #20
  %422 = ptrtoint ptr %add.ptr2.i.i.i.i to i32
  call void @__asan_store8_noabort(i32 %422)
  store i64 %421, ptr %add.ptr2.i.i.i.i, align 8
  %sg_in124.i = getelementptr inbounds %struct.dm_crypt_request, ptr %add.ptr.i.i134, i32 0, i32 1
  %sg_out126.i = getelementptr inbounds %struct.dm_crypt_request, ptr %add.ptr.i.i134, i32 0, i32 2
  call void @sg_init_table(ptr noundef %sg_in124.i, i32 noundef 1) #20
  %423 = ptrtoint ptr %sector_size to i32
  call void @__asan_load2_noabort(i32 %423)
  %424 = load i16, ptr %sector_size, align 4
  %conv130.i = zext i16 %424 to i32
  %425 = ptrtoint ptr %sg_in124.i to i32
  call void @__asan_load4_noabort(i32 %425)
  %426 = load i32, ptr %sg_in124.i, align 4
  %427 = ptrtoint ptr %add.ptr.i113 to i32
  %and2.i.i.i160 = and i32 %427, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i160)
  %tobool.not.i.i.i161 = icmp eq i32 %and2.i.i.i160, 0
  br i1 %tobool.not.i.i.i161, label %do.body11.i.i.i165, label %do.body5.i.i.i162, !prof !413

do.body5.i.i.i162:                                ; preds = %if.end115.i
  call void @__sanitizer_cov_trace_pc() #22
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #20, !srcloc !435
  unreachable

do.body11.i.i.i165:                               ; preds = %if.end115.i
  %and.i.i.i.i163 = and i32 %426, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i163)
  %tobool.i.not.i.i.i164 = icmp eq i32 %and.i.i.i.i163, 0
  br i1 %tobool.i.not.i.i.i164, label %sg_set_page.exit.i171, label %do.body19.i.i.i166, !prof !413

do.body19.i.i.i166:                               ; preds = %do.body11.i.i.i165
  call void @__sanitizer_cov_trace_pc() #22
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #20, !srcloc !436
  unreachable

sg_set_page.exit.i171:                            ; preds = %do.body11.i.i.i165
  %and.i.i.i167 = and i32 %426, 3
  %or.i.i.i168 = or i32 %and.i.i.i167, %427
  %428 = ptrtoint ptr %sg_in124.i to i32
  call void @__asan_store4_noabort(i32 %428)
  store i32 %or.i.i.i168, ptr %sg_in124.i, align 4
  %offset1.i.i169 = getelementptr inbounds %struct.scatterlist, ptr %sg_in124.i, i32 0, i32 1
  %429 = ptrtoint ptr %offset1.i.i169 to i32
  call void @__asan_store4_noabort(i32 %429)
  store i32 %rem.i117, ptr %offset1.i.i169, align 4
  %length.i.i170 = getelementptr inbounds %struct.scatterlist, ptr %sg_in124.i, i32 0, i32 2
  %430 = ptrtoint ptr %length.i.i170 to i32
  call void @__asan_store4_noabort(i32 %430)
  store i32 %conv130.i, ptr %length.i.i170, align 4
  call void @sg_init_table(ptr noundef %sg_out126.i, i32 noundef 1) #20
  %431 = ptrtoint ptr %sector_size to i32
  call void @__asan_load2_noabort(i32 %431)
  %432 = load i16, ptr %sector_size, align 4
  %conv134.i = zext i16 %432 to i32
  %433 = ptrtoint ptr %sg_out126.i to i32
  call void @__asan_load4_noabort(i32 %433)
  %434 = load i32, ptr %sg_out126.i, align 4
  %435 = ptrtoint ptr %add.ptr59.i127 to i32
  %and2.i.i344.i = and i32 %435, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i344.i)
  %tobool.not.i.i345.i = icmp eq i32 %and2.i.i344.i, 0
  br i1 %tobool.not.i.i345.i, label %do.body11.i.i349.i, label %do.body5.i.i346.i, !prof !413

do.body5.i.i346.i:                                ; preds = %sg_set_page.exit.i171
  call void @__sanitizer_cov_trace_pc() #22
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #20, !srcloc !435
  unreachable

do.body11.i.i349.i:                               ; preds = %sg_set_page.exit.i171
  %and.i.i.i347.i = and i32 %434, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i347.i)
  %tobool.i.not.i.i348.i = icmp eq i32 %and.i.i.i347.i, 0
  br i1 %tobool.i.not.i.i348.i, label %sg_set_page.exit355.i, label %do.body19.i.i350.i, !prof !413

do.body19.i.i350.i:                               ; preds = %do.body11.i.i349.i
  call void @__sanitizer_cov_trace_pc() #22
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #20, !srcloc !436
  unreachable

sg_set_page.exit355.i:                            ; preds = %do.body11.i.i349.i
  %and.i.i351.i = and i32 %434, 3
  %or.i.i352.i = or i32 %and.i.i351.i, %435
  %436 = ptrtoint ptr %sg_out126.i to i32
  call void @__asan_store4_noabort(i32 %436)
  store i32 %or.i.i352.i, ptr %sg_out126.i, align 4
  %offset1.i353.i = getelementptr inbounds %struct.scatterlist, ptr %sg_out126.i, i32 0, i32 1
  %437 = ptrtoint ptr %offset1.i353.i to i32
  call void @__asan_store4_noabort(i32 %437)
  store i32 %rem87.i128, ptr %offset1.i353.i, align 4
  %length.i354.i = getelementptr inbounds %struct.scatterlist, ptr %sg_out126.i, i32 0, i32 2
  %438 = ptrtoint ptr %length.i354.i to i32
  call void @__asan_store4_noabort(i32 %438)
  store i32 %conv134.i, ptr %length.i354.i, align 4
  %439 = ptrtoint ptr %iv_gen_ops.i to i32
  call void @__asan_load4_noabort(i32 %439)
  %440 = load ptr, ptr %iv_gen_ops.i, align 8
  %tobool136.not.i = icmp eq ptr %440, null
  br i1 %tobool136.not.i, label %sg_set_page.exit355.i.if.end165.i_crit_edge, label %if.then137.i

sg_set_page.exit355.i.if.end165.i_crit_edge:      ; preds = %sg_set_page.exit355.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end165.i

if.then137.i:                                     ; preds = %sg_set_page.exit355.i
  %441 = ptrtoint ptr %integrity_iv_size.i to i32
  call void @__asan_load4_noabort(i32 %441)
  %442 = load i32, ptr %integrity_iv_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %442)
  %tobool138.not.i = icmp eq i32 %442, 0
  br i1 %tobool138.not.i, label %if.then137.i.if.else.i179_crit_edge, label %land.lhs.true.i177

if.then137.i.if.else.i179_crit_edge:              ; preds = %if.then137.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.else.i179

land.lhs.true.i177:                               ; preds = %if.then137.i
  %443 = ptrtoint ptr %bio_in.i to i32
  call void @__asan_load4_noabort(i32 %443)
  %444 = load ptr, ptr %bio_in.i, align 8
  %bi_opf.i174 = getelementptr inbounds %struct.bio, ptr %444, i32 0, i32 2
  %445 = ptrtoint ptr %bi_opf.i174 to i32
  call void @__asan_load4_noabort(i32 %445)
  %446 = load i32, ptr %bi_opf.i174, align 8
  %and.i.i175 = and i32 %446, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i175)
  %tobool.i.not.i176 = icmp eq i32 %and.i.i175, 0
  br i1 %tobool.i.not.i176, label %if.then146.i, label %land.lhs.true.i177.if.else.i179_crit_edge

land.lhs.true.i177.if.else.i179_crit_edge:        ; preds = %land.lhs.true.i177
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.else.i179

if.then146.i:                                     ; preds = %land.lhs.true.i177
  call void @__sanitizer_cov_trace_pc() #22
  %447 = call ptr @memcpy(ptr %add.ptr.i330.i, ptr %add.ptr.i331.i, i32 %442)
  br label %if.end164.i

if.else.i179:                                     ; preds = %land.lhs.true.i177.if.else.i179_crit_edge, %if.then137.i.if.else.i179_crit_edge
  %generator.i178 = getelementptr inbounds %struct.crypt_iv_operations, ptr %440, i32 0, i32 4
  %448 = ptrtoint ptr %generator.i178 to i32
  call void @__asan_load4_noabort(i32 %448)
  %449 = load ptr, ptr %generator.i178, align 4
  %call149.i = call i32 %449(ptr noundef %cc, ptr noundef %add.ptr.i330.i, ptr noundef %add.ptr.i.i134) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call149.i)
  %cmp150.i = icmp slt i32 %call149.i, 0
  br i1 %cmp150.i, label %if.else.i179.if.end15_crit_edge, label %if.end153.i

if.else.i179.if.end15_crit_edge:                  ; preds = %if.else.i179
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end15

if.end153.i:                                      ; preds = %if.else.i179
  %450 = ptrtoint ptr %cipher_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %450)
  %451 = load volatile i32, ptr %cipher_flags.i.i, align 4
  %452 = and i32 %451, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %452)
  %tobool156.not.i = icmp eq i32 %452, 0
  %spec.select.i = select i1 %tobool156.not.i, ptr %sg_in124.i, ptr %sg_out126.i
  %453 = ptrtoint ptr %integrity_iv_size.i to i32
  call void @__asan_load4_noabort(i32 %453)
  %454 = load i32, ptr %integrity_iv_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %454)
  %tobool160.not.i = icmp eq i32 %454, 0
  br i1 %tobool160.not.i, label %if.end153.i.if.end164.i_crit_edge, label %if.then161.i

if.end153.i.if.end164.i_crit_edge:                ; preds = %if.end153.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end164.i

if.then161.i:                                     ; preds = %if.end153.i
  call void @__sanitizer_cov_trace_pc() #22
  %455 = call ptr @memcpy(ptr %add.ptr.i331.i, ptr %add.ptr.i330.i, i32 %454)
  br label %if.end164.i

if.end164.i:                                      ; preds = %if.then161.i, %if.end153.i.if.end164.i_crit_edge, %if.then146.i
  %sg_in.1.i = phi ptr [ %sg_in124.i, %if.then146.i ], [ %spec.select.i, %if.then161.i ], [ %spec.select.i, %if.end153.i.if.end164.i_crit_edge ]
  %456 = ptrtoint ptr %iv_size.i to i32
  call void @__asan_load4_noabort(i32 %456)
  %457 = load i32, ptr %iv_size.i, align 8
  %458 = call ptr @memcpy(ptr %retval.0.i.i157, ptr %add.ptr.i330.i, i32 %457)
  br label %if.end165.i

if.end165.i:                                      ; preds = %if.end164.i, %sg_set_page.exit355.i.if.end165.i_crit_edge
  %sg_in.2.i = phi ptr [ %sg_in.1.i, %if.end164.i ], [ %sg_in124.i, %sg_set_page.exit355.i.if.end165.i_crit_edge ]
  %459 = ptrtoint ptr %sector_size to i32
  call void @__asan_load2_noabort(i32 %459)
  %460 = load i16, ptr %sector_size, align 4
  %conv167.i = zext i16 %460 to i32
  %src1.i.i180 = getelementptr inbounds %struct.skcipher_request, ptr %74, i32 0, i32 2
  %461 = ptrtoint ptr %src1.i.i180 to i32
  call void @__asan_store4_noabort(i32 %461)
  store ptr %sg_in.2.i, ptr %src1.i.i180, align 8
  %dst2.i.i181 = getelementptr inbounds %struct.skcipher_request, ptr %74, i32 0, i32 3
  %462 = ptrtoint ptr %dst2.i.i181 to i32
  call void @__asan_store4_noabort(i32 %462)
  store ptr %sg_out126.i, ptr %dst2.i.i181, align 4
  %463 = ptrtoint ptr %74 to i32
  call void @__asan_store4_noabort(i32 %463)
  store i32 %conv167.i, ptr %74, align 128
  %iv4.i.i182 = getelementptr inbounds %struct.skcipher_request, ptr %74, i32 0, i32 1
  %464 = ptrtoint ptr %iv4.i.i182 to i32
  call void @__asan_store4_noabort(i32 %464)
  store ptr %retval.0.i.i157, ptr %iv4.i.i182, align 4
  %465 = ptrtoint ptr %bio_in.i to i32
  call void @__asan_load4_noabort(i32 %465)
  %466 = load ptr, ptr %bio_in.i, align 8
  %bi_opf169.i = getelementptr inbounds %struct.bio, ptr %466, i32 0, i32 2
  %467 = ptrtoint ptr %bi_opf169.i to i32
  call void @__asan_load4_noabort(i32 %467)
  %468 = load i32, ptr %bi_opf169.i, align 8
  %and.i356.i = and i32 %468, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i356.i)
  %tobool.i357.not.i = icmp eq i32 %and.i356.i, 0
  br i1 %tobool.i357.not.i, label %if.else178.i, label %if.then176.i

if.then176.i:                                     ; preds = %if.end165.i
  call void @__sanitizer_cov_trace_pc() #22
  %call177.i = call i32 @crypto_skcipher_encrypt(ptr noundef %74) #20
  br label %if.end180.i

if.else178.i:                                     ; preds = %if.end165.i
  call void @__sanitizer_cov_trace_pc() #22
  %call179.i = call i32 @crypto_skcipher_decrypt(ptr noundef %74) #20
  br label %if.end180.i

if.end180.i:                                      ; preds = %if.else178.i, %if.then176.i
  %r.0.i183 = phi i32 [ %call177.i, %if.then176.i ], [ %call179.i, %if.else178.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %r.0.i183)
  %tobool181.not.i = icmp eq i32 %r.0.i183, 0
  br i1 %tobool181.not.i, label %land.lhs.true182.i, label %if.end180.i.if.end192.i_crit_edge

if.end180.i.if.end192.i_crit_edge:                ; preds = %if.end180.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end192.i

land.lhs.true182.i:                               ; preds = %if.end180.i
  %469 = ptrtoint ptr %iv_gen_ops.i to i32
  call void @__asan_load4_noabort(i32 %469)
  %470 = load ptr, ptr %iv_gen_ops.i, align 8
  %tobool184.not.i = icmp eq ptr %470, null
  br i1 %tobool184.not.i, label %land.lhs.true182.i.if.end192.i_crit_edge, label %land.lhs.true185.i

land.lhs.true182.i.if.end192.i_crit_edge:         ; preds = %land.lhs.true182.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end192.i

land.lhs.true185.i:                               ; preds = %land.lhs.true182.i
  %post.i184 = getelementptr inbounds %struct.crypt_iv_operations, ptr %470, i32 0, i32 5
  %471 = ptrtoint ptr %post.i184 to i32
  call void @__asan_load4_noabort(i32 %471)
  %472 = load ptr, ptr %post.i184, align 4
  %tobool187.not.i = icmp eq ptr %472, null
  br i1 %tobool187.not.i, label %land.lhs.true185.i.if.end192.i_crit_edge, label %if.then188.i

land.lhs.true185.i.if.end192.i_crit_edge:         ; preds = %land.lhs.true185.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end192.i

if.then188.i:                                     ; preds = %land.lhs.true185.i
  call void @__sanitizer_cov_trace_pc() #22
  %call191.i = call i32 %472(ptr noundef %cc, ptr noundef %add.ptr.i330.i, ptr noundef %add.ptr.i.i134) #20
  br label %if.end192.i

if.end192.i:                                      ; preds = %if.then188.i, %land.lhs.true185.i.if.end192.i_crit_edge, %land.lhs.true182.i.if.end192.i_crit_edge, %if.end180.i.if.end192.i_crit_edge
  %r.1.i185 = phi i32 [ %r.0.i183, %if.end180.i.if.end192.i_crit_edge ], [ %call191.i, %if.then188.i ], [ 0, %land.lhs.true185.i.if.end192.i_crit_edge ], [ 0, %land.lhs.true182.i.if.end192.i_crit_edge ]
  %473 = ptrtoint ptr %bio_in.i to i32
  call void @__asan_load4_noabort(i32 %473)
  %474 = load ptr, ptr %bio_in.i, align 8
  %475 = ptrtoint ptr %sector_size to i32
  call void @__asan_load2_noabort(i32 %475)
  %476 = load i16, ptr %sector_size, align 4
  %conv196.i = zext i16 %476 to i32
  %shr.i358.i = lshr i32 %conv196.i, 9
  %conv.i.i186 = zext i32 %shr.i358.i to i64
  %477 = ptrtoint ptr %iter_in.i to i32
  call void @__asan_loadN_noabort(i32 %477, i32 8)
  %478 = load i64, ptr %iter_in.i, align 1
  %add.i.i187 = add i64 %478, %conv.i.i186
  store i64 %add.i.i187, ptr %iter_in.i, align 1
  %bi_opf.i.i.i188 = getelementptr inbounds %struct.bio, ptr %474, i32 0, i32 2
  %479 = ptrtoint ptr %bi_opf.i.i.i188 to i32
  call void @__asan_load4_noabort(i32 %479)
  %480 = load i32, ptr %bi_opf.i.i.i188, align 8
  %and.i.i359.i = and i32 %480, 255
  %481 = add nsw i32 %and.i.i359.i, -3
  %switch.and.i.i.i189 = and i32 %481, -7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.and.i.i.i189)
  %switch.selectcmp.i.i.i190 = icmp eq i32 %switch.and.i.i.i189, 0
  br i1 %switch.selectcmp.i.i.i190, label %if.then.i.i192, label %if.else.i.i195

if.then.i.i192:                                   ; preds = %if.end192.i
  call void @__sanitizer_cov_trace_pc() #22
  %482 = ptrtoint ptr %bi_size to i32
  call void @__asan_loadN_noabort(i32 %482, i32 4)
  %483 = load i32, ptr %bi_size, align 1
  %sub.i.i191 = sub i32 %483, %conv196.i
  store i32 %sub.i.i191, ptr %bi_size, align 1
  br label %bio_advance_iter.exit.i216

if.else.i.i195:                                   ; preds = %if.end192.i
  %bi_io_vec.i.i193 = getelementptr inbounds %struct.bio, ptr %474, i32 0, i32 20
  %484 = ptrtoint ptr %bi_io_vec.i.i193 to i32
  call void @__asan_load4_noabort(i32 %484)
  %485 = load ptr, ptr %bi_io_vec.i.i193, align 8
  %486 = ptrtoint ptr %bi_size to i32
  call void @__asan_loadN_noabort(i32 %486, i32 4)
  %487 = load i32, ptr %bi_size, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %487, i32 %conv196.i)
  %cmp.i.i.i194 = icmp ult i32 %487, %conv196.i
  br i1 %cmp.i.i.i194, label %land.rhs.i.i.i197, label %if.end38.i.i.i203

land.rhs.i.i.i197:                                ; preds = %if.else.i.i195
  %.b1.i.i.i196 = load i1, ptr @bvec_iter_advance.__already_done, align 1
  br i1 %.b1.i.i.i196, label %land.rhs.i.i.i197.if.then36.i.i.i199_crit_edge, label %if.then.i.i.i198, !prof !413

land.rhs.i.i.i197.if.then36.i.i.i199_crit_edge:   ; preds = %land.rhs.i.i.i197
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then36.i.i.i199

if.then.i.i.i198:                                 ; preds = %land.rhs.i.i.i197
  call void @__sanitizer_cov_trace_pc() #22
  store i1 true, ptr @bvec_iter_advance.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.126, i32 noundef 107, i32 noundef 9, ptr noundef nonnull @.str.127) #20
  br label %if.then36.i.i.i199

if.then36.i.i.i199:                               ; preds = %if.then.i.i.i198, %land.rhs.i.i.i197.if.then36.i.i.i199_crit_edge
  %488 = ptrtoint ptr %bi_size to i32
  call void @__asan_storeN_noabort(i32 %488, i32 4)
  store i32 0, ptr %bi_size, align 1
  br label %bio_advance_iter.exit.i216

if.end38.i.i.i203:                                ; preds = %if.else.i.i195
  %489 = ptrtoint ptr %bi_idx.i to i32
  call void @__asan_loadN_noabort(i32 %489, i32 4)
  %490 = load i32, ptr %bi_idx.i, align 1
  %sub.i.i.i200 = sub i32 %487, %conv196.i
  %491 = ptrtoint ptr %bi_size to i32
  call void @__asan_storeN_noabort(i32 %491, i32 4)
  store i32 %sub.i.i.i200, ptr %bi_size, align 1
  %492 = ptrtoint ptr %bi_bvec_done.i to i32
  call void @__asan_loadN_noabort(i32 %492, i32 4)
  %493 = load i32, ptr %bi_bvec_done.i, align 1
  %add.i.i.i201 = add i32 %493, %conv196.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i.i.i201)
  %tobool40.not3.i.i.i202 = icmp eq i32 %add.i.i.i201, 0
  br i1 %tobool40.not3.i.i.i202, label %if.end38.i.i.i203.while.end.i.i.i215_crit_edge, label %if.end38.i.i.i203.land.rhs41.i.i.i208_crit_edge

if.end38.i.i.i203.land.rhs41.i.i.i208_crit_edge:  ; preds = %if.end38.i.i.i203
  br label %land.rhs41.i.i.i208

if.end38.i.i.i203.while.end.i.i.i215_crit_edge:   ; preds = %if.end38.i.i.i203
  call void @__sanitizer_cov_trace_pc() #22
  br label %while.end.i.i.i215

land.rhs41.i.i.i208:                              ; preds = %while.body.i.i.i212.land.rhs41.i.i.i208_crit_edge, %if.end38.i.i.i203.land.rhs41.i.i.i208_crit_edge
  %bytes.addr.05.i.i.i204 = phi i32 [ %sub46.i.i.i209, %while.body.i.i.i212.land.rhs41.i.i.i208_crit_edge ], [ %add.i.i.i201, %if.end38.i.i.i203.land.rhs41.i.i.i208_crit_edge ]
  %idx.04.i.i.i205 = phi i32 [ %inc.i.i.i210, %while.body.i.i.i212.land.rhs41.i.i.i208_crit_edge ], [ %490, %if.end38.i.i.i203.land.rhs41.i.i.i208_crit_edge ]
  %bv_len.i.i.i206 = getelementptr %struct.bio_vec, ptr %485, i32 %idx.04.i.i.i205, i32 1
  %494 = ptrtoint ptr %bv_len.i.i.i206 to i32
  call void @__asan_load4_noabort(i32 %494)
  %495 = load i32, ptr %bv_len.i.i.i206, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %bytes.addr.05.i.i.i204, i32 %495)
  %cmp42.not.i.i.i207 = icmp ult i32 %bytes.addr.05.i.i.i204, %495
  br i1 %cmp42.not.i.i.i207, label %land.rhs41.i.i.i208.while.end.i.i.i215_crit_edge, label %while.body.i.i.i212

land.rhs41.i.i.i208.while.end.i.i.i215_crit_edge: ; preds = %land.rhs41.i.i.i208
  call void @__sanitizer_cov_trace_pc() #22
  br label %while.end.i.i.i215

while.body.i.i.i212:                              ; preds = %land.rhs41.i.i.i208
  %sub46.i.i.i209 = sub i32 %bytes.addr.05.i.i.i204, %495
  %inc.i.i.i210 = add i32 %idx.04.i.i.i205, 1
  %tobool40.not.i.i.i211 = icmp eq i32 %sub46.i.i.i209, 0
  br i1 %tobool40.not.i.i.i211, label %while.body.i.i.i212.while.end.i.i.i215_crit_edge, label %while.body.i.i.i212.land.rhs41.i.i.i208_crit_edge

while.body.i.i.i212.land.rhs41.i.i.i208_crit_edge: ; preds = %while.body.i.i.i212
  call void @__sanitizer_cov_trace_pc() #22
  br label %land.rhs41.i.i.i208

while.body.i.i.i212.while.end.i.i.i215_crit_edge: ; preds = %while.body.i.i.i212
  call void @__sanitizer_cov_trace_pc() #22
  br label %while.end.i.i.i215

while.end.i.i.i215:                               ; preds = %while.body.i.i.i212.while.end.i.i.i215_crit_edge, %land.rhs41.i.i.i208.while.end.i.i.i215_crit_edge, %if.end38.i.i.i203.while.end.i.i.i215_crit_edge
  %idx.0.lcssa.i.i.i213 = phi i32 [ %490, %if.end38.i.i.i203.while.end.i.i.i215_crit_edge ], [ %idx.04.i.i.i205, %land.rhs41.i.i.i208.while.end.i.i.i215_crit_edge ], [ %inc.i.i.i210, %while.body.i.i.i212.while.end.i.i.i215_crit_edge ]
  %bytes.addr.0.lcssa.i.i.i214 = phi i32 [ 0, %if.end38.i.i.i203.while.end.i.i.i215_crit_edge ], [ %bytes.addr.05.i.i.i204, %land.rhs41.i.i.i208.while.end.i.i.i215_crit_edge ], [ 0, %while.body.i.i.i212.while.end.i.i.i215_crit_edge ]
  %496 = ptrtoint ptr %bi_idx.i to i32
  call void @__asan_storeN_noabort(i32 %496, i32 4)
  store i32 %idx.0.lcssa.i.i.i213, ptr %bi_idx.i, align 1
  %497 = ptrtoint ptr %bi_bvec_done.i to i32
  call void @__asan_storeN_noabort(i32 %497, i32 4)
  store i32 %bytes.addr.0.lcssa.i.i.i214, ptr %bi_bvec_done.i, align 1
  br label %bio_advance_iter.exit.i216

bio_advance_iter.exit.i216:                       ; preds = %while.end.i.i.i215, %if.then36.i.i.i199, %if.then.i.i192
  %498 = ptrtoint ptr %bio_out.i to i32
  call void @__asan_load4_noabort(i32 %498)
  %499 = load ptr, ptr %bio_out.i, align 4
  %500 = ptrtoint ptr %sector_size to i32
  call void @__asan_load2_noabort(i32 %500)
  %501 = load i16, ptr %sector_size, align 4
  %conv200.i = zext i16 %501 to i32
  %shr.i360.i = lshr i32 %conv200.i, 9
  %conv.i361.i = zext i32 %shr.i360.i to i64
  %502 = ptrtoint ptr %iter_out.i to i32
  call void @__asan_loadN_noabort(i32 %502, i32 8)
  %503 = load i64, ptr %iter_out.i, align 1
  %add.i362.i = add i64 %503, %conv.i361.i
  store i64 %add.i362.i, ptr %iter_out.i, align 1
  %bi_opf.i.i363.i = getelementptr inbounds %struct.bio, ptr %499, i32 0, i32 2
  %504 = ptrtoint ptr %bi_opf.i.i363.i to i32
  call void @__asan_load4_noabort(i32 %504)
  %505 = load i32, ptr %bi_opf.i.i363.i, align 8
  %and.i.i364.i = and i32 %505, 255
  %506 = add nsw i32 %and.i.i364.i, -3
  %switch.and.i.i365.i = and i32 %506, -7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.and.i.i365.i)
  %switch.selectcmp.i.i366.i = icmp eq i32 %switch.and.i.i365.i, 0
  br i1 %switch.selectcmp.i.i366.i, label %if.then.i369.i, label %if.else.i374.i

if.then.i369.i:                                   ; preds = %bio_advance_iter.exit.i216
  call void @__sanitizer_cov_trace_pc() #22
  %507 = ptrtoint ptr %bi_size3 to i32
  call void @__asan_loadN_noabort(i32 %507, i32 4)
  %508 = load i32, ptr %bi_size3, align 1
  %sub.i368.i = sub i32 %508, %conv200.i
  store i32 %sub.i368.i, ptr %bi_size3, align 1
  br label %if.end15

if.else.i374.i:                                   ; preds = %bio_advance_iter.exit.i216
  %bi_io_vec.i370.i = getelementptr inbounds %struct.bio, ptr %499, i32 0, i32 20
  %509 = ptrtoint ptr %bi_io_vec.i370.i to i32
  call void @__asan_load4_noabort(i32 %509)
  %510 = load ptr, ptr %bi_io_vec.i370.i, align 8
  %511 = ptrtoint ptr %bi_size3 to i32
  call void @__asan_loadN_noabort(i32 %511, i32 4)
  %512 = load i32, ptr %bi_size3, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %512, i32 %conv200.i)
  %cmp.i.i373.i = icmp ult i32 %512, %conv200.i
  br i1 %cmp.i.i373.i, label %land.rhs.i.i376.i, label %if.end38.i.i383.i

land.rhs.i.i376.i:                                ; preds = %if.else.i374.i
  %.b1.i.i375.i = load i1, ptr @bvec_iter_advance.__already_done, align 1
  br i1 %.b1.i.i375.i, label %land.rhs.i.i376.i.if.then36.i.i378.i_crit_edge, label %if.then.i.i377.i, !prof !413

land.rhs.i.i376.i.if.then36.i.i378.i_crit_edge:   ; preds = %land.rhs.i.i376.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then36.i.i378.i

if.then.i.i377.i:                                 ; preds = %land.rhs.i.i376.i
  call void @__sanitizer_cov_trace_pc() #22
  store i1 true, ptr @bvec_iter_advance.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.126, i32 noundef 107, i32 noundef 9, ptr noundef nonnull @.str.127) #20
  br label %if.then36.i.i378.i

if.then36.i.i378.i:                               ; preds = %if.then.i.i377.i, %land.rhs.i.i376.i.if.then36.i.i378.i_crit_edge
  %513 = ptrtoint ptr %bi_size3 to i32
  call void @__asan_storeN_noabort(i32 %513, i32 4)
  store i32 0, ptr %bi_size3, align 1
  br label %if.end15

if.end38.i.i383.i:                                ; preds = %if.else.i374.i
  %514 = ptrtoint ptr %bi_idx46.i to i32
  call void @__asan_loadN_noabort(i32 %514, i32 4)
  %515 = load i32, ptr %bi_idx46.i, align 1
  %sub.i.i379.i = sub i32 %512, %conv200.i
  %516 = ptrtoint ptr %bi_size3 to i32
  call void @__asan_storeN_noabort(i32 %516, i32 4)
  store i32 %sub.i.i379.i, ptr %bi_size3, align 1
  %517 = ptrtoint ptr %bi_bvec_done56.i to i32
  call void @__asan_loadN_noabort(i32 %517, i32 4)
  %518 = load i32, ptr %bi_bvec_done56.i, align 1
  %add.i.i381.i = add i32 %518, %conv200.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i.i381.i)
  %tobool40.not3.i.i382.i = icmp eq i32 %add.i.i381.i, 0
  br i1 %tobool40.not3.i.i382.i, label %if.end38.i.i383.i.while.end.i.i395.i_crit_edge, label %if.end38.i.i383.i.land.rhs41.i.i388.i_crit_edge

if.end38.i.i383.i.land.rhs41.i.i388.i_crit_edge:  ; preds = %if.end38.i.i383.i
  br label %land.rhs41.i.i388.i

if.end38.i.i383.i.while.end.i.i395.i_crit_edge:   ; preds = %if.end38.i.i383.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %while.end.i.i395.i

land.rhs41.i.i388.i:                              ; preds = %while.body.i.i392.i.land.rhs41.i.i388.i_crit_edge, %if.end38.i.i383.i.land.rhs41.i.i388.i_crit_edge
  %bytes.addr.05.i.i384.i = phi i32 [ %sub46.i.i389.i, %while.body.i.i392.i.land.rhs41.i.i388.i_crit_edge ], [ %add.i.i381.i, %if.end38.i.i383.i.land.rhs41.i.i388.i_crit_edge ]
  %idx.04.i.i385.i = phi i32 [ %inc.i.i390.i, %while.body.i.i392.i.land.rhs41.i.i388.i_crit_edge ], [ %515, %if.end38.i.i383.i.land.rhs41.i.i388.i_crit_edge ]
  %bv_len.i.i386.i = getelementptr %struct.bio_vec, ptr %510, i32 %idx.04.i.i385.i, i32 1
  %519 = ptrtoint ptr %bv_len.i.i386.i to i32
  call void @__asan_load4_noabort(i32 %519)
  %520 = load i32, ptr %bv_len.i.i386.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %bytes.addr.05.i.i384.i, i32 %520)
  %cmp42.not.i.i387.i = icmp ult i32 %bytes.addr.05.i.i384.i, %520
  br i1 %cmp42.not.i.i387.i, label %land.rhs41.i.i388.i.while.end.i.i395.i_crit_edge, label %while.body.i.i392.i

land.rhs41.i.i388.i.while.end.i.i395.i_crit_edge: ; preds = %land.rhs41.i.i388.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %while.end.i.i395.i

while.body.i.i392.i:                              ; preds = %land.rhs41.i.i388.i
  %sub46.i.i389.i = sub i32 %bytes.addr.05.i.i384.i, %520
  %inc.i.i390.i = add i32 %idx.04.i.i385.i, 1
  %tobool40.not.i.i391.i = icmp eq i32 %sub46.i.i389.i, 0
  br i1 %tobool40.not.i.i391.i, label %while.body.i.i392.i.while.end.i.i395.i_crit_edge, label %while.body.i.i392.i.land.rhs41.i.i388.i_crit_edge

while.body.i.i392.i.land.rhs41.i.i388.i_crit_edge: ; preds = %while.body.i.i392.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %land.rhs41.i.i388.i

while.body.i.i392.i.while.end.i.i395.i_crit_edge: ; preds = %while.body.i.i392.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %while.end.i.i395.i

while.end.i.i395.i:                               ; preds = %while.body.i.i392.i.while.end.i.i395.i_crit_edge, %land.rhs41.i.i388.i.while.end.i.i395.i_crit_edge, %if.end38.i.i383.i.while.end.i.i395.i_crit_edge
  %idx.0.lcssa.i.i393.i = phi i32 [ %515, %if.end38.i.i383.i.while.end.i.i395.i_crit_edge ], [ %idx.04.i.i385.i, %land.rhs41.i.i388.i.while.end.i.i395.i_crit_edge ], [ %inc.i.i390.i, %while.body.i.i392.i.while.end.i.i395.i_crit_edge ]
  %bytes.addr.0.lcssa.i.i394.i = phi i32 [ 0, %if.end38.i.i383.i.while.end.i.i395.i_crit_edge ], [ %bytes.addr.05.i.i384.i, %land.rhs41.i.i388.i.while.end.i.i395.i_crit_edge ], [ 0, %while.body.i.i392.i.while.end.i.i395.i_crit_edge ]
  %521 = ptrtoint ptr %bi_idx46.i to i32
  call void @__asan_storeN_noabort(i32 %521, i32 4)
  store i32 %idx.0.lcssa.i.i393.i, ptr %bi_idx46.i, align 1
  %522 = ptrtoint ptr %bi_bvec_done56.i to i32
  call void @__asan_storeN_noabort(i32 %522, i32 4)
  store i32 %bytes.addr.0.lcssa.i.i394.i, ptr %bi_bvec_done56.i, align 1
  br label %if.end15

if.end15:                                         ; preds = %while.end.i.i395.i, %if.then36.i.i378.i, %if.then.i369.i, %if.else.i179.if.end15_crit_edge, %while.end.i.i647.i, %if.then36.i.i630.i, %if.then.i621.i, %if.else.i102.if.end15_crit_edge
  %r.0 = phi i32 [ %call184.i, %if.else.i102.if.end15_crit_edge ], [ %r.1.i, %if.then.i621.i ], [ %r.1.i, %if.then36.i.i630.i ], [ %r.1.i, %while.end.i.i647.i ], [ %call149.i, %if.else.i179.if.end15_crit_edge ], [ %r.1.i185, %if.then.i369.i ], [ %r.1.i185, %if.then36.i.i378.i ], [ %r.1.i185, %while.end.i.i395.i ]
  %523 = zext i32 %r.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %523, ptr @__sancov_gen_cov_switch_values.176)
  switch i32 %r.0, label %if.end15.sw.default_crit_edge [
    i32 -16, label %sw.bb
    i32 -115, label %if.end15.sw.bb35_crit_edge
    i32 0, label %sw.bb41
    i32 -74, label %sw.bb51
  ]

if.end15.sw.bb35_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb35

if.end15.sw.default_crit_edge:                    ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.default

sw.bb:                                            ; preds = %if.end15
  %524 = call i32 @llvm.read_register.i32(metadata !400) #20
  %and.i.i = and i32 %524, -16384
  %525 = inttoptr i32 %and.i.i to ptr
  %preempt_count.i = getelementptr inbounds %struct.thread_info, ptr %525, i32 0, i32 1
  %526 = ptrtoint ptr %preempt_count.i to i32
  call void @__asan_load4_noabort(i32 %526)
  %527 = load volatile i32, ptr %preempt_count.i, align 4
  %and = and i32 %527, 15728640
  %528 = call i32 @llvm.read_register.i32(metadata !400) #20
  %and.i.i88 = and i32 %528, -16384
  %529 = inttoptr i32 %and.i.i88 to ptr
  %preempt_count.i89 = getelementptr inbounds %struct.thread_info, ptr %529, i32 0, i32 1
  %530 = ptrtoint ptr %preempt_count.i89 to i32
  call void @__asan_load4_noabort(i32 %530)
  %531 = load volatile i32, ptr %preempt_count.i89, align 4
  %and18 = and i32 %531, 983040
  %or = or i32 %and18, %and
  %532 = call i32 @llvm.read_register.i32(metadata !400) #20
  %and.i.i90 = and i32 %532, -16384
  %533 = inttoptr i32 %and.i.i90 to ptr
  %preempt_count.i91 = getelementptr inbounds %struct.thread_info, ptr %533, i32 0, i32 1
  %534 = ptrtoint ptr %preempt_count.i91 to i32
  call void @__asan_load4_noabort(i32 %534)
  %535 = load volatile i32, ptr %preempt_count.i91, align 4
  %and20 = and i32 %535, 65280
  %or21 = or i32 %or, %and20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or21)
  %tobool22.not = icmp eq i32 %or21, 0
  br i1 %tobool22.not, label %if.else31, label %if.then23

if.then23:                                        ; preds = %sw.bb
  %call25 = call zeroext i1 @try_wait_for_completion(ptr noundef %ctx) #20
  br i1 %call25, label %if.then23.if.end33_crit_edge, label %if.else27

if.then23.if.end33_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end33

if.else27:                                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #22
  %536 = ptrtoint ptr %r.i.i to i32
  call void @__asan_store4_noabort(i32 %536)
  store ptr null, ptr %r.i.i, align 4
  %537 = ptrtoint ptr %cc_sector.i.i to i32
  call void @__asan_load8_noabort(i32 %537)
  %538 = load i64, ptr %cc_sector.i.i, align 8
  %add = add i64 %538, %conv43
  store i64 %add, ptr %cc_sector.i.i, align 8
  br label %cleanup

if.else31:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #22
  call void @wait_for_completion(ptr noundef %ctx) #20
  br label %if.end33

if.end33:                                         ; preds = %if.else31, %if.then23.if.end33_crit_edge
  %539 = ptrtoint ptr %ctx to i32
  call void @__asan_store4_noabort(i32 %539)
  store i32 0, ptr %ctx, align 4
  br label %sw.bb35

sw.bb35:                                          ; preds = %if.end33, %if.end15.sw.bb35_crit_edge
  %540 = ptrtoint ptr %r.i.i to i32
  call void @__asan_store4_noabort(i32 %540)
  store ptr null, ptr %r.i.i, align 4
  %541 = ptrtoint ptr %cc_sector.i.i to i32
  call void @__asan_load8_noabort(i32 %541)
  %542 = load i64, ptr %cc_sector.i.i, align 8
  %add39 = add i64 %542, %conv43
  store i64 %add39, ptr %cc_sector.i.i, align 8
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.then48, %sw.bb41.while.cond.backedge_crit_edge, %sw.bb35
  %tag_offset.0.be = add i32 %tag_offset.0251, 1
  %543 = ptrtoint ptr %bi_size to i32
  call void @__asan_load4_noabort(i32 %543)
  %544 = load i32, ptr %bi_size, align 8
  %tobool2.not = icmp eq i32 %544, 0
  br i1 %tobool2.not, label %while.cond.backedge.cleanup_crit_edge, label %while.cond.backedge.land.rhs_crit_edge

while.cond.backedge.land.rhs_crit_edge:           ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #22
  br label %land.rhs

while.cond.backedge.cleanup_crit_edge:            ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

sw.bb41:                                          ; preds = %if.end15
  %call.i.i92 = call zeroext i1 @__kasan_check_write(ptr noundef %cc_pending8, i32 noundef 4) #20
  call void @llvm.prefetch.p0(ptr %cc_pending8, i32 1, i32 3, i32 1) #20
  %545 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %cc_pending8, ptr %cc_pending8, i32 1, ptr elementtype(i32) %cc_pending8) #20, !srcloc !437
  %546 = ptrtoint ptr %cc_sector.i.i to i32
  call void @__asan_load8_noabort(i32 %546)
  %547 = load i64, ptr %cc_sector.i.i, align 8
  %add45 = add i64 %547, %conv43
  store i64 %add45, ptr %cc_sector.i.i, align 8
  br i1 %atomic, label %sw.bb41.while.cond.backedge_crit_edge, label %if.then48

sw.bb41.while.cond.backedge_crit_edge:            ; preds = %sw.bb41
  call void @__sanitizer_cov_trace_pc() #22
  br label %while.cond.backedge

if.then48:                                        ; preds = %sw.bb41
  call void @__sanitizer_cov_trace_pc() #22
  call void @__might_resched(ptr noundef nonnull @.str.15, i32 noundef 1623, i32 noundef 0) #20
  %call.i = call i32 @__cond_resched() #20
  br label %while.cond.backedge

sw.bb51:                                          ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #22
  %call.i.i93 = call zeroext i1 @__kasan_check_write(ptr noundef %cc_pending8, i32 noundef 4) #20
  call void @llvm.prefetch.p0(ptr %cc_pending8, i32 1, i32 3, i32 1) #20
  %548 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %cc_pending8, ptr %cc_pending8, i32 1, ptr elementtype(i32) %cc_pending8) #20, !srcloc !437
  br label %cleanup

sw.default:                                       ; preds = %if.end15.sw.default_crit_edge, %if.else.sw.default_crit_edge, %do.end115.i.sw.default_crit_edge
  %call.i.i94 = call zeroext i1 @__kasan_check_write(ptr noundef %cc_pending8, i32 noundef 4) #20
  call void @llvm.prefetch.p0(ptr %cc_pending8, i32 1, i32 3, i32 1) #20
  %549 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %cc_pending8, ptr %cc_pending8, i32 1, ptr elementtype(i32) %cc_pending8) #20, !srcloc !437
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %sw.bb51, %while.cond.backedge.cleanup_crit_edge, %if.else27, %if.then6, %land.rhs.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i8 [ 13, %if.then6 ], [ 10, %sw.default ], [ 8, %sw.bb51 ], [ 13, %if.else27 ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %land.rhs.cleanup_crit_edge ], [ 0, %while.cond.backedge.cleanup_crit_edge ]
  ret i8 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @kcryptd_crypt_read_continue(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -16
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 128
  %ctx = getelementptr i8, ptr %work, i32 72
  tail call void @wait_for_completion(ptr noundef %ctx) #20
  %2 = ptrtoint ptr %ctx to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %ctx, align 4
  %call = tail call fastcc zeroext i8 @crypt_convert(ptr noundef %1, ptr noundef %ctx, i1 noundef zeroext true, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call)
  %tobool.not = icmp eq i8 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  %error = getelementptr i8, ptr %work, i32 196
  %3 = ptrtoint ptr %error to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %call, ptr %error, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %cc_pending = getelementptr i8, ptr %work, i32 184
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %cc_pending, i32 noundef 4) #20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #20, !srcloc !428
  tail call void @llvm.prefetch.p0(ptr %cc_pending, i32 1, i32 3, i32 1) #20
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %cc_pending, ptr %cc_pending, i32 1, ptr elementtype(i32) %cc_pending) #20, !srcloc !429
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %4, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #20, !srcloc !430
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.then7, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end8

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  tail call fastcc void @crypt_dec_pending(ptr noundef %add.ptr) #20
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end.if.end8_crit_edge
  tail call fastcc void @crypt_dec_pending(ptr noundef %add.ptr)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_wait_for_completion(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @kcryptd_async_done(ptr nocapture noundef readonly %async_req, i32 noundef %error) #2 align 64 {
entry:
  %b = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.crypto_async_request, ptr %async_req, i32 0, i32 2
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %add.ptr = getelementptr i8, ptr %3, i32 -88
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr, align 128
  %6 = zext i32 %error to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.177)
  switch i32 %error, label %entry.if.end11_crit_edge [
    i32 -115, label %if.then
    i32 0, label %land.lhs.true
  ]

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end11

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  tail call void @complete(ptr noundef %3) #20
  br label %cleanup

land.lhs.true:                                    ; preds = %entry
  %iv_gen_ops = getelementptr inbounds %struct.crypt_config, ptr %5, i32 0, i32 11
  %7 = ptrtoint ptr %iv_gen_ops to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %iv_gen_ops, align 8
  %tobool3.not = icmp eq ptr %8, null
  br i1 %tobool3.not, label %land.lhs.true.if.end28_crit_edge, label %land.lhs.true4

land.lhs.true.if.end28_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end28

land.lhs.true4:                                   ; preds = %land.lhs.true
  %post = getelementptr inbounds %struct.crypt_iv_operations, ptr %8, i32 0, i32 5
  %9 = ptrtoint ptr %post to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %post, align 4
  %tobool6.not = icmp eq ptr %10, null
  br i1 %tobool6.not, label %land.lhs.true4.if.end28_crit_edge, label %if.then7

land.lhs.true4.if.end28_crit_edge:                ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end28

if.then7:                                         ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #22
  %cipher_flags.i.i.i = getelementptr inbounds %struct.crypt_config, ptr %5, i32 0, i32 19
  %11 = ptrtoint ptr %cipher_flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %cipher_flags.i.i.i, align 4
  %add.ptr8.i.i = getelementptr %struct.dm_crypt_request, ptr %1, i32 1
  %13 = ptrtoint ptr %add.ptr8.i.i to i32
  %cipher_tfm.i28.i.i = getelementptr inbounds %struct.crypt_config, ptr %5, i32 0, i32 17
  %14 = ptrtoint ptr %cipher_tfm.i28.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cipher_tfm.i28.i.i, align 8
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %__crt_alg.i.i29.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %17, i32 0, i32 2, i32 3
  %18 = ptrtoint ptr %__crt_alg.i.i29.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %__crt_alg.i.i29.i.i, align 4
  %cra_alignmask.i.i30.i.i = getelementptr inbounds %struct.crypto_alg, ptr %19, i32 0, i32 5
  %20 = ptrtoint ptr %cra_alignmask.i.i30.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %cra_alignmask.i.i30.i.i, align 4
  %add13.i.i = add i32 %21, %13
  %neg18.i.i = xor i32 %21, -1
  %and19.i.i = and i32 %add13.i.i, %neg18.i.i
  %retval.0.i.i = inttoptr i32 %and19.i.i to ptr
  %iv_size.i = getelementptr inbounds %struct.crypt_config, ptr %5, i32 0, i32 14
  %22 = ptrtoint ptr %iv_size.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %iv_size.i, align 8
  %add.ptr.i = getelementptr i8, ptr %retval.0.i.i, i32 %23
  %call10 = tail call i32 %10(ptr noundef %5, ptr noundef %add.ptr.i, ptr noundef %1) #20
  br label %if.end11

if.end11:                                         ; preds = %if.then7, %entry.if.end11_crit_edge
  %error.addr.0 = phi i32 [ %call10, %if.then7 ], [ %error, %entry.if.end11_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -74, i32 %error.addr.0)
  %cmp12 = icmp eq i32 %error.addr.0, -74
  br i1 %cmp12, label %if.then13, label %if.else

if.then13:                                        ; preds = %if.end11
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %b) #20
  %cipher_flags.i.i.i74 = getelementptr inbounds %struct.crypt_config, ptr %5, i32 0, i32 19
  %24 = call ptr @memset(ptr %b, i32 255, i32 32)
  %25 = ptrtoint ptr %cipher_flags.i.i.i74 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %cipher_flags.i.i.i74, align 4
  %add.ptr8.i.i75 = getelementptr %struct.dm_crypt_request, ptr %1, i32 1
  %27 = ptrtoint ptr %add.ptr8.i.i75 to i32
  %cipher_tfm.i28.i.i76 = getelementptr inbounds %struct.crypt_config, ptr %5, i32 0, i32 17
  %28 = ptrtoint ptr %cipher_tfm.i28.i.i76 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %cipher_tfm.i28.i.i76, align 8
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 4
  %__crt_alg.i.i29.i.i77 = getelementptr inbounds %struct.crypto_skcipher, ptr %31, i32 0, i32 2, i32 3
  %32 = ptrtoint ptr %__crt_alg.i.i29.i.i77 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %__crt_alg.i.i29.i.i77, align 4
  %cra_alignmask.i.i30.i.i78 = getelementptr inbounds %struct.crypto_alg, ptr %33, i32 0, i32 5
  %34 = ptrtoint ptr %cra_alignmask.i.i30.i.i78 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %cra_alignmask.i.i30.i.i78, align 4
  %add13.i.i79 = add i32 %35, %27
  %neg18.i.i80 = xor i32 %35, -1
  %and19.i.i81 = and i32 %add13.i.i79, %neg18.i.i80
  %retval.0.i.i82 = inttoptr i32 %and19.i.i81 to ptr
  %iv_size.i83 = getelementptr inbounds %struct.crypt_config, ptr %5, i32 0, i32 14
  %36 = ptrtoint ptr %iv_size.i83 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %iv_size.i83, align 8
  %add.ptr.i84 = getelementptr i8, ptr %retval.0.i.i82, i32 %37
  %add.ptr2.i = getelementptr i8, ptr %add.ptr.i84, i32 %37
  %38 = ptrtoint ptr %add.ptr2.i to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %add.ptr2.i, align 8
  %40 = tail call i64 @llvm.bswap.i64(i64 %39)
  %call15 = tail call i32 @___ratelimit(ptr noundef nonnull @kcryptd_async_done._rs, ptr noundef nonnull @__func__.kcryptd_async_done) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.then13.if.end21_crit_edge, label %do.end

if.then13.if.end21_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end21

do.end:                                           ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #22
  %bio_in = getelementptr inbounds %struct.convert_context, ptr %3, i32 0, i32 1
  %41 = ptrtoint ptr %bio_in to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %bio_in, align 8
  %call19 = call ptr @bio_devname(ptr noundef %42, ptr noundef nonnull %b) #20
  %call20 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.124, ptr noundef %call19, i64 noundef %40) #23
  br label %if.end21

if.end21:                                         ; preds = %do.end, %if.then13.if.end21_crit_edge
  %bio_in22 = getelementptr inbounds %struct.convert_context, ptr %3, i32 0, i32 1
  %43 = ptrtoint ptr %bio_in22 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %bio_in22, align 8
  call void @dm_audit_log_bio(ptr noundef nonnull @.str, ptr noundef nonnull @.str.125, ptr noundef %44, i64 noundef %40, i32 noundef 0) #20
  %error23 = getelementptr i8, ptr %3, i32 124
  %45 = ptrtoint ptr %error23 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 8, ptr %error23, align 4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %b) #20
  br label %if.end28

if.else:                                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error.addr.0)
  %cmp24 = icmp slt i32 %error.addr.0, 0
  br i1 %cmp24, label %if.then25, label %if.else.if.end28_crit_edge

if.else.if.end28_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end28

if.then25:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #22
  %error26 = getelementptr i8, ptr %3, i32 124
  %46 = ptrtoint ptr %error26 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 10, ptr %error26, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.then25, %if.else.if.end28_crit_edge, %if.end21, %land.lhs.true4.if.end28_crit_edge, %land.lhs.true.if.end28_crit_edge
  %dmreq_start.i = getelementptr inbounds %struct.crypt_config, ptr %5, i32 0, i32 20
  %47 = ptrtoint ptr %dmreq_start.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %dmreq_start.i, align 4
  %idx.neg.i = sub i32 0, %48
  %add.ptr.i85 = getelementptr i8, ptr %1, i32 %idx.neg.i
  %base_bio = getelementptr i8, ptr %3, i32 -84
  %49 = ptrtoint ptr %base_bio to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %base_bio, align 4
  %cipher_flags.i.i = getelementptr inbounds %struct.crypt_config, ptr %5, i32 0, i32 19
  %51 = ptrtoint ptr %cipher_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %cipher_flags.i.i, align 4
  %per_bio_data_size.i5.i = getelementptr inbounds %struct.crypt_config, ptr %5, i32 0, i32 21
  %53 = ptrtoint ptr %per_bio_data_size.i5.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %per_bio_data_size.i5.i, align 8
  %call.i6.i = call ptr @dm_per_bio_data(ptr noundef %50, i32 noundef %54) #20
  %add.ptr.i7.i = getelementptr %struct.dm_crypt_io, ptr %call.i6.i, i32 1
  %cmp.not.i8.i = icmp eq ptr %add.ptr.i7.i, %add.ptr.i85
  br i1 %cmp.not.i8.i, label %if.end28.crypt_free_req.exit_crit_edge, label %if.end.sink.split.i

if.end28.crypt_free_req.exit_crit_edge:           ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #22
  br label %crypt_free_req.exit

if.end.sink.split.i:                              ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #22
  %req_pool.i9.i = getelementptr inbounds %struct.crypt_config, ptr %5, i32 0, i32 32
  call void @mempool_free(ptr noundef %add.ptr.i85, ptr noundef %req_pool.i9.i) #20
  br label %crypt_free_req.exit

crypt_free_req.exit:                              ; preds = %if.end.sink.split.i, %if.end28.crypt_free_req.exit_crit_edge
  %cc_pending = getelementptr inbounds %struct.convert_context, ptr %3, i32 0, i32 6
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %cc_pending, i32 noundef 4) #20
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #20, !srcloc !428
  call void @llvm.prefetch.p0(ptr %cc_pending, i32 1, i32 3, i32 1) #20
  %55 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %cc_pending, ptr %cc_pending, i32 1, ptr elementtype(i32) %cc_pending) #20, !srcloc !429
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %55, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #20, !srcloc !430
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.end32, label %crypt_free_req.exit.cleanup_crit_edge

crypt_free_req.exit.cleanup_crit_edge:            ; preds = %crypt_free_req.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end32:                                         ; preds = %crypt_free_req.exit
  %56 = ptrtoint ptr %base_bio to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %base_bio, align 4
  %bi_opf = getelementptr inbounds %struct.bio, ptr %57, i32 0, i32 2
  %58 = ptrtoint ptr %bi_opf to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %bi_opf, align 8
  %and.i = and i32 %59, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.then36, label %if.end37

if.then36:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #22
  call fastcc void @crypt_dec_pending(ptr noundef %add.ptr) #20
  br label %cleanup

if.end37:                                         ; preds = %if.end32
  %flags.i = getelementptr inbounds %struct.crypt_config, ptr %5, i32 0, i32 22
  %60 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile i32, ptr %flags.i, align 4
  %62 = and i32 %61, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool.not.i = icmp eq i32 %62, 0
  br i1 %tobool.not.i, label %if.end37.if.end41_crit_edge, label %if.end.i

if.end37.if.end41_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end41

if.end.i:                                         ; preds = %if.end37
  %bio_in.i = getelementptr inbounds %struct.convert_context, ptr %3, i32 0, i32 1
  %63 = ptrtoint ptr %bio_in.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %bio_in.i, align 8
  %bi_opf.i = getelementptr inbounds %struct.bio, ptr %64, i32 0, i32 2
  %65 = ptrtoint ptr %bi_opf.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %bi_opf.i, align 8
  %trunc.i = trunc i32 %66 to i8
  %67 = zext i8 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %67, ptr @__sancov_gen_cov_switch_values.178)
  switch i8 %trunc.i, label %if.end.i.if.end41_crit_edge [
    i8 1, label %if.end.i.if.then39_crit_edge
    i8 7, label %if.end.i.if.then39_crit_edge92
    i8 9, label %if.end.i.if.then39_crit_edge93
  ]

if.end.i.if.then39_crit_edge93:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then39

if.end.i.if.then39_crit_edge92:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then39

if.end.i.if.then39_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then39

if.end.i.if.end41_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end41

if.then39:                                        ; preds = %if.end.i.if.then39_crit_edge, %if.end.i.if.then39_crit_edge92, %if.end.i.if.then39_crit_edge93
  call void @complete(ptr noundef %3) #20
  br label %cleanup

if.end41:                                         ; preds = %if.end.i.if.end41_crit_edge, %if.end37.if.end41_crit_edge
  call fastcc void @kcryptd_crypt_write_io_submit(ptr noundef %add.ptr, i32 noundef 1)
  br label %cleanup

cleanup:                                          ; preds = %if.end41, %if.then39, %if.then36, %crypt_free_req.exit.cleanup_crit_edge, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bio_devname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_audit_log_bio(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @kcryptd_crypt_write_io_submit(ptr noundef %io, i32 noundef %async) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %bio_out = getelementptr inbounds %struct.dm_crypt_io, ptr %io, i32 0, i32 6, i32 2
  %0 = ptrtoint ptr %bio_out to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bio_out, align 4
  %2 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %io, align 128
  %error = getelementptr inbounds %struct.dm_crypt_io, ptr %io, i32 0, i32 8
  %4 = ptrtoint ptr %error to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %do.body, label %if.then, !prof !413

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  tail call fastcc void @crypt_free_buffer_pages(ptr noundef %3, ptr noundef %1)
  tail call void @bio_put(ptr noundef %1) #20
  tail call fastcc void @crypt_dec_pending(ptr noundef %io)
  br label %cleanup

do.body:                                          ; preds = %entry
  %bi_size = getelementptr inbounds %struct.dm_crypt_io, ptr %io, i32 0, i32 6, i32 4, i32 1
  %6 = ptrtoint ptr %bi_size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bi_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool5.not = icmp eq i32 %7, 0
  br i1 %tobool5.not, label %do.end19, label %do.body13, !prof !413

do.body13:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #22
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/dm-crypt.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1967, 0\0A.popsection", ""() #20, !srcloc !438
  unreachable

do.end19:                                         ; preds = %do.body
  %start = getelementptr inbounds %struct.crypt_config, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %start, align 8
  %sector20 = getelementptr inbounds %struct.dm_crypt_io, ptr %io, i32 0, i32 9
  %10 = ptrtoint ptr %sector20 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %sector20, align 8
  %add = add i64 %11, %9
  %bi_iter = getelementptr inbounds %struct.bio, ptr %1, i32 0, i32 8
  %12 = ptrtoint ptr %bi_iter to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %add, ptr %bi_iter, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %async)
  %tobool21.not = icmp eq i32 %async, 0
  br i1 %tobool21.not, label %land.lhs.true, label %do.end19.lor.lhs.false_crit_edge, !prof !413

do.end19.lor.lhs.false_crit_edge:                 ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #22
  br label %lor.lhs.false

land.lhs.true:                                    ; preds = %do.end19
  %flags30 = getelementptr inbounds %struct.crypt_config, ptr %3, i32 0, i32 22
  %13 = ptrtoint ptr %flags30 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %flags30, align 4
  %15 = and i32 %14, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool31.not = icmp eq i32 %15, 0
  br i1 %tobool31.not, label %land.lhs.true.lor.lhs.false_crit_edge, label %land.lhs.true.if.then35_crit_edge

land.lhs.true.if.then35_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then35

land.lhs.true.lor.lhs.false_crit_edge:            ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #22
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.lor.lhs.false_crit_edge, %do.end19.lor.lhs.false_crit_edge
  %flags32 = getelementptr inbounds %struct.crypt_config, ptr %3, i32 0, i32 22
  %16 = ptrtoint ptr %flags32 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %flags32, align 4
  %18 = and i32 %17, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool34.not = icmp eq i32 %18, 0
  br i1 %tobool34.not, label %do.body38, label %lor.lhs.false.if.then35_crit_edge

lor.lhs.false.if.then35_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then35

if.then35:                                        ; preds = %lor.lhs.false.if.then35_crit_edge, %land.lhs.true.if.then35_crit_edge
  tail call void @submit_bio_noacct(ptr noundef %1) #20
  br label %cleanup

do.body38:                                        ; preds = %lor.lhs.false
  %write_thread_lock = getelementptr inbounds %struct.crypt_config, ptr %3, i32 0, i32 5
  %call40 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %write_thread_lock) #20
  %write_tree = getelementptr inbounds %struct.crypt_config, ptr %3, i32 0, i32 7
  %19 = ptrtoint ptr %write_tree to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile ptr, ptr %write_tree, align 8
  %cmp49 = icmp eq ptr %20, null
  br i1 %cmp49, label %if.end53, label %do.body38.while.body.preheader_crit_edge

do.body38.while.body.preheader_crit_edge:         ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #22
  br label %while.body.preheader

if.end53:                                         ; preds = %do.body38
  %write_thread = getelementptr inbounds %struct.crypt_config, ptr %3, i32 0, i32 6
  %21 = ptrtoint ptr %write_thread to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %write_thread, align 4
  %call52 = tail call i32 @wake_up_process(ptr noundef %22) #20
  %23 = ptrtoint ptr %write_tree to i32
  call void @__asan_load4_noabort(i32 %23)
  %.pr = load ptr, ptr %write_tree, align 4
  %tobool57.not100 = icmp eq ptr %.pr, null
  br i1 %tobool57.not100, label %if.end53.while.end_crit_edge, label %if.end53.while.body.preheader_crit_edge

if.end53.while.body.preheader_crit_edge:          ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #22
  br label %while.body.preheader

if.end53.while.end_crit_edge:                     ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #22
  br label %while.end

while.body.preheader:                             ; preds = %if.end53.while.body.preheader_crit_edge, %do.body38.while.body.preheader_crit_edge
  %24 = phi ptr [ %.pr, %if.end53.while.body.preheader_crit_edge ], [ %20, %do.body38.while.body.preheader_crit_edge ]
  %25 = ptrtoint ptr %sector20 to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %sector20, align 8
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.preheader
  %27 = phi ptr [ %31, %while.body.while.body_crit_edge ], [ %24, %while.body.preheader ]
  %sector59 = getelementptr i8, ptr %27, i32 -8
  %28 = ptrtoint ptr %sector59 to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %sector59, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %26, i64 %29)
  %cmp60 = icmp ult i64 %26, %29
  %rb_left = getelementptr inbounds %struct.rb_node, ptr %27, i32 0, i32 2
  %rb_right = getelementptr inbounds %struct.rb_node, ptr %27, i32 0, i32 1
  %rbp.1 = select i1 %cmp60, ptr %rb_left, ptr %rb_right
  %30 = ptrtoint ptr %rbp.1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %rbp.1, align 4
  %tobool57.not = icmp eq ptr %31, null
  br i1 %tobool57.not, label %while.cond.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %while.body

while.cond.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #22
  %phi.cast.le = ptrtoint ptr %27 to i32
  br label %while.end

while.end:                                        ; preds = %while.cond.while.end_crit_edge, %if.end53.while.end_crit_edge
  %rbp.0.lcssa = phi ptr [ %rbp.1, %while.cond.while.end_crit_edge ], [ %write_tree, %if.end53.while.end_crit_edge ]
  %parent.0.lcssa = phi i32 [ %phi.cast.le, %while.cond.while.end_crit_edge ], [ 0, %if.end53.while.end_crit_edge ]
  %rb_node64 = getelementptr inbounds %struct.dm_crypt_io, ptr %io, i32 0, i32 10
  %32 = ptrtoint ptr %rb_node64 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %parent.0.lcssa, ptr %rb_node64, align 4
  %rb_right.i = getelementptr inbounds %struct.dm_crypt_io, ptr %io, i32 0, i32 10, i32 1
  %33 = ptrtoint ptr %rb_right.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %rb_right.i, align 4
  %rb_left.i = getelementptr inbounds %struct.dm_crypt_io, ptr %io, i32 0, i32 10, i32 2
  %34 = ptrtoint ptr %rb_left.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %rb_left.i, align 4
  %35 = ptrtoint ptr %rbp.0.lcssa to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %rb_node64, ptr %rbp.0.lcssa, align 4
  tail call void @rb_insert_color(ptr noundef %rb_node64, ptr noundef %write_tree) #20
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %write_thread_lock, i32 noundef %call40) #20
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then35, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_insert_color(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_table(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_aead_encrypt(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_aead_decrypt(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pfn_valid(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_skcipher_decrypt(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @kcryptd_crypt_write_continue(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -16
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 128
  %ctx2 = getelementptr i8, ptr %work, i32 72
  %sector3 = getelementptr i8, ptr %work, i32 200
  %2 = ptrtoint ptr %sector3 to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %sector3, align 8
  tail call void @wait_for_completion(ptr noundef %ctx2) #20
  %4 = ptrtoint ptr %ctx2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %ctx2, align 4
  %call = tail call fastcc zeroext i8 @crypt_convert(ptr noundef %1, ptr noundef %ctx2, i1 noundef zeroext true, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call)
  %tobool.not = icmp eq i8 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  %error = getelementptr i8, ptr %work, i32 196
  %5 = ptrtoint ptr %error to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %call, ptr %error, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %cc_pending = getelementptr i8, ptr %work, i32 184
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %cc_pending, i32 noundef 4) #20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #20, !srcloc !428
  tail call void @llvm.prefetch.p0(ptr %cc_pending, i32 1, i32 3, i32 1) #20
  %6 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %cc_pending, ptr %cc_pending, i32 1, ptr elementtype(i32) %cc_pending) #20, !srcloc !429
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %6, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #20, !srcloc !430
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.end.if.then14_crit_edge, label %land.lhs.true

if.end.if.then14_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then14

land.lhs.true:                                    ; preds = %if.end
  %flags.i = getelementptr inbounds %struct.crypt_config, ptr %1, i32 0, i32 22
  %7 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %flags.i, align 4
  %9 = and i32 %8, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i, label %land.lhs.true.if.end16_crit_edge, label %if.end.i

land.lhs.true.if.end16_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end16

if.end.i:                                         ; preds = %land.lhs.true
  %bio_in.i = getelementptr i8, ptr %work, i32 128
  %10 = ptrtoint ptr %bio_in.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bio_in.i, align 8
  %bi_opf.i = getelementptr inbounds %struct.bio, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %bi_opf.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bi_opf.i, align 8
  %trunc.i = trunc i32 %13 to i8
  %14 = zext i8 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.179)
  switch i8 %trunc.i, label %if.end.i.if.end16_crit_edge [
    i8 1, label %if.end.i.if.then10_crit_edge
    i8 7, label %if.end.i.if.then10_crit_edge33
    i8 9, label %if.end.i.if.then10_crit_edge34
  ]

if.end.i.if.then10_crit_edge34:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then10

if.end.i.if.then10_crit_edge33:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then10

if.end.i.if.then10_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then10

if.end.i.if.end16_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end16

if.then10:                                        ; preds = %if.end.i.if.then10_crit_edge, %if.end.i.if.then10_crit_edge33, %if.end.i.if.then10_crit_edge34
  tail call void @wait_for_completion(ptr noundef %ctx2) #20
  br label %if.then14

if.then14:                                        ; preds = %if.then10, %if.end.if.then14_crit_edge
  tail call fastcc void @kcryptd_crypt_write_io_submit(ptr noundef %add.ptr, i32 noundef 0)
  %15 = ptrtoint ptr %sector3 to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %3, ptr %sector3, align 8
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %if.end.i.if.end16_crit_edge, %land.lhs.true.if.end16_crit_edge
  tail call fastcc void @crypt_dec_pending(ptr noundef %add.ptr)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bio_alloc_bioset(i32 noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bio_add_page(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_report_zones(ptr noundef, i64 noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_register_target(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smax.i64(i64, i64) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #20

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

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

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #21 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 198)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #21 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 198)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #16 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #17 = { nounwind readonly }
attributes #18 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #19 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #20 = { nounwind }
attributes #21 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #22 = { nomerge }
attributes #23 = { cold nounwind }
attributes #24 = { nobuiltin nounwind }
attributes #25 = { nounwind allocsize(0) }
attributes #26 = { nounwind allocsize(2) }
attributes #27 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !32, !34, !36, !38, !40, !42, !43, !44, !45, !46, !47, !49, !51, !53, !55, !57, !59, !60, !62, !64, !66, !68, !70, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !140, !141, !142, !143, !145, !146, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !168, !169, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !213, !215, !217, !219, !221, !223, !225, !227, !229, !231, !233, !235, !237, !239, !241, !243, !244, !245, !246, !248, !250, !252, !254, !256, !257, !258, !260, !262, !264, !266, !268, !270, !271, !272, !273, !275, !277, !278, !279, !281, !283, !285, !287, !289, !291, !293, !294, !296, !298, !300, !302, !303, !304, !305, !306, !308, !310, !311, !312, !313, !315, !316, !317, !319, !321, !322, !323, !324, !326, !328, !330, !332, !334, !336, !338, !340, !342, !344, !346, !348, !350, !352, !354, !356, !358, !360, !362, !364, !366, !368, !370, !372, !374, !376, !378, !380, !382, !384, !385, !386, !387, !389, !391, !393, !394, !395, !397, !398, !399}
!llvm.named.register.sp = !{!400}
!llvm.module.flags = !{!401, !402, !403, !404, !405, !406, !407, !408}
!llvm.ident = !{!409}

!0 = !{ptr @__initcall__kmod_dm_crypt__420_3671_dm_crypt_init6, !1, !"__initcall__kmod_dm_crypt__420_3671_dm_crypt_init6", i1 false, i1 false}
!1 = !{!"../drivers/md/dm-crypt.c", i32 3671, i32 1}
!2 = !{ptr @__exitcall_dm_crypt_exit, !3, !"__exitcall_dm_crypt_exit", i1 false, i1 false}
!3 = !{!"../drivers/md/dm-crypt.c", i32 3672, i32 1}
!4 = !{ptr @__UNIQUE_ID_author421, !5, !"__UNIQUE_ID_author421", i1 false, i1 false}
!5 = !{!"../drivers/md/dm-crypt.c", i32 3674, i32 1}
!6 = !{ptr @__UNIQUE_ID_description422, !7, !"__UNIQUE_ID_description422", i1 false, i1 false}
!7 = !{!"../drivers/md/dm-crypt.c", i32 3675, i32 1}
!8 = !{ptr @__UNIQUE_ID_file423, !9, !"__UNIQUE_ID_file423", i1 false, i1 false}
!9 = !{!"../drivers/md/dm-crypt.c", i32 3676, i32 1}
!10 = !{ptr @__UNIQUE_ID_license424, !9, !"__UNIQUE_ID_license424", i1 false, i1 false}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/md/dm-crypt.c", i32 3638, i32 12}
!13 = !{ptr @crypt_target, !14, !"crypt_target", i1 false, i1 false}
!14 = !{!"../drivers/md/dm-crypt.c", i32 3637, i32 27}
!15 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/md/dm-crypt.c", i32 3184, i32 15}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/md/dm-crypt.c", i32 3190, i32 15}
!19 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/md/dm-crypt.c", i32 3196, i32 15}
!21 = !{ptr @crypt_ctr.__key, !22, !"__key", i1 false, i1 false}
!22 = !{!"../drivers/md/dm-crypt.c", i32 3210, i32 8}
!23 = !{ptr @.str.4, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/md/dm-crypt.c", i32 3258, i32 15}
!25 = !{ptr @.str.5, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/md/dm-crypt.c", i32 3268, i32 15}
!27 = !{ptr @.str.6, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/md/dm-crypt.c", i32 3274, i32 15}
!29 = !{ptr @crypt_ctr.__key.7, !30, !"__key", i1 false, i1 false}
!30 = !{!"../drivers/md/dm-crypt.c", i32 3278, i32 2}
!31 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.9, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/md/dm-crypt.c", i32 3281, i32 23}
!34 = !{ptr @.str.10, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/md/dm-crypt.c", i32 3283, i32 15}
!36 = !{ptr @.str.11, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/md/dm-crypt.c", i32 3290, i32 15}
!38 = !{ptr @.str.12, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/md/dm-crypt.c", i32 3296, i32 15}
!40 = !{ptr @.str.13, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/md/dm-crypt.c", i32 3321, i32 3}
!42 = !{ptr @.str.14, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @crypt_ctr.__UNIQUE_ID_ddebug413, !41, !"__UNIQUE_ID_ddebug413", i1 false, i1 false}
!46 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.18, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/md/dm-crypt.c", i32 3337, i32 16}
!49 = !{ptr @.str.19, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/md/dm-crypt.c", i32 3345, i32 33}
!51 = !{ptr @.str.20, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/md/dm-crypt.c", i32 3347, i32 15}
!53 = !{ptr @.str.21, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/md/dm-crypt.c", i32 3352, i32 37}
!55 = !{ptr @.str.22, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/md/dm-crypt.c", i32 3359, i32 15}
!57 = !{ptr @crypt_ctr.__key.23, !58, !"__key", i1 false, i1 false}
!58 = !{!"../drivers/md/dm-crypt.c", i32 3363, i32 2}
!59 = !{ptr @.str.24, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @.str.25, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/md/dm-crypt.c", i32 3366, i32 21}
!62 = !{ptr @.str.26, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/md/dm-crypt.c", i32 3370, i32 15}
!64 = !{ptr @.str.27, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/md/dm-crypt.c", i32 2570, i32 35}
!66 = !{ptr @.str.28, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/md/dm-crypt.c", i32 2574, i32 30}
!68 = !{ptr @.str.29, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/md/dm-crypt.c", i32 231, i32 8}
!70 = !{ptr @dm_crypt_clients_lock, !69, !"dm_crypt_clients_lock", i1 false, i1 false}
!71 = !{ptr @dm_crypt_clients_n, !72, !"dm_crypt_clients_n", i1 false, i1 false}
!72 = !{!"../drivers/md/dm-crypt.c", i32 232, i32 17}
!73 = !{ptr @dm_crypt_pages_per_client, !74, !"dm_crypt_pages_per_client", i1 false, i1 false}
!74 = !{!"../drivers/md/dm-crypt.c", i32 233, i32 31}
!75 = !{ptr @.str.30, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/md/dm-crypt.c", i32 3080, i32 10}
!77 = !{ptr @crypt_ctr_optional._args, !78, !"_args", i1 false, i1 false}
!78 = !{!"../drivers/md/dm-crypt.c", i32 3079, i32 29}
!79 = !{ptr @.str.31, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/md/dm-crypt.c", i32 3098, i32 16}
!81 = !{ptr @.str.32, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/md/dm-crypt.c", i32 3102, i32 31}
!83 = !{ptr @.str.33, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/md/dm-crypt.c", i32 3105, i32 36}
!85 = !{ptr @.str.34, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/md/dm-crypt.c", i32 3108, i32 36}
!87 = !{ptr @.str.35, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/md/dm-crypt.c", i32 3110, i32 36}
!89 = !{ptr @.str.36, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/md/dm-crypt.c", i32 3112, i32 36}
!91 = !{ptr @.str.37, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/md/dm-crypt.c", i32 3114, i32 31}
!93 = !{ptr @.str.38, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/md/dm-crypt.c", i32 3116, i32 17}
!95 = !{ptr @.str.39, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/md/dm-crypt.c", i32 3121, i32 26}
!97 = !{ptr @.str.40, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/md/dm-crypt.c", i32 3123, i32 33}
!99 = !{ptr @.str.41, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/md/dm-crypt.c", i32 3124, i32 17}
!101 = !{ptr @.str.42, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/md/dm-crypt.c", i32 3131, i32 33}
!103 = !{ptr @.str.43, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/md/dm-crypt.c", i32 3135, i32 17}
!105 = !{ptr @.str.44, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/md/dm-crypt.c", i32 3139, i32 17}
!107 = !{ptr @.str.45, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/md/dm-crypt.c", i32 3143, i32 38}
!109 = !{ptr @.str.46, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/md/dm-crypt.c", i32 3146, i32 16}
!111 = !{ptr @.str.47, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/md/dm-crypt.c", i32 3027, i32 15}
!113 = !{ptr @.str.48, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/md/dm-crypt.c", i32 3031, i32 27}
!115 = !{ptr @.str.49, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/md/dm-crypt.c", i32 3046, i32 15}
!117 = !{ptr @.str.50, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/md/dm-crypt.c", i32 3054, i32 16}
!119 = !{ptr @.str.51, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/md/dm-crypt.c", i32 3063, i32 16}
!121 = !{ptr @.str.52, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/md/dm-crypt.c", i32 2895, i32 16}
!123 = !{ptr @.str.53, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/md/dm-crypt.c", i32 2900, i32 34}
!125 = !{ptr @.str.54, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/md/dm-crypt.c", i32 2903, i32 34}
!127 = !{ptr @.str.55, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/md/dm-crypt.c", i32 2905, i32 16}
!129 = !{ptr @.str.56, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/md/dm-crypt.c", i32 2908, i32 44}
!131 = !{ptr @.str.57, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/md/dm-crypt.c", i32 2911, i32 16}
!133 = !{ptr @.str.58, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/md/dm-crypt.c", i32 2922, i32 15}
!135 = !{ptr @.str.59, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/md/dm-crypt.c", i32 2832, i32 29}
!137 = !{ptr @.str.60, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/md/dm-crypt.c", i32 2341, i32 2}
!139 = !{ptr @crypt_alloc_tfms_aead._rs, !138, !"_rs", i1 false, i1 false}
!140 = !{ptr @.str.61, !138, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @.str.62, !138, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @crypt_alloc_tfms_aead.descriptor, !138, !"descriptor", i1 false, i1 false}
!143 = !{ptr @crypt_alloc_tfms_skcipher._rs, !144, !"_rs", i1 false, i1 false}
!144 = !{!"../drivers/md/dm-crypt.c", i32 2320, i32 2}
!145 = !{ptr @.str.63, !144, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @crypt_alloc_tfms_skcipher.descriptor, !144, !"descriptor", i1 false, i1 false}
!147 = !{ptr @.str.64, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/md/dm-crypt.c", i32 2944, i32 15}
!149 = !{ptr @.str.65, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/md/dm-crypt.c", i32 2953, i32 26}
!151 = !{ptr @.str.66, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/md/dm-crypt.c", i32 2960, i32 15}
!153 = !{ptr @.str.67, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/md/dm-crypt.c", i32 2973, i32 40}
!155 = !{ptr @.str.68, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/md/dm-crypt.c", i32 2974, i32 15}
!157 = !{ptr @.str.69, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/md/dm-crypt.c", i32 2978, i32 24}
!159 = !{ptr @.str.70, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/md/dm-crypt.c", i32 2979, i32 15}
!161 = !{ptr @.str.71, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/md/dm-crypt.c", i32 2994, i32 11}
!163 = !{ptr @.str.72, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/md/dm-crypt.c", i32 2997, i32 11}
!165 = !{ptr @.str.73, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/md/dm-crypt.c", i32 2766, i32 3}
!167 = !{ptr @.str.74, !166, !"<string literal>", i1 false, i1 false}
!168 = !{ptr @crypt_ctr_ivmode._entry, !166, !"_entry", i1 false, i1 false}
!169 = !{ptr @crypt_ctr_ivmode._entry_ptr, !166, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @.str.75, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/md/dm-crypt.c", i32 2775, i32 26}
!172 = !{ptr @.str.76, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/md/dm-crypt.c", i32 2777, i32 26}
!174 = !{ptr @.str.77, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/md/dm-crypt.c", i32 2781, i32 26}
!176 = !{ptr @.str.78, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/md/dm-crypt.c", i32 2783, i32 26}
!178 = !{ptr @.str.79, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/md/dm-crypt.c", i32 2785, i32 26}
!180 = !{ptr @.str.80, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/md/dm-crypt.c", i32 2787, i32 26}
!182 = !{ptr @.str.81, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/md/dm-crypt.c", i32 2806, i32 28}
!184 = !{ptr @.str.82, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/md/dm-crypt.c", i32 2810, i32 28}
!186 = !{ptr @.str.83, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/md/dm-crypt.c", i32 2815, i32 15}
!188 = !{ptr @crypt_iv_plain_ops, !189, !"crypt_iv_plain_ops", i1 false, i1 false}
!189 = !{!"../drivers/md/dm-crypt.c", i32 1053, i32 41}
!190 = !{ptr @crypt_iv_plain64_ops, !191, !"crypt_iv_plain64_ops", i1 false, i1 false}
!191 = !{!"../drivers/md/dm-crypt.c", i32 1057, i32 41}
!192 = !{ptr @crypt_iv_plain64be_ops, !193, !"crypt_iv_plain64be_ops", i1 false, i1 false}
!193 = !{!"../drivers/md/dm-crypt.c", i32 1061, i32 41}
!194 = !{ptr @crypt_iv_essiv_ops, !195, !"crypt_iv_essiv_ops", i1 false, i1 false}
!195 = !{!"../drivers/md/dm-crypt.c", i32 1065, i32 41}
!196 = !{ptr @crypt_iv_benbi_ops, !197, !"crypt_iv_benbi_ops", i1 false, i1 false}
!197 = !{!"../drivers/md/dm-crypt.c", i32 1069, i32 41}
!198 = !{ptr @.str.84, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/md/dm-crypt.c", i32 370, i32 15}
!200 = !{ptr @.str.85, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/md/dm-crypt.c", i32 375, i32 15}
!202 = !{ptr @crypt_iv_null_ops, !203, !"crypt_iv_null_ops", i1 false, i1 false}
!203 = !{!"../drivers/md/dm-crypt.c", i32 1075, i32 41}
!204 = !{ptr @crypt_iv_eboiv_ops, !205, !"crypt_iv_eboiv_ops", i1 false, i1 false}
!205 = !{!"../drivers/md/dm-crypt.c", i32 1101, i32 41}
!206 = !{ptr @.str.86, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/md/dm-crypt.c", i32 729, i32 15}
!208 = !{ptr @.str.87, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/md/dm-crypt.c", i32 734, i32 15}
!210 = !{ptr @init_completion.__key, !211, !"__key", i1 false, i1 false}
!211 = !{!"../include/linux/completion.h", i32 87, i32 2}
!212 = !{ptr @.str.88, !211, !"<string literal>", i1 false, i1 false}
!213 = !{ptr @crypt_iv_elephant_ops, !214, !"crypt_iv_elephant_ops", i1 false, i1 false}
!214 = !{!"../drivers/md/dm-crypt.c", i32 1106, i32 41}
!215 = !{ptr @.str.89, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/md/dm-crypt.c", i32 782, i32 40}
!217 = !{ptr @crypt_iv_lmk_ops, !218, !"crypt_iv_lmk_ops", i1 false, i1 false}
!218 = !{!"../drivers/md/dm-crypt.c", i32 1079, i32 41}
!219 = !{ptr @.str.90, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/md/dm-crypt.c", i32 427, i32 15}
!221 = !{ptr @.str.91, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/md/dm-crypt.c", i32 431, i32 37}
!223 = !{ptr @.str.92, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/md/dm-crypt.c", i32 434, i32 15}
!225 = !{ptr @.str.93, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/md/dm-crypt.c", i32 447, i32 15}
!227 = !{ptr @crypt_iv_tcw_ops, !228, !"crypt_iv_tcw_ops", i1 false, i1 false}
!228 = !{!"../drivers/md/dm-crypt.c", i32 1088, i32 41}
!229 = !{ptr @.str.94, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/md/dm-crypt.c", i32 585, i32 15}
!231 = !{ptr @.str.95, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/md/dm-crypt.c", i32 590, i32 15}
!233 = !{ptr @.str.96, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/md/dm-crypt.c", i32 594, i32 38}
!235 = !{ptr @.str.97, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/md/dm-crypt.c", i32 597, i32 15}
!237 = !{ptr @.str.98, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/md/dm-crypt.c", i32 605, i32 15}
!239 = !{ptr @crypt_iv_random_ops, !240, !"crypt_iv_random_ops", i1 false, i1 false}
!240 = !{!"../drivers/md/dm-crypt.c", i32 1097, i32 41}
!241 = !{ptr @.str.99, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/md/dm-crypt.c", i32 2496, i32 3}
!243 = !{ptr @.str.100, !242, !"<string literal>", i1 false, i1 false}
!244 = !{ptr @crypt_set_keyring_key._entry, !242, !"_entry", i1 false, i1 false}
!245 = !{ptr @crypt_set_keyring_key._entry_ptr, !242, !"_entry_ptr", i1 false, i1 false}
!246 = !{ptr @.str.101, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/md/dm-crypt.c", i32 2505, i32 27}
!248 = !{ptr @.str.102, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/md/dm-crypt.c", i32 2508, i32 34}
!250 = !{ptr @.str.103, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/md/dm-crypt.c", i32 2512, i32 27}
!252 = !{ptr @.str.104, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/md/dm-crypt.c", i32 2516, i32 34}
!254 = distinct !{null, !255, !"__warned", i1 false, i1 false}
!255 = !{!"../include/keys/user-type.h", i32 53, i32 36}
!256 = !{ptr @.str.105, !255, !"<string literal>", i1 false, i1 false}
!257 = !{ptr @.str.106, !255, !"<string literal>", i1 false, i1 false}
!258 = distinct !{null, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../include/linux/gfp.h", i32 570, i32 2}
!260 = !{ptr @.str.108, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/md/dm-crypt.c", i32 1171, i32 43}
!262 = !{ptr @.str.109, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/md/dm-crypt.c", i32 1172, i32 15}
!264 = !{ptr @.str.110, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/md/dm-crypt.c", i32 1178, i32 15}
!266 = !{ptr @.str.111, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/md/dm-crypt.c", i32 1182, i32 15}
!268 = !{ptr @.str.112, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/md/dm-crypt.c", i32 1188, i32 3}
!270 = !{ptr @.str.113, !269, !"<string literal>", i1 false, i1 false}
!271 = !{ptr @crypt_integrity_ctr.__UNIQUE_ID_ddebug387, !269, !"__UNIQUE_ID_ddebug387", i1 false, i1 false}
!272 = !{ptr @.str.114, !269, !"<string literal>", i1 false, i1 false}
!273 = !{ptr @.str.115, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/md/dm-crypt.c", i32 1192, i32 16}
!275 = !{ptr @.str.116, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../drivers/md/dm-crypt.c", i32 1196, i32 3}
!277 = !{ptr @crypt_integrity_ctr.__UNIQUE_ID_ddebug388, !276, !"__UNIQUE_ID_ddebug388", i1 false, i1 false}
!278 = !{ptr @.str.117, !276, !"<string literal>", i1 false, i1 false}
!279 = !{ptr @.str.118, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../drivers/md/dm-crypt.c", i32 1200, i32 15}
!281 = distinct !{null, !282, !"__already_done", i1 false, i1 false}
!282 = !{!"../drivers/md/dm-crypt.c", i32 1914, i32 3}
!283 = distinct !{null, !284, !"__already_done", i1 false, i1 false}
!284 = !{!"../drivers/md/dm-crypt.c", i32 1919, i32 4}
!285 = distinct !{null, !286, !"__already_done", i1 false, i1 false}
!286 = !{!"../drivers/md/dm-crypt.c", i32 1925, i32 3}
!287 = !{ptr @.str.121, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../drivers/md/dm-audit.h", i32 30, i32 48}
!289 = !{ptr @.str.122, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../drivers/md/dm-audit.h", i32 36, i32 48}
!291 = !{ptr @crypt_dec_pending.__key, !292, !"__key", i1 false, i1 false}
!292 = !{!"../drivers/md/dm-crypt.c", i32 1784, i32 2}
!293 = !{ptr @.str.123, !292, !"<string literal>", i1 false, i1 false}
!294 = !{ptr @kcryptd_queue_read.__key, !295, !"__key", i1 false, i1 false}
!295 = !{!"../drivers/md/dm-crypt.c", i32 1886, i32 2}
!296 = !{ptr @kcryptd_queue_crypt.__key, !297, !"__key", i1 false, i1 false}
!297 = !{!"../drivers/md/dm-crypt.c", i32 2251, i32 2}
!298 = !{ptr @kcryptd_crypt_read_convert.__key, !299, !"__key", i1 false, i1 false}
!299 = !{!"../drivers/md/dm-crypt.c", i32 2147, i32 3}
!300 = !{ptr @kcryptd_async_done._rs, !301, !"_rs", i1 false, i1 false}
!301 = !{!"../drivers/md/dm-crypt.c", i32 2185, i32 3}
!302 = !{ptr @__func__.kcryptd_async_done, !301, !"<string literal>", i1 false, i1 false}
!303 = !{ptr @.str.124, !301, !"<string literal>", i1 false, i1 false}
!304 = !{ptr @kcryptd_async_done._entry, !301, !"_entry", i1 false, i1 false}
!305 = !{ptr @kcryptd_async_done._entry_ptr, !301, !"_entry_ptr", i1 false, i1 false}
!306 = !{ptr @.str.125, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../drivers/md/dm-crypt.c", i32 2187, i32 35}
!308 = !{ptr @crypt_convert_block_aead._rs, !309, !"_rs", i1 false, i1 false}
!309 = !{!"../drivers/md/dm-crypt.c", i32 1370, i32 3}
!310 = !{ptr @__func__.crypt_convert_block_aead, !309, !"<string literal>", i1 false, i1 false}
!311 = !{ptr @crypt_convert_block_aead._entry, !309, !"_entry", i1 false, i1 false}
!312 = !{ptr @crypt_convert_block_aead._entry_ptr, !309, !"_entry_ptr", i1 false, i1 false}
!313 = distinct !{null, !314, !"__already_done", i1 false, i1 false}
!314 = !{!"../include/linux/bvec.h", i32 106, i32 6}
!315 = !{ptr @.str.126, !314, !"<string literal>", i1 false, i1 false}
!316 = !{ptr @.str.127, !314, !"<string literal>", i1 false, i1 false}
!317 = !{ptr @kcryptd_crypt_write_convert.__key, !318, !"__key", i1 false, i1 false}
!318 = !{!"../drivers/md/dm-crypt.c", i32 2083, i32 3}
!319 = !{ptr @.str.128, !320, !"<string literal>", i1 false, i1 false}
!320 = !{!"../drivers/md/dm-crypt.c", i32 3551, i32 3}
!321 = !{ptr @.str.129, !320, !"<string literal>", i1 false, i1 false}
!322 = !{ptr @crypt_preresume._entry, !320, !"_entry", i1 false, i1 false}
!323 = !{ptr @crypt_preresume._entry_ptr, !320, !"_entry_ptr", i1 false, i1 false}
!324 = !{ptr @.str.130, !325, !"<string literal>", i1 false, i1 false}
!325 = !{!"../drivers/md/dm-crypt.c", i32 3465, i32 3}
!326 = !{ptr @.str.131, !327, !"<string literal>", i1 false, i1 false}
!327 = !{!"../drivers/md/dm-crypt.c", i32 3469, i32 5}
!328 = !{ptr @.str.132, !329, !"<string literal>", i1 false, i1 false}
!329 = !{!"../drivers/md/dm-crypt.c", i32 3472, i32 6}
!330 = !{ptr @.str.133, !331, !"<string literal>", i1 false, i1 false}
!331 = !{!"../drivers/md/dm-crypt.c", i32 3476, i32 3}
!332 = !{ptr @.str.134, !333, !"<string literal>", i1 false, i1 false}
!333 = !{!"../drivers/md/dm-crypt.c", i32 3489, i32 4}
!334 = !{ptr @.str.135, !335, !"<string literal>", i1 false, i1 false}
!335 = !{!"../drivers/md/dm-crypt.c", i32 3491, i32 5}
!336 = !{ptr @.str.136, !337, !"<string literal>", i1 false, i1 false}
!337 = !{!"../drivers/md/dm-crypt.c", i32 3493, i32 5}
!338 = !{ptr @.str.137, !339, !"<string literal>", i1 false, i1 false}
!339 = !{!"../drivers/md/dm-crypt.c", i32 3495, i32 5}
!340 = !{ptr @.str.138, !341, !"<string literal>", i1 false, i1 false}
!341 = !{!"../drivers/md/dm-crypt.c", i32 3497, i32 5}
!342 = !{ptr @.str.139, !343, !"<string literal>", i1 false, i1 false}
!343 = !{!"../drivers/md/dm-crypt.c", i32 3499, i32 5}
!344 = !{ptr @.str.140, !345, !"<string literal>", i1 false, i1 false}
!345 = !{!"../drivers/md/dm-crypt.c", i32 3501, i32 5}
!346 = !{ptr @.str.141, !347, !"<string literal>", i1 false, i1 false}
!347 = !{!"../drivers/md/dm-crypt.c", i32 3503, i32 5}
!348 = !{ptr @.str.142, !349, !"<string literal>", i1 false, i1 false}
!349 = !{!"../drivers/md/dm-crypt.c", i32 3505, i32 5}
!350 = !{ptr @.str.143, !351, !"<string literal>", i1 false, i1 false}
!351 = !{!"../drivers/md/dm-crypt.c", i32 3510, i32 3}
!352 = !{ptr @.str.144, !353, !"<string literal>", i1 false, i1 false}
!353 = !{!"../drivers/md/dm-crypt.c", i32 3511, i32 3}
!354 = !{ptr @.str.145, !355, !"<string literal>", i1 false, i1 false}
!355 = !{!"../drivers/md/dm-crypt.c", i32 3512, i32 3}
!356 = !{ptr @.str.146, !357, !"<string literal>", i1 false, i1 false}
!357 = !{!"../drivers/md/dm-crypt.c", i32 3513, i32 3}
!358 = !{ptr @.str.147, !359, !"<string literal>", i1 false, i1 false}
!359 = !{!"../drivers/md/dm-crypt.c", i32 3515, i32 3}
!360 = !{ptr @.str.148, !361, !"<string literal>", i1 false, i1 false}
!361 = !{!"../drivers/md/dm-crypt.c", i32 3517, i32 3}
!362 = !{ptr @.str.149, !363, !"<string literal>", i1 false, i1 false}
!363 = !{!"../drivers/md/dm-crypt.c", i32 3519, i32 3}
!364 = !{ptr @.str.150, !365, !"<string literal>", i1 false, i1 false}
!365 = !{!"../drivers/md/dm-crypt.c", i32 3523, i32 4}
!366 = !{ptr @.str.151, !367, !"<string literal>", i1 false, i1 false}
!367 = !{!"../drivers/md/dm-crypt.c", i32 3526, i32 4}
!368 = !{ptr @.str.152, !369, !"<string literal>", i1 false, i1 false}
!369 = !{!"../drivers/md/dm-crypt.c", i32 3528, i32 4}
!370 = !{ptr @.str.153, !371, !"<string literal>", i1 false, i1 false}
!371 = !{!"../drivers/md/dm-crypt.c", i32 3530, i32 3}
!372 = !{ptr @.str.154, !373, !"<string literal>", i1 false, i1 false}
!373 = !{!"../drivers/md/dm-crypt.c", i32 3531, i32 3}
!374 = !{ptr @.str.155, !375, !"<string literal>", i1 false, i1 false}
!375 = !{!"../drivers/md/dm-crypt.c", i32 3532, i32 3}
!376 = !{ptr @.str.156, !377, !"<string literal>", i1 false, i1 false}
!377 = !{!"../drivers/md/dm-crypt.c", i32 3533, i32 3}
!378 = !{ptr @.str.157, !379, !"<string literal>", i1 false, i1 false}
!379 = !{!"../drivers/md/dm-crypt.c", i32 3534, i32 3}
!380 = !{ptr @.str.158, !381, !"<string literal>", i1 false, i1 false}
!381 = !{!"../drivers/md/dm-crypt.c", i32 3578, i32 27}
!382 = !{ptr @.str.159, !383, !"<string literal>", i1 false, i1 false}
!383 = !{!"../drivers/md/dm-crypt.c", i32 3580, i32 4}
!384 = !{ptr @.str.160, !383, !"<string literal>", i1 false, i1 false}
!385 = !{ptr @crypt_message._entry, !383, !"_entry", i1 false, i1 false}
!386 = !{ptr @crypt_message._entry_ptr, !383, !"_entry_ptr", i1 false, i1 false}
!387 = !{ptr @.str.161, !388, !"<string literal>", i1 false, i1 false}
!388 = !{!"../drivers/md/dm-crypt.c", i32 3583, i32 41}
!389 = !{ptr @.str.162, !390, !"<string literal>", i1 false, i1 false}
!390 = !{!"../drivers/md/dm-crypt.c", i32 3601, i32 41}
!391 = !{ptr @.str.164, !392, !"<string literal>", i1 false, i1 false}
!392 = !{!"../drivers/md/dm-crypt.c", i32 3606, i32 2}
!393 = !{ptr @crypt_message._entry.163, !392, !"_entry", i1 false, i1 false}
!394 = !{ptr @crypt_message._entry_ptr.165, !392, !"_entry_ptr", i1 false, i1 false}
!395 = !{ptr @.str.166, !396, !"<string literal>", i1 false, i1 false}
!396 = !{!"../drivers/md/dm-crypt.c", i32 3661, i32 3}
!397 = !{ptr @.str.167, !396, !"<string literal>", i1 false, i1 false}
!398 = !{ptr @dm_crypt_init._entry, !396, !"_entry", i1 false, i1 false}
!399 = !{ptr @dm_crypt_init._entry_ptr, !396, !"_entry_ptr", i1 false, i1 false}
!400 = !{!"sp"}
!401 = !{i32 1, !"wchar_size", i32 2}
!402 = !{i32 1, !"min_enum_size", i32 4}
!403 = !{i32 8, !"branch-target-enforcement", i32 0}
!404 = !{i32 8, !"sign-return-address", i32 0}
!405 = !{i32 8, !"sign-return-address-all", i32 0}
!406 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!407 = !{i32 7, !"uwtable", i32 1}
!408 = !{i32 7, !"frame-pointer", i32 2}
!409 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!410 = !{!"auto-init"}
!411 = !{i32 0, i32 33}
!412 = !{i64 2148410705, i64 2148410710, i64 2148410723, i64 2148410767, i64 2148410801, i64 2148410822}
!413 = !{!"branch_weights", i32 2000, i32 1}
!414 = !{!"branch_weights", i32 1, i32 2000}
!415 = !{i64 2157544784}
!416 = !{i64 2157554287}
!417 = !{i64 2157554849, i64 2157555336, i64 2157554886, i64 2157554942, i64 2157554976, i64 2157555000, i64 2157555041, i64 2157555062, i64 2157555090, i64 2157555124}
!418 = !{i64 2157549560}
!419 = !{ptr @set_key_encrypted, ptr @set_key_trusted, ptr @set_key_user}
!420 = !{i64 2154409429, i64 2154409921, i64 2154409466, i64 2154409522, i64 2154409556, i64 2154409580, i64 2154409621, i64 2154409642, i64 2154409670, i64 2154409704}
!421 = !{i64 2153899828}
!422 = !{i64 2152588471}
!423 = !{i64 2152588678}
!424 = !{i64 2153902599}
!425 = !{i64 2149166388}
!426 = !{i64 2148586107, i64 2148586133, i64 2148586162, i64 2148586196, i64 2148586227, i64 2148586250}
!427 = !{i64 993519}
!428 = !{i64 2148674583}
!429 = !{i64 2148589292, i64 2148589324, i64 2148589353, i64 2148589387, i64 2148589418, i64 2148589441}
!430 = !{i64 2148674812}
!431 = !{i8 0, i8 2}
!432 = !{i64 2157531508, i64 2157531995, i64 2157531545, i64 2157531601, i64 2157531635, i64 2157531659, i64 2157531700, i64 2157531721, i64 2157531749, i64 2157531783}
!433 = !{i64 2157457912, i64 2157458399, i64 2157457949, i64 2157458005, i64 2157458039, i64 2157458063, i64 2157458104, i64 2157458125, i64 2157458153, i64 2157458187}
!434 = !{i64 2154412190, i64 2154412682, i64 2154412227, i64 2154412283, i64 2154412317, i64 2154412341, i64 2154412382, i64 2154412403, i64 2154412431, i64 2154412465}
!435 = !{i64 2154405871, i64 2154406363, i64 2154405908, i64 2154405964, i64 2154405998, i64 2154406022, i64 2154406063, i64 2154406084, i64 2154406112, i64 2154406146}
!436 = !{i64 2154407481, i64 2154407973, i64 2154407518, i64 2154407574, i64 2154407608, i64 2154407632, i64 2154407673, i64 2154407694, i64 2154407722, i64 2154407756}
!437 = !{i64 2148588572, i64 2148588598, i64 2148588627, i64 2148588661, i64 2148588692, i64 2148588715}
!438 = !{i64 2157561276, i64 2157561763, i64 2157561313, i64 2157561369, i64 2157561403, i64 2157561427, i64 2157561468, i64 2157561489, i64 2157561517, i64 2157561551}
