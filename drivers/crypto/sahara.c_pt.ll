; ModuleID = '/llk/IR_all_yes/drivers/crypto/sahara.c_pt.bc'
source_filename = "../drivers/crypto/sahara.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.skcipher_alg = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [88 x i8], %struct.crypto_alg }
%struct.crypto_alg = type { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, %struct.refcount_struct, [128 x i8], [128 x i8], ptr, %union.anon.71, ptr, ptr, ptr, ptr, %union.anon.72, [120 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%union.anon.71 = type { %struct.cipher_alg }
%struct.cipher_alg = type { i32, i32, ptr, ptr, ptr }
%union.anon.72 = type { %struct.crypto_istat_akcipher }
%struct.crypto_istat_akcipher = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%struct.ahash_alg = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [88 x i8], %struct.hash_alg_common }
%struct.hash_alg_common = type { i32, i32, [120 x i8], %struct.crypto_alg }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.sahara_dev = type { ptr, i32, ptr, ptr, ptr, %struct.mutex, ptr, %struct.completion, ptr, %struct.crypto_queue, i32, [2 x ptr], [2 x i32], ptr, i32, ptr, i32, ptr, i32, [20 x ptr], [20 x i32], i32, ptr, i32, ptr, i32, i32 }
%struct.crypto_queue = type { %struct.list_head, ptr, i32, i32 }
%struct.sahara_hw_desc = type { i32, i32, i32, i32, i32, i32 }
%struct.sahara_hw_link = type { i32, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.53, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.29 }
%struct.llist_node = type { ptr }
%union.anon.29 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.31 }
%union.anon.31 = type { %struct.anon.32 }
%struct.anon.32 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.rb_root = type { ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.tlbflush_unmap_batch = type {}
%union.anon.53 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.crypto_async_request = type { %struct.list_head, ptr, ptr, ptr, i32 }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [112 x i8], [0 x ptr] }
%struct.ahash_request = type { %struct.crypto_async_request, i32, ptr, ptr, ptr, [88 x i8], [0 x ptr] }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.page = type { i32, %union.anon.2, %union.anon.63, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.63 = type { %struct.atomic_t }
%struct.skcipher_request = type { i32, ptr, ptr, ptr, %struct.crypto_async_request, [88 x i8], [0 x ptr] }
%struct.sahara_sha_reqctx = type { [64 x i8], [64 x i8], [36 x i8], i32, i32, i32, i32, i32, ptr, [2 x %struct.scatterlist], i32, i32, i32, i32 }
%struct.crypto_skcipher = type { i32, [124 x i8], %struct.crypto_tfm }

@__initcall__kmod_sahara__281_1539_sahara_driver_init6 = internal global ptr @sahara_driver_init, section ".initcall6.init", align 4
@sahara_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @sahara_probe, ptr @sahara_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @sahara_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_sahara_driver_exit = internal global ptr @sahara_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file282 = internal constant [34 x i8] c"sahara.file=drivers/crypto/sahara\00", section ".modinfo", align 1
@__UNIQUE_ID_license283 = internal constant [19 x i8] c"sahara.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author284 = internal constant [62 x i8] c"sahara.author=Javier Martin <javier.martin@vista-silicon.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author285 = internal constant [59 x i8] c"sahara.author=Steffen Trumtrar <s.trumtrar@pengutronix.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description286 = internal constant [49 x i8] c"sahara.description=SAHARA2 HW crypto accelerator\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sahara\00", [25 x i8] zeroinitializer }, align 32
@sahara_dt_ids = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx53-sahara\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx27-sahara\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@sahara_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1388, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed to request irq\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sahara_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drivers/crypto/sahara.c\00", [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sahara_probe._entry_ptr = internal global ptr @sahara_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ipg\00", [28 x i8] zeroinitializer }, align 32
@sahara_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 1395, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Could not get ipg clock\0A\00", [39 x i8] zeroinitializer }, align 32
@sahara_probe._entry_ptr.9 = internal global ptr @sahara_probe._entry.7, section ".printk_index", align 4
@.str.10 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ahb\00", [28 x i8] zeroinitializer }, align 32
@sahara_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str.3, i32 1401, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Could not get ahb clock\0A\00", [39 x i8] zeroinitializer }, align 32
@sahara_probe._entry_ptr.13 = internal global ptr @sahara_probe._entry.11, section ".printk_index", align 4
@sahara_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.2, ptr @.str.3, i32 1410, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Could not allocate hw descriptors\0A\00", [61 x i8] zeroinitializer }, align 32
@sahara_probe._entry_ptr.16 = internal global ptr @sahara_probe._entry.14, section ".printk_index", align 4
@sahara_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.2, ptr @.str.3, i32 1421, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Could not allocate memory for key\0A\00", [61 x i8] zeroinitializer }, align 32
@sahara_probe._entry_ptr.19 = internal global ptr @sahara_probe._entry.17, section ".printk_index", align 4
@sahara_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.2, ptr @.str.3, i32 1432, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Could not allocate memory for MDHA context\0A\00", [52 x i8] zeroinitializer }, align 32
@sahara_probe._entry_ptr.22 = internal global ptr @sahara_probe._entry.20, section ".printk_index", align 4
@sahara_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.2, ptr @.str.3, i32 1441, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Could not allocate hw links\0A\00", [35 x i8] zeroinitializer }, align 32
@sahara_probe._entry_ptr.25 = internal global ptr @sahara_probe._entry.23, section ".printk_index", align 4
@sahara_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.26 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&dev->queue_mutex\00", [46 x i8] zeroinitializer }, align 32
@dev_ptr = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.27 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sahara_crypto\00", [18 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fsl,imx27-sahara\00", [47 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fsl,imx53-sahara\00", [47 x i8] zeroinitializer }, align 32
@sahara_probe._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.2, ptr @.str.3, i32 1482, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"SAHARA version %d not supported\0A\00", [63 x i8] zeroinitializer }, align 32
@sahara_probe._entry_ptr.32 = internal global ptr @sahara_probe._entry.30, section ".printk_index", align 4
@sahara_probe._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.2, ptr @.str.3, i32 1500, ptr @.str.35, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"SAHARA version %d initialized\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@sahara_probe._entry_ptr.36 = internal global ptr @sahara_probe._entry.33, section ".printk_index", align 4
@sahara_decode_error._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.3, i32 327, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: Error Register = 0x%08x\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sahara_decode_error\00", [44 x i8] zeroinitializer }, align 32
@sahara_decode_error._entry_ptr = internal global ptr @sahara_decode_error._entry, section ".printk_index", align 4
@sahara_decode_error._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.38, ptr @.str.3, i32 329, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\09- %s.\0A\00", [24 x i8] zeroinitializer }, align 32
@sahara_decode_error._entry_ptr.41 = internal global ptr @sahara_decode_error._entry.39, section ".printk_index", align 4
@sahara_err_src = internal constant { [16 x ptr], [32 x i8] } { [16 x ptr] [ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75], [32 x i8] zeroinitializer }, align 32
@sahara_decode_error._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.38, ptr @.str.3, i32 333, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"\09\09* DMA read.\0A\00", [17 x i8] zeroinitializer }, align 32
@sahara_decode_error._entry_ptr.44 = internal global ptr @sahara_decode_error._entry.42, section ".printk_index", align 4
@sahara_decode_error._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.38, ptr @.str.3, i32 335, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\09\09* DMA write.\0A\00", [16 x i8] zeroinitializer }, align 32
@sahara_decode_error._entry_ptr.47 = internal global ptr @sahara_decode_error._entry.45, section ".printk_index", align 4
@sahara_decode_error._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.38, ptr @.str.3, i32 338, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"\09\09* %s.\0A\00", [23 x i8] zeroinitializer }, align 32
@sahara_decode_error._entry_ptr.50 = internal global ptr @sahara_decode_error._entry.48, section ".printk_index", align 4
@sahara_err_dmasize = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.71], [16 x i8] zeroinitializer }, align 32
@sahara_decode_error._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.38, ptr @.str.3, i32 340, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@sahara_decode_error._entry_ptr.52 = internal global ptr @sahara_decode_error._entry.51, section ".printk_index", align 4
@sahara_err_dmasrc = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.60, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.71, ptr @.str.84], [32 x i8] zeroinitializer }, align 32
@sahara_decode_error._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.38, ptr @.str.3, i32 343, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@sahara_decode_error._entry_ptr.54 = internal global ptr @sahara_decode_error._entry.53, section ".printk_index", align 4
@sahara_cha_errsrc = internal constant { [12 x ptr], [48 x i8] } { [12 x ptr] [ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.71], [48 x i8] zeroinitializer }, align 32
@sahara_decode_error._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.38, ptr @.str.3, i32 345, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@sahara_decode_error._entry_ptr.56 = internal global ptr @sahara_decode_error._entry.55, section ".printk_index", align 4
@sahara_cha_err = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.60, ptr @.str.96, ptr @.str.97, ptr @.str.98], [16 x i8] zeroinitializer }, align 32
@sahara_decode_error._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.38, ptr @.str.3, i32 347, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@sahara_decode_error._entry_ptr.59 = internal global ptr @sahara_decode_error._entry.57, section ".printk_index", align 4
@.str.60 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"No error\00", [23 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Header error\00", [19 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Descriptor length error\00", [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Descriptor length or pointer error\00", [61 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Link length error\00", [46 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Link pointer error\00", [45 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Input buffer error\00", [45 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Output buffer error\00", [44 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Output buffer starvation\00", [39 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Internal state fault\00", [43 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"General descriptor problem\00", [37 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Reserved\00", [23 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Descriptor address error\00", [39 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Link address error\00", [45 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"CHA error\00", [22 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"DMA error\00", [22 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Byte transfer\00", [18 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Half-word transfer\00", [45 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Word transfer\00", [18 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"AHB bus error\00", [18 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Internal IP bus error\00", [42 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Parity error\00", [19 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"DMA crosses 256 byte boundary\00", [34 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DMA is busy\00", [20 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"DMA HW error\00", [19 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Input buffer non-empty\00", [41 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Illegal address\00", [16 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Illegal mode\00", [19 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Illegal data size\00", [46 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Illegal key size\00", [47 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Write during processing\00", [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"CTX read during processing\00", [37 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"HW error\00", [23 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Input buffer disabled/underflow\00", [32 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Output buffer disabled/overflow\00", [32 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"DES key parity error\00", [43 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"SKHA\00", [27 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"MDHA\00", [27 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"RNG\00", [28 x i8] zeroinitializer }, align 32
@sahara_sha_process._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.100, ptr @.str.3, i32 1020, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"SHA timeout\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sahara_sha_process\00", [45 x i8] zeroinitializer }, align 32
@sahara_sha_process._entry_ptr = internal global ptr @sahara_sha_process._entry, section ".printk_index", align 4
@high_memory = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@sahara_sha_hw_links_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.102, ptr @.str.3, i32 794, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Invalid numbers of src SG.\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"sahara_sha_hw_links_create\00", [37 x i8] zeroinitializer }, align 32
@sahara_sha_hw_links_create._entry_ptr = internal global ptr @sahara_sha_hw_links_create._entry, section ".printk_index", align 4
@sahara_sha_hw_links_create._entry.103 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.102, ptr @.str.3, i32 799, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"not enough hw links (%d)\0A\00", [38 x i8] zeroinitializer }, align 32
@sahara_sha_hw_links_create._entry_ptr.105 = internal global ptr @sahara_sha_hw_links_create._entry.103, section ".printk_index", align 4
@sahara_aes_process.__UNIQUE_ID_ddebug278 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.106, ptr @.str.3, ptr @.str.107, i8 0, i8 -116, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.106 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sahara_aes_process\00", [45 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"dispatch request (nbytes=%d, src=%p, dst=%p)\0A\00", [50 x i8] zeroinitializer }, align 32
@sahara_aes_process._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @.str.106, ptr @.str.3, i32 590, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"AES timeout\0A\00", [19 x i8] zeroinitializer }, align 32
@sahara_aes_process._entry_ptr = internal global ptr @sahara_aes_process._entry, section ".printk_index", align 4
@sahara_hw_descriptor_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.109, ptr @.str.3, i32 474, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"sahara_hw_descriptor_create\00", [36 x i8] zeroinitializer }, align 32
@sahara_hw_descriptor_create._entry_ptr = internal global ptr @sahara_hw_descriptor_create._entry, section ".printk_index", align 4
@sahara_hw_descriptor_create._entry.110 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.111, ptr @.str.109, ptr @.str.3, i32 479, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Invalid numbers of dst SG.\0A\00", [36 x i8] zeroinitializer }, align 32
@sahara_hw_descriptor_create._entry_ptr.112 = internal global ptr @sahara_hw_descriptor_create._entry.110, section ".printk_index", align 4
@sahara_hw_descriptor_create._entry.113 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.109, ptr @.str.3, i32 484, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@sahara_hw_descriptor_create._entry_ptr.114 = internal global ptr @sahara_hw_descriptor_create._entry.113, section ".printk_index", align 4
@sahara_hw_descriptor_create._entry.115 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.116, ptr @.str.109, ptr @.str.3, i32 491, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"couldn't map in sg\0A\00", [44 x i8] zeroinitializer }, align 32
@sahara_hw_descriptor_create._entry_ptr.117 = internal global ptr @sahara_hw_descriptor_create._entry.115, section ".printk_index", align 4
@sahara_hw_descriptor_create._entry.118 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.119, ptr @.str.109, ptr @.str.3, i32 497, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"couldn't map out sg\0A\00", [43 x i8] zeroinitializer }, align 32
@sahara_hw_descriptor_create._entry_ptr.120 = internal global ptr @sahara_hw_descriptor_create._entry.118, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.121 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@aes_algs = internal global [2 x %struct.skcipher_alg] [%struct.skcipher_alg { ptr @sahara_aes_setkey, ptr @sahara_aes_ecb_encrypt, ptr @sahara_aes_ecb_decrypt, ptr @sahara_aes_init_tfm, ptr @sahara_aes_exit_tfm, i32 16, i32 32, i32 0, i32 0, i32 0, [88 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 384, i32 16, i32 28, i32 0, i32 300, %struct.refcount_struct zeroinitializer, [128 x i8] c"ecb(aes)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"sahara-ecb-aes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.71 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.72 zeroinitializer, [120 x i8] undef } }, %struct.skcipher_alg { ptr @sahara_aes_setkey, ptr @sahara_aes_cbc_encrypt, ptr @sahara_aes_cbc_decrypt, ptr @sahara_aes_init_tfm, ptr @sahara_aes_exit_tfm, i32 16, i32 32, i32 16, i32 0, i32 0, [88 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 384, i32 16, i32 28, i32 0, i32 300, %struct.refcount_struct zeroinitializer, [128 x i8] c"cbc(aes)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"sahara-cbc-aes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.71 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.72 zeroinitializer, [120 x i8] undef } }], align 128
@sha_v3_algs = internal global [1 x %struct.ahash_alg] [%struct.ahash_alg { ptr @sahara_sha_init, ptr @sahara_sha_update, ptr @sahara_sha_final, ptr @sahara_sha_finup, ptr @sahara_sha_digest, ptr @sahara_sha_export, ptr @sahara_sha_import, ptr null, ptr null, ptr null, [88 x i8] undef, %struct.hash_alg_common { i32 20, i32 244, [120 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 384, i32 64, i32 28, i32 0, i32 300, %struct.refcount_struct zeroinitializer, [128 x i8] c"sha1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"sahara-sha1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.71 zeroinitializer, ptr @sahara_sha_cra_init, ptr null, ptr null, ptr null, %union.anon.72 zeroinitializer, [120 x i8] undef } } }], align 128
@sha_v4_algs = internal global [1 x %struct.ahash_alg] [%struct.ahash_alg { ptr @sahara_sha_init, ptr @sahara_sha_update, ptr @sahara_sha_final, ptr @sahara_sha_finup, ptr @sahara_sha_digest, ptr @sahara_sha_export, ptr @sahara_sha_import, ptr null, ptr null, ptr null, [88 x i8] undef, %struct.hash_alg_common { i32 32, i32 244, [120 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 384, i32 64, i32 28, i32 0, i32 300, %struct.refcount_struct zeroinitializer, [128 x i8] c"sha256\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"sahara-sha256\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.71 zeroinitializer, ptr @sahara_sha_cra_init, ptr null, ptr null, ptr null, %union.anon.72 zeroinitializer, [120 x i8] undef } } }], align 128
@sahara_aes_crypt.__UNIQUE_ID_ddebug279 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.122, ptr @.str.3, ptr @.str.123, i8 0, i8 -98, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.122 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sahara_aes_crypt\00", [47 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"nbytes: %d, enc: %d, cbc: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@sahara_aes_crypt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.124, ptr @.str.122, ptr @.str.3, i32 639, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"request size is not exact amount of AES blocks\0A\00", [48 x i8] zeroinitializer }, align 32
@sahara_aes_crypt._entry_ptr = internal global ptr @sahara_aes_crypt._entry, section ".printk_index", align 4
@sahara_aes_init_tfm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.125, ptr @.str.126, ptr @.str.3, i32 742, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013Error allocating fallback algo %s\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sahara_aes_init_tfm\00", [44 x i8] zeroinitializer }, align 32
@sahara_aes_init_tfm._entry_ptr = internal global ptr @sahara_aes_init_tfm._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4]
@__sancov_gen_cov_switch_values.127 = internal global [4 x i64] [i64 2, i64 32, i64 14, i64 15]
@__sancov_gen_cov_switch_values.128 = internal global [5 x i64] [i64 3, i64 32, i64 16, i64 24, i64 32]
@__sancov_gen_cov_switch_values.129 = internal global [4 x i64] [i64 2, i64 32, i64 20, i64 32]
@__sancov_gen_cov_switch_values.130 = internal global [4 x i64] [i64 2, i64 32, i64 20, i64 32]
@___asan_gen_.131 = private unnamed_addr constant [14 x i8] c"sahara_driver\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 1530, i32 31 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 1534, i32 11 }
@___asan_gen_.137 = private unnamed_addr constant [14 x i8] c"sahara_dt_ids\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 1353, i32 34 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 1388, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 1393, i32 42 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 1395, i32 3 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 1399, i32 42 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 1401, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 1410, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 1421, i32 3 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 1432, i32 3 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 1441, i32 3 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 1452, i32 2 }
@___asan_gen_.206 = private unnamed_addr constant [8 x i8] c"dev_ptr\00", align 1
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 231, i32 27 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 1456, i32 17 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 1471, i32 49 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 1475, i32 4 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 1481, i32 3 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 1500, i32 2 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 327, i32 2 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 329, i32 2 }
@___asan_gen_.248 = private unnamed_addr constant [15 x i8] c"sahara_err_src\00", align 1
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 268, i32 20 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 333, i32 4 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 335, i32 4 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 337, i32 3 }
@___asan_gen_.269 = private unnamed_addr constant [19 x i8] c"sahara_err_dmasize\00", align 1
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 287, i32 20 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 339, i32 3 }
@___asan_gen_.275 = private unnamed_addr constant [18 x i8] c"sahara_err_dmasrc\00", align 1
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 294, i32 20 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 342, i32 3 }
@___asan_gen_.281 = private unnamed_addr constant [18 x i8] c"sahara_cha_errsrc\00", align 1
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 305, i32 20 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 344, i32 3 }
@___asan_gen_.287 = private unnamed_addr constant [15 x i8] c"sahara_cha_err\00", align 1
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 320, i32 20 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 347, i32 2 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 269, i32 2 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 270, i32 2 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 271, i32 2 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 272, i32 2 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 273, i32 2 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 274, i32 2 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 275, i32 2 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 276, i32 2 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 277, i32 2 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 278, i32 2 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 279, i32 2 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 280, i32 2 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 281, i32 2 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 282, i32 2 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 283, i32 2 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 284, i32 2 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 288, i32 2 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 289, i32 2 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 290, i32 2 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 296, i32 2 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 297, i32 2 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 298, i32 2 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 299, i32 2 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 300, i32 2 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 302, i32 2 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 306, i32 2 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 307, i32 2 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 308, i32 2 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 309, i32 2 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 310, i32 2 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 311, i32 2 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 312, i32 2 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 313, i32 2 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 314, i32 2 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 315, i32 2 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 316, i32 2 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 320, i32 54 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 320, i32 62 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 320, i32 70 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 1020, i32 3 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 794, i32 3 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 798, i32 3 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 561, i32 2 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 590, i32 3 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 474, i32 3 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 479, i32 3 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 483, i32 3 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 491, i32 3 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 497, i32 3 }
@___asan_gen_.476 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.480 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 87, i32 2 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 634, i32 2 }
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 638, i32 3 }
@___asan_gen_.494 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.500 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.501 = private constant [27 x i8] c"../drivers/crypto/sahara.c\00", align 1
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 742, i32 3 }
@llvm.compiler.used = appending global [161 x ptr] [ptr @__UNIQUE_ID_author284, ptr @__UNIQUE_ID_author285, ptr @__UNIQUE_ID_description286, ptr @__UNIQUE_ID_file282, ptr @__UNIQUE_ID_license283, ptr @__exitcall_sahara_driver_exit, ptr @__initcall__kmod_sahara__281_1539_sahara_driver_init6, ptr @sahara_aes_crypt._entry, ptr @sahara_aes_crypt._entry_ptr, ptr @sahara_aes_init_tfm._entry, ptr @sahara_aes_init_tfm._entry_ptr, ptr @sahara_aes_process._entry, ptr @sahara_aes_process._entry_ptr, ptr @sahara_decode_error._entry, ptr @sahara_decode_error._entry.39, ptr @sahara_decode_error._entry.42, ptr @sahara_decode_error._entry.45, ptr @sahara_decode_error._entry.48, ptr @sahara_decode_error._entry.51, ptr @sahara_decode_error._entry.53, ptr @sahara_decode_error._entry.55, ptr @sahara_decode_error._entry.57, ptr @sahara_decode_error._entry_ptr, ptr @sahara_decode_error._entry_ptr.41, ptr @sahara_decode_error._entry_ptr.44, ptr @sahara_decode_error._entry_ptr.47, ptr @sahara_decode_error._entry_ptr.50, ptr @sahara_decode_error._entry_ptr.52, ptr @sahara_decode_error._entry_ptr.54, ptr @sahara_decode_error._entry_ptr.56, ptr @sahara_decode_error._entry_ptr.59, ptr @sahara_driver_exit, ptr @sahara_hw_descriptor_create._entry, ptr @sahara_hw_descriptor_create._entry.110, ptr @sahara_hw_descriptor_create._entry.113, ptr @sahara_hw_descriptor_create._entry.115, ptr @sahara_hw_descriptor_create._entry.118, ptr @sahara_hw_descriptor_create._entry_ptr, ptr @sahara_hw_descriptor_create._entry_ptr.112, ptr @sahara_hw_descriptor_create._entry_ptr.114, ptr @sahara_hw_descriptor_create._entry_ptr.117, ptr @sahara_hw_descriptor_create._entry_ptr.120, ptr @sahara_probe._entry, ptr @sahara_probe._entry.11, ptr @sahara_probe._entry.14, ptr @sahara_probe._entry.17, ptr @sahara_probe._entry.20, ptr @sahara_probe._entry.23, ptr @sahara_probe._entry.30, ptr @sahara_probe._entry.33, ptr @sahara_probe._entry.7, ptr @sahara_probe._entry_ptr, ptr @sahara_probe._entry_ptr.13, ptr @sahara_probe._entry_ptr.16, ptr @sahara_probe._entry_ptr.19, ptr @sahara_probe._entry_ptr.22, ptr @sahara_probe._entry_ptr.25, ptr @sahara_probe._entry_ptr.32, ptr @sahara_probe._entry_ptr.36, ptr @sahara_probe._entry_ptr.9, ptr @sahara_sha_hw_links_create._entry, ptr @sahara_sha_hw_links_create._entry.103, ptr @sahara_sha_hw_links_create._entry_ptr, ptr @sahara_sha_hw_links_create._entry_ptr.105, ptr @sahara_sha_process._entry, ptr @sahara_sha_process._entry_ptr, ptr @sahara_driver, ptr @.str, ptr @sahara_dt_ids, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @.str.21, ptr @.str.24, ptr @sahara_probe.__key, ptr @.str.26, ptr @dev_ptr, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.31, ptr @.str.34, ptr @.str.35, ptr @.str.37, ptr @.str.38, ptr @.str.40, ptr @sahara_err_src, ptr @.str.43, ptr @.str.46, ptr @.str.49, ptr @sahara_err_dmasize, ptr @sahara_err_dmasrc, ptr @sahara_cha_errsrc, ptr @sahara_cha_err, ptr @.str.58, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.104, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.111, ptr @.str.116, ptr @.str.119, ptr @init_completion.__key, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126], section "llvm.metadata"
@0 = internal global [124 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sahara_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sahara_dt_ids to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sahara_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sahara_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sahara_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sahara_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sahara_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sahara_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sahara_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sahara_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_ptr to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sahara_probe._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sahara_probe._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sahara_decode_error._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sahara_decode_error._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sahara_err_src to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sahara_decode_error._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sahara_decode_error._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sahara_decode_error._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sahara_err_dmasize to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sahara_decode_error._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sahara_err_dmasrc to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sahara_decode_error._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sahara_cha_errsrc to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sahara_decode_error._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sahara_cha_err to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sahara_decode_error._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sahara_sha_process._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sahara_sha_hw_links_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sahara_sha_hw_links_create._entry.103 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sahara_aes_process._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sahara_hw_descriptor_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sahara_hw_descriptor_create._entry.110 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sahara_hw_descriptor_create._entry.113 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sahara_hw_descriptor_create._entry.115 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sahara_hw_descriptor_create._entry.118 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sahara_aes_crypt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sahara_aes_init_tfm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sahara_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @sahara_driver, ptr noundef null) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sahara_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @platform_driver_unregister(ptr noundef nonnull @sahara_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sahara_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 424, i32 noundef 3520) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev1, ptr %call.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call3 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #9
  %regs_base = getelementptr inbounds %struct.sahara_dev, ptr %call.i, i32 0, i32 2
  %2 = ptrtoint ptr %regs_base to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call3, ptr %regs_base, align 4
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.end9

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %call3 to i32
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %call10 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp = icmp slt i32 %call10, 0
  br i1 %cmp, label %if.end9.cleanup_crit_edge, label %if.end12

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end12:                                         ; preds = %if.end9
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %4 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end12.dev_name.exit_crit_edge

if.end12.dev_name.exit_crit_edge:                 ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end12.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %7, %if.end.i ], [ %5, %if.end12.dev_name.exit_crit_edge ]
  %call.i282 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call10, ptr noundef nonnull @sahara_irq_handler, ptr noundef null, i32 noundef 0, ptr noundef %retval.0.i, ptr noundef nonnull %call.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i282)
  %tobool17.not = icmp eq i32 %call.i282, 0
  br i1 %tobool17.not, label %if.end20, label %do.end

do.end:                                           ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #12
  br label %cleanup

if.end20:                                         ; preds = %dev_name.exit
  %call22 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.6) #9
  %clk_ipg = getelementptr inbounds %struct.sahara_dev, ptr %call.i, i32 0, i32 3
  %8 = ptrtoint ptr %clk_ipg to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call22, ptr %clk_ipg, align 4
  %cmp.i283 = icmp ugt ptr %call22, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i283, label %do.end28, label %if.end32

do.end28:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.8) #12
  %9 = ptrtoint ptr %clk_ipg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %clk_ipg, align 4
  %11 = ptrtoint ptr %10 to i32
  br label %cleanup

if.end32:                                         ; preds = %if.end20
  %call34 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.10) #9
  %clk_ahb = getelementptr inbounds %struct.sahara_dev, ptr %call.i, i32 0, i32 4
  %12 = ptrtoint ptr %clk_ahb to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call34, ptr %clk_ahb, align 4
  %cmp.i284 = icmp ugt ptr %call34, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i284, label %do.end40, label %if.end44

do.end40:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.12) #12
  %13 = ptrtoint ptr %clk_ahb to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %clk_ahb, align 4
  %15 = ptrtoint ptr %14 to i32
  br label %cleanup

if.end44:                                         ; preds = %if.end32
  %hw_phys_desc = getelementptr inbounds %struct.sahara_dev, ptr %call.i, i32 0, i32 12
  %call.i285 = tail call ptr @dmam_alloc_attrs(ptr noundef %dev1, i32 noundef 48, ptr noundef %hw_phys_desc, i32 noundef 3264, i32 noundef 0) #9
  %hw_desc = getelementptr inbounds %struct.sahara_dev, ptr %call.i, i32 0, i32 11
  %16 = ptrtoint ptr %hw_desc to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call.i285, ptr %hw_desc, align 4
  %tobool50.not = icmp eq ptr %call.i285, null
  br i1 %tobool50.not, label %do.end54, label %if.end56

do.end54:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.15) #12
  br label %cleanup

if.end56:                                         ; preds = %if.end44
  %add.ptr = getelementptr %struct.sahara_hw_desc, ptr %call.i285, i32 1
  %arrayidx60 = getelementptr %struct.sahara_dev, ptr %call.i, i32 0, i32 11, i32 1
  %17 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %add.ptr, ptr %arrayidx60, align 4
  %18 = ptrtoint ptr %hw_phys_desc to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %hw_phys_desc, align 4
  %add = add i32 %19, 24
  %arrayidx64 = getelementptr %struct.sahara_dev, ptr %call.i, i32 0, i32 12, i32 1
  %20 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %add, ptr %arrayidx64, align 4
  %key_phys_base = getelementptr inbounds %struct.sahara_dev, ptr %call.i, i32 0, i32 14
  %call.i286 = tail call ptr @dmam_alloc_attrs(ptr noundef %dev1, i32 noundef 32, ptr noundef %key_phys_base, i32 noundef 3264, i32 noundef 0) #9
  %key_base = getelementptr inbounds %struct.sahara_dev, ptr %call.i, i32 0, i32 13
  %21 = ptrtoint ptr %key_base to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call.i286, ptr %key_base, align 4
  %tobool68.not = icmp eq ptr %call.i286, null
  br i1 %tobool68.not, label %do.end72, label %if.end74

do.end72:                                         ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.18) #12
  br label %cleanup

if.end74:                                         ; preds = %if.end56
  %add.ptr76 = getelementptr i8, ptr %call.i286, i32 16
  %iv_base = getelementptr inbounds %struct.sahara_dev, ptr %call.i, i32 0, i32 15
  %22 = ptrtoint ptr %iv_base to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %add.ptr76, ptr %iv_base, align 4
  %23 = ptrtoint ptr %key_phys_base to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %key_phys_base, align 4
  %add78 = add i32 %24, 16
  %iv_phys_base = getelementptr inbounds %struct.sahara_dev, ptr %call.i, i32 0, i32 16
  %25 = ptrtoint ptr %iv_phys_base to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %add78, ptr %iv_phys_base, align 4
  %context_phys_base = getelementptr inbounds %struct.sahara_dev, ptr %call.i, i32 0, i32 18
  %call.i287 = tail call ptr @dmam_alloc_attrs(ptr noundef %dev1, i32 noundef 36, ptr noundef %context_phys_base, i32 noundef 3264, i32 noundef 0) #9
  %context_base = getelementptr inbounds %struct.sahara_dev, ptr %call.i, i32 0, i32 17
  %26 = ptrtoint ptr %context_base to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call.i287, ptr %context_base, align 4
  %tobool82.not = icmp eq ptr %call.i287, null
  br i1 %tobool82.not, label %do.end86, label %if.end88

do.end86:                                         ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.21) #12
  br label %cleanup

if.end88:                                         ; preds = %if.end74
  %hw_phys_link = getelementptr inbounds %struct.sahara_dev, ptr %call.i, i32 0, i32 20
  %call.i288 = tail call ptr @dmam_alloc_attrs(ptr noundef %dev1, i32 noundef 240, ptr noundef %hw_phys_link, i32 noundef 3264, i32 noundef 0) #9
  %hw_link = getelementptr inbounds %struct.sahara_dev, ptr %call.i, i32 0, i32 19
  %27 = ptrtoint ptr %hw_link to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call.i288, ptr %hw_link, align 4
  %tobool95.not = icmp eq ptr %call.i288, null
  br i1 %tobool95.not, label %do.end99, label %for.body

do.end99:                                         ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.24) #12
  br label %cleanup

for.body:                                         ; preds = %if.end88
  %uglygep317 = getelementptr i8, ptr %call.i, i32 240
  %28 = ptrtoint ptr %uglygep317 to i32
  call void @__asan_load4_noabort(i32 %28)
  %load_initial318 = load ptr, ptr %uglygep317, align 4
  %uglygep = getelementptr i8, ptr %call.i, i32 320
  %29 = ptrtoint ptr %uglygep to i32
  call void @__asan_load4_noabort(i32 %29)
  %load_initial = load i32, ptr %uglygep, align 4
  %add105 = add i32 %load_initial, 12
  %arrayidx107 = getelementptr %struct.sahara_dev, ptr %call.i, i32 0, i32 20, i32 1
  %30 = ptrtoint ptr %arrayidx107 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %add105, ptr %arrayidx107, align 4
  %add.ptr111 = getelementptr %struct.sahara_hw_link, ptr %load_initial318, i32 1
  %arrayidx113 = getelementptr %struct.sahara_dev, ptr %call.i, i32 0, i32 19, i32 1
  %31 = ptrtoint ptr %arrayidx113 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %add.ptr111, ptr %arrayidx113, align 4
  %add105.1 = add i32 %load_initial, 24
  %arrayidx107.1 = getelementptr %struct.sahara_dev, ptr %call.i, i32 0, i32 20, i32 2
  %32 = ptrtoint ptr %arrayidx107.1 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %add105.1, ptr %arrayidx107.1, align 4
  %add.ptr111.1 = getelementptr %struct.sahara_hw_link, ptr %load_initial318, i32 2
  %arrayidx113.1 = getelementptr %struct.sahara_dev, ptr %call.i, i32 0, i32 19, i32 2
  %33 = ptrtoint ptr %arrayidx113.1 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %add.ptr111.1, ptr %arrayidx113.1, align 4
  %add105.2 = add i32 %load_initial, 36
  %arrayidx107.2 = getelementptr %struct.sahara_dev, ptr %call.i, i32 0, i32 20, i32 3
  %34 = ptrtoint ptr %arrayidx107.2 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %add105.2, ptr %arrayidx107.2, align 4
  %add.ptr111.2 = getelementptr %struct.sahara_hw_link, ptr %load_initial318, i32 3
  %arrayidx113.2 = getelementptr %struct.sahara_dev, ptr %call.i, i32 0, i32 19, i32 3
  %35 = ptrtoint ptr %arrayidx113.2 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %add.ptr111.2, ptr %arrayidx113.2, align 4
  %add105.3 = add i32 %load_initial, 48
  %arrayidx107.3 = getelementptr %struct.sahara_dev, ptr %call.i, i32 0, i32 20, i32 4
  %36 = ptrtoint ptr %arrayidx107.3 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %add105.3, ptr %arrayidx107.3, align 4
  %add.ptr111.3 = getelementptr %struct.sahara_hw_link, ptr %load_initial318, i32 4
  %arrayidx113.3 = getelementptr %struct.sahara_dev, ptr %call.i, i32 0, i32 19, i32 4
  %37 = ptrtoint ptr %arrayidx113.3 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %add.ptr111.3, ptr %arrayidx113.3, align 4
  %add105.4 = add i32 %load_initial, 60
  %arrayidx107.4 = getelementptr %struct.sahara_dev, ptr %call.i, i32 0, i32 20, i32 5
  %38 = ptrtoint ptr %arrayidx107.4 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %add105.4, ptr %arrayidx107.4, align 4
  %add.ptr111.4 = getelementptr %struct.sahara_hw_link, ptr %load_initial318, i32 5
  %arrayidx113.4 = getelementptr %struct.sahara_dev, ptr %call.i, i32 0, i32 19, i32 5
  %39 = ptrtoint ptr %arrayidx113.4 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %add.ptr111.4, ptr %arrayidx113.4, align 4
  %add105.5 = add i32 %load_initial, 72
  %arrayidx107.5 = getelementptr %struct.sahara_dev, ptr %call.i, i32 0, i32 20, i32 6
  %40 = ptrtoint ptr %arrayidx107.5 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %add105.5, ptr %arrayidx107.5, align 4
  %add.ptr111.5 = getelementptr %struct.sahara_hw_link, ptr %load_initial318, i32 6
  %arrayidx113.5 = getelementptr %struct.sahara_dev, ptr %call.i, i32 0, i32 19, i32 6
  %41 = ptrtoint ptr %arrayidx113.5 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %add.ptr111.5, ptr %arrayidx113.5, align 4
  %add105.6 = add i32 %load_initial, 84
  %arrayidx107.6 = getelementptr %struct.sahara_dev, ptr %call.i, i32 0, i32 20, i32 7
  %42 = ptrtoint ptr %arrayidx107.6 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %add105.6, ptr %arrayidx107.6, align 4
  %add.ptr111.6 = getelementptr %struct.sahara_hw_link, ptr %load_initial318, i32 7
  %arrayidx113.6 = getelementptr %struct.sahara_dev, ptr %call.i, i32 0, i32 19, i32 7
  %43 = ptrtoint ptr %arrayidx113.6 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %add.ptr111.6, ptr %arrayidx113.6, align 4
  %add105.7 = add i32 %load_initial, 96
  %arrayidx107.7 = getelementptr %struct.sahara_dev, ptr %call.i, i32 0, i32 20, i32 8
  %44 = ptrtoint ptr %arrayidx107.7 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %add105.7, ptr %arrayidx107.7, align 4
  %add.ptr111.7 = getelementptr %struct.sahara_hw_link, ptr %load_initial318, i32 8
  %arrayidx113.7 = getelementptr %struct.sahara_dev, ptr %call.i, i32 0, i32 19, i32 8
  %45 = ptrtoint ptr %arrayidx113.7 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %add.ptr111.7, ptr %arrayidx113.7, align 4
  %add105.8 = add i32 %load_initial, 108
  %arrayidx107.8 = getelementptr %struct.sahara_dev, ptr %call.i, i32 0, i32 20, i32 9
  %46 = ptrtoint ptr %arrayidx107.8 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %add105.8, ptr %arrayidx107.8, align 4
  %add.ptr111.8 = getelementptr %struct.sahara_hw_link, ptr %load_initial318, i32 9
  %arrayidx113.8 = getelementptr %struct.sahara_dev, ptr %call.i, i32 0, i32 19, i32 9
  %47 = ptrtoint ptr %arrayidx113.8 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %add.ptr111.8, ptr %arrayidx113.8, align 4
  %add105.9 = add i32 %load_initial, 120
  %arrayidx107.9 = getelementptr %struct.sahara_dev, ptr %call.i, i32 0, i32 20, i32 10
  %48 = ptrtoint ptr %arrayidx107.9 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %add105.9, ptr %arrayidx107.9, align 4
  %add.ptr111.9 = getelementptr %struct.sahara_hw_link, ptr %load_initial318, i32 10
  %arrayidx113.9 = getelementptr %struct.sahara_dev, ptr %call.i, i32 0, i32 19, i32 10
  %49 = ptrtoint ptr %arrayidx113.9 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %add.ptr111.9, ptr %arrayidx113.9, align 4
  %add105.10 = add i32 %load_initial, 132
  %arrayidx107.10 = getelementptr %struct.sahara_dev, ptr %call.i, i32 0, i32 20, i32 11
  %50 = ptrtoint ptr %arrayidx107.10 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %add105.10, ptr %arrayidx107.10, align 4
  %add.ptr111.10 = getelementptr %struct.sahara_hw_link, ptr %load_initial318, i32 11
  %arrayidx113.10 = getelementptr %struct.sahara_dev, ptr %call.i, i32 0, i32 19, i32 11
  %51 = ptrtoint ptr %arrayidx113.10 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %add.ptr111.10, ptr %arrayidx113.10, align 4
  %add105.11 = add i32 %load_initial, 144
  %arrayidx107.11 = getelementptr %struct.sahara_dev, ptr %call.i, i32 0, i32 20, i32 12
  %52 = ptrtoint ptr %arrayidx107.11 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %add105.11, ptr %arrayidx107.11, align 4
  %add.ptr111.11 = getelementptr %struct.sahara_hw_link, ptr %load_initial318, i32 12
  %arrayidx113.11 = getelementptr %struct.sahara_dev, ptr %call.i, i32 0, i32 19, i32 12
  %53 = ptrtoint ptr %arrayidx113.11 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %add.ptr111.11, ptr %arrayidx113.11, align 4
  %add105.12 = add i32 %load_initial, 156
  %arrayidx107.12 = getelementptr %struct.sahara_dev, ptr %call.i, i32 0, i32 20, i32 13
  %54 = ptrtoint ptr %arrayidx107.12 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %add105.12, ptr %arrayidx107.12, align 4
  %add.ptr111.12 = getelementptr %struct.sahara_hw_link, ptr %load_initial318, i32 13
  %arrayidx113.12 = getelementptr %struct.sahara_dev, ptr %call.i, i32 0, i32 19, i32 13
  %55 = ptrtoint ptr %arrayidx113.12 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %add.ptr111.12, ptr %arrayidx113.12, align 4
  %add105.13 = add i32 %load_initial, 168
  %arrayidx107.13 = getelementptr %struct.sahara_dev, ptr %call.i, i32 0, i32 20, i32 14
  %56 = ptrtoint ptr %arrayidx107.13 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %add105.13, ptr %arrayidx107.13, align 4
  %add.ptr111.13 = getelementptr %struct.sahara_hw_link, ptr %load_initial318, i32 14
  %arrayidx113.13 = getelementptr %struct.sahara_dev, ptr %call.i, i32 0, i32 19, i32 14
  %57 = ptrtoint ptr %arrayidx113.13 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %add.ptr111.13, ptr %arrayidx113.13, align 4
  %add105.14 = add i32 %load_initial, 180
  %arrayidx107.14 = getelementptr %struct.sahara_dev, ptr %call.i, i32 0, i32 20, i32 15
  %58 = ptrtoint ptr %arrayidx107.14 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %add105.14, ptr %arrayidx107.14, align 4
  %add.ptr111.14 = getelementptr %struct.sahara_hw_link, ptr %load_initial318, i32 15
  %arrayidx113.14 = getelementptr %struct.sahara_dev, ptr %call.i, i32 0, i32 19, i32 15
  %59 = ptrtoint ptr %arrayidx113.14 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %add.ptr111.14, ptr %arrayidx113.14, align 4
  %add105.15 = add i32 %load_initial, 192
  %arrayidx107.15 = getelementptr %struct.sahara_dev, ptr %call.i, i32 0, i32 20, i32 16
  %60 = ptrtoint ptr %arrayidx107.15 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %add105.15, ptr %arrayidx107.15, align 4
  %add.ptr111.15 = getelementptr %struct.sahara_hw_link, ptr %load_initial318, i32 16
  %arrayidx113.15 = getelementptr %struct.sahara_dev, ptr %call.i, i32 0, i32 19, i32 16
  %61 = ptrtoint ptr %arrayidx113.15 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %add.ptr111.15, ptr %arrayidx113.15, align 4
  %add105.16 = add i32 %load_initial, 204
  %arrayidx107.16 = getelementptr %struct.sahara_dev, ptr %call.i, i32 0, i32 20, i32 17
  %62 = ptrtoint ptr %arrayidx107.16 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %add105.16, ptr %arrayidx107.16, align 4
  %add.ptr111.16 = getelementptr %struct.sahara_hw_link, ptr %load_initial318, i32 17
  %arrayidx113.16 = getelementptr %struct.sahara_dev, ptr %call.i, i32 0, i32 19, i32 17
  %63 = ptrtoint ptr %arrayidx113.16 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %add.ptr111.16, ptr %arrayidx113.16, align 4
  %add105.17 = add i32 %load_initial, 216
  %arrayidx107.17 = getelementptr %struct.sahara_dev, ptr %call.i, i32 0, i32 20, i32 18
  %64 = ptrtoint ptr %arrayidx107.17 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %add105.17, ptr %arrayidx107.17, align 4
  %add.ptr111.17 = getelementptr %struct.sahara_hw_link, ptr %load_initial318, i32 18
  %arrayidx113.17 = getelementptr %struct.sahara_dev, ptr %call.i, i32 0, i32 19, i32 18
  %65 = ptrtoint ptr %arrayidx113.17 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %add.ptr111.17, ptr %arrayidx113.17, align 4
  %add105.18 = add i32 %load_initial, 228
  %arrayidx107.18 = getelementptr %struct.sahara_dev, ptr %call.i, i32 0, i32 20, i32 19
  %66 = ptrtoint ptr %arrayidx107.18 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %add105.18, ptr %arrayidx107.18, align 4
  %add.ptr111.18 = getelementptr %struct.sahara_hw_link, ptr %load_initial318, i32 19
  %arrayidx113.18 = getelementptr %struct.sahara_dev, ptr %call.i, i32 0, i32 19, i32 19
  %67 = ptrtoint ptr %arrayidx113.18 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %add.ptr111.18, ptr %arrayidx113.18, align 4
  %queue = getelementptr inbounds %struct.sahara_dev, ptr %call.i, i32 0, i32 9
  tail call void @crypto_init_queue(ptr noundef %queue, i32 noundef 1) #9
  %queue_mutex = getelementptr inbounds %struct.sahara_dev, ptr %call.i, i32 0, i32 5
  tail call void @__mutex_init(ptr noundef %queue_mutex, ptr noundef nonnull @.str.26, ptr noundef nonnull @sahara_probe.__key) #9
  store ptr %call.i, ptr @dev_ptr, align 4
  %call117 = tail call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @sahara_queue_manage, ptr noundef nonnull %call.i, i32 noundef -1, ptr noundef nonnull @.str.27) #9
  %cmp.i289 = icmp ugt ptr %call117, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i289, label %if.then124, label %if.end127

if.then124:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %kthread306 = getelementptr inbounds %struct.sahara_dev, ptr %call.i, i32 0, i32 6
  %68 = ptrtoint ptr %kthread306 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %call117, ptr %kthread306, align 4
  %69 = ptrtoint ptr %call117 to i32
  br label %cleanup

if.end127:                                        ; preds = %for.body
  %call120 = tail call i32 @wake_up_process(ptr noundef %call117) #9
  %kthread = getelementptr inbounds %struct.sahara_dev, ptr %call.i, i32 0, i32 6
  %70 = ptrtoint ptr %kthread to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %call117, ptr %kthread, align 4
  %dma_completion = getelementptr inbounds %struct.sahara_dev, ptr %call.i, i32 0, i32 7
  %71 = ptrtoint ptr %dma_completion to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 0, ptr %dma_completion, align 4
  %wait.i = getelementptr inbounds %struct.sahara_dev, ptr %call.i, i32 0, i32 7, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.121, ptr noundef nonnull @init_completion.__key) #9
  %72 = ptrtoint ptr %clk_ipg to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %clk_ipg, align 4
  %call.i291 = tail call i32 @clk_prepare(ptr noundef %73) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i291)
  %tobool.not.i292 = icmp eq i32 %call.i291, 0
  br i1 %tobool.not.i292, label %if.end.i293, label %if.end127.cleanup_crit_edge

if.end127.cleanup_crit_edge:                      ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i293:                                      ; preds = %if.end127
  %call1.i = tail call i32 @clk_enable(ptr noundef %73) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end132, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i293
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @clk_unprepare(ptr noundef %73) #9
  br label %cleanup

if.end132:                                        ; preds = %if.end.i293
  %74 = ptrtoint ptr %clk_ahb to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %clk_ahb, align 4
  %call.i295 = tail call i32 @clk_prepare(ptr noundef %75) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i295)
  %tobool.not.i296 = icmp eq i32 %call.i295, 0
  br i1 %tobool.not.i296, label %if.end.i299, label %if.end132.clk_ipg_disable_crit_edge

if.end132.clk_ipg_disable_crit_edge:              ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #11
  br label %clk_ipg_disable

if.end.i299:                                      ; preds = %if.end132
  %call1.i297 = tail call i32 @clk_enable(ptr noundef %75) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i297)
  %tobool2.not.i298 = icmp eq i32 %call1.i297, 0
  br i1 %tobool2.not.i298, label %if.end137, label %if.end.i299.clk_ipg_disable.sink.split_crit_edge

if.end.i299.clk_ipg_disable.sink.split_crit_edge: ; preds = %if.end.i299
  call void @__sanitizer_cov_trace_pc() #11
  br label %clk_ipg_disable.sink.split

if.end137:                                        ; preds = %if.end.i299
  %76 = ptrtoint ptr %regs_base to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %regs_base, align 4
  %78 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %77) #9, !srcloc !271
  %79 = tail call i32 @llvm.bswap.i32(i32 %78) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !272
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %80 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %of_node, align 8
  %call140 = tail call i32 @of_device_is_compatible(ptr noundef %81, ptr noundef nonnull @.str.28) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call140)
  %tobool141.not = icmp eq i32 %call140, 0
  br i1 %tobool141.not, label %if.else, label %if.then142

if.then142:                                       ; preds = %if.end137
  call void @__sanitizer_cov_trace_const_cmp4(i32 50331648, i32 %78)
  %cmp143.not = icmp eq i32 %78, 50331648
  br i1 %cmp143.not, label %if.then142.if.end164_crit_edge, label %if.then142.do.end162_crit_edge

if.then142.do.end162_crit_edge:                   ; preds = %if.then142
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end162

if.then142.if.end164_crit_edge:                   ; preds = %if.then142
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end164

if.else:                                          ; preds = %if.end137
  %82 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %of_node, align 8
  %call148 = tail call i32 @of_device_is_compatible(ptr noundef %83, ptr noundef nonnull @.str.29) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call148)
  %tobool149.not = icmp eq i32 %call148, 0
  br i1 %tobool149.not, label %if.else.if.end164_crit_edge, label %if.then150

if.else.if.end164_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end164

if.then150:                                       ; preds = %if.else
  %shr = lshr i32 %79, 8
  %and = and i32 %shr, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %and)
  %cmp151.not = icmp eq i32 %and, 4
  br i1 %cmp151.not, label %if.then150.if.end164_crit_edge, label %if.then150.do.end162_crit_edge

if.then150.do.end162_crit_edge:                   ; preds = %if.then150
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end162

if.then150.if.end164_crit_edge:                   ; preds = %if.then150
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end164

do.end162:                                        ; preds = %if.then150.do.end162_crit_edge, %if.then142.do.end162_crit_edge
  %version.0 = phi i32 [ %and, %if.then150.do.end162_crit_edge ], [ %79, %if.then142.do.end162_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.31, i32 noundef %version.0) #12
  br label %err_algs

if.end164:                                        ; preds = %if.then150.if.end164_crit_edge, %if.else.if.end164_crit_edge, %if.then142.if.end164_crit_edge
  %version.0.ph = phi i32 [ %79, %if.else.if.end164_crit_edge ], [ 4, %if.then150.if.end164_crit_edge ], [ 3, %if.then142.if.end164_crit_edge ]
  %version165 = getelementptr inbounds %struct.sahara_dev, ptr %call.i, i32 0, i32 1
  %84 = ptrtoint ptr %version165 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %version.0.ph, ptr %version165, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !273
  tail call void @arm_heavy_mb() #9
  %85 = ptrtoint ptr %regs_base to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %regs_base, align 4
  %add.ptr.i = getelementptr i8, ptr %86, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 16777472) #9, !srcloc !274
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !273
  tail call void @arm_heavy_mb() #9
  %87 = ptrtoint ptr %regs_base to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %regs_base, align 4
  %add.ptr.i305 = getelementptr i8, ptr %88, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i305, i32 -1879046144) #9, !srcloc !274
  %call166 = tail call fastcc i32 @sahara_register_algs(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call166)
  %tobool167.not = icmp eq i32 %call166, 0
  br i1 %tobool167.not, label %do.end172, label %if.end164.err_algs_crit_edge

if.end164.err_algs_crit_edge:                     ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_algs

do.end172:                                        ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.34, i32 noundef %version.0.ph) #12
  br label %cleanup

err_algs:                                         ; preds = %if.end164.err_algs_crit_edge, %do.end162
  %err.2 = phi i32 [ -19, %do.end162 ], [ %call166, %if.end164.err_algs_crit_edge ]
  %89 = ptrtoint ptr %kthread to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %kthread, align 4
  %call175 = tail call i32 @kthread_stop(ptr noundef %90) #9
  store ptr null, ptr @dev_ptr, align 4
  %91 = ptrtoint ptr %clk_ahb to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %clk_ahb, align 4
  tail call void @clk_disable(ptr noundef %92) #9
  br label %clk_ipg_disable.sink.split

clk_ipg_disable.sink.split:                       ; preds = %err_algs, %if.end.i299.clk_ipg_disable.sink.split_crit_edge
  %.sink = phi ptr [ %92, %err_algs ], [ %75, %if.end.i299.clk_ipg_disable.sink.split_crit_edge ]
  %err.3.ph = phi i32 [ %err.2, %err_algs ], [ %call1.i297, %if.end.i299.clk_ipg_disable.sink.split_crit_edge ]
  tail call void @clk_unprepare(ptr noundef %.sink) #9
  br label %clk_ipg_disable

clk_ipg_disable:                                  ; preds = %clk_ipg_disable.sink.split, %if.end132.clk_ipg_disable_crit_edge
  %err.3 = phi i32 [ %call.i295, %if.end132.clk_ipg_disable_crit_edge ], [ %err.3.ph, %clk_ipg_disable.sink.split ]
  %93 = ptrtoint ptr %clk_ipg to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %clk_ipg, align 4
  tail call void @clk_disable(ptr noundef %94) #9
  tail call void @clk_unprepare(ptr noundef %94) #9
  br label %cleanup

cleanup:                                          ; preds = %clk_ipg_disable, %do.end172, %if.then3.i, %if.end127.cleanup_crit_edge, %if.then124, %do.end99, %do.end86, %do.end72, %do.end54, %do.end40, %do.end28, %do.end, %if.end9.cleanup_crit_edge, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %3, %if.then6 ], [ %call.i282, %do.end ], [ %11, %do.end28 ], [ %15, %do.end40 ], [ %69, %if.then124 ], [ %err.3, %clk_ipg_disable ], [ 0, %do.end172 ], [ -12, %do.end99 ], [ -12, %do.end86 ], [ -12, %do.end72 ], [ -12, %do.end54 ], [ -12, %entry.cleanup_crit_edge ], [ %call10, %if.end9.cleanup_crit_edge ], [ %call1.i, %if.then3.i ], [ %call.i291, %if.end127.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sahara_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %kthread = getelementptr inbounds %struct.sahara_dev, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %kthread to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %kthread, align 4
  %call1 = tail call i32 @kthread_stop(ptr noundef %3) #9
  tail call void @crypto_unregister_skcipher(ptr noundef nonnull @aes_algs) #9
  tail call void @crypto_unregister_skcipher(ptr noundef getelementptr inbounds ([2 x %struct.skcipher_alg], ptr @aes_algs, i32 0, i32 1)) #9
  tail call void @crypto_unregister_ahash(ptr noundef nonnull @sha_v3_algs) #9
  %version.i = getelementptr inbounds %struct.sahara_dev, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %version.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %version.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %5)
  %cmp8.i = icmp ugt i32 %5, 3
  br i1 %cmp8.i, label %for.body11.i, label %entry.sahara_unregister_algs.exit_crit_edge

entry.sahara_unregister_algs.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sahara_unregister_algs.exit

for.body11.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @crypto_unregister_ahash(ptr noundef nonnull @sha_v4_algs) #9
  br label %sahara_unregister_algs.exit

sahara_unregister_algs.exit:                      ; preds = %for.body11.i, %entry.sahara_unregister_algs.exit_crit_edge
  %clk_ipg = getelementptr inbounds %struct.sahara_dev, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %clk_ipg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk_ipg, align 4
  tail call void @clk_disable(ptr noundef %7) #9
  tail call void @clk_unprepare(ptr noundef %7) #9
  %clk_ahb = getelementptr inbounds %struct.sahara_dev, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %clk_ahb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clk_ahb, align 4
  tail call void @clk_disable(ptr noundef %9) #9
  tail call void @clk_unprepare(ptr noundef %9) #9
  store ptr null, ptr @dev_ptr, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sahara_irq_handler(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %regs_base.i = getelementptr inbounds %struct.sahara_dev, ptr %data, i32 0, i32 2
  %0 = ptrtoint ptr %regs_base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 16
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !271
  %3 = lshr i32 %2, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !272
  %4 = ptrtoint ptr %regs_base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs_base.i, align 4
  %add.ptr.i20 = getelementptr i8, ptr %5, i32 20
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i20) #9, !srcloc !271
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !272
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !273
  tail call void @arm_heavy_mb() #9
  %8 = ptrtoint ptr %regs_base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs_base.i, align 4
  %add.ptr.i22 = getelementptr i8, ptr %9, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i22, i32 196608) #9, !srcloc !274
  %and = and i32 %3, 7
  %10 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and, label %if.else5 [
    i32 1, label %entry.cleanup_crit_edge
    i32 4, label %entry.if.end7_crit_edge
  ]

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.else5:                                         ; preds = %entry
  %conv.i = and i32 %7, 15
  %11 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.38, i32 noundef %7) #12
  %13 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data, align 4
  %arrayidx.i = getelementptr [16 x ptr], ptr @sahara_err_src, i32 0, i32 %conv.i
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.40, ptr noundef %16) #12
  %17 = zext i32 %conv.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.127)
  switch i32 %conv.i, label %if.else5.sahara_decode_error.exit_crit_edge [
    i32 15, label %if.then.i
    i32 14, label %do.end40.i
  ]

if.else5.sahara_decode_error.exit_crit_edge:      ; preds = %if.else5
  call void @__sanitizer_cov_trace_pc() #11
  br label %sahara_decode_error.exit

if.then.i:                                        ; preds = %if.else5
  call void @__sanitizer_cov_trace_pc() #11
  %and9.i = and i32 %7, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool.not.i = icmp eq i32 %and9.i, 0
  %18 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data, align 4
  %.str.46..str.43.i = select i1 %tobool.not.i, ptr @.str.46, ptr @.str.43
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull %.str.46..str.43.i) #12
  %20 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data, align 4
  %shr23.i = lshr i32 %7, 9
  %and24.i = and i32 %shr23.i, 3
  %arrayidx25.i = getelementptr [4 x ptr], ptr @sahara_err_dmasize, i32 0, i32 %and24.i
  %22 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx25.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.49, ptr noundef %23) #12
  %shr30.i = lshr i32 %7, 13
  %and31.i = and i32 %shr30.i, 7
  %arrayidx32.i = getelementptr [8 x ptr], ptr @sahara_err_dmasrc, i32 0, i32 %and31.i
  br label %do.end55.sink.split.i

do.end40.i:                                       ; preds = %if.else5
  call void @__sanitizer_cov_trace_pc() #11
  %shr.i = lshr i32 %7, 16
  %and1.i = and i32 %shr.i, 4095
  %24 = tail call i32 @llvm.cttz.i32(i32 %and1.i, i1 true) #9, !range !275
  %25 = add nuw nsw i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %iszero.i = icmp eq i32 %and1.i, 0
  %26 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %data, align 4
  %idxprom42.i = select i1 %iszero.i, i32 0, i32 %25
  %arrayidx43.i = getelementptr [12 x ptr], ptr @sahara_cha_errsrc, i32 0, i32 %idxprom42.i
  %28 = ptrtoint ptr %arrayidx43.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx43.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.49, ptr noundef %29) #12
  %shr48.i = lshr i32 %7, 28
  %and49.i = and i32 %shr48.i, 3
  %arrayidx50.i = getelementptr [4 x ptr], ptr @sahara_cha_err, i32 0, i32 %and49.i
  br label %do.end55.sink.split.i

do.end55.sink.split.i:                            ; preds = %do.end40.i, %if.then.i
  %arrayidx32.sink.i = phi ptr [ %arrayidx32.i, %if.then.i ], [ %arrayidx50.i, %do.end40.i ]
  %30 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %30)
  %.sink.i = load ptr, ptr %data, align 4
  %31 = ptrtoint ptr %arrayidx32.sink.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx32.sink.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %.sink.i, ptr noundef nonnull @.str.49, ptr noundef %32) #12
  br label %sahara_decode_error.exit

sahara_decode_error.exit:                         ; preds = %do.end55.sink.split.i, %if.else5.sahara_decode_error.exit_crit_edge
  %33 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %data, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.58) #12
  br label %if.end7

if.end7:                                          ; preds = %sahara_decode_error.exit, %entry.if.end7_crit_edge
  %.sink = phi i32 [ -22, %sahara_decode_error.exit ], [ 0, %entry.if.end7_crit_edge ]
  %error = getelementptr inbounds %struct.sahara_dev, ptr %data, i32 0, i32 26
  %35 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %.sink, ptr %error, align 4
  %dma_completion = getelementptr inbounds %struct.sahara_dev, ptr %data, i32 0, i32 7
  tail call void @complete(ptr noundef %dma_completion) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end7 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_init_queue(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_create_on_node(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sahara_queue_manage(ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %queue_mutex = getelementptr inbounds %struct.sahara_dev, ptr %data, i32 0, i32 5
  %queue = getelementptr inbounds %struct.sahara_dev, ptr %data, i32 0, i32 9
  %backlog.i = getelementptr inbounds %struct.sahara_dev, ptr %data, i32 0, i32 9, i32 1
  br label %__here

__here:                                           ; preds = %do.cond71.__here_crit_edge, %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !261) #9
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 212
  %4 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 ptrtoint (ptr blockaddress(@sahara_queue_manage, %__here) to i32), ptr %task_state_change, align 4
  %5 = load ptr, ptr %task, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile i32 1, ptr %5, align 128
  tail call void @mutex_lock_nested(ptr noundef %queue_mutex, i32 noundef 0) #9
  %7 = ptrtoint ptr %backlog.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %backlog.i, align 4
  %cmp.i = icmp eq ptr %8, %queue
  %call54 = tail call ptr @crypto_dequeue_request(ptr noundef %queue) #9
  tail call void @mutex_unlock(ptr noundef %queue_mutex) #9
  %tobool56.not89 = icmp eq ptr %8, null
  %tobool56.not = or i1 %cmp.i, %tobool56.not89
  br i1 %tobool56.not, label %__here.if.end58_crit_edge, label %if.then57

__here.if.end58_crit_edge:                        ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end58

if.then57:                                        ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #11
  %complete = getelementptr inbounds %struct.crypto_async_request, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %complete to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %complete, align 4
  tail call void %10(ptr noundef nonnull %8, i32 noundef -115) #9
  br label %if.end58

if.end58:                                         ; preds = %if.then57, %__here.if.end58_crit_edge
  %tobool59.not = icmp eq ptr %call54, null
  br i1 %tobool59.not, label %if.end70, label %if.then60

if.then60:                                        ; preds = %if.end58
  %tfm = getelementptr inbounds %struct.crypto_async_request, ptr %call54, i32 0, i32 3
  %11 = ptrtoint ptr %tfm to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %tfm, align 4
  %__crt_alg.i = getelementptr inbounds %struct.crypto_tfm, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %__crt_alg.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %__crt_alg.i, align 4
  %cra_flags.i = getelementptr inbounds %struct.crypto_alg, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %cra_flags.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cra_flags.i, align 16
  %and.i88 = and i32 %16, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %and.i88)
  %cmp = icmp eq i32 %and.i88, 15
  br i1 %cmp, label %if.then62, label %if.else

if.then62:                                        ; preds = %if.then60
  %17 = load ptr, ptr @dev_ptr, align 4
  %__ctx.i.i = getelementptr inbounds %struct.ahash_request, ptr %call54, i32 0, i32 6
  %cra_blocksize.i.i.i = getelementptr inbounds %struct.crypto_alg, ptr %14, i32 0, i32 3
  %18 = ptrtoint ptr %cra_blocksize.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cra_blocksize.i.i.i, align 4
  %buf_cnt.i.i = getelementptr inbounds %struct.ahash_request, ptr %call54, i32 2, i32 5, i32 8
  %20 = ptrtoint ptr %buf_cnt.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %buf_cnt.i.i, align 4
  %nbytes.i.i = getelementptr inbounds %struct.ahash_request, ptr %call54, i32 0, i32 1
  %22 = ptrtoint ptr %nbytes.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %nbytes.i.i, align 8
  %add.i.i = add i32 %23, %21
  %last.i.i = getelementptr inbounds %struct.ahash_request, ptr %call54, i32 2, i32 5, i32 64
  %24 = ptrtoint ptr %last.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %last.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.not.i.i = icmp eq i32 %25, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %19)
  %cmp.i.i = icmp ult i32 %add.i.i, %19
  %or.cond.i.i = select i1 %tobool.not.i.i, i1 %cmp.i.i, i1 false
  br i1 %or.cond.i.i, label %sahara_sha_prepare_request.exit.i, label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then62
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool10.not.i.i = icmp eq i32 %21, 0
  br i1 %tobool10.not.i.i, label %if.end.i.i.if.end16.i.i_crit_edge, label %if.then11.i.i

if.end.i.i.if.end16.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %rembuf.i.i = getelementptr inbounds %struct.ahash_request, ptr %call54, i32 1, i32 5, i32 24
  %26 = call ptr @memcpy(ptr %rembuf.i.i, ptr %__ctx.i.i, i32 %21)
  br label %if.end16.i.i

if.end16.i.i:                                     ; preds = %if.then11.i.i, %if.end.i.i.if.end16.i.i_crit_edge
  %27 = ptrtoint ptr %last.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %last.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool18.not.i.i = icmp eq i32 %28, 0
  %sub.i.i = add i32 %19, -1
  %and.i.i = and i32 %add.i.i, %sub.i.i
  %cond.i.i = select i1 %tobool18.not.i.i, i32 %and.i.i, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond.i.i)
  %tobool19.not.i.i = icmp eq i32 %cond.i.i, 0
  br i1 %tobool19.not.i.i, label %if.end16.i.i.if.end26.i.i_crit_edge, label %if.then20.i.i

if.end16.i.i.if.end26.i.i_crit_edge:              ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26.i.i

if.then20.i.i:                                    ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub22.i.i = sub i32 %23, %cond.i.i
  %src25.i.i = getelementptr inbounds %struct.ahash_request, ptr %call54, i32 0, i32 2
  %29 = ptrtoint ptr %src25.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %src25.i.i, align 4
  tail call void @scatterwalk_map_and_copy(ptr noundef %__ctx.i.i, ptr noundef %30, i32 noundef %sub22.i.i, i32 noundef %cond.i.i, i32 noundef 0) #9
  br label %if.end26.i.i

if.end26.i.i:                                     ; preds = %if.then20.i.i, %if.end16.i.i.if.end26.i.i_crit_edge
  %31 = ptrtoint ptr %nbytes.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %nbytes.i.i, align 8
  %sub28.i.i = sub i32 %32, %cond.i.i
  store i32 %sub28.i.i, ptr %nbytes.i.i, align 8
  %src30.i.i = getelementptr inbounds %struct.ahash_request, ptr %call54, i32 0, i32 2
  %33 = ptrtoint ptr %src30.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %src30.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %34, null
  br i1 %tobool.not.i.i.i, label %if.end26.i.i.sahara_walk_and_recalc.exit.i.i_crit_edge, label %lor.lhs.false.i.i.i

if.end26.i.i.sahara_walk_and_recalc.exit.i.i_crit_edge: ; preds = %if.end26.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sahara_walk_and_recalc.exit.i.i

lor.lhs.false.i.i.i:                              ; preds = %if.end26.i.i
  %length.i.i.i = getelementptr inbounds %struct.scatterlist, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %length.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %length.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool1.not.i.i.i = icmp eq i32 %36, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub28.i.i)
  %tobool2.not3.i.i.i = icmp eq i32 %sub28.i.i, 0
  %or.cond14.i.i.i = or i1 %tobool2.not3.i.i.i, %tobool1.not.i.i.i
  br i1 %or.cond14.i.i.i, label %lor.lhs.false.i.i.i.sahara_walk_and_recalc.exit.i.i_crit_edge, label %lor.lhs.false.i.i.i.while.body.i.i.i_crit_edge

lor.lhs.false.i.i.i.while.body.i.i.i_crit_edge:   ; preds = %lor.lhs.false.i.i.i
  br label %while.body.i.i.i

lor.lhs.false.i.i.i.sahara_walk_and_recalc.exit.i.i_crit_edge: ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sahara_walk_and_recalc.exit.i.i

while.body.i.i.i:                                 ; preds = %if.end7.i.i.i.while.body.i.i.i_crit_edge, %lor.lhs.false.i.i.i.while.body.i.i.i_crit_edge
  %nbytes.addr.07.i.i.i = phi i32 [ %sub.i.i.i, %if.end7.i.i.i.while.body.i.i.i_crit_edge ], [ %sub28.i.i, %lor.lhs.false.i.i.i.while.body.i.i.i_crit_edge ]
  %sg.addr.06.i.i.i = phi ptr [ %call.i.i.i, %if.end7.i.i.i.while.body.i.i.i_crit_edge ], [ %34, %lor.lhs.false.i.i.i.while.body.i.i.i_crit_edge ]
  %length4.i.i.i = getelementptr inbounds %struct.scatterlist, ptr %sg.addr.06.i.i.i, i32 0, i32 2
  %37 = ptrtoint ptr %length4.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %length4.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %nbytes.addr.07.i.i.i, i32 %38)
  %cmp.not.i.i.i = icmp ugt i32 %nbytes.addr.07.i.i.i, %38
  br i1 %cmp.not.i.i.i, label %if.end7.i.i.i, label %if.then5.i.i.i

if.then5.i.i.i:                                   ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %length4.i.i.i.le = getelementptr inbounds %struct.scatterlist, ptr %sg.addr.06.i.i.i, i32 0, i32 2
  %39 = ptrtoint ptr %length4.i.i.i.le to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %nbytes.addr.07.i.i.i, ptr %length4.i.i.i.le, align 4
  %40 = ptrtoint ptr %sg.addr.06.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %sg.addr.06.i.i.i, align 4
  %or.i.i.i.i = and i32 %41, -4
  %and.i.i.i.i = or i32 %or.i.i.i.i, 2
  store i32 %and.i.i.i.i, ptr %sg.addr.06.i.i.i, align 4
  br label %sahara_walk_and_recalc.exit.i.i

if.end7.i.i.i:                                    ; preds = %while.body.i.i.i
  %sub.i.i.i = sub i32 %nbytes.addr.07.i.i.i, %38
  %call.i.i.i = tail call ptr @sg_next(ptr noundef nonnull %sg.addr.06.i.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i.i)
  %tobool2.not.i.i.i = icmp eq i32 %sub.i.i.i, 0
  %tobool3.not.i.i.i = icmp eq ptr %call.i.i.i, null
  %or.cond.i.i.i = select i1 %tobool2.not.i.i.i, i1 true, i1 %tobool3.not.i.i.i
  br i1 %or.cond.i.i.i, label %if.end7.i.i.i.sahara_walk_and_recalc.exit.i.i_crit_edge, label %if.end7.i.i.i.while.body.i.i.i_crit_edge

if.end7.i.i.i.while.body.i.i.i_crit_edge:         ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i.i.i

if.end7.i.i.i.sahara_walk_and_recalc.exit.i.i_crit_edge: ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sahara_walk_and_recalc.exit.i.i

sahara_walk_and_recalc.exit.i.i:                  ; preds = %if.end7.i.i.i.sahara_walk_and_recalc.exit.i.i_crit_edge, %if.then5.i.i.i, %lor.lhs.false.i.i.i.sahara_walk_and_recalc.exit.i.i_crit_edge, %if.end26.i.i.sahara_walk_and_recalc.exit.i.i_crit_edge
  %42 = ptrtoint ptr %buf_cnt.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %buf_cnt.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool34.not.i.i = icmp eq i32 %43, 0
  br i1 %tobool34.not.i.i, label %if.else75.i.i, label %land.lhs.true35.i.i

land.lhs.true35.i.i:                              ; preds = %sahara_walk_and_recalc.exit.i.i
  %44 = ptrtoint ptr %nbytes.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %nbytes.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool37.not.i.i = icmp eq i32 %45, 0
  br i1 %tobool37.not.i.i, label %if.then58.i.i, label %if.then38.i.i

if.then38.i.i:                                    ; preds = %land.lhs.true35.i.i
  %in_sg_chain.i.i = getelementptr inbounds %struct.ahash_request, ptr %call54, i32 2, i32 5, i32 20
  tail call void @sg_init_table(ptr noundef %in_sg_chain.i.i, i32 noundef 2) #9
  %rembuf42.i.i = getelementptr inbounds %struct.ahash_request, ptr %call54, i32 1, i32 5, i32 24
  %46 = ptrtoint ptr %buf_cnt.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %buf_cnt.i.i, align 4
  %48 = ptrtoint ptr %rembuf42.i.i to i32
  %cmp.i.i.i = icmp ugt ptr %rembuf42.i.i, inttoptr (i32 -1073741825 to ptr)
  br i1 %cmp.i.i.i, label %land.lhs.true.i.i.i, label %if.then38.i.i.do.body5.i.i.i_crit_edge, !prof !276

if.then38.i.i.do.body5.i.i.i_crit_edge:           ; preds = %if.then38.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body5.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.then38.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %49 = load ptr, ptr @high_memory, align 4
  %cmp1.i.i.i = icmp ugt ptr %49, %rembuf42.i.i
  br i1 %cmp1.i.i.i, label %land.rhs.i.i.i, label %land.lhs.true.i.i.i.do.body5.i.i.i_crit_edge, !prof !276

land.lhs.true.i.i.i.do.body5.i.i.i_crit_edge:     ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body5.i.i.i

land.rhs.i.i.i:                                   ; preds = %land.lhs.true.i.i.i
  %sub.i150.i.i = add i32 %48, 1073741824
  %shr.i.i.i = lshr i32 %sub.i150.i.i, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %50 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i.i.i = add i32 %50, %shr.i.i.i
  %call.i151.i.i = tail call i32 @pfn_valid(i32 noundef %add.i.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i151.i.i)
  %tobool.i.i.i = icmp eq i32 %call.i151.i.i, 0
  br i1 %tobool.i.i.i, label %land.rhs.i.i.i.do.body5.i.i.i_crit_edge, label %do.end8.i.i.i, !prof !277

land.rhs.i.i.i.do.body5.i.i.i_crit_edge:          ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body5.i.i.i

do.body5.i.i.i:                                   ; preds = %land.rhs.i.i.i.do.body5.i.i.i_crit_edge, %land.lhs.true.i.i.i.do.body5.i.i.i_crit_edge, %if.then38.i.i.do.body5.i.i.i_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 160, 0\0A.popsection", ""() #9, !srcloc !278
  unreachable

do.end8.i.i.i:                                    ; preds = %land.rhs.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %51 = load ptr, ptr @mem_map, align 4
  %add.ptr.i.i.i = getelementptr %struct.page, ptr %51, i32 %shr.i.i.i
  %52 = ptrtoint ptr %in_sg_chain.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %in_sg_chain.i.i, align 4
  %54 = ptrtoint ptr %add.ptr.i.i.i to i32
  %and2.i.i.i.i.i = and i32 %54, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i.i.i)
  %tobool.not.i.i.i.i.i = icmp eq i32 %and2.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i, label %do.body11.i.i.i.i.i, label %do.body5.i.i.i.i.i, !prof !276

do.body5.i.i.i.i.i:                               ; preds = %do.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #9, !srcloc !279
  unreachable

do.body11.i.i.i.i.i:                              ; preds = %do.end8.i.i.i
  %and.i.i.i.i.i.i = and i32 %53, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i.i)
  %tobool.i.not.i.i.i.i.i = icmp eq i32 %and.i.i.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i.i.i, label %sg_set_buf.exit.i.i, label %do.body19.i.i.i.i.i, !prof !276

do.body19.i.i.i.i.i:                              ; preds = %do.body11.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #9, !srcloc !280
  unreachable

sg_set_buf.exit.i.i:                              ; preds = %do.body11.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %and.i.i.i = and i32 %48, 4095
  %and.i.i.i.i.i = and i32 %53, 3
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i, %54
  %55 = ptrtoint ptr %in_sg_chain.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %or.i.i.i.i.i, ptr %in_sg_chain.i.i, align 4
  %offset1.i.i.i.i = getelementptr inbounds %struct.ahash_request, ptr %call54, i32 2, i32 5, i32 24
  %56 = ptrtoint ptr %offset1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %and.i.i.i, ptr %offset1.i.i.i.i, align 4
  %length.i.i.i.i = getelementptr inbounds %struct.ahash_request, ptr %call54, i32 2, i32 5, i32 28
  %57 = ptrtoint ptr %length.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %47, ptr %length.i.i.i.i, align 4
  %58 = ptrtoint ptr %src30.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %src30.i.i, align 4
  %arrayidx.i.i.i = getelementptr %struct.ahash_request, ptr %call54, i32 2, i32 5, i32 40
  %offset.i.i.i.i = getelementptr %struct.ahash_request, ptr %call54, i32 2, i32 5, i32 44
  %60 = ptrtoint ptr %offset.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 0, ptr %offset.i.i.i.i, align 4
  %length.i.i152.i.i = getelementptr %struct.ahash_request, ptr %call54, i32 2, i32 5, i32 48
  %61 = ptrtoint ptr %length.i.i152.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 0, ptr %length.i.i152.i.i, align 4
  %62 = ptrtoint ptr %59 to i32
  %or.i.i153.i.i = and i32 %62, -4
  %and.i.i154.i.i = or i32 %or.i.i153.i.i, 1
  %63 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %and.i.i154.i.i, ptr %arrayidx.i.i.i, align 4
  %64 = ptrtoint ptr %nbytes.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %nbytes.i.i, align 8
  %66 = ptrtoint ptr %buf_cnt.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %buf_cnt.i.i, align 4
  %add50.i.i = add i32 %67, %65
  %total.i.i = getelementptr inbounds %struct.ahash_request, ptr %call54, i32 2, i32 5, i32 60
  %68 = ptrtoint ptr %total.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %add50.i.i, ptr %total.i.i, align 4
  %in_sg.i.i = getelementptr inbounds %struct.ahash_request, ptr %call54, i32 2, i32 5, i32 16
  %69 = ptrtoint ptr %in_sg.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %in_sg_chain.i.i, ptr %in_sg.i.i, align 4
  store ptr %in_sg_chain.i.i, ptr %src30.i.i, align 4
  br label %if.end.i

if.then58.i.i:                                    ; preds = %land.lhs.true35.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %70 = ptrtoint ptr %src30.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %src30.i.i, align 4
  %tobool60.not.i.i = icmp eq ptr %71, null
  %in_sg_chain65.i.i = getelementptr inbounds %struct.ahash_request, ptr %call54, i32 2, i32 5, i32 20
  %spec.select.i.i = select i1 %tobool60.not.i.i, ptr %in_sg_chain65.i.i, ptr %71
  %72 = getelementptr inbounds %struct.ahash_request, ptr %call54, i32 2, i32 5, i32 16
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %spec.select.i.i, ptr %72, align 4
  %rembuf70.i.i = getelementptr inbounds %struct.ahash_request, ptr %call54, i32 1, i32 5, i32 24
  tail call void @sg_init_one(ptr noundef %spec.select.i.i, ptr noundef %rembuf70.i.i, i32 noundef %43) #9
  %74 = ptrtoint ptr %buf_cnt.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %buf_cnt.i.i, align 4
  %total74.i.i = getelementptr inbounds %struct.ahash_request, ptr %call54, i32 2, i32 5, i32 60
  %76 = ptrtoint ptr %total74.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %75, ptr %total74.i.i, align 4
  br label %if.end.i

if.else75.i.i:                                    ; preds = %sahara_walk_and_recalc.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %77 = ptrtoint ptr %src30.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %src30.i.i, align 4
  %in_sg77.i.i = getelementptr inbounds %struct.ahash_request, ptr %call54, i32 2, i32 5, i32 16
  %79 = ptrtoint ptr %in_sg77.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %78, ptr %in_sg77.i.i, align 4
  %80 = ptrtoint ptr %nbytes.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %nbytes.i.i, align 8
  %total79.i.i = getelementptr inbounds %struct.ahash_request, ptr %call54, i32 2, i32 5, i32 60
  %82 = ptrtoint ptr %total79.i.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %81, ptr %total79.i.i, align 4
  br label %if.end.i

sahara_sha_prepare_request.exit.i:                ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i = getelementptr i8, ptr %__ctx.i.i, i32 %21
  %src.i.i = getelementptr inbounds %struct.ahash_request, ptr %call54, i32 0, i32 2
  %83 = ptrtoint ptr %src.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %src.i.i, align 4
  tail call void @scatterwalk_map_and_copy(ptr noundef %add.ptr.i.i, ptr noundef %84, i32 noundef 0, i32 noundef %23, i32 noundef 0) #9
  %85 = ptrtoint ptr %nbytes.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %nbytes.i.i, align 8
  %87 = ptrtoint ptr %buf_cnt.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %buf_cnt.i.i, align 4
  %add8.i.i = add i32 %88, %86
  store i32 %add8.i.i, ptr %buf_cnt.i.i, align 4
  br label %if.end68

if.end.i:                                         ; preds = %if.else75.i.i, %if.then58.i.i, %sg_set_buf.exit.i.i
  %89 = ptrtoint ptr %buf_cnt.i.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %cond.i.i, ptr %buf_cnt.i.i, align 4
  %first.i = getelementptr inbounds %struct.ahash_request, ptr %call54, i32 2, i32 5, i32 68
  %90 = ptrtoint ptr %first.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %first.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %tobool2.not.i = icmp eq i32 %91, 0
  br i1 %tobool2.not.i, label %if.else.i, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @sahara_sha_hw_data_descriptor_create(ptr noundef %17, ptr noundef %__ctx.i.i, i32 noundef 0) #9
  %hw_desc.i = getelementptr inbounds %struct.sahara_dev, ptr %17, i32 0, i32 11
  %92 = ptrtoint ptr %hw_desc.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %hw_desc.i, align 4
  %next.i = getelementptr inbounds %struct.sahara_hw_desc, ptr %93, i32 0, i32 5
  %94 = ptrtoint ptr %next.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 0, ptr %next.i, align 4
  br label %if.end15.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %context_base.i = getelementptr inbounds %struct.sahara_dev, ptr %17, i32 0, i32 17
  %95 = ptrtoint ptr %context_base.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %context_base.i, align 4
  %context.i = getelementptr inbounds %struct.ahash_request, ptr %call54, i32 2
  %context_size.i = getelementptr inbounds %struct.ahash_request, ptr %call54, i32 2, i32 5, i32 4
  %97 = ptrtoint ptr %context_size.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %context_size.i, align 4
  %99 = call ptr @memcpy(ptr %96, ptr %context.i, i32 %98)
  %mode.i.i.i = getelementptr inbounds %struct.ahash_request, ptr %call54, i32 2, i32 4
  %100 = ptrtoint ptr %mode.i.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %mode.i.i.i, align 4
  %102 = ptrtoint ptr %first.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %first.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %103)
  %tobool.not.i.i77.i = icmp eq i32 %103, 0
  %hdr.0.v.i.i.i = select i1 %tobool.not.i.i77.i, i32 545783808, i32 546111520
  %hdr.0.i.i.i = or i32 %hdr.0.v.i.i.i, %101
  %104 = ptrtoint ptr %last.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %last.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %105)
  %tobool3.not.i.i78.i = icmp eq i32 %105, 0
  %or5.i.i.i = or i32 %hdr.0.i.i.i, 4
  %hdr.1.i.i.i = select i1 %tobool3.not.i.i78.i, i32 %hdr.0.i.i.i, i32 %or5.i.i.i
  %call.i.i.i.i.i = tail call i32 @__sw_hweight32(i32 noundef %hdr.1.i.i.i) #9
  %106 = xor i32 %call.i.i.i.i.i, -1
  %107 = shl i32 %106, 31
  %108 = or i32 %107, %hdr.1.i.i.i
  %hw_desc.i.i = getelementptr inbounds %struct.sahara_dev, ptr %17, i32 0, i32 11
  %109 = ptrtoint ptr %hw_desc.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %hw_desc.i.i, align 4
  %111 = ptrtoint ptr %110 to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %108, ptr %110, align 4
  %112 = ptrtoint ptr %context_size.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %context_size.i, align 4
  %114 = load ptr, ptr %hw_desc.i.i, align 4
  %len1.i.i = getelementptr inbounds %struct.sahara_hw_desc, ptr %114, i32 0, i32 1
  %115 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %113, ptr %len1.i.i, align 4
  %hw_phys_link.i.i = getelementptr inbounds %struct.sahara_dev, ptr %17, i32 0, i32 20
  %116 = ptrtoint ptr %hw_phys_link.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %hw_phys_link.i.i, align 4
  %118 = load ptr, ptr %hw_desc.i.i, align 4
  %p1.i.i = getelementptr inbounds %struct.sahara_hw_desc, ptr %118, i32 0, i32 2
  %119 = ptrtoint ptr %p1.i.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %117, ptr %p1.i.i, align 4
  %120 = load ptr, ptr %hw_desc.i.i, align 4
  %len2.i.i = getelementptr inbounds %struct.sahara_hw_desc, ptr %120, i32 0, i32 3
  %121 = ptrtoint ptr %len2.i.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 0, ptr %len2.i.i, align 4
  %122 = load ptr, ptr %hw_desc.i.i, align 4
  %p2.i.i = getelementptr inbounds %struct.sahara_hw_desc, ptr %122, i32 0, i32 4
  %123 = ptrtoint ptr %p2.i.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 0, ptr %p2.i.i, align 4
  %124 = load i32, ptr %context_size.i, align 4
  %hw_link.i.i = getelementptr inbounds %struct.sahara_dev, ptr %17, i32 0, i32 19
  %125 = ptrtoint ptr %hw_link.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %hw_link.i.i, align 4
  %127 = ptrtoint ptr %126 to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %124, ptr %126, align 4
  %context_phys_base.i.i = getelementptr inbounds %struct.sahara_dev, ptr %17, i32 0, i32 18
  %128 = ptrtoint ptr %context_phys_base.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %context_phys_base.i.i, align 4
  %130 = load ptr, ptr %hw_link.i.i, align 4
  %p.i.i = getelementptr inbounds %struct.sahara_hw_link, ptr %130, i32 0, i32 1
  %131 = ptrtoint ptr %p.i.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 %129, ptr %p.i.i, align 4
  %132 = load ptr, ptr %hw_link.i.i, align 4
  %next.i.i = getelementptr inbounds %struct.sahara_hw_link, ptr %132, i32 0, i32 2
  %133 = ptrtoint ptr %next.i.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 0, ptr %next.i.i, align 4
  %arrayidx7.i = getelementptr %struct.sahara_dev, ptr %17, i32 0, i32 12, i32 1
  %134 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %arrayidx7.i, align 4
  %136 = load ptr, ptr %hw_desc.i.i, align 4
  %next10.i = getelementptr inbounds %struct.sahara_hw_desc, ptr %136, i32 0, i32 5
  %137 = ptrtoint ptr %next10.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 %135, ptr %next10.i, align 4
  tail call fastcc void @sahara_sha_hw_data_descriptor_create(ptr noundef %17, ptr noundef %__ctx.i.i, i32 noundef 1) #9
  %arrayidx13.i = getelementptr %struct.sahara_dev, ptr %17, i32 0, i32 11, i32 1
  %138 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %arrayidx13.i, align 4
  %next14.i = getelementptr inbounds %struct.sahara_hw_desc, ptr %139, i32 0, i32 5
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.else.i, %if.then3.i
  %next14.sink.i = phi ptr [ %next14.i, %if.else.i ], [ %first.i, %if.then3.i ]
  %140 = ptrtoint ptr %next14.sink.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 0, ptr %next14.sink.i, align 4
  %dma_completion.i = getelementptr inbounds %struct.sahara_dev, ptr %17, i32 0, i32 7
  %141 = ptrtoint ptr %dma_completion.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 0, ptr %dma_completion.i, align 4
  %hw_phys_desc16.i = getelementptr inbounds %struct.sahara_dev, ptr %17, i32 0, i32 12
  %142 = ptrtoint ptr %hw_phys_desc16.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %hw_phys_desc16.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !273
  tail call void @arm_heavy_mb() #9
  %144 = tail call i32 @llvm.bswap.i32(i32 %143) #9
  %regs_base.i.i = getelementptr inbounds %struct.sahara_dev, ptr %17, i32 0, i32 2
  %145 = ptrtoint ptr %regs_base.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %regs_base.i.i, align 4
  %add.ptr.i80.i = getelementptr i8, ptr %146, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i80.i, i32 %144) #9, !srcloc !274
  %call20.i = tail call i32 @wait_for_completion_timeout(ptr noundef %dma_completion.i, i32 noundef 100) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %tobool21.not.i = icmp eq i32 %call20.i, 0
  br i1 %tobool21.not.i, label %do.end.i, label %if.end23.i

do.end.i:                                         ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #11
  %147 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %17, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %148, ptr noundef nonnull @.str.99) #12
  br label %if.end68

if.end23.i:                                       ; preds = %if.end15.i
  %sg_in_idx.i = getelementptr inbounds %struct.ahash_request, ptr %call54, i32 2, i32 5, i32 12
  %149 = ptrtoint ptr %sg_in_idx.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %sg_in_idx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %150)
  %tobool24.not.i = icmp eq i32 %150, 0
  br i1 %tobool24.not.i, label %if.end23.i.if.end27.i_crit_edge, label %if.then25.i

if.end23.i.if.end27.i_crit_edge:                  ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27.i

if.then25.i:                                      ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #11
  %151 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %17, align 4
  %in_sg.i = getelementptr inbounds %struct.sahara_dev, ptr %17, i32 0, i32 22
  %153 = ptrtoint ptr %in_sg.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %in_sg.i, align 4
  %nb_in_sg.i = getelementptr inbounds %struct.sahara_dev, ptr %17, i32 0, i32 23
  %155 = ptrtoint ptr %nb_in_sg.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %nb_in_sg.i, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %152, ptr noundef %154, i32 noundef %156, i32 noundef 1, i32 noundef 0) #9
  br label %if.end27.i

if.end27.i:                                       ; preds = %if.then25.i, %if.end23.i.if.end27.i_crit_edge
  %context28.i = getelementptr inbounds %struct.ahash_request, ptr %call54, i32 2
  %context_base30.i = getelementptr inbounds %struct.sahara_dev, ptr %17, i32 0, i32 17
  %157 = ptrtoint ptr %context_base30.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %context_base30.i, align 4
  %context_size31.i = getelementptr inbounds %struct.ahash_request, ptr %call54, i32 2, i32 5, i32 4
  %159 = ptrtoint ptr %context_size31.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %context_size31.i, align 4
  %161 = call ptr @memcpy(ptr %context28.i, ptr %158, i32 %160)
  %result.i = getelementptr inbounds %struct.ahash_request, ptr %call54, i32 0, i32 3
  %162 = ptrtoint ptr %result.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %result.i, align 32
  %tobool32.not.i = icmp eq ptr %163, null
  br i1 %tobool32.not.i, label %if.end27.i.if.end68_crit_edge, label %if.then33.i

if.end27.i.if.end68_crit_edge:                    ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end68

if.then33.i:                                      ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #11
  %digest_size.i = getelementptr inbounds %struct.ahash_request, ptr %call54, i32 2, i32 5
  %164 = ptrtoint ptr %digest_size.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %digest_size.i, align 4
  %166 = call ptr @memcpy(ptr %163, ptr %context28.i, i32 %165)
  br label %if.end68

if.else:                                          ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i = getelementptr i8, ptr %call54, i32 -16
  %call67 = tail call fastcc i32 @sahara_aes_process(ptr noundef %add.ptr.i)
  br label %if.end68

if.end68:                                         ; preds = %if.else, %if.then33.i, %if.end27.i.if.end68_crit_edge, %do.end.i, %sahara_sha_prepare_request.exit.i
  %ret.0 = phi i32 [ %call67, %if.else ], [ -110, %do.end.i ], [ 0, %sahara_sha_prepare_request.exit.i ], [ 0, %if.then33.i ], [ 0, %if.end27.i.if.end68_crit_edge ]
  %complete69 = getelementptr inbounds %struct.crypto_async_request, ptr %call54, i32 0, i32 1
  %167 = ptrtoint ptr %complete69 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %complete69, align 4
  tail call void %168(ptr noundef nonnull %call54, i32 noundef %ret.0) #9
  br label %do.cond71

if.end70:                                         ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @schedule() #9
  br label %do.cond71

do.cond71:                                        ; preds = %if.end70, %if.end68
  %call72 = tail call zeroext i1 @kthread_should_stop() #9
  br i1 %call72, label %do.end75, label %do.cond71.__here_crit_edge

do.cond71.__here_crit_edge:                       ; preds = %do.cond71
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

do.end75:                                         ; preds = %do.cond71
  call void @__sanitizer_cov_trace_pc() #11
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sahara_register_algs(ptr nocapture noundef readonly %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @crypto_register_skcipher(ptr noundef nonnull @aes_algs) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.inc, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc:                                          ; preds = %entry
  %call.1 = tail call i32 @crypto_register_skcipher(ptr noundef getelementptr inbounds ([2 x %struct.skcipher_alg], ptr @aes_algs, i32 0, i32 1)) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1)
  %tobool.not.1 = icmp eq i32 %call.1, 0
  br i1 %tobool.not.1, label %for.inc.1, label %for.inc.for.body42_crit_edge

for.inc.for.body42_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body42

for.inc.1:                                        ; preds = %for.inc
  %call5 = tail call i32 @crypto_register_ahash(ptr noundef nonnull @sha_v3_algs) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %for.end11, label %for.inc.1.for.body42_crit_edge

for.inc.1.for.body42_crit_edge:                   ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body42

for.end11:                                        ; preds = %for.inc.1
  %version = getelementptr inbounds %struct.sahara_dev, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp12 = icmp ugt i32 %1, 3
  br i1 %cmp12, label %for.body16, label %for.end11.cleanup_crit_edge

for.end11.cleanup_crit_edge:                      ; preds = %for.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body16:                                       ; preds = %for.end11
  %call18 = tail call i32 @crypto_register_ahash(ptr noundef nonnull @sha_v4_algs) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %for.body16.cleanup_crit_edge, label %for.body35.lr.ph

for.body16.cleanup_crit_edge:                     ; preds = %for.body16
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body35.lr.ph:                                 ; preds = %for.body16
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @crypto_unregister_ahash(ptr noundef nonnull @sha_v3_algs) #9
  br label %for.body42

for.body42:                                       ; preds = %for.body35.lr.ph, %for.inc.1.for.body42_crit_edge, %for.inc.for.body42_crit_edge
  %err.1.ph = phi i32 [ %call.1, %for.inc.for.body42_crit_edge ], [ %call5, %for.inc.1.for.body42_crit_edge ], [ %call18, %for.body35.lr.ph ]
  tail call void @crypto_unregister_skcipher(ptr noundef nonnull @aes_algs) #9
  br i1 %tobool.not.1, label %for.body42.1, label %for.body42.cleanup_crit_edge

for.body42.cleanup_crit_edge:                     ; preds = %for.body42
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body42.1:                                     ; preds = %for.body42
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @crypto_unregister_skcipher(ptr noundef getelementptr inbounds ([2 x %struct.skcipher_alg], ptr @aes_algs, i32 0, i32 1)) #9
  br label %cleanup

cleanup:                                          ; preds = %for.body42.1, %for.body42.cleanup_crit_edge, %for.body16.cleanup_crit_edge, %for.end11.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.body16.cleanup_crit_edge ], [ 0, %for.end11.cleanup_crit_edge ], [ %call, %entry.cleanup_crit_edge ], [ %err.1.ph, %for.body42.1 ], [ %err.1.ph, %for.body42.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kthread_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dmam_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_dequeue_request(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sahara_aes_process(ptr nocapture noundef %req) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @dev_ptr, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sahara_aes_process.__UNIQUE_ID_ddebug278, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sahara_aes_process, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !281

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %3 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %req, align 128
  %src = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 2
  %5 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %src, align 8
  %dst = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 3
  %7 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dst, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sahara_aes_process.__UNIQUE_ID_ddebug278, ptr noundef %2, ptr noundef nonnull @.str.107, i32 noundef %4, ptr noundef %6, ptr noundef %8) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %9 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %req, align 128
  %total = getelementptr inbounds %struct.sahara_dev, ptr %0, i32 0, i32 21
  %11 = ptrtoint ptr %total to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %total, align 4
  %src4 = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 2
  %12 = ptrtoint ptr %src4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %src4, align 8
  %in_sg = getelementptr inbounds %struct.sahara_dev, ptr %0, i32 0, i32 22
  %14 = ptrtoint ptr %in_sg to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %in_sg, align 4
  %dst5 = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 3
  %15 = ptrtoint ptr %dst5 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dst5, align 4
  %out_sg = getelementptr inbounds %struct.sahara_dev, ptr %0, i32 0, i32 24
  %17 = ptrtoint ptr %out_sg to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %16, ptr %out_sg, align 4
  %__ctx.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 6
  %tfm.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 3
  %18 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tfm.i, align 16
  %__crt_ctx.i.i = getelementptr i8, ptr %19, i32 128
  %20 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %__ctx.i, align 128
  %and = and i32 %21, 15
  store i32 %and, ptr %__ctx.i, align 128
  %flags = getelementptr inbounds %struct.sahara_dev, ptr %0, i32 0, i32 10
  %22 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %flags, align 4
  %and9 = and i32 %23, -16
  %or = or i32 %and9, %and
  store i32 %or, ptr %flags, align 4
  %and13 = and i32 %21, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %do.end.if.end18_crit_edge, label %land.lhs.true

do.end.if.end18_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

land.lhs.true:                                    ; preds = %do.end
  %iv = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 1
  %24 = ptrtoint ptr %iv to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %iv, align 4
  %tobool15.not = icmp eq ptr %25, null
  br i1 %tobool15.not, label %land.lhs.true.if.end18_crit_edge, label %if.then16

land.lhs.true.if.end18_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

if.then16:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %iv_base = getelementptr inbounds %struct.sahara_dev, ptr %0, i32 0, i32 15
  %26 = ptrtoint ptr %iv_base to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %iv_base, align 4
  %28 = call ptr @memcpy(ptr %27, ptr %25, i32 16)
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %land.lhs.true.if.end18_crit_edge, %do.end.if.end18_crit_edge
  %ctx19 = getelementptr inbounds %struct.sahara_dev, ptr %0, i32 0, i32 8
  %29 = ptrtoint ptr %ctx19 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %__crt_ctx.i.i, ptr %ctx19, align 4
  %dma_completion = getelementptr inbounds %struct.sahara_dev, ptr %0, i32 0, i32 7
  %30 = ptrtoint ptr %dma_completion to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %dma_completion, align 4
  %31 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %__crt_ctx.i.i, align 4
  %and.i = and i32 %32, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end18.if.end26.i_crit_edge, label %if.then.i

if.end18.if.end26.i_crit_edge:                    ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26.i

if.then.i:                                        ; preds = %if.end18
  %key_base.i = getelementptr inbounds %struct.sahara_dev, ptr %0, i32 0, i32 13
  %33 = ptrtoint ptr %key_base.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %key_base.i, align 4
  %key.i = getelementptr i8, ptr %19, i32 136
  %keylen.i = getelementptr i8, ptr %19, i32 132
  %35 = ptrtoint ptr %keylen.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %keylen.i, align 4
  %37 = call ptr @memcpy(ptr %34, ptr %key.i, i32 %36)
  %38 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %__crt_ctx.i.i, align 4
  %and3.i = and i32 %39, -9
  store i32 %and3.i, ptr %__crt_ctx.i.i, align 4
  %40 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %flags, align 4
  %and5.i = and i32 %41, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %tobool6.not.i = icmp eq i32 %and5.i, 0
  %hw_desc10.i = getelementptr inbounds %struct.sahara_dev, ptr %0, i32 0, i32 11
  %42 = ptrtoint ptr %hw_desc10.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %hw_desc10.i, align 4
  %len112.i = getelementptr inbounds %struct.sahara_hw_desc, ptr %43, i32 0, i32 1
  br i1 %tobool6.not.i, label %if.else.i, label %if.then7.i

if.then7.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %44 = ptrtoint ptr %len112.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 16, ptr %len112.i, align 4
  %iv_phys_base.i = getelementptr inbounds %struct.sahara_dev, ptr %0, i32 0, i32 16
  %45 = ptrtoint ptr %iv_phys_base.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %iv_phys_base.i, align 4
  br label %if.end.i

if.else.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %47 = ptrtoint ptr %len112.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %len112.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then7.i
  %.sink.i = phi i32 [ 0, %if.else.i ], [ %46, %if.then7.i ]
  %48 = ptrtoint ptr %hw_desc10.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %hw_desc10.i, align 4
  %p115.i = getelementptr inbounds %struct.sahara_hw_desc, ptr %49, i32 0, i32 2
  %50 = ptrtoint ptr %p115.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %.sink.i, ptr %p115.i, align 4
  %51 = ptrtoint ptr %keylen.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %keylen.i, align 4
  %53 = load ptr, ptr %hw_desc10.i, align 4
  %len2.i = getelementptr inbounds %struct.sahara_hw_desc, ptr %53, i32 0, i32 3
  %54 = ptrtoint ptr %len2.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %52, ptr %len2.i, align 4
  %key_phys_base.i = getelementptr inbounds %struct.sahara_dev, ptr %0, i32 0, i32 14
  %55 = ptrtoint ptr %key_phys_base.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %key_phys_base.i, align 4
  %57 = load ptr, ptr %hw_desc10.i, align 4
  %p2.i = getelementptr inbounds %struct.sahara_hw_desc, ptr %57, i32 0, i32 4
  %58 = ptrtoint ptr %p2.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %56, ptr %p2.i, align 4
  %arrayidx21.i = getelementptr %struct.sahara_dev, ptr %0, i32 0, i32 12, i32 1
  %59 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx21.i, align 4
  %61 = load ptr, ptr %hw_desc10.i, align 4
  %next.i = getelementptr inbounds %struct.sahara_hw_desc, ptr %61, i32 0, i32 5
  %62 = ptrtoint ptr %next.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %60, ptr %next.i, align 4
  %63 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %flags, align 4
  %and.i.i = and i32 %64, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %spec.select.i.i = select i1 %tobool.not.i.i, i32 -1853358080, i32 294125576
  %and2.i.i = and i32 %64, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %tobool3.not.i.i = icmp eq i32 %and2.i.i, 0
  %xor6.i.i = xor i32 %spec.select.i.i, -2147483644
  %hdr.1.i.i = select i1 %tobool3.not.i.i, i32 %spec.select.i.i, i32 %xor6.i.i
  %65 = ptrtoint ptr %hw_desc10.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %hw_desc10.i, align 4
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %hdr.1.i.i, ptr %66, align 4
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.end.i, %if.end18.if.end26.i_crit_edge
  %idx.0.i = phi i32 [ 1, %if.end.i ], [ 0, %if.end18.if.end26.i_crit_edge ]
  %68 = ptrtoint ptr %in_sg to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %in_sg, align 4
  %70 = ptrtoint ptr %total to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %total, align 4
  %conv.i = zext i32 %71 to i64
  %call27.i = tail call i32 @sg_nents_for_len(ptr noundef %69, i64 noundef %conv.i) #9
  %nb_in_sg.i = getelementptr inbounds %struct.sahara_dev, ptr %0, i32 0, i32 23
  %72 = ptrtoint ptr %nb_in_sg.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %call27.i, ptr %nb_in_sg.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i)
  %cmp.i = icmp slt i32 %call27.i, 0
  br i1 %cmp.i, label %if.end26.i.sahara_hw_descriptor_create.exit_crit_edge, label %if.end32.i

if.end26.i.sahara_hw_descriptor_create.exit_crit_edge: ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sahara_hw_descriptor_create.exit

if.end32.i:                                       ; preds = %if.end26.i
  %73 = ptrtoint ptr %out_sg to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %out_sg, align 4
  %75 = ptrtoint ptr %total to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %total, align 4
  %conv34.i = zext i32 %76 to i64
  %call35.i = tail call i32 @sg_nents_for_len(ptr noundef %74, i64 noundef %conv34.i) #9
  %nb_out_sg.i = getelementptr inbounds %struct.sahara_dev, ptr %0, i32 0, i32 25
  %77 = ptrtoint ptr %nb_out_sg.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %call35.i, ptr %nb_out_sg.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35.i)
  %cmp37.i = icmp slt i32 %call35.i, 0
  br i1 %cmp37.i, label %if.end32.i.sahara_hw_descriptor_create.exit_crit_edge, label %if.end45.i

if.end32.i.sahara_hw_descriptor_create.exit_crit_edge: ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sahara_hw_descriptor_create.exit

if.end45.i:                                       ; preds = %if.end32.i
  %78 = ptrtoint ptr %nb_in_sg.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %nb_in_sg.i, align 4
  %add.i = add i32 %79, %call35.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %add.i)
  %cmp48.i = icmp sgt i32 %add.i, 20
  %80 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %0, align 4
  br i1 %cmp48.i, label %do.end53.i, label %if.end58.i

do.end53.i:                                       ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %81, ptr noundef nonnull @.str.104, i32 noundef %add.i) #12
  br label %cleanup

if.end58.i:                                       ; preds = %if.end45.i
  %82 = ptrtoint ptr %in_sg to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %in_sg, align 4
  %call62.i = tail call i32 @dma_map_sg_attrs(ptr noundef %81, ptr noundef %83, i32 noundef %79, i32 noundef 1, i32 noundef 0) #9
  %84 = ptrtoint ptr %nb_in_sg.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %nb_in_sg.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call62.i, i32 %85)
  %cmp64.not.i = icmp eq i32 %call62.i, %85
  %86 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %0, align 4
  br i1 %cmp64.not.i, label %if.end71.i, label %do.end69.i

do.end69.i:                                       ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %87, ptr noundef nonnull @.str.116) #12
  br label %unmap_in.i

if.end71.i:                                       ; preds = %if.end58.i
  %88 = ptrtoint ptr %out_sg to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %out_sg, align 4
  %90 = ptrtoint ptr %nb_out_sg.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %nb_out_sg.i, align 4
  %call75.i = tail call i32 @dma_map_sg_attrs(ptr noundef %87, ptr noundef %89, i32 noundef %91, i32 noundef 2, i32 noundef 0) #9
  %92 = ptrtoint ptr %nb_out_sg.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %nb_out_sg.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call75.i, i32 %93)
  %cmp77.not.i = icmp eq i32 %call75.i, %93
  br i1 %cmp77.not.i, label %if.end84.i, label %do.end82.i

do.end82.i:                                       ; preds = %if.end71.i
  call void @__sanitizer_cov_trace_pc() #11
  %94 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %95, ptr noundef nonnull @.str.119) #12
  %96 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %0, align 4
  %98 = ptrtoint ptr %out_sg to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %out_sg, align 4
  %100 = ptrtoint ptr %nb_out_sg.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %nb_out_sg.i, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %97, ptr noundef %99, i32 noundef %101, i32 noundef 2, i32 noundef 0) #9
  br label %unmap_in.i

if.end84.i:                                       ; preds = %if.end71.i
  %hw_phys_link.i = getelementptr inbounds %struct.sahara_dev, ptr %0, i32 0, i32 20
  %102 = ptrtoint ptr %hw_phys_link.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %hw_phys_link.i, align 4
  %arrayidx87.i = getelementptr %struct.sahara_dev, ptr %0, i32 0, i32 11, i32 %idx.0.i
  %104 = ptrtoint ptr %arrayidx87.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %arrayidx87.i, align 4
  %p188.i = getelementptr inbounds %struct.sahara_hw_desc, ptr %105, i32 0, i32 2
  %106 = ptrtoint ptr %p188.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %103, ptr %p188.i, align 4
  %107 = ptrtoint ptr %nb_in_sg.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %nb_in_sg.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %108)
  %cmp91302.i = icmp sgt i32 %108, 0
  br i1 %cmp91302.i, label %for.body.preheader.i, label %if.end84.i.for.end.i_crit_edge

if.end84.i.for.end.i_crit_edge:                   ; preds = %if.end84.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.body.preheader.i:                             ; preds = %if.end84.i
  %109 = ptrtoint ptr %in_sg to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %in_sg, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.preheader.i
  %i.0304.i = phi i32 [ %inc112.pre-phi.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %sg.0303.i = phi ptr [ %sg.1.i, %for.inc.i.for.body.i_crit_edge ], [ %110, %for.body.preheader.i ]
  %length.i = getelementptr inbounds %struct.scatterlist, ptr %sg.0303.i, i32 0, i32 2
  %111 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %length.i, align 4
  %arrayidx93.i = getelementptr %struct.sahara_dev, ptr %0, i32 0, i32 19, i32 %i.0304.i
  %113 = ptrtoint ptr %arrayidx93.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %arrayidx93.i, align 4
  %115 = ptrtoint ptr %114 to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %112, ptr %114, align 4
  %dma_address.i = getelementptr inbounds %struct.scatterlist, ptr %sg.0303.i, i32 0, i32 3
  %116 = ptrtoint ptr %dma_address.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %dma_address.i, align 4
  %118 = load ptr, ptr %arrayidx93.i, align 4
  %p.i = getelementptr inbounds %struct.sahara_hw_link, ptr %118, i32 0, i32 1
  %119 = ptrtoint ptr %p.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %117, ptr %p.i, align 4
  %120 = ptrtoint ptr %nb_in_sg.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %nb_in_sg.i, align 4
  %sub.i = add i32 %121, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0304.i, i32 %sub.i)
  %cmp97.i = icmp eq i32 %i.0304.i, %sub.i
  br i1 %cmp97.i, label %if.then99.i, label %if.else103.i

if.then99.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %122 = ptrtoint ptr %arrayidx93.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %arrayidx93.i, align 4
  %next102.i = getelementptr inbounds %struct.sahara_hw_link, ptr %123, i32 0, i32 2
  %124 = ptrtoint ptr %next102.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 0, ptr %next102.i, align 4
  %.pre.i = add nuw nsw i32 %i.0304.i, 1
  br label %for.inc.i

if.else103.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %add105.i = add nuw nsw i32 %i.0304.i, 1
  %arrayidx106.i = getelementptr %struct.sahara_dev, ptr %0, i32 0, i32 20, i32 %add105.i
  %125 = ptrtoint ptr %arrayidx106.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %arrayidx106.i, align 4
  %127 = ptrtoint ptr %arrayidx93.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %arrayidx93.i, align 4
  %next109.i = getelementptr inbounds %struct.sahara_hw_link, ptr %128, i32 0, i32 2
  %129 = ptrtoint ptr %next109.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %126, ptr %next109.i, align 4
  %call110.i = tail call ptr @sg_next(ptr noundef %sg.0303.i) #9
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.else103.i, %if.then99.i
  %inc112.pre-phi.i = phi i32 [ %.pre.i, %if.then99.i ], [ %add105.i, %if.else103.i ]
  %sg.1.i = phi ptr [ %sg.0303.i, %if.then99.i ], [ %call110.i, %if.else103.i ]
  %130 = ptrtoint ptr %nb_in_sg.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %nb_in_sg.i, align 4
  %cmp91.i = icmp slt i32 %inc112.pre-phi.i, %131
  br i1 %cmp91.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.for.end.i_crit_edge

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.end84.i.for.end.i_crit_edge
  %i.0.lcssa.i = phi i32 [ 0, %if.end84.i.for.end.i_crit_edge ], [ %inc112.pre-phi.i, %for.inc.i.for.end.i_crit_edge ]
  %arrayidx114.i = getelementptr %struct.sahara_dev, ptr %0, i32 0, i32 20, i32 %i.0.lcssa.i
  %132 = ptrtoint ptr %arrayidx114.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %arrayidx114.i, align 4
  %134 = ptrtoint ptr %arrayidx87.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %arrayidx87.i, align 4
  %p2117.i = getelementptr inbounds %struct.sahara_hw_desc, ptr %135, i32 0, i32 4
  %136 = ptrtoint ptr %p2117.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 %133, ptr %p2117.i, align 4
  %137 = ptrtoint ptr %nb_out_sg.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %nb_out_sg.i, align 4
  %add121306.i = add i32 %138, %i.0.lcssa.i
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa.i, i32 %add121306.i)
  %cmp122307.i = icmp slt i32 %i.0.lcssa.i, %add121306.i
  br i1 %cmp122307.i, label %for.body124.lr.ph.i, label %for.end.i.sahara_hw_descriptor_create.exit.thread75_crit_edge

for.end.i.sahara_hw_descriptor_create.exit.thread75_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sahara_hw_descriptor_create.exit.thread75

for.body124.lr.ph.i:                              ; preds = %for.end.i
  %139 = ptrtoint ptr %out_sg to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %out_sg, align 4
  %add134.i = add i32 %i.0.lcssa.i, -1
  br label %for.body124.i

for.body124.i:                                    ; preds = %for.inc151.i.for.body124.i_crit_edge, %for.body124.lr.ph.i
  %j.0309.i = phi i32 [ %i.0.lcssa.i, %for.body124.lr.ph.i ], [ %inc152.pre-phi.i, %for.inc151.i.for.body124.i_crit_edge ]
  %sg.2308.i = phi ptr [ %140, %for.body124.lr.ph.i ], [ %sg.3.i, %for.inc151.i.for.body124.i_crit_edge ]
  %length125.i = getelementptr inbounds %struct.scatterlist, ptr %sg.2308.i, i32 0, i32 2
  %141 = ptrtoint ptr %length125.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %length125.i, align 4
  %arrayidx127.i = getelementptr %struct.sahara_dev, ptr %0, i32 0, i32 19, i32 %j.0309.i
  %143 = ptrtoint ptr %arrayidx127.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %arrayidx127.i, align 4
  %145 = ptrtoint ptr %144 to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 %142, ptr %144, align 4
  %dma_address129.i = getelementptr inbounds %struct.scatterlist, ptr %sg.2308.i, i32 0, i32 3
  %146 = ptrtoint ptr %dma_address129.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %dma_address129.i, align 4
  %148 = load ptr, ptr %arrayidx127.i, align 4
  %p132.i = getelementptr inbounds %struct.sahara_hw_link, ptr %148, i32 0, i32 1
  %149 = ptrtoint ptr %p132.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 %147, ptr %p132.i, align 4
  %150 = ptrtoint ptr %nb_out_sg.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %nb_out_sg.i, align 4
  %sub135.i = add i32 %add134.i, %151
  call void @__sanitizer_cov_trace_cmp4(i32 %j.0309.i, i32 %sub135.i)
  %cmp136.i = icmp eq i32 %j.0309.i, %sub135.i
  br i1 %cmp136.i, label %if.then138.i, label %if.else142.i

if.then138.i:                                     ; preds = %for.body124.i
  call void @__sanitizer_cov_trace_pc() #11
  %152 = ptrtoint ptr %arrayidx127.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %arrayidx127.i, align 4
  %next141.i = getelementptr inbounds %struct.sahara_hw_link, ptr %153, i32 0, i32 2
  %154 = ptrtoint ptr %next141.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 0, ptr %next141.i, align 4
  %.pre311.i = add nuw nsw i32 %j.0309.i, 1
  br label %for.inc151.i

if.else142.i:                                     ; preds = %for.body124.i
  call void @__sanitizer_cov_trace_pc() #11
  %add144.i = add nuw nsw i32 %j.0309.i, 1
  %arrayidx145.i = getelementptr %struct.sahara_dev, ptr %0, i32 0, i32 20, i32 %add144.i
  %155 = ptrtoint ptr %arrayidx145.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %arrayidx145.i, align 4
  %157 = ptrtoint ptr %arrayidx127.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %arrayidx127.i, align 4
  %next148.i = getelementptr inbounds %struct.sahara_hw_link, ptr %158, i32 0, i32 2
  %159 = ptrtoint ptr %next148.i to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 %156, ptr %next148.i, align 4
  %call149.i = tail call ptr @sg_next(ptr noundef %sg.2308.i) #9
  br label %for.inc151.i

for.inc151.i:                                     ; preds = %if.else142.i, %if.then138.i
  %inc152.pre-phi.i = phi i32 [ %.pre311.i, %if.then138.i ], [ %add144.i, %if.else142.i ]
  %sg.3.i = phi ptr [ %sg.2308.i, %if.then138.i ], [ %call149.i, %if.else142.i ]
  %160 = ptrtoint ptr %nb_out_sg.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %nb_out_sg.i, align 4
  %add121.i = add i32 %161, %i.0.lcssa.i
  %cmp122.i = icmp slt i32 %inc152.pre-phi.i, %add121.i
  br i1 %cmp122.i, label %for.inc151.i.for.body124.i_crit_edge, label %for.inc151.i.sahara_hw_descriptor_create.exit.thread75_crit_edge

for.inc151.i.sahara_hw_descriptor_create.exit.thread75_crit_edge: ; preds = %for.inc151.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sahara_hw_descriptor_create.exit.thread75

for.inc151.i.for.body124.i_crit_edge:             ; preds = %for.inc151.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body124.i

sahara_hw_descriptor_create.exit.thread75:        ; preds = %for.inc151.i.sahara_hw_descriptor_create.exit.thread75_crit_edge, %for.end.i.sahara_hw_descriptor_create.exit.thread75_crit_edge
  %162 = ptrtoint ptr %arrayidx87.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %arrayidx87.i, align 4
  %164 = ptrtoint ptr %163 to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 -1870331904, ptr %163, align 4
  %165 = ptrtoint ptr %total to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %total, align 4
  %167 = load ptr, ptr %arrayidx87.i, align 4
  %len1161.i = getelementptr inbounds %struct.sahara_hw_desc, ptr %167, i32 0, i32 1
  %168 = ptrtoint ptr %len1161.i to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 %166, ptr %len1161.i, align 4
  %169 = load i32, ptr %total, align 4
  %170 = load ptr, ptr %arrayidx87.i, align 4
  %len2165.i = getelementptr inbounds %struct.sahara_hw_desc, ptr %170, i32 0, i32 3
  %171 = ptrtoint ptr %len2165.i to i32
  call void @__asan_store4_noabort(i32 %171)
  store i32 %169, ptr %len2165.i, align 4
  %172 = load ptr, ptr %arrayidx87.i, align 4
  %next168.i = getelementptr inbounds %struct.sahara_hw_desc, ptr %172, i32 0, i32 5
  %173 = ptrtoint ptr %next168.i to i32
  call void @__asan_store4_noabort(i32 %173)
  store i32 0, ptr %next168.i, align 4
  %hw_phys_desc169.i = getelementptr inbounds %struct.sahara_dev, ptr %0, i32 0, i32 12
  %174 = ptrtoint ptr %hw_phys_desc169.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %hw_phys_desc169.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !273
  tail call void @arm_heavy_mb() #9
  %176 = tail call i32 @llvm.bswap.i32(i32 %175) #9
  %regs_base.i.i = getelementptr inbounds %struct.sahara_dev, ptr %0, i32 0, i32 2
  %177 = ptrtoint ptr %regs_base.i.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %regs_base.i.i, align 4
  %add.ptr.i.i70 = getelementptr i8, ptr %178, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i70, i32 %176) #9, !srcloc !274
  br label %if.end23

unmap_in.i:                                       ; preds = %do.end82.i, %do.end69.i
  %179 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %0, align 4
  %181 = ptrtoint ptr %in_sg to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %in_sg, align 4
  %183 = ptrtoint ptr %nb_in_sg.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %nb_in_sg.i, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %180, ptr noundef %182, i32 noundef %184, i32 noundef 1, i32 noundef 0) #9
  br label %cleanup

sahara_hw_descriptor_create.exit:                 ; preds = %if.end32.i.sahara_hw_descriptor_create.exit_crit_edge, %if.end26.i.sahara_hw_descriptor_create.exit_crit_edge
  %.str.101.sink = phi ptr [ @.str.101, %if.end26.i.sahara_hw_descriptor_create.exit_crit_edge ], [ @.str.111, %if.end32.i.sahara_hw_descriptor_create.exit_crit_edge ]
  %retval.0.i71.in = phi ptr [ %nb_in_sg.i, %if.end26.i.sahara_hw_descriptor_create.exit_crit_edge ], [ %nb_out_sg.i, %if.end32.i.sahara_hw_descriptor_create.exit_crit_edge ]
  %185 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %186, ptr noundef nonnull %.str.101.sink) #12
  %187 = ptrtoint ptr %retval.0.i71.in to i32
  call void @__asan_load4_noabort(i32 %187)
  %retval.0.i71 = load i32, ptr %retval.0.i71.in, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i71)
  %tobool21.not = icmp eq i32 %retval.0.i71, 0
  br i1 %tobool21.not, label %sahara_hw_descriptor_create.exit.if.end23_crit_edge, label %sahara_hw_descriptor_create.exit.cleanup_crit_edge

sahara_hw_descriptor_create.exit.cleanup_crit_edge: ; preds = %sahara_hw_descriptor_create.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sahara_hw_descriptor_create.exit.if.end23_crit_edge: ; preds = %sahara_hw_descriptor_create.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

if.end23:                                         ; preds = %sahara_hw_descriptor_create.exit.if.end23_crit_edge, %sahara_hw_descriptor_create.exit.thread75
  %call26 = tail call i32 @wait_for_completion_timeout(ptr noundef %dma_completion, i32 noundef 100) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  %188 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %0, align 4
  br i1 %tobool27.not, label %do.end31, label %if.end33

do.end31:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %189, ptr noundef nonnull @.str.108) #12
  br label %cleanup

if.end33:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  %190 = ptrtoint ptr %out_sg to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %out_sg, align 4
  %nb_out_sg = getelementptr inbounds %struct.sahara_dev, ptr %0, i32 0, i32 25
  %192 = ptrtoint ptr %nb_out_sg to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %nb_out_sg, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %189, ptr noundef %191, i32 noundef %193, i32 noundef 2, i32 noundef 0) #9
  %194 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %0, align 4
  %196 = ptrtoint ptr %in_sg to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %in_sg, align 4
  %198 = ptrtoint ptr %nb_in_sg.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %nb_in_sg.i, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %195, ptr noundef %197, i32 noundef %199, i32 noundef 1, i32 noundef 0) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end33, %do.end31, %sahara_hw_descriptor_create.exit.cleanup_crit_edge, %unmap_in.i, %do.end53.i
  %retval.0 = phi i32 [ 0, %if.end33 ], [ -110, %do.end31 ], [ -22, %sahara_hw_descriptor_create.exit.cleanup_crit_edge ], [ -22, %do.end53.i ], [ -22, %unmap_in.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_should_stop() local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sahara_sha_hw_data_descriptor_create(ptr nocapture noundef %dev, ptr nocapture noundef %rctx, i32 noundef %index) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %first = getelementptr inbounds %struct.sahara_sha_reqctx, ptr %rctx, i32 0, i32 12
  %0 = ptrtoint ptr %first to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %first, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %mode.i = getelementptr inbounds %struct.sahara_sha_reqctx, ptr %rctx, i32 0, i32 3
  %2 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mode.i, align 4
  %last.i = getelementptr inbounds %struct.sahara_sha_reqctx, ptr %rctx, i32 0, i32 11
  %4 = ptrtoint ptr %last.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %last.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool3.not.i = icmp eq i32 %5, 0
  %hdr.1.i.v = select i1 %tobool3.not.i, i32 546111520, i32 546111524
  %hdr.1.i = or i32 %hdr.1.i.v, %3
  %call.i.i.i = tail call i32 @__sw_hweight32(i32 noundef %hdr.1.i) #9
  %6 = xor i32 %call.i.i.i, -1
  %7 = shl i32 %6, 31
  %8 = or i32 %7, %hdr.1.i
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %.sink = phi i32 [ %8, %if.then ], [ -1601896448, %entry.if.end_crit_edge ]
  %arrayidx2 = getelementptr %struct.sahara_dev, ptr %dev, i32 0, i32 11, i32 %index
  %9 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx2, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %.sink, ptr %10, align 4
  %total = getelementptr inbounds %struct.sahara_sha_reqctx, ptr %rctx, i32 0, i32 10
  %12 = ptrtoint ptr %total to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %total, align 4
  %arrayidx5 = getelementptr %struct.sahara_dev, ptr %dev, i32 0, i32 11, i32 %index
  %14 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx5, align 4
  %len1 = getelementptr inbounds %struct.sahara_hw_desc, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %len1 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %13, ptr %len1, align 4
  %17 = load ptr, ptr %arrayidx5, align 4
  %len18 = getelementptr inbounds %struct.sahara_hw_desc, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %len18 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %len18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp = icmp eq i32 %19, 0
  br i1 %cmp, label %if.then9, label %if.else12

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %p1 = getelementptr inbounds %struct.sahara_hw_desc, ptr %17, i32 0, i32 2
  %20 = ptrtoint ptr %p1 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %p1, align 4
  %sg_in_idx = getelementptr inbounds %struct.sahara_sha_reqctx, ptr %rctx, i32 0, i32 7
  %21 = ptrtoint ptr %sg_in_idx to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %sg_in_idx, align 4
  br label %if.end22

if.else12:                                        ; preds = %if.end
  %arrayidx13 = getelementptr %struct.sahara_dev, ptr %dev, i32 0, i32 20, i32 %index
  %22 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx13, align 4
  %p116 = getelementptr inbounds %struct.sahara_hw_desc, ptr %17, i32 0, i32 2
  %24 = ptrtoint ptr %p116 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %p116, align 4
  %in_sg.i = getelementptr inbounds %struct.sahara_sha_reqctx, ptr %rctx, i32 0, i32 8
  %25 = ptrtoint ptr %in_sg.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %in_sg.i, align 4
  %in_sg1.i = getelementptr inbounds %struct.sahara_dev, ptr %dev, i32 0, i32 22
  %27 = ptrtoint ptr %in_sg1.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %26, ptr %in_sg1.i, align 4
  %28 = ptrtoint ptr %total to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %total, align 4
  %conv.i = zext i32 %29 to i64
  %call.i = tail call i32 @sg_nents_for_len(ptr noundef %26, i64 noundef %conv.i) #9
  %nb_in_sg.i = getelementptr inbounds %struct.sahara_dev, ptr %dev, i32 0, i32 23
  %30 = ptrtoint ptr %nb_in_sg.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %call.i, ptr %nb_in_sg.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.else12
  call void @__sanitizer_cov_trace_pc() #11
  %31 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.101) #12
  %33 = ptrtoint ptr %nb_in_sg.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %nb_in_sg.i, align 4
  br label %sahara_sha_hw_links_create.exit

if.end.i:                                         ; preds = %if.else12
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %call.i)
  %cmp7.i = icmp ugt i32 %call.i, 20
  br i1 %cmp7.i, label %do.end12.i, label %if.end15.i

do.end12.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %35 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev, align 4
  %nb_out_sg.i = getelementptr inbounds %struct.sahara_dev, ptr %dev, i32 0, i32 25
  %37 = ptrtoint ptr %nb_out_sg.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %nb_out_sg.i, align 4
  %add.i = add i32 %38, %call.i
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.104, i32 noundef %add.i) #12
  br label %sahara_sha_hw_links_create.exit.thread

if.end15.i:                                       ; preds = %if.end.i
  %39 = ptrtoint ptr %in_sg1.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %in_sg1.i, align 4
  %41 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev, align 4
  %call20.i = tail call i32 @dma_map_sg_attrs(ptr noundef %42, ptr noundef %40, i32 noundef %call.i, i32 noundef 1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %tobool.not.i1 = icmp eq i32 %call20.i, 0
  br i1 %tobool.not.i1, label %if.end15.i.sahara_sha_hw_links_create.exit.thread_crit_edge, label %for.cond.preheader.i

if.end15.i.sahara_sha_hw_links_create.exit.thread_crit_edge: ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sahara_sha_hw_links_create.exit.thread

for.cond.preheader.i:                             ; preds = %if.end15.i
  %43 = ptrtoint ptr %nb_in_sg.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %nb_in_sg.i, align 4
  %add2478.i = add i32 %44, %index
  call void @__sanitizer_cov_trace_cmp4(i32 %add2478.i, i32 %index)
  %cmp2579.i = icmp ugt i32 %add2478.i, %index
  br i1 %cmp2579.i, label %for.body.lr.ph.i, label %for.cond.preheader.i.sahara_sha_hw_links_create.exit_crit_edge

for.cond.preheader.i.sahara_sha_hw_links_create.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sahara_sha_hw_links_create.exit

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %add30.i = add i32 %index, -1
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.081.i = phi i32 [ %index, %for.body.lr.ph.i ], [ %inc.pre-phi.i, %for.inc.i.for.body.i_crit_edge ]
  %sg.080.i = phi ptr [ %40, %for.body.lr.ph.i ], [ %sg.1.i, %for.inc.i.for.body.i_crit_edge ]
  %length.i = getelementptr inbounds %struct.scatterlist, ptr %sg.080.i, i32 0, i32 2
  %45 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %length.i, align 4
  %arrayidx.i = getelementptr %struct.sahara_dev, ptr %dev, i32 0, i32 19, i32 %i.081.i
  %47 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx.i, align 4
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %46, ptr %48, align 4
  %dma_address.i = getelementptr inbounds %struct.scatterlist, ptr %sg.080.i, i32 0, i32 3
  %50 = ptrtoint ptr %dma_address.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %dma_address.i, align 4
  %52 = load ptr, ptr %arrayidx.i, align 4
  %p.i = getelementptr inbounds %struct.sahara_hw_link, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %p.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %51, ptr %p.i, align 4
  %54 = ptrtoint ptr %nb_in_sg.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %nb_in_sg.i, align 4
  %sub.i = add i32 %add30.i, %55
  call void @__sanitizer_cov_trace_cmp4(i32 %i.081.i, i32 %sub.i)
  %cmp31.i = icmp eq i32 %i.081.i, %sub.i
  br i1 %cmp31.i, label %if.then33.i, label %if.else.i

if.then33.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %56 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx.i, align 4
  %next.i = getelementptr inbounds %struct.sahara_hw_link, ptr %57, i32 0, i32 2
  %58 = ptrtoint ptr %next.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 0, ptr %next.i, align 4
  %.pre.i = add nuw i32 %i.081.i, 1
  br label %for.inc.i

if.else.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %add36.i = add nuw i32 %i.081.i, 1
  %arrayidx37.i = getelementptr %struct.sahara_dev, ptr %dev, i32 0, i32 20, i32 %add36.i
  %59 = ptrtoint ptr %arrayidx37.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx37.i, align 4
  %61 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %arrayidx.i, align 4
  %next40.i = getelementptr inbounds %struct.sahara_hw_link, ptr %62, i32 0, i32 2
  %63 = ptrtoint ptr %next40.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %60, ptr %next40.i, align 4
  %call41.i = tail call ptr @sg_next(ptr noundef %sg.080.i) #9
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.else.i, %if.then33.i
  %inc.pre-phi.i = phi i32 [ %.pre.i, %if.then33.i ], [ %add36.i, %if.else.i ]
  %sg.1.i = phi ptr [ %sg.080.i, %if.then33.i ], [ %call41.i, %if.else.i ]
  %64 = ptrtoint ptr %nb_in_sg.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %nb_in_sg.i, align 4
  %add24.i = add i32 %65, %index
  %cmp25.i = icmp ult i32 %inc.pre-phi.i, %add24.i
  br i1 %cmp25.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.sahara_sha_hw_links_create.exit_crit_edge

for.inc.i.sahara_sha_hw_links_create.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sahara_sha_hw_links_create.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

sahara_sha_hw_links_create.exit.thread:           ; preds = %if.end15.i.sahara_sha_hw_links_create.exit.thread_crit_edge, %do.end12.i
  %sg_in_idx183 = getelementptr inbounds %struct.sahara_sha_reqctx, ptr %rctx, i32 0, i32 7
  %66 = ptrtoint ptr %sg_in_idx183 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %index, ptr %sg_in_idx183, align 4
  br label %cleanup

sahara_sha_hw_links_create.exit:                  ; preds = %for.inc.i.sahara_sha_hw_links_create.exit_crit_edge, %for.cond.preheader.i.sahara_sha_hw_links_create.exit_crit_edge, %do.end.i
  %retval.0.i = phi i32 [ %34, %do.end.i ], [ %index, %for.cond.preheader.i.sahara_sha_hw_links_create.exit_crit_edge ], [ %inc.pre-phi.i, %for.inc.i.sahara_sha_hw_links_create.exit_crit_edge ]
  %sg_in_idx18 = getelementptr inbounds %struct.sahara_sha_reqctx, ptr %rctx, i32 0, i32 7
  %67 = ptrtoint ptr %sg_in_idx18 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %index, ptr %sg_in_idx18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp19 = icmp slt i32 %retval.0.i, 0
  br i1 %cmp19, label %sahara_sha_hw_links_create.exit.cleanup_crit_edge, label %sahara_sha_hw_links_create.exit.if.end22_crit_edge

sahara_sha_hw_links_create.exit.if.end22_crit_edge: ; preds = %sahara_sha_hw_links_create.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

sahara_sha_hw_links_create.exit.cleanup_crit_edge: ; preds = %sahara_sha_hw_links_create.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end22:                                         ; preds = %sahara_sha_hw_links_create.exit.if.end22_crit_edge, %if.then9
  %i.0 = phi i32 [ %index, %if.then9 ], [ %retval.0.i, %sahara_sha_hw_links_create.exit.if.end22_crit_edge ]
  %arrayidx24 = getelementptr %struct.sahara_dev, ptr %dev, i32 0, i32 20, i32 %i.0
  %68 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx24, align 4
  %70 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %arrayidx5, align 4
  %p2 = getelementptr inbounds %struct.sahara_hw_desc, ptr %71, i32 0, i32 4
  %72 = ptrtoint ptr %p2 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %69, ptr %p2, align 4
  %context_size = getelementptr inbounds %struct.sahara_sha_reqctx, ptr %rctx, i32 0, i32 5
  %73 = ptrtoint ptr %context_size to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %context_size, align 4
  %context_phys_base = getelementptr inbounds %struct.sahara_dev, ptr %dev, i32 0, i32 18
  %75 = ptrtoint ptr %context_phys_base to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %context_phys_base, align 4
  %arrayidx27 = getelementptr %struct.sahara_dev, ptr %dev, i32 0, i32 19, i32 %i.0
  %77 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %arrayidx27, align 4
  %p = getelementptr inbounds %struct.sahara_hw_link, ptr %78, i32 0, i32 1
  %79 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %76, ptr %p, align 4
  %80 = load ptr, ptr %arrayidx27, align 4
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %74, ptr %80, align 4
  %82 = load ptr, ptr %arrayidx5, align 4
  %len2 = getelementptr inbounds %struct.sahara_hw_desc, ptr %82, i32 0, i32 3
  %83 = ptrtoint ptr %len2 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %74, ptr %len2, align 4
  %84 = load ptr, ptr %arrayidx27, align 4
  %next = getelementptr inbounds %struct.sahara_hw_link, ptr %84, i32 0, i32 2
  %85 = ptrtoint ptr %next to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 0, ptr %next, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %sahara_sha_hw_links_create.exit.cleanup_crit_edge, %sahara_sha_hw_links_create.exit.thread
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @scatterwalk_map_and_copy(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_table(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_one(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pfn_valid(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight32(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_nents_for_len(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_skcipher(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_ahash(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_ahash(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_skcipher(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sahara_aes_setkey(ptr nocapture noundef %tfm, ptr noundef %key, i32 noundef %keylen) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %keylen1 = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1, i32 1
  %0 = ptrtoint ptr %keylen1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %keylen, ptr %keylen1, align 4
  %1 = zext i32 %keylen to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.128)
  switch i32 %keylen, label %entry.cleanup_crit_edge [
    i32 16, label %if.then
    i32 24, label %entry.if.end6_crit_edge
    i32 32, label %entry.if.end6_crit_edge23
  ]

entry.if.end6_crit_edge23:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %__crt_ctx.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1
  %key2 = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1, i32 1, i32 4
  %2 = call ptr @memcpy(ptr %key2, ptr %key, i32 16)
  %3 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %__crt_ctx.i.i, align 4
  %or = or i32 %4, 8
  store i32 %or, ptr %__crt_ctx.i.i, align 4
  br label %cleanup

if.end6:                                          ; preds = %entry.if.end6_crit_edge, %entry.if.end6_crit_edge23
  %fallback = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1, i32 1, i32 20
  %5 = ptrtoint ptr %fallback to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fallback, align 4
  %base.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %base.i.i, align 128
  %and.i.i = and i32 %8, -1048321
  store i32 %and.i.i, ptr %base.i.i, align 128
  %9 = load ptr, ptr %fallback, align 4
  %base = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 0, i32 2
  %10 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %base, align 128
  %and = and i32 %11, 1048320
  %base.i.i22 = getelementptr inbounds %struct.crypto_skcipher, ptr %9, i32 0, i32 2
  %12 = ptrtoint ptr %base.i.i22 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %base.i.i22, align 128
  %or.i.i = or i32 %13, %and
  store i32 %or.i.i, ptr %base.i.i22, align 128
  %14 = load ptr, ptr %fallback, align 4
  %call9 = tail call i32 @crypto_skcipher_setkey(ptr noundef %14, ptr noundef %key, i32 noundef %keylen) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then ], [ %call9, %if.end6 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sahara_aes_ecb_encrypt(ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %keylen = getelementptr i8, ptr %1, i32 132
  %2 = ptrtoint ptr %keylen to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %keylen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %3)
  %cmp.not = icmp eq i32 %3, 16
  br i1 %cmp.not, label %if.end, label %if.then, !prof !276

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %fallback_req = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 2
  %fallback = getelementptr i8, ptr %1, i32 152
  %4 = ptrtoint ptr %fallback to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fallback, align 4
  %base.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %5, i32 0, i32 2
  %tfm1.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 2, i32 4, i32 3
  %6 = ptrtoint ptr %tfm1.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %base.i.i, ptr %tfm1.i, align 16
  %flags = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 4
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags, align 4
  %complete = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 1
  %9 = ptrtoint ptr %complete to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %complete, align 8
  %data = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 2
  %11 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data, align 4
  %complete.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 2, i32 4, i32 1
  %13 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %complete.i, align 8
  %data2.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 2, i32 4, i32 2
  %14 = ptrtoint ptr %data2.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %12, ptr %data2.i, align 4
  %flags4.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 2, i32 4, i32 4
  %15 = ptrtoint ptr %flags4.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %8, ptr %flags4.i, align 4
  %src = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 2
  %16 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %src, align 8
  %dst = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 3
  %18 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dst, align 4
  %20 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %req, align 128
  %iv = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 1
  %22 = ptrtoint ptr %iv to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %iv, align 4
  %src1.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 2, i32 2
  %24 = ptrtoint ptr %src1.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %17, ptr %src1.i, align 8
  %dst2.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 2, i32 3
  %25 = ptrtoint ptr %dst2.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %19, ptr %dst2.i, align 4
  %26 = ptrtoint ptr %fallback_req to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %21, ptr %fallback_req, align 128
  %iv4.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 2, i32 1
  %27 = ptrtoint ptr %iv4.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %23, ptr %iv4.i, align 4
  %call9 = tail call i32 @crypto_skcipher_encrypt(ptr noundef %fallback_req) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call10 = tail call fastcc i32 @sahara_aes_crypt(ptr noundef %req, i32 noundef 1)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call9, %if.then ], [ %call10, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sahara_aes_ecb_decrypt(ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %keylen = getelementptr i8, ptr %1, i32 132
  %2 = ptrtoint ptr %keylen to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %keylen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %3)
  %cmp.not = icmp eq i32 %3, 16
  br i1 %cmp.not, label %if.end, label %if.then, !prof !276

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %fallback_req = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 2
  %fallback = getelementptr i8, ptr %1, i32 152
  %4 = ptrtoint ptr %fallback to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fallback, align 4
  %base.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %5, i32 0, i32 2
  %tfm1.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 2, i32 4, i32 3
  %6 = ptrtoint ptr %tfm1.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %base.i.i, ptr %tfm1.i, align 16
  %flags = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 4
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags, align 4
  %complete = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 1
  %9 = ptrtoint ptr %complete to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %complete, align 8
  %data = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 2
  %11 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data, align 4
  %complete.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 2, i32 4, i32 1
  %13 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %complete.i, align 8
  %data2.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 2, i32 4, i32 2
  %14 = ptrtoint ptr %data2.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %12, ptr %data2.i, align 4
  %flags4.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 2, i32 4, i32 4
  %15 = ptrtoint ptr %flags4.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %8, ptr %flags4.i, align 4
  %src = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 2
  %16 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %src, align 8
  %dst = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 3
  %18 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dst, align 4
  %20 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %req, align 128
  %iv = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 1
  %22 = ptrtoint ptr %iv to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %iv, align 4
  %src1.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 2, i32 2
  %24 = ptrtoint ptr %src1.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %17, ptr %src1.i, align 8
  %dst2.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 2, i32 3
  %25 = ptrtoint ptr %dst2.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %19, ptr %dst2.i, align 4
  %26 = ptrtoint ptr %fallback_req to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %21, ptr %fallback_req, align 128
  %iv4.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 2, i32 1
  %27 = ptrtoint ptr %iv4.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %23, ptr %iv4.i, align 4
  %call9 = tail call i32 @crypto_skcipher_decrypt(ptr noundef %fallback_req) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call10 = tail call fastcc i32 @sahara_aes_crypt(ptr noundef %req, i32 noundef 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call9, %if.then ], [ %call10, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sahara_aes_init_tfm(ptr nocapture noundef %tfm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_alg.i = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 0, i32 2, i32 3
  %0 = ptrtoint ptr %__crt_alg.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__crt_alg.i, align 4
  %cra_name.i = getelementptr inbounds %struct.crypto_alg, ptr %1, i32 0, i32 8
  %call2 = tail call ptr @crypto_alloc_skcipher(ptr noundef %cra_name.i, i32 noundef 0, i32 noundef 256) #9
  %fallback = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1, i32 1, i32 20
  %2 = ptrtoint ptr %fallback to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call2, ptr %fallback, align 4
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.125, ptr noundef %cra_name.i) #12
  %3 = ptrtoint ptr %fallback to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %fallback, align 4
  %5 = ptrtoint ptr %4 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %call2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %call2, align 128
  %add = add i32 %7, 256
  %8 = ptrtoint ptr %tfm to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %add, ptr %tfm, align 128
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ %5, %do.end ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sahara_aes_exit_tfm(ptr nocapture noundef readonly %tfm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %fallback = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1, i32 1, i32 20
  %0 = ptrtoint ptr %fallback to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fallback, align 4
  %base.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %1, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef %1, ptr noundef %base.i.i) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sahara_aes_cbc_encrypt(ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %keylen = getelementptr i8, ptr %1, i32 132
  %2 = ptrtoint ptr %keylen to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %keylen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %3)
  %cmp.not = icmp eq i32 %3, 16
  br i1 %cmp.not, label %if.end, label %if.then, !prof !276

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %fallback_req = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 2
  %fallback = getelementptr i8, ptr %1, i32 152
  %4 = ptrtoint ptr %fallback to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fallback, align 4
  %base.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %5, i32 0, i32 2
  %tfm1.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 2, i32 4, i32 3
  %6 = ptrtoint ptr %tfm1.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %base.i.i, ptr %tfm1.i, align 16
  %flags = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 4
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags, align 4
  %complete = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 1
  %9 = ptrtoint ptr %complete to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %complete, align 8
  %data = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 2
  %11 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data, align 4
  %complete.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 2, i32 4, i32 1
  %13 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %complete.i, align 8
  %data2.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 2, i32 4, i32 2
  %14 = ptrtoint ptr %data2.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %12, ptr %data2.i, align 4
  %flags4.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 2, i32 4, i32 4
  %15 = ptrtoint ptr %flags4.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %8, ptr %flags4.i, align 4
  %src = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 2
  %16 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %src, align 8
  %dst = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 3
  %18 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dst, align 4
  %20 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %req, align 128
  %iv = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 1
  %22 = ptrtoint ptr %iv to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %iv, align 4
  %src1.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 2, i32 2
  %24 = ptrtoint ptr %src1.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %17, ptr %src1.i, align 8
  %dst2.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 2, i32 3
  %25 = ptrtoint ptr %dst2.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %19, ptr %dst2.i, align 4
  %26 = ptrtoint ptr %fallback_req to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %21, ptr %fallback_req, align 128
  %iv4.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 2, i32 1
  %27 = ptrtoint ptr %iv4.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %23, ptr %iv4.i, align 4
  %call9 = tail call i32 @crypto_skcipher_encrypt(ptr noundef %fallback_req) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call10 = tail call fastcc i32 @sahara_aes_crypt(ptr noundef %req, i32 noundef 3)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call9, %if.then ], [ %call10, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sahara_aes_cbc_decrypt(ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %keylen = getelementptr i8, ptr %1, i32 132
  %2 = ptrtoint ptr %keylen to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %keylen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %3)
  %cmp.not = icmp eq i32 %3, 16
  br i1 %cmp.not, label %if.end, label %if.then, !prof !276

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %fallback_req = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 2
  %fallback = getelementptr i8, ptr %1, i32 152
  %4 = ptrtoint ptr %fallback to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fallback, align 4
  %base.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %5, i32 0, i32 2
  %tfm1.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 2, i32 4, i32 3
  %6 = ptrtoint ptr %tfm1.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %base.i.i, ptr %tfm1.i, align 16
  %flags = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 4
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags, align 4
  %complete = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 1
  %9 = ptrtoint ptr %complete to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %complete, align 8
  %data = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 2
  %11 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data, align 4
  %complete.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 2, i32 4, i32 1
  %13 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %complete.i, align 8
  %data2.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 2, i32 4, i32 2
  %14 = ptrtoint ptr %data2.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %12, ptr %data2.i, align 4
  %flags4.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 2, i32 4, i32 4
  %15 = ptrtoint ptr %flags4.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %8, ptr %flags4.i, align 4
  %src = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 2
  %16 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %src, align 8
  %dst = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 3
  %18 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dst, align 4
  %20 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %req, align 128
  %iv = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 1
  %22 = ptrtoint ptr %iv to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %iv, align 4
  %src1.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 2, i32 2
  %24 = ptrtoint ptr %src1.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %17, ptr %src1.i, align 8
  %dst2.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 2, i32 3
  %25 = ptrtoint ptr %dst2.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %19, ptr %dst2.i, align 4
  %26 = ptrtoint ptr %fallback_req to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %21, ptr %fallback_req, align 128
  %iv4.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 2, i32 1
  %27 = ptrtoint ptr %iv4.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %23, ptr %iv4.i, align 4
  %call9 = tail call i32 @crypto_skcipher_decrypt(ptr noundef %fallback_req) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call10 = tail call fastcc i32 @sahara_aes_crypt(ptr noundef %req, i32 noundef 2)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call9, %if.then ], [ %call10, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_skcipher_setkey(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_skcipher_encrypt(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sahara_aes_crypt(ptr noundef %req, i32 noundef %mode) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 6
  %0 = load ptr, ptr @dev_ptr, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sahara_aes_crypt.__UNIQUE_ID_ddebug279, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sahara_aes_crypt, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !281

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %3 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %req, align 128
  %and = and i32 %mode, 1
  %and9 = lshr i32 %mode, 1
  %and9.lobit = and i32 %and9, 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sahara_aes_crypt.__UNIQUE_ID_ddebug279, ptr noundef %2, ptr noundef nonnull @.str.123, i32 noundef %4, i32 noundef %and, i32 noundef %and9.lobit) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %5 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %req, align 128
  %and16 = and i32 %6, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %cmp = icmp eq i32 %and16, 0
  br i1 %cmp, label %if.end22, label %do.end20

do.end20:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.124) #12
  br label %cleanup

if.end22:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %mode, ptr %__ctx.i, align 128
  %queue_mutex = getelementptr inbounds %struct.sahara_dev, ptr %0, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %queue_mutex, i32 noundef 0) #9
  %queue = getelementptr inbounds %struct.sahara_dev, ptr %0, i32 0, i32 9
  %base = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4
  %call24 = tail call i32 @crypto_enqueue_request(ptr noundef %queue, ptr noundef %base) #9
  tail call void @mutex_unlock(ptr noundef %queue_mutex) #9
  %kthread = getelementptr inbounds %struct.sahara_dev, ptr %0, i32 0, i32 6
  %10 = ptrtoint ptr %kthread to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %kthread, align 4
  %call26 = tail call i32 @wake_up_process(ptr noundef %11) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %do.end20
  %retval.0 = phi i32 [ %call24, %if.end22 ], [ -22, %do.end20 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_enqueue_request(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_skcipher_decrypt(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_alloc_skcipher(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_destroy_tfm(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sahara_sha_init(ptr nocapture noundef %req) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__ctx.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 6
  %2 = call ptr @memset(ptr %__ctx.i, i32 0, i32 244)
  %__crt_alg.i.i = getelementptr i8, ptr %1, i32 12
  %3 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %__crt_alg.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %4, i32 -128
  %5 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %add.ptr.i.i.i, align 128
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.129)
  switch i32 %6, label %entry.cleanup_crit_edge [
    i32 20, label %entry.sw.epilog_crit_edge
    i32 32, label %sw.bb3
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %mode4 = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2, i32 4
  %8 = ptrtoint ptr %mode4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mode4, align 4
  %or5 = or i32 %9, 2
  store i32 %or5, ptr %mode4, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb3, %entry.sw.epilog_crit_edge
  %digest_size6 = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2, i32 5
  %10 = ptrtoint ptr %digest_size6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %6, ptr %digest_size6, align 4
  %add = add i32 %6, 4
  %context_size = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2, i32 5, i32 4
  %11 = ptrtoint ptr %context_size to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %add, ptr %context_size, align 4
  %active = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2, i32 5, i32 72
  %12 = ptrtoint ptr %active to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %active, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sahara_sha_update(ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @dev_ptr, align 4
  %nbytes.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 1
  %1 = ptrtoint ptr %nbytes.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %nbytes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %entry.sahara_sha_enqueue.exit_crit_edge, label %if.end.i

entry.sahara_sha_enqueue.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sahara_sha_enqueue.exit

if.end.i:                                         ; preds = %entry
  %last2.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2, i32 5, i32 64
  %4 = ptrtoint ptr %last2.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %last2.i, align 4
  %active.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2, i32 5, i32 72
  %5 = ptrtoint ptr %active.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %active.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool3.not.i = icmp eq i32 %6, 0
  br i1 %tobool3.not.i, label %if.then4.i, label %if.end.i.if.end6.i_crit_edge

if.end.i.if.end6.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %active.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %active.i, align 4
  %first.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2, i32 5, i32 68
  %8 = ptrtoint ptr %first.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %first.i, align 4
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then4.i, %if.end.i.if.end6.i_crit_edge
  %queue_mutex.i = getelementptr inbounds %struct.sahara_dev, ptr %0, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %queue_mutex.i, i32 noundef 0) #9
  %queue.i = getelementptr inbounds %struct.sahara_dev, ptr %0, i32 0, i32 9
  %call7.i = tail call i32 @crypto_enqueue_request(ptr noundef %queue.i, ptr noundef %req) #9
  tail call void @mutex_unlock(ptr noundef %queue_mutex.i) #9
  %kthread.i = getelementptr inbounds %struct.sahara_dev, ptr %0, i32 0, i32 6
  %9 = ptrtoint ptr %kthread.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %kthread.i, align 4
  %call9.i = tail call i32 @wake_up_process(ptr noundef %10) #9
  br label %sahara_sha_enqueue.exit

sahara_sha_enqueue.exit:                          ; preds = %if.end6.i, %entry.sahara_sha_enqueue.exit_crit_edge
  %retval.0.i = phi i32 [ %call7.i, %if.end6.i ], [ 0, %entry.sahara_sha_enqueue.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sahara_sha_final(ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %nbytes = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 1
  %0 = ptrtoint ptr %nbytes to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %nbytes, align 8
  %1 = load ptr, ptr @dev_ptr, align 4
  %last2.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2, i32 5, i32 64
  %2 = ptrtoint ptr %last2.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %last2.i, align 4
  %active.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2, i32 5, i32 72
  %3 = ptrtoint ptr %active.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %active.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool3.not.i = icmp eq i32 %4, 0
  br i1 %tobool3.not.i, label %if.then4.i, label %entry.sahara_sha_enqueue.exit_crit_edge

entry.sahara_sha_enqueue.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sahara_sha_enqueue.exit

if.then4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %active.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %active.i, align 4
  %first.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2, i32 5, i32 68
  %6 = ptrtoint ptr %first.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %first.i, align 4
  br label %sahara_sha_enqueue.exit

sahara_sha_enqueue.exit:                          ; preds = %if.then4.i, %entry.sahara_sha_enqueue.exit_crit_edge
  %queue_mutex.i = getelementptr inbounds %struct.sahara_dev, ptr %1, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %queue_mutex.i, i32 noundef 0) #9
  %queue.i = getelementptr inbounds %struct.sahara_dev, ptr %1, i32 0, i32 9
  %call7.i = tail call i32 @crypto_enqueue_request(ptr noundef %queue.i, ptr noundef %req) #9
  tail call void @mutex_unlock(ptr noundef %queue_mutex.i) #9
  %kthread.i = getelementptr inbounds %struct.sahara_dev, ptr %1, i32 0, i32 6
  %7 = ptrtoint ptr %kthread.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %kthread.i, align 4
  %call9.i = tail call i32 @wake_up_process(ptr noundef %8) #9
  ret i32 %call7.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sahara_sha_finup(ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @dev_ptr, align 4
  %last2.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2, i32 5, i32 64
  %1 = ptrtoint ptr %last2.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %last2.i, align 4
  %active.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2, i32 5, i32 72
  %2 = ptrtoint ptr %active.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %active.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool3.not.i = icmp eq i32 %3, 0
  br i1 %tobool3.not.i, label %if.then4.i, label %entry.sahara_sha_enqueue.exit_crit_edge

entry.sahara_sha_enqueue.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sahara_sha_enqueue.exit

if.then4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %active.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %active.i, align 4
  %first.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2, i32 5, i32 68
  %5 = ptrtoint ptr %first.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %first.i, align 4
  br label %sahara_sha_enqueue.exit

sahara_sha_enqueue.exit:                          ; preds = %if.then4.i, %entry.sahara_sha_enqueue.exit_crit_edge
  %queue_mutex.i = getelementptr inbounds %struct.sahara_dev, ptr %0, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %queue_mutex.i, i32 noundef 0) #9
  %queue.i = getelementptr inbounds %struct.sahara_dev, ptr %0, i32 0, i32 9
  %call7.i = tail call i32 @crypto_enqueue_request(ptr noundef %queue.i, ptr noundef %req) #9
  tail call void @mutex_unlock(ptr noundef %queue_mutex.i) #9
  %kthread.i = getelementptr inbounds %struct.sahara_dev, ptr %0, i32 0, i32 6
  %6 = ptrtoint ptr %kthread.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %kthread.i, align 4
  %call9.i = tail call i32 @wake_up_process(ptr noundef %7) #9
  ret i32 %call7.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sahara_sha_digest(ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i.i, align 16
  %__ctx.i.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 6
  %2 = call ptr @memset(ptr %__ctx.i.i, i32 0, i32 244)
  %__crt_alg.i.i.i = getelementptr i8, ptr %1, i32 12
  %3 = ptrtoint ptr %__crt_alg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %__crt_alg.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %4, i32 -128
  %5 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %add.ptr.i.i.i.i, align 128
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.130)
  switch i32 %6, label %entry.sahara_sha_init.exit_crit_edge [
    i32 20, label %entry.sw.epilog.i_crit_edge
    i32 32, label %sw.bb3.i
  ]

entry.sw.epilog.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

entry.sahara_sha_init.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sahara_sha_init.exit

sw.bb3.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %mode4.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2, i32 4
  %8 = ptrtoint ptr %mode4.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mode4.i, align 4
  %or5.i = or i32 %9, 2
  store i32 %or5.i, ptr %mode4.i, align 4
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb3.i, %entry.sw.epilog.i_crit_edge
  %digest_size6.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2, i32 5
  %10 = ptrtoint ptr %digest_size6.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %6, ptr %digest_size6.i, align 4
  %add.i = add nuw nsw i32 %6, 4
  %context_size.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2, i32 5, i32 4
  %11 = ptrtoint ptr %context_size.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %add.i, ptr %context_size.i, align 4
  %active.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2, i32 5, i32 72
  %12 = ptrtoint ptr %active.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %active.i, align 4
  br label %sahara_sha_init.exit

sahara_sha_init.exit:                             ; preds = %sw.epilog.i, %entry.sahara_sha_init.exit_crit_edge
  %13 = load ptr, ptr @dev_ptr, align 4
  %last2.i.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2, i32 5, i32 64
  %14 = ptrtoint ptr %last2.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %last2.i.i, align 4
  %active.i.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2, i32 5, i32 72
  %15 = ptrtoint ptr %active.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %active.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool3.not.i.i = icmp eq i32 %16, 0
  br i1 %tobool3.not.i.i, label %if.then4.i.i, label %sahara_sha_init.exit.sahara_sha_finup.exit_crit_edge

sahara_sha_init.exit.sahara_sha_finup.exit_crit_edge: ; preds = %sahara_sha_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sahara_sha_finup.exit

if.then4.i.i:                                     ; preds = %sahara_sha_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %active.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %active.i.i, align 4
  %first.i.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2, i32 5, i32 68
  %18 = ptrtoint ptr %first.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %first.i.i, align 4
  br label %sahara_sha_finup.exit

sahara_sha_finup.exit:                            ; preds = %if.then4.i.i, %sahara_sha_init.exit.sahara_sha_finup.exit_crit_edge
  %queue_mutex.i.i = getelementptr inbounds %struct.sahara_dev, ptr %13, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %queue_mutex.i.i, i32 noundef 0) #9
  %queue.i.i = getelementptr inbounds %struct.sahara_dev, ptr %13, i32 0, i32 9
  %call7.i.i = tail call i32 @crypto_enqueue_request(ptr noundef %queue.i.i, ptr noundef %req) #9
  tail call void @mutex_unlock(ptr noundef %queue_mutex.i.i) #9
  %kthread.i.i = getelementptr inbounds %struct.sahara_dev, ptr %13, i32 0, i32 6
  %19 = ptrtoint ptr %kthread.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %kthread.i.i, align 4
  %call9.i.i = tail call i32 @wake_up_process(ptr noundef %20) #9
  ret i32 %call7.i.i
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sahara_sha_export(ptr nocapture noundef readonly %req, ptr nocapture noundef writeonly %out) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 6
  %0 = call ptr @memcpy(ptr %out, ptr %__ctx.i, i32 244)
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sahara_sha_import(ptr nocapture noundef writeonly %req, ptr nocapture noundef readonly %in) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 6
  %0 = call ptr @memcpy(ptr %__ctx.i, ptr %in, i32 244)
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @sahara_sha_cra_init(ptr nocapture noundef writeonly %tfm) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %reqsize1.i = getelementptr i8, ptr %tfm, i32 -96
  %0 = ptrtoint ptr %reqsize1.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 4404, ptr %reqsize1.i, align 32
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 124)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 124)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind readonly }
attributes #6 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !28, !29, !30, !32, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !55, !57, !59, !61, !63, !64, !65, !67, !68, !69, !70, !72, !73, !74, !75, !77, !78, !79, !81, !82, !83, !85, !86, !87, !89, !90, !91, !93, !94, !96, !97, !99, !100, !102, !103, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !199, !200, !201, !203, !204, !205, !206, !208, !209, !210, !212, !213, !214, !216, !217, !218, !220, !221, !222, !224, !225, !226, !228, !229, !231, !232, !233, !235, !236, !237, !239, !240, !242, !244, !245, !246, !248, !249, !250, !252, !253, !254, !255, !257, !259}
!llvm.named.register.sp = !{!261}
!llvm.module.flags = !{!262, !263, !264, !265, !266, !267, !268, !269}
!llvm.ident = !{!270}

!0 = !{ptr @__initcall__kmod_sahara__281_1539_sahara_driver_init6, !1, !"__initcall__kmod_sahara__281_1539_sahara_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/crypto/sahara.c", i32 1539, i32 1}
!2 = !{ptr @__exitcall_sahara_driver_exit, !1, !"__exitcall_sahara_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file282, !4, !"__UNIQUE_ID_file282", i1 false, i1 false}
!4 = !{!"../drivers/crypto/sahara.c", i32 1541, i32 1}
!5 = !{ptr @__UNIQUE_ID_license283, !4, !"__UNIQUE_ID_license283", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_author284, !7, !"__UNIQUE_ID_author284", i1 false, i1 false}
!7 = !{!"../drivers/crypto/sahara.c", i32 1542, i32 1}
!8 = !{ptr @__UNIQUE_ID_author285, !9, !"__UNIQUE_ID_author285", i1 false, i1 false}
!9 = !{!"../drivers/crypto/sahara.c", i32 1543, i32 1}
!10 = !{ptr @__UNIQUE_ID_description286, !11, !"__UNIQUE_ID_description286", i1 false, i1 false}
!11 = !{!"../drivers/crypto/sahara.c", i32 1544, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/crypto/sahara.c", i32 1534, i32 11}
!14 = !{ptr @sahara_driver, !15, !"sahara_driver", i1 false, i1 false}
!15 = !{!"../drivers/crypto/sahara.c", i32 1530, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/crypto/sahara.c", i32 1388, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @sahara_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @sahara_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/crypto/sahara.c", i32 1393, i32 42}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/crypto/sahara.c", i32 1395, i32 3}
!28 = !{ptr @sahara_probe._entry.7, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @sahara_probe._entry_ptr.9, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/crypto/sahara.c", i32 1399, i32 42}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/crypto/sahara.c", i32 1401, i32 3}
!34 = !{ptr @sahara_probe._entry.11, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @sahara_probe._entry_ptr.13, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/crypto/sahara.c", i32 1410, i32 3}
!38 = !{ptr @sahara_probe._entry.14, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @sahara_probe._entry_ptr.16, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/crypto/sahara.c", i32 1421, i32 3}
!42 = !{ptr @sahara_probe._entry.17, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @sahara_probe._entry_ptr.19, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/crypto/sahara.c", i32 1432, i32 3}
!46 = !{ptr @sahara_probe._entry.20, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @sahara_probe._entry_ptr.22, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/crypto/sahara.c", i32 1441, i32 3}
!50 = !{ptr @sahara_probe._entry.23, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @sahara_probe._entry_ptr.25, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @sahara_probe.__key, !53, !"__key", i1 false, i1 false}
!53 = !{!"../drivers/crypto/sahara.c", i32 1452, i32 2}
!54 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.27, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/crypto/sahara.c", i32 1456, i32 17}
!57 = !{ptr @.str.28, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/crypto/sahara.c", i32 1471, i32 49}
!59 = !{ptr @.str.29, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/crypto/sahara.c", i32 1475, i32 4}
!61 = !{ptr @.str.31, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/crypto/sahara.c", i32 1481, i32 3}
!63 = !{ptr @sahara_probe._entry.30, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @sahara_probe._entry_ptr.32, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.34, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/crypto/sahara.c", i32 1500, i32 2}
!67 = !{ptr @.str.35, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @sahara_probe._entry.33, !66, !"_entry", i1 false, i1 false}
!69 = !{ptr @sahara_probe._entry_ptr.36, !66, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.37, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/crypto/sahara.c", i32 327, i32 2}
!72 = !{ptr @.str.38, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @sahara_decode_error._entry, !71, !"_entry", i1 false, i1 false}
!74 = !{ptr @sahara_decode_error._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.40, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/crypto/sahara.c", i32 329, i32 2}
!77 = !{ptr @sahara_decode_error._entry.39, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @sahara_decode_error._entry_ptr.41, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.43, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/crypto/sahara.c", i32 333, i32 4}
!81 = !{ptr @sahara_decode_error._entry.42, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @sahara_decode_error._entry_ptr.44, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.46, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/crypto/sahara.c", i32 335, i32 4}
!85 = !{ptr @sahara_decode_error._entry.45, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @sahara_decode_error._entry_ptr.47, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.49, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/crypto/sahara.c", i32 337, i32 3}
!89 = !{ptr @sahara_decode_error._entry.48, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @sahara_decode_error._entry_ptr.50, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @sahara_decode_error._entry.51, !92, !"_entry", i1 false, i1 false}
!92 = !{!"../drivers/crypto/sahara.c", i32 339, i32 3}
!93 = !{ptr @sahara_decode_error._entry_ptr.52, !92, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @sahara_decode_error._entry.53, !95, !"_entry", i1 false, i1 false}
!95 = !{!"../drivers/crypto/sahara.c", i32 342, i32 3}
!96 = !{ptr @sahara_decode_error._entry_ptr.54, !95, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @sahara_decode_error._entry.55, !98, !"_entry", i1 false, i1 false}
!98 = !{!"../drivers/crypto/sahara.c", i32 344, i32 3}
!99 = !{ptr @sahara_decode_error._entry_ptr.56, !98, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.58, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/crypto/sahara.c", i32 347, i32 2}
!102 = !{ptr @sahara_decode_error._entry.57, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @sahara_decode_error._entry_ptr.59, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.60, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/crypto/sahara.c", i32 269, i32 2}
!106 = !{ptr @.str.61, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/crypto/sahara.c", i32 270, i32 2}
!108 = !{ptr @.str.62, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/crypto/sahara.c", i32 271, i32 2}
!110 = !{ptr @.str.63, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/crypto/sahara.c", i32 272, i32 2}
!112 = !{ptr @.str.64, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/crypto/sahara.c", i32 273, i32 2}
!114 = !{ptr @.str.65, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/crypto/sahara.c", i32 274, i32 2}
!116 = !{ptr @.str.66, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/crypto/sahara.c", i32 275, i32 2}
!118 = !{ptr @.str.67, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/crypto/sahara.c", i32 276, i32 2}
!120 = !{ptr @.str.68, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/crypto/sahara.c", i32 277, i32 2}
!122 = !{ptr @.str.69, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/crypto/sahara.c", i32 278, i32 2}
!124 = !{ptr @.str.70, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/crypto/sahara.c", i32 279, i32 2}
!126 = !{ptr @.str.71, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/crypto/sahara.c", i32 280, i32 2}
!128 = !{ptr @.str.72, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/crypto/sahara.c", i32 281, i32 2}
!130 = !{ptr @.str.73, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/crypto/sahara.c", i32 282, i32 2}
!132 = !{ptr @.str.74, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/crypto/sahara.c", i32 283, i32 2}
!134 = !{ptr @.str.75, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/crypto/sahara.c", i32 284, i32 2}
!136 = !{ptr @sahara_err_src, !137, !"sahara_err_src", i1 false, i1 false}
!137 = !{!"../drivers/crypto/sahara.c", i32 268, i32 20}
!138 = !{ptr @.str.76, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/crypto/sahara.c", i32 288, i32 2}
!140 = !{ptr @.str.77, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/crypto/sahara.c", i32 289, i32 2}
!142 = !{ptr @.str.78, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/crypto/sahara.c", i32 290, i32 2}
!144 = !{ptr @sahara_err_dmasize, !145, !"sahara_err_dmasize", i1 false, i1 false}
!145 = !{!"../drivers/crypto/sahara.c", i32 287, i32 20}
!146 = !{ptr @.str.79, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/crypto/sahara.c", i32 296, i32 2}
!148 = !{ptr @.str.80, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/crypto/sahara.c", i32 297, i32 2}
!150 = !{ptr @.str.81, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/crypto/sahara.c", i32 298, i32 2}
!152 = !{ptr @.str.82, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/crypto/sahara.c", i32 299, i32 2}
!154 = !{ptr @.str.83, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/crypto/sahara.c", i32 300, i32 2}
!156 = !{ptr @.str.84, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/crypto/sahara.c", i32 302, i32 2}
!158 = !{ptr @sahara_err_dmasrc, !159, !"sahara_err_dmasrc", i1 false, i1 false}
!159 = !{!"../drivers/crypto/sahara.c", i32 294, i32 20}
!160 = !{ptr @.str.85, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/crypto/sahara.c", i32 306, i32 2}
!162 = !{ptr @.str.86, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/crypto/sahara.c", i32 307, i32 2}
!164 = !{ptr @.str.87, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/crypto/sahara.c", i32 308, i32 2}
!166 = !{ptr @.str.88, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/crypto/sahara.c", i32 309, i32 2}
!168 = !{ptr @.str.89, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/crypto/sahara.c", i32 310, i32 2}
!170 = !{ptr @.str.90, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/crypto/sahara.c", i32 311, i32 2}
!172 = !{ptr @.str.91, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/crypto/sahara.c", i32 312, i32 2}
!174 = !{ptr @.str.92, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/crypto/sahara.c", i32 313, i32 2}
!176 = !{ptr @.str.93, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/crypto/sahara.c", i32 314, i32 2}
!178 = !{ptr @.str.94, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/crypto/sahara.c", i32 315, i32 2}
!180 = !{ptr @.str.95, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/crypto/sahara.c", i32 316, i32 2}
!182 = !{ptr @sahara_cha_errsrc, !183, !"sahara_cha_errsrc", i1 false, i1 false}
!183 = !{!"../drivers/crypto/sahara.c", i32 305, i32 20}
!184 = !{ptr @.str.96, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/crypto/sahara.c", i32 320, i32 54}
!186 = !{ptr @.str.97, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/crypto/sahara.c", i32 320, i32 62}
!188 = !{ptr @.str.98, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/crypto/sahara.c", i32 320, i32 70}
!190 = !{ptr @sahara_cha_err, !191, !"sahara_cha_err", i1 false, i1 false}
!191 = !{!"../drivers/crypto/sahara.c", i32 320, i32 20}
!192 = !{ptr @dev_ptr, !193, !"dev_ptr", i1 false, i1 false}
!193 = !{!"../drivers/crypto/sahara.c", i32 231, i32 27}
!194 = distinct !{null, !195, !"__already_done", i1 false, i1 false}
!195 = !{!"../drivers/crypto/sahara.c", i32 1044, i32 3}
!196 = !{ptr @.str.99, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/crypto/sahara.c", i32 1020, i32 3}
!198 = !{ptr @.str.100, !197, !"<string literal>", i1 false, i1 false}
!199 = !{ptr @sahara_sha_process._entry, !197, !"_entry", i1 false, i1 false}
!200 = !{ptr @sahara_sha_process._entry_ptr, !197, !"_entry_ptr", i1 false, i1 false}
!201 = !{ptr @.str.101, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/crypto/sahara.c", i32 794, i32 3}
!203 = !{ptr @.str.102, !202, !"<string literal>", i1 false, i1 false}
!204 = !{ptr @sahara_sha_hw_links_create._entry, !202, !"_entry", i1 false, i1 false}
!205 = !{ptr @sahara_sha_hw_links_create._entry_ptr, !202, !"_entry_ptr", i1 false, i1 false}
!206 = !{ptr @.str.104, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/crypto/sahara.c", i32 798, i32 3}
!208 = !{ptr @sahara_sha_hw_links_create._entry.103, !207, !"_entry", i1 false, i1 false}
!209 = !{ptr @sahara_sha_hw_links_create._entry_ptr.105, !207, !"_entry_ptr", i1 false, i1 false}
!210 = !{ptr @.str.106, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/crypto/sahara.c", i32 561, i32 2}
!212 = !{ptr @.str.107, !211, !"<string literal>", i1 false, i1 false}
!213 = !{ptr @sahara_aes_process.__UNIQUE_ID_ddebug278, !211, !"__UNIQUE_ID_ddebug278", i1 false, i1 false}
!214 = !{ptr @.str.108, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/crypto/sahara.c", i32 590, i32 3}
!216 = !{ptr @sahara_aes_process._entry, !215, !"_entry", i1 false, i1 false}
!217 = !{ptr @sahara_aes_process._entry_ptr, !215, !"_entry_ptr", i1 false, i1 false}
!218 = !{ptr @.str.109, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/crypto/sahara.c", i32 474, i32 3}
!220 = !{ptr @sahara_hw_descriptor_create._entry, !219, !"_entry", i1 false, i1 false}
!221 = !{ptr @sahara_hw_descriptor_create._entry_ptr, !219, !"_entry_ptr", i1 false, i1 false}
!222 = !{ptr @.str.111, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/crypto/sahara.c", i32 479, i32 3}
!224 = !{ptr @sahara_hw_descriptor_create._entry.110, !223, !"_entry", i1 false, i1 false}
!225 = !{ptr @sahara_hw_descriptor_create._entry_ptr.112, !223, !"_entry_ptr", i1 false, i1 false}
!226 = !{ptr @sahara_hw_descriptor_create._entry.113, !227, !"_entry", i1 false, i1 false}
!227 = !{!"../drivers/crypto/sahara.c", i32 483, i32 3}
!228 = !{ptr @sahara_hw_descriptor_create._entry_ptr.114, !227, !"_entry_ptr", i1 false, i1 false}
!229 = !{ptr @.str.116, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/crypto/sahara.c", i32 491, i32 3}
!231 = !{ptr @sahara_hw_descriptor_create._entry.115, !230, !"_entry", i1 false, i1 false}
!232 = !{ptr @sahara_hw_descriptor_create._entry_ptr.117, !230, !"_entry_ptr", i1 false, i1 false}
!233 = !{ptr @.str.119, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/crypto/sahara.c", i32 497, i32 3}
!235 = !{ptr @sahara_hw_descriptor_create._entry.118, !234, !"_entry", i1 false, i1 false}
!236 = !{ptr @sahara_hw_descriptor_create._entry_ptr.120, !234, !"_entry_ptr", i1 false, i1 false}
!237 = !{ptr @init_completion.__key, !238, !"__key", i1 false, i1 false}
!238 = !{!"../include/linux/completion.h", i32 87, i32 2}
!239 = !{ptr @.str.121, !238, !"<string literal>", i1 false, i1 false}
!240 = !{ptr @aes_algs, !241, !"aes_algs", i1 false, i1 false}
!241 = !{!"../drivers/crypto/sahara.c", i32 1180, i32 28}
!242 = !{ptr @.str.122, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/crypto/sahara.c", i32 634, i32 2}
!244 = !{ptr @.str.123, !243, !"<string literal>", i1 false, i1 false}
!245 = !{ptr @sahara_aes_crypt.__UNIQUE_ID_ddebug279, !243, !"__UNIQUE_ID_ddebug279", i1 false, i1 false}
!246 = !{ptr @.str.124, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/crypto/sahara.c", i32 638, i32 3}
!248 = !{ptr @sahara_aes_crypt._entry, !247, !"_entry", i1 false, i1 false}
!249 = !{ptr @sahara_aes_crypt._entry_ptr, !247, !"_entry_ptr", i1 false, i1 false}
!250 = !{ptr @.str.125, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/crypto/sahara.c", i32 742, i32 3}
!252 = !{ptr @.str.126, !251, !"<string literal>", i1 false, i1 false}
!253 = !{ptr @sahara_aes_init_tfm._entry, !251, !"_entry", i1 false, i1 false}
!254 = !{ptr @sahara_aes_init_tfm._entry_ptr, !251, !"_entry_ptr", i1 false, i1 false}
!255 = !{ptr @sha_v3_algs, !256, !"sha_v3_algs", i1 false, i1 false}
!256 = !{!"../drivers/crypto/sahara.c", i32 1219, i32 25}
!257 = !{ptr @sha_v4_algs, !258, !"sha_v4_algs", i1 false, i1 false}
!258 = !{!"../drivers/crypto/sahara.c", i32 1245, i32 25}
!259 = !{ptr @sahara_dt_ids, !260, !"sahara_dt_ids", i1 false, i1 false}
!260 = !{!"../drivers/crypto/sahara.c", i32 1353, i32 34}
!261 = !{!"sp"}
!262 = !{i32 1, !"wchar_size", i32 2}
!263 = !{i32 1, !"min_enum_size", i32 4}
!264 = !{i32 8, !"branch-target-enforcement", i32 0}
!265 = !{i32 8, !"sign-return-address", i32 0}
!266 = !{i32 8, !"sign-return-address-all", i32 0}
!267 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!268 = !{i32 7, !"uwtable", i32 1}
!269 = !{i32 7, !"frame-pointer", i32 2}
!270 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!271 = !{i64 6130799}
!272 = !{i64 2154604861}
!273 = !{i64 2154604013}
!274 = !{i64 6130381}
!275 = !{i32 0, i32 33}
!276 = !{!"branch_weights", i32 2000, i32 1}
!277 = !{!"branch_weights", i32 1, i32 2000}
!278 = !{i64 2153907652, i64 2153908144, i64 2153907689, i64 2153907745, i64 2153907779, i64 2153907803, i64 2153907844, i64 2153907865, i64 2153907893, i64 2153907927}
!279 = !{i64 2153901333, i64 2153901825, i64 2153901370, i64 2153901426, i64 2153901460, i64 2153901484, i64 2153901525, i64 2153901546, i64 2153901574, i64 2153901608}
!280 = !{i64 2153902943, i64 2153903435, i64 2153902980, i64 2153903036, i64 2153903070, i64 2153903094, i64 2153903135, i64 2153903156, i64 2153903184, i64 2153903218}
!281 = !{i64 2148760565, i64 2148760570, i64 2148760583, i64 2148760627, i64 2148760661, i64 2148760682}
