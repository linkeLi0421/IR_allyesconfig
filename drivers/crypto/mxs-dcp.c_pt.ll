; ModuleID = '/llk/IR_all_yes/drivers/crypto/mxs-dcp.c_pt.bc'
source_filename = "../drivers/crypto/mxs-dcp.c"
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
%struct.skcipher_alg = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [88 x i8], %struct.crypto_alg }
%struct.crypto_alg = type { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, %struct.refcount_struct, [128 x i8], [128 x i8], ptr, %union.anon.71, ptr, ptr, ptr, ptr, %union.anon.72, [120 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
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
%struct.dcp = type { ptr, ptr, i32, ptr, [4 x %struct.completion], [4 x %struct.spinlock], [4 x ptr], [4 x %struct.crypto_queue], ptr }
%struct.crypto_queue = type { %struct.list_head, ptr, i32, i32 }
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
%struct.ahash_request = type { %struct.crypto_async_request, i32, ptr, ptr, ptr, [88 x i8], [0 x ptr] }
%struct.dcp_coherent_block = type { [4096 x i8], [4096 x i8], [4096 x i8], [64 x i8], [32 x i8], [4 x %struct.dcp_dma_desc] }
%struct.dcp_dma_desc = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [112 x i8], [0 x ptr] }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.page = type { i32, %union.anon.2, %union.anon.63, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.63 = type { %struct.atomic_t }
%struct.crypto_skcipher = type { i32, [124 x i8], %struct.crypto_tfm }
%struct.skcipher_request = type { i32, ptr, ptr, ptr, %struct.crypto_async_request, [88 x i8], [0 x ptr] }
%struct.dcp_export_state = type { %struct.dcp_sha_req_ctx, %struct.dcp_async_ctx }
%struct.dcp_sha_req_ctx = type { i8, [3 x i8] }
%struct.dcp_async_ctx = type { i32, i32, %struct.mutex, i32, i8, ptr, i32, [16 x i8] }

@__initcall__kmod_mxs_dcp__251_1185_mxs_dcp_driver_init6 = internal global ptr @mxs_dcp_driver_init, section ".initcall6.init", align 4
@mxs_dcp_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @mxs_dcp_probe, ptr @mxs_dcp_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @mxs_dcp_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_mxs_dcp_driver_exit = internal global ptr @mxs_dcp_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author252 = internal constant [43 x i8] c"mxs_dcp.author=Marek Vasut <marex@denx.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description253 = internal constant [45 x i8] c"mxs_dcp.description=Freescale MXS DCP Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file254 = internal constant [36 x i8] c"mxs_dcp.file=drivers/crypto/mxs-dcp\00", section ".modinfo", align 1
@__UNIQUE_ID_license255 = internal constant [20 x i8] c"mxs_dcp.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias256 = internal constant [31 x i8] c"mxs_dcp.alias=platform:mxs-dcp\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mxs-dcp\00", [24 x i8] zeroinitializer }, align 32
@mxs_dcp_dt_ids = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx23-dcp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx28-dcp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@global_sdcp = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@mxs_dcp_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 979, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Only one DCP instance allowed!\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mxs_dcp_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/crypto/mxs-dcp.c\00", [39 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mxs_dcp_probe._entry_ptr = internal global ptr @mxs_dcp_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"dcp-vmi-irq\00", [20 x i8] zeroinitializer }, align 32
@mxs_dcp_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 1004, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to claim DCP VMI IRQ!\0A\00", [34 x i8] zeroinitializer }, align 32
@mxs_dcp_probe._entry_ptr.9 = internal global ptr @mxs_dcp_probe._entry.7, section ".printk_index", align 4
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"dcp-irq\00", [24 x i8] zeroinitializer }, align 32
@mxs_dcp_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str.3, i32 1011, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to claim DCP IRQ!\0A\00", [38 x i8] zeroinitializer }, align 32
@mxs_dcp_probe._entry_ptr.13 = internal global ptr @mxs_dcp_probe._entry.11, section ".printk_index", align 4
@.str.14 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dcp\00", [28 x i8] zeroinitializer }, align 32
@mxs_dcp_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.2, ptr @.str.3, i32 1038, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Failed reset\0A\00", [18 x i8] zeroinitializer }, align 32
@mxs_dcp_probe._entry_ptr.17 = internal global ptr @mxs_dcp_probe._entry.15, section ".printk_index", align 4
@mxs_dcp_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.18 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&sdcp->lock[i]\00", [17 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mxs_dcp_chan/sha\00", [47 x i8] zeroinitializer }, align 32
@mxs_dcp_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.2, ptr @.str.3, i32 1077, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Error starting SHA thread!\0A\00", [36 x i8] zeroinitializer }, align 32
@mxs_dcp_probe._entry_ptr.22 = internal global ptr @mxs_dcp_probe._entry.20, section ".printk_index", align 4
@.str.23 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mxs_dcp_chan/aes\00", [47 x i8] zeroinitializer }, align 32
@mxs_dcp_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.2, ptr @.str.3, i32 1085, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@mxs_dcp_probe._entry_ptr.25 = internal global ptr @mxs_dcp_probe._entry.24, section ".printk_index", align 4
@dcp_aes_algs = internal global [2 x %struct.skcipher_alg] [%struct.skcipher_alg { ptr @mxs_dcp_aes_setkey, ptr @mxs_dcp_aes_ecb_encrypt, ptr @mxs_dcp_aes_ecb_decrypt, ptr @mxs_dcp_aes_fallback_init_tfm, ptr @mxs_dcp_aes_fallback_exit_tfm, i32 16, i32 32, i32 0, i32 0, i32 0, [88 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 384, i32 16, i32 132, i32 15, i32 400, %struct.refcount_struct zeroinitializer, [128 x i8] c"ecb(aes)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"ecb-aes-dcp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.71 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.72 zeroinitializer, [120 x i8] undef } }, %struct.skcipher_alg { ptr @mxs_dcp_aes_setkey, ptr @mxs_dcp_aes_cbc_encrypt, ptr @mxs_dcp_aes_cbc_decrypt, ptr @mxs_dcp_aes_fallback_init_tfm, ptr @mxs_dcp_aes_fallback_exit_tfm, i32 16, i32 32, i32 16, i32 0, i32 0, [88 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 384, i32 16, i32 132, i32 15, i32 400, %struct.refcount_struct zeroinitializer, [128 x i8] c"cbc(aes)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"cbc-aes-dcp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.71 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.72 zeroinitializer, [120 x i8] undef } }], align 128
@mxs_dcp_probe._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.2, ptr @.str.3, i32 1098, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to register AES crypto!\0A\00", [32 x i8] zeroinitializer }, align 32
@mxs_dcp_probe._entry_ptr.28 = internal global ptr @mxs_dcp_probe._entry.26, section ".printk_index", align 4
@dcp_sha1_alg = internal global %struct.ahash_alg { ptr @dcp_sha_init, ptr @dcp_sha_update, ptr @dcp_sha_final, ptr @dcp_sha_finup, ptr @dcp_sha_digest, ptr @dcp_sha_export, ptr @dcp_sha_import, ptr null, ptr null, ptr null, [88 x i8] undef, %struct.hash_alg_common { i32 20, i32 136, [120 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 128, i32 64, i32 132, i32 63, i32 400, %struct.refcount_struct zeroinitializer, [128 x i8] c"sha1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"sha1-dcp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.71 zeroinitializer, ptr @dcp_sha_cra_init, ptr @dcp_sha_cra_exit, ptr null, ptr null, %union.anon.72 zeroinitializer, [120 x i8] undef } } }, align 128
@mxs_dcp_probe._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.2, ptr @.str.3, i32 1107, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to register %s hash!\0A\00", [35 x i8] zeroinitializer }, align 32
@mxs_dcp_probe._entry_ptr.31 = internal global ptr @mxs_dcp_probe._entry.29, section ".printk_index", align 4
@dcp_sha256_alg = internal global %struct.ahash_alg { ptr @dcp_sha_init, ptr @dcp_sha_update, ptr @dcp_sha_final, ptr @dcp_sha_finup, ptr @dcp_sha_digest, ptr @dcp_sha_export, ptr @dcp_sha_import, ptr null, ptr null, ptr null, [88 x i8] undef, %struct.hash_alg_common { i32 32, i32 136, [120 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 128, i32 64, i32 132, i32 63, i32 400, %struct.refcount_struct zeroinitializer, [128 x i8] c"sha256\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"sha256-dcp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.71 zeroinitializer, ptr @dcp_sha_cra_init, ptr @dcp_sha_cra_exit, ptr null, ptr null, %union.anon.72 zeroinitializer, [120 x i8] undef } } }, align 128
@mxs_dcp_probe._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.2, ptr @.str.3, i32 1116, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@mxs_dcp_probe._entry_ptr.33 = internal global ptr @mxs_dcp_probe._entry.32, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.34 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@sha1_null_hash = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\09\07\D8\AF\90\18`\95\EF\BFU2\0DKk^\EE\A39\DA\00", [43 x i8] zeroinitializer }, align 32
@sha256_null_hash = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"U\B8Rx\1B\99\95\A4L\93\9Bd\E4A\AE'$\B9o\99\C8\F4\FB\9A\14\1C\FC\98B\C4\B0\E3\00", [63 x i8] zeroinitializer }, align 32
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.36 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@mxs_dcp_start_dma._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.3, i32 201, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Channel %i timeout (DCP_STAT=0x%08x)\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mxs_dcp_start_dma\00", [46 x i8] zeroinitializer }, align 32
@mxs_dcp_start_dma._entry_ptr = internal global ptr @mxs_dcp_start_dma._entry, section ".printk_index", align 4
@mxs_dcp_start_dma._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.39, ptr @.str.3, i32 208, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Channel %i error (CH_STAT=0x%08x)\0A\00", [61 x i8] zeroinitializer }, align 32
@mxs_dcp_start_dma._entry_ptr.42 = internal global ptr @mxs_dcp_start_dma._entry.40, section ".printk_index", align 4
@mxs_dcp_run_aes._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.3, i32 248, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Invalid block size!\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mxs_dcp_run_aes\00", [16 x i8] zeroinitializer }, align 32
@mxs_dcp_run_aes._entry_ptr = internal global ptr @mxs_dcp_run_aes._entry, section ".printk_index", align 4
@.str.46 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sha1\00", [27 x i8] zeroinitializer }, align 32
@dcp_sha_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.47 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&actx->mutex\00", [19 x i8] zeroinitializer }, align 32
@___asan_gen_.48 = private unnamed_addr constant [15 x i8] c"mxs_dcp_driver\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 1176, i32 31 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 1180, i32 12 }
@___asan_gen_.54 = private unnamed_addr constant [15 x i8] c"mxs_dcp_dt_ids\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 1168, i32 34 }
@___asan_gen_.57 = private unnamed_addr constant [12 x i8] c"global_sdcp\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 126, i32 20 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 979, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 1002, i32 11 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 1004, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 1009, i32 11 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 1011, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 1025, i32 36 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 1038, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 1068, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 1074, i32 36 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 1077, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 1082, i32 34 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 1085, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 1098, i32 4 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 1106, i32 4 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 1115, i32 4 }
@___asan_gen_.145 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 87, i32 2 }
@___asan_gen_.147 = private unnamed_addr constant [15 x i8] c"sha1_null_hash\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 36, i32 22 }
@___asan_gen_.150 = private unnamed_addr constant [17 x i8] c"sha256_null_hash\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 40, i32 22 }
@___asan_gen_.157 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 326, i32 6 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 200, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 207, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 248, i32 3 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 736, i32 34 }
@___asan_gen_.186 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.189 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.190 = private constant [28 x i8] c"../drivers/crypto/mxs-dcp.c\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 745, i32 2 }
@llvm.compiler.used = appending global [68 x ptr] [ptr @__UNIQUE_ID_alias256, ptr @__UNIQUE_ID_author252, ptr @__UNIQUE_ID_description253, ptr @__UNIQUE_ID_file254, ptr @__UNIQUE_ID_license255, ptr @__exitcall_mxs_dcp_driver_exit, ptr @__initcall__kmod_mxs_dcp__251_1185_mxs_dcp_driver_init6, ptr @mxs_dcp_driver_exit, ptr @mxs_dcp_probe._entry, ptr @mxs_dcp_probe._entry.11, ptr @mxs_dcp_probe._entry.15, ptr @mxs_dcp_probe._entry.20, ptr @mxs_dcp_probe._entry.24, ptr @mxs_dcp_probe._entry.26, ptr @mxs_dcp_probe._entry.29, ptr @mxs_dcp_probe._entry.32, ptr @mxs_dcp_probe._entry.7, ptr @mxs_dcp_probe._entry_ptr, ptr @mxs_dcp_probe._entry_ptr.13, ptr @mxs_dcp_probe._entry_ptr.17, ptr @mxs_dcp_probe._entry_ptr.22, ptr @mxs_dcp_probe._entry_ptr.25, ptr @mxs_dcp_probe._entry_ptr.28, ptr @mxs_dcp_probe._entry_ptr.31, ptr @mxs_dcp_probe._entry_ptr.33, ptr @mxs_dcp_probe._entry_ptr.9, ptr @mxs_dcp_run_aes._entry, ptr @mxs_dcp_run_aes._entry_ptr, ptr @mxs_dcp_start_dma._entry, ptr @mxs_dcp_start_dma._entry.40, ptr @mxs_dcp_start_dma._entry_ptr, ptr @mxs_dcp_start_dma._entry_ptr.42, ptr @mxs_dcp_driver, ptr @.str, ptr @mxs_dcp_dt_ids, ptr @global_sdcp, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @mxs_dcp_probe.__key, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.23, ptr @.str.27, ptr @.str.30, ptr @init_completion.__key, ptr @.str.34, ptr @sha1_null_hash, ptr @sha256_null_hash, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.41, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @dcp_sha_init.__key, ptr @.str.47], section "llvm.metadata"
@0 = internal global [48 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxs_dcp_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxs_dcp_dt_ids to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @global_sdcp to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxs_dcp_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxs_dcp_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxs_dcp_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxs_dcp_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxs_dcp_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxs_dcp_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxs_dcp_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxs_dcp_probe._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxs_dcp_probe._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxs_dcp_probe._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sha1_null_hash to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sha256_null_hash to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxs_dcp_start_dma._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxs_dcp_start_dma._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxs_dcp_run_aes._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dcp_sha_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mxs_dcp_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @mxs_dcp_driver, ptr noundef null) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mxs_dcp_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @platform_driver_unregister(ptr noundef nonnull @mxs_dcp_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxs_dcp_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %0 = load ptr, ptr @global_sdcp, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %call4 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %if.end3.cleanup_crit_edge, label %if.end7

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 516, i32 noundef 3520) #10
  %tobool9.not = icmp eq ptr %call.i, null
  br i1 %tobool9.not, label %if.end7.cleanup_crit_edge, label %if.end11

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  %1 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dev1, ptr %call.i, align 4
  %call13 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #10
  %base = getelementptr inbounds %struct.dcp, ptr %call.i, i32 0, i32 1
  %2 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call13, ptr %base, align 4
  %cmp.i = icmp ugt ptr %call13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then16, label %if.end19

if.then16:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  %3 = ptrtoint ptr %call13 to i32
  br label %cleanup

if.end19:                                         ; preds = %if.end11
  %call.i291 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call, ptr noundef nonnull @mxs_dcp_irq, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.6, ptr noundef nonnull %call.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i291)
  %tobool21.not = icmp eq i32 %call.i291, 0
  br i1 %tobool21.not, label %if.end26, label %do.end25

do.end25:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.8) #13
  br label %cleanup

if.end26:                                         ; preds = %if.end19
  %call.i292 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call4, ptr noundef nonnull @mxs_dcp_irq, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.10, ptr noundef nonnull %call.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i292)
  %tobool28.not = icmp eq i32 %call.i292, 0
  br i1 %tobool28.not, label %if.end33, label %do.end32

do.end32:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.12) #13
  br label %cleanup

if.end33:                                         ; preds = %if.end26
  %call.i293 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 12576, i32 noundef 3520) #10
  %coh = getelementptr inbounds %struct.dcp, ptr %call.i, i32 0, i32 3
  %4 = ptrtoint ptr %coh to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i293, ptr %coh, align 4
  %tobool36.not = icmp eq ptr %call.i293, null
  br i1 %tobool36.not, label %if.end33.cleanup_crit_edge, label %if.end38

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end38:                                         ; preds = %if.end33
  %5 = ptrtoint ptr %call.i293 to i32
  %add = add i32 %5, 63
  %and = and i32 %add, -64
  %6 = inttoptr i32 %and to ptr
  %7 = ptrtoint ptr %coh to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %coh, align 4
  %call41 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.14) #10
  %dcp_clk = getelementptr inbounds %struct.dcp, ptr %call.i, i32 0, i32 8
  %8 = ptrtoint ptr %dcp_clk to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call41, ptr %dcp_clk, align 4
  %cmp.i294 = icmp ugt ptr %call41, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i294, label %if.then44, label %if.end38.if.end53_crit_edge

if.end38.if.end53_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end53

if.then44:                                        ; preds = %if.end38
  %cmp47.not = icmp eq ptr %call41, inttoptr (i32 -2 to ptr)
  br i1 %cmp47.not, label %if.end51, label %if.then48

if.then48:                                        ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %call41 to i32
  br label %cleanup

if.end51:                                         ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %dcp_clk to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %dcp_clk, align 4
  br label %if.end53

if.end53:                                         ; preds = %if.end51, %if.end38.if.end53_crit_edge
  %11 = ptrtoint ptr %dcp_clk to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dcp_clk, align 4
  %call.i295 = tail call i32 @clk_prepare(ptr noundef %12) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i295)
  %tobool.not.i = icmp eq i32 %call.i295, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end53.cleanup_crit_edge

if.end53.cleanup_crit_edge:                       ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %if.end53
  %call1.i = tail call i32 @clk_enable(ptr noundef %12) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end58, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @clk_unprepare(ptr noundef %12) #10
  br label %cleanup

if.end58:                                         ; preds = %if.end.i
  %13 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base, align 4
  %call60 = tail call i32 @stmp_reset_block(ptr noundef %14) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %do.body67, label %do.end65

do.end65:                                         ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.16) #13
  br label %err_disable_unprepare_clk

do.body67:                                        ; preds = %if.end58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !125
  tail call void @arm_heavy_mb() #10
  %15 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 251707392) #10, !srcloc !126
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !127
  tail call void @arm_heavy_mb() #10
  %17 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %base, align 4
  %add.ptr75 = getelementptr i8, ptr %18, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr75, i32 -16777216) #10, !srcloc !126
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !128
  tail call void @arm_heavy_mb() #10
  %19 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base, align 4
  %add.ptr80 = getelementptr i8, ptr %20, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr80, i32 65535) #10, !srcloc !126
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !129
  tail call void @arm_heavy_mb() #10
  %21 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %base, align 4
  %add.ptr87 = getelementptr i8, ptr %22, i32 296
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr87, i32 -1) #10, !srcloc !126
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !129
  tail call void @arm_heavy_mb() #10
  %23 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %base, align 4
  %add.ptr87.1 = getelementptr i8, ptr %24, i32 360
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr87.1, i32 -1) #10, !srcloc !126
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !129
  tail call void @arm_heavy_mb() #10
  %25 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %base, align 4
  %add.ptr87.2 = getelementptr i8, ptr %26, i32 424
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr87.2, i32 -1) #10, !srcloc !126
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !129
  tail call void @arm_heavy_mb() #10
  %27 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %base, align 4
  %add.ptr87.3 = getelementptr i8, ptr %28, i32 488
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr87.3, i32 -1) #10, !srcloc !126
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !130
  tail call void @arm_heavy_mb() #10
  %29 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %base, align 4
  %add.ptr92 = getelementptr i8, ptr %30, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr92, i32 -1) #10, !srcloc !126
  store ptr %call.i, ptr @global_sdcp, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %31 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %arrayidx = getelementptr %struct.dcp, ptr %call.i, i32 0, i32 5, i32 0
  tail call void @__raw_spin_lock_init(ptr noundef %arrayidx, ptr noundef nonnull @.str.18, ptr noundef nonnull @mxs_dcp_probe.__key, i16 noundef signext 3) #10
  %arrayidx100 = getelementptr %struct.dcp, ptr %call.i, i32 0, i32 4, i32 0
  %32 = ptrtoint ptr %arrayidx100 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %arrayidx100, align 4
  %wait.i = getelementptr %struct.dcp, ptr %call.i, i32 0, i32 4, i32 0, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.34, ptr noundef nonnull @init_completion.__key) #10
  %arrayidx101 = getelementptr %struct.dcp, ptr %call.i, i32 0, i32 7, i32 0
  tail call void @crypto_init_queue(ptr noundef %arrayidx101, i32 noundef 50) #10
  %arrayidx.1 = getelementptr %struct.dcp, ptr %call.i, i32 0, i32 5, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %arrayidx.1, ptr noundef nonnull @.str.18, ptr noundef nonnull @mxs_dcp_probe.__key, i16 noundef signext 3) #10
  %arrayidx100.1 = getelementptr %struct.dcp, ptr %call.i, i32 0, i32 4, i32 1
  %33 = ptrtoint ptr %arrayidx100.1 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %arrayidx100.1, align 4
  %wait.i.1 = getelementptr %struct.dcp, ptr %call.i, i32 0, i32 4, i32 1, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i.1, ptr noundef nonnull @.str.34, ptr noundef nonnull @init_completion.__key) #10
  %arrayidx101.1 = getelementptr %struct.dcp, ptr %call.i, i32 0, i32 7, i32 1
  tail call void @crypto_init_queue(ptr noundef %arrayidx101.1, i32 noundef 50) #10
  %arrayidx.2 = getelementptr %struct.dcp, ptr %call.i, i32 0, i32 5, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %arrayidx.2, ptr noundef nonnull @.str.18, ptr noundef nonnull @mxs_dcp_probe.__key, i16 noundef signext 3) #10
  %arrayidx100.2 = getelementptr %struct.dcp, ptr %call.i, i32 0, i32 4, i32 2
  %34 = ptrtoint ptr %arrayidx100.2 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %arrayidx100.2, align 4
  %wait.i.2 = getelementptr %struct.dcp, ptr %call.i, i32 0, i32 4, i32 2, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i.2, ptr noundef nonnull @.str.34, ptr noundef nonnull @init_completion.__key) #10
  %arrayidx101.2 = getelementptr %struct.dcp, ptr %call.i, i32 0, i32 7, i32 2
  tail call void @crypto_init_queue(ptr noundef %arrayidx101.2, i32 noundef 50) #10
  %arrayidx.3 = getelementptr %struct.dcp, ptr %call.i, i32 0, i32 5, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %arrayidx.3, ptr noundef nonnull @.str.18, ptr noundef nonnull @mxs_dcp_probe.__key, i16 noundef signext 3) #10
  %arrayidx100.3 = getelementptr %struct.dcp, ptr %call.i, i32 0, i32 4, i32 3
  %35 = ptrtoint ptr %arrayidx100.3 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %arrayidx100.3, align 4
  %wait.i.3 = getelementptr %struct.dcp, ptr %call.i, i32 0, i32 4, i32 3, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i.3, ptr noundef nonnull @.str.34, ptr noundef nonnull @init_completion.__key) #10
  %arrayidx101.3 = getelementptr %struct.dcp, ptr %call.i, i32 0, i32 7, i32 3
  tail call void @crypto_init_queue(ptr noundef %arrayidx101.3, i32 noundef 50) #10
  %call105 = tail call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @dcp_chan_thread_sha, ptr noundef null, i32 noundef -1, ptr noundef nonnull @.str.19) #10
  %cmp.i296 = icmp ugt ptr %call105, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i296, label %do.end117, label %if.end121

do.end117:                                        ; preds = %do.body67
  call void @__sanitizer_cov_trace_pc() #12
  %thread302 = getelementptr inbounds %struct.dcp, ptr %call.i, i32 0, i32 6
  %36 = ptrtoint ptr %thread302 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call105, ptr %thread302, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.21) #13
  %37 = ptrtoint ptr %thread302 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %thread302, align 4
  %39 = ptrtoint ptr %38 to i32
  br label %err_disable_unprepare_clk

if.end121:                                        ; preds = %do.body67
  %call108 = tail call i32 @wake_up_process(ptr noundef %call105) #10
  %thread = getelementptr inbounds %struct.dcp, ptr %call.i, i32 0, i32 6
  %40 = ptrtoint ptr %thread to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call105, ptr %thread, align 4
  %call123 = tail call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @dcp_chan_thread_aes, ptr noundef null, i32 noundef -1, ptr noundef nonnull @.str.23) #10
  %cmp.i298 = icmp ugt ptr %call123, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i298, label %do.end137, label %if.end141

do.end137:                                        ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx130304 = getelementptr %struct.dcp, ptr %call.i, i32 0, i32 6, i32 2
  %41 = ptrtoint ptr %arrayidx130304 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call123, ptr %arrayidx130304, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.21) #13
  %42 = ptrtoint ptr %arrayidx130304 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx130304, align 4
  %44 = ptrtoint ptr %43 to i32
  br label %err_destroy_sha_thread

if.end141:                                        ; preds = %if.end121
  %call126 = tail call i32 @wake_up_process(ptr noundef %call123) #10
  %arrayidx130 = getelementptr %struct.dcp, ptr %call.i, i32 0, i32 6, i32 2
  %45 = ptrtoint ptr %arrayidx130 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call123, ptr %arrayidx130, align 4
  %46 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %base, align 4
  %add.ptr143 = getelementptr i8, ptr %47, i32 64
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr143) #10, !srcloc !131
  %49 = tail call i32 @llvm.bswap.i32(i32 %48)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !132
  %caps = getelementptr inbounds %struct.dcp, ptr %call.i, i32 0, i32 2
  %50 = ptrtoint ptr %caps to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %caps, align 4
  %and148 = and i32 %49, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and148)
  %tobool149.not = icmp eq i32 %and148, 0
  br i1 %tobool149.not, label %if.end141.if.end158_crit_edge, label %if.then150

if.end141.if.end158_crit_edge:                    ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end158

if.then150:                                       ; preds = %if.end141
  %call151 = tail call i32 @crypto_register_skciphers(ptr noundef nonnull @dcp_aes_algs, i32 noundef 2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call151)
  %tobool152.not = icmp eq i32 %call151, 0
  br i1 %tobool152.not, label %if.then150.if.end158_crit_edge, label %do.end156

if.then150.if.end158_crit_edge:                   ; preds = %if.then150
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end158

do.end156:                                        ; preds = %if.then150
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.27) #13
  br label %err_destroy_aes_thread

if.end158:                                        ; preds = %if.then150.if.end158_crit_edge, %if.end141.if.end158_crit_edge
  %51 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %caps, align 4
  %and160 = and i32 %52, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and160)
  %tobool161.not = icmp eq i32 %and160, 0
  br i1 %tobool161.not, label %if.end158.if.end170_crit_edge, label %if.then162

if.end158.if.end170_crit_edge:                    ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end170

if.then162:                                       ; preds = %if.end158
  %call163 = tail call i32 @crypto_register_ahash(ptr noundef nonnull @dcp_sha1_alg) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call163)
  %tobool164.not = icmp eq i32 %call163, 0
  br i1 %tobool164.not, label %if.then162.if.end170_crit_edge, label %do.end168

if.then162.if.end170_crit_edge:                   ; preds = %if.then162
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end170

do.end168:                                        ; preds = %if.then162
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.30, ptr noundef getelementptr inbounds (%struct.ahash_alg, ptr @dcp_sha1_alg, i32 0, i32 11, i32 3, i32 8)) #13
  br label %err_unregister_aes

if.end170:                                        ; preds = %if.then162.if.end170_crit_edge, %if.end158.if.end170_crit_edge
  %53 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %caps, align 4
  %and172 = and i32 %54, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and172)
  %tobool173.not = icmp eq i32 %and172, 0
  br i1 %tobool173.not, label %if.end170.cleanup_crit_edge, label %if.then174

if.end170.cleanup_crit_edge:                      ; preds = %if.end170
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then174:                                       ; preds = %if.end170
  %call175 = tail call i32 @crypto_register_ahash(ptr noundef nonnull @dcp_sha256_alg) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call175)
  %tobool176.not = icmp eq i32 %call175, 0
  br i1 %tobool176.not, label %if.then174.cleanup_crit_edge, label %do.end180

if.then174.cleanup_crit_edge:                     ; preds = %if.then174
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end180:                                        ; preds = %if.then174
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.30, ptr noundef getelementptr inbounds (%struct.ahash_alg, ptr @dcp_sha256_alg, i32 0, i32 11, i32 3, i32 8)) #13
  %55 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %caps, align 4
  %and184 = and i32 %56, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and184)
  %tobool185.not = icmp eq i32 %and184, 0
  br i1 %tobool185.not, label %do.end180.err_unregister_aes_crit_edge, label %if.then186

do.end180.err_unregister_aes_crit_edge:           ; preds = %do.end180
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_unregister_aes

if.then186:                                       ; preds = %do.end180
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @crypto_unregister_ahash(ptr noundef nonnull @dcp_sha1_alg) #10
  br label %err_unregister_aes

err_unregister_aes:                               ; preds = %if.then186, %do.end180.err_unregister_aes_crit_edge, %do.end168
  %ret.0 = phi i32 [ %call163, %do.end168 ], [ %call175, %if.then186 ], [ %call175, %do.end180.err_unregister_aes_crit_edge ]
  %57 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %caps, align 4
  %and189 = and i32 %58, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and189)
  %tobool190.not = icmp eq i32 %and189, 0
  br i1 %tobool190.not, label %err_unregister_aes.err_destroy_aes_thread_crit_edge, label %if.then191

err_unregister_aes.err_destroy_aes_thread_crit_edge: ; preds = %err_unregister_aes
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_destroy_aes_thread

if.then191:                                       ; preds = %err_unregister_aes
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @crypto_unregister_skciphers(ptr noundef nonnull @dcp_aes_algs, i32 noundef 2) #10
  br label %err_destroy_aes_thread

err_destroy_aes_thread:                           ; preds = %if.then191, %err_unregister_aes.err_destroy_aes_thread_crit_edge, %do.end156
  %ret.1 = phi i32 [ %call151, %do.end156 ], [ %ret.0, %if.then191 ], [ %ret.0, %err_unregister_aes.err_destroy_aes_thread_crit_edge ]
  %59 = ptrtoint ptr %arrayidx130 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %arrayidx130, align 4
  %call195 = tail call i32 @kthread_stop(ptr noundef %60) #10
  br label %err_destroy_sha_thread

err_destroy_sha_thread:                           ; preds = %err_destroy_aes_thread, %do.end137
  %ret.2 = phi i32 [ %44, %do.end137 ], [ %ret.1, %err_destroy_aes_thread ]
  %61 = ptrtoint ptr %thread to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %thread, align 4
  %call198 = tail call i32 @kthread_stop(ptr noundef %62) #10
  br label %err_disable_unprepare_clk

err_disable_unprepare_clk:                        ; preds = %err_destroy_sha_thread, %do.end117, %do.end65
  %ret.3 = phi i32 [ %call60, %do.end65 ], [ %39, %do.end117 ], [ %ret.2, %err_destroy_sha_thread ]
  %63 = ptrtoint ptr %dcp_clk to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dcp_clk, align 4
  tail call void @clk_disable(ptr noundef %64) #10
  tail call void @clk_unprepare(ptr noundef %64) #10
  br label %cleanup

cleanup:                                          ; preds = %err_disable_unprepare_clk, %if.then174.cleanup_crit_edge, %if.end170.cleanup_crit_edge, %if.then3.i, %if.end53.cleanup_crit_edge, %if.then48, %if.end33.cleanup_crit_edge, %do.end32, %do.end25, %if.then16, %if.end7.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -19, %do.end ], [ %3, %if.then16 ], [ %call.i291, %do.end25 ], [ %call.i292, %do.end32 ], [ %9, %if.then48 ], [ %ret.3, %err_disable_unprepare_clk ], [ %call, %if.end.cleanup_crit_edge ], [ %call4, %if.end3.cleanup_crit_edge ], [ -12, %if.end7.cleanup_crit_edge ], [ -12, %if.end33.cleanup_crit_edge ], [ 0, %if.then174.cleanup_crit_edge ], [ 0, %if.end170.cleanup_crit_edge ], [ %call1.i, %if.then3.i ], [ %call.i295, %if.end53.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxs_dcp_remove(ptr nocapture noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %caps = getelementptr inbounds %struct.dcp, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %caps, align 4
  %and = and i32 %3, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @crypto_unregister_ahash(ptr noundef nonnull @dcp_sha256_alg) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %4 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %caps, align 4
  %and2 = and i32 %5, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.end.if.end5_crit_edge, label %if.then4

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @crypto_unregister_ahash(ptr noundef nonnull @dcp_sha1_alg) #10
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end.if.end5_crit_edge
  %6 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %caps, align 4
  %and7 = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.end5.if.end10_crit_edge, label %if.then9

if.end5.if.end10_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

if.then9:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @crypto_unregister_skciphers(ptr noundef nonnull @dcp_aes_algs, i32 noundef 2) #10
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.end5.if.end10_crit_edge
  %thread = getelementptr inbounds %struct.dcp, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %thread to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %thread, align 4
  %call11 = tail call i32 @kthread_stop(ptr noundef %9) #10
  %arrayidx13 = getelementptr %struct.dcp, ptr %1, i32 0, i32 6, i32 2
  %10 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx13, align 4
  %call14 = tail call i32 @kthread_stop(ptr noundef %11) #10
  %dcp_clk = getelementptr inbounds %struct.dcp, ptr %1, i32 0, i32 8
  %12 = ptrtoint ptr %dcp_clk to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dcp_clk, align 4
  tail call void @clk_disable(ptr noundef %13) #10
  tail call void @clk_unprepare(ptr noundef %13) #10
  %14 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %driver_data.i.i, align 4
  store ptr null, ptr @global_sdcp, align 4
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxs_dcp_irq(i32 noundef %irq, ptr noundef %context) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.dcp, ptr %context, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 16
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !131
  %3 = lshr i32 %2, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !133
  %and = and i32 %3, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !134
  tail call void @arm_heavy_mb() #10
  %4 = shl nuw nsw i32 %and, 24
  %5 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base, align 4
  %add.ptr3 = getelementptr i8, ptr %6, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %4) #10, !srcloc !126
  %7 = and i32 %2, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool5.not = icmp eq i32 %7, 0
  br i1 %tobool5.not, label %do.body.for.inc_crit_edge, label %if.then6

do.body.for.inc_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx = getelementptr %struct.dcp, ptr %context, i32 0, i32 4, i32 0
  tail call void @complete(ptr noundef %arrayidx) #10
  br label %for.inc

for.inc:                                          ; preds = %if.then6, %do.body.for.inc_crit_edge
  %8 = and i32 %2, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool5.not.1 = icmp eq i32 %8, 0
  br i1 %tobool5.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then6.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.1

if.then6.1:                                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.1 = getelementptr %struct.dcp, ptr %context, i32 0, i32 4, i32 1
  tail call void @complete(ptr noundef %arrayidx.1) #10
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then6.1, %for.inc.for.inc.1_crit_edge
  %9 = and i32 %2, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool5.not.2 = icmp eq i32 %9, 0
  br i1 %tobool5.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then6.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.2

if.then6.2:                                       ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.2 = getelementptr %struct.dcp, ptr %context, i32 0, i32 4, i32 2
  tail call void @complete(ptr noundef %arrayidx.2) #10
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then6.2, %for.inc.1.for.inc.2_crit_edge
  %10 = and i32 %2, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool5.not.3 = icmp eq i32 %10, 0
  br i1 %tobool5.not.3, label %for.inc.2.cleanup_crit_edge, label %if.then6.3

for.inc.2.cleanup_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then6.3:                                       ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.3 = getelementptr %struct.dcp, ptr %context, i32 0, i32 4, i32 3
  tail call void @complete(ptr noundef %arrayidx.3) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then6.3, %for.inc.2.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 1, %if.then6.3 ], [ 1, %for.inc.2.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stmp_reset_block(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_init_queue(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_create_on_node(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dcp_chan_thread_sha(ptr nocapture noundef readnone %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @global_sdcp, align 4
  %call177 = tail call zeroext i1 @kthread_should_stop() #10
  br i1 %call177, label %entry.while.end_crit_edge, label %__here.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

__here.lr.ph:                                     ; preds = %entry
  %lock = getelementptr inbounds %struct.dcp, ptr %0, i32 0, i32 5
  %queue = getelementptr inbounds %struct.dcp, ptr %0, i32 0, i32 7
  %backlog.i = getelementptr inbounds %struct.dcp, ptr %0, i32 0, i32 7, i32 0, i32 1
  br label %__here

__here:                                           ; preds = %while.cond.backedge.__here_crit_edge, %__here.lr.ph
  %1 = tail call i32 @llvm.read_register.i32(metadata !115) #10
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 212
  %5 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 ptrtoint (ptr blockaddress(@dcp_chan_thread_sha, %__here) to i32), ptr %task_state_change, align 4
  %6 = load ptr, ptr %task, align 8
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile i32 1, ptr %6, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !135
  tail call void @_raw_spin_lock(ptr noundef %lock) #10
  %8 = ptrtoint ptr %backlog.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %backlog.i, align 4
  %cmp.i = icmp eq ptr %9, %queue
  %spec.select.i = select i1 %cmp.i, ptr null, ptr %9
  %call66 = tail call ptr @crypto_dequeue_request(ptr noundef %queue) #10
  tail call void @_raw_spin_unlock(ptr noundef %lock) #10
  %tobool69.not = icmp eq ptr %spec.select.i, null
  %tobool70.not = icmp eq ptr %call66, null
  %or.cond = select i1 %tobool69.not, i1 %tobool70.not, i1 false
  br i1 %or.cond, label %if.then71, label %__here123

if.then71:                                        ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @schedule() #10
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %dcp_sha_req_to_buf.exit, %if.end155.while.cond.backedge_crit_edge, %if.then71
  %call = tail call zeroext i1 @kthread_should_stop() #10
  br i1 %call, label %while.cond.backedge.while.end_crit_edge, label %while.cond.backedge.__here_crit_edge

while.cond.backedge.__here_crit_edge:             ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

while.cond.backedge.while.end_crit_edge:          ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

__here123:                                        ; preds = %__here
  %10 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %task, align 8
  %task_state_change127 = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 212
  %12 = ptrtoint ptr %task_state_change127 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 ptrtoint (ptr blockaddress(@dcp_chan_thread_sha, %__here123) to i32), ptr %task_state_change127, align 4
  %13 = load ptr, ptr %task, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile i32 0, ptr %13, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !136
  br i1 %tobool69.not, label %__here123.if.end155_crit_edge, label %if.then154

__here123.if.end155_crit_edge:                    ; preds = %__here123
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end155

if.then154:                                       ; preds = %__here123
  call void @__sanitizer_cov_trace_pc() #12
  %complete = getelementptr inbounds %struct.crypto_async_request, ptr %spec.select.i, i32 0, i32 1
  %15 = ptrtoint ptr %complete to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %complete, align 4
  tail call void %16(ptr noundef nonnull %spec.select.i, i32 noundef -115) #10
  br label %if.end155

if.end155:                                        ; preds = %if.then154, %__here123.if.end155_crit_edge
  br i1 %tobool70.not, label %if.end155.while.cond.backedge_crit_edge, label %if.then157

if.end155.while.cond.backedge_crit_edge:          ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.backedge

if.then157:                                       ; preds = %if.end155
  %17 = load ptr, ptr @global_sdcp, align 4
  %tfm.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %call66, i32 0, i32 3
  %18 = ptrtoint ptr %tfm.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tfm.i.i, align 16
  %__ctx.i.i = getelementptr inbounds %struct.ahash_request, ptr %call66, i32 0, i32 6
  %__crt_alg.i.i = getelementptr i8, ptr %19, i32 12
  %20 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %__crt_alg.i.i, align 4
  %add.ptr.i.i100.i = getelementptr i8, ptr %21, i32 -128
  %coh.i = getelementptr inbounds %struct.dcp, ptr %17, i32 0, i32 3
  %22 = ptrtoint ptr %coh.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %coh.i, align 4
  %sha_in_buf.i = getelementptr inbounds %struct.dcp_coherent_block, ptr %23, i32 0, i32 2
  %sha_out_buf.i = getelementptr inbounds %struct.dcp_coherent_block, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %__ctx.i.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %bf.load.i = load i8, ptr %__ctx.i.i, align 4
  %25 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool.not.i = icmp eq i8 %25, 0
  br i1 %tobool.not.i, label %if.then157.if.end.i_crit_edge, label %if.then.i

if.then157.if.end.i_crit_edge:                    ; preds = %if.then157
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i:                                        ; preds = %if.then157
  call void @__sanitizer_cov_trace_pc() #12
  %bf.clear8.i = and i8 %bf.load.i, -65
  %26 = ptrtoint ptr %__ctx.i.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %bf.clear8.i, ptr %__ctx.i.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then157.if.end.i_crit_edge
  %src9.i = getelementptr inbounds %struct.ahash_request, ptr %call66, i32 0, i32 2
  %27 = ptrtoint ptr %src9.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %src9.i, align 4
  %nbytes.i = getelementptr inbounds %struct.ahash_request, ptr %call66, i32 0, i32 1
  %29 = ptrtoint ptr %nbytes.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %nbytes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool10.not102.i = icmp eq i32 %30, 0
  br i1 %tobool10.not102.i, label %if.end.i.while.end.i_crit_edge, label %while.body.lr.ph.i

if.end.i.while.end.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i

while.body.lr.ph.i:                               ; preds = %if.end.i
  %fill.i = getelementptr i8, ptr %19, i32 132
  br label %while.body.i

while.body.i:                                     ; preds = %if.end31.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %oft.0104.i = phi i32 [ 0, %while.body.lr.ph.i ], [ %add16.i, %if.end31.i.while.body.i_crit_edge ]
  %len.0103.i = phi i32 [ %30, %while.body.lr.ph.i ], [ %sub15.i, %if.end31.i.while.body.i_crit_edge ]
  %31 = ptrtoint ptr %fill.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %fill.i, align 4
  %add.i = add i32 %32, %len.0103.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add.i)
  %cmp.i175 = icmp ugt i32 %add.i, 4096
  %sub.i = sub i32 4096, %32
  %clen.0.i = select i1 %cmp.i175, i32 %sub.i, i32 %len.0103.i
  %add.ptr.i = getelementptr i8, ptr %sha_in_buf.i, i32 %32
  tail call void @scatterwalk_map_and_copy(ptr noundef %add.ptr.i, ptr noundef %28, i32 noundef %oft.0104.i, i32 noundef %clen.0.i, i32 noundef 0) #10
  %sub15.i = sub i32 %len.0103.i, %clen.0.i
  %add16.i = add i32 %clen.0.i, %oft.0104.i
  %33 = ptrtoint ptr %fill.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %fill.i, align 4
  %add18.i = add i32 %clen.0.i, %34
  store i32 %add18.i, ptr %fill.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub15.i)
  %tobool19.not.i = icmp ne i32 %sub15.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add18.i)
  %cmp21.i = icmp eq i32 %add18.i, 4096
  %or.cond.i = select i1 %tobool19.not.i, i1 %cmp21.i, i1 false
  br i1 %or.cond.i, label %if.then22.i, label %while.body.i.if.end31.i_crit_edge

while.body.i.if.end31.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31.i

if.then22.i:                                      ; preds = %while.body.i
  %call23.i = tail call fastcc i32 @mxs_dcp_run_sha(ptr noundef nonnull %call66) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i)
  %tobool24.not.i = icmp eq i32 %call23.i, 0
  br i1 %tobool24.not.i, label %if.end26.i, label %if.then22.i.dcp_sha_req_to_buf.exit_crit_edge

if.then22.i.dcp_sha_req_to_buf.exit_crit_edge:    ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dcp_sha_req_to_buf.exit

if.end26.i:                                       ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #12
  %35 = ptrtoint ptr %fill.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %fill.i, align 4
  %36 = ptrtoint ptr %__ctx.i.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %bf.load28.i = load i8, ptr %__ctx.i.i, align 4
  %bf.clear29.i = and i8 %bf.load28.i, 127
  store i8 %bf.clear29.i, ptr %__ctx.i.i, align 4
  br label %if.end31.i

if.end31.i:                                       ; preds = %if.end26.i, %while.body.i.if.end31.i_crit_edge
  %tobool10.not.i = icmp eq i32 %sub15.i, 0
  br i1 %tobool10.not.i, label %if.end31.i.while.end.i_crit_edge, label %if.end31.i.while.body.i_crit_edge

if.end31.i.while.body.i_crit_edge:                ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

if.end31.i.while.end.i_crit_edge:                 ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i

while.end.i:                                      ; preds = %if.end31.i.while.end.i_crit_edge, %if.end.i.while.end.i_crit_edge
  br i1 %tobool.not.i, label %while.end.i.dcp_sha_req_to_buf.exit_crit_edge, label %if.then33.i

while.end.i.dcp_sha_req_to_buf.exit_crit_edge:    ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dcp_sha_req_to_buf.exit

if.then33.i:                                      ; preds = %while.end.i
  %37 = ptrtoint ptr %__ctx.i.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %bf.load34.i = load i8, ptr %__ctx.i.i, align 4
  %bf.set36.i = or i8 %bf.load34.i, 64
  store i8 %bf.set36.i, ptr %__ctx.i.i, align 4
  %result.i = getelementptr inbounds %struct.ahash_request, ptr %call66, i32 0, i32 3
  %38 = ptrtoint ptr %result.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %result.i, align 32
  %tobool37.not.i = icmp eq ptr %39, null
  br i1 %tobool37.not.i, label %if.then33.i.dcp_sha_req_to_buf.exit_crit_edge, label %if.end39.i

if.then33.i.dcp_sha_req_to_buf.exit_crit_edge:    ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dcp_sha_req_to_buf.exit

if.end39.i:                                       ; preds = %if.then33.i
  %call40.i = tail call fastcc i32 @mxs_dcp_run_sha(ptr noundef nonnull %call66) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40.i)
  %tobool41.not.i = icmp eq i32 %call40.i, 0
  br i1 %tobool41.not.i, label %if.end43.i, label %if.end39.i.dcp_sha_req_to_buf.exit_crit_edge

if.end39.i.dcp_sha_req_to_buf.exit_crit_edge:     ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dcp_sha_req_to_buf.exit

if.end43.i:                                       ; preds = %if.end39.i
  %fill44.i = getelementptr i8, ptr %19, i32 132
  %40 = ptrtoint ptr %fill44.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %fill44.i, align 4
  %41 = ptrtoint ptr %add.ptr.i.i100.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %add.ptr.i.i100.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp45105.not.i = icmp eq i32 %42, 0
  br i1 %cmp45105.not.i, label %if.end43.i.dcp_sha_req_to_buf.exit_crit_edge, label %if.end43.i.for.body.i_crit_edge

if.end43.i.for.body.i_crit_edge:                  ; preds = %if.end43.i
  br label %for.body.i

if.end43.i.dcp_sha_req_to_buf.exit_crit_edge:     ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dcp_sha_req_to_buf.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end43.i.for.body.i_crit_edge
  %43 = phi i32 [ %51, %for.body.i.for.body.i_crit_edge ], [ %42, %if.end43.i.for.body.i_crit_edge ]
  %i.0106.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end43.i.for.body.i_crit_edge ]
  %44 = xor i32 %i.0106.i, -1
  %sub48.i = add i32 %43, %44
  %arrayidx.i = getelementptr i8, ptr %sha_out_buf.i, i32 %sub48.i
  %45 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx.i, align 1
  %47 = ptrtoint ptr %result.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %result.i, align 32
  %arrayidx50.i = getelementptr i8, ptr %48, i32 %i.0106.i
  %49 = ptrtoint ptr %arrayidx50.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %46, ptr %arrayidx50.i, align 1
  %inc.i = add nuw i32 %i.0106.i, 1
  %50 = ptrtoint ptr %add.ptr.i.i100.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %add.ptr.i.i100.i, align 128
  %cmp45.i = icmp ugt i32 %51, %inc.i
  br i1 %cmp45.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.dcp_sha_req_to_buf.exit_crit_edge

for.body.i.dcp_sha_req_to_buf.exit_crit_edge:     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dcp_sha_req_to_buf.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

dcp_sha_req_to_buf.exit:                          ; preds = %for.body.i.dcp_sha_req_to_buf.exit_crit_edge, %if.end43.i.dcp_sha_req_to_buf.exit_crit_edge, %if.end39.i.dcp_sha_req_to_buf.exit_crit_edge, %if.then33.i.dcp_sha_req_to_buf.exit_crit_edge, %while.end.i.dcp_sha_req_to_buf.exit_crit_edge, %if.then22.i.dcp_sha_req_to_buf.exit_crit_edge
  %retval.0.i = phi i32 [ -22, %if.then33.i.dcp_sha_req_to_buf.exit_crit_edge ], [ %call40.i, %if.end39.i.dcp_sha_req_to_buf.exit_crit_edge ], [ 0, %while.end.i.dcp_sha_req_to_buf.exit_crit_edge ], [ 0, %if.end43.i.dcp_sha_req_to_buf.exit_crit_edge ], [ 0, %for.body.i.dcp_sha_req_to_buf.exit_crit_edge ], [ %call23.i, %if.then22.i.dcp_sha_req_to_buf.exit_crit_edge ]
  %complete159 = getelementptr inbounds %struct.crypto_async_request, ptr %call66, i32 0, i32 1
  %52 = ptrtoint ptr %complete159 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %complete159, align 4
  tail call void %53(ptr noundef nonnull %call66, i32 noundef %retval.0.i) #10
  br label %while.cond.backedge

while.end:                                        ; preds = %while.cond.backedge.while.end_crit_edge, %entry.while.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dcp_chan_thread_aes(ptr nocapture noundef readnone %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @global_sdcp, align 4
  %call189 = tail call zeroext i1 @kthread_should_stop() #10
  br i1 %call189, label %entry.while.end_crit_edge, label %__here.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

__here.lr.ph:                                     ; preds = %entry
  %arrayidx = getelementptr %struct.dcp, ptr %0, i32 0, i32 5, i32 2
  %arrayidx62 = getelementptr %struct.dcp, ptr %0, i32 0, i32 7, i32 2
  %backlog.i = getelementptr %struct.dcp, ptr %0, i32 0, i32 7, i32 2, i32 1
  br label %__here

__here:                                           ; preds = %while.cond.backedge.__here_crit_edge, %__here.lr.ph
  %1 = tail call i32 @llvm.read_register.i32(metadata !115) #10
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 212
  %5 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 ptrtoint (ptr blockaddress(@dcp_chan_thread_aes, %__here) to i32), ptr %task_state_change, align 4
  %6 = load ptr, ptr %task, align 8
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile i32 1, ptr %6, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !137
  tail call void @_raw_spin_lock(ptr noundef %arrayidx) #10
  %8 = ptrtoint ptr %backlog.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %backlog.i, align 4
  %cmp.i = icmp eq ptr %9, %arrayidx62
  %spec.select.i = select i1 %cmp.i, ptr null, ptr %9
  %call66 = tail call ptr @crypto_dequeue_request(ptr noundef %arrayidx62) #10
  tail call void @_raw_spin_unlock(ptr noundef %arrayidx) #10
  %tobool69.not = icmp eq ptr %spec.select.i, null
  %tobool70.not = icmp eq ptr %call66, null
  %or.cond = select i1 %tobool69.not, i1 %tobool70.not, i1 false
  br i1 %or.cond, label %if.then71, label %__here123

if.then71:                                        ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @schedule() #10
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %mxs_dcp_aes_block_crypt.exit, %if.end155.while.cond.backedge_crit_edge, %if.then71
  %call = tail call zeroext i1 @kthread_should_stop() #10
  br i1 %call, label %while.cond.backedge.while.end_crit_edge, label %while.cond.backedge.__here_crit_edge

while.cond.backedge.__here_crit_edge:             ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

while.cond.backedge.while.end_crit_edge:          ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

__here123:                                        ; preds = %__here
  %10 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %task, align 8
  %task_state_change127 = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 212
  %12 = ptrtoint ptr %task_state_change127 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 ptrtoint (ptr blockaddress(@dcp_chan_thread_aes, %__here123) to i32), ptr %task_state_change127, align 4
  %13 = load ptr, ptr %task, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile i32 0, ptr %13, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !138
  br i1 %tobool69.not, label %__here123.if.end155_crit_edge, label %if.then154

__here123.if.end155_crit_edge:                    ; preds = %__here123
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end155

if.then154:                                       ; preds = %__here123
  call void @__sanitizer_cov_trace_pc() #12
  %complete = getelementptr inbounds %struct.crypto_async_request, ptr %spec.select.i, i32 0, i32 1
  %15 = ptrtoint ptr %complete to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %complete, align 4
  tail call void %16(ptr noundef nonnull %spec.select.i, i32 noundef -115) #10
  br label %if.end155

if.end155:                                        ; preds = %if.then154, %__here123.if.end155_crit_edge
  br i1 %tobool70.not, label %if.end155.while.cond.backedge_crit_edge, label %if.then157

if.end155.while.cond.backedge_crit_edge:          ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.backedge

if.then157:                                       ; preds = %if.end155
  %17 = load ptr, ptr @global_sdcp, align 4
  %add.ptr.i.i = getelementptr i8, ptr %call66, i32 -16
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %call66, i32 0, i32 3
  %18 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tfm.i, align 4
  %__crt_ctx.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %19, i32 0, i32 5
  %__ctx.i.i = getelementptr i8, ptr %call66, i32 112
  %dst3.i = getelementptr i8, ptr %call66, i32 -4
  %20 = ptrtoint ptr %dst3.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dst3.i, align 4
  %src4.i = getelementptr i8, ptr %call66, i32 -8
  %call5.i = tail call i32 @sg_nents(ptr noundef %21) #10
  %coh.i = getelementptr inbounds %struct.dcp, ptr %17, i32 0, i32 3
  %22 = ptrtoint ptr %coh.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %coh.i, align 4
  %aes_out_buf.i = getelementptr inbounds %struct.dcp_coherent_block, ptr %23, i32 0, i32 1
  %aes_key.i = getelementptr inbounds %struct.dcp_coherent_block, ptr %23, i32 0, i32 4
  %fill.i = getelementptr inbounds %struct.crypto_tfm, ptr %19, i32 1, i32 1
  %24 = ptrtoint ptr %fill.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %fill.i, align 4
  %key10.i = getelementptr inbounds %struct.crypto_tfm, ptr %19, i32 1, i32 4, i32 100
  %key_len.i = getelementptr inbounds %struct.crypto_tfm, ptr %19, i32 1, i32 4, i32 96
  %25 = ptrtoint ptr %key_len.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %key_len.i, align 4
  %27 = call ptr @memcpy(ptr %aes_key.i, ptr %key10.i, i32 %26)
  %28 = ptrtoint ptr %__ctx.i.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %bf.load.i = load i8, ptr %__ctx.i.i, align 128
  %29 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool.not.i = icmp eq i8 %29, 0
  %add.ptr.i = getelementptr %struct.dcp_coherent_block, ptr %23, i32 0, i32 4, i32 16
  br i1 %tobool.not.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.then157
  call void @__sanitizer_cov_trace_pc() #12
  %iv.i = getelementptr i8, ptr %call66, i32 -12
  %30 = ptrtoint ptr %iv.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %iv.i, align 4
  %32 = call ptr @memcpy(ptr %add.ptr.i, ptr %31, i32 16)
  br label %if.end.i

if.else.i:                                        ; preds = %if.then157
  call void @__sanitizer_cov_trace_pc() #12
  %33 = call ptr @memset(ptr %add.ptr.i, i32 0, i32 16)
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %init.0.i = phi i32 [ 0, %if.else.i ], [ 1, %if.then.i ]
  %34 = ptrtoint ptr %src4.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %src4.i, align 8
  %call14171.i = tail call i32 @sg_nents(ptr noundef %35) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14171.i)
  %cmp172.not.i = icmp eq i32 %call14171.i, 0
  br i1 %cmp172.not.i, label %if.end.i.for.end.i_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

if.end.i.for.end.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %init.1178.i = phi i32 [ %init.3.i, %for.inc.i.for.body.i_crit_edge ], [ %init.0.i, %if.end.i.for.body.i_crit_edge ]
  %tlen.0177.i = phi i32 [ %add.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end.i.for.body.i_crit_edge ]
  %i.0176.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end.i.for.body.i_crit_edge ]
  %last_out_len.0175.i = phi i32 [ %last_out_len.2.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end.i.for.body.i_crit_edge ]
  %dst_off.0174.i = phi i32 [ %dst_off.2.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end.i.for.body.i_crit_edge ]
  %src.0173.i = phi ptr [ %call57.i, %for.inc.i.for.body.i_crit_edge ], [ %35, %if.end.i.for.body.i_crit_edge ]
  %36 = ptrtoint ptr %src.0173.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %src.0173.i, align 4
  %and.i.i.i.i = and i32 %37, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.i.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i, label %sg_virt.exit.i, label %do.body2.i.i.i, !prof !139

do.body2.i.i.i:                                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #10, !srcloc !140
  unreachable

sg_virt.exit.i:                                   ; preds = %for.body.i
  %and.i.i.i = and i32 %37, -4
  %38 = inttoptr i32 %and.i.i.i to ptr
  %call1.i.i = tail call ptr @page_address(ptr noundef %38) #10
  %offset.i.i = getelementptr inbounds %struct.scatterlist, ptr %src.0173.i, i32 0, i32 1
  %39 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %offset.i.i, align 4
  %add.ptr.i151.i = getelementptr i8, ptr %call1.i.i, i32 %40
  %dma_length.i = getelementptr inbounds %struct.scatterlist, ptr %src.0173.i, i32 0, i32 4
  %41 = ptrtoint ptr %dma_length.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %dma_length.i, align 4
  %add.i = add i32 %42, %tlen.0177.i
  %43 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %add.ptr.i.i, align 128
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %44)
  %cmp16.i = icmp ugt i32 %add.i, %44
  %sub20.i = sub i32 %44, %tlen.0177.i
  %spec.select.i175 = select i1 %cmp16.i, i32 %sub20.i, i32 %42
  br label %do.body.i

do.body.i:                                        ; preds = %do.cond.i.do.body.i_crit_edge, %sg_virt.exit.i
  %dst_off.1.i = phi i32 [ %dst_off.0174.i, %sg_virt.exit.i ], [ %dst_off.2.i, %do.cond.i.do.body.i_crit_edge ]
  %src_buf.0.i = phi ptr [ %add.ptr.i151.i, %sg_virt.exit.i ], [ %add.ptr33.i, %do.cond.i.do.body.i_crit_edge ]
  %last_out_len.1.i = phi i32 [ %last_out_len.0175.i, %sg_virt.exit.i ], [ %last_out_len.2.i, %do.cond.i.do.body.i_crit_edge ]
  %len.1.i = phi i32 [ %spec.select.i175, %sg_virt.exit.i ], [ %sub32.i, %do.cond.i.do.body.i_crit_edge ]
  %init.2.i = phi i32 [ %init.1178.i, %sg_virt.exit.i ], [ %init.3.i, %do.cond.i.do.body.i_crit_edge ]
  %45 = ptrtoint ptr %fill.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %fill.i, align 4
  %add23.i = add i32 %46, %len.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add23.i)
  %cmp24.i = icmp ugt i32 %add23.i, 4096
  %sub27.i = sub i32 4096, %46
  %clen.0.i = select i1 %cmp24.i, i32 %sub27.i, i32 %len.1.i
  %add.ptr31.i = getelementptr i8, ptr %23, i32 %46
  %47 = call ptr @memcpy(ptr %add.ptr31.i, ptr %src_buf.0.i, i32 %clen.0.i)
  %sub32.i = sub i32 %len.1.i, %clen.0.i
  %add.ptr33.i = getelementptr i8, ptr %src_buf.0.i, i32 %clen.0.i
  %48 = ptrtoint ptr %fill.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %fill.i, align 4
  %add35.i = add i32 %clen.0.i, %49
  store i32 %add35.i, ptr %fill.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add35.i)
  %cmp37.i = icmp eq i32 %add35.i, 4096
  br i1 %cmp37.i, label %do.body.i.if.then41.i_crit_edge, label %lor.lhs.false.i

do.body.i.if.then41.i_crit_edge:                  ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then41.i

lor.lhs.false.i:                                  ; preds = %do.body.i
  %50 = ptrtoint ptr %src.0173.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %src.0173.i, align 4
  %and.i.i = and i32 %51, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.i = icmp ne i32 %and.i.i, 0
  %brmerge.i = select i1 %tobool.i.i, i1 true, i1 %cmp16.i
  br i1 %brmerge.i, label %lor.lhs.false.i.if.then41.i_crit_edge, label %lor.lhs.false.i.do.cond.i_crit_edge

lor.lhs.false.i.do.cond.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.cond.i

lor.lhs.false.i.if.then41.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then41.i

if.then41.i:                                      ; preds = %lor.lhs.false.i.if.then41.i_crit_edge, %do.body.i.if.then41.i_crit_edge
  %52 = load ptr, ptr @global_sdcp, align 4
  %coh.i.i = getelementptr inbounds %struct.dcp, ptr %52, i32 0, i32 3
  %53 = ptrtoint ptr %coh.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %coh.i.i, align 4
  %55 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %__crt_ctx.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.dcp_coherent_block, ptr %54, i32 0, i32 5, i32 %56
  %57 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %52, align 4
  %aes_key.i.i = getelementptr inbounds %struct.dcp_coherent_block, ptr %54, i32 0, i32 4
  %call.i.i.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %aes_key.i.i) #10
  br i1 %call.i.i.i, label %land.rhs.i.i.i, label %dma_map_single_attrs.exit.i.i

land.rhs.i.i.i:                                   ; preds = %if.then41.i
  %.b1.i.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i.i, label %land.rhs.i.i.i.dma_map_single_attrs.exit.thread.i.i_crit_edge, label %if.then.i.i.i, !prof !139

land.rhs.i.i.i.dma_map_single_attrs.exit.thread.i.i_crit_edge: ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_map_single_attrs.exit.thread.i.i

if.then.i.i.i:                                    ; preds = %land.rhs.i.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i.i = tail call ptr @dev_driver_string(ptr noundef %58) #10
  %init_name.i.i.i.i = getelementptr inbounds %struct.device, ptr %58, i32 0, i32 3
  %59 = ptrtoint ptr %init_name.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %init_name.i.i.i.i, align 8
  %tobool.not.i.i.i.i = icmp eq ptr %60, null
  br i1 %tobool.not.i.i.i.i, label %if.end.i.i.i.i, label %if.then.i.i.i.dev_name.exit.i.i.i_crit_edge

if.then.i.i.i.dev_name.exit.i.i.i_crit_edge:      ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit.i.i.i

if.end.i.i.i.i:                                   ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %61 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %58, align 4
  br label %dev_name.exit.i.i.i

dev_name.exit.i.i.i:                              ; preds = %if.end.i.i.i.i, %if.then.i.i.i.dev_name.exit.i.i.i_crit_edge
  %retval.0.i.i.i.i = phi ptr [ %62, %if.end.i.i.i.i ], [ %60, %if.then.i.i.i.dev_name.exit.i.i.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.36, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.37, ptr noundef %call16.i.i.i, ptr noundef %retval.0.i.i.i.i) #10
  br label %dma_map_single_attrs.exit.thread.i.i

dma_map_single_attrs.exit.thread.i.i:             ; preds = %dev_name.exit.i.i.i, %land.rhs.i.i.i.dma_map_single_attrs.exit.thread.i.i_crit_edge
  %63 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %52, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %64, i32 noundef -1) #10
  br label %mxs_dcp_aes_block_crypt.exit

dma_map_single_attrs.exit.i.i:                    ; preds = %if.then41.i
  tail call void @debug_dma_map_single(ptr noundef %58, ptr noundef %aes_key.i.i, i32 noundef 32) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %65 = load ptr, ptr @mem_map, align 4
  %66 = ptrtoint ptr %aes_key.i.i to i32
  %sub.i.i.i = add i32 %66, 1073741824
  %shr.i.i.i = lshr i32 %sub.i.i.i, 12
  %add.ptr.i.i.i = getelementptr %struct.page, ptr %65, i32 %shr.i.i.i
  %and.i.i152.i = and i32 %66, 4095
  %call41.i.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %58, ptr noundef %add.ptr.i.i.i, i32 noundef %and.i.i152.i, i32 noundef 32, i32 noundef 1, i32 noundef 0) #10
  %67 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %52, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %68, i32 noundef %call41.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i.i.i)
  %cmp.i.i.i = icmp eq i32 %call41.i.i.i, -1
  br i1 %cmp.i.i.i, label %dma_map_single_attrs.exit.i.i.mxs_dcp_aes_block_crypt.exit_crit_edge, label %if.end.i.i

dma_map_single_attrs.exit.i.i.mxs_dcp_aes_block_crypt.exit_crit_edge: ; preds = %dma_map_single_attrs.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mxs_dcp_aes_block_crypt.exit

if.end.i.i:                                       ; preds = %dma_map_single_attrs.exit.i.i
  %69 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %52, align 4
  %71 = ptrtoint ptr %coh.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %coh.i.i, align 4
  %call.i99.i.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %72) #10
  br i1 %call.i99.i.i, label %land.rhs.i101.i.i, label %dma_map_single_attrs.exit116.i.i

land.rhs.i101.i.i:                                ; preds = %if.end.i.i
  %.b1.i100.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i100.i.i, label %land.rhs.i101.i.i.dma_map_single_attrs.exit116.thread.i.i_crit_edge, label %if.then.i105.i.i, !prof !139

land.rhs.i101.i.i.dma_map_single_attrs.exit116.thread.i.i_crit_edge: ; preds = %land.rhs.i101.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_map_single_attrs.exit116.thread.i.i

if.then.i105.i.i:                                 ; preds = %land.rhs.i101.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i102.i.i = tail call ptr @dev_driver_string(ptr noundef %70) #10
  %init_name.i.i103.i.i = getelementptr inbounds %struct.device, ptr %70, i32 0, i32 3
  %73 = ptrtoint ptr %init_name.i.i103.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %init_name.i.i103.i.i, align 8
  %tobool.not.i.i104.i.i = icmp eq ptr %74, null
  br i1 %tobool.not.i.i104.i.i, label %if.end.i.i106.i.i, label %if.then.i105.i.i.dev_name.exit.i108.i.i_crit_edge

if.then.i105.i.i.dev_name.exit.i108.i.i_crit_edge: ; preds = %if.then.i105.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit.i108.i.i

if.end.i.i106.i.i:                                ; preds = %if.then.i105.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %75 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %70, align 4
  br label %dev_name.exit.i108.i.i

dev_name.exit.i108.i.i:                           ; preds = %if.end.i.i106.i.i, %if.then.i105.i.i.dev_name.exit.i108.i.i_crit_edge
  %retval.0.i.i107.i.i = phi ptr [ %76, %if.end.i.i106.i.i ], [ %74, %if.then.i105.i.i.dev_name.exit.i108.i.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.36, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.37, ptr noundef %call16.i102.i.i, ptr noundef %retval.0.i.i107.i.i) #10
  br label %dma_map_single_attrs.exit116.thread.i.i

dma_map_single_attrs.exit116.thread.i.i:          ; preds = %dev_name.exit.i108.i.i, %land.rhs.i101.i.i.dma_map_single_attrs.exit116.thread.i.i_crit_edge
  %77 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %52, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %78, i32 noundef -1) #10
  br label %mxs_dcp_run_aes.exit.thread156.i

dma_map_single_attrs.exit116.i.i:                 ; preds = %if.end.i.i
  tail call void @debug_dma_map_single(ptr noundef %70, ptr noundef %72, i32 noundef 4096) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %79 = load ptr, ptr @mem_map, align 4
  %80 = ptrtoint ptr %72 to i32
  %sub.i109.i.i = add i32 %80, 1073741824
  %shr.i110.i.i = lshr i32 %sub.i109.i.i, 12
  %add.ptr.i111.i.i = getelementptr %struct.page, ptr %79, i32 %shr.i110.i.i
  %and.i112.i.i = and i32 %80, 4095
  %call41.i113.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %70, ptr noundef %add.ptr.i111.i.i, i32 noundef %and.i112.i.i, i32 noundef 4096, i32 noundef 1, i32 noundef 0) #10
  %81 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %52, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %82, i32 noundef %call41.i113.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i113.i.i)
  %cmp.i117.i.i = icmp eq i32 %call41.i113.i.i, -1
  br i1 %cmp.i117.i.i, label %dma_map_single_attrs.exit116.i.i.mxs_dcp_run_aes.exit.thread156.i_crit_edge, label %if.end14.i.i

dma_map_single_attrs.exit116.i.i.mxs_dcp_run_aes.exit.thread156.i_crit_edge: ; preds = %dma_map_single_attrs.exit116.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mxs_dcp_run_aes.exit.thread156.i

if.end14.i.i:                                     ; preds = %dma_map_single_attrs.exit116.i.i
  %83 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %52, align 4
  %85 = ptrtoint ptr %coh.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %coh.i.i, align 4
  %aes_out_buf.i.i = getelementptr inbounds %struct.dcp_coherent_block, ptr %86, i32 0, i32 1
  %call.i119.i.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %aes_out_buf.i.i) #10
  br i1 %call.i119.i.i, label %land.rhs.i121.i.i, label %dma_map_single_attrs.exit136.i.i

land.rhs.i121.i.i:                                ; preds = %if.end14.i.i
  %.b1.i120.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i120.i.i, label %land.rhs.i121.i.i.dma_map_single_attrs.exit136.thread.i.i_crit_edge, label %if.then.i125.i.i, !prof !139

land.rhs.i121.i.i.dma_map_single_attrs.exit136.thread.i.i_crit_edge: ; preds = %land.rhs.i121.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_map_single_attrs.exit136.thread.i.i

if.then.i125.i.i:                                 ; preds = %land.rhs.i121.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i122.i.i = tail call ptr @dev_driver_string(ptr noundef %84) #10
  %init_name.i.i123.i.i = getelementptr inbounds %struct.device, ptr %84, i32 0, i32 3
  %87 = ptrtoint ptr %init_name.i.i123.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %init_name.i.i123.i.i, align 8
  %tobool.not.i.i124.i.i = icmp eq ptr %88, null
  br i1 %tobool.not.i.i124.i.i, label %if.end.i.i126.i.i, label %if.then.i125.i.i.dev_name.exit.i128.i.i_crit_edge

if.then.i125.i.i.dev_name.exit.i128.i.i_crit_edge: ; preds = %if.then.i125.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit.i128.i.i

if.end.i.i126.i.i:                                ; preds = %if.then.i125.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %89 = ptrtoint ptr %84 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %84, align 4
  br label %dev_name.exit.i128.i.i

dev_name.exit.i128.i.i:                           ; preds = %if.end.i.i126.i.i, %if.then.i125.i.i.dev_name.exit.i128.i.i_crit_edge
  %retval.0.i.i127.i.i = phi ptr [ %90, %if.end.i.i126.i.i ], [ %88, %if.then.i125.i.i.dev_name.exit.i128.i.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.36, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.37, ptr noundef %call16.i122.i.i, ptr noundef %retval.0.i.i127.i.i) #10
  br label %dma_map_single_attrs.exit136.thread.i.i

dma_map_single_attrs.exit136.thread.i.i:          ; preds = %dev_name.exit.i128.i.i, %land.rhs.i121.i.i.dma_map_single_attrs.exit136.thread.i.i_crit_edge
  %91 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %52, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %92, i32 noundef -1) #10
  br label %mxs_dcp_run_aes.exit.i

dma_map_single_attrs.exit136.i.i:                 ; preds = %if.end14.i.i
  tail call void @debug_dma_map_single(ptr noundef %84, ptr noundef %aes_out_buf.i.i, i32 noundef 4096) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %93 = load ptr, ptr @mem_map, align 4
  %94 = ptrtoint ptr %aes_out_buf.i.i to i32
  %sub.i129.i.i = add i32 %94, 1073741824
  %shr.i130.i.i = lshr i32 %sub.i129.i.i, 12
  %add.ptr.i131.i.i = getelementptr %struct.page, ptr %93, i32 %shr.i130.i.i
  %and.i132.i.i = and i32 %94, 4095
  %call41.i133.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %84, ptr noundef %add.ptr.i131.i.i, i32 noundef %and.i132.i.i, i32 noundef 4096, i32 noundef 2, i32 noundef 0) #10
  %95 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %52, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %96, i32 noundef %call41.i133.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i133.i.i)
  %cmp.i137.i.i = icmp eq i32 %call41.i133.i.i, -1
  br i1 %cmp.i137.i.i, label %dma_map_single_attrs.exit136.i.i.mxs_dcp_run_aes.exit.i_crit_edge, label %if.end23.i.i

dma_map_single_attrs.exit136.i.i.mxs_dcp_run_aes.exit.i_crit_edge: ; preds = %dma_map_single_attrs.exit136.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mxs_dcp_run_aes.exit.i

if.end23.i.i:                                     ; preds = %dma_map_single_attrs.exit136.i.i
  %97 = ptrtoint ptr %fill.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %fill.i, align 4
  %rem.i.i = and i32 %98, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i.i)
  %tobool24.not.i.i = icmp eq i32 %rem.i.i, 0
  br i1 %tobool24.not.i.i, label %if.end27.i.i, label %do.end.i.i

do.end.i.i:                                       ; preds = %if.end23.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %99 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %52, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %100, ptr noundef nonnull @.str.44) #13
  br label %aes_done_run.i.i

if.end27.i.i:                                     ; preds = %if.end23.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %control0.i.i = getelementptr %struct.dcp_coherent_block, ptr %54, i32 0, i32 5, i32 %56, i32 1
  %101 = ptrtoint ptr %control0.i.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 2083, ptr %control0.i.i, align 4
  %102 = ptrtoint ptr %__ctx.i.i to i32
  call void @__asan_load1_noabort(i32 %102)
  %bf.load.i.i = load i8, ptr %__ctx.i.i, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i)
  %tobool29.not.i.i = icmp sgt i8 %bf.load.i.i, -1
  %spec.store.select.i.i = select i1 %tobool29.not.i.i, i32 2083, i32 2339
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %init.2.i)
  %tobool34.not.i.i = icmp eq i32 %init.2.i, 0
  %or37.i.i = or i32 %spec.store.select.i.i, 512
  %spec.select.i.i = select i1 %tobool34.not.i.i, i32 %spec.store.select.i.i, i32 %or37.i.i
  %103 = ptrtoint ptr %control0.i.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %spec.select.i.i, ptr %control0.i.i, align 4
  %control1.i.i = getelementptr %struct.dcp_coherent_block, ptr %54, i32 0, i32 5, i32 %56, i32 2
  %104 = ptrtoint ptr %control1.i.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 0, ptr %control1.i.i, align 4
  %105 = ptrtoint ptr %__ctx.i.i to i32
  call void @__asan_load1_noabort(i32 %105)
  %bf.load39.i.i = load i8, ptr %__ctx.i.i, align 128
  %106 = lshr i8 %bf.load39.i.i, 2
  %107 = and i8 %106, 16
  %108 = xor i8 %107, 16
  %109 = zext i8 %108 to i32
  store i32 %109, ptr %control1.i.i, align 4
  %110 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 0, ptr %arrayidx.i.i, align 4
  %source.i.i = getelementptr %struct.dcp_coherent_block, ptr %54, i32 0, i32 5, i32 %56, i32 3
  %111 = ptrtoint ptr %source.i.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %call41.i113.i.i, ptr %source.i.i, align 4
  %destination.i.i = getelementptr %struct.dcp_coherent_block, ptr %54, i32 0, i32 5, i32 %56, i32 4
  %112 = ptrtoint ptr %destination.i.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %call41.i133.i.i, ptr %destination.i.i, align 4
  %113 = ptrtoint ptr %fill.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %fill.i, align 4
  %size.i.i = getelementptr %struct.dcp_coherent_block, ptr %54, i32 0, i32 5, i32 %56, i32 5
  %115 = ptrtoint ptr %size.i.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %114, ptr %size.i.i, align 4
  %payload.i.i = getelementptr %struct.dcp_coherent_block, ptr %54, i32 0, i32 5, i32 %56, i32 6
  %116 = ptrtoint ptr %payload.i.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %call41.i.i.i, ptr %payload.i.i, align 4
  %status.i.i = getelementptr %struct.dcp_coherent_block, ptr %54, i32 0, i32 5, i32 %56, i32 7
  %117 = ptrtoint ptr %status.i.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 0, ptr %status.i.i, align 4
  %call50.i.i = tail call fastcc i32 @mxs_dcp_start_dma(ptr noundef %__crt_ctx.i.i) #10
  br label %aes_done_run.i.i

aes_done_run.i.i:                                 ; preds = %if.end27.i.i, %do.end.i.i
  %ret.0.i.i = phi i32 [ -22, %do.end.i.i ], [ %call50.i.i, %if.end27.i.i ]
  %118 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %52, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %119, i32 noundef %call41.i133.i.i, i32 noundef 4096, i32 noundef 2, i32 noundef 0) #10
  br label %mxs_dcp_run_aes.exit.i

mxs_dcp_run_aes.exit.thread156.i:                 ; preds = %dma_map_single_attrs.exit116.i.i.mxs_dcp_run_aes.exit.thread156.i_crit_edge, %dma_map_single_attrs.exit116.thread.i.i
  %120 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %52, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %121, i32 noundef %call41.i.i.i, i32 noundef 32, i32 noundef 1, i32 noundef 0) #10
  br label %mxs_dcp_aes_block_crypt.exit

mxs_dcp_run_aes.exit.i:                           ; preds = %aes_done_run.i.i, %dma_map_single_attrs.exit136.i.i.mxs_dcp_run_aes.exit.i_crit_edge, %dma_map_single_attrs.exit136.thread.i.i
  %ret.1.i.i = phi i32 [ %ret.0.i.i, %aes_done_run.i.i ], [ -12, %dma_map_single_attrs.exit136.i.i.mxs_dcp_run_aes.exit.i_crit_edge ], [ -12, %dma_map_single_attrs.exit136.thread.i.i ]
  %122 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %52, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %123, i32 noundef %call41.i113.i.i, i32 noundef 4096, i32 noundef 1, i32 noundef 0) #10
  %124 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %52, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %125, i32 noundef %call41.i.i.i, i32 noundef 32, i32 noundef 1, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1.i.i)
  %tobool43.not.i = icmp eq i32 %ret.1.i.i, 0
  br i1 %tobool43.not.i, label %if.end45.i, label %mxs_dcp_run_aes.exit.i.mxs_dcp_aes_block_crypt.exit_crit_edge

mxs_dcp_run_aes.exit.i.mxs_dcp_aes_block_crypt.exit_crit_edge: ; preds = %mxs_dcp_run_aes.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mxs_dcp_aes_block_crypt.exit

if.end45.i:                                       ; preds = %mxs_dcp_run_aes.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %126 = ptrtoint ptr %fill.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %fill.i, align 4
  %call47.i = tail call i32 @sg_pcopy_from_buffer(ptr noundef %21, i32 noundef %call5.i, ptr noundef %aes_out_buf.i, i32 noundef %127, i32 noundef %dst_off.1.i) #10
  %128 = ptrtoint ptr %fill.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %fill.i, align 4
  %add49.i = add i32 %129, %dst_off.1.i
  store i32 0, ptr %fill.i, align 4
  br label %do.cond.i

do.cond.i:                                        ; preds = %if.end45.i, %lor.lhs.false.i.do.cond.i_crit_edge
  %dst_off.2.i = phi i32 [ %add49.i, %if.end45.i ], [ %dst_off.1.i, %lor.lhs.false.i.do.cond.i_crit_edge ]
  %last_out_len.2.i = phi i32 [ %129, %if.end45.i ], [ %last_out_len.1.i, %lor.lhs.false.i.do.cond.i_crit_edge ]
  %init.3.i = phi i32 [ 0, %if.end45.i ], [ %init.2.i, %lor.lhs.false.i.do.cond.i_crit_edge ]
  %tobool53.not.i = icmp eq i32 %sub32.i, 0
  br i1 %tobool53.not.i, label %do.end.i, label %do.cond.i.do.body.i_crit_edge

do.cond.i.do.body.i_crit_edge:                    ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i

do.end.i:                                         ; preds = %do.cond.i
  br i1 %cmp16.i, label %do.end.i.for.end.i_crit_edge, label %for.inc.i

do.end.i.for.end.i_crit_edge:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.inc.i:                                        ; preds = %do.end.i
  %inc.i = add nuw i32 %i.0176.i, 1
  %call57.i = tail call ptr @sg_next(ptr noundef %src.0173.i) #10
  %call14.i = tail call i32 @sg_nents(ptr noundef %call57.i) #10
  %cmp.i176 = icmp ult i32 %inc.i, %call14.i
  br i1 %cmp.i176, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.for.end.i_crit_edge

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %do.end.i.for.end.i_crit_edge, %if.end.i.for.end.i_crit_edge
  %last_out_len.3.i = phi i32 [ 0, %if.end.i.for.end.i_crit_edge ], [ %last_out_len.2.i, %do.end.i.for.end.i_crit_edge ], [ %last_out_len.2.i, %for.inc.i.for.end.i_crit_edge ]
  %130 = ptrtoint ptr %__ctx.i.i to i32
  call void @__asan_load1_noabort(i32 %130)
  %bf.load58.i = load i8, ptr %__ctx.i.i, align 128
  %131 = and i8 %bf.load58.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %131)
  %tobool62.not.i = icmp eq i8 %131, 0
  br i1 %tobool62.not.i, label %if.then63.i, label %for.end.i.mxs_dcp_aes_block_crypt.exit_crit_edge

for.end.i.mxs_dcp_aes_block_crypt.exit_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mxs_dcp_aes_block_crypt.exit

if.then63.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load58.i)
  %tobool67.not.i = icmp sgt i8 %bf.load58.i, -1
  %iv73.i = getelementptr i8, ptr %call66, i32 -12
  %132 = ptrtoint ptr %iv73.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %iv73.i, align 4
  %sub74.i = add i32 %last_out_len.3.i, -16
  br i1 %tobool67.not.i, label %if.else72.i, label %if.then68.i

if.then68.i:                                      ; preds = %if.then63.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr71.i = getelementptr i8, ptr %aes_out_buf.i, i32 %sub74.i
  %134 = call ptr @memcpy(ptr %133, ptr %add.ptr71.i, i32 16)
  br label %mxs_dcp_aes_block_crypt.exit

if.else72.i:                                      ; preds = %if.then63.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr75.i = getelementptr i8, ptr %23, i32 %sub74.i
  %135 = call ptr @memcpy(ptr %133, ptr %add.ptr75.i, i32 16)
  br label %mxs_dcp_aes_block_crypt.exit

mxs_dcp_aes_block_crypt.exit:                     ; preds = %if.else72.i, %if.then68.i, %for.end.i.mxs_dcp_aes_block_crypt.exit_crit_edge, %mxs_dcp_run_aes.exit.i.mxs_dcp_aes_block_crypt.exit_crit_edge, %mxs_dcp_run_aes.exit.thread156.i, %dma_map_single_attrs.exit.i.i.mxs_dcp_aes_block_crypt.exit_crit_edge, %dma_map_single_attrs.exit.thread.i.i
  %retval.0.i = phi i32 [ 0, %if.then68.i ], [ 0, %if.else72.i ], [ 0, %for.end.i.mxs_dcp_aes_block_crypt.exit_crit_edge ], [ -12, %mxs_dcp_run_aes.exit.thread156.i ], [ -12, %dma_map_single_attrs.exit.thread.i.i ], [ %ret.1.i.i, %mxs_dcp_run_aes.exit.i.mxs_dcp_aes_block_crypt.exit_crit_edge ], [ -12, %dma_map_single_attrs.exit.i.i.mxs_dcp_aes_block_crypt.exit_crit_edge ]
  %complete159 = getelementptr inbounds %struct.crypto_async_request, ptr %call66, i32 0, i32 1
  %136 = ptrtoint ptr %complete159 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %complete159, align 4
  tail call void %137(ptr noundef nonnull %call66, i32 noundef %retval.0.i) #10
  br label %while.cond.backedge

while.end:                                        ; preds = %while.cond.backedge.while.end_crit_edge, %entry.while.end_crit_edge
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_skciphers(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_ahash(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_ahash(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_skciphers(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kthread_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_should_stop() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_dequeue_request(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @scatterwalk_map_and_copy(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mxs_dcp_run_sha(ptr nocapture noundef readonly %req) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @global_sdcp, align 4
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %1 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %tfm.i, align 16
  %__crt_ctx.i.i = getelementptr i8, ptr %2, i32 128
  %__ctx.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 6
  %coh = getelementptr inbounds %struct.dcp, ptr %0, i32 0, i32 3
  %3 = ptrtoint ptr %coh to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %coh, align 4
  %5 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %__crt_ctx.i.i, align 4
  %arrayidx = getelementptr %struct.dcp_coherent_block, ptr %4, i32 0, i32 5, i32 %6
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %0, align 4
  %sha_in_buf = getelementptr inbounds %struct.dcp_coherent_block, ptr %4, i32 0, i32 2
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %sha_in_buf) #10
  br i1 %call.i, label %land.rhs.i, label %dma_map_single_attrs.exit

land.rhs.i:                                       ; preds = %entry
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge, label %if.then.i, !prof !139

land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_map_single_attrs.exit.thread

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %8) #10
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %10, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %8, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %12, %if.end.i.i ], [ %10, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.36, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.37, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #10
  br label %dma_map_single_attrs.exit.thread

dma_map_single_attrs.exit.thread:                 ; preds = %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge
  %13 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %0, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %14, i32 noundef -1) #10
  br label %cleanup

dma_map_single_attrs.exit:                        ; preds = %entry
  tail call void @debug_dma_map_single(ptr noundef %8, ptr noundef %sha_in_buf, i32 noundef 4096) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %15 = load ptr, ptr @mem_map, align 4
  %16 = ptrtoint ptr %sha_in_buf to i32
  %sub.i = add i32 %16, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %15, i32 %shr.i
  %and.i = and i32 %16, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %8, ptr noundef %add.ptr.i, i32 noundef %and.i, i32 noundef 4096, i32 noundef 1, i32 noundef 0) #10
  %17 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %0, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %18, i32 noundef %call41.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i)
  %cmp.i = icmp eq i32 %call41.i, -1
  br i1 %cmp.i, label %dma_map_single_attrs.exit.cleanup_crit_edge, label %if.end

dma_map_single_attrs.exit.cleanup_crit_edge:      ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %dma_map_single_attrs.exit
  %control0 = getelementptr %struct.dcp_coherent_block, ptr %4, i32 0, i32 5, i32 %6, i32 1
  %19 = ptrtoint ptr %control0 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 67, ptr %control0, align 4
  %20 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %bf.load = load i8, ptr %__ctx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool8.not = icmp sgt i8 %bf.load, -1
  %spec.store.select = select i1 %tobool8.not, i32 67, i32 4163
  %21 = ptrtoint ptr %control0 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %spec.store.select, ptr %control0, align 4
  %alg = getelementptr i8, ptr %2, i32 228
  %22 = ptrtoint ptr %alg to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %alg, align 4
  %control1 = getelementptr %struct.dcp_coherent_block, ptr %4, i32 0, i32 5, i32 %6, i32 2
  %24 = ptrtoint ptr %control1 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %control1, align 4
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %arrayidx, align 4
  %source = getelementptr %struct.dcp_coherent_block, ptr %4, i32 0, i32 5, i32 %6, i32 3
  %26 = ptrtoint ptr %source to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %call41.i, ptr %source, align 4
  %destination = getelementptr %struct.dcp_coherent_block, ptr %4, i32 0, i32 5, i32 %6, i32 4
  %27 = ptrtoint ptr %destination to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %destination, align 4
  %fill = getelementptr i8, ptr %2, i32 132
  %28 = ptrtoint ptr %fill to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %fill, align 4
  %size = getelementptr %struct.dcp_coherent_block, ptr %4, i32 0, i32 5, i32 %6, i32 5
  %30 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %size, align 4
  %payload = getelementptr %struct.dcp_coherent_block, ptr %4, i32 0, i32 5, i32 %6, i32 6
  %31 = ptrtoint ptr %payload to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %payload, align 4
  %status = getelementptr %struct.dcp_coherent_block, ptr %4, i32 0, i32 5, i32 %6, i32 7
  %32 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %status, align 4
  %33 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %bf.load12 = load i8, ptr %__ctx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -65, i8 %bf.load12)
  %.not = icmp ugt i8 %bf.load12, -65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp = icmp eq i32 %29, 0
  %or.cond140 = select i1 %.not, i1 %cmp, i1 false
  br i1 %or.cond140, label %if.then22, label %if.end28

if.then22:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %__crt_alg.i = getelementptr i8, ptr %2, i32 12
  %34 = ptrtoint ptr %__crt_alg.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %__crt_alg.i, align 4
  %add.ptr.i.i104 = getelementptr i8, ptr %35, i32 -128
  %36 = ptrtoint ptr %alg to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %alg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp25 = icmp eq i32 %37, 0
  %cond = select i1 %cmp25, ptr @sha1_null_hash, ptr @sha256_null_hash
  %38 = ptrtoint ptr %coh to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %coh, align 4
  %sha_out_buf = getelementptr inbounds %struct.dcp_coherent_block, ptr %39, i32 0, i32 3
  %40 = ptrtoint ptr %add.ptr.i.i104 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %add.ptr.i.i104, align 128
  %42 = call ptr @memcpy(ptr %sha_out_buf, ptr %cond, i32 %41)
  br label %done_run

if.end28:                                         ; preds = %if.end
  %43 = and i8 %bf.load12, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool19.not = icmp eq i8 %43, 0
  br i1 %tobool19.not, label %if.end28.if.end48_crit_edge, label %if.then34

if.end28.if.end48_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end48

if.then34:                                        ; preds = %if.end28
  %44 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %0, align 4
  %46 = ptrtoint ptr %coh to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %coh, align 4
  %sha_out_buf37 = getelementptr inbounds %struct.dcp_coherent_block, ptr %47, i32 0, i32 3
  %call.i105 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %sha_out_buf37) #10
  br i1 %call.i105, label %land.rhs.i107, label %dma_map_single_attrs.exit122

land.rhs.i107:                                    ; preds = %if.then34
  %.b1.i106 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i106, label %land.rhs.i107.dma_map_single_attrs.exit122.thread_crit_edge, label %if.then.i111, !prof !139

land.rhs.i107.dma_map_single_attrs.exit122.thread_crit_edge: ; preds = %land.rhs.i107
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_map_single_attrs.exit122.thread

if.then.i111:                                     ; preds = %land.rhs.i107
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i108 = tail call ptr @dev_driver_string(ptr noundef %45) #10
  %init_name.i.i109 = getelementptr inbounds %struct.device, ptr %45, i32 0, i32 3
  %48 = ptrtoint ptr %init_name.i.i109 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %init_name.i.i109, align 8
  %tobool.not.i.i110 = icmp eq ptr %49, null
  br i1 %tobool.not.i.i110, label %if.end.i.i112, label %if.then.i111.dev_name.exit.i114_crit_edge

if.then.i111.dev_name.exit.i114_crit_edge:        ; preds = %if.then.i111
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit.i114

if.end.i.i112:                                    ; preds = %if.then.i111
  call void @__sanitizer_cov_trace_pc() #12
  %50 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %45, align 4
  br label %dev_name.exit.i114

dev_name.exit.i114:                               ; preds = %if.end.i.i112, %if.then.i111.dev_name.exit.i114_crit_edge
  %retval.0.i.i113 = phi ptr [ %51, %if.end.i.i112 ], [ %49, %if.then.i111.dev_name.exit.i114_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.36, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.37, ptr noundef %call16.i108, ptr noundef %retval.0.i.i113) #10
  br label %dma_map_single_attrs.exit122.thread

dma_map_single_attrs.exit122.thread:              ; preds = %dev_name.exit.i114, %land.rhs.i107.dma_map_single_attrs.exit122.thread_crit_edge
  %52 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %0, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %53, i32 noundef -1) #10
  br label %done_run

dma_map_single_attrs.exit122:                     ; preds = %if.then34
  tail call void @debug_dma_map_single(ptr noundef %45, ptr noundef %sha_out_buf37, i32 noundef 64) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %54 = load ptr, ptr @mem_map, align 4
  %55 = ptrtoint ptr %sha_out_buf37 to i32
  %sub.i115 = add i32 %55, 1073741824
  %shr.i116 = lshr i32 %sub.i115, 12
  %add.ptr.i117 = getelementptr %struct.page, ptr %54, i32 %shr.i116
  %and.i118 = and i32 %55, 4095
  %call41.i119 = tail call i32 @dma_map_page_attrs(ptr noundef %45, ptr noundef %add.ptr.i117, i32 noundef %and.i118, i32 noundef 64, i32 noundef 2, i32 noundef 0) #10
  %56 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %0, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %57, i32 noundef %call41.i119) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i119)
  %cmp.i123 = icmp eq i32 %call41.i119, -1
  br i1 %cmp.i123, label %dma_map_single_attrs.exit122.done_run_crit_edge, label %if.end44

dma_map_single_attrs.exit122.done_run_crit_edge:  ; preds = %dma_map_single_attrs.exit122
  call void @__sanitizer_cov_trace_pc() #12
  br label %done_run

if.end44:                                         ; preds = %dma_map_single_attrs.exit122
  call void @__sanitizer_cov_trace_pc() #12
  %58 = ptrtoint ptr %control0 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %control0, align 4
  %or46 = or i32 %59, 8192
  store i32 %or46, ptr %control0, align 4
  %60 = ptrtoint ptr %payload to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %call41.i119, ptr %payload, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.end44, %if.end28.if.end48_crit_edge
  %digest_phys.0 = phi i32 [ %call41.i119, %if.end44 ], [ 0, %if.end28.if.end48_crit_edge ]
  %call49 = tail call fastcc i32 @mxs_dcp_start_dma(ptr noundef %__crt_ctx.i.i)
  %61 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %bf.load50 = load i8, ptr %__ctx.i, align 4
  %62 = and i8 %bf.load50, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool54.not = icmp eq i8 %62, 0
  br i1 %tobool54.not, label %if.end48.done_run_crit_edge, label %if.then55

if.end48.done_run_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  br label %done_run

if.then55:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  %63 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %0, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %64, i32 noundef %digest_phys.0, i32 noundef 64, i32 noundef 2, i32 noundef 0) #10
  br label %done_run

done_run:                                         ; preds = %if.then55, %if.end48.done_run_crit_edge, %dma_map_single_attrs.exit122.done_run_crit_edge, %dma_map_single_attrs.exit122.thread, %if.then22
  %ret.0 = phi i32 [ 0, %if.then22 ], [ %call49, %if.then55 ], [ %call49, %if.end48.done_run_crit_edge ], [ -12, %dma_map_single_attrs.exit122.done_run_crit_edge ], [ -12, %dma_map_single_attrs.exit122.thread ]
  %65 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %0, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %66, i32 noundef %call41.i, i32 noundef 4096, i32 noundef 1, i32 noundef 0) #10
  br label %cleanup

cleanup:                                          ; preds = %done_run, %dma_map_single_attrs.exit.cleanup_crit_edge, %dma_map_single_attrs.exit.thread
  %retval.0 = phi i32 [ %ret.0, %done_run ], [ -12, %dma_map_single_attrs.exit.cleanup_crit_edge ], [ -12, %dma_map_single_attrs.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mxs_dcp_start_dma(ptr nocapture noundef readonly %actx) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @global_sdcp, align 4
  %1 = ptrtoint ptr %actx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %actx, align 4
  %coh = getelementptr inbounds %struct.dcp, ptr %0, i32 0, i32 3
  %3 = ptrtoint ptr %coh to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %coh, align 4
  %arrayidx = getelementptr %struct.dcp_coherent_block, ptr %4, i32 0, i32 5, i32 %2
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %0, align 4
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %arrayidx) #10
  br i1 %call.i, label %land.rhs.i, label %dma_map_single_attrs.exit

land.rhs.i:                                       ; preds = %entry
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge, label %if.then.i, !prof !139

land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_map_single_attrs.exit.thread

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %6) #10
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %8, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %6, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %10, %if.end.i.i ], [ %8, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.36, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.37, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #10
  br label %dma_map_single_attrs.exit.thread

dma_map_single_attrs.exit.thread:                 ; preds = %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge
  %11 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %0, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %12, i32 noundef -1) #10
  br label %cleanup

dma_map_single_attrs.exit:                        ; preds = %entry
  tail call void @debug_dma_map_single(ptr noundef %6, ptr noundef %arrayidx, i32 noundef 32) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %13 = load ptr, ptr @mem_map, align 4
  %14 = ptrtoint ptr %arrayidx to i32
  %sub.i = add i32 %14, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %13, i32 %shr.i
  %and.i = and i32 %14, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %6, ptr noundef %add.ptr.i, i32 noundef %and.i, i32 noundef 32, i32 noundef 1, i32 noundef 0) #10
  %15 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %0, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %16, i32 noundef %call41.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i)
  %cmp.i = icmp eq i32 %call41.i, -1
  br i1 %cmp.i, label %dma_map_single_attrs.exit.cleanup_crit_edge, label %if.end

dma_map_single_attrs.exit.cleanup_crit_edge:      ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %dma_map_single_attrs.exit
  %arrayidx6 = getelementptr %struct.dcp, ptr %0, i32 0, i32 4, i32 %2
  %17 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %arrayidx6, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !141
  tail call void @arm_heavy_mb() #10
  %base = getelementptr inbounds %struct.dcp, ptr %0, i32 0, i32 1
  %18 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base, align 4
  %mul = shl i32 %2, 6
  %add = add i32 %mul, 296
  %add.ptr = getelementptr i8, ptr %19, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 -1) #10, !srcloc !126
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !142
  tail call void @arm_heavy_mb() #10
  %20 = tail call i32 @llvm.bswap.i32(i32 %call41.i)
  %21 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %base, align 4
  %add12 = add i32 %mul, 256
  %add.ptr13 = getelementptr i8, ptr %22, i32 %add12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 %20) #10, !srcloc !126
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !143
  tail call void @arm_heavy_mb() #10
  %23 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %base, align 4
  %add19 = add i32 %mul, 272
  %add.ptr20 = getelementptr i8, ptr %24, i32 %add19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20, i32 16777216) #10, !srcloc !126
  %call24 = tail call i32 @wait_for_completion_timeout(ptr noundef %arrayidx6, i32 noundef 100) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %do.end29, label %if.end35

do.end29:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %25 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %0, align 4
  %27 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %base, align 4
  %add.ptr32 = getelementptr i8, ptr %28, i32 16
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr32) #10, !srcloc !131
  %30 = tail call i32 @llvm.bswap.i32(i32 %29)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !144
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.38, i32 noundef %2, i32 noundef %30) #13
  br label %cleanup

if.end35:                                         ; preds = %if.end
  %31 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %base, align 4
  %add40 = add i32 %mul, 288
  %add.ptr41 = getelementptr i8, ptr %32, i32 %add40
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr41) #10, !srcloc !131
  %34 = tail call i32 @llvm.bswap.i32(i32 %33)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !145
  %and = and i32 %34, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool45.not = icmp eq i32 %and, 0
  %35 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %0, align 4
  br i1 %tobool45.not, label %if.end51, label %do.end49

do.end49:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.41, i32 noundef %2, i32 noundef %34) #13
  br label %cleanup

if.end51:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dma_unmap_page_attrs(ptr noundef %36, i32 noundef %call41.i, i32 noundef 32, i32 noundef 1, i32 noundef 0) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end51, %do.end49, %do.end29, %dma_map_single_attrs.exit.cleanup_crit_edge, %dma_map_single_attrs.exit.thread
  %retval.0 = phi i32 [ -22, %do.end49 ], [ 0, %if.end51 ], [ -110, %do.end29 ], [ -12, %dma_map_single_attrs.exit.cleanup_crit_edge ], [ -12, %dma_map_single_attrs.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_nents(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_pcopy_from_buffer(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxs_dcp_aes_setkey(ptr nocapture noundef %tfm, ptr noundef %key, i32 noundef %len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %key_len = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1, i32 1, i32 108
  %0 = ptrtoint ptr %key_len to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %len, ptr %key_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %len)
  %cmp = icmp eq i32 %len, 16
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %key1 = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1, i32 1, i32 112
  %1 = call ptr @memcpy(ptr %key1, ptr %key, i32 16)
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %fallback = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1, i32 1, i32 104
  %2 = ptrtoint ptr %fallback to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fallback, align 4
  %base.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %base.i.i, align 128
  %and.i.i = and i32 %5, -1048321
  store i32 %and.i.i, ptr %base.i.i, align 128
  %6 = load ptr, ptr %fallback, align 4
  %base = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 0, i32 2
  %7 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %base, align 128
  %and = and i32 %8, 1048320
  %base.i.i14 = getelementptr inbounds %struct.crypto_skcipher, ptr %6, i32 0, i32 2
  %9 = ptrtoint ptr %base.i.i14 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %base.i.i14, align 128
  %or.i.i = or i32 %10, %and
  store i32 %or.i.i, ptr %base.i.i14, align 128
  %11 = load ptr, ptr %fallback, align 4
  %call4 = tail call i32 @crypto_skcipher_setkey(ptr noundef %11, ptr noundef %key, i32 noundef %len) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %call4, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxs_dcp_aes_ecb_encrypt(ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @mxs_dcp_aes_enqueue(ptr noundef %req, i32 noundef 1, i32 noundef 1)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxs_dcp_aes_ecb_decrypt(ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @mxs_dcp_aes_enqueue(ptr noundef %req, i32 noundef 0, i32 noundef 1)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxs_dcp_aes_fallback_init_tfm(ptr nocapture noundef %tfm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_alg.i = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 0, i32 2, i32 3
  %0 = ptrtoint ptr %__crt_alg.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__crt_alg.i, align 4
  %cra_name.i = getelementptr inbounds %struct.crypto_alg, ptr %1, i32 0, i32 8
  %call3 = tail call ptr @crypto_alloc_skcipher(ptr noundef %cra_name.i, i32 noundef 0, i32 noundef 256) #10
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %call3 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %fallback = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1, i32 1, i32 104
  %3 = ptrtoint ptr %fallback to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call3, ptr %fallback, align 4
  %4 = ptrtoint ptr %call3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %call3, align 128
  %add = add i32 %5, 256
  %6 = ptrtoint ptr %tfm to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %add, ptr %tfm, align 128
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %2, %if.then ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mxs_dcp_aes_fallback_exit_tfm(ptr nocapture noundef readonly %tfm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %fallback = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1, i32 1, i32 104
  %0 = ptrtoint ptr %fallback to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fallback, align 4
  %base.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %1, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef %1, ptr noundef %base.i.i) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxs_dcp_aes_cbc_encrypt(ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @mxs_dcp_aes_enqueue(ptr noundef %req, i32 noundef 1, i32 noundef 0)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxs_dcp_aes_cbc_decrypt(ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 4
  %key_len.i = getelementptr inbounds %struct.crypto_tfm, ptr %1, i32 1, i32 4, i32 96
  %2 = ptrtoint ptr %key_len.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %key_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %3)
  %cmp.not.i = icmp eq i32 %3, 16
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i, !prof !139

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %fallback_req.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 2
  %fallback.i = getelementptr i8, ptr %1, i32 236
  %4 = ptrtoint ptr %fallback.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fallback.i, align 4
  %base.i.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %5, i32 0, i32 2
  %tfm1.i.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 2, i32 4, i32 3
  %6 = ptrtoint ptr %tfm1.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %base.i.i.i, ptr %tfm1.i.i, align 16
  %flags.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 4
  %7 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags.i, align 4
  %complete.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 1
  %9 = ptrtoint ptr %complete.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %complete.i, align 8
  %data.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 2
  %11 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data.i, align 4
  %complete.i.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 2, i32 4, i32 1
  %13 = ptrtoint ptr %complete.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %complete.i.i, align 8
  %data2.i.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 2, i32 4, i32 2
  %14 = ptrtoint ptr %data2.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %12, ptr %data2.i.i, align 4
  %flags4.i.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 2, i32 4, i32 4
  %15 = ptrtoint ptr %flags4.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %8, ptr %flags4.i.i, align 4
  %src.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 2
  %16 = ptrtoint ptr %src.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %src.i, align 8
  %dst.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 3
  %18 = ptrtoint ptr %dst.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dst.i, align 4
  %20 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %req, align 128
  %iv.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 1
  %22 = ptrtoint ptr %iv.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %iv.i, align 4
  %src1.i.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 2, i32 2
  %24 = ptrtoint ptr %src1.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %17, ptr %src1.i.i, align 8
  %dst2.i.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 2, i32 3
  %25 = ptrtoint ptr %dst2.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %19, ptr %dst2.i.i, align 4
  %26 = ptrtoint ptr %fallback_req.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %21, ptr %fallback_req.i, align 128
  %iv4.i.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 2, i32 1
  %27 = ptrtoint ptr %iv4.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %23, ptr %iv4.i.i, align 4
  %call10.i = tail call i32 @crypto_skcipher_decrypt(ptr noundef %fallback_req.i) #10
  br label %mxs_dcp_aes_enqueue.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %__crt_ctx.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %1, i32 0, i32 5
  %__ctx.i.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 6
  %28 = load ptr, ptr @global_sdcp, align 4
  %base.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4
  %29 = ptrtoint ptr %__ctx.i.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %bf.load.i = load i8, ptr %__ctx.i.i, align 128
  %bf.clear.i = and i8 %bf.load.i, 63
  store i8 %bf.clear.i, ptr %__ctx.i.i, align 128
  %30 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 2, ptr %__crt_ctx.i.i, align 4
  %arrayidx.i = getelementptr %struct.dcp, ptr %28, i32 0, i32 5, i32 2
  tail call void @_raw_spin_lock(ptr noundef %arrayidx.i) #10
  %31 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %__crt_ctx.i.i, align 4
  %arrayidx12.i = getelementptr %struct.dcp, ptr %28, i32 0, i32 7, i32 %32
  %call14.i = tail call i32 @crypto_enqueue_request(ptr noundef %arrayidx12.i, ptr noundef %base.i) #10
  %33 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %__crt_ctx.i.i, align 4
  %arrayidx17.i = getelementptr %struct.dcp, ptr %28, i32 0, i32 5, i32 %34
  tail call void @_raw_spin_unlock(ptr noundef %arrayidx17.i) #10
  %35 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %__crt_ctx.i.i, align 4
  %arrayidx19.i = getelementptr %struct.dcp, ptr %28, i32 0, i32 6, i32 %36
  %37 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx19.i, align 4
  %call20.i = tail call i32 @wake_up_process(ptr noundef %38) #10
  br label %mxs_dcp_aes_enqueue.exit

mxs_dcp_aes_enqueue.exit:                         ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %call10.i, %if.then.i ], [ %call14.i, %if.end.i ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_skcipher_setkey(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mxs_dcp_aes_enqueue(ptr noundef %req, i32 noundef %enc, i32 noundef %ecb) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 3
  %0 = ptrtoint ptr %tfm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm, align 4
  %key_len = getelementptr inbounds %struct.crypto_tfm, ptr %1, i32 1, i32 4, i32 96
  %2 = ptrtoint ptr %key_len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %key_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %3)
  %cmp.not = icmp eq i32 %3, 16
  br i1 %cmp.not, label %if.end, label %if.then, !prof !139

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call3 = tail call fastcc i32 @mxs_dcp_block_fallback(ptr noundef %req, i32 noundef %enc)
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_tfm, ptr %1, i32 0, i32 5
  %__ctx.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 6
  %4 = load ptr, ptr @global_sdcp, align 4
  %base = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4
  %5 = trunc i32 %enc to i8
  %6 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %__ctx.i, align 128
  %bf.shl = shl i8 %5, 7
  %bf.clear = and i8 %bf.load, 63
  %bf.set = or i8 %bf.clear, %bf.shl
  %7 = trunc i32 %ecb to i8
  %bf.value5 = shl i8 %7, 6
  %bf.shl6 = and i8 %bf.value5, 64
  %bf.set8 = or i8 %bf.set, %bf.shl6
  store i8 %bf.set8, ptr %__ctx.i, align 128
  %8 = ptrtoint ptr %__crt_ctx.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 2, ptr %__crt_ctx.i, align 4
  %arrayidx = getelementptr %struct.dcp, ptr %4, i32 0, i32 5, i32 2
  tail call void @_raw_spin_lock(ptr noundef %arrayidx) #10
  %9 = ptrtoint ptr %__crt_ctx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %__crt_ctx.i, align 4
  %arrayidx12 = getelementptr %struct.dcp, ptr %4, i32 0, i32 7, i32 %10
  %call14 = tail call i32 @crypto_enqueue_request(ptr noundef %arrayidx12, ptr noundef %base) #10
  %11 = ptrtoint ptr %__crt_ctx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %__crt_ctx.i, align 4
  %arrayidx17 = getelementptr %struct.dcp, ptr %4, i32 0, i32 5, i32 %12
  tail call void @_raw_spin_unlock(ptr noundef %arrayidx17) #10
  %13 = ptrtoint ptr %__crt_ctx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %__crt_ctx.i, align 4
  %arrayidx19 = getelementptr %struct.dcp, ptr %4, i32 0, i32 6, i32 %14
  %15 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx19, align 4
  %call20 = tail call i32 @wake_up_process(ptr noundef %16) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call3, %if.then ], [ %call14, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mxs_dcp_block_fallback(ptr noundef %req, i32 noundef %enc) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %fallback_req = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 2
  %fallback = getelementptr i8, ptr %1, i32 236
  %2 = ptrtoint ptr %fallback to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fallback, align 4
  %base.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %3, i32 0, i32 2
  %tfm1.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 2, i32 4, i32 3
  %4 = ptrtoint ptr %tfm1.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %base.i.i, ptr %tfm1.i, align 16
  %flags = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 4
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags, align 4
  %complete = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 1
  %7 = ptrtoint ptr %complete to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %complete, align 8
  %data = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 2
  %9 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data, align 4
  %complete.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 2, i32 4, i32 1
  %11 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %complete.i, align 8
  %data2.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 2, i32 4, i32 2
  %12 = ptrtoint ptr %data2.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %10, ptr %data2.i, align 4
  %flags4.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 2, i32 4, i32 4
  %13 = ptrtoint ptr %flags4.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %6, ptr %flags4.i, align 4
  %src = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 2
  %14 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %src, align 8
  %dst = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 3
  %16 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dst, align 4
  %18 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %req, align 128
  %iv = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 1
  %20 = ptrtoint ptr %iv to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %iv, align 4
  %src1.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 2, i32 2
  %22 = ptrtoint ptr %src1.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %15, ptr %src1.i, align 8
  %dst2.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 2, i32 3
  %23 = ptrtoint ptr %dst2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %17, ptr %dst2.i, align 4
  %24 = ptrtoint ptr %fallback_req to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %19, ptr %fallback_req, align 128
  %iv4.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 2, i32 1
  %25 = ptrtoint ptr %iv4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %21, ptr %iv4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enc)
  %tobool.not = icmp eq i32 %enc, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call8 = tail call i32 @crypto_skcipher_encrypt(ptr noundef %fallback_req) #10
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call10 = tail call i32 @crypto_skcipher_decrypt(ptr noundef %fallback_req) #10
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %ret.0 = phi i32 [ %call8, %if.then ], [ %call10, %if.else ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_enqueue_request(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_skcipher_encrypt(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_skcipher_decrypt(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_alloc_skcipher(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_destroy_tfm(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dcp_sha_init(ptr nocapture noundef readonly %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__crt_ctx.i.i = getelementptr i8, ptr %1, i32 128
  %__crt_alg.i = getelementptr i8, ptr %1, i32 12
  %2 = ptrtoint ptr %__crt_alg.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %__crt_alg.i, align 4
  %4 = call ptr @memset(ptr %__crt_ctx.i.i, i32 0, i32 132)
  %cra_name = getelementptr i8, ptr %3, i32 40
  %call3 = tail call i32 @strcmp(ptr noundef %cra_name, ptr noundef nonnull dereferenceable(5) @.str.46) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp eq i32 %call3, 0
  %spec.select = select i1 %cmp, i32 0, i32 131072
  %5 = getelementptr i8, ptr %1, i32 228
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %spec.select, ptr %5, align 4
  %fill = getelementptr i8, ptr %1, i32 132
  %7 = ptrtoint ptr %fill to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %fill, align 4
  %hot = getelementptr i8, ptr %1, i32 232
  %8 = ptrtoint ptr %hot to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load = load i8, ptr %hot, align 4
  %bf.clear = and i8 %bf.load, 127
  store i8 %bf.clear, ptr %hot, align 4
  %9 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %__crt_ctx.i.i, align 4
  %mutex = getelementptr i8, ptr %1, i32 136
  tail call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.47, ptr noundef nonnull @dcp_sha_init.__key) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dcp_sha_update(ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @dcp_sha_update_fx(ptr noundef %req, i32 noundef 0)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dcp_sha_final(ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %src1.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 2
  %0 = ptrtoint ptr %src1.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %src1.i, align 4
  %nbytes2.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 1
  %1 = ptrtoint ptr %nbytes2.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %nbytes2.i, align 8
  %call = tail call fastcc i32 @dcp_sha_update_fx(ptr noundef %req, i32 noundef 1)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dcp_sha_finup(ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @dcp_sha_update_fx(ptr noundef %req, i32 noundef 1)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dcp_sha_digest(ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i.i, align 16
  %__crt_ctx.i.i.i = getelementptr i8, ptr %1, i32 128
  %__crt_alg.i.i = getelementptr i8, ptr %1, i32 12
  %2 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %__crt_alg.i.i, align 4
  %4 = call ptr @memset(ptr %__crt_ctx.i.i.i, i32 0, i32 132)
  %cra_name.i = getelementptr i8, ptr %3, i32 40
  %call3.i = tail call i32 @strcmp(ptr noundef %cra_name.i, ptr noundef nonnull dereferenceable(5) @.str.46) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp.i = icmp eq i32 %call3.i, 0
  %spec.select.i = select i1 %cmp.i, i32 0, i32 131072
  %5 = getelementptr i8, ptr %1, i32 228
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %spec.select.i, ptr %5, align 4
  %fill.i = getelementptr i8, ptr %1, i32 132
  %7 = ptrtoint ptr %fill.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %fill.i, align 4
  %hot.i = getelementptr i8, ptr %1, i32 232
  %8 = ptrtoint ptr %hot.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %hot.i, align 4
  %9 = ptrtoint ptr %__crt_ctx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %__crt_ctx.i.i.i, align 4
  %mutex.i = getelementptr i8, ptr %1, i32 136
  tail call void @__mutex_init(ptr noundef %mutex.i, ptr noundef nonnull @.str.47, ptr noundef nonnull @dcp_sha_init.__key) #10
  %call.i = tail call fastcc i32 @dcp_sha_update_fx(ptr noundef %req, i32 noundef 1) #10
  ret i32 %call.i
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dcp_sha_export(ptr nocapture noundef readonly %req, ptr nocapture noundef writeonly %out) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 6
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__crt_ctx.i.i = getelementptr i8, ptr %1, i32 128
  %2 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %__ctx.i, align 4
  %4 = ptrtoint ptr %out to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %out, align 4
  %async_ctx = getelementptr inbounds %struct.dcp_export_state, ptr %out, i32 0, i32 1
  %5 = call ptr @memcpy(ptr %async_ctx, ptr %__crt_ctx.i.i, i32 132)
  ret i32 0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dcp_sha_import(ptr nocapture noundef %req, ptr nocapture noundef readonly %in) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 6
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__crt_ctx.i.i = getelementptr i8, ptr %1, i32 128
  %2 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %__ctx.i, align 4
  %3 = call ptr @memset(ptr %__crt_ctx.i.i, i32 0, i32 132)
  %4 = ptrtoint ptr %in to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %in, align 4
  store i32 %5, ptr %__ctx.i, align 4
  %async_ctx = getelementptr inbounds %struct.dcp_export_state, ptr %in, i32 0, i32 1
  %6 = call ptr @memcpy(ptr %__crt_ctx.i.i, ptr %async_ctx, i32 132)
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @dcp_sha_cra_init(ptr nocapture noundef writeonly %tfm) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %reqsize1.i = getelementptr i8, ptr %tfm, i32 -96
  %0 = ptrtoint ptr %reqsize1.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 4, ptr %reqsize1.i, align 32
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @dcp_sha_cra_exit(ptr nocapture noundef %tfm) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dcp_sha_update_fx(ptr noundef %req, i32 noundef %fini) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @global_sdcp, align 4
  %__ctx.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 6
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %1 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %tfm.i, align 16
  %__crt_ctx.i.i = getelementptr i8, ptr %2, i32 128
  %nbytes = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 1
  %3 = ptrtoint ptr %nbytes to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %nbytes, align 8
  %5 = or i32 %4, %fini
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %mutex = getelementptr i8, ptr %2, i32 136
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  %7 = trunc i32 %fini to i8
  %8 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load = load i8, ptr %__ctx.i, align 4
  %bf.value = shl i8 %7, 6
  %bf.shl = and i8 %bf.value, 64
  %bf.clear = and i8 %bf.load, -65
  %bf.set = or i8 %bf.clear, %bf.shl
  store i8 %bf.set, ptr %__ctx.i, align 4
  %hot = getelementptr i8, ptr %2, i32 232
  %9 = ptrtoint ptr %hot to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load4 = load i8, ptr %hot, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load4)
  %tobool5.not = icmp sgt i8 %bf.load4, -1
  br i1 %tobool5.not, label %if.then6, label %if.end.if.end14_crit_edge

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %bf.set10 = or i8 %bf.load4, -128
  %10 = ptrtoint ptr %hot to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %bf.set10, ptr %hot, align 4
  %11 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load11 = load i8, ptr %__ctx.i, align 4
  %bf.set13 = or i8 %bf.load11, -128
  store i8 %bf.set13, ptr %__ctx.i, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then6, %if.end.if.end14_crit_edge
  %12 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %__crt_ctx.i.i, align 4
  %arrayidx = getelementptr %struct.dcp, ptr %0, i32 0, i32 5, i32 %13
  tail call void @_raw_spin_lock(ptr noundef %arrayidx) #10
  %14 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %__crt_ctx.i.i, align 4
  %arrayidx16 = getelementptr %struct.dcp, ptr %0, i32 0, i32 7, i32 %15
  %call17 = tail call i32 @crypto_enqueue_request(ptr noundef %arrayidx16, ptr noundef %req) #10
  %16 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %__crt_ctx.i.i, align 4
  %arrayidx20 = getelementptr %struct.dcp, ptr %0, i32 0, i32 5, i32 %17
  tail call void @_raw_spin_unlock(ptr noundef %arrayidx20) #10
  %18 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %__crt_ctx.i.i, align 4
  %arrayidx22 = getelementptr %struct.dcp, ptr %0, i32 0, i32 6, i32 %19
  %20 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx22, align 4
  %call23 = tail call i32 @wake_up_process(ptr noundef %21) #10
  tail call void @mutex_unlock(ptr noundef %mutex) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call17, %if.end14 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 48)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 48)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind readonly }
attributes #6 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nobuiltin }
attributes #15 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !28, !29, !30, !32, !34, !35, !36, !38, !40, !41, !42, !44, !45, !47, !49, !50, !51, !53, !55, !56, !58, !59, !60, !62, !63, !64, !66, !67, !69, !71, !72, !74, !76, !78, !79, !80, !82, !84, !86, !87, !88, !89, !91, !92, !93, !95, !97, !99, !100, !101, !102, !104, !106, !108, !110, !111, !113}
!llvm.named.register.sp = !{!115}
!llvm.module.flags = !{!116, !117, !118, !119, !120, !121, !122, !123}
!llvm.ident = !{!124}

!0 = !{ptr @__initcall__kmod_mxs_dcp__251_1185_mxs_dcp_driver_init6, !1, !"__initcall__kmod_mxs_dcp__251_1185_mxs_dcp_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/crypto/mxs-dcp.c", i32 1185, i32 1}
!2 = !{ptr @__exitcall_mxs_dcp_driver_exit, !1, !"__exitcall_mxs_dcp_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author252, !4, !"__UNIQUE_ID_author252", i1 false, i1 false}
!4 = !{!"../drivers/crypto/mxs-dcp.c", i32 1187, i32 1}
!5 = !{ptr @__UNIQUE_ID_description253, !6, !"__UNIQUE_ID_description253", i1 false, i1 false}
!6 = !{!"../drivers/crypto/mxs-dcp.c", i32 1188, i32 1}
!7 = !{ptr @__UNIQUE_ID_file254, !8, !"__UNIQUE_ID_file254", i1 false, i1 false}
!8 = !{!"../drivers/crypto/mxs-dcp.c", i32 1189, i32 1}
!9 = !{ptr @__UNIQUE_ID_license255, !8, !"__UNIQUE_ID_license255", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias256, !11, !"__UNIQUE_ID_alias256", i1 false, i1 false}
!11 = !{!"../drivers/crypto/mxs-dcp.c", i32 1190, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/crypto/mxs-dcp.c", i32 1180, i32 12}
!14 = !{ptr @mxs_dcp_driver, !15, !"mxs_dcp_driver", i1 false, i1 false}
!15 = !{!"../drivers/crypto/mxs-dcp.c", i32 1176, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/crypto/mxs-dcp.c", i32 979, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @mxs_dcp_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @mxs_dcp_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/crypto/mxs-dcp.c", i32 1002, i32 11}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/crypto/mxs-dcp.c", i32 1004, i32 3}
!28 = !{ptr @mxs_dcp_probe._entry.7, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @mxs_dcp_probe._entry_ptr.9, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/crypto/mxs-dcp.c", i32 1009, i32 11}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/crypto/mxs-dcp.c", i32 1011, i32 3}
!34 = !{ptr @mxs_dcp_probe._entry.11, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @mxs_dcp_probe._entry_ptr.13, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/crypto/mxs-dcp.c", i32 1025, i32 36}
!38 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/crypto/mxs-dcp.c", i32 1038, i32 3}
!40 = !{ptr @mxs_dcp_probe._entry.15, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @mxs_dcp_probe._entry_ptr.17, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @mxs_dcp_probe.__key, !43, !"__key", i1 false, i1 false}
!43 = !{!"../drivers/crypto/mxs-dcp.c", i32 1068, i32 3}
!44 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.19, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/crypto/mxs-dcp.c", i32 1074, i32 36}
!47 = !{ptr @.str.21, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/crypto/mxs-dcp.c", i32 1077, i32 3}
!49 = !{ptr @mxs_dcp_probe._entry.20, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @mxs_dcp_probe._entry_ptr.22, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.23, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/crypto/mxs-dcp.c", i32 1082, i32 34}
!53 = !{ptr @mxs_dcp_probe._entry.24, !54, !"_entry", i1 false, i1 false}
!54 = !{!"../drivers/crypto/mxs-dcp.c", i32 1085, i32 3}
!55 = !{ptr @mxs_dcp_probe._entry_ptr.25, !54, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.27, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/crypto/mxs-dcp.c", i32 1098, i32 4}
!58 = !{ptr @mxs_dcp_probe._entry.26, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @mxs_dcp_probe._entry_ptr.28, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.30, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/crypto/mxs-dcp.c", i32 1106, i32 4}
!62 = !{ptr @mxs_dcp_probe._entry.29, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @mxs_dcp_probe._entry_ptr.31, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @mxs_dcp_probe._entry.32, !65, !"_entry", i1 false, i1 false}
!65 = !{!"../drivers/crypto/mxs-dcp.c", i32 1115, i32 4}
!66 = !{ptr @mxs_dcp_probe._entry_ptr.33, !65, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @global_sdcp, !68, !"global_sdcp", i1 false, i1 false}
!68 = !{!"../drivers/crypto/mxs-dcp.c", i32 126, i32 20}
!69 = !{ptr @init_completion.__key, !70, !"__key", i1 false, i1 false}
!70 = !{!"../include/linux/completion.h", i32 87, i32 2}
!71 = !{ptr @.str.34, !70, !"<string literal>", i1 false, i1 false}
!72 = distinct !{null, !73, !"__already_done", i1 false, i1 false}
!73 = !{!"../drivers/crypto/mxs-dcp.c", i32 697, i32 3}
!74 = distinct !{null, !75, !"__already_done", i1 false, i1 false}
!75 = !{!"../drivers/crypto/mxs-dcp.c", i32 709, i32 3}
!76 = distinct !{null, !77, !"__already_done", i1 false, i1 false}
!77 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!78 = !{ptr @.str.36, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @.str.37, !77, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @sha1_null_hash, !81, !"sha1_null_hash", i1 false, i1 false}
!81 = !{!"../drivers/crypto/mxs-dcp.c", i32 36, i32 22}
!82 = !{ptr @sha256_null_hash, !83, !"sha256_null_hash", i1 false, i1 false}
!83 = !{!"../drivers/crypto/mxs-dcp.c", i32 40, i32 22}
!84 = !{ptr @.str.38, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/crypto/mxs-dcp.c", i32 200, i32 3}
!86 = !{ptr @.str.39, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @mxs_dcp_start_dma._entry, !85, !"_entry", i1 false, i1 false}
!88 = !{ptr @mxs_dcp_start_dma._entry_ptr, !85, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.41, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/crypto/mxs-dcp.c", i32 207, i32 3}
!91 = !{ptr @mxs_dcp_start_dma._entry.40, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @mxs_dcp_start_dma._entry_ptr.42, !90, !"_entry_ptr", i1 false, i1 false}
!93 = distinct !{null, !94, !"__already_done", i1 false, i1 false}
!94 = !{!"../drivers/crypto/mxs-dcp.c", i32 401, i32 3}
!95 = distinct !{null, !96, !"__already_done", i1 false, i1 false}
!96 = !{!"../drivers/crypto/mxs-dcp.c", i32 413, i32 3}
!97 = !{ptr @.str.44, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/crypto/mxs-dcp.c", i32 248, i32 3}
!99 = !{ptr @.str.45, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @mxs_dcp_run_aes._entry, !98, !"_entry", i1 false, i1 false}
!101 = !{ptr @mxs_dcp_run_aes._entry_ptr, !98, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @dcp_aes_algs, !103, !"dcp_aes_algs", i1 false, i1 false}
!103 = !{!"../drivers/crypto/mxs-dcp.c", i32 854, i32 28}
!104 = !{ptr @dcp_sha1_alg, !105, !"dcp_sha1_alg", i1 false, i1 false}
!105 = !{!"../drivers/crypto/mxs-dcp.c", i32 896, i32 25}
!106 = !{ptr @.str.46, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/crypto/mxs-dcp.c", i32 736, i32 34}
!108 = !{ptr @dcp_sha_init.__key, !109, !"__key", i1 false, i1 false}
!109 = !{!"../drivers/crypto/mxs-dcp.c", i32 745, i32 2}
!110 = !{ptr @.str.47, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @dcp_sha256_alg, !112, !"dcp_sha256_alg", i1 false, i1 false}
!112 = !{!"../drivers/crypto/mxs-dcp.c", i32 923, i32 25}
!113 = !{ptr @mxs_dcp_dt_ids, !114, !"mxs_dcp_dt_ids", i1 false, i1 false}
!114 = !{!"../drivers/crypto/mxs-dcp.c", i32 1168, i32 34}
!115 = !{!"sp"}
!116 = !{i32 1, !"wchar_size", i32 2}
!117 = !{i32 1, !"min_enum_size", i32 4}
!118 = !{i32 8, !"branch-target-enforcement", i32 0}
!119 = !{i32 8, !"sign-return-address", i32 0}
!120 = !{i32 8, !"sign-return-address-all", i32 0}
!121 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!122 = !{i32 7, !"uwtable", i32 1}
!123 = !{i32 7, !"frame-pointer", i32 2}
!124 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!125 = !{i64 2154584797}
!126 = !{i64 6244636}
!127 = !{i64 2154585269}
!128 = !{i64 2154585673}
!129 = !{i64 2154586137}
!130 = !{i64 2154586579}
!131 = !{i64 6245054}
!132 = !{i64 2154591472}
!133 = !{i64 2154576924}
!134 = !{i64 2154577148}
!135 = !{i64 2154571290}
!136 = !{i64 2154576019}
!137 = !{i64 2154560970}
!138 = !{i64 2154565699}
!139 = !{!"branch_weights", i32 2000, i32 1}
!140 = !{i64 2153806320, i64 2153806812, i64 2153806357, i64 2153806413, i64 2153806447, i64 2153806471, i64 2153806512, i64 2153806533, i64 2153806561, i64 2153806595}
!141 = !{i64 2154547665}
!142 = !{i64 2154548155}
!143 = !{i64 2154548634}
!144 = !{i64 2154551111}
!145 = !{i64 2154551721}
