; ModuleID = '/llk/IR_all_yes/drivers/crypto/hifn_795x.c_pt.bc'
source_filename = "../drivers/crypto/hifn_795x.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kparam_string = type { i32, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.65 }
%union.anon.65 = type { ptr }
%struct.pci_driver = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, %struct.pci_dynids }
%struct.list_head = type { ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.pci2id = type { i16, i16, [13 x i8] }
%struct.hifn_alg_template = type { [128 x i8], [128 x i8], i32, [124 x i8], %struct.skcipher_alg }
%struct.skcipher_alg = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [88 x i8], %struct.crypto_alg }
%struct.crypto_alg = type { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, %struct.refcount_struct, [128 x i8], [128 x i8], ptr, %union.anon.74, ptr, ptr, ptr, ptr, %union.anon.75, [120 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%union.anon.74 = type { %struct.cipher_alg }
%struct.cipher_alg = type { i32, i32, ptr, ptr, ptr }
%union.anon.75 = type { %struct.crypto_istat_akcipher }
%struct.crypto_istat_akcipher = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.71, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.71 = type { ptr }
%struct.hifn_device = type { [32 x i8], i32, ptr, [3 x ptr], ptr, i32, i32, [24 x ptr], %struct.spinlock, i32, i32, i32, %struct.delayed_work, i32, i32, i32, i8, %struct.tasklet_struct, %struct.crypto_queue, %struct.list_head, i32, i32, i64, %struct.hwrng }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.72, i32 }
%union.anon.72 = type { ptr }
%struct.crypto_queue = type { %struct.list_head, ptr, i32, i32 }
%struct.hwrng = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, %struct.list_head, %struct.kref, %struct.completion }
%struct.hifn_crypto_alg = type { %struct.list_head, [120 x i8], %struct.skcipher_alg, ptr, [124 x i8] }
%struct.hifn_dma = type { [25 x %struct.hifn_desc], [81 x %struct.hifn_desc], [81 x %struct.hifn_desc], [25 x %struct.hifn_desc], [24 x [348 x i8]], [24 x [40 x i8]], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hifn_desc = type { i32, i32 }
%struct.crypto_async_request = type { %struct.list_head, ptr, ptr, ptr, i32 }
%struct.skcipher_request = type { i32, ptr, ptr, ptr, %struct.crypto_async_request, [88 x i8], [0 x ptr] }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
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
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [112 x i8], [0 x ptr] }
%struct.hifn_request_context = type { ptr, i32, i8, i8, i8, i8, %struct.hifn_cipher_walk }
%struct.hifn_cipher_walk = type { [16 x %struct.scatterlist], i32, i32 }
%struct.hifn_base_command = type { i16, i16, i16, i16 }
%struct.crypto_skcipher = type { i32, [124 x i8], %struct.crypto_tfm }
%struct.des_ctx = type { [32 x i32] }

@__param_str_hifn_pll_ref = internal constant [23 x i8] c"hifn_795x.hifn_pll_ref\00", align 1
@param_ops_string = external dso_local constant %struct.kernel_param_ops, align 4
@__param_string_hifn_pll_ref = internal constant %struct.kparam_string { i32 7, ptr @hifn_pll_ref }, align 4
@__param_hifn_pll_ref = internal constant %struct.kernel_param { ptr @__param_str_hifn_pll_ref, ptr null, ptr @param_ops_string, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @__param_string_hifn_pll_ref } }, section "__param", align 4
@__UNIQUE_ID_hifn_pll_reftype248 = internal constant [39 x i8] c"hifn_795x.parmtype=hifn_pll_ref:string\00", section ".modinfo", align 1
@__UNIQUE_ID_hifn_pll_ref249 = internal constant [86 x i8] c"hifn_795x.parm=hifn_pll_ref:PLL reference clock (pci[freq] or ext[freq], default ext)\00", section ".modinfo", align 1
@hifn_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.3, ptr @hifn_pci_tbl, ptr @hifn_probe, ptr @hifn_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@hifn_fini._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 2686, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [84 x i8], [44 x i8] } { [84 x i8] c"\016Driver for HIFN 795x crypto accelerator chip has been successfully unregistered.\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"hifn_fini\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/crypto/hifn_795x.c\00", [37 x i8] zeroinitializer }, align 32
@hifn_fini._entry_ptr = internal global ptr @hifn_fini._entry, section ".printk_index", align 4
@__initcall__kmod_hifn_795x__287_2689_hifn_init6 = internal global ptr @hifn_init, section ".initcall6.init", align 4
@__exitcall_hifn_fini = internal global ptr @hifn_fini, section ".exitcall.exit", align 4
@__UNIQUE_ID_file288 = internal constant [40 x i8] c"hifn_795x.file=drivers/crypto/hifn_795x\00", section ".modinfo", align 1
@__UNIQUE_ID_license289 = internal constant [22 x i8] c"hifn_795x.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author290 = internal constant [56 x i8] c"hifn_795x.author=Evgeniy Polyakov <johnpol@2ka.mipt.ru>\00", section ".modinfo", align 1
@__UNIQUE_ID_description291 = internal constant [68 x i8] c"hifn_795x.description=Driver for HIFN 795x crypto accelerator chip.\00", section ".modinfo", align 1
@hifn_pll_ref = internal global { [7 x i8], [25 x i8] } { [7 x i8] c"ext\00\00\00\00", [25 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"hifn795x\00", [23 x i8] zeroinitializer }, align 32
@hifn_pci_tbl = internal global { [3 x %struct.pci_device_id], [32 x i8] } { [3 x %struct.pci_device_id] [%struct.pci_device_id { i32 5027, i32 32, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5027, i32 29, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"hifn%d\00", [25 x i8] zeroinitializer }, align 32
@hifn_dev_number = internal global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@hifn_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 2489, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Broken hardware - I/O regions are too small.\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"hifn_probe\00", [21 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@hifn_probe._entry_ptr = internal global ptr @hifn_probe._entry, section ".printk_index", align 4
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@hifn_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&dev->lock\00", [21 x i8] zeroinitializer }, align 32
@hifn_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.6, ptr @.str.2, i32 2523, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to allocate descriptor rings.\0A\00", [58 x i8] zeroinitializer }, align 32
@hifn_probe._entry_ptr.13 = internal global ptr @hifn_probe._entry.11, section ".printk_index", align 4
@hifn_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.6, ptr @.str.2, i32 2543, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to request IRQ%d: err: %d.\0A\00", [61 x i8] zeroinitializer }, align 32
@hifn_probe._entry_ptr.16 = internal global ptr @hifn_probe._entry.14, section ".printk_index", align 4
@hifn_probe.__key.17 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.18 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"(work_completion)(&(&dev->work)->work)\00", [57 x i8] zeroinitializer }, align 32
@hifn_probe.__key.19 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.20 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&(&dev->work)->timer\00", [43 x i8] zeroinitializer }, align 32
@hifn_probe.__UNIQUE_ID_ddebug286 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.21, ptr @.str.6, ptr @.str.2, ptr @.str.22, i8 2, i8 -127, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"hifn_795x\00", [22 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"HIFN crypto accelerator card at %s has been successfully registered as %s.\0A\00", [52 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@hifn_clear_rings.__UNIQUE_ID_ddebug282 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.21, ptr @.str.23, ptr @.str.2, ptr @.str.24, i8 1, i8 -82, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hifn_clear_rings\00", [47 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"ring cleanup 1: i: %d.%d.%d.%d, u: %d.%d.%d.%d, k: %d.%d.%d.%d.\0A\00", [63 x i8] zeroinitializer }, align 32
@hifn_clear_rings.__UNIQUE_ID_ddebug283 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.21, ptr @.str.23, ptr @.str.2, ptr @.str.25, i8 1, i8 -69, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"ring cleanup 2: i: %d.%d.%d.%d, u: %d.%d.%d.%d, k: %d.%d.%d.%d.\0A\00", [63 x i8] zeroinitializer }, align 32
@hifn_process_ready.__UNIQUE_ID_ddebug277 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.21, ptr @.str.26, ptr @.str.2, ptr @.str.27, i8 1, i8 -91, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"hifn_process_ready\00", [45 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [84 x i8], [44 x i8] } { [84 x i8] c"\0A%s: sg_page(t): %p, t->length: %u, sg_page(dst): %p, dst->length: %u, nbytes: %u.\0A\00", [44 x i8] zeroinitializer }, align 32
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@skcipher_get.__UNIQUE_ID_ddebug276 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.21, ptr @.str.28, ptr @.str.2, ptr @.str.29, i8 1, i8 -102, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"skcipher_get\00", [19 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%s: copy: %u, size: %u, srest: %u, nbytes: %u.\0A\00", [48 x i8] zeroinitializer }, align 32
@hifn_complete_sa._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.2, i32 1661, ptr @.str.32, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s: started: %d.\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hifn_complete_sa\00", [47 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@hifn_complete_sa._entry_ptr = internal global ptr @hifn_complete_sa._entry, section ".printk_index", align 4
@hifn_setup_session._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.2, i32 1588, ptr @.str.32, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"iv: %p [%d], key: %p [%d], mode: %u, op: %u, type: %u, err: %d.\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"hifn_setup_session\00", [45 x i8] zeroinitializer }, align 32
@hifn_setup_session._entry_ptr = internal global ptr @hifn_setup_session._entry, section ".printk_index", align 4
@hifn_cipher_walk.__UNIQUE_ID_ddebug264 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.21, ptr @.str.36, ptr @.str.2, ptr @.str.37, i8 1, i8 107, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hifn_cipher_walk\00", [47 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\0A%s: dlen: %u, doff: %u, offset: %u, nbytes: %u.\0A\00", [46 x i8] zeroinitializer }, align 32
@hifn_cipher_walk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.36, ptr @.str.2, i32 1492, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013%s: dlen: %u, nbytes: %u, slen: %u, offset: %u.\0A\00", [45 x i8] zeroinitializer }, align 32
@hifn_cipher_walk._entry_ptr = internal global ptr @hifn_cipher_walk._entry, section ".printk_index", align 4
@hifn_cipher_walk._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.36, ptr @.str.2, i32 1497, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [163 x i8], [61 x i8] } { [163 x i8] c"\013%s: please contact author to fix this issue, generally you should not catch this path under any condition but who knows how did you use crypto code.\0AThank you.\0A\00", [61 x i8] zeroinitializer }, align 32
@hifn_cipher_walk._entry_ptr.41 = internal global ptr @hifn_cipher_walk._entry.39, section ".printk_index", align 4
@skcipher_add.__UNIQUE_ID_ddebug263 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.21, ptr @.str.42, ptr @.str.2, ptr @.str.43, i8 1, i8 100, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"skcipher_add\00", [19 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%s: copy: %u, size: %u, drest: %u, nbytes: %u.\0A\00", [48 x i8] zeroinitializer }, align 32
@hifn_interrupt.__UNIQUE_ID_ddebug284 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.21, ptr @.str.44, ptr @.str.2, ptr @.str.45, i8 1, i8 -47, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"hifn_interrupt\00", [17 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"1 dmacsr: %08x, dmareg: %08x, res: %08x [%d], i: %d.%d.%d.%d, u: %d.%d.%d.%d.\0A\00", [49 x i8] zeroinitializer }, align 32
@hifn_interrupt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.44, ptr @.str.2, i32 1881, ptr @.str.47, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"overflow: r: %d, d: %d, puisr: %08x, d: %u.\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@hifn_interrupt._entry_ptr = internal global ptr @hifn_interrupt._entry, section ".printk_index", align 4
@hifn_interrupt._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.44, ptr @.str.2, i32 1895, ptr @.str.47, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"abort: c: %d, s: %d, d: %d, r: %d.\0A\00", [60 x i8] zeroinitializer }, align 32
@hifn_interrupt._entry_ptr.50 = internal global ptr @hifn_interrupt._entry.48, section ".printk_index", align 4
@hifn_interrupt.__UNIQUE_ID_ddebug285 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.21, ptr @.str.44, ptr @.str.2, ptr @.str.51, i8 1, i8 -37, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"wait on command.\0A\00", [46 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.52 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ext\00", [28 x i8] zeroinitializer }, align 32
@hifn_init_pll._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.2, i32 938, ptr @.str.32, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"assuming %uMHz clock speed, override with hifn_pll_ref=%.3s<frequency>\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"hifn_init_pll\00", [18 x i8] zeroinitializer }, align 32
@hifn_init_pll._entry_ptr = internal global ptr @hifn_init_pll._entry, section ".printk_index", align 4
@pci2id = internal constant { [2 x %struct.pci2id], [60 x i8] } { [2 x %struct.pci2id] [%struct.pci2id { i16 5027, i16 32, [13 x i8] zeroinitializer }, %struct.pci2id { i16 5027, i16 29, [13 x i8] zeroinitializer }], [60 x i8] zeroinitializer }, align 32
@hifn_enable_crypto._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.56, ptr @.str.2, i32 852, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Unknown card!\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"hifn_enable_crypto\00", [45 x i8] zeroinitializer }, align 32
@hifn_enable_crypto._entry_ptr = internal global ptr @hifn_enable_crypto._entry, section ".printk_index", align 4
@hifn_enable_crypto.__UNIQUE_ID_ddebug252 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.21, ptr @.str.56, ptr @.str.2, ptr @.str.57, i8 0, i8 -38, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s.\0A\00", [24 x i8] zeroinitializer }, align 32
@hifn_wait_puc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.59, ptr @.str.2, i32 663, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to reset PUC unit.\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"hifn_wait_puc\00", [18 x i8] zeroinitializer }, align 32
@hifn_wait_puc._entry_ptr = internal global ptr @hifn_wait_puc._entry, section ".printk_index", align 4
@hifn_init_pubrng._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.61, ptr @.str.2, i32 814, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Failed to initialise public key engine.\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hifn_init_pubrng\00", [47 x i8] zeroinitializer }, align 32
@hifn_init_pubrng._entry_ptr = internal global ptr @hifn_init_pubrng._entry, section ".printk_index", align 4
@hifn_init_pubrng.__UNIQUE_ID_ddebug250 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.21, ptr @.str.61, ptr @.str.2, ptr @.str.62, i8 0, i8 -51, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.62 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"Public key engine has been successfully initialised.\0A\00", [42 x i8] zeroinitializer }, align 32
@hifn_init_pubrng.__UNIQUE_ID_ddebug251 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.21, ptr @.str.61, ptr @.str.2, ptr @.str.63, i8 0, i8 -50, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.63 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"RNG engine has been successfully initialised.\0A\00", [49 x i8] zeroinitializer }, align 32
@hifn_alg_templates = internal constant [12 x %struct.hifn_alg_template] [%struct.hifn_alg_template { [128 x i8] c"cfb(des3_ede)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"cfb-3des\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, [124 x i8] undef, %struct.skcipher_alg { ptr @hifn_des3_setkey, ptr @hifn_encrypt_3des_cfb, ptr @hifn_decrypt_3des_cfb, ptr null, ptr null, i32 24, i32 24, i32 0, i32 0, i32 0, [88 x i8] undef, %struct.crypto_alg zeroinitializer } }, %struct.hifn_alg_template { [128 x i8] c"ofb(des3_ede)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"ofb-3des\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, [124 x i8] undef, %struct.skcipher_alg { ptr @hifn_des3_setkey, ptr @hifn_encrypt_3des_ofb, ptr @hifn_decrypt_3des_ofb, ptr null, ptr null, i32 24, i32 24, i32 0, i32 0, i32 0, [88 x i8] undef, %struct.crypto_alg zeroinitializer } }, %struct.hifn_alg_template { [128 x i8] c"cbc(des3_ede)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"cbc-3des\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, [124 x i8] undef, %struct.skcipher_alg { ptr @hifn_des3_setkey, ptr @hifn_encrypt_3des_cbc, ptr @hifn_decrypt_3des_cbc, ptr null, ptr null, i32 24, i32 24, i32 8, i32 0, i32 0, [88 x i8] undef, %struct.crypto_alg zeroinitializer } }, %struct.hifn_alg_template { [128 x i8] c"ecb(des3_ede)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"ecb-3des\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, [124 x i8] undef, %struct.skcipher_alg { ptr @hifn_des3_setkey, ptr @hifn_encrypt_3des_ecb, ptr @hifn_decrypt_3des_ecb, ptr null, ptr null, i32 24, i32 24, i32 0, i32 0, i32 0, [88 x i8] undef, %struct.crypto_alg zeroinitializer } }, %struct.hifn_alg_template { [128 x i8] c"cfb(des)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"cfb-des\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, [124 x i8] undef, %struct.skcipher_alg { ptr @hifn_setkey, ptr @hifn_encrypt_des_cfb, ptr @hifn_decrypt_des_cfb, ptr null, ptr null, i32 8, i32 8, i32 0, i32 0, i32 0, [88 x i8] undef, %struct.crypto_alg zeroinitializer } }, %struct.hifn_alg_template { [128 x i8] c"ofb(des)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"ofb-des\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, [124 x i8] undef, %struct.skcipher_alg { ptr @hifn_setkey, ptr @hifn_encrypt_des_ofb, ptr @hifn_decrypt_des_ofb, ptr null, ptr null, i32 8, i32 8, i32 0, i32 0, i32 0, [88 x i8] undef, %struct.crypto_alg zeroinitializer } }, %struct.hifn_alg_template { [128 x i8] c"cbc(des)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"cbc-des\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, [124 x i8] undef, %struct.skcipher_alg { ptr @hifn_setkey, ptr @hifn_encrypt_des_cbc, ptr @hifn_decrypt_des_cbc, ptr null, ptr null, i32 8, i32 8, i32 8, i32 0, i32 0, [88 x i8] undef, %struct.crypto_alg zeroinitializer } }, %struct.hifn_alg_template { [128 x i8] c"ecb(des)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"ecb-des\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, [124 x i8] undef, %struct.skcipher_alg { ptr @hifn_setkey, ptr @hifn_encrypt_des_ecb, ptr @hifn_decrypt_des_ecb, ptr null, ptr null, i32 8, i32 8, i32 0, i32 0, i32 0, [88 x i8] undef, %struct.crypto_alg zeroinitializer } }, %struct.hifn_alg_template { [128 x i8] c"ecb(aes)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"ecb-aes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 16, [124 x i8] undef, %struct.skcipher_alg { ptr @hifn_setkey, ptr @hifn_encrypt_aes_ecb, ptr @hifn_decrypt_aes_ecb, ptr null, ptr null, i32 16, i32 32, i32 0, i32 0, i32 0, [88 x i8] undef, %struct.crypto_alg zeroinitializer } }, %struct.hifn_alg_template { [128 x i8] c"cbc(aes)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"cbc-aes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 16, [124 x i8] undef, %struct.skcipher_alg { ptr @hifn_setkey, ptr @hifn_encrypt_aes_cbc, ptr @hifn_decrypt_aes_cbc, ptr null, ptr null, i32 16, i32 32, i32 16, i32 0, i32 0, [88 x i8] undef, %struct.crypto_alg zeroinitializer } }, %struct.hifn_alg_template { [128 x i8] c"cfb(aes)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"cfb-aes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 16, [124 x i8] undef, %struct.skcipher_alg { ptr @hifn_setkey, ptr @hifn_encrypt_aes_cfb, ptr @hifn_decrypt_aes_cfb, ptr null, ptr null, i32 16, i32 32, i32 0, i32 0, i32 0, [88 x i8] undef, %struct.crypto_alg zeroinitializer } }, %struct.hifn_alg_template { [128 x i8] c"ofb(aes)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"ofb-aes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 16, [124 x i8] undef, %struct.skcipher_alg { ptr @hifn_setkey, ptr @hifn_encrypt_aes_ofb, ptr @hifn_decrypt_aes_ofb, ptr null, ptr null, i32 16, i32 32, i32 0, i32 0, i32 0, [88 x i8] undef, %struct.crypto_alg zeroinitializer } }], align 128
@.str.64 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s-%s\00", [26 x i8] zeroinitializer }, align 32
@hifn_work._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.66, ptr @.str.2, i32 1825, ptr @.str.32, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"r: %08x, active: %d, started: %d, success: %lu: qlen: %u/%u, reset: %d.\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"hifn_work\00", [22 x i8] zeroinitializer }, align 32
@hifn_work._entry_ptr = internal global ptr @hifn_work._entry, section ".printk_index", align 4
@hifn_work._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.66, ptr @.str.2, i32 1827, ptr @.str.32, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s: res: \00", [22 x i8] zeroinitializer }, align 32
@hifn_work._entry_ptr.69 = internal global ptr @hifn_work._entry.67, section ".printk_index", align 4
@hifn_work._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.66, ptr @.str.2, i32 1829, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"\016%x.%p \00", [23 x i8] zeroinitializer }, align 32
@hifn_work._entry_ptr.72 = internal global ptr @hifn_work._entry.70, section ".printk_index", align 4
@hifn_work._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.66, ptr @.str.2, i32 1835, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\016\0A\00", [28 x i8] zeroinitializer }, align 32
@hifn_work._entry_ptr.75 = internal global ptr @hifn_work._entry.73, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.76 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"pci\00", [28 x i8] zeroinitializer }, align 32
@hifn_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.78, ptr @.str.2, i32 2650, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\013hifn795x: invalid hifn_pll_ref clock, must be pci or ext\00", [37 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"hifn_init\00", [22 x i8] zeroinitializer }, align 32
@hifn_init._entry_ptr = internal global ptr @hifn_init._entry, section ".printk_index", align 4
@hifn_init._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.78, ptr @.str.2, i32 2663, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"\013hifn795x: invalid hifn_pll_ref frequency, mustbe in the range of 20-100\00", [54 x i8] zeroinitializer }, align 32
@hifn_init._entry_ptr.81 = internal global ptr @hifn_init._entry.79, section ".printk_index", align 4
@hifn_init._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.78, ptr @.str.2, i32 2671, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013Failed to register PCI driver for %s device.\0A\00", [48 x i8] zeroinitializer }, align 32
@hifn_init._entry_ptr.84 = internal global ptr @hifn_init._entry.82, section ".printk_index", align 4
@hifn_init._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.78, ptr @.str.2, i32 2676, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"\016Driver for HIFN 795x crypto accelerator chip has been successfully registered.\0A\00", [46 x i8] zeroinitializer }, align 32
@hifn_init._entry_ptr.87 = internal global ptr @hifn_init._entry.85, section ".printk_index", align 4
@switch.table.hifn_handle_req = internal constant { [3 x i16], [26 x i8] } { [3 x i16] [i16 40, i16 8, i16 4], [26 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.88 = internal global [7 x i64] [i64 5, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.89 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 3, i64 4]
@__sancov_gen_cov_switch_values.90 = internal global [4 x i64] [i64 2, i64 32, i64 24, i64 32]
@___asan_gen_.91 = private unnamed_addr constant [16 x i8] c"hifn_pci_driver\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 2636, i32 26 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 2685, i32 2 }
@___asan_gen_.106 = private unnamed_addr constant [13 x i8] c"hifn_pll_ref\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 27, i32 13 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 2637, i32 14 }
@___asan_gen_.112 = private unnamed_addr constant [13 x i8] c"hifn_pci_tbl\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 2629, i32 29 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 2479, i32 31 }
@___asan_gen_.118 = private unnamed_addr constant [16 x i8] c"hifn_dev_number\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 32, i32 17 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 2489, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 2503, i32 41 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 2504, i32 2 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 2523, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 2542, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 2560, i32 2 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 2563, i32 2 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 1716, i32 2 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 1770, i32 2 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 1680, i32 4 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 1639, i32 3 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 1660, i32 3 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 1584, i32 3 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 1454, i32 3 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 1491, i32 5 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 1493, i32 5 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 1426, i32 3 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 1857, i32 2 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 1878, i32 3 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 1891, i32 3 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 1902, i32 3 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 928, i32 28 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 937, i32 3 }
@___asan_gen_.277 = private unnamed_addr constant [7 x i8] c"pci2id\00", align 1
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 734, i32 3 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 852, i32 3 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 875, i32 2 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 663, i32 3 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 814, i32 3 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 820, i32 3 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 827, i32 2 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 2397, i32 63 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 1820, i32 4 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 1827, i32 4 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 1829, i32 5 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 1835, i32 4 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 2649, i32 28 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 2650, i32 3 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 2662, i32 4 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 2670, i32 3 }
@___asan_gen_.370 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.373 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.374 = private constant [30 x i8] c"../drivers/crypto/hifn_795x.c\00", align 1
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 2675, i32 2 }
@___asan_gen_.376 = private unnamed_addr constant [29 x i8] c"switch.table.hifn_handle_req\00", align 1
@llvm.compiler.used = appending global [128 x ptr] [ptr @__UNIQUE_ID_author290, ptr @__UNIQUE_ID_description291, ptr @__UNIQUE_ID_file288, ptr @__UNIQUE_ID_hifn_pll_ref249, ptr @__UNIQUE_ID_hifn_pll_reftype248, ptr @__UNIQUE_ID_license289, ptr @__exitcall_hifn_fini, ptr @__initcall__kmod_hifn_795x__287_2689_hifn_init6, ptr @__param_hifn_pll_ref, ptr @hifn_cipher_walk._entry, ptr @hifn_cipher_walk._entry.39, ptr @hifn_cipher_walk._entry_ptr, ptr @hifn_cipher_walk._entry_ptr.41, ptr @hifn_complete_sa._entry, ptr @hifn_complete_sa._entry_ptr, ptr @hifn_enable_crypto._entry, ptr @hifn_enable_crypto._entry_ptr, ptr @hifn_fini, ptr @hifn_fini._entry, ptr @hifn_fini._entry_ptr, ptr @hifn_init._entry, ptr @hifn_init._entry.79, ptr @hifn_init._entry.82, ptr @hifn_init._entry.85, ptr @hifn_init._entry_ptr, ptr @hifn_init._entry_ptr.81, ptr @hifn_init._entry_ptr.84, ptr @hifn_init._entry_ptr.87, ptr @hifn_init_pll._entry, ptr @hifn_init_pll._entry_ptr, ptr @hifn_init_pubrng._entry, ptr @hifn_init_pubrng._entry_ptr, ptr @hifn_interrupt._entry, ptr @hifn_interrupt._entry.48, ptr @hifn_interrupt._entry_ptr, ptr @hifn_interrupt._entry_ptr.50, ptr @hifn_probe._entry, ptr @hifn_probe._entry.11, ptr @hifn_probe._entry.14, ptr @hifn_probe._entry_ptr, ptr @hifn_probe._entry_ptr.13, ptr @hifn_probe._entry_ptr.16, ptr @hifn_setup_session._entry, ptr @hifn_setup_session._entry_ptr, ptr @hifn_wait_puc._entry, ptr @hifn_wait_puc._entry_ptr, ptr @hifn_work._entry, ptr @hifn_work._entry.67, ptr @hifn_work._entry.70, ptr @hifn_work._entry.73, ptr @hifn_work._entry_ptr, ptr @hifn_work._entry_ptr.69, ptr @hifn_work._entry_ptr.72, ptr @hifn_work._entry_ptr.75, ptr @hifn_pci_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @hifn_pll_ref, ptr @.str.3, ptr @hifn_pci_tbl, ptr @.str.4, ptr @hifn_dev_number, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @hifn_probe.__key, ptr @.str.10, ptr @.str.12, ptr @.str.15, ptr @hifn_probe.__key.17, ptr @.str.18, ptr @hifn_probe.__key.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.40, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.49, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @pci2id, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.68, ptr @.str.71, ptr @.str.74, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.80, ptr @.str.83, ptr @.str.86, ptr @switch.table.hifn_handle_req], section "llvm.metadata"
@0 = internal global [96 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hifn_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hifn_fini._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hifn_pll_ref to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hifn_pci_tbl to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hifn_dev_number to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hifn_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hifn_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hifn_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hifn_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hifn_probe.__key.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hifn_probe.__key.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hifn_complete_sa._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hifn_setup_session._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hifn_cipher_walk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hifn_cipher_walk._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 163, i32 224, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hifn_interrupt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hifn_interrupt._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hifn_init_pll._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci2id to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hifn_enable_crypto._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hifn_wait_puc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hifn_init_pubrng._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hifn_work._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hifn_work._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hifn_work._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hifn_work._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hifn_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hifn_init._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hifn_init._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hifn_init._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.hifn_handle_req to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @hifn_fini() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @pci_unregister_driver(ptr noundef nonnull @hifn_pci_driver) #14
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @hifn_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %bcmp = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(3) @hifn_pll_ref, ptr noundef nonnull dereferenceable(3) @.str.52, i32 3) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool.not = icmp eq i32 %bcmp, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %bcmp36 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(3) @hifn_pll_ref, ptr noundef nonnull dereferenceable(3) @.str.76, i32 3) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp36)
  %tobool2.not = icmp eq i32 %bcmp36, 0
  br i1 %tobool2.not, label %land.lhs.true.if.end_crit_edge, label %do.end

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77) #17
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %0 = load i8, ptr getelementptr inbounds ([7 x i8], ptr @hifn_pll_ref, i32 0, i32 3), align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %cmp.not = icmp eq i8 %0, 0
  br i1 %cmp.not, label %if.end.if.end18_crit_edge, label %if.then5

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end18

if.then5:                                         ; preds = %if.end
  %call6 = tail call i32 @simple_strtoul(ptr noundef getelementptr inbounds ([7 x i8], ptr @hifn_pll_ref, i32 0, i32 3), ptr noundef null, i32 noundef 10) #14
  %1 = add i32 %call6, -101
  call void @__sanitizer_cov_trace_const_cmp4(i32 -81, i32 %1)
  %2 = icmp ult i32 %1, -81
  br i1 %2, label %do.end14, label %if.then5.if.end18_crit_edge

if.then5.if.end18_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end18

do.end14:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #16
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80) #17
  br label %cleanup

if.end18:                                         ; preds = %if.then5.if.end18_crit_edge, %if.end.if.end18_crit_edge
  %call19 = tail call i32 @__pci_register_driver(ptr noundef nonnull @hifn_pci_driver, ptr noundef null, ptr noundef nonnull @.str.21) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp20 = icmp slt i32 %call19, 0
  br i1 %cmp20, label %do.end25, label %do.end31

do.end25:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #16
  %3 = load ptr, ptr getelementptr inbounds (%struct.pci_driver, ptr @hifn_pci_driver, i32 0, i32 1), align 4
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.83, ptr noundef %3) #17
  br label %cleanup

do.end31:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #16
  %call33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.86) #17
  br label %cleanup

cleanup:                                          ; preds = %do.end31, %do.end25, %do.end14, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end14 ], [ -19, %do.end25 ], [ 0, %do.end31 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hifn_probe(ptr noundef %pdev, ptr nocapture noundef readnone %id) #3 align 64 {
entry:
  %name = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %name) #14
  %0 = ptrtoint ptr %name to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %name, align 8
  %call = tail call i32 @pci_enable_device(ptr noundef %pdev) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup196_crit_edge

entry.cleanup196_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup196

if.end:                                           ; preds = %entry
  tail call void @pci_set_master(ptr noundef %pdev) #14
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %call2 = tail call i32 @dma_set_mask(ptr noundef %dev1, i64 noundef 4294967295) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.err_out_disable_pci_device_crit_edge

if.end.err_out_disable_pci_device_crit_edge:      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_out_disable_pci_device

if.end5:                                          ; preds = %if.end
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @hifn_dev_number, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !208
  tail call void @llvm.prefetch.p0(ptr nonnull @hifn_dev_number, i32 1, i32 3, i32 1) #14
  %1 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @hifn_dev_number, ptr nonnull @hifn_dev_number, i32 1, ptr nonnull elementtype(i32) @hifn_dev_number) #14, !srcloc !209
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %1, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !210
  %sub = add i32 %asmresult.i.i.i.i, -1
  %call7 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name, i32 noundef 8, ptr noundef nonnull @.str.4, i32 noundef %sub)
  %call9 = call i32 @pci_request_regions(ptr noundef %pdev, ptr noundef nonnull %name) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end5.err_out_disable_pci_device_crit_edge

if.end5.err_out_disable_pci_device_crit_edge:     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_out_disable_pci_device

if.end12:                                         ; preds = %if.end5
  %end = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 0, i32 1
  %2 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.end12.do.end_crit_edge, label %cond.end

if.end12.do.end_crit_edge:                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

cond.end:                                         ; preds = %if.end12
  %resource = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47
  %4 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %resource, align 8
  %sub18 = add i32 %3, 1
  %add = sub i32 %sub18, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add)
  %cmp19 = icmp ult i32 %add, 4096
  br i1 %cmp19, label %cond.end.do.end_crit_edge, label %lor.lhs.false

cond.end.do.end_crit_edge:                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

lor.lhs.false:                                    ; preds = %cond.end
  %end22 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 1, i32 1
  %6 = ptrtoint ptr %end22 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %end22, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp23 = icmp eq i32 %7, 0
  br i1 %cmp23, label %lor.lhs.false.do.end_crit_edge, label %cond.end34

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

cond.end34:                                       ; preds = %lor.lhs.false
  %arrayidx21 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 1
  %8 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx21, align 8
  %sub32 = add i32 %7, 1
  %add33 = sub i32 %sub32, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 8192, i32 %add33)
  %cmp36 = icmp ult i32 %add33, 8192
  br i1 %cmp36, label %cond.end34.do.end_crit_edge, label %lor.lhs.false37

cond.end34.do.end_crit_edge:                      ; preds = %cond.end34
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

lor.lhs.false37:                                  ; preds = %cond.end34
  %end40 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 2, i32 1
  %10 = ptrtoint ptr %end40 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %end40, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp41 = icmp eq i32 %11, 0
  br i1 %cmp41, label %lor.lhs.false37.do.end_crit_edge, label %cond.end52

lor.lhs.false37.do.end_crit_edge:                 ; preds = %lor.lhs.false37
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

cond.end52:                                       ; preds = %lor.lhs.false37
  %arrayidx39 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 2
  %12 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx39, align 8
  %sub50 = add i32 %11, 1
  %add51 = sub i32 %sub50, %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768, i32 %add51)
  %cmp54 = icmp ult i32 %add51, 32768
  br i1 %cmp54, label %cond.end52.do.end_crit_edge, label %if.end57

cond.end52.do.end_crit_edge:                      ; preds = %cond.end52
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

do.end:                                           ; preds = %cond.end52.do.end_crit_edge, %lor.lhs.false37.do.end_crit_edge, %cond.end34.do.end_crit_edge, %lor.lhs.false.do.end_crit_edge, %cond.end.do.end_crit_edge, %if.end12.do.end_crit_edge
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.5) #17
  br label %err_out_free_regions

if.end57:                                         ; preds = %cond.end52
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %14 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %14, i32 noundef 3520, i32 noundef 1016) #19
  %tobool59.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool59.not, label %if.end57.err_out_free_regions_crit_edge, label %if.end61

if.end57.err_out_free_regions_crit_edge:          ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_out_free_regions

if.end61:                                         ; preds = %if.end57
  %alg_list = getelementptr inbounds %struct.hifn_device, ptr %call7.i.i, i32 0, i32 19
  %15 = ptrtoint ptr %alg_list to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %alg_list, ptr %alg_list, align 8
  %prev.i = getelementptr inbounds %struct.hifn_device, ptr %call7.i.i, i32 0, i32 19, i32 1
  %16 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %alg_list, ptr %prev.i, align 4
  %call65 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %call7.i.i, i32 noundef 32, ptr noundef nonnull @.str.9, ptr noundef nonnull %name)
  %lock = getelementptr inbounds %struct.hifn_device, ptr %call7.i.i, i32 0, i32 8
  call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.10, ptr noundef nonnull @hifn_probe.__key, i16 noundef signext 3) #14
  %17 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %resource, align 8
  %19 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp77 = icmp eq i32 %20, 0
  %sub86 = sub i32 1, %18
  %add87 = add i32 %sub86, %20
  %cond89 = select i1 %cmp77, i32 0, i32 %add87
  %call90 = call ptr @ioremap(i32 noundef %18, i32 noundef %cond89) #14
  %arrayidx91 = getelementptr %struct.hifn_device, ptr %call7.i.i, i32 0, i32 3, i32 0
  %21 = ptrtoint ptr %arrayidx91 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call90, ptr %arrayidx91, align 8
  %tobool94.not = icmp eq ptr %call90, null
  br i1 %tobool94.not, label %if.end61.for.inc193_crit_edge, label %for.cond

if.end61.for.inc193_crit_edge:                    ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc193

for.cond:                                         ; preds = %if.end61
  %22 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx21, align 8
  %24 = ptrtoint ptr %end22 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %end22, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp77.1 = icmp eq i32 %25, 0
  %sub86.1 = sub i32 1, %23
  %add87.1 = add i32 %sub86.1, %25
  %cond89.1 = select i1 %cmp77.1, i32 0, i32 %add87.1
  %call90.1 = call ptr @ioremap(i32 noundef %23, i32 noundef %cond89.1) #14
  %arrayidx91.1 = getelementptr %struct.hifn_device, ptr %call7.i.i, i32 0, i32 3, i32 1
  %26 = ptrtoint ptr %arrayidx91.1 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call90.1, ptr %arrayidx91.1, align 4
  %tobool94.not.1 = icmp eq ptr %call90.1, null
  br i1 %tobool94.not.1, label %for.cond.err_out_unmap_bars_crit_edge, label %for.cond.1

for.cond.err_out_unmap_bars_crit_edge:            ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_out_unmap_bars

for.cond.1:                                       ; preds = %for.cond
  %27 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx39, align 8
  %29 = ptrtoint ptr %end40 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %end40, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp77.2 = icmp eq i32 %30, 0
  %sub86.2 = sub i32 1, %28
  %add87.2 = add i32 %sub86.2, %30
  %cond89.2 = select i1 %cmp77.2, i32 0, i32 %add87.2
  %call90.2 = call ptr @ioremap(i32 noundef %28, i32 noundef %cond89.2) #14
  %arrayidx91.2 = getelementptr %struct.hifn_device, ptr %call7.i.i, i32 0, i32 3, i32 2
  %31 = ptrtoint ptr %arrayidx91.2 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call90.2, ptr %arrayidx91.2, align 8
  %tobool94.not.2 = icmp eq ptr %call90.2, null
  br i1 %tobool94.not.2, label %for.cond.1.err_out_unmap_bars_crit_edge, label %for.cond.2

for.cond.1.err_out_unmap_bars_crit_edge:          ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_out_unmap_bars

for.cond.2:                                       ; preds = %for.cond.1
  %desc_dma = getelementptr inbounds %struct.hifn_device, ptr %call7.i.i, i32 0, i32 5
  %call.i = call ptr @dma_alloc_attrs(ptr noundef %dev1, i32 noundef 11056, ptr noundef %desc_dma, i32 noundef 3264, i32 noundef 0) #14
  %desc_virt = getelementptr inbounds %struct.hifn_device, ptr %call7.i.i, i32 0, i32 4
  %32 = ptrtoint ptr %desc_virt to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call.i, ptr %desc_virt, align 4
  %tobool101.not = icmp eq ptr %call.i, null
  br i1 %tobool101.not, label %do.end105, label %if.end107

do.end105:                                        ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.12) #17
  br label %err_out_unmap_bars

if.end107:                                        ; preds = %for.cond.2
  %pdev108 = getelementptr inbounds %struct.hifn_device, ptr %call7.i.i, i32 0, i32 2
  %33 = ptrtoint ptr %pdev108 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %pdev, ptr %pdev108, align 4
  %irq = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 46
  %34 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %irq, align 4
  %irq109 = getelementptr inbounds %struct.hifn_device, ptr %call7.i.i, i32 0, i32 1
  %36 = ptrtoint ptr %irq109 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %irq109, align 8
  %uglygep = getelementptr i8, ptr %call7.i.i, i32 64
  %37 = call ptr @memset(ptr %uglygep, i32 0, i32 96)
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %38 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %tasklet = getelementptr inbounds %struct.hifn_device, ptr %call7.i.i, i32 0, i32 17
  %39 = ptrtoint ptr %call7.i.i to i32
  call void @tasklet_init(ptr noundef %tasklet, ptr noundef nonnull @hifn_tasklet_callback, i32 noundef %39) #14
  %queue = getelementptr inbounds %struct.hifn_device, ptr %call7.i.i, i32 0, i32 18
  call void @crypto_init_queue(ptr noundef %queue, i32 noundef 1) #14
  %40 = ptrtoint ptr %irq109 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %irq109, align 8
  %call.i297 = call i32 @request_threaded_irq(i32 noundef %41, ptr noundef nonnull @hifn_interrupt, ptr noundef null, i32 noundef 128, ptr noundef nonnull %call7.i.i, ptr noundef nonnull %call7.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i297)
  %tobool121.not = icmp eq i32 %call.i297, 0
  br i1 %tobool121.not, label %if.end129, label %do.end125

do.end125:                                        ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #16
  %42 = ptrtoint ptr %irq109 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %irq109, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.15, i32 noundef %43, i32 noundef %call.i297) #17
  %44 = ptrtoint ptr %irq109 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %irq109, align 8
  br label %err_out_free_desc

if.end129:                                        ; preds = %if.end107
  %call130 = call fastcc i32 @hifn_start_device(ptr noundef nonnull %call7.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call130)
  %tobool131.not = icmp eq i32 %call130, 0
  br i1 %tobool131.not, label %if.end133, label %if.end129.err_out_free_irq_crit_edge

if.end129.err_out_free_irq_crit_edge:             ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_out_free_irq

if.end133:                                        ; preds = %if.end129
  %call134 = call fastcc i32 @hifn_register_rng(ptr noundef nonnull %call7.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call134)
  %tobool135.not = icmp eq i32 %call134, 0
  br i1 %tobool135.not, label %if.end137, label %if.end133.err_out_stop_device_crit_edge

if.end133.err_out_stop_device_crit_edge:          ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_out_stop_device

if.end137:                                        ; preds = %if.end133
  %call138 = call fastcc i32 @hifn_register_alg(ptr noundef nonnull %call7.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call138)
  %tobool139.not = icmp eq i32 %call138, 0
  br i1 %tobool139.not, label %do.body143, label %err_out_unregister_rng

do.body143:                                       ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #16
  %work = getelementptr inbounds %struct.hifn_device, ptr %call7.i.i, i32 0, i32 12
  call void @__init_work(ptr noundef %work, i32 noundef 0) #14
  %45 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 -64, ptr %work, align 8
  %lockdep_map = getelementptr inbounds %struct.hifn_device, ptr %call7.i.i, i32 0, i32 12, i32 0, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.18, ptr noundef nonnull @hifn_probe.__key.17, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #14
  %entry151 = getelementptr inbounds %struct.hifn_device, ptr %call7.i.i, i32 0, i32 12, i32 0, i32 1
  %46 = ptrtoint ptr %entry151 to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile ptr %entry151, ptr %entry151, align 4
  %prev.i298 = getelementptr inbounds %struct.hifn_device, ptr %call7.i.i, i32 0, i32 12, i32 0, i32 1, i32 1
  %47 = ptrtoint ptr %prev.i298 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %entry151, ptr %prev.i298, align 8
  %func = getelementptr inbounds %struct.hifn_device, ptr %call7.i.i, i32 0, i32 12, i32 0, i32 2
  %48 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr @hifn_work, ptr %func, align 4
  %timer = getelementptr inbounds %struct.hifn_device, ptr %call7.i.i, i32 0, i32 12, i32 1
  call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.20, ptr noundef nonnull @hifn_probe.__key.19) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %49 = load ptr, ptr @system_wq, align 4
  %call.i.i299 = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %49, ptr noundef %work, i32 noundef 100) #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hifn_probe.__UNIQUE_ID_ddebug286, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hifn_probe, %if.then169)) #14
          to label %cleanup196 [label %if.then169], !srcloc !211

if.then169:                                       ; preds = %do.body143
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 3
  %50 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %51, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then169.pci_name.exit_crit_edge

if.then169.pci_name.exit_crit_edge:               ; preds = %if.then169
  call void @__sanitizer_cov_trace_pc() #16
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %if.then169
  call void @__sanitizer_cov_trace_pc() #16
  %52 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev1, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %if.then169.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %53, %if.end.i.i ], [ %51, %if.then169.pci_name.exit_crit_edge ]
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hifn_probe.__UNIQUE_ID_ddebug286, ptr noundef %dev1, ptr noundef nonnull @.str.22, ptr noundef %retval.0.i.i, ptr noundef nonnull %call7.i.i) #14
  br label %cleanup196

err_out_unregister_rng:                           ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #16
  %rng.i = getelementptr inbounds %struct.hifn_device, ptr %call7.i.i, i32 0, i32 23
  call void @hwrng_unregister(ptr noundef %rng.i) #14
  br label %err_out_stop_device

err_out_stop_device:                              ; preds = %err_out_unregister_rng, %if.end133.err_out_stop_device_crit_edge
  %err.2 = phi i32 [ %call134, %if.end133.err_out_stop_device_crit_edge ], [ %call138, %err_out_unregister_rng ]
  call fastcc void @hifn_reset_dma(ptr noundef nonnull %call7.i.i)
  call fastcc void @hifn_stop_device(ptr noundef nonnull %call7.i.i)
  br label %err_out_free_irq

err_out_free_irq:                                 ; preds = %err_out_stop_device, %if.end129.err_out_free_irq_crit_edge
  %err.3 = phi i32 [ %call130, %if.end129.err_out_free_irq_crit_edge ], [ %err.2, %err_out_stop_device ]
  %54 = ptrtoint ptr %irq109 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %irq109, align 8
  %call178 = call ptr @free_irq(i32 noundef %55, ptr noundef nonnull %call7.i.i) #14
  call void @tasklet_kill(ptr noundef %tasklet) #14
  br label %err_out_free_desc

err_out_free_desc:                                ; preds = %err_out_free_irq, %do.end125
  %err.4 = phi i32 [ %call.i297, %do.end125 ], [ %err.3, %err_out_free_irq ]
  %56 = ptrtoint ptr %desc_virt to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %desc_virt, align 4
  %58 = ptrtoint ptr %desc_dma to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %desc_dma, align 8
  call void @dma_free_attrs(ptr noundef %dev1, i32 noundef 11056, ptr noundef %57, i32 noundef %59, i32 noundef 0) #14
  br label %err_out_unmap_bars

err_out_unmap_bars:                               ; preds = %err_out_free_desc, %do.end105, %for.cond.1.err_out_unmap_bars_crit_edge, %for.cond.err_out_unmap_bars_crit_edge
  %err.5.ph = phi i32 [ -12, %for.cond.err_out_unmap_bars_crit_edge ], [ -12, %for.cond.1.err_out_unmap_bars_crit_edge ], [ -12, %do.end105 ], [ %err.4, %err_out_free_desc ]
  %60 = ptrtoint ptr %arrayidx91 to i32
  call void @__asan_load4_noabort(i32 %60)
  %.pr = load ptr, ptr %arrayidx91, align 8
  %tobool188.not = icmp eq ptr %.pr, null
  br i1 %tobool188.not, label %err_out_unmap_bars.for.inc193_crit_edge, label %if.then189

err_out_unmap_bars.for.inc193_crit_edge:          ; preds = %err_out_unmap_bars
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc193

if.then189:                                       ; preds = %err_out_unmap_bars
  call void @__sanitizer_cov_trace_pc() #16
  call void @iounmap(ptr noundef nonnull %.pr) #14
  br label %for.inc193

for.inc193:                                       ; preds = %if.then189, %err_out_unmap_bars.for.inc193_crit_edge, %if.end61.for.inc193_crit_edge
  %err.5315 = phi i32 [ %err.5.ph, %err_out_unmap_bars.for.inc193_crit_edge ], [ %err.5.ph, %if.then189 ], [ -12, %if.end61.for.inc193_crit_edge ]
  %arrayidx187.1 = getelementptr %struct.hifn_device, ptr %call7.i.i, i32 0, i32 3, i32 1
  %61 = ptrtoint ptr %arrayidx187.1 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %arrayidx187.1, align 4
  %tobool188.not.1 = icmp eq ptr %62, null
  br i1 %tobool188.not.1, label %for.inc193.for.inc193.1_crit_edge, label %if.then189.1

for.inc193.for.inc193.1_crit_edge:                ; preds = %for.inc193
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc193.1

if.then189.1:                                     ; preds = %for.inc193
  call void @__sanitizer_cov_trace_pc() #16
  call void @iounmap(ptr noundef nonnull %62) #14
  br label %for.inc193.1

for.inc193.1:                                     ; preds = %if.then189.1, %for.inc193.for.inc193.1_crit_edge
  %arrayidx187.2 = getelementptr %struct.hifn_device, ptr %call7.i.i, i32 0, i32 3, i32 2
  %63 = ptrtoint ptr %arrayidx187.2 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %arrayidx187.2, align 8
  %tobool188.not.2 = icmp eq ptr %64, null
  br i1 %tobool188.not.2, label %for.inc193.1.for.inc193.2_crit_edge, label %if.then189.2

for.inc193.1.for.inc193.2_crit_edge:              ; preds = %for.inc193.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc193.2

if.then189.2:                                     ; preds = %for.inc193.1
  call void @__sanitizer_cov_trace_pc() #16
  call void @iounmap(ptr noundef nonnull %64) #14
  br label %for.inc193.2

for.inc193.2:                                     ; preds = %if.then189.2, %for.inc193.1.for.inc193.2_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i.i) #14
  br label %err_out_free_regions

err_out_free_regions:                             ; preds = %for.inc193.2, %if.end57.err_out_free_regions_crit_edge, %do.end
  %err.6 = phi i32 [ -19, %do.end ], [ %err.5315, %for.inc193.2 ], [ -12, %if.end57.err_out_free_regions_crit_edge ]
  call void @pci_release_regions(ptr noundef %pdev) #14
  br label %err_out_disable_pci_device

err_out_disable_pci_device:                       ; preds = %err_out_free_regions, %if.end5.err_out_disable_pci_device_crit_edge, %if.end.err_out_disable_pci_device_crit_edge
  %err.7 = phi i32 [ %call2, %if.end.err_out_disable_pci_device_crit_edge ], [ %call9, %if.end5.err_out_disable_pci_device_crit_edge ], [ %err.6, %err_out_free_regions ]
  call void @pci_disable_device(ptr noundef %pdev) #14
  br label %cleanup196

cleanup196:                                       ; preds = %err_out_disable_pci_device, %pci_name.exit, %do.body143, %entry.cleanup196_crit_edge
  %retval.0 = phi i32 [ %err.7, %err_out_disable_pci_device ], [ %call, %entry.cleanup196_crit_edge ], [ 0, %pci_name.exit ], [ 0, %do.body143 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %name) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hifn_remove(ptr noundef %pdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end8_crit_edge, label %if.then

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end8

if.then:                                          ; preds = %entry
  %work = getelementptr inbounds %struct.hifn_device, ptr %1, i32 0, i32 12
  %call1 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %work) #14
  %rng.i = getelementptr inbounds %struct.hifn_device, ptr %1, i32 0, i32 23
  tail call void @hwrng_unregister(ptr noundef %rng.i) #14
  %alg_list.i = getelementptr inbounds %struct.hifn_device, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %alg_list.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %alg_list.i, align 8
  %cmp.not20.i = icmp eq ptr %3, %alg_list.i
  br i1 %cmp.not20.i, label %if.then.hifn_unregister_alg.exit_crit_edge, label %if.then.for.body.i_crit_edge

if.then.for.body.i_crit_edge:                     ; preds = %if.then
  br label %for.body.i

if.then.hifn_unregister_alg.exit_crit_edge:       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %hifn_unregister_alg.exit

for.body.i:                                       ; preds = %list_del.exit.i.for.body.i_crit_edge, %if.then.for.body.i_crit_edge
  %a.021.i = phi ptr [ %n.0.i, %list_del.exit.i.for.body.i_crit_edge ], [ %3, %if.then.for.body.i_crit_edge ]
  %4 = ptrtoint ptr %a.021.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %n.0.i = load ptr, ptr %a.021.i, align 128
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %a.021.i) #14
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i.list_del.exit.i_crit_edge

for.body.i.list_del.exit.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %a.021.i, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i.i, align 4
  %7 = ptrtoint ptr %a.021.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %a.021.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %for.body.i.list_del.exit.i_crit_edge
  %11 = ptrtoint ptr %a.021.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 256 to ptr), ptr %a.021.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %a.021.i, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %alg.i = getelementptr inbounds %struct.hifn_crypto_alg, ptr %a.021.i, i32 0, i32 2
  tail call void @crypto_unregister_skcipher(ptr noundef %alg.i) #14
  tail call void @kfree(ptr noundef %a.021.i) #14
  %cmp.not.i = icmp eq ptr %n.0.i, %alg_list.i
  br i1 %cmp.not.i, label %list_del.exit.i.hifn_unregister_alg.exit_crit_edge, label %list_del.exit.i.for.body.i_crit_edge

list_del.exit.i.for.body.i_crit_edge:             ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

list_del.exit.i.hifn_unregister_alg.exit_crit_edge: ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %hifn_unregister_alg.exit

hifn_unregister_alg.exit:                         ; preds = %list_del.exit.i.hifn_unregister_alg.exit_crit_edge, %if.then.hifn_unregister_alg.exit_crit_edge
  tail call fastcc void @hifn_reset_dma(ptr noundef nonnull %1)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !212
  tail call void @arm_heavy_mb() #14
  %arrayidx.i.i = getelementptr %struct.hifn_device, ptr %1, i32 0, i32 3, i32 1
  %13 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %14, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 1077952576) #14, !srcloc !213
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !214
  tail call void @arm_heavy_mb() #14
  %bar.i.i = getelementptr %struct.hifn_device, ptr %1, i32 0, i32 3
  %15 = ptrtoint ptr %bar.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bar.i.i, align 8
  %add.ptr.i3.i = getelementptr i8, ptr %16, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3.i, i32 0) #14, !srcloc !213
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !212
  tail call void @arm_heavy_mb() #14
  %17 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i5.i = getelementptr i8, ptr %18, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i, i32 0) #14, !srcloc !213
  %irq = getelementptr inbounds %struct.hifn_device, ptr %1, i32 0, i32 1
  %19 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %irq, align 8
  %call2 = tail call ptr @free_irq(i32 noundef %20, ptr noundef nonnull %1) #14
  %tasklet = getelementptr inbounds %struct.hifn_device, ptr %1, i32 0, i32 17
  tail call void @tasklet_kill(ptr noundef %tasklet) #14
  %desc_virt.i = getelementptr inbounds %struct.hifn_device, ptr %1, i32 0, i32 4
  %21 = ptrtoint ptr %desc_virt.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %desc_virt.i, align 4
  %lock.i.i = getelementptr inbounds %struct.hifn_device, ptr %1, i32 0, i32 8
  %started.i.i = getelementptr inbounds %struct.hifn_device, ptr %1, i32 0, i32 11
  %pdev.i.i = getelementptr inbounds %struct.hifn_device, ptr %1, i32 0, i32 2
  br label %for.body.i29

for.body.i29:                                     ; preds = %if.end.i.for.body.i29_crit_edge, %hifn_unregister_alg.exit
  %i.043.i = phi i32 [ 0, %hifn_unregister_alg.exit ], [ %inc.i, %if.end.i.for.body.i29_crit_edge ]
  %arrayidx1.i = getelementptr %struct.hifn_device, ptr %1, i32 0, i32 7, i32 %i.043.i
  %23 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx1.i, align 4
  %tobool.not.i = icmp eq ptr %24, null
  br i1 %tobool.not.i, label %for.body.i29.if.end.i_crit_edge, label %if.then.i

for.body.i29.if.end.i_crit_edge:                  ; preds = %for.body.i29
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

if.then.i:                                        ; preds = %for.body.i29
  %arrayidx.i = getelementptr %struct.hifn_dma, ptr %22, i32 0, i32 3, i32 %i.043.i
  %25 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %26, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool4.not.i = icmp eq i32 %and.i, 0
  %cond.i = select i1 %tobool4.not.i, i32 0, i32 -19
  tail call fastcc void @hifn_process_ready(ptr noundef nonnull %24, i32 noundef %cond.i) #14
  %call2.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i) #14
  %27 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %arrayidx1.i, align 4
  %28 = ptrtoint ptr %started.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %started.i.i, align 4
  %dec.i.i = add i32 %29, -1
  store i32 %dec.i.i, ptr %started.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i)
  %cmp6.i.i = icmp slt i32 %dec.i.i, 0
  br i1 %cmp6.i.i, label %do.end10.i.i, label %if.then.i.if.end.i.i_crit_edge

if.then.i.if.end.i.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i

do.end10.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  %30 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pdev.i.i, align 4
  %dev11.i.i = getelementptr inbounds %struct.pci_dev, ptr %31, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev11.i.i, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31, i32 noundef %dec.i.i) #17
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.end10.i.i, %if.then.i.if.end.i.i_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i, i32 noundef %call2.i.i) #14
  %32 = ptrtoint ptr %started.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %started.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp16.i.i = icmp slt i32 %33, 0
  br i1 %cmp16.i.i, label %do.body20.i.i, label %if.end.i.i.if.end.i_crit_edge, !prof !215

if.end.i.i.if.end.i_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

do.body20.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/crypto/hifn_795x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1663, 0\0A.popsection", ""() #14, !srcloc !216
  unreachable

if.end.i:                                         ; preds = %if.end.i.i.if.end.i_crit_edge, %for.body.i29.if.end.i_crit_edge
  %inc.i = add nuw nsw i32 %i.043.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 24
  br i1 %exitcond.not.i, label %do.body5.i, label %if.end.i.for.body.i29_crit_edge

if.end.i.for.body.i29_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i29

do.body5.i:                                       ; preds = %if.end.i
  %call7.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i) #14
  %queue.i = getelementptr inbounds %struct.hifn_device, ptr %1, i32 0, i32 18
  %call1045.i = tail call ptr @crypto_dequeue_request(ptr noundef %queue.i) #14
  %tobool11.not46.i = icmp eq ptr %call1045.i, null
  br i1 %tobool11.not46.i, label %do.body5.i.hifn_flush.exit_crit_edge, label %do.body5.i.while.body.i_crit_edge

do.body5.i.while.body.i_crit_edge:                ; preds = %do.body5.i
  br label %while.body.i

do.body5.i.hifn_flush.exit_crit_edge:             ; preds = %do.body5.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %hifn_flush.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %do.body5.i.while.body.i_crit_edge
  %call1048.i = phi ptr [ %call10.i, %while.body.i.while.body.i_crit_edge ], [ %call1045.i, %do.body5.i.while.body.i_crit_edge ]
  %flags.047.i = phi i32 [ %call23.i, %while.body.i.while.body.i_crit_edge ], [ %call7.i, %do.body5.i.while.body.i_crit_edge ]
  %add.ptr.i.i30 = getelementptr i8, ptr %call1048.i, i32 -16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i, i32 noundef %flags.047.i) #14
  tail call fastcc void @hifn_process_ready(ptr noundef %add.ptr.i.i30, i32 noundef -19) #14
  %call23.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i) #14
  %call10.i = tail call ptr @crypto_dequeue_request(ptr noundef %queue.i) #14
  %tobool11.not.i = icmp eq ptr %call10.i, null
  br i1 %tobool11.not.i, label %while.body.i.hifn_flush.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i

while.body.i.hifn_flush.exit_crit_edge:           ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %hifn_flush.exit

hifn_flush.exit:                                  ; preds = %while.body.i.hifn_flush.exit_crit_edge, %do.body5.i.hifn_flush.exit_crit_edge
  %flags.0.lcssa.i = phi i32 [ %call7.i, %do.body5.i.hifn_flush.exit_crit_edge ], [ %call23.i, %while.body.i.hifn_flush.exit_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i, i32 noundef %flags.0.lcssa.i) #14
  %dev3 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %34 = ptrtoint ptr %desc_virt.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %desc_virt.i, align 4
  %desc_dma = getelementptr inbounds %struct.hifn_device, ptr %1, i32 0, i32 5
  %36 = ptrtoint ptr %desc_dma to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %desc_dma, align 8
  tail call void @dma_free_attrs(ptr noundef %dev3, i32 noundef 11056, ptr noundef %35, i32 noundef %37, i32 noundef 0) #14
  %38 = ptrtoint ptr %bar.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %bar.i.i, align 4
  %tobool4.not = icmp eq ptr %39, null
  br i1 %tobool4.not, label %hifn_flush.exit.for.inc_crit_edge, label %if.then5

hifn_flush.exit.for.inc_crit_edge:                ; preds = %hifn_flush.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.then5:                                         ; preds = %hifn_flush.exit
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @iounmap(ptr noundef nonnull %39) #14
  br label %for.inc

for.inc:                                          ; preds = %if.then5, %hifn_flush.exit.for.inc_crit_edge
  %40 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool4.not.1 = icmp eq ptr %41, null
  br i1 %tobool4.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then5.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.1

if.then5.1:                                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @iounmap(ptr noundef nonnull %41) #14
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then5.1, %for.inc.for.inc.1_crit_edge
  %arrayidx.2 = getelementptr %struct.hifn_device, ptr %1, i32 0, i32 3, i32 2
  %42 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx.2, align 4
  %tobool4.not.2 = icmp eq ptr %43, null
  br i1 %tobool4.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then5.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.2

if.then5.2:                                       ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @iounmap(ptr noundef nonnull %43) #14
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then5.2, %for.inc.1.for.inc.2_crit_edge
  tail call void @kfree(ptr noundef nonnull %1) #14
  br label %if.end8

if.end8:                                          ; preds = %for.inc.2, %entry.if.end8_crit_edge
  tail call void @pci_release_regions(ptr noundef %pdev) #14
  tail call void @pci_disable_device(ptr noundef %pdev) #14
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_regions(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hifn_tasklet_callback(i32 noundef %data) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %data to ptr
  tail call fastcc void @hifn_clear_rings(ptr noundef %0)
  %started = getelementptr inbounds %struct.hifn_device, ptr %0, i32 0, i32 11
  %1 = ptrtoint ptr %started to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %started, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %2)
  %cmp = icmp slt i32 %2, 23
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %qlen = getelementptr inbounds %struct.hifn_device, ptr %0, i32 0, i32 18, i32 2
  %3 = ptrtoint ptr %qlen to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %qlen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  %lock.i = getelementptr inbounds %struct.hifn_device, ptr %0, i32 0, i32 8
  %queue.i = getelementptr inbounds %struct.hifn_device, ptr %0, i32 0, i32 18
  %backlog.i.i = getelementptr inbounds %struct.hifn_device, ptr %0, i32 0, i32 18, i32 1
  br label %while.cond.i

while.cond.i:                                     ; preds = %if.end12.i.while.cond.i_crit_edge, %if.then
  %5 = ptrtoint ptr %started to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %started, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %6)
  %cmp.i = icmp slt i32 %6, 23
  br i1 %cmp.i, label %do.body1.i, label %while.cond.i.if.end_crit_edge

while.cond.i.if.end_crit_edge:                    ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

do.body1.i:                                       ; preds = %while.cond.i
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #14
  %7 = ptrtoint ptr %backlog.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %backlog.i.i, align 4
  %cmp.i.i = icmp eq ptr %8, %queue.i
  %spec.select.i.i = select i1 %cmp.i.i, ptr null, ptr %8
  %call8.i = tail call ptr @crypto_dequeue_request(ptr noundef %queue.i) #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call3.i) #14
  %tobool.not.i = icmp eq ptr %call8.i, null
  br i1 %tobool.not.i, label %do.body1.i.if.end_crit_edge, label %if.end.i

do.body1.i.if.end_crit_edge:                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.end.i:                                         ; preds = %do.body1.i
  %tobool10.not.i = icmp eq ptr %spec.select.i.i, null
  br i1 %tobool10.not.i, label %if.end.i.if.end12.i_crit_edge, label %if.then11.i

if.end.i.if.end12.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end12.i

if.then11.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %complete.i = getelementptr inbounds %struct.crypto_async_request, ptr %spec.select.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %complete.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %complete.i, align 4
  tail call void %10(ptr noundef nonnull %spec.select.i.i, i32 noundef -115) #14
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.then11.i, %if.end.i.if.end12.i_crit_edge
  %add.ptr.i.i = getelementptr i8, ptr %call8.i, i32 -16
  %call14.i = tail call fastcc i32 @hifn_handle_req(ptr noundef %add.ptr.i.i) #14
  %tobool15.not.i = icmp eq i32 %call14.i, 0
  br i1 %tobool15.not.i, label %if.end12.i.while.cond.i_crit_edge, label %if.end12.i.if.end_crit_edge

if.end12.i.if.end_crit_edge:                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.end12.i.while.cond.i_crit_edge:                ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond.i

if.end:                                           ; preds = %if.end12.i.if.end_crit_edge, %do.body1.i.if.end_crit_edge, %while.cond.i.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_init_queue(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hifn_interrupt(i32 noundef %irq, ptr noundef %data) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %desc_virt = getelementptr inbounds %struct.hifn_device, ptr %data, i32 0, i32 4
  %0 = ptrtoint ptr %desc_virt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %desc_virt, align 4
  %arrayidx.i = getelementptr %struct.hifn_device, ptr %data, i32 0, i32 3, i32 1
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 64
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #14, !srcloc !217
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !218
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hifn_interrupt.__UNIQUE_ID_ddebug284, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hifn_interrupt, %if.then)) #14
          to label %do.end [label %if.then], !srcloc !211

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %pdev = getelementptr inbounds %struct.hifn_device, ptr %data, i32 0, i32 2
  %6 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdev, align 4
  %dev4 = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  %dmareg = getelementptr inbounds %struct.hifn_device, ptr %data, i32 0, i32 6
  %8 = ptrtoint ptr %dmareg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dmareg, align 4
  %and = and i32 %9, %5
  %cmdi = getelementptr inbounds %struct.hifn_dma, ptr %1, i32 0, i32 6
  %10 = ptrtoint ptr %cmdi to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %cmdi, align 4
  %12 = load volatile i32, ptr %cmdi, align 4
  %srci = getelementptr inbounds %struct.hifn_dma, ptr %1, i32 0, i32 7
  %13 = ptrtoint ptr %srci to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %srci, align 4
  %dsti = getelementptr inbounds %struct.hifn_dma, ptr %1, i32 0, i32 8
  %15 = ptrtoint ptr %dsti to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %dsti, align 4
  %resi = getelementptr inbounds %struct.hifn_dma, ptr %1, i32 0, i32 9
  %17 = ptrtoint ptr %resi to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %resi, align 4
  %cmdu = getelementptr inbounds %struct.hifn_dma, ptr %1, i32 0, i32 10
  %19 = ptrtoint ptr %cmdu to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %cmdu, align 4
  %srcu = getelementptr inbounds %struct.hifn_dma, ptr %1, i32 0, i32 11
  %21 = ptrtoint ptr %srcu to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %srcu, align 4
  %dstu = getelementptr inbounds %struct.hifn_dma, ptr %1, i32 0, i32 12
  %23 = ptrtoint ptr %dstu to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %dstu, align 4
  %resu = getelementptr inbounds %struct.hifn_dma, ptr %1, i32 0, i32 13
  %25 = ptrtoint ptr %resu to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %resu, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hifn_interrupt.__UNIQUE_ID_ddebug284, ptr noundef %dev4, ptr noundef nonnull @.str.45, i32 noundef %5, i32 noundef %9, i32 noundef %and, i32 noundef %11, i32 noundef %12, i32 noundef %14, i32 noundef %16, i32 noundef %18, i32 noundef %20, i32 noundef %22, i32 noundef %24, i32 noundef %26) #14
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %dmareg7 = getelementptr inbounds %struct.hifn_device, ptr %data, i32 0, i32 6
  %27 = ptrtoint ptr %dmareg7 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %dmareg7, align 4
  %and8 = and i32 %28, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %cmp = icmp eq i32 %and8, 0
  br i1 %cmp, label %do.end.cleanup_crit_edge, label %if.end10

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end10:                                         ; preds = %do.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !212
  tail call void @arm_heavy_mb() #14
  %29 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i174 = getelementptr i8, ptr %30, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i174, i32 %and8) #14, !srcloc !213
  %and13 = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.end10.if.end17_crit_edge, label %if.then15

if.end10.if.end17_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end17

if.then15:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  %bar.i = getelementptr inbounds %struct.hifn_device, ptr %data, i32 0, i32 3
  %31 = ptrtoint ptr %bar.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %bar.i, align 8
  %add.ptr.i175 = getelementptr i8, ptr %32, i32 8
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i175) #14, !srcloc !217
  %34 = tail call i32 @llvm.bswap.i32(i32 %33) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !219
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !214
  tail call void @arm_heavy_mb() #14
  %35 = ptrtoint ptr %bar.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %bar.i, align 8
  %add.ptr.i177 = getelementptr i8, ptr %36, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i177, i32 %34) #14, !srcloc !213
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %if.end10.if.end17_crit_edge
  %and18 = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %if.end17.if.end22_crit_edge, label %if.then20

if.end17.if.end22_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end22

if.then20:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #16
  %37 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i179 = getelementptr i8, ptr %38, i32 780
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i179) #14, !srcloc !217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !218
  %40 = or i32 %39, 16777216
  %41 = tail call i32 @llvm.bswap.i32(i32 %40)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !212
  tail call void @arm_heavy_mb() #14
  %42 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i181 = getelementptr i8, ptr %43, i32 780
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i181, i32 %41) #14, !srcloc !213
  br label %if.end22

if.end22:                                         ; preds = %if.then20, %if.end17.if.end22_crit_edge
  %and23 = and i32 %5, 33685504
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %if.end22.if.end55_crit_edge, label %if.then25

if.end22.if.end55_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end55

if.then25:                                        ; preds = %if.end22
  %bar.i182 = getelementptr inbounds %struct.hifn_device, ptr %data, i32 0, i32 3
  %44 = ptrtoint ptr %bar.i182 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %bar.i182, align 8
  %add.ptr.i183 = getelementptr i8, ptr %45, i32 8
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i183) #14, !srcloc !217
  %47 = tail call i32 @llvm.bswap.i32(i32 %46) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !219
  %pdev30 = getelementptr inbounds %struct.hifn_device, ptr %data, i32 0, i32 2
  %48 = ptrtoint ptr %pdev30 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %pdev30, align 4
  %dev31 = getelementptr inbounds %struct.pci_dev, ptr %49, i32 0, i32 44
  %and32 = lshr i32 %5, 17
  %and32.lobit = and i32 %and32, 1
  %and38 = lshr i32 %5, 25
  %and38.lobit = and i32 %and38, 1
  %and44 = and i32 %47, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44)
  %tobool45.not = icmp eq i32 %and44, 0
  %and44.lobit = lshr exact i32 %and44, 9
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev31, ptr noundef nonnull @.str.46, i32 noundef %and32.lobit, i32 noundef %and38.lobit, i32 noundef %47, i32 noundef %and44.lobit) #17
  br i1 %tobool45.not, label %if.then25.if.end53_crit_edge, label %if.then52

if.then25.if.end53_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end53

if.then52:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !214
  tail call void @arm_heavy_mb() #14
  %50 = ptrtoint ptr %bar.i182 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %bar.i182, align 8
  %add.ptr.i185 = getelementptr i8, ptr %51, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i185, i32 512) #14, !srcloc !213
  br label %if.end53

if.end53:                                         ; preds = %if.then52, %if.then25.if.end53_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !212
  tail call void @arm_heavy_mb() #14
  %52 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i187 = getelementptr i8, ptr %53, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i187, i32 %and23) #14, !srcloc !213
  br label %if.end55

if.end55:                                         ; preds = %if.end53, %if.end22.if.end55_crit_edge
  %and56 = and i32 %5, 538976288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56)
  %tobool57.not = icmp eq i32 %and56, 0
  br i1 %tobool57.not, label %if.end55.if.end88_crit_edge, label %do.end61

if.end55.if.end88_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end88

do.end61:                                         ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #16
  %pdev62 = getelementptr inbounds %struct.hifn_device, ptr %data, i32 0, i32 2
  %54 = ptrtoint ptr %pdev62 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %pdev62, align 4
  %dev63 = getelementptr inbounds %struct.pci_dev, ptr %55, i32 0, i32 44
  %and64 = lshr i32 %5, 5
  %and64.lobit = and i32 %and64, 1
  %and70 = lshr i32 %5, 13
  %and70.lobit = and i32 %and70, 1
  %and76 = lshr i32 %5, 29
  %and76.lobit = and i32 %and76, 1
  %and82 = lshr i32 %5, 21
  %and82.lobit = and i32 %and82, 1
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev63, ptr noundef nonnull @.str.49, i32 noundef %and64.lobit, i32 noundef %and70.lobit, i32 noundef %and76.lobit, i32 noundef %and82.lobit) #17
  tail call fastcc void @hifn_reset_dma(ptr noundef %data)
  tail call fastcc void @hifn_init_dma(ptr noundef %data)
  tail call fastcc void @hifn_init_registers(ptr noundef %data)
  br label %if.end88

if.end88:                                         ; preds = %do.end61, %if.end55.if.end88_crit_edge
  %and89 = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and89)
  %tobool90.not = icmp eq i32 %and89, 0
  br i1 %tobool90.not, label %if.end88.if.end115_crit_edge, label %land.lhs.true

if.end88.if.end115_crit_edge:                     ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end115

land.lhs.true:                                    ; preds = %if.end88
  %cmdu91 = getelementptr inbounds %struct.hifn_dma, ptr %1, i32 0, i32 10
  %56 = ptrtoint ptr %cmdu91 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %cmdu91, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %cmp92 = icmp eq i32 %57, 0
  br i1 %cmp92, label %do.body94, label %land.lhs.true.if.end115_crit_edge

land.lhs.true.if.end115_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end115

do.body94:                                        ; preds = %land.lhs.true
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hifn_interrupt.__UNIQUE_ID_ddebug285, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hifn_interrupt, %if.then106)) #14
          to label %do.end111 [label %if.then106], !srcloc !211

if.then106:                                       ; preds = %do.body94
  call void @__sanitizer_cov_trace_pc() #16
  %pdev107 = getelementptr inbounds %struct.hifn_device, ptr %data, i32 0, i32 2
  %58 = ptrtoint ptr %pdev107 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %pdev107, align 4
  %dev108 = getelementptr inbounds %struct.pci_dev, ptr %59, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hifn_interrupt.__UNIQUE_ID_ddebug285, ptr noundef %dev108, ptr noundef nonnull @.str.51) #14
  br label %do.end111

do.end111:                                        ; preds = %if.then106, %do.body94
  %60 = ptrtoint ptr %dmareg7 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %dmareg7, align 4
  %and113 = and i32 %61, -5
  store i32 %and113, ptr %dmareg7, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !212
  tail call void @arm_heavy_mb() #14
  %62 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i189 = getelementptr i8, ptr %63, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i189, i32 %and113) #14, !srcloc !213
  br label %if.end115

if.end115:                                        ; preds = %do.end111, %land.lhs.true.if.end115_crit_edge, %if.end88.if.end115_crit_edge
  %state.i = getelementptr inbounds %struct.hifn_device, ptr %data, i32 0, i32 17, i32 1
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end115.cleanup_crit_edge

if.end115.cleanup_crit_edge:                      ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then.i:                                        ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #16
  %tasklet = getelementptr inbounds %struct.hifn_device, ptr %data, i32 0, i32 17
  tail call void @__tasklet_schedule(ptr noundef %tasklet) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.end115.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end.cleanup_crit_edge ], [ 1, %if.end115.cleanup_crit_edge ], [ 1, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hifn_start_device(ptr noundef %dev) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %active = getelementptr inbounds %struct.hifn_device, ptr %dev, i32 0, i32 10
  %0 = ptrtoint ptr %active to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %active, align 8
  %started = getelementptr inbounds %struct.hifn_device, ptr %dev, i32 0, i32 11
  %1 = ptrtoint ptr %started to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %started, align 4
  tail call fastcc void @hifn_reset_dma(ptr noundef %dev)
  %call = tail call fastcc i32 @hifn_enable_crypto(ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !214
  tail call void @arm_heavy_mb() #14
  %bar.i.i = getelementptr inbounds %struct.hifn_device, ptr %dev, i32 0, i32 3
  %2 = ptrtoint ptr %bar.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bar.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 2) #14, !srcloc !213
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end.i.i.for.body.i.i_crit_edge, %if.end
  %i.010.i.i = phi i32 [ 10000, %if.end ], [ %dec.i.i, %if.end.i.i.for.body.i.i_crit_edge ]
  %4 = ptrtoint ptr %bar.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bar.i.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %5, i32 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #14, !srcloc !217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !219
  %7 = and i32 %6, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i.i, label %for.body.i.i.hifn_reset_puc.exit_crit_edge, label %if.end.i.i

for.body.i.i.hifn_reset_puc.exit_crit_edge:       ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %hifn_reset_puc.exit

if.end.i.i:                                       ; preds = %for.body.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 214748) #14
  %dec.i.i = add nsw i32 %i.010.i.i, -1
  %cmp.i.i = icmp ugt i32 %i.010.i.i, 1
  br i1 %cmp.i.i, label %if.end.i.i.for.body.i.i_crit_edge, label %do.end.i.i

if.end.i.i.for.body.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i

do.end.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %pdev.i.i = getelementptr inbounds %struct.hifn_device, ptr %dev, i32 0, i32 2
  %9 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pdev.i.i, align 4
  %dev3.i.i = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3.i.i, ptr noundef nonnull @.str.58) #17
  br label %hifn_reset_puc.exit

hifn_reset_puc.exit:                              ; preds = %do.end.i.i, %for.body.i.i.hifn_reset_puc.exit_crit_edge
  tail call fastcc void @hifn_init_dma(ptr noundef %dev)
  tail call fastcc void @hifn_init_registers(ptr noundef %dev)
  tail call fastcc void @hifn_init_pubrng(ptr noundef %dev)
  br label %cleanup

cleanup:                                          ; preds = %hifn_reset_puc.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %hifn_reset_puc.exit ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hifn_register_rng(ptr noundef %dev) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %pk_clk_freq = getelementptr inbounds %struct.hifn_device, ptr %dev, i32 0, i32 20
  %0 = ptrtoint ptr %pk_clk_freq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pk_clk_freq, align 8
  %conv = zext i32 %1 to i64
  %sub = add nuw nsw i64 %conv, 999999999
  call void @__sanitizer_cov_trace_const_cmp4(i32 -999999999, i32 %1)
  %cmp169 = icmp ult i32 %1, -999999999
  br i1 %cmp169, label %if.then173, label %if.else179, !prof !220

if.then173:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %conv174 = trunc i64 %sub to i32
  %div177 = udiv i32 %conv174, %1
  br label %if.end183

if.else179:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %2 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %1, i64 %sub) #20, !srcloc !221
  %asmresult1.i = extractvalue { i64, i64 } %2, 1
  %extract.t307 = trunc i64 %asmresult1.i to i32
  br label %if.end183

if.end183:                                        ; preds = %if.else179, %if.then173
  %_tmp.0.off0 = phi i32 [ %div177, %if.then173 ], [ %extract.t307, %if.else179 ]
  %conv187 = shl i32 %_tmp.0.off0, 8
  %rng_wait_time = getelementptr inbounds %struct.hifn_device, ptr %dev, i32 0, i32 21
  %3 = ptrtoint ptr %rng_wait_time to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %conv187, ptr %rng_wait_time, align 4
  %rng = getelementptr inbounds %struct.hifn_device, ptr %dev, i32 0, i32 23
  %4 = ptrtoint ptr %rng to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %dev, ptr %rng, align 8
  %data_present = getelementptr inbounds %struct.hifn_device, ptr %dev, i32 0, i32 23, i32 3
  %5 = ptrtoint ptr %data_present to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @hifn_rng_data_present, ptr %data_present, align 4
  %data_read = getelementptr inbounds %struct.hifn_device, ptr %dev, i32 0, i32 23, i32 4
  %6 = ptrtoint ptr %data_read to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @hifn_rng_data_read, ptr %data_read, align 8
  %7 = ptrtoint ptr %dev to i32
  %priv = getelementptr inbounds %struct.hifn_device, ptr %dev, i32 0, i32 23, i32 6
  %8 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %priv, align 8
  %call193 = tail call i32 @hwrng_register(ptr noundef %rng) #14
  ret i32 %call193
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hifn_register_alg(ptr noundef %dev) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %alg_list.i = getelementptr inbounds %struct.hifn_device, ptr %dev, i32 0, i32 19
  %prev.i.i = getelementptr inbounds %struct.hifn_device, ptr %dev, i32 0, i32 19, i32 1
  br label %for.body

for.cond:                                         ; preds = %list_add_tail.exit.i
  %inc = add nuw nsw i32 %i.019, 1
  %exitcond.not = icmp eq i32 %inc, 12
  br i1 %exitcond.not, label %for.cond.cleanup_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %entry
  %i.019 = phi i32 [ 0, %entry ], [ %inc, %for.cond.for.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 896) #19
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %for.body.err_out_exit_crit_edge, label %if.end.i

for.body.err_out_exit_crit_edge:                  ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_out_exit

if.end.i:                                         ; preds = %for.body
  %arrayidx = getelementptr [12 x %struct.hifn_alg_template], ptr @hifn_alg_templates, i32 0, i32 %i.019
  %alg1.i = getelementptr inbounds %struct.hifn_crypto_alg, ptr %call7.i.i.i, i32 0, i32 2
  %skcipher.i = getelementptr [12 x %struct.hifn_alg_template], ptr @hifn_alg_templates, i32 0, i32 %i.019, i32 4
  %1 = call ptr @memcpy(ptr %alg1.i, ptr %skcipher.i, i32 640)
  %init.i = getelementptr inbounds %struct.hifn_crypto_alg, ptr %call7.i.i.i, i32 0, i32 2, i32 3
  %2 = ptrtoint ptr %init.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @hifn_init_tfm, ptr %init.i, align 4
  %cra_name.i = getelementptr inbounds %struct.hifn_crypto_alg, ptr %call7.i.i.i, i32 0, i32 2, i32 11, i32 8
  %call5.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %cra_name.i, i32 noundef 128, ptr noundef nonnull @.str.9, ptr noundef %arrayidx) #14
  %cra_driver_name.i = getelementptr inbounds %struct.hifn_crypto_alg, ptr %call7.i.i.i, i32 0, i32 2, i32 11, i32 9
  %drv_name.i = getelementptr [12 x %struct.hifn_alg_template], ptr @hifn_alg_templates, i32 0, i32 %i.019, i32 1
  %call12.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %cra_driver_name.i, i32 noundef 128, ptr noundef nonnull @.str.64, ptr noundef %drv_name.i, ptr noundef %dev) #14
  %cra_priority.i = getelementptr inbounds %struct.hifn_crypto_alg, ptr %call7.i.i.i, i32 0, i32 2, i32 11, i32 6
  %3 = ptrtoint ptr %cra_priority.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 300, ptr %cra_priority.i, align 32
  %cra_flags.i = getelementptr inbounds %struct.hifn_crypto_alg, ptr %call7.i.i.i, i32 0, i32 2, i32 11, i32 2
  %4 = ptrtoint ptr %cra_flags.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 4224, ptr %cra_flags.i, align 16
  %bsize.i = getelementptr [12 x %struct.hifn_alg_template], ptr @hifn_alg_templates, i32 0, i32 %i.019, i32 2
  %5 = ptrtoint ptr %bsize.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %bsize.i, align 128
  %cra_blocksize.i = getelementptr inbounds %struct.hifn_crypto_alg, ptr %call7.i.i.i, i32 0, i32 2, i32 11, i32 3
  %7 = ptrtoint ptr %cra_blocksize.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %cra_blocksize.i, align 4
  %cra_ctxsize.i = getelementptr inbounds %struct.hifn_crypto_alg, ptr %call7.i.i.i, i32 0, i32 2, i32 11, i32 4
  %8 = ptrtoint ptr %cra_ctxsize.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 40, ptr %cra_ctxsize.i, align 8
  %cra_alignmask.i = getelementptr inbounds %struct.hifn_crypto_alg, ptr %call7.i.i.i, i32 0, i32 2, i32 11, i32 5
  %9 = ptrtoint ptr %cra_alignmask.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %cra_alignmask.i, align 4
  %cra_module.i = getelementptr inbounds %struct.hifn_crypto_alg, ptr %call7.i.i.i, i32 0, i32 2, i32 11, i32 15
  %10 = ptrtoint ptr %cra_module.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %cra_module.i, align 4
  %dev25.i = getelementptr inbounds %struct.hifn_crypto_alg, ptr %call7.i.i.i, i32 0, i32 3
  %11 = ptrtoint ptr %dev25.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %dev, ptr %dev25.i, align 128
  %12 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i, ptr noundef %13, ptr noundef %alg_list.i) #14
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.list_add_tail.exit.i_crit_edge

if.end.i.list_add_tail.exit.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %14 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call7.i.i.i, ptr %prev.i.i, align 4
  %15 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %alg_list.i, ptr %call7.i.i.i, align 8
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %prev3.i.i.i, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %call7.i.i.i, ptr %13, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %if.end.i.list_add_tail.exit.i_crit_edge
  %call28.i = tail call i32 @crypto_register_skcipher(ptr noundef %alg1.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i)
  %tobool29.not.i = icmp eq i32 %call28.i, 0
  br i1 %tobool29.not.i, label %for.cond, label %if.then30.i

if.then30.i:                                      ; preds = %list_add_tail.exit.i
  %call.i.i55.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %call7.i.i.i) #14
  br i1 %call.i.i55.i, label %if.end.i.i56.i, label %if.then30.i.list_del.exit.i_crit_edge

if.then30.i.list_del.exit.i_crit_edge:            ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del.exit.i

if.end.i.i56.i:                                   ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i, i32 0, i32 1
  %18 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %prev.i.i.i, align 4
  %20 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %call7.i.i.i, align 8
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %19, ptr %prev1.i.i.i.i, align 4
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %21, ptr %19, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i56.i, %if.then30.i.list_del.exit.i_crit_edge
  %24 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr inttoptr (i32 256 to ptr), ptr %call7.i.i.i, align 8
  %prev.i57.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i, i32 0, i32 1
  %25 = ptrtoint ptr %prev.i57.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i57.i, align 4
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #14
  br label %err_out_exit

err_out_exit:                                     ; preds = %list_del.exit.i, %for.body.err_out_exit_crit_edge
  %retval.0.i.ph = phi i32 [ %call28.i, %list_del.exit.i ], [ -12, %for.body.err_out_exit_crit_edge ]
  %26 = ptrtoint ptr %alg_list.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %alg_list.i, align 8
  %cmp.not20.i = icmp eq ptr %27, %alg_list.i
  br i1 %cmp.not20.i, label %err_out_exit.cleanup_crit_edge, label %err_out_exit.for.body.i_crit_edge

err_out_exit.for.body.i_crit_edge:                ; preds = %err_out_exit
  br label %for.body.i

err_out_exit.cleanup_crit_edge:                   ; preds = %err_out_exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.body.i:                                       ; preds = %list_del.exit.i12.for.body.i_crit_edge, %err_out_exit.for.body.i_crit_edge
  %a.021.i = phi ptr [ %n.0.i, %list_del.exit.i12.for.body.i_crit_edge ], [ %27, %err_out_exit.for.body.i_crit_edge ]
  %28 = ptrtoint ptr %a.021.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %n.0.i = load ptr, ptr %a.021.i, align 128
  %call.i.i.i7 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %a.021.i) #14
  br i1 %call.i.i.i7, label %if.end.i.i.i10, label %for.body.i.list_del.exit.i12_crit_edge

for.body.i.list_del.exit.i12_crit_edge:           ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del.exit.i12

if.end.i.i.i10:                                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i.i8 = getelementptr inbounds %struct.list_head, ptr %a.021.i, i32 0, i32 1
  %29 = ptrtoint ptr %prev.i.i.i8 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %prev.i.i.i8, align 4
  %31 = ptrtoint ptr %a.021.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %a.021.i, align 4
  %prev1.i.i.i.i9 = getelementptr inbounds %struct.list_head, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %prev1.i.i.i.i9 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %30, ptr %prev1.i.i.i.i9, align 4
  %34 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %32, ptr %30, align 4
  br label %list_del.exit.i12

list_del.exit.i12:                                ; preds = %if.end.i.i.i10, %for.body.i.list_del.exit.i12_crit_edge
  %35 = ptrtoint ptr %a.021.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr inttoptr (i32 256 to ptr), ptr %a.021.i, align 4
  %prev.i.i11 = getelementptr inbounds %struct.list_head, ptr %a.021.i, i32 0, i32 1
  %36 = ptrtoint ptr %prev.i.i11 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i11, align 4
  %alg.i = getelementptr inbounds %struct.hifn_crypto_alg, ptr %a.021.i, i32 0, i32 2
  tail call void @crypto_unregister_skcipher(ptr noundef %alg.i) #14
  tail call void @kfree(ptr noundef %a.021.i) #14
  %cmp.not.i = icmp eq ptr %n.0.i, %alg_list.i
  br i1 %cmp.not.i, label %list_del.exit.i12.cleanup_crit_edge, label %list_del.exit.i12.for.body.i_crit_edge

list_del.exit.i12.for.body.i_crit_edge:           ; preds = %list_del.exit.i12
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

list_del.exit.i12.cleanup_crit_edge:              ; preds = %list_del.exit.i12
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

cleanup:                                          ; preds = %list_del.exit.i12.cleanup_crit_edge, %err_out_exit.cleanup_crit_edge, %for.cond.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i.ph, %err_out_exit.cleanup_crit_edge ], [ %retval.0.i.ph, %list_del.exit.i12.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hifn_work(ptr noundef %work) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -216
  %lock = getelementptr i8, ptr %work, i32 -56
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #14
  %active = getelementptr i8, ptr %work, i32 -8
  %0 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %active, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp7 = icmp eq i32 %1, 0
  br i1 %cmp7, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %desc_virt = getelementptr i8, ptr %work, i32 -164
  %2 = ptrtoint ptr %desc_virt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %desc_virt, align 4
  %cmdu = getelementptr inbounds %struct.hifn_dma, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %cmdu to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %cmdu, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp9 = icmp eq i32 %5, 0
  br i1 %cmp9, label %land.lhs.true, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true:                                    ; preds = %if.then
  %flags11 = getelementptr i8, ptr %work, i32 -12
  %6 = ptrtoint ptr %flags11 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags11, align 4
  %and = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.lhs.true.if.end_crit_edge, label %if.then12

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then12:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  %and14 = and i32 %7, -2
  %8 = ptrtoint ptr %flags11 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %and14, ptr %flags11, align 4
  br label %if.end

if.end:                                           ; preds = %if.then12, %land.lhs.true.if.end_crit_edge, %if.then.if.end_crit_edge
  %r.0 = phi i32 [ 64, %if.then12 ], [ 0, %land.lhs.true.if.end_crit_edge ], [ 0, %if.then.if.end_crit_edge ]
  %srcu = getelementptr inbounds %struct.hifn_dma, ptr %3, i32 0, i32 11
  %9 = ptrtoint ptr %srcu to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %srcu, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp15 = icmp eq i32 %10, 0
  br i1 %cmp15, label %land.lhs.true17, label %if.end.if.end25_crit_edge

if.end.if.end25_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end25

land.lhs.true17:                                  ; preds = %if.end
  %flags18 = getelementptr i8, ptr %work, i32 -12
  %11 = ptrtoint ptr %flags18 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags18, align 4
  %and19 = and i32 %12, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %land.lhs.true17.if.end25_crit_edge, label %if.then21

land.lhs.true17.if.end25_crit_edge:               ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end25

if.then21:                                        ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #16
  %and23 = and i32 %12, -3
  %13 = ptrtoint ptr %flags18 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %and23, ptr %flags18, align 4
  %or24 = or i32 %r.0, 16384
  br label %if.end25

if.end25:                                         ; preds = %if.then21, %land.lhs.true17.if.end25_crit_edge, %if.end.if.end25_crit_edge
  %r.1 = phi i32 [ %or24, %if.then21 ], [ %r.0, %land.lhs.true17.if.end25_crit_edge ], [ %r.0, %if.end.if.end25_crit_edge ]
  %dstu = getelementptr inbounds %struct.hifn_dma, ptr %3, i32 0, i32 12
  %14 = ptrtoint ptr %dstu to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %dstu, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp26 = icmp eq i32 %15, 0
  br i1 %cmp26, label %land.lhs.true28, label %if.end25.if.end36_crit_edge

if.end25.if.end36_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end36

land.lhs.true28:                                  ; preds = %if.end25
  %flags29 = getelementptr i8, ptr %work, i32 -12
  %16 = ptrtoint ptr %flags29 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flags29, align 4
  %and30 = and i32 %17, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  br i1 %tobool31.not, label %land.lhs.true28.if.end36_crit_edge, label %if.then32

land.lhs.true28.if.end36_crit_edge:               ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end36

if.then32:                                        ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #16
  %and34 = and i32 %17, -5
  %18 = ptrtoint ptr %flags29 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %and34, ptr %flags29, align 4
  %or35 = or i32 %r.1, 1073741824
  br label %if.end36

if.end36:                                         ; preds = %if.then32, %land.lhs.true28.if.end36_crit_edge, %if.end25.if.end36_crit_edge
  %r.2 = phi i32 [ %or35, %if.then32 ], [ %r.1, %land.lhs.true28.if.end36_crit_edge ], [ %r.1, %if.end25.if.end36_crit_edge ]
  %resu = getelementptr inbounds %struct.hifn_dma, ptr %3, i32 0, i32 13
  %19 = ptrtoint ptr %resu to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %resu, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp37 = icmp eq i32 %20, 0
  br i1 %cmp37, label %land.lhs.true39, label %if.end36.if.end47_crit_edge

if.end36.if.end47_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end47

land.lhs.true39:                                  ; preds = %if.end36
  %flags40 = getelementptr i8, ptr %work, i32 -12
  %21 = ptrtoint ptr %flags40 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %flags40, align 4
  %and41 = and i32 %22, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  br i1 %tobool42.not, label %land.lhs.true39.if.end47_crit_edge, label %if.end47.thread

land.lhs.true39.if.end47_crit_edge:               ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end47

if.end47.thread:                                  ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #16
  %and45 = and i32 %22, -9
  %23 = ptrtoint ptr %flags40 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %and45, ptr %flags40, align 4
  %or46 = or i32 %r.2, 4194304
  br label %if.then49

if.end47:                                         ; preds = %land.lhs.true39.if.end47_crit_edge, %if.end36.if.end47_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %r.2)
  %tobool48.not = icmp eq i32 %r.2, 0
  br i1 %tobool48.not, label %if.end47.if.end52_crit_edge, label %if.end47.if.then49_crit_edge

if.end47.if.then49_crit_edge:                     ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then49

if.end47.if.end52_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end52

if.then49:                                        ; preds = %if.end47.if.then49_crit_edge, %if.end47.thread
  %r.3168 = phi i32 [ %or46, %if.end47.thread ], [ %r.2, %if.end47.if.then49_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !212
  tail call void @arm_heavy_mb() #14
  %arrayidx.i = getelementptr i8, ptr %work, i32 -172
  %24 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i = getelementptr i8, ptr %25, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %r.3168) #14, !srcloc !213
  br label %if.end52

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %dec = add i32 %1, -1
  %26 = ptrtoint ptr %active to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %dec, ptr %active, align 8
  br label %if.end52

if.end52:                                         ; preds = %if.else, %if.then49, %if.end47.if.end52_crit_edge
  %r.4 = phi i32 [ 0, %if.else ], [ %r.3168, %if.then49 ], [ 0, %if.end47.if.end52_crit_edge ]
  %prev_success = getelementptr i8, ptr %work, i32 108
  %27 = ptrtoint ptr %prev_success to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %prev_success, align 4
  %success = getelementptr i8, ptr %work, i32 104
  %29 = ptrtoint ptr %success to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %success, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %30)
  %cmp53 = icmp eq i32 %28, %30
  br i1 %cmp53, label %land.lhs.true55, label %if.end107.critedge

land.lhs.true55:                                  ; preds = %if.end52
  %started = getelementptr i8, ptr %work, i32 -4
  %31 = ptrtoint ptr %started to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %started, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool56.not = icmp eq i32 %32, 0
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #14
  br i1 %tobool56.not, label %land.lhs.true55.if.end107_crit_edge, label %if.then63

land.lhs.true55.if.end107_crit_edge:              ; preds = %land.lhs.true55
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end107

if.then63:                                        ; preds = %land.lhs.true55
  %reset64 = getelementptr i8, ptr %work, i32 100
  %33 = ptrtoint ptr %reset64 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %reset64, align 4
  %inc = add i32 %34, 1
  store i32 %inc, ptr %reset64, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %inc)
  %cmp65 = icmp ugt i32 %inc, 4
  br i1 %cmp65, label %if.then67, label %if.then63.if.end106_crit_edge

if.then63.if.end106_crit_edge:                    ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end106

if.then67:                                        ; preds = %if.then63
  %desc_virt69 = getelementptr i8, ptr %work, i32 -164
  %35 = ptrtoint ptr %desc_virt69 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %desc_virt69, align 4
  %pdev = getelementptr i8, ptr %work, i32 -180
  %37 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pdev, align 4
  %dev73 = getelementptr inbounds %struct.pci_dev, ptr %38, i32 0, i32 44
  %39 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %active, align 8
  %41 = ptrtoint ptr %started to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %started, align 4
  %43 = ptrtoint ptr %success to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %success, align 8
  %qlen = getelementptr i8, ptr %work, i32 152
  %45 = ptrtoint ptr %qlen to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %qlen, align 4
  %max_qlen = getelementptr i8, ptr %work, i32 156
  %47 = ptrtoint ptr %max_qlen to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %max_qlen, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev73, ptr noundef nonnull @.str.65, i32 noundef %r.4, i32 noundef %40, i32 noundef %42, i32 noundef %44, i32 noundef %46, i32 noundef %48, i32 noundef 1) #17
  %49 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %pdev, align 4
  %dev82 = getelementptr inbounds %struct.pci_dev, ptr %50, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev82, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.66) #17
  %sa = getelementptr i8, ptr %work, i32 -152
  br label %do.end87

do.end87:                                         ; preds = %for.inc.do.end87_crit_edge, %if.then67
  %i.0169 = phi i32 [ 0, %if.then67 ], [ %inc98, %for.inc.do.end87_crit_edge ]
  %arrayidx = getelementptr %struct.hifn_dma, ptr %36, i32 0, i32 3, i32 %i.0169
  %51 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %arrayidx, align 4
  %arrayidx89 = getelementptr [24 x ptr], ptr %sa, i32 0, i32 %i.0169
  %53 = ptrtoint ptr %arrayidx89 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %arrayidx89, align 4
  %call90 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71, i32 noundef %52, ptr noundef %54) #17
  %55 = ptrtoint ptr %arrayidx89 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arrayidx89, align 4
  %tobool93.not = icmp eq ptr %56, null
  br i1 %tobool93.not, label %do.end87.for.inc_crit_edge, label %if.then94

do.end87.for.inc_crit_edge:                       ; preds = %do.end87
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.then94:                                        ; preds = %do.end87
  tail call fastcc void @hifn_process_ready(ptr noundef nonnull %56, i32 noundef -19)
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #14
  %arrayidx.i164 = getelementptr %struct.hifn_device, ptr %add.ptr, i32 0, i32 7, i32 %i.0169
  %57 = ptrtoint ptr %arrayidx.i164 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr null, ptr %arrayidx.i164, align 4
  %58 = ptrtoint ptr %started to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %started, align 4
  %dec.i = add i32 %59, -1
  store i32 %dec.i, ptr %started, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp6.i = icmp slt i32 %dec.i, 0
  br i1 %cmp6.i, label %do.end10.i, label %if.then94.if.end.i_crit_edge

if.then94.if.end.i_crit_edge:                     ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

do.end10.i:                                       ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #16
  %60 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %pdev, align 4
  %dev11.i = getelementptr inbounds %struct.pci_dev, ptr %61, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev11.i, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31, i32 noundef %dec.i) #17
  br label %if.end.i

if.end.i:                                         ; preds = %do.end10.i, %if.then94.if.end.i_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2.i) #14
  %62 = ptrtoint ptr %started to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %started, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %cmp16.i = icmp slt i32 %63, 0
  br i1 %cmp16.i, label %do.body20.i, label %if.end.i.for.inc_crit_edge, !prof !215

if.end.i.for.inc_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

do.body20.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/crypto/hifn_795x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1663, 0\0A.popsection", ""() #14, !srcloc !216
  unreachable

for.inc:                                          ; preds = %if.end.i.for.inc_crit_edge, %do.end87.for.inc_crit_edge
  %inc98 = add nuw nsw i32 %i.0169, 1
  %exitcond.not = icmp eq i32 %inc98, 24
  br i1 %exitcond.not, label %do.end101, label %for.inc.do.end87_crit_edge

for.inc.do.end87_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end87

do.end101:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  %call103 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74) #17
  tail call fastcc void @hifn_reset_dma(ptr noundef %add.ptr)
  tail call fastcc void @hifn_stop_device(ptr noundef %add.ptr)
  %call104 = tail call fastcc i32 @hifn_start_device(ptr noundef %add.ptr)
  %64 = ptrtoint ptr %reset64 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 0, ptr %reset64, align 4
  br label %if.end106

if.end106:                                        ; preds = %do.end101, %if.then63.if.end106_crit_edge
  %state.i = getelementptr i8, ptr %work, i32 120
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end106.if.end107_crit_edge

if.end106.if.end107_crit_edge:                    ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end107

if.then.i:                                        ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #16
  %tasklet = getelementptr i8, ptr %work, i32 116
  tail call void @__tasklet_schedule(ptr noundef %tasklet) #14
  br label %if.end107

if.end107.critedge:                               ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #16
  %65 = ptrtoint ptr %prev_success to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %30, ptr %prev_success, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #14
  br label %if.end107

if.end107:                                        ; preds = %if.end107.critedge, %if.then.i, %if.end106.if.end107_crit_edge, %land.lhs.true55.if.end107_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %66 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %66, ptr noundef %work, i32 noundef 100) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hifn_reset_dma(ptr nocapture noundef readonly %dev) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !212
  tail call void @arm_heavy_mb() #14
  %arrayidx.i.i = getelementptr %struct.hifn_device, ptr %dev, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 1077952576) #14, !srcloc !213
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !214
  tail call void @arm_heavy_mb() #14
  %bar.i.i = getelementptr inbounds %struct.hifn_device, ptr %dev, i32 0, i32 3
  %2 = ptrtoint ptr %bar.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bar.i.i, align 8
  %add.ptr.i3.i = getelementptr i8, ptr %3, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3.i, i32 0) #14, !srcloc !213
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !212
  tail call void @arm_heavy_mb() #14
  %4 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i5.i = getelementptr i8, ptr %5, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i, i32 0) #14, !srcloc !213
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !212
  tail call void @arm_heavy_mb() #14
  %6 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 7) #14, !srcloc !213
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 214748000) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !212
  tail call void @arm_heavy_mb() #14
  %9 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i2 = getelementptr i8, ptr %10, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2, i32 4) #14, !srcloc !213
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 214748000) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !212
  tail call void @arm_heavy_mb() #14
  %12 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i4 = getelementptr i8, ptr %13, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4, i32 7) #14, !srcloc !213
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !214
  tail call void @arm_heavy_mb() #14
  %14 = ptrtoint ptr %bar.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bar.i.i, align 8
  %add.ptr.i.i6 = getelementptr i8, ptr %15, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i6, i32 2) #14, !srcloc !213
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end.i.i.for.body.i.i_crit_edge, %entry
  %i.010.i.i = phi i32 [ 10000, %entry ], [ %dec.i.i, %if.end.i.i.for.body.i.i_crit_edge ]
  %16 = ptrtoint ptr %bar.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bar.i.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %17, i32 4
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #14, !srcloc !217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !219
  %19 = and i32 %18, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.i.i = icmp eq i32 %19, 0
  br i1 %tobool.not.i.i, label %for.body.i.i.hifn_reset_puc.exit_crit_edge, label %if.end.i.i

for.body.i.i.hifn_reset_puc.exit_crit_edge:       ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %hifn_reset_puc.exit

if.end.i.i:                                       ; preds = %for.body.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %20(i32 noundef 214748) #14
  %dec.i.i = add nsw i32 %i.010.i.i, -1
  %cmp.i.i = icmp ugt i32 %i.010.i.i, 1
  br i1 %cmp.i.i, label %if.end.i.i.for.body.i.i_crit_edge, label %do.end.i.i

if.end.i.i.for.body.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i

do.end.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %pdev.i.i = getelementptr inbounds %struct.hifn_device, ptr %dev, i32 0, i32 2
  %21 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pdev.i.i, align 4
  %dev3.i.i = getelementptr inbounds %struct.pci_dev, ptr %22, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3.i.i, ptr noundef nonnull @.str.58) #17
  br label %hifn_reset_puc.exit

hifn_reset_puc.exit:                              ; preds = %do.end.i.i, %for.body.i.i.hifn_reset_puc.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hifn_stop_device(ptr nocapture noundef readonly %dev) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !212
  tail call void @arm_heavy_mb() #14
  %arrayidx.i = getelementptr %struct.hifn_device, ptr %dev, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 1077952576) #14, !srcloc !213
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !214
  tail call void @arm_heavy_mb() #14
  %bar.i = getelementptr inbounds %struct.hifn_device, ptr %dev, i32 0, i32 3
  %2 = ptrtoint ptr %bar.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bar.i, align 8
  %add.ptr.i3 = getelementptr i8, ptr %3, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3, i32 0) #14, !srcloc !213
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !212
  tail call void @arm_heavy_mb() #14
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i5 = getelementptr i8, ptr %5, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5, i32 0) #14, !srcloc !213
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_kill(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_release_regions(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hifn_clear_rings(ptr noundef %dev) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %desc_virt = getelementptr inbounds %struct.hifn_device, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %desc_virt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %desc_virt, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hifn_clear_rings.__UNIQUE_ID_ddebug282, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hifn_clear_rings, %if.then)) #14
          to label %do.end [label %if.then], !srcloc !211

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %pdev = getelementptr inbounds %struct.hifn_device, ptr %dev, i32 0, i32 2
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 4
  %dev3 = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %cmdi = getelementptr inbounds %struct.hifn_dma, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %cmdi to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %cmdi, align 4
  %srci = getelementptr inbounds %struct.hifn_dma, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %srci to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %srci, align 4
  %dsti = getelementptr inbounds %struct.hifn_dma, ptr %1, i32 0, i32 8
  %8 = ptrtoint ptr %dsti to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %dsti, align 4
  %resi = getelementptr inbounds %struct.hifn_dma, ptr %1, i32 0, i32 9
  %10 = ptrtoint ptr %resi to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %resi, align 4
  %cmdu = getelementptr inbounds %struct.hifn_dma, ptr %1, i32 0, i32 10
  %12 = ptrtoint ptr %cmdu to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %cmdu, align 4
  %srcu = getelementptr inbounds %struct.hifn_dma, ptr %1, i32 0, i32 11
  %14 = ptrtoint ptr %srcu to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %srcu, align 4
  %dstu = getelementptr inbounds %struct.hifn_dma, ptr %1, i32 0, i32 12
  %16 = ptrtoint ptr %dstu to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %dstu, align 4
  %resu = getelementptr inbounds %struct.hifn_dma, ptr %1, i32 0, i32 13
  %18 = ptrtoint ptr %resu to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %resu, align 4
  %cmdk = getelementptr inbounds %struct.hifn_dma, ptr %1, i32 0, i32 14
  %20 = ptrtoint ptr %cmdk to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %cmdk, align 4
  %srck = getelementptr inbounds %struct.hifn_dma, ptr %1, i32 0, i32 15
  %22 = ptrtoint ptr %srck to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %srck, align 4
  %dstk = getelementptr inbounds %struct.hifn_dma, ptr %1, i32 0, i32 16
  %24 = ptrtoint ptr %dstk to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %dstk, align 4
  %resk = getelementptr inbounds %struct.hifn_dma, ptr %1, i32 0, i32 17
  %26 = ptrtoint ptr %resk to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %resk, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hifn_clear_rings.__UNIQUE_ID_ddebug282, ptr noundef %dev3, ptr noundef nonnull @.str.24, i32 noundef %5, i32 noundef %7, i32 noundef %9, i32 noundef %11, i32 noundef %13, i32 noundef %15, i32 noundef %17, i32 noundef %19, i32 noundef %21, i32 noundef %23, i32 noundef %25, i32 noundef %27) #14
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %resk4 = getelementptr inbounds %struct.hifn_dma, ptr %1, i32 0, i32 17
  %28 = ptrtoint ptr %resk4 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %resk4, align 4
  %resu5 = getelementptr inbounds %struct.hifn_dma, ptr %1, i32 0, i32 13
  %30 = ptrtoint ptr %resu5 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %resu5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp.not8 = icmp eq i32 %31, 0
  br i1 %cmp.not8, label %do.end.while.end_crit_edge, label %while.body.lr.ph

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.body.lr.ph:                                 ; preds = %do.end
  %success = getelementptr inbounds %struct.hifn_device, ptr %dev, i32 0, i32 14
  %reset = getelementptr inbounds %struct.hifn_device, ptr %dev, i32 0, i32 13
  %lock.i = getelementptr inbounds %struct.hifn_device, ptr %dev, i32 0, i32 8
  %started.i = getelementptr inbounds %struct.hifn_device, ptr %dev, i32 0, i32 11
  %pdev.i = getelementptr inbounds %struct.hifn_device, ptr %dev, i32 0, i32 2
  br label %while.body

while.body:                                       ; preds = %if.end14.while.body_crit_edge, %while.body.lr.ph
  %i.010 = phi i32 [ %29, %while.body.lr.ph ], [ %spec.store.select, %if.end14.while.body_crit_edge ]
  %u.09 = phi i32 [ %31, %while.body.lr.ph ], [ %dec, %if.end14.while.body_crit_edge ]
  %arrayidx = getelementptr %struct.hifn_dma, ptr %1, i32 0, i32 3, i32 %i.010
  %32 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %arrayidx, align 4
  %and = and i32 %33, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %if.end8, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

if.end8:                                          ; preds = %while.body
  %arrayidx9 = getelementptr %struct.hifn_device, ptr %dev, i32 0, i32 7, i32 %i.010
  %34 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx9, align 4
  %tobool10.not = icmp eq ptr %35, null
  br i1 %tobool10.not, label %if.end8.if.end14_crit_edge, label %if.then11

if.end8.if.end14_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end14

if.then11:                                        ; preds = %if.end8
  %36 = ptrtoint ptr %success to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %success, align 8
  %inc = add i32 %37, 1
  store i32 %inc, ptr %success, align 8
  %38 = ptrtoint ptr %reset to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %reset, align 4
  %39 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx9, align 4
  tail call fastcc void @hifn_process_ready(ptr noundef %40, i32 noundef 0)
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #14
  %41 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %arrayidx9, align 4
  %42 = ptrtoint ptr %started.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %started.i, align 4
  %dec.i = add i32 %43, -1
  store i32 %dec.i, ptr %started.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp6.i = icmp slt i32 %dec.i, 0
  br i1 %cmp6.i, label %do.end10.i, label %if.then11.if.end.i_crit_edge

if.then11.if.end.i_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

do.end10.i:                                       ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #16
  %44 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %pdev.i, align 4
  %dev11.i = getelementptr inbounds %struct.pci_dev, ptr %45, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev11.i, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31, i32 noundef %dec.i) #17
  br label %if.end.i

if.end.i:                                         ; preds = %do.end10.i, %if.then11.if.end.i_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #14
  %46 = ptrtoint ptr %started.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %started.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp16.i = icmp slt i32 %47, 0
  br i1 %cmp16.i, label %do.body20.i, label %if.end.i.if.end14_crit_edge, !prof !215

if.end.i.if.end14_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end14

do.body20.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/crypto/hifn_795x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1663, 0\0A.popsection", ""() #14, !srcloc !216
  unreachable

if.end14:                                         ; preds = %if.end.i.if.end14_crit_edge, %if.end8.if.end14_crit_edge
  %inc15 = add i32 %i.010, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %inc15)
  %cmp16 = icmp eq i32 %inc15, 24
  %spec.store.select = select i1 %cmp16, i32 0, i32 %inc15
  %dec = add i32 %u.09, -1
  %cmp.not = icmp eq i32 %dec, 0
  br i1 %cmp.not, label %if.end14.while.end_crit_edge, label %if.end14.while.body_crit_edge

if.end14.while.body_crit_edge:                    ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

if.end14.while.end_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.end:                                        ; preds = %if.end14.while.end_crit_edge, %while.body.while.end_crit_edge, %do.end.while.end_crit_edge
  %u.0.lcssa = phi i32 [ 0, %do.end.while.end_crit_edge ], [ %u.09, %while.body.while.end_crit_edge ], [ 0, %if.end14.while.end_crit_edge ]
  %i.0.lcssa = phi i32 [ %29, %do.end.while.end_crit_edge ], [ %i.010, %while.body.while.end_crit_edge ], [ %spec.store.select, %if.end14.while.end_crit_edge ]
  %48 = ptrtoint ptr %resk4 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %i.0.lcssa, ptr %resk4, align 4
  %49 = ptrtoint ptr %resu5 to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile i32 %u.0.lcssa, ptr %resu5, align 4
  %srck21 = getelementptr inbounds %struct.hifn_dma, ptr %1, i32 0, i32 15
  %50 = ptrtoint ptr %srck21 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %srck21, align 4
  %srcu22 = getelementptr inbounds %struct.hifn_dma, ptr %1, i32 0, i32 11
  %52 = ptrtoint ptr %srcu22 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %srcu22, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %cmp24.not14 = icmp eq i32 %53, 0
  br i1 %cmp24.not14, label %while.end.while.end37_crit_edge, label %while.end.while.body25_crit_edge

while.end.while.body25_crit_edge:                 ; preds = %while.end
  br label %while.body25

while.end.while.end37_crit_edge:                  ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end37

while.body25:                                     ; preds = %if.end31.while.body25_crit_edge, %while.end.while.body25_crit_edge
  %i.116 = phi i32 [ %spec.store.select108, %if.end31.while.body25_crit_edge ], [ %51, %while.end.while.body25_crit_edge ]
  %u.115 = phi i32 [ %dec36, %if.end31.while.body25_crit_edge ], [ %53, %while.end.while.body25_crit_edge ]
  %arrayidx26 = getelementptr %struct.hifn_dma, ptr %1, i32 0, i32 1, i32 %i.116
  %54 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile i32, ptr %arrayidx26, align 4
  %and28 = and i32 %55, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %if.end31, label %while.body25.while.end37_crit_edge

while.body25.while.end37_crit_edge:               ; preds = %while.body25
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end37

if.end31:                                         ; preds = %while.body25
  %inc32 = add i32 %i.116, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 80, i32 %inc32)
  %cmp33 = icmp eq i32 %inc32, 80
  %spec.store.select108 = select i1 %cmp33, i32 0, i32 %inc32
  %dec36 = add i32 %u.115, -1
  %cmp24.not = icmp eq i32 %dec36, 0
  br i1 %cmp24.not, label %if.end31.while.end37_crit_edge, label %if.end31.while.body25_crit_edge

if.end31.while.body25_crit_edge:                  ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body25

if.end31.while.end37_crit_edge:                   ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end37

while.end37:                                      ; preds = %if.end31.while.end37_crit_edge, %while.body25.while.end37_crit_edge, %while.end.while.end37_crit_edge
  %u.1.lcssa = phi i32 [ 0, %while.end.while.end37_crit_edge ], [ %u.115, %while.body25.while.end37_crit_edge ], [ 0, %if.end31.while.end37_crit_edge ]
  %i.1.lcssa = phi i32 [ %51, %while.end.while.end37_crit_edge ], [ %i.116, %while.body25.while.end37_crit_edge ], [ %spec.store.select108, %if.end31.while.end37_crit_edge ]
  %56 = ptrtoint ptr %srck21 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %i.1.lcssa, ptr %srck21, align 4
  %57 = ptrtoint ptr %srcu22 to i32
  call void @__asan_store4_noabort(i32 %57)
  store volatile i32 %u.1.lcssa, ptr %srcu22, align 4
  %cmdk40 = getelementptr inbounds %struct.hifn_dma, ptr %1, i32 0, i32 14
  %58 = ptrtoint ptr %cmdk40 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %cmdk40, align 4
  %cmdu41 = getelementptr inbounds %struct.hifn_dma, ptr %1, i32 0, i32 10
  %60 = ptrtoint ptr %cmdu41 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile i32, ptr %cmdu41, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %cmp43.not21 = icmp eq i32 %61, 0
  br i1 %cmp43.not21, label %while.end37.while.end56_crit_edge, label %while.end37.while.body44_crit_edge

while.end37.while.body44_crit_edge:               ; preds = %while.end37
  br label %while.body44

while.end37.while.end56_crit_edge:                ; preds = %while.end37
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end56

while.body44:                                     ; preds = %if.end50.while.body44_crit_edge, %while.end37.while.body44_crit_edge
  %i.223 = phi i32 [ %spec.store.select109, %if.end50.while.body44_crit_edge ], [ %59, %while.end37.while.body44_crit_edge ]
  %u.222 = phi i32 [ %dec55, %if.end50.while.body44_crit_edge ], [ %61, %while.end37.while.body44_crit_edge ]
  %arrayidx45 = getelementptr [25 x %struct.hifn_desc], ptr %1, i32 0, i32 %i.223
  %62 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile i32, ptr %arrayidx45, align 4
  %and47 = and i32 %63, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47)
  %tobool48.not = icmp eq i32 %and47, 0
  br i1 %tobool48.not, label %if.end50, label %while.body44.while.end56_crit_edge

while.body44.while.end56_crit_edge:               ; preds = %while.body44
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end56

if.end50:                                         ; preds = %while.body44
  %inc51 = add i32 %i.223, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %inc51)
  %cmp52 = icmp eq i32 %inc51, 24
  %spec.store.select109 = select i1 %cmp52, i32 0, i32 %inc51
  %dec55 = add i32 %u.222, -1
  %cmp43.not = icmp eq i32 %dec55, 0
  br i1 %cmp43.not, label %if.end50.while.end56_crit_edge, label %if.end50.while.body44_crit_edge

if.end50.while.body44_crit_edge:                  ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body44

if.end50.while.end56_crit_edge:                   ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end56

while.end56:                                      ; preds = %if.end50.while.end56_crit_edge, %while.body44.while.end56_crit_edge, %while.end37.while.end56_crit_edge
  %u.2.lcssa = phi i32 [ 0, %while.end37.while.end56_crit_edge ], [ %u.222, %while.body44.while.end56_crit_edge ], [ 0, %if.end50.while.end56_crit_edge ]
  %i.2.lcssa = phi i32 [ %59, %while.end37.while.end56_crit_edge ], [ %i.223, %while.body44.while.end56_crit_edge ], [ %spec.store.select109, %if.end50.while.end56_crit_edge ]
  %64 = ptrtoint ptr %cmdk40 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %i.2.lcssa, ptr %cmdk40, align 4
  %65 = ptrtoint ptr %cmdu41 to i32
  call void @__asan_store4_noabort(i32 %65)
  store volatile i32 %u.2.lcssa, ptr %cmdu41, align 4
  %dstk59 = getelementptr inbounds %struct.hifn_dma, ptr %1, i32 0, i32 16
  %66 = ptrtoint ptr %dstk59 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %dstk59, align 4
  %dstu60 = getelementptr inbounds %struct.hifn_dma, ptr %1, i32 0, i32 12
  %68 = ptrtoint ptr %dstu60 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load volatile i32, ptr %dstu60, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %cmp62.not28 = icmp eq i32 %69, 0
  br i1 %cmp62.not28, label %while.end56.while.end75_crit_edge, label %while.end56.while.body63_crit_edge

while.end56.while.body63_crit_edge:               ; preds = %while.end56
  br label %while.body63

while.end56.while.end75_crit_edge:                ; preds = %while.end56
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end75

while.body63:                                     ; preds = %if.end69.while.body63_crit_edge, %while.end56.while.body63_crit_edge
  %i.330 = phi i32 [ %spec.store.select110, %if.end69.while.body63_crit_edge ], [ %67, %while.end56.while.body63_crit_edge ]
  %u.329 = phi i32 [ %dec74, %if.end69.while.body63_crit_edge ], [ %69, %while.end56.while.body63_crit_edge ]
  %arrayidx64 = getelementptr %struct.hifn_dma, ptr %1, i32 0, i32 2, i32 %i.330
  %70 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load volatile i32, ptr %arrayidx64, align 4
  %and66 = and i32 %71, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and66)
  %tobool67.not = icmp eq i32 %and66, 0
  br i1 %tobool67.not, label %if.end69, label %while.body63.while.end75_crit_edge

while.body63.while.end75_crit_edge:               ; preds = %while.body63
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end75

if.end69:                                         ; preds = %while.body63
  %inc70 = add i32 %i.330, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 80, i32 %inc70)
  %cmp71 = icmp eq i32 %inc70, 80
  %spec.store.select110 = select i1 %cmp71, i32 0, i32 %inc70
  %dec74 = add i32 %u.329, -1
  %cmp62.not = icmp eq i32 %dec74, 0
  br i1 %cmp62.not, label %if.end69.while.end75_crit_edge, label %if.end69.while.body63_crit_edge

if.end69.while.body63_crit_edge:                  ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body63

if.end69.while.end75_crit_edge:                   ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end75

while.end75:                                      ; preds = %if.end69.while.end75_crit_edge, %while.body63.while.end75_crit_edge, %while.end56.while.end75_crit_edge
  %u.3.lcssa = phi i32 [ 0, %while.end56.while.end75_crit_edge ], [ %u.329, %while.body63.while.end75_crit_edge ], [ 0, %if.end69.while.end75_crit_edge ]
  %i.3.lcssa = phi i32 [ %67, %while.end56.while.end75_crit_edge ], [ %i.330, %while.body63.while.end75_crit_edge ], [ %spec.store.select110, %if.end69.while.end75_crit_edge ]
  %72 = ptrtoint ptr %dstk59 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %i.3.lcssa, ptr %dstk59, align 4
  %73 = ptrtoint ptr %dstu60 to i32
  call void @__asan_store4_noabort(i32 %73)
  store volatile i32 %u.3.lcssa, ptr %dstu60, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hifn_clear_rings.__UNIQUE_ID_ddebug283, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hifn_clear_rings, %if.then90)) #14
          to label %do.end107 [label %if.then90], !srcloc !211

if.then90:                                        ; preds = %while.end75
  call void @__sanitizer_cov_trace_pc() #16
  %pdev91 = getelementptr inbounds %struct.hifn_device, ptr %dev, i32 0, i32 2
  %74 = ptrtoint ptr %pdev91 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %pdev91, align 4
  %dev92 = getelementptr inbounds %struct.pci_dev, ptr %75, i32 0, i32 44
  %cmdi93 = getelementptr inbounds %struct.hifn_dma, ptr %1, i32 0, i32 6
  %76 = ptrtoint ptr %cmdi93 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load volatile i32, ptr %cmdi93, align 4
  %srci94 = getelementptr inbounds %struct.hifn_dma, ptr %1, i32 0, i32 7
  %78 = ptrtoint ptr %srci94 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load volatile i32, ptr %srci94, align 4
  %dsti95 = getelementptr inbounds %struct.hifn_dma, ptr %1, i32 0, i32 8
  %80 = ptrtoint ptr %dsti95 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load volatile i32, ptr %dsti95, align 4
  %resi96 = getelementptr inbounds %struct.hifn_dma, ptr %1, i32 0, i32 9
  %82 = ptrtoint ptr %resi96 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load volatile i32, ptr %resi96, align 4
  %84 = ptrtoint ptr %cmdu41 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load volatile i32, ptr %cmdu41, align 4
  %86 = ptrtoint ptr %srcu22 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load volatile i32, ptr %srcu22, align 4
  %88 = ptrtoint ptr %dstu60 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load volatile i32, ptr %dstu60, align 4
  %90 = ptrtoint ptr %resu5 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load volatile i32, ptr %resu5, align 4
  %92 = ptrtoint ptr %cmdk40 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %cmdk40, align 4
  %94 = ptrtoint ptr %srck21 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %srck21, align 4
  %96 = ptrtoint ptr %dstk59 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %dstk59, align 4
  %98 = ptrtoint ptr %resk4 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %resk4, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hifn_clear_rings.__UNIQUE_ID_ddebug283, ptr noundef %dev92, ptr noundef nonnull @.str.25, i32 noundef %77, i32 noundef %79, i32 noundef %81, i32 noundef %83, i32 noundef %85, i32 noundef %87, i32 noundef %89, i32 noundef %91, i32 noundef %93, i32 noundef %95, i32 noundef %97, i32 noundef %99) #14
  br label %do.end107

do.end107:                                        ; preds = %if.then90, %while.end75
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hifn_process_ready(ptr noundef %req, i32 noundef %error) unnamed_addr #3 align 64 {
entry:
  %nbytes = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %walk = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 1, i32 3
  %flags = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 3, i32 5, i32 36
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end39_crit_edge, label %if.then

entry.if.end39_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end39

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nbytes) #14
  %2 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %req, align 128
  %4 = ptrtoint ptr %nbytes to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %nbytes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not83 = icmp eq i32 %3, 0
  br i1 %tobool1.not83, label %if.then.while.end_crit_edge, label %while.body.lr.ph

if.then.while.end_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.then
  %dst3 = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 3
  br label %while.body

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %while.body.lr.ph
  %idx.084 = phi i32 [ 0, %while.body.lr.ph ], [ %idx.0.be, %while.cond.backedge.while.body_crit_edge ]
  %5 = phi i32 [ %3, %while.body.lr.ph ], [ %.be, %while.cond.backedge.while.body_crit_edge ]
  %arrayidx = getelementptr [16 x %struct.scatterlist], ptr %walk, i32 0, i32 %idx.084
  %6 = ptrtoint ptr %dst3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dst3, align 4
  %arrayidx4 = getelementptr %struct.scatterlist, ptr %7, i32 %idx.084
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hifn_process_ready.__UNIQUE_ID_ddebug277, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hifn_process_ready, %if.then9)) #14
          to label %do.end [label %if.then9], !srcloc !211

if.then9:                                         ; preds = %while.body
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %and.i.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %sg_page.exit, label %do.body2.i, !prof !220

do.body2.i:                                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #14, !srcloc !222
  unreachable

sg_page.exit:                                     ; preds = %if.then9
  %10 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx4, align 4
  %and.i.i64 = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i64)
  %tobool.i.not.i65 = icmp eq i32 %and.i.i64, 0
  br i1 %tobool.i.not.i65, label %sg_page.exit68, label %do.body2.i66, !prof !220

do.body2.i66:                                     ; preds = %sg_page.exit
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #14, !srcloc !222
  unreachable

sg_page.exit68:                                   ; preds = %sg_page.exit
  call void @__sanitizer_cov_trace_pc() #16
  %length = getelementptr [16 x %struct.scatterlist], ptr %walk, i32 0, i32 %idx.084, i32 2
  %12 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %length, align 4
  %and.i = and i32 %9, -4
  %14 = inttoptr i32 %and.i to ptr
  %and.i67 = and i32 %11, -4
  %15 = inttoptr i32 %and.i67 to ptr
  %length12 = getelementptr %struct.scatterlist, ptr %7, i32 %idx.084, i32 2
  %16 = ptrtoint ptr %length12 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %length12, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hifn_process_ready.__UNIQUE_ID_ddebug277, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.26, ptr noundef %14, i32 noundef %13, ptr noundef %15, i32 noundef %17, i32 noundef %5) #14
  br label %do.end

do.end:                                           ; preds = %sg_page.exit68, %while.body
  %length13 = getelementptr [16 x %struct.scatterlist], ptr %walk, i32 0, i32 %idx.084, i32 2
  %18 = ptrtoint ptr %length13 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %length13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool14.not = icmp eq i32 %19, 0
  br i1 %tobool14.not, label %if.then15, label %if.end18

if.then15:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  %length16 = getelementptr %struct.scatterlist, ptr %7, i32 %idx.084, i32 2
  %20 = ptrtoint ptr %length16 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %length16, align 4
  %22 = tail call i32 @llvm.usub.sat.i32(i32 %5, i32 %21)
  %23 = ptrtoint ptr %nbytes to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %nbytes, align 4
  %inc = add i32 %idx.084, 1
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.end31, %if.then15
  %.be = phi i32 [ %.pr, %if.end31 ], [ %22, %if.then15 ]
  %idx.0.be = phi i32 [ %add, %if.end31 ], [ %inc, %if.then15 ]
  %tobool1.not = icmp eq i32 %.be, 0
  br i1 %tobool1.not, label %while.cond.backedge.while.end_crit_edge, label %while.cond.backedge.while.body_crit_edge

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

while.cond.backedge.while.end_crit_edge:          ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

if.end18:                                         ; preds = %do.end
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx, align 4
  %and.i.i69 = and i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i69)
  %tobool.i.not.i70 = icmp eq i32 %and.i.i69, 0
  br i1 %tobool.i.not.i70, label %sg_page.exit73, label %do.body2.i71, !prof !220

do.body2.i71:                                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #14, !srcloc !222
  unreachable

sg_page.exit73:                                   ; preds = %if.end18
  %and.i72 = and i32 %25, -4
  %26 = inttoptr i32 %and.i72 to ptr
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %27 = load i32, ptr @pgprot_kernel, align 4
  %or.i = or i32 %27, 512
  %28 = tail call i32 @llvm.read_register.i32(metadata !198) #14
  %and.i.i.i.i.i = and i32 %28, -16384
  %29 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %31, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !223
  %32 = tail call i32 @llvm.read_register.i32(metadata !198) #14
  %and.i.i.i1.i.i = and i32 %32, -16384
  %33 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %35, i32 0, i32 213
  %36 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %inc.i.i.i.i = add i32 %37, 1
  store i32 %inc.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !224
  %call.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef %26, i32 noundef %or.i) #14
  %offset = getelementptr [16 x %struct.scatterlist], ptr %walk, i32 0, i32 %idx.084, i32 1
  %38 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %offset, align 4
  %call22 = call fastcc i32 @skcipher_get(ptr noundef %call.i.i, ptr noundef %length13, i32 noundef %39, ptr noundef %arrayidx4, i32 noundef %5, ptr noundef nonnull %nbytes)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp23 = icmp slt i32 %call22, 0
  br i1 %cmp23, label %do.end28, label %if.end31

do.end28:                                         ; preds = %sg_page.exit73
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !225
  %40 = tail call i32 @llvm.read_register.i32(metadata !198) #14
  %and.i.i.i1.i = and i32 %40, -16384
  %41 = inttoptr i32 %and.i.i.i1.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %task.i.i.i, align 8
  %pagefault_disabled.i.i.i = getelementptr inbounds %struct.task_struct, ptr %43, i32 0, i32 213
  %44 = ptrtoint ptr %pagefault_disabled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %pagefault_disabled.i.i.i, align 8
  %dec.i.i.i = add i32 %45, -1
  store i32 %dec.i.i.i, ptr %pagefault_disabled.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !226
  %46 = tail call i32 @llvm.read_register.i32(metadata !198) #14
  %and.i.i.i.i = and i32 %46, -16384
  %47 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %49, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  br label %while.end

if.end31:                                         ; preds = %sg_page.exit73
  call void @__sanitizer_cov_trace_pc() #16
  %add = add i32 %call22, %idx.084
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !225
  %50 = tail call i32 @llvm.read_register.i32(metadata !198) #14
  %and.i.i.i1.i74 = and i32 %50, -16384
  %51 = inttoptr i32 %and.i.i.i1.i74 to ptr
  %task.i.i.i75 = getelementptr inbounds %struct.thread_info, ptr %51, i32 0, i32 2
  %52 = ptrtoint ptr %task.i.i.i75 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %task.i.i.i75, align 8
  %pagefault_disabled.i.i.i76 = getelementptr inbounds %struct.task_struct, ptr %53, i32 0, i32 213
  %54 = ptrtoint ptr %pagefault_disabled.i.i.i76 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %pagefault_disabled.i.i.i76, align 8
  %dec.i.i.i77 = add i32 %55, -1
  store i32 %dec.i.i.i77, ptr %pagefault_disabled.i.i.i76, align 8
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !226
  %56 = tail call i32 @llvm.read_register.i32(metadata !198) #14
  %and.i.i.i.i78 = and i32 %56, -16384
  %57 = inttoptr i32 %and.i.i.i.i78 to ptr
  %preempt_count.i.i.i79 = getelementptr inbounds %struct.thread_info, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %preempt_count.i.i.i79 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile i32, ptr %preempt_count.i.i.i79, align 4
  %sub.i.i80 = add i32 %59, -1
  store volatile i32 %sub.i.i80, ptr %preempt_count.i.i.i79, align 4
  %60 = ptrtoint ptr %nbytes to i32
  call void @__asan_load4_noabort(i32 %60)
  %.pr = load i32, ptr %nbytes, align 4
  br label %while.cond.backedge

while.end:                                        ; preds = %do.end28, %while.cond.backedge.while.end_crit_edge, %if.then.while.end_crit_edge
  %num.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 3, i32 5, i32 40
  %61 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %num.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %cmp8.i = icmp sgt i32 %62, 0
  br i1 %cmp8.i, label %while.end.for.body.i_crit_edge, label %while.end.hifn_cipher_walk_exit.exit_crit_edge

while.end.hifn_cipher_walk_exit.exit_crit_edge:   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %hifn_cipher_walk_exit.exit

while.end.for.body.i_crit_edge:                   ; preds = %while.end
  br label %for.body.i

for.body.i:                                       ; preds = %sg_page.exit.i.for.body.i_crit_edge, %while.end.for.body.i_crit_edge
  %i.09.i = phi i32 [ %inc.i, %sg_page.exit.i.for.body.i_crit_edge ], [ 0, %while.end.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [16 x %struct.scatterlist], ptr %walk, i32 0, i32 %i.09.i
  %63 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arrayidx.i, align 4
  %and.i.i.i = and i32 %64, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %sg_page.exit.i, label %do.body2.i.i, !prof !220

do.body2.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #14, !srcloc !222
  unreachable

sg_page.exit.i:                                   ; preds = %for.body.i
  %and.i.i81 = and i32 %64, -4
  %65 = inttoptr i32 %and.i.i81 to ptr
  tail call void @__free_pages(ptr noundef %65, i32 noundef 0) #14
  %length.i = getelementptr [16 x %struct.scatterlist], ptr %walk, i32 0, i32 %i.09.i, i32 2
  %66 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 0, ptr %length.i, align 4
  %inc.i = add nuw nsw i32 %i.09.i, 1
  %67 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %num.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %68
  br i1 %cmp.i, label %sg_page.exit.i.for.body.i_crit_edge, label %sg_page.exit.i.hifn_cipher_walk_exit.exit_crit_edge

sg_page.exit.i.hifn_cipher_walk_exit.exit_crit_edge: ; preds = %sg_page.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %hifn_cipher_walk_exit.exit

sg_page.exit.i.for.body.i_crit_edge:              ; preds = %sg_page.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

hifn_cipher_walk_exit.exit:                       ; preds = %sg_page.exit.i.hifn_cipher_walk_exit.exit_crit_edge, %while.end.hifn_cipher_walk_exit.exit_crit_edge
  %69 = ptrtoint ptr %num.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 0, ptr %num.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nbytes) #14
  br label %if.end39

if.end39:                                         ; preds = %hifn_cipher_walk_exit.exit, %entry.if.end39_crit_edge
  %base = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4
  %complete = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 1
  %70 = ptrtoint ptr %complete to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %complete, align 8
  tail call void %71(ptr noundef %base, i32 noundef %error) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @skcipher_get(ptr nocapture noundef readonly %saddr, ptr nocapture noundef %srestp, i32 noundef %offset, ptr nocapture noundef readonly %dst, i32 noundef %size, ptr nocapture noundef %nbytesp) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %srestp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %srestp, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %size)
  %cmp = icmp ult i32 %1, %size
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %2 = ptrtoint ptr %nbytesp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nbytesp, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %size)
  %cmp1 = icmp ult i32 %3, %size
  br i1 %cmp1, label %lor.lhs.false.cleanup_crit_edge, label %while.cond.preheader

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

while.cond.preheader:                             ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %tobool.not67 = icmp eq i32 %size, 0
  br i1 %tobool.not67, label %while.cond.preheader.while.end_crit_edge, label %while.body.preheader

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.body.preheader:                             ; preds = %while.cond.preheader
  %length.peel = getelementptr inbounds %struct.scatterlist, ptr %dst, i32 0, i32 2
  %4 = ptrtoint ptr %length.peel to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %length.peel, align 4
  %6 = tail call i32 @llvm.umin.i32(i32 %1, i32 %5)
  %7 = tail call i32 @llvm.umin.i32(i32 %6, i32 %size)
  %8 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dst, align 4
  %and.i.i.peel = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.peel)
  %tobool.i.not.i.peel = icmp eq i32 %and.i.i.peel, 0
  br i1 %tobool.i.not.i.peel, label %sg_page.exit.peel, label %while.body.preheader.do.body2.i_crit_edge, !prof !220

while.body.preheader.do.body2.i_crit_edge:        ; preds = %while.body.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body2.i

sg_page.exit.peel:                                ; preds = %while.body.preheader
  %and.i.peel = and i32 %9, -4
  %10 = inttoptr i32 %and.i.peel to ptr
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %11 = load i32, ptr @pgprot_kernel, align 4
  %or.i.peel = or i32 %11, 512
  %12 = tail call i32 @llvm.read_register.i32(metadata !198) #14
  %and.i.i.i.i.i.peel = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i.i.i.peel to ptr
  %preempt_count.i.i.i.i.peel = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %preempt_count.i.i.i.i.peel to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %preempt_count.i.i.i.i.peel, align 4
  %add.i.i.i.peel = add i32 %15, 1
  store volatile i32 %add.i.i.i.peel, ptr %preempt_count.i.i.i.i.peel, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !223
  %16 = tail call i32 @llvm.read_register.i32(metadata !198) #14
  %and.i.i.i1.i.i.peel = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i.i1.i.i.peel to ptr
  %task.i.i.i.i.peel = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %task.i.i.i.i.peel to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %task.i.i.i.i.peel, align 8
  %pagefault_disabled.i.i.i.i.peel = getelementptr inbounds %struct.task_struct, ptr %19, i32 0, i32 213
  %20 = ptrtoint ptr %pagefault_disabled.i.i.i.i.peel to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pagefault_disabled.i.i.i.i.peel, align 8
  %inc.i.i.i.i.peel = add i32 %21, 1
  store i32 %inc.i.i.i.i.peel, ptr %pagefault_disabled.i.i.i.i.peel, align 8
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !224
  %call.i.i.peel = tail call ptr @__kmap_local_page_prot(ptr noundef %10, i32 noundef %or.i.peel) #14
  %offset10.peel = getelementptr inbounds %struct.scatterlist, ptr %dst, i32 0, i32 1
  %22 = ptrtoint ptr %offset10.peel to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %offset10.peel, align 4
  %add.ptr.peel = getelementptr i8, ptr %call.i.i.peel, i32 %23
  %add.ptr11.peel = getelementptr i8, ptr %add.ptr.peel, i32 %offset
  %24 = call ptr @memcpy(ptr %add.ptr11.peel, ptr %saddr, i32 %7)
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i.peel) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !225
  %25 = tail call i32 @llvm.read_register.i32(metadata !198) #14
  %and.i.i.i1.i.peel = and i32 %25, -16384
  %26 = inttoptr i32 %and.i.i.i1.i.peel to ptr
  %task.i.i.i.peel = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %task.i.i.i.peel to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %task.i.i.i.peel, align 8
  %pagefault_disabled.i.i.i.peel = getelementptr inbounds %struct.task_struct, ptr %28, i32 0, i32 213
  %29 = ptrtoint ptr %pagefault_disabled.i.i.i.peel to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %pagefault_disabled.i.i.i.peel, align 8
  %dec.i.i.i.peel = add i32 %30, -1
  store i32 %dec.i.i.i.peel, ptr %pagefault_disabled.i.i.i.peel, align 8
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !226
  %31 = tail call i32 @llvm.read_register.i32(metadata !198) #14
  %and.i.i.i.i.peel = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i.peel to ptr
  %preempt_count.i.i.i.peel = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i.peel to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i.peel, align 4
  %sub.i.i.peel = add i32 %34, -1
  store volatile i32 %sub.i.i.peel, ptr %preempt_count.i.i.i.peel, align 4
  %sub.peel = sub i32 %3, %7
  %sub15.peel = sub i32 %size, %7
  %sub16.peel = sub i32 %1, %7
  %add.ptr17.peel = getelementptr i8, ptr %saddr, i32 %7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @skcipher_get.__UNIQUE_ID_ddebug276, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@skcipher_get, %if.then24.peel)) #14
          to label %do.end27.peel [label %if.then24.peel], !srcloc !211

if.then24.peel:                                   ; preds = %sg_page.exit.peel
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @skcipher_get.__UNIQUE_ID_ddebug276, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.28, i32 noundef %7, i32 noundef %sub15.peel, i32 noundef %sub16.peel, i32 noundef %sub.peel) #14
  br label %do.end27.peel

do.end27.peel:                                    ; preds = %if.then24.peel, %sg_page.exit.peel
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub15.peel)
  %tobool.not.peel = icmp eq i32 %sub15.peel, 0
  br i1 %tobool.not.peel, label %do.end27.peel.while.end_crit_edge, label %do.end27.peel.while.body_crit_edge

do.end27.peel.while.body_crit_edge:               ; preds = %do.end27.peel
  br label %while.body

do.end27.peel.while.end_crit_edge:                ; preds = %do.end27.peel
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.body:                                       ; preds = %do.end27.while.body_crit_edge, %do.end27.peel.while.body_crit_edge
  %saddr.addr.074 = phi ptr [ %add.ptr17, %do.end27.while.body_crit_edge ], [ %add.ptr17.peel, %do.end27.peel.while.body_crit_edge ]
  %dst.addr.072.pn = phi ptr [ %dst.addr.072, %do.end27.while.body_crit_edge ], [ %dst, %do.end27.peel.while.body_crit_edge ]
  %idx.071 = phi i32 [ %inc, %do.end27.while.body_crit_edge ], [ 1, %do.end27.peel.while.body_crit_edge ]
  %nbytes.070 = phi i32 [ %sub, %do.end27.while.body_crit_edge ], [ %sub.peel, %do.end27.peel.while.body_crit_edge ]
  %srest.069 = phi i32 [ %sub16, %do.end27.while.body_crit_edge ], [ %sub16.peel, %do.end27.peel.while.body_crit_edge ]
  %size.addr.068 = phi i32 [ %sub15, %do.end27.while.body_crit_edge ], [ %sub15.peel, %do.end27.peel.while.body_crit_edge ]
  %dst.addr.072 = getelementptr %struct.scatterlist, ptr %dst.addr.072.pn, i32 1
  %length = getelementptr %struct.scatterlist, ptr %dst.addr.072.pn, i32 1, i32 2
  %35 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %length, align 4
  %37 = tail call i32 @llvm.umin.i32(i32 %srest.069, i32 %36)
  %38 = tail call i32 @llvm.umin.i32(i32 %37, i32 %size.addr.068)
  %39 = ptrtoint ptr %dst.addr.072 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %dst.addr.072, align 4
  %and.i.i = and i32 %40, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %sg_page.exit, label %while.body.do.body2.i_crit_edge, !prof !220

while.body.do.body2.i_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body2.i

do.body2.i:                                       ; preds = %while.body.do.body2.i_crit_edge, %while.body.preheader.do.body2.i_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #14, !srcloc !222
  unreachable

sg_page.exit:                                     ; preds = %while.body
  %and.i = and i32 %40, -4
  %41 = inttoptr i32 %and.i to ptr
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %42 = load i32, ptr @pgprot_kernel, align 4
  %or.i = or i32 %42, 512
  %43 = tail call i32 @llvm.read_register.i32(metadata !198) #14
  %and.i.i.i.i.i = and i32 %43, -16384
  %44 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %46, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !223
  %47 = tail call i32 @llvm.read_register.i32(metadata !198) #14
  %and.i.i.i1.i.i = and i32 %47, -16384
  %48 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %48, i32 0, i32 2
  %49 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %50, i32 0, i32 213
  %51 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %inc.i.i.i.i = add i32 %52, 1
  store i32 %inc.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !224
  %call.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef %41, i32 noundef %or.i) #14
  %offset10 = getelementptr %struct.scatterlist, ptr %dst.addr.072.pn, i32 1, i32 1
  %53 = ptrtoint ptr %offset10 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %offset10, align 4
  %add.ptr = getelementptr i8, ptr %call.i.i, i32 %54
  %55 = call ptr @memcpy(ptr %add.ptr, ptr %saddr.addr.074, i32 %38)
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !225
  %56 = tail call i32 @llvm.read_register.i32(metadata !198) #14
  %and.i.i.i1.i = and i32 %56, -16384
  %57 = inttoptr i32 %and.i.i.i1.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %57, i32 0, i32 2
  %58 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %task.i.i.i, align 8
  %pagefault_disabled.i.i.i = getelementptr inbounds %struct.task_struct, ptr %59, i32 0, i32 213
  %60 = ptrtoint ptr %pagefault_disabled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %pagefault_disabled.i.i.i, align 8
  %dec.i.i.i = add i32 %61, -1
  store i32 %dec.i.i.i, ptr %pagefault_disabled.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !226
  %62 = tail call i32 @llvm.read_register.i32(metadata !198) #14
  %and.i.i.i.i = and i32 %62, -16384
  %63 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %63, i32 0, i32 1
  %64 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %65, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  %sub = sub i32 %nbytes.070, %38
  %sub15 = sub i32 %size.addr.068, %38
  %sub16 = sub i32 %srest.069, %38
  %add.ptr17 = getelementptr i8, ptr %saddr.addr.074, i32 %38
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @skcipher_get.__UNIQUE_ID_ddebug276, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@skcipher_get, %if.then24)) #14
          to label %do.end27 [label %if.then24], !srcloc !211

if.then24:                                        ; preds = %sg_page.exit
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @skcipher_get.__UNIQUE_ID_ddebug276, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.28, i32 noundef %38, i32 noundef %sub15, i32 noundef %sub16, i32 noundef %sub) #14
  br label %do.end27

do.end27:                                         ; preds = %if.then24, %sg_page.exit
  %inc = add i32 %idx.071, 1
  %tobool.not = icmp eq i32 %sub15, 0
  br i1 %tobool.not, label %do.end27.while.end_crit_edge, label %do.end27.while.body_crit_edge, !llvm.loop !227

do.end27.while.body_crit_edge:                    ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

do.end27.while.end_crit_edge:                     ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.end:                                        ; preds = %do.end27.while.end_crit_edge, %do.end27.peel.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %srest.0.lcssa = phi i32 [ %1, %while.cond.preheader.while.end_crit_edge ], [ %sub16.peel, %do.end27.peel.while.end_crit_edge ], [ %sub16, %do.end27.while.end_crit_edge ]
  %nbytes.0.lcssa = phi i32 [ %3, %while.cond.preheader.while.end_crit_edge ], [ %sub.peel, %do.end27.peel.while.end_crit_edge ], [ %sub, %do.end27.while.end_crit_edge ]
  %idx.0.lcssa = phi i32 [ 0, %while.cond.preheader.while.end_crit_edge ], [ 1, %do.end27.peel.while.end_crit_edge ], [ %inc, %do.end27.while.end_crit_edge ]
  %66 = ptrtoint ptr %nbytesp to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %nbytes.0.lcssa, ptr %nbytesp, align 4
  %67 = ptrtoint ptr %srestp to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %srest.0.lcssa, ptr %srestp, align 4
  br label %cleanup

cleanup:                                          ; preds = %while.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %idx.0.lcssa, %while.end ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_pages(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_dequeue_request(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hifn_handle_req(ptr noundef %req) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4
  %tfm = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 3
  %0 = ptrtoint ptr %tfm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm, align 16
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_tfm, ptr %1, i32 0, i32 5
  %dev1 = getelementptr inbounds %struct.crypto_tfm, ptr %1, i32 1, i32 4, i32 16
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  %started = getelementptr inbounds %struct.hifn_device, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %started to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %started, align 4
  %6 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %req, align 128
  %sub = add i32 %7, 4095
  %div23 = lshr i32 %sub, 12
  %add2 = add i32 %div23, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %add2)
  %cmp = icmp ult i32 %add2, 24
  br i1 %cmp, label %if.then, label %entry.if.then5_crit_edge

entry.if.then5_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then5

if.then:                                          ; preds = %entry
  %__ctx.i.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 6
  %8 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev1, align 4
  %10 = ptrtoint ptr %__ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %__ctx.i.i, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %if.then.if.end.i_crit_edge, label %land.lhs.true.i

if.then.if.end.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %if.then
  %ivsize.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 1, i32 1
  %12 = ptrtoint ptr %ivsize.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ivsize.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool3.not.i = icmp eq i32 %13, 0
  br i1 %tobool3.not.i, label %land.lhs.true4.i, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %mode.i = getelementptr inbounds %struct.hifn_request_context, ptr %__ctx.i.i, i32 0, i32 4
  %14 = ptrtoint ptr %mode.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %mode.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %cmp.not.i = icmp eq i8 %15, 0
  br i1 %cmp.not.i, label %land.lhs.true4.i.if.end.i_crit_edge, label %land.lhs.true4.i.if.end_crit_edge

land.lhs.true4.i.if.end_crit_edge:                ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true4.i.if.end.i_crit_edge:              ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true4.i.if.end.i_crit_edge, %land.lhs.true.i.if.end.i_crit_edge, %if.then.if.end.i_crit_edge
  %walk.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 1, i32 3
  %flags6.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 3, i32 5, i32 36
  %16 = ptrtoint ptr %flags6.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %flags6.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool7.not130.i = icmp eq i32 %7, 0
  br i1 %tobool7.not130.i, label %if.end.i.while.end.i_crit_edge, label %while.body.lr.ph.i

if.end.i.while.end.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.i

while.body.lr.ph.i:                               ; preds = %if.end.i
  %dst8.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 3
  %17 = ptrtoint ptr %dst8.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dst8.i, align 4
  br label %while.body.i

while.body.i:                                     ; preds = %if.end19.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %idx.0132.i = phi i32 [ 0, %while.body.lr.ph.i ], [ %inc.i, %if.end19.i.while.body.i_crit_edge ]
  %nbytes.0131.i = phi i32 [ %7, %while.body.lr.ph.i ], [ %sub.i, %if.end19.i.while.body.i_crit_edge ]
  %length.i = getelementptr %struct.scatterlist, ptr %18, i32 %idx.0132.i, i32 2
  %19 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %length.i, align 4
  %21 = tail call i32 @llvm.umin.i32(i32 %20, i32 %nbytes.0131.i) #14
  %offset.i = getelementptr %struct.scatterlist, ptr %18, i32 %idx.0132.i, i32 1
  %22 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %offset.i, align 4
  %and.i = and i32 %23, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp11.i = icmp eq i32 %and.i, 0
  %and13.i = and i32 %21, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i)
  %cmp14.i = icmp eq i32 %and13.i, 0
  %or.cond.i = select i1 %cmp11.i, i1 %cmp14.i, i1 false
  br i1 %or.cond.i, label %while.body.i.if.end19.i_crit_edge, label %if.then16.i

while.body.i.if.end19.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end19.i

if.then16.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  %24 = ptrtoint ptr %flags6.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %flags6.i, align 4
  %or.i = or i32 %25, 1
  store i32 %or.i, ptr %flags6.i, align 4
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.then16.i, %while.body.i.if.end19.i_crit_edge
  %sub.i = sub i32 %nbytes.0131.i, %21
  %inc.i = add i32 %idx.0132.i, 1
  %tobool7.not.i = icmp eq i32 %sub.i, 0
  br i1 %tobool7.not.i, label %if.end19.i.while.end.i_crit_edge, label %if.end19.i.while.body.i_crit_edge

if.end19.i.while.body.i_crit_edge:                ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i

if.end19.i.while.end.i_crit_edge:                 ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.i

while.end.i:                                      ; preds = %if.end19.i.while.end.i_crit_edge, %if.end.i.while.end.i_crit_edge
  %idx.0.lcssa.i = phi i32 [ 0, %if.end.i.while.end.i_crit_edge ], [ %inc.i, %if.end19.i.while.end.i_crit_edge ]
  %26 = ptrtoint ptr %flags6.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %flags6.i, align 4
  %and22.i = and i32 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22.i)
  %tobool23.not.i = icmp eq i32 %and22.i, 0
  br i1 %tobool23.not.i, label %while.end.i.if.end31.i_crit_edge, label %if.then24.i

while.end.i.if.end31.i_crit_edge:                 ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end31.i

if.then24.i:                                      ; preds = %while.end.i
  %28 = tail call i32 @llvm.smin.i32(i32 %idx.0.lcssa.i, i32 16) #14
  tail call void @sg_init_table(ptr noundef %walk.i, i32 noundef %28) #14
  %num1.i.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 3, i32 5, i32 40
  %29 = ptrtoint ptr %num1.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %num1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %idx.0.lcssa.i)
  %cmp25.i.i = icmp sgt i32 %idx.0.lcssa.i, 0
  br i1 %cmp25.i.i, label %for.body.preheader.i.i, label %if.then24.i.if.end31.i_crit_edge

if.then24.i.if.end31.i_crit_edge:                 ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end31.i

for.body.preheader.i.i:                           ; preds = %if.then24.i
  %smax.i.i = tail call i32 @llvm.smax.i32(i32 %28, i32 1) #14
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.preheader.i.i
  %i.06.i.i = phi i32 [ %inc6.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %for.body.preheader.i.i ]
  %call38.i.i.i.i.i = tail call ptr @__alloc_pages(i32 noundef 2592, i32 noundef 0, i32 noundef 0, ptr noundef null) #14
  %tobool.not.i.i = icmp eq ptr %call38.i.i.i.i.i, null
  br i1 %tobool.not.i.i, label %for.body.i.i.if.end31.i_crit_edge, label %if.end.i.i

for.body.i.i.if.end31.i_crit_edge:                ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end31.i

if.end.i.i:                                       ; preds = %for.body.i.i
  %arrayidx.i.i = getelementptr [16 x %struct.scatterlist], ptr %walk.i, i32 0, i32 %i.06.i.i
  %30 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx.i.i, align 4
  %32 = ptrtoint ptr %call38.i.i.i.i.i to i32
  %and2.i.i.i.i = and i32 %32, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and2.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %do.body11.i.i.i.i, label %do.body5.i.i.i.i, !prof !220

do.body5.i.i.i.i:                                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #14, !srcloc !229
  unreachable

do.body11.i.i.i.i:                                ; preds = %if.end.i.i
  %and.i.i.i.i.i = and i32 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.i.not.i.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i.i, label %for.inc.i.i, label %do.body19.i.i.i.i, !prof !220

do.body19.i.i.i.i:                                ; preds = %do.body11.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #14, !srcloc !230
  unreachable

for.inc.i.i:                                      ; preds = %do.body11.i.i.i.i
  %and.i.i.i.i = and i32 %31, 3
  %or.i.i.i.i = or i32 %and.i.i.i.i, %32
  %33 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %or.i.i.i.i, ptr %arrayidx.i.i, align 4
  %offset1.i.i.i = getelementptr [16 x %struct.scatterlist], ptr %walk.i, i32 0, i32 %i.06.i.i, i32 1
  %34 = ptrtoint ptr %offset1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %offset1.i.i.i, align 4
  %length.i.i.i = getelementptr [16 x %struct.scatterlist], ptr %walk.i, i32 0, i32 %i.06.i.i, i32 2
  %35 = ptrtoint ptr %length.i.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 4096, ptr %length.i.i.i, align 4
  %36 = ptrtoint ptr %num1.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %num1.i.i, align 4
  %inc.i.i = add i32 %37, 1
  store i32 %inc.i.i, ptr %num1.i.i, align 4
  %inc6.i.i = add nuw nsw i32 %i.06.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc6.i.i, %smax.i.i
  br i1 %exitcond.not.i.i, label %for.inc.i.i.if.end31.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i

for.inc.i.i.if.end31.i_crit_edge:                 ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end31.i

if.end31.i:                                       ; preds = %for.inc.i.i.if.end31.i_crit_edge, %for.body.i.i.if.end31.i_crit_edge, %if.then24.i.if.end31.i_crit_edge, %while.end.i.if.end31.i_crit_edge
  %call33.i = tail call fastcc i32 @hifn_cipher_walk(ptr noundef %req, ptr noundef %walk.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33.i)
  %cmp34.i = icmp slt i32 %call33.i, 0
  br i1 %cmp34.i, label %if.end31.i.if.end_crit_edge, label %do.body38.i

if.end31.i.if.end_crit_edge:                      ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

do.body38.i:                                      ; preds = %if.end31.i
  %lock.i = getelementptr inbounds %struct.hifn_device, ptr %9, i32 0, i32 8
  %call43.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #14
  %started.i = getelementptr inbounds %struct.hifn_device, ptr %9, i32 0, i32 11
  %38 = ptrtoint ptr %started.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %started.i, align 4
  %add.i = add i32 %39, %call33.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %add.i)
  %cmp46.i = icmp sgt i32 %add.i, 23
  br i1 %cmp46.i, label %err_out.i, label %if.end49.i

if.end49.i:                                       ; preds = %do.body38.i
  %dst50.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 3
  %40 = ptrtoint ptr %dst50.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dst50.i, align 4
  %42 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %req, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool.not68.i.i = icmp eq i32 %43, 0
  br i1 %tobool.not68.i.i, label %if.end49.i.while.end63.i.i_crit_edge, label %while.body.lr.ph.i.i

if.end49.i.while.end63.i.i_crit_edge:             ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end63.i.i

while.body.lr.ph.i.i:                             ; preds = %if.end49.i
  %src.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 2
  %44 = ptrtoint ptr %src.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %src.i, align 8
  %desc_virt.i.i.i = getelementptr inbounds %struct.hifn_device, ptr %9, i32 0, i32 4
  %pdev.i.i.i = getelementptr inbounds %struct.hifn_device, ptr %9, i32 0, i32 2
  %flags.i.i.i = getelementptr inbounds %struct.hifn_device, ptr %9, i32 0, i32 9
  %arrayidx.i.i.i.i = getelementptr %struct.hifn_device, ptr %9, i32 0, i32 3, i32 1
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %hifn_setup_src_desc.exit.i.i.while.body.i.i_crit_edge, %while.body.lr.ph.i.i
  %src.addr.070.i.i = phi ptr [ %45, %while.body.lr.ph.i.i ], [ %incdec.ptr.i.i, %hifn_setup_src_desc.exit.i.i.while.body.i.i_crit_edge ]
  %n.069.i.i = phi i32 [ %43, %while.body.lr.ph.i.i ], [ %sub.i.i, %hifn_setup_src_desc.exit.i.i.while.body.i.i_crit_edge ]
  %46 = ptrtoint ptr %src.addr.070.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %src.addr.070.i.i, align 4
  %and.i.i.i128.i = and i32 %47, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i128.i)
  %tobool.i.not.i.i.i = icmp eq i32 %and.i.i.i128.i, 0
  br i1 %tobool.i.not.i.i.i, label %sg_page.exit.i.i, label %do.body2.i.i.i, !prof !220

do.body2.i.i.i:                                   ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #14, !srcloc !222
  unreachable

sg_page.exit.i.i:                                 ; preds = %while.body.i.i
  %and.i.i.i = and i32 %47, -4
  %48 = inttoptr i32 %and.i.i.i to ptr
  %offset.i.i = getelementptr inbounds %struct.scatterlist, ptr %src.addr.070.i.i, i32 0, i32 1
  %49 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %offset.i.i, align 4
  %length.i.i = getelementptr inbounds %struct.scatterlist, ptr %src.addr.070.i.i, i32 0, i32 2
  %51 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %length.i.i, align 4
  %53 = tail call i32 @llvm.umin.i32(i32 %52, i32 %n.069.i.i) #14
  %sub.i.i = sub i32 %n.069.i.i, %53
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %cmp1.not.i.i = icmp eq i32 %sub.i.i, 0
  %54 = ptrtoint ptr %desc_virt.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %desc_virt.i.i.i, align 4
  %56 = ptrtoint ptr %pdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %pdev.i.i.i, align 4
  %dev1.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %57, i32 0, i32 44
  %call.i.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev1.i.i.i, ptr noundef %48, i32 noundef %50, i32 noundef %53, i32 noundef 1, i32 noundef 0) #14
  %srci.i.i.i = getelementptr inbounds %struct.hifn_dma, ptr %55, i32 0, i32 7
  %58 = ptrtoint ptr %srci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile i32, ptr %srci.i.i.i, align 4
  %60 = tail call i32 @llvm.bswap.i32(i32 %call.i.i.i) #14
  %arrayidx.i.i.i = getelementptr %struct.hifn_dma, ptr %55, i32 0, i32 1, i32 %59
  %p.i.i.i = getelementptr %struct.hifn_dma, ptr %55, i32 0, i32 1, i32 %59, i32 1
  %61 = ptrtoint ptr %p.i.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store volatile i32 %60, ptr %p.i.i.i, align 4
  %cond.i.i.i = select i1 %cmp1.not.i.i, i32 536870912, i32 0
  %or2.i.i.i = or i32 %53, %cond.i.i.i
  %or3.i.i.i = or i32 %or2.i.i.i, -2113929216
  %62 = tail call i32 @llvm.bswap.i32(i32 %or3.i.i.i) #14
  %63 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store volatile i32 %62, ptr %arrayidx.i.i.i, align 4
  %inc.i.i.i = add i32 %59, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 80, i32 %inc.i.i.i)
  %cmp.i.i.i = icmp eq i32 %inc.i.i.i, 80
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %sg_page.exit.i.i.if.end.i.i.i_crit_edge

sg_page.exit.i.i.if.end.i.i.i_crit_edge:          ; preds = %sg_page.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i.i

if.then.i.i.i:                                    ; preds = %sg_page.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %or8.i.i.i = lshr exact i32 %cond.i.i.i, 24
  %64 = or i32 %or8.i.i.i, 194
  %arrayidx10.i.i.i = getelementptr %struct.hifn_dma, ptr %55, i32 0, i32 1, i32 80
  %65 = ptrtoint ptr %arrayidx10.i.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store volatile i32 %64, ptr %arrayidx10.i.i.i, align 4
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i.i, %sg_page.exit.i.i.if.end.i.i.i_crit_edge
  %idx.0.i.i.i = phi i32 [ 0, %if.then.i.i.i ], [ %inc.i.i.i, %sg_page.exit.i.i.if.end.i.i.i_crit_edge ]
  %66 = ptrtoint ptr %srci.i.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store volatile i32 %idx.0.i.i.i, ptr %srci.i.i.i, align 4
  %srcu.i.i.i = getelementptr inbounds %struct.hifn_dma, ptr %55, i32 0, i32 11
  %67 = ptrtoint ptr %srcu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load volatile i32, ptr %srcu.i.i.i, align 4
  %inc13.i.i.i = add i32 %68, 1
  store volatile i32 %inc13.i.i.i, ptr %srcu.i.i.i, align 4
  %69 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %flags.i.i.i, align 4
  %and.i1.i.i = and i32 %70, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i1.i.i)
  %tobool14.not.i.i.i = icmp eq i32 %and.i1.i.i, 0
  br i1 %tobool14.not.i.i.i, label %if.then15.i.i.i, label %if.end.i.i.i.hifn_setup_src_desc.exit.i.i_crit_edge

if.end.i.i.i.hifn_setup_src_desc.exit.i.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %hifn_setup_src_desc.exit.i.i

if.then15.i.i.i:                                  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !212
  tail call void @arm_heavy_mb() #14
  %71 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %72, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i.i, i32 32768) #14, !srcloc !213
  %73 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %flags.i.i.i, align 4
  %or17.i.i.i = or i32 %74, 2
  store i32 %or17.i.i.i, ptr %flags.i.i.i, align 4
  br label %hifn_setup_src_desc.exit.i.i

hifn_setup_src_desc.exit.i.i:                     ; preds = %if.then15.i.i.i, %if.end.i.i.i.hifn_setup_src_desc.exit.i.i_crit_edge
  %incdec.ptr.i.i = getelementptr %struct.scatterlist, ptr %src.addr.070.i.i, i32 1
  br i1 %cmp1.not.i.i, label %hifn_setup_src_desc.exit.i.i.while.body6.i.i_crit_edge, label %hifn_setup_src_desc.exit.i.i.while.body.i.i_crit_edge

hifn_setup_src_desc.exit.i.i.while.body.i.i_crit_edge: ; preds = %hifn_setup_src_desc.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i.i

hifn_setup_src_desc.exit.i.i.while.body6.i.i_crit_edge: ; preds = %hifn_setup_src_desc.exit.i.i
  br label %while.body6.i.i

while.body6.i.i:                                  ; preds = %hifn_setup_dst_desc.exit.i.i.while.body6.i.i_crit_edge, %hifn_setup_src_desc.exit.i.i.while.body6.i.i_crit_edge
  %dst.addr.076.i.i = phi ptr [ %incdec.ptr60.i.i, %hifn_setup_dst_desc.exit.i.i.while.body6.i.i_crit_edge ], [ %41, %hifn_setup_src_desc.exit.i.i.while.body6.i.i_crit_edge ]
  %n.175.i.i = phi i32 [ %sub57.i.i, %hifn_setup_dst_desc.exit.i.i.while.body6.i.i_crit_edge ], [ %43, %hifn_setup_src_desc.exit.i.i.while.body6.i.i_crit_edge ]
  %t.072.i.i = phi ptr [ %incdec.ptr61.i.i, %hifn_setup_dst_desc.exit.i.i.while.body6.i.i_crit_edge ], [ %walk.i, %hifn_setup_src_desc.exit.i.i.while.body6.i.i_crit_edge ]
  %length7.i.i = getelementptr inbounds %struct.scatterlist, ptr %t.072.i.i, i32 0, i32 2
  %75 = ptrtoint ptr %length7.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %length7.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool8.not.i.i = icmp eq i32 %76, 0
  br i1 %tobool8.not.i.i, label %while.body6.i.i.do.body25.i.i_crit_edge, label %land.lhs.true.i.i

while.body6.i.i.do.body25.i.i_crit_edge:          ; preds = %while.body6.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body25.i.i

land.lhs.true.i.i:                                ; preds = %while.body6.i.i
  %77 = ptrtoint ptr %flags6.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %flags6.i, align 4
  %and.i.i = and i32 %78, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool10.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool10.not.i.i, label %land.lhs.true.i.i.do.body25.i.i_crit_edge, label %do.body.i.i

land.lhs.true.i.i.do.body25.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body25.i.i

do.body.i.i:                                      ; preds = %land.lhs.true.i.i
  %79 = ptrtoint ptr %t.072.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %t.072.i.i, align 4
  %and.i.i2.i.i = and i32 %80, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i2.i.i)
  %tobool.i.not.i3.i.i = icmp eq i32 %and.i.i2.i.i, 0
  br i1 %tobool.i.not.i3.i.i, label %sg_page.exit6.i.i, label %do.body2.i4.i.i, !prof !220

do.body2.i4.i.i:                                  ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #14, !srcloc !222
  unreachable

sg_page.exit6.i.i:                                ; preds = %do.body.i.i
  %and.i5.i.i = and i32 %80, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i5.i.i)
  %tobool12.not.i.i = icmp eq i32 %and.i5.i.i, 0
  br i1 %tobool12.not.i.i, label %do.body17.i.i, label %sg_page.exit6.i.i.if.end49.i.i_crit_edge, !prof !215

sg_page.exit6.i.i.if.end49.i.i_crit_edge:         ; preds = %sg_page.exit6.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end49.i.i

do.body17.i.i:                                    ; preds = %sg_page.exit6.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/crypto/hifn_795x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1346, 0\0A.popsection", ""() #14, !srcloc !231
  unreachable

do.body25.i.i:                                    ; preds = %land.lhs.true.i.i.do.body25.i.i_crit_edge, %while.body6.i.i.do.body25.i.i_crit_edge
  %81 = ptrtoint ptr %dst.addr.076.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %dst.addr.076.i.i, align 4
  %and.i.i12.i.i = and i32 %82, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i12.i.i)
  %tobool.i.not.i13.i.i = icmp eq i32 %and.i.i12.i.i, 0
  br i1 %tobool.i.not.i13.i.i, label %sg_page.exit16.i.i, label %do.body2.i14.i.i, !prof !220

do.body2.i14.i.i:                                 ; preds = %do.body25.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #14, !srcloc !222
  unreachable

sg_page.exit16.i.i:                               ; preds = %do.body25.i.i
  %and.i15.i.i = and i32 %82, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i15.i.i)
  %tobool27.not.i.i = icmp eq i32 %and.i15.i.i, 0
  br i1 %tobool27.not.i.i, label %do.body37.i.i, label %sg_page.exit21.i.i, !prof !215

do.body37.i.i:                                    ; preds = %sg_page.exit16.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/crypto/hifn_795x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1351, 0\0A.popsection", ""() #14, !srcloc !232
  unreachable

sg_page.exit21.i.i:                               ; preds = %sg_page.exit16.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %offset47.i.i = getelementptr inbounds %struct.scatterlist, ptr %dst.addr.076.i.i, i32 0, i32 1
  %83 = ptrtoint ptr %offset47.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %offset47.i.i, align 4
  %length48.i.i = getelementptr inbounds %struct.scatterlist, ptr %dst.addr.076.i.i, i32 0, i32 2
  br label %if.end49.i.i

if.end49.i.i:                                     ; preds = %sg_page.exit21.i.i, %sg_page.exit6.i.i.if.end49.i.i_crit_edge
  %dpage.0.in.i.i = phi i32 [ %and.i15.i.i, %sg_page.exit21.i.i ], [ %and.i5.i.i, %sg_page.exit6.i.i.if.end49.i.i_crit_edge ]
  %doff.0.i.i = phi i32 [ %84, %sg_page.exit21.i.i ], [ 0, %sg_page.exit6.i.i.if.end49.i.i_crit_edge ]
  %len.0.in.i.i = phi ptr [ %length48.i.i, %sg_page.exit21.i.i ], [ %length7.i.i, %sg_page.exit6.i.i.if.end49.i.i_crit_edge ]
  %dpage.0.i.i = inttoptr i32 %dpage.0.in.i.i to ptr
  %85 = ptrtoint ptr %len.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %len.0.i.i = load i32, ptr %len.0.in.i.i, align 4
  %86 = tail call i32 @llvm.umin.i32(i32 %len.0.i.i, i32 %n.175.i.i) #14
  %sub57.i.i = sub i32 %n.175.i.i, %86
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub57.i.i)
  %cmp58.not.i.i = icmp eq i32 %sub57.i.i, 0
  %87 = ptrtoint ptr %desc_virt.i.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %desc_virt.i.i.i, align 4
  %89 = ptrtoint ptr %pdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %pdev.i.i.i, align 4
  %dev1.i24.i.i = getelementptr inbounds %struct.pci_dev, ptr %90, i32 0, i32 44
  %call.i25.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev1.i24.i.i, ptr noundef nonnull %dpage.0.i.i, i32 noundef %doff.0.i.i, i32 noundef %86, i32 noundef 2, i32 noundef 0) #14
  %dsti.i.i.i = getelementptr inbounds %struct.hifn_dma, ptr %88, i32 0, i32 8
  %91 = ptrtoint ptr %dsti.i.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load volatile i32, ptr %dsti.i.i.i, align 4
  %93 = tail call i32 @llvm.bswap.i32(i32 %call.i25.i.i) #14
  %arrayidx.i26.i.i = getelementptr %struct.hifn_dma, ptr %88, i32 0, i32 2, i32 %92
  %p.i27.i.i = getelementptr %struct.hifn_dma, ptr %88, i32 0, i32 2, i32 %92, i32 1
  %94 = ptrtoint ptr %p.i27.i.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store volatile i32 %93, ptr %p.i27.i.i, align 4
  %cond.i29.i.i = select i1 %cmp58.not.i.i, i32 536870912, i32 0
  %or2.i30.i.i = or i32 %86, %cond.i29.i.i
  %or3.i31.i.i = or i32 %or2.i30.i.i, -2113929216
  %95 = tail call i32 @llvm.bswap.i32(i32 %or3.i31.i.i) #14
  %96 = ptrtoint ptr %arrayidx.i26.i.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store volatile i32 %95, ptr %arrayidx.i26.i.i, align 4
  %inc.i32.i.i = add i32 %92, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 80, i32 %inc.i32.i.i)
  %cmp.i33.i.i = icmp eq i32 %inc.i32.i.i, 80
  br i1 %cmp.i33.i.i, label %if.then.i36.i.i, label %if.end49.i.i.if.end.i42.i.i_crit_edge

if.end49.i.i.if.end.i42.i.i_crit_edge:            ; preds = %if.end49.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i42.i.i

if.then.i36.i.i:                                  ; preds = %if.end49.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %or8.i34.i.i = lshr exact i32 %cond.i29.i.i, 24
  %97 = or i32 %or8.i34.i.i, 194
  %arrayidx10.i35.i.i = getelementptr %struct.hifn_dma, ptr %88, i32 0, i32 2, i32 80
  %98 = ptrtoint ptr %arrayidx10.i35.i.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store volatile i32 %97, ptr %arrayidx10.i35.i.i, align 4
  br label %if.end.i42.i.i

if.end.i42.i.i:                                   ; preds = %if.then.i36.i.i, %if.end49.i.i.if.end.i42.i.i_crit_edge
  %idx.0.i37.i.i = phi i32 [ 0, %if.then.i36.i.i ], [ %inc.i32.i.i, %if.end49.i.i.if.end.i42.i.i_crit_edge ]
  %99 = ptrtoint ptr %dsti.i.i.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store volatile i32 %idx.0.i37.i.i, ptr %dsti.i.i.i, align 4
  %dstu.i.i.i = getelementptr inbounds %struct.hifn_dma, ptr %88, i32 0, i32 12
  %100 = ptrtoint ptr %dstu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load volatile i32, ptr %dstu.i.i.i, align 4
  %inc13.i38.i.i = add i32 %101, 1
  store volatile i32 %inc13.i38.i.i, ptr %dstu.i.i.i, align 4
  %102 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %flags.i.i.i, align 4
  %and.i40.i.i = and i32 %103, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i40.i.i)
  %tobool14.not.i41.i.i = icmp eq i32 %and.i40.i.i, 0
  br i1 %tobool14.not.i41.i.i, label %if.then15.i46.i.i, label %if.end.i42.i.i.hifn_setup_dst_desc.exit.i.i_crit_edge

if.end.i42.i.i.hifn_setup_dst_desc.exit.i.i_crit_edge: ; preds = %if.end.i42.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %hifn_setup_dst_desc.exit.i.i

if.then15.i46.i.i:                                ; preds = %if.end.i42.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !212
  tail call void @arm_heavy_mb() #14
  %104 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %add.ptr.i.i44.i.i = getelementptr i8, ptr %105, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i44.i.i, i32 -2147483648) #14, !srcloc !213
  %106 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %flags.i.i.i, align 4
  %or17.i45.i.i = or i32 %107, 4
  store i32 %or17.i45.i.i, ptr %flags.i.i.i, align 4
  br label %hifn_setup_dst_desc.exit.i.i

hifn_setup_dst_desc.exit.i.i:                     ; preds = %if.then15.i46.i.i, %if.end.i42.i.i.hifn_setup_dst_desc.exit.i.i_crit_edge
  %incdec.ptr60.i.i = getelementptr %struct.scatterlist, ptr %dst.addr.076.i.i, i32 1
  %incdec.ptr61.i.i = getelementptr %struct.scatterlist, ptr %t.072.i.i, i32 1
  br i1 %cmp58.not.i.i, label %hifn_setup_dst_desc.exit.i.i.while.end63.i.i_crit_edge, label %hifn_setup_dst_desc.exit.i.i.while.body6.i.i_crit_edge

hifn_setup_dst_desc.exit.i.i.while.body6.i.i_crit_edge: ; preds = %hifn_setup_dst_desc.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body6.i.i

hifn_setup_dst_desc.exit.i.i.while.end63.i.i_crit_edge: ; preds = %hifn_setup_dst_desc.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end63.i.i

while.end63.i.i:                                  ; preds = %hifn_setup_dst_desc.exit.i.i.while.end63.i.i_crit_edge, %if.end49.i.while.end63.i.i_crit_edge
  %desc_virt.i47.i.i = getelementptr inbounds %struct.hifn_device, ptr %9, i32 0, i32 4
  %108 = ptrtoint ptr %desc_virt.i47.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %desc_virt.i47.i.i, align 4
  %cmdi.i.i.i = getelementptr inbounds %struct.hifn_dma, ptr %109, i32 0, i32 6
  %110 = ptrtoint ptr %cmdi.i.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load volatile i32, ptr %cmdi.i.i.i, align 4
  %112 = load volatile i32, ptr %cmdi.i.i.i, align 4
  %arrayidx.i48.i.i = getelementptr %struct.hifn_dma, ptr %109, i32 0, i32 4, i32 %112
  %op.i.i.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 1, i32 2
  %113 = ptrtoint ptr %op.i.i.i to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %op.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %114)
  %115 = icmp ult i8 %114, 3
  br i1 %115, label %switch.lookup, label %while.end63.i.i.hifn_setup_cmd_desc.exit.i.i_crit_edge

while.end63.i.i.hifn_setup_cmd_desc.exit.i.i_crit_edge: ; preds = %while.end63.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %hifn_setup_cmd_desc.exit.i.i

switch.lookup:                                    ; preds = %while.end63.i.i
  %116 = sext i8 %114 to i32
  %switch.gep = getelementptr inbounds [3 x i16], ptr @switch.table.hifn_handle_req, i32 0, i32 %116
  %117 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load2_noabort(i32 %117)
  %switch.load = load i16, ptr %switch.gep, align 2
  %snum.i.i.i = getelementptr inbounds %struct.hifn_device, ptr %9, i32 0, i32 16
  %118 = ptrtoint ptr %snum.i.i.i to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %snum.i.i.i, align 8
  %120 = ptrtoint ptr %arrayidx.i48.i.i to i32
  call void @__asan_store2_noabort(i32 %120)
  store volatile i16 %switch.load, ptr %arrayidx.i48.i.i, align 2
  %conv.i.i.i.i = trunc i32 %43 to i16
  %121 = tail call i16 @llvm.bswap.i16(i16 %conv.i.i.i.i) #14
  %total_source_count.i.i.i.i = getelementptr inbounds %struct.hifn_base_command, ptr %arrayidx.i48.i.i, i32 0, i32 2
  %122 = ptrtoint ptr %total_source_count.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %122)
  store volatile i16 %121, ptr %total_source_count.i.i.i.i, align 2
  %total_dest_count.i.i.i.i = getelementptr inbounds %struct.hifn_base_command, ptr %arrayidx.i48.i.i, i32 0, i32 3
  %123 = ptrtoint ptr %total_dest_count.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %123)
  store volatile i16 %121, ptr %total_dest_count.i.i.i.i, align 2
  %conv4.i.i.i.i = zext i8 %119 to i32
  %124 = lshr i32 %43, 2
  %and5.i.i.i.i = and i32 %124, 49152
  %125 = lshr i32 %43, 4
  %and7.i.i.i.i = and i32 %125, 12288
  %or.i.i.i129.i = or i32 %and5.i.i.i.i, %and7.i.i.i.i
  %or8.i.i.i.i = or i32 %or.i.i.i129.i, %conv4.i.i.i.i
  %conv9.i.i.i.i = trunc i32 %or8.i.i.i.i to i16
  %126 = tail call i16 @llvm.bswap.i16(i16 %conv9.i.i.i.i) #14
  %session_num.i.i.i.i = getelementptr inbounds %struct.hifn_base_command, ptr %arrayidx.i48.i.i, i32 0, i32 1
  %127 = ptrtoint ptr %session_num.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %127)
  store volatile i16 %126, ptr %session_num.i.i.i.i, align 2
  %add.ptr.i.i.i = getelementptr i8, ptr %arrayidx.i48.i.i, i32 8
  %128 = ptrtoint ptr %op.i.i.i to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %op.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %129)
  %switch.i.i.i = icmp ult i8 %129, 2
  br i1 %switch.i.i.i, label %if.then.i51.i.i, label %switch.lookup.if.end96.i.i.i_crit_edge

switch.lookup.if.end96.i.i.i_crit_edge:           ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end96.i.i.i

if.then.i51.i.i:                                  ; preds = %switch.lookup
  %keysize.i.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %1, i32 1, i32 4, i32 20
  %130 = ptrtoint ptr %keysize.i.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %keysize.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %131)
  %tobool.not.i49.i.i = icmp eq i32 %131, 0
  %spec.select.i.i.i = select i1 %tobool.not.i49.i.i, i16 0, i16 2048
  %132 = ptrtoint ptr %__ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %__ctx.i.i, align 4
  %tobool14.not.i50.i.i = icmp eq ptr %133, null
  br i1 %tobool14.not.i50.i.i, label %if.then.i51.i.i.if.end22.i.i.i_crit_edge, label %land.lhs.true.i.i.i

if.then.i51.i.i.if.end22.i.i.i_crit_edge:         ; preds = %if.then.i51.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end22.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.then.i51.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %mode.i.i.i = getelementptr inbounds %struct.hifn_request_context, ptr %__ctx.i.i, i32 0, i32 4
  %134 = ptrtoint ptr %mode.i.i.i to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %mode.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %135)
  %cmp16.not.i.i.i = icmp eq i8 %135, 0
  %136 = or i16 %spec.select.i.i.i, 4096
  %spec.select1.i.i.i = select i1 %cmp16.not.i.i.i, i16 %spec.select.i.i.i, i16 %136
  br label %if.end22.i.i.i

if.end22.i.i.i:                                   ; preds = %land.lhs.true.i.i.i, %if.then.i51.i.i.if.end22.i.i.i_crit_edge
  %md.1.i.i.i = phi i16 [ %spec.select.i.i.i, %if.then.i51.i.i.if.end22.i.i.i_crit_edge ], [ %spec.select1.i.i.i, %land.lhs.true.i.i.i ]
  %mode23.i.i.i = getelementptr inbounds %struct.hifn_request_context, ptr %__ctx.i.i, i32 0, i32 4
  %137 = ptrtoint ptr %mode23.i.i.i to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %mode23.i.i.i, align 2
  %139 = zext i8 %138 to i64
  call void @__sanitizer_cov_trace_switch(i64 %139, ptr @__sancov_gen_cov_switch_values)
  switch i8 %138, label %if.end22.i.i.i.hifn_setup_cmd_desc.exit.i.i_crit_edge [
    i8 0, label %if.end22.i.i.i.sw.epilog42.i.i.i_crit_edge
    i8 1, label %sw.bb29.i.i.i
    i8 2, label %sw.bb33.i.i.i
    i8 3, label %sw.bb37.i.i.i
  ]

if.end22.i.i.i.sw.epilog42.i.i.i_crit_edge:       ; preds = %if.end22.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog42.i.i.i

if.end22.i.i.i.hifn_setup_cmd_desc.exit.i.i_crit_edge: ; preds = %if.end22.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %hifn_setup_cmd_desc.exit.i.i

sw.bb29.i.i.i:                                    ; preds = %if.end22.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %140 = or i16 %md.1.i.i.i, 8
  br label %sw.epilog42.i.i.i

sw.bb33.i.i.i:                                    ; preds = %if.end22.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %141 = or i16 %md.1.i.i.i, 16
  br label %sw.epilog42.i.i.i

sw.bb37.i.i.i:                                    ; preds = %if.end22.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %142 = or i16 %md.1.i.i.i, 24
  br label %sw.epilog42.i.i.i

sw.epilog42.i.i.i:                                ; preds = %sw.bb37.i.i.i, %sw.bb33.i.i.i, %sw.bb29.i.i.i, %if.end22.i.i.i.sw.epilog42.i.i.i_crit_edge
  %md.2.i.i.i = phi i16 [ %142, %sw.bb37.i.i.i ], [ %141, %sw.bb33.i.i.i ], [ %140, %sw.bb29.i.i.i ], [ %md.1.i.i.i, %if.end22.i.i.i.sw.epilog42.i.i.i_crit_edge ]
  %type.i.i.i = getelementptr inbounds %struct.hifn_request_context, ptr %__ctx.i.i, i32 0, i32 3
  %143 = ptrtoint ptr %type.i.i.i to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %type.i.i.i, align 1
  %145 = zext i8 %144 to i64
  call void @__sanitizer_cov_trace_switch(i64 %145, ptr @__sancov_gen_cov_switch_values.88)
  switch i8 %144, label %sw.epilog42.i.i.i.hifn_setup_cmd_desc.exit.i.i_crit_edge [
    i8 0, label %sw.bb44.i.i.i
    i8 1, label %sw.bb53.i.i.i
    i8 2, label %sw.bb62.i.i.i
    i8 3, label %sw.bb71.i.i.i
    i8 4, label %sw.bb80.i.i.i
  ]

sw.epilog42.i.i.i.hifn_setup_cmd_desc.exit.i.i_crit_edge: ; preds = %sw.epilog42.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %hifn_setup_cmd_desc.exit.i.i

sw.bb44.i.i.i:                                    ; preds = %sw.epilog42.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %131)
  %cmp46.not.i.i.i = icmp eq i32 %131, 16
  br i1 %cmp46.not.i.i.i, label %if.end49.i.i.i, label %sw.bb44.i.i.i.hifn_setup_cmd_desc.exit.i.i_crit_edge

sw.bb44.i.i.i.hifn_setup_cmd_desc.exit.i.i_crit_edge: ; preds = %sw.bb44.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %hifn_setup_cmd_desc.exit.i.i

if.end49.i.i.i:                                   ; preds = %sw.bb44.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %146 = or i16 %md.2.i.i.i, 3
  br label %sw.epilog90.i.i.i

sw.bb53.i.i.i:                                    ; preds = %sw.epilog42.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %131)
  %cmp55.not.i.i.i = icmp eq i32 %131, 24
  br i1 %cmp55.not.i.i.i, label %if.end58.i.i.i, label %sw.bb53.i.i.i.hifn_setup_cmd_desc.exit.i.i_crit_edge

sw.bb53.i.i.i.hifn_setup_cmd_desc.exit.i.i_crit_edge: ; preds = %sw.bb53.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %hifn_setup_cmd_desc.exit.i.i

if.end58.i.i.i:                                   ; preds = %sw.bb53.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %147 = or i16 %md.2.i.i.i, 515
  br label %sw.epilog90.i.i.i

sw.bb62.i.i.i:                                    ; preds = %sw.epilog42.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %131)
  %cmp64.not.i.i.i = icmp eq i32 %131, 32
  br i1 %cmp64.not.i.i.i, label %if.end67.i.i.i, label %sw.bb62.i.i.i.hifn_setup_cmd_desc.exit.i.i_crit_edge

sw.bb62.i.i.i.hifn_setup_cmd_desc.exit.i.i_crit_edge: ; preds = %sw.bb62.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %hifn_setup_cmd_desc.exit.i.i

if.end67.i.i.i:                                   ; preds = %sw.bb62.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %148 = or i16 %md.2.i.i.i, 1027
  br label %sw.epilog90.i.i.i

sw.bb71.i.i.i:                                    ; preds = %sw.epilog42.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %131)
  %cmp73.not.i.i.i = icmp eq i32 %131, 24
  br i1 %cmp73.not.i.i.i, label %if.end76.i.i.i, label %sw.bb71.i.i.i.hifn_setup_cmd_desc.exit.i.i_crit_edge

sw.bb71.i.i.i.hifn_setup_cmd_desc.exit.i.i_crit_edge: ; preds = %sw.bb71.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %hifn_setup_cmd_desc.exit.i.i

if.end76.i.i.i:                                   ; preds = %sw.bb71.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %149 = or i16 %md.2.i.i.i, 1
  br label %sw.epilog90.i.i.i

sw.bb80.i.i.i:                                    ; preds = %sw.epilog42.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %131)
  %cmp82.not.i.i.i = icmp eq i32 %131, 8
  br i1 %cmp82.not.i.i.i, label %sw.bb80.i.i.i.sw.epilog90.i.i.i_crit_edge, label %sw.bb80.i.i.i.hifn_setup_cmd_desc.exit.i.i_crit_edge

sw.bb80.i.i.i.hifn_setup_cmd_desc.exit.i.i_crit_edge: ; preds = %sw.bb80.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %hifn_setup_cmd_desc.exit.i.i

sw.bb80.i.i.i.sw.epilog90.i.i.i_crit_edge:        ; preds = %sw.bb80.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog90.i.i.i

sw.epilog90.i.i.i:                                ; preds = %sw.bb80.i.i.i.sw.epilog90.i.i.i_crit_edge, %if.end76.i.i.i, %if.end67.i.i.i, %if.end58.i.i.i, %if.end49.i.i.i
  %md.3.i.i.i = phi i16 [ %149, %if.end76.i.i.i ], [ %148, %if.end67.i.i.i ], [ %147, %if.end58.i.i.i ], [ %146, %if.end49.i.i.i ], [ %md.2.i.i.i, %sw.bb80.i.i.i.sw.epilog90.i.i.i_crit_edge ]
  %ivsize.i.i.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 1, i32 1
  %150 = ptrtoint ptr %ivsize.i.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %ivsize.i.i.i, align 4
  %152 = ptrtoint ptr %desc_virt.i47.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %desc_virt.i47.i.i, align 4
  %source_count.i.i.i.i = getelementptr i8, ptr %arrayidx.i48.i.i, i32 12
  %154 = ptrtoint ptr %source_count.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %154)
  store volatile i16 %121, ptr %source_count.i.i.i.i, align 2
  %155 = trunc i32 %124 to i16
  %156 = and i16 %155, -16384
  %conv3.i.i.i.i = or i16 %md.3.i.i.i, %156
  %157 = tail call i16 @llvm.bswap.i16(i16 %conv3.i.i.i.i) #14
  %158 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_store2_noabort(i32 %158)
  store volatile i16 %157, ptr %add.ptr.i.i.i, align 2
  %header_skip.i.i.i.i = getelementptr i8, ptr %arrayidx.i48.i.i, i32 10
  %159 = ptrtoint ptr %header_skip.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %159)
  store volatile i16 0, ptr %header_skip.i.i.i.i, align 2
  %reserved.i.i.i.i = getelementptr i8, ptr %arrayidx.i48.i.i, i32 14
  %160 = ptrtoint ptr %reserved.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %160)
  store volatile i16 0, ptr %reserved.i.i.i.i, align 2
  %add.ptr.i.i52.i.i = getelementptr i8, ptr %arrayidx.i48.i.i, i32 16
  %cmdu.i.i.i.i = getelementptr inbounds %struct.hifn_dma, ptr %153, i32 0, i32 10
  %161 = ptrtoint ptr %cmdu.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load volatile i32, ptr %cmdu.i.i.i.i, align 4
  %inc.i.i.i.i = add i32 %162, 1
  store volatile i32 %inc.i.i.i.i, ptr %cmdu.i.i.i.i, align 4
  %163 = load volatile i32, ptr %cmdu.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %163)
  %cmp.i.i.i.i = icmp sgt i32 %163, 1
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %sw.epilog90.i.i.i.if.end10.i.i.i.i_crit_edge

sw.epilog90.i.i.i.if.end10.i.i.i.i_crit_edge:     ; preds = %sw.epilog90.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end10.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %sw.epilog90.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %dmareg.i.i.i.i = getelementptr inbounds %struct.hifn_device, ptr %9, i32 0, i32 6
  %164 = ptrtoint ptr %dmareg.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %dmareg.i.i.i.i, align 4
  %or6.i.i.i.i = or i32 %165, 4
  store i32 %or6.i.i.i.i, ptr %dmareg.i.i.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !212
  tail call void @arm_heavy_mb() #14
  %arrayidx.i.i.i.i.i = getelementptr %struct.hifn_device, ptr %9, i32 0, i32 3, i32 1
  %166 = ptrtoint ptr %arrayidx.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %arrayidx.i.i.i.i.i, align 4
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %167, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i.i.i, i32 %or6.i.i.i.i) #14, !srcloc !213
  br label %if.end10.i.i.i.i

if.end10.i.i.i.i:                                 ; preds = %if.then.i.i.i.i, %sw.epilog90.i.i.i.if.end10.i.i.i.i_crit_edge
  %168 = call ptr @memcpy(ptr %add.ptr.i.i52.i.i, ptr %__crt_ctx.i, i32 %131)
  %add.ptr9.i.i.i.i = getelementptr i8, ptr %add.ptr.i.i52.i.i, i32 %131
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %151)
  %tobool11.not.i.i.i.i = icmp eq i32 %151, 0
  br i1 %tobool11.not.i.i.i.i, label %if.end10.i.i.i.i.cleanup.i.i.i_crit_edge, label %if.then12.i.i.i.i

if.end10.i.i.i.i.cleanup.i.i.i_crit_edge:         ; preds = %if.end10.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.i.i.i

if.then12.i.i.i.i:                                ; preds = %if.end10.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %169 = call ptr @memcpy(ptr %add.ptr9.i.i.i.i, ptr %133, i32 %151)
  %add.ptr13.i.i.i.i = getelementptr i8, ptr %add.ptr9.i.i.i.i, i32 %151
  br label %cleanup.i.i.i

cleanup.i.i.i:                                    ; preds = %if.then12.i.i.i.i, %if.end10.i.i.i.i.cleanup.i.i.i_crit_edge
  %buf_pos.1.i.i.i.i = phi ptr [ %add.ptr13.i.i.i.i, %if.then12.i.i.i.i ], [ %add.ptr9.i.i.i.i, %if.end10.i.i.i.i.cleanup.i.i.i_crit_edge ]
  %sub.ptr.lhs.cast.i.i.i.i = ptrtoint ptr %buf_pos.1.i.i.i.i to i32
  %sub.ptr.rhs.cast.i.i.i.i = ptrtoint ptr %add.ptr.i.i.i to i32
  %sub.ptr.sub.i.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i.i, %sub.ptr.rhs.cast.i.i.i.i
  %conv16.i.i.i.i = and i32 %sub.ptr.sub.i.i.i.i, 65535
  %add.ptr95.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 %conv16.i.i.i.i
  br label %if.end96.i.i.i

if.end96.i.i.i:                                   ; preds = %cleanup.i.i.i, %switch.lookup.if.end96.i.i.i_crit_edge
  %buf_pos.1.i.i.i = phi ptr [ %add.ptr95.i.i.i, %cleanup.i.i.i ], [ %add.ptr.i.i.i, %switch.lookup.if.end96.i.i.i_crit_edge ]
  %arrayidx97.i.i.i = getelementptr %struct.hifn_device, ptr %9, i32 0, i32 7, i32 %111
  %170 = ptrtoint ptr %arrayidx97.i.i.i to i32
  call void @__asan_store4_noabort(i32 %170)
  store ptr %req, ptr %arrayidx97.i.i.i, align 4
  %171 = ptrtoint ptr %started.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %started.i, align 4
  %inc.i53.i.i = add i32 %172, 1
  store i32 %inc.i53.i.i, ptr %started.i, align 4
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %buf_pos.1.i.i.i to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %arrayidx.i48.i.i to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  %or100.i.i.i = or i32 %sub.ptr.sub.i.i.i, -1577058304
  %173 = tail call i32 @llvm.bswap.i32(i32 %or100.i.i.i) #14
  %174 = ptrtoint ptr %cmdi.i.i.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load volatile i32, ptr %cmdi.i.i.i, align 4
  %arrayidx102.i.i.i = getelementptr [25 x %struct.hifn_desc], ptr %109, i32 0, i32 %175
  %176 = ptrtoint ptr %arrayidx102.i.i.i to i32
  call void @__asan_store4_noabort(i32 %176)
  store volatile i32 %173, ptr %arrayidx102.i.i.i, align 4
  %177 = load volatile i32, ptr %cmdi.i.i.i, align 4
  %inc104.i.i.i = add i32 %177, 1
  store volatile i32 %inc104.i.i.i, ptr %cmdi.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %inc104.i.i.i)
  %cmp105.i.i.i = icmp eq i32 %inc104.i.i.i, 24
  %178 = ptrtoint ptr %cmdi.i.i.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load volatile i32, ptr %cmdi.i.i.i, align 4
  br i1 %cmp105.i.i.i, label %if.then107.i.i.i, label %if.else.i.i.i

if.then107.i.i.i:                                 ; preds = %if.end96.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx110.i.i.i = getelementptr [25 x %struct.hifn_desc], ptr %109, i32 0, i32 %179
  %180 = ptrtoint ptr %arrayidx110.i.i.i to i32
  call void @__asan_store4_noabort(i32 %180)
  store volatile i32 226, ptr %arrayidx110.i.i.i, align 4
  %181 = ptrtoint ptr %cmdi.i.i.i to i32
  call void @__asan_store4_noabort(i32 %181)
  store volatile i32 0, ptr %cmdi.i.i.i, align 4
  br label %if.end118.i.i.i

if.else.i.i.i:                                    ; preds = %if.end96.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i.i.i = add i32 %179, -1
  %arrayidx115.i.i.i = getelementptr [25 x %struct.hifn_desc], ptr %109, i32 0, i32 %sub.i.i.i
  %182 = ptrtoint ptr %arrayidx115.i.i.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load volatile i32, ptr %arrayidx115.i.i.i, align 4
  %or117.i.i.i = or i32 %183, 128
  store volatile i32 %or117.i.i.i, ptr %arrayidx115.i.i.i, align 4
  br label %if.end118.i.i.i

if.end118.i.i.i:                                  ; preds = %if.else.i.i.i, %if.then107.i.i.i
  %flags.i54.i.i = getelementptr inbounds %struct.hifn_device, ptr %9, i32 0, i32 9
  %184 = ptrtoint ptr %flags.i54.i.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %flags.i54.i.i, align 4
  %and.i55.i.i = and i32 %185, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i55.i.i)
  %tobool119.not.i.i.i = icmp eq i32 %and.i55.i.i, 0
  br i1 %tobool119.not.i.i.i, label %if.then120.i.i.i, label %if.end118.i.i.i.hifn_setup_cmd_desc.exit.i.i_crit_edge

if.end118.i.i.i.hifn_setup_cmd_desc.exit.i.i_crit_edge: ; preds = %if.end118.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %hifn_setup_cmd_desc.exit.i.i

if.then120.i.i.i:                                 ; preds = %if.end118.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !212
  tail call void @arm_heavy_mb() #14
  %arrayidx.i.i56.i.i = getelementptr %struct.hifn_device, ptr %9, i32 0, i32 3, i32 1
  %186 = ptrtoint ptr %arrayidx.i.i56.i.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %arrayidx.i.i56.i.i, align 4
  %add.ptr.i3.i.i.i = getelementptr i8, ptr %187, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3.i.i.i, i32 128) #14, !srcloc !213
  %188 = ptrtoint ptr %flags.i54.i.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %flags.i54.i.i, align 4
  %or122.i.i.i = or i32 %189, 1
  store i32 %or122.i.i.i, ptr %flags.i54.i.i, align 4
  br label %hifn_setup_cmd_desc.exit.i.i

hifn_setup_cmd_desc.exit.i.i:                     ; preds = %if.then120.i.i.i, %if.end118.i.i.i.hifn_setup_cmd_desc.exit.i.i_crit_edge, %sw.bb80.i.i.i.hifn_setup_cmd_desc.exit.i.i_crit_edge, %sw.bb71.i.i.i.hifn_setup_cmd_desc.exit.i.i_crit_edge, %sw.bb62.i.i.i.hifn_setup_cmd_desc.exit.i.i_crit_edge, %sw.bb53.i.i.i.hifn_setup_cmd_desc.exit.i.i_crit_edge, %sw.bb44.i.i.i.hifn_setup_cmd_desc.exit.i.i_crit_edge, %sw.epilog42.i.i.i.hifn_setup_cmd_desc.exit.i.i_crit_edge, %if.end22.i.i.i.hifn_setup_cmd_desc.exit.i.i_crit_edge, %while.end63.i.i.hifn_setup_cmd_desc.exit.i.i_crit_edge
  %190 = ptrtoint ptr %desc_virt.i47.i.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %desc_virt.i47.i.i, align 4
  %resi.i.i.i = getelementptr inbounds %struct.hifn_dma, ptr %191, i32 0, i32 9
  %192 = ptrtoint ptr %resi.i.i.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load volatile i32, ptr %resi.i.i.i, align 4
  %arrayidx.i58.i.i = getelementptr %struct.hifn_dma, ptr %191, i32 0, i32 3, i32 %193
  %194 = ptrtoint ptr %arrayidx.i58.i.i to i32
  call void @__asan_store4_noabort(i32 %194)
  store volatile i32 201326752, ptr %arrayidx.i58.i.i, align 4
  %195 = load volatile i32, ptr %resi.i.i.i, align 4
  %inc.i59.i.i = add i32 %195, 1
  store volatile i32 %inc.i59.i.i, ptr %resi.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %inc.i59.i.i)
  %cmp.i60.i.i = icmp eq i32 %inc.i59.i.i, 24
  br i1 %cmp.i60.i.i, label %if.then.i61.i.i, label %hifn_setup_cmd_desc.exit.i.i.if.end.i65.i.i_crit_edge

hifn_setup_cmd_desc.exit.i.i.if.end.i65.i.i_crit_edge: ; preds = %hifn_setup_cmd_desc.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i65.i.i

if.then.i61.i.i:                                  ; preds = %hifn_setup_cmd_desc.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx3.i.i.i = getelementptr %struct.hifn_dma, ptr %191, i32 0, i32 3, i32 24
  %196 = ptrtoint ptr %arrayidx3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %196)
  store volatile i32 226, ptr %arrayidx3.i.i.i, align 4
  %197 = ptrtoint ptr %resi.i.i.i to i32
  call void @__asan_store4_noabort(i32 %197)
  store volatile i32 0, ptr %resi.i.i.i, align 4
  br label %if.end.i65.i.i

if.end.i65.i.i:                                   ; preds = %if.then.i61.i.i, %hifn_setup_cmd_desc.exit.i.i.if.end.i65.i.i_crit_edge
  %resu.i.i.i = getelementptr inbounds %struct.hifn_dma, ptr %191, i32 0, i32 13
  %198 = ptrtoint ptr %resu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load volatile i32, ptr %resu.i.i.i, align 4
  %inc6.i.i.i = add i32 %199, 1
  store volatile i32 %inc6.i.i.i, ptr %resu.i.i.i, align 4
  %flags.i62.i.i = getelementptr inbounds %struct.hifn_device, ptr %9, i32 0, i32 9
  %200 = ptrtoint ptr %flags.i62.i.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %flags.i62.i.i, align 4
  %and.i63.i.i = and i32 %201, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i63.i.i)
  %tobool.not.i64.i.i = icmp eq i32 %and.i63.i.i, 0
  br i1 %tobool.not.i64.i.i, label %if.then7.i.i.i, label %if.end.i65.i.i.if.end.thread26_crit_edge

if.end.i65.i.i.if.end.thread26_crit_edge:         ; preds = %if.end.i65.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.thread26

if.then7.i.i.i:                                   ; preds = %if.end.i65.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !212
  tail call void @arm_heavy_mb() #14
  %arrayidx.i.i66.i.i = getelementptr %struct.hifn_device, ptr %9, i32 0, i32 3, i32 1
  %202 = ptrtoint ptr %arrayidx.i.i66.i.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %arrayidx.i.i66.i.i, align 4
  %add.ptr.i.i67.i.i = getelementptr i8, ptr %203, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i67.i.i, i32 8388608) #14, !srcloc !213
  %204 = ptrtoint ptr %flags.i62.i.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %flags.i62.i.i, align 4
  %or.i.i.i = or i32 %205, 8
  store i32 %or.i.i.i, ptr %flags.i62.i.i, align 4
  br label %if.end.thread26

if.end.thread26:                                  ; preds = %if.then7.i.i.i, %if.end.i65.i.i.if.end.thread26_crit_edge
  %snum.i = getelementptr inbounds %struct.hifn_device, ptr %9, i32 0, i32 16
  %206 = ptrtoint ptr %snum.i to i32
  call void @__asan_load1_noabort(i32 %206)
  %207 = load i8, ptr %snum.i, align 8
  %inc56.i = add i8 %207, 1
  store i8 %inc56.i, ptr %snum.i, align 8
  %active.i = getelementptr inbounds %struct.hifn_device, ptr %9, i32 0, i32 10
  %208 = ptrtoint ptr %active.i to i32
  call void @__asan_store4_noabort(i32 %208)
  store i32 5, ptr %active.i, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call43.i) #14
  br label %if.end15

err_out.i:                                        ; preds = %do.body38.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call43.i) #14
  br label %if.end

if.end:                                           ; preds = %err_out.i, %if.end31.i.if.end_crit_edge, %land.lhs.true4.i.if.end_crit_edge
  %err.1.i = phi i32 [ -11, %err_out.i ], [ -22, %land.lhs.true4.i.if.end_crit_edge ], [ %call33.i, %if.end31.i.if.end_crit_edge ]
  %pdev.i = getelementptr inbounds %struct.hifn_device, ptr %9, i32 0, i32 2
  %209 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %pdev.i, align 4
  %dev64.i = getelementptr inbounds %struct.pci_dev, ptr %210, i32 0, i32 44
  %211 = ptrtoint ptr %__ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %__ctx.i.i, align 4
  %ivsize66.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 1, i32 1
  %213 = ptrtoint ptr %ivsize66.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %ivsize66.i, align 4
  %keysize.i = getelementptr inbounds %struct.crypto_tfm, ptr %1, i32 1, i32 4, i32 20
  %215 = ptrtoint ptr %keysize.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %keysize.i, align 4
  %mode67.i = getelementptr inbounds %struct.hifn_request_context, ptr %__ctx.i.i, i32 0, i32 4
  %217 = ptrtoint ptr %mode67.i to i32
  call void @__asan_load1_noabort(i32 %217)
  %218 = load i8, ptr %mode67.i, align 2
  %conv68.i = zext i8 %218 to i32
  %op.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 1, i32 2
  %219 = ptrtoint ptr %op.i to i32
  call void @__asan_load1_noabort(i32 %219)
  %220 = load i8, ptr %op.i, align 4
  %conv69.i = zext i8 %220 to i32
  %type.i = getelementptr inbounds %struct.hifn_request_context, ptr %__ctx.i.i, i32 0, i32 3
  %221 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %221)
  %222 = load i8, ptr %type.i, align 1
  %conv70.i = zext i8 %222 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev64.i, ptr noundef nonnull @.str.33, ptr noundef %212, i32 noundef %214, ptr noundef %__crt_ctx.i, i32 noundef %216, i32 noundef %conv68.i, i32 noundef %conv69.i, i32 noundef %conv70.i, i32 noundef %err.1.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %err.1.i)
  %cmp4 = icmp eq i32 %err.1.i, -11
  br i1 %cmp4, label %if.end.if.then5_crit_edge, label %if.end.if.end15_crit_edge

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15

if.end.if.then5_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then5

if.then5:                                         ; preds = %if.end.if.then5_crit_edge, %entry.if.then5_crit_edge
  %lock = getelementptr inbounds %struct.hifn_device, ptr %3, i32 0, i32 8
  %call9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #14
  %queue = getelementptr inbounds %struct.hifn_device, ptr %3, i32 0, i32 18
  %call13 = tail call i32 @crypto_enqueue_request(ptr noundef %queue, ptr noundef %base) #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call9) #14
  br label %if.end15

if.end15:                                         ; preds = %if.then5, %if.end.if.end15_crit_edge, %if.end.thread26
  %err.1 = phi i32 [ %call13, %if.then5 ], [ %err.1.i, %if.end.if.end15_crit_edge ], [ 0, %if.end.thread26 ]
  ret i32 %err.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_enqueue_request(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hifn_cipher_walk(ptr nocapture noundef readonly %req, ptr nocapture noundef %w) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %req, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not182 = icmp eq i32 %1, 0
  br i1 %tobool.not182, label %entry.cleanup71_crit_edge, label %while.body.lr.ph

entry.cleanup71_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup71

while.body.lr.ph:                                 ; preds = %entry
  %num = getelementptr inbounds %struct.hifn_cipher_walk, ptr %w, i32 0, i32 2
  %flags = getelementptr inbounds %struct.hifn_cipher_walk, ptr %w, i32 0, i32 1
  %dst2 = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 3
  br label %while.body

while.body:                                       ; preds = %if.end69.while.body_crit_edge, %while.body.lr.ph
  %tidx.0187 = phi i32 [ 0, %while.body.lr.ph ], [ %inc70, %if.end69.while.body_crit_edge ]
  %idx.0184 = phi i32 [ 0, %while.body.lr.ph ], [ %idx.2, %if.end69.while.body_crit_edge ]
  %nbytes.0183 = phi i32 [ %1, %while.body.lr.ph ], [ %nbytes.4, %if.end69.while.body_crit_edge ]
  %2 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %idx.0184, i32 %3)
  %cmp.not = icmp slt i32 %idx.0184, %3
  br i1 %cmp.not, label %while.body.if.end_crit_edge, label %land.lhs.true

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true:                                    ; preds = %while.body
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup71_crit_edge

land.lhs.true.cleanup71_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup71

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %while.body.if.end_crit_edge
  %6 = ptrtoint ptr %dst2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dst2, align 4
  %arrayidx = getelementptr %struct.scatterlist, ptr %7, i32 %idx.0184
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hifn_cipher_walk.__UNIQUE_ID_ddebug264, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hifn_cipher_walk, %if.then6)) #14
          to label %do.end [label %if.then6], !srcloc !211

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %length = getelementptr %struct.scatterlist, ptr %7, i32 %idx.0184, i32 2
  %8 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %length, align 4
  %offset7 = getelementptr %struct.scatterlist, ptr %7, i32 %idx.0184, i32 1
  %10 = ptrtoint ptr %offset7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %offset7, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hifn_cipher_walk.__UNIQUE_ID_ddebug264, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.36, i32 noundef %9, i32 noundef %11, i32 noundef 0, i32 noundef %nbytes.0183) #14
  br label %do.end

do.end:                                           ; preds = %if.then6, %if.end
  %offset9 = getelementptr %struct.scatterlist, ptr %7, i32 %idx.0184, i32 1
  %12 = ptrtoint ptr %offset9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %offset9, align 4
  %and10 = and i32 %13, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %cmp11 = icmp eq i32 %and10, 0
  br i1 %cmp11, label %lor.lhs.false, label %do.end.if.then17_crit_edge

do.end.if.then17_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then17

lor.lhs.false:                                    ; preds = %do.end
  %length12 = getelementptr %struct.scatterlist, ptr %7, i32 %idx.0184, i32 2
  %14 = ptrtoint ptr %length12 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %length12, align 4
  %and13 = and i32 %15, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %cmp14 = icmp eq i32 %and13, 0
  br i1 %cmp14, label %if.else60, label %lor.lhs.false.if.then17_crit_edge

lor.lhs.false.if.then17_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then17

if.then17:                                        ; preds = %lor.lhs.false.if.then17_crit_edge, %do.end.if.then17_crit_edge
  %length18 = getelementptr %struct.scatterlist, ptr %7, i32 %idx.0184, i32 2
  %16 = ptrtoint ptr %length18 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %length18, align 4
  %18 = tail call i32 @llvm.umin.i32(i32 %17, i32 %nbytes.0183)
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %18)
  %cmp.i = icmp ugt i32 %18, 4096
  br i1 %cmp.i, label %if.then17.cleanup71_crit_edge, label %while.cond.preheader.i

if.then17.cleanup71_crit_edge:                    ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup71

while.cond.preheader.i:                           ; preds = %if.then17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not46.i = icmp eq i32 %18, 0
  br i1 %tobool.not46.i, label %while.cond.preheader.i.if.end25_crit_edge, label %while.cond.preheader.i.while.body.i_crit_edge

while.cond.preheader.i.while.body.i_crit_edge:    ; preds = %while.cond.preheader.i
  br label %while.body.i

while.cond.preheader.i.if.end25_crit_edge:        ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end25

while.body.i:                                     ; preds = %do.end.i.while.body.i_crit_edge, %while.cond.preheader.i.while.body.i_crit_edge
  %dst.addr.051.i = phi ptr [ %incdec.ptr.i, %do.end.i.while.body.i_crit_edge ], [ %arrayidx, %while.cond.preheader.i.while.body.i_crit_edge ]
  %size.addr.050.i = phi i32 [ %sub.i, %do.end.i.while.body.i_crit_edge ], [ %18, %while.cond.preheader.i.while.body.i_crit_edge ]
  %idx.049.i = phi i32 [ %inc.i, %do.end.i.while.body.i_crit_edge ], [ 0, %while.cond.preheader.i.while.body.i_crit_edge ]
  %nbytes.048.i = phi i32 [ %sub10.i, %do.end.i.while.body.i_crit_edge ], [ %nbytes.0183, %while.cond.preheader.i.while.body.i_crit_edge ]
  %drest.047.i = phi i32 [ %sub9.i, %do.end.i.while.body.i_crit_edge ], [ 4096, %while.cond.preheader.i.while.body.i_crit_edge ]
  %19 = tail call i32 @llvm.umin.i32(i32 %drest.047.i, i32 %size.addr.050.i) #14
  %length.i = getelementptr inbounds %struct.scatterlist, ptr %dst.addr.051.i, i32 0, i32 2
  %20 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %length.i, align 4
  %22 = tail call i32 @llvm.umin.i32(i32 %19, i32 %21) #14
  %sub.i = sub i32 %size.addr.050.i, %22
  %sub9.i = sub i32 %drest.047.i, %22
  %sub10.i = sub i32 %nbytes.048.i, %22
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @skcipher_add.__UNIQUE_ID_ddebug263, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hifn_cipher_walk, %if.then15.i)) #14
          to label %do.end.i [label %if.then15.i], !srcloc !211

if.then15.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @skcipher_add.__UNIQUE_ID_ddebug263, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.42, i32 noundef %22, i32 noundef %sub.i, i32 noundef %sub9.i, i32 noundef %sub10.i) #14
  br label %do.end.i

do.end.i:                                         ; preds = %if.then15.i, %while.body.i
  %incdec.ptr.i = getelementptr %struct.scatterlist, ptr %dst.addr.051.i, i32 1
  %inc.i = add i32 %idx.049.i, 1
  %tobool.not.i = icmp eq i32 %sub.i, 0
  br i1 %tobool.not.i, label %skcipher_add.exit, label %do.end.i.while.body.i_crit_edge

do.end.i.while.body.i_crit_edge:                  ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i

skcipher_add.exit:                                ; preds = %do.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inc.i)
  %cmp23 = icmp slt i32 %inc.i, 0
  br i1 %cmp23, label %skcipher_add.exit.cleanup71_crit_edge, label %skcipher_add.exit.if.end25_crit_edge

skcipher_add.exit.if.end25_crit_edge:             ; preds = %skcipher_add.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end25

skcipher_add.exit.cleanup71_crit_edge:            ; preds = %skcipher_add.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup71

if.end25:                                         ; preds = %skcipher_add.exit.if.end25_crit_edge, %while.cond.preheader.i.if.end25_crit_edge
  %retval.0.i123172 = phi i32 [ %inc.i, %skcipher_add.exit.if.end25_crit_edge ], [ 0, %while.cond.preheader.i.if.end25_crit_edge ]
  %dlen.0171 = phi i32 [ %sub9.i, %skcipher_add.exit.if.end25_crit_edge ], [ 4096, %while.cond.preheader.i.if.end25_crit_edge ]
  %nbytes.1170 = phi i32 [ %sub10.i, %skcipher_add.exit.if.end25_crit_edge ], [ %nbytes.0183, %while.cond.preheader.i.if.end25_crit_edge ]
  %add = add i32 %retval.0.i123172, %idx.0184
  %and27 = and i32 %18, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %dlen.0171, i32 %nbytes.1170)
  %cmp28 = icmp ult i32 %dlen.0171, %nbytes.1170
  br i1 %cmp28, label %if.then29, label %while.cond.preheader.i128

if.then29:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #16
  %add30 = add i32 %nbytes.1170, %and27
  %call35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.36, i32 noundef %dlen.0171, i32 noundef %add30, i32 noundef %18, i32 noundef 0) #17
  %call40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.36) #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/crypto/hifn_795x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1498, 0\0A.popsection", ""() #14, !srcloc !233
  unreachable

while.cond.preheader.i128:                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nbytes.1170)
  %tobool.not46.i127 = icmp eq i32 %nbytes.1170, 0
  br i1 %tobool.not46.i127, label %while.cond.preheader.i128.cleanup_crit_edge, label %while.body.i138.preheader

while.cond.preheader.i128.cleanup_crit_edge:      ; preds = %while.cond.preheader.i128
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

while.body.i138.preheader:                        ; preds = %while.cond.preheader.i128
  %23 = ptrtoint ptr %dst2 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dst2, align 4
  %arrayidx50 = getelementptr %struct.scatterlist, ptr %24, i32 %add
  br label %while.body.i138

while.body.i138:                                  ; preds = %do.end.i143.while.body.i138_crit_edge, %while.body.i138.preheader
  %dst.addr.051.i129 = phi ptr [ %incdec.ptr.i140, %do.end.i143.while.body.i138_crit_edge ], [ %arrayidx50, %while.body.i138.preheader ]
  %size.addr.050.i130 = phi i32 [ %sub.i135, %do.end.i143.while.body.i138_crit_edge ], [ %nbytes.1170, %while.body.i138.preheader ]
  %idx.049.i131 = phi i32 [ %inc.i141, %do.end.i143.while.body.i138_crit_edge ], [ 0, %while.body.i138.preheader ]
  %nbytes.048.i132 = phi i32 [ %sub10.i137, %do.end.i143.while.body.i138_crit_edge ], [ %nbytes.1170, %while.body.i138.preheader ]
  %drest.047.i133 = phi i32 [ %sub9.i136, %do.end.i143.while.body.i138_crit_edge ], [ %dlen.0171, %while.body.i138.preheader ]
  %25 = tail call i32 @llvm.umin.i32(i32 %drest.047.i133, i32 %size.addr.050.i130) #14
  %length.i134 = getelementptr inbounds %struct.scatterlist, ptr %dst.addr.051.i129, i32 0, i32 2
  %26 = ptrtoint ptr %length.i134 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %length.i134, align 4
  %28 = tail call i32 @llvm.umin.i32(i32 %25, i32 %27) #14
  %sub.i135 = sub i32 %size.addr.050.i130, %28
  %sub9.i136 = sub i32 %drest.047.i133, %28
  %sub10.i137 = sub i32 %nbytes.048.i132, %28
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @skcipher_add.__UNIQUE_ID_ddebug263, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hifn_cipher_walk, %if.then15.i139)) #14
          to label %do.end.i143 [label %if.then15.i139], !srcloc !211

if.then15.i139:                                   ; preds = %while.body.i138
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @skcipher_add.__UNIQUE_ID_ddebug263, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.42, i32 noundef %28, i32 noundef %sub.i135, i32 noundef %sub9.i136, i32 noundef %sub10.i137) #14
  br label %do.end.i143

do.end.i143:                                      ; preds = %if.then15.i139, %while.body.i138
  %incdec.ptr.i140 = getelementptr %struct.scatterlist, ptr %dst.addr.051.i129, i32 1
  %inc.i141 = add i32 %idx.049.i131, 1
  %tobool.not.i142 = icmp eq i32 %sub.i135, 0
  br i1 %tobool.not.i142, label %skcipher_add.exit149, label %do.end.i143.while.body.i138_crit_edge

do.end.i143.while.body.i138_crit_edge:            ; preds = %do.end.i143
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i138

skcipher_add.exit149:                             ; preds = %do.end.i143
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inc.i141)
  %cmp52 = icmp slt i32 %inc.i141, 0
  br i1 %cmp52, label %skcipher_add.exit149.cleanup71_crit_edge, label %skcipher_add.exit149.cleanup_crit_edge

skcipher_add.exit149.cleanup_crit_edge:           ; preds = %skcipher_add.exit149
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

skcipher_add.exit149.cleanup71_crit_edge:         ; preds = %skcipher_add.exit149
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup71

cleanup:                                          ; preds = %skcipher_add.exit149.cleanup_crit_edge, %while.cond.preheader.i128.cleanup_crit_edge
  %idx.0.lcssa.i146177 = phi i32 [ %inc.i141, %skcipher_add.exit149.cleanup_crit_edge ], [ 0, %while.cond.preheader.i128.cleanup_crit_edge ]
  %nbytes.0.lcssa.i145176 = phi i32 [ %sub10.i137, %skcipher_add.exit149.cleanup_crit_edge ], [ 0, %while.cond.preheader.i128.cleanup_crit_edge ]
  %and26 = and i32 %18, -4
  %add47 = add i32 %nbytes.1170, %and27
  %add48 = add i32 %add47, %and26
  %add55 = add i32 %idx.0.lcssa.i146177, %add
  %length57 = getelementptr [16 x %struct.scatterlist], ptr %w, i32 0, i32 %idx.0184, i32 2
  %29 = ptrtoint ptr %length57 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %add48, ptr %length57, align 4
  %offset58 = getelementptr [16 x %struct.scatterlist], ptr %w, i32 0, i32 %idx.0184, i32 1
  %30 = ptrtoint ptr %offset58 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %offset58, align 4
  br label %if.end69

if.else60:                                        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  %31 = tail call i32 @llvm.usub.sat.i32(i32 %nbytes.0183, i32 %15)
  %inc = add i32 %idx.0184, 1
  br label %if.end69

if.end69:                                         ; preds = %if.else60, %cleanup
  %nbytes.4 = phi i32 [ %31, %if.else60 ], [ %nbytes.0.lcssa.i145176, %cleanup ]
  %idx.2 = phi i32 [ %inc, %if.else60 ], [ %add55, %cleanup ]
  %inc70 = add i32 %tidx.0187, 1
  %tobool.not = icmp eq i32 %nbytes.4, 0
  br i1 %tobool.not, label %if.end69.cleanup71_crit_edge, label %if.end69.while.body_crit_edge

if.end69.while.body_crit_edge:                    ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

if.end69.cleanup71_crit_edge:                     ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup71

cleanup71:                                        ; preds = %if.end69.cleanup71_crit_edge, %skcipher_add.exit149.cleanup71_crit_edge, %skcipher_add.exit.cleanup71_crit_edge, %if.then17.cleanup71_crit_edge, %land.lhs.true.cleanup71_crit_edge, %entry.cleanup71_crit_edge
  %retval.3 = phi i32 [ 0, %entry.cleanup71_crit_edge ], [ -22, %if.then17.cleanup71_crit_edge ], [ %inc.i141, %skcipher_add.exit149.cleanup71_crit_edge ], [ %inc.i, %skcipher_add.exit.cleanup71_crit_edge ], [ %inc70, %if.end69.cleanup71_crit_edge ], [ -22, %land.lhs.true.cleanup71_crit_edge ]
  ret i32 %retval.3
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_table(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hifn_init_dma(ptr nocapture noundef readonly %dev) unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %desc_virt = getelementptr inbounds %struct.hifn_device, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %desc_virt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %desc_virt, align 4
  %desc_dma = getelementptr inbounds %struct.hifn_device, ptr %dev, i32 0, i32 5
  %2 = ptrtoint ptr %desc_dma to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %desc_dma, align 8
  %4 = add i32 %3, 1696
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %p = getelementptr [25 x %struct.hifn_desc], ptr %1, i32 0, i32 0, i32 1
  %6 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile i32 %5, ptr %p, align 4
  %add.1 = add i32 %3, 2044
  %7 = tail call i32 @llvm.bswap.i32(i32 %add.1)
  %p.1 = getelementptr [25 x %struct.hifn_desc], ptr %1, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %p.1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile i32 %7, ptr %p.1, align 4
  %add.2 = add i32 %3, 2392
  %9 = tail call i32 @llvm.bswap.i32(i32 %add.2)
  %p.2 = getelementptr [25 x %struct.hifn_desc], ptr %1, i32 0, i32 2, i32 1
  %10 = ptrtoint ptr %p.2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile i32 %9, ptr %p.2, align 4
  %add.3 = add i32 %3, 2740
  %11 = tail call i32 @llvm.bswap.i32(i32 %add.3)
  %p.3 = getelementptr [25 x %struct.hifn_desc], ptr %1, i32 0, i32 3, i32 1
  %12 = ptrtoint ptr %p.3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile i32 %11, ptr %p.3, align 4
  %add.4 = add i32 %3, 3088
  %13 = tail call i32 @llvm.bswap.i32(i32 %add.4)
  %p.4 = getelementptr [25 x %struct.hifn_desc], ptr %1, i32 0, i32 4, i32 1
  %14 = ptrtoint ptr %p.4 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile i32 %13, ptr %p.4, align 4
  %add.5 = add i32 %3, 3436
  %15 = tail call i32 @llvm.bswap.i32(i32 %add.5)
  %p.5 = getelementptr [25 x %struct.hifn_desc], ptr %1, i32 0, i32 5, i32 1
  %16 = ptrtoint ptr %p.5 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile i32 %15, ptr %p.5, align 4
  %add.6 = add i32 %3, 3784
  %17 = tail call i32 @llvm.bswap.i32(i32 %add.6)
  %p.6 = getelementptr [25 x %struct.hifn_desc], ptr %1, i32 0, i32 6, i32 1
  %18 = ptrtoint ptr %p.6 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile i32 %17, ptr %p.6, align 4
  %add.7 = add i32 %3, 4132
  %19 = tail call i32 @llvm.bswap.i32(i32 %add.7)
  %p.7 = getelementptr [25 x %struct.hifn_desc], ptr %1, i32 0, i32 7, i32 1
  %20 = ptrtoint ptr %p.7 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile i32 %19, ptr %p.7, align 4
  %add.8 = add i32 %3, 4480
  %21 = tail call i32 @llvm.bswap.i32(i32 %add.8)
  %p.8 = getelementptr [25 x %struct.hifn_desc], ptr %1, i32 0, i32 8, i32 1
  %22 = ptrtoint ptr %p.8 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile i32 %21, ptr %p.8, align 4
  %add.9 = add i32 %3, 4828
  %23 = tail call i32 @llvm.bswap.i32(i32 %add.9)
  %p.9 = getelementptr [25 x %struct.hifn_desc], ptr %1, i32 0, i32 9, i32 1
  %24 = ptrtoint ptr %p.9 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile i32 %23, ptr %p.9, align 4
  %add.10 = add i32 %3, 5176
  %25 = tail call i32 @llvm.bswap.i32(i32 %add.10)
  %p.10 = getelementptr [25 x %struct.hifn_desc], ptr %1, i32 0, i32 10, i32 1
  %26 = ptrtoint ptr %p.10 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile i32 %25, ptr %p.10, align 4
  %add.11 = add i32 %3, 5524
  %27 = tail call i32 @llvm.bswap.i32(i32 %add.11)
  %p.11 = getelementptr [25 x %struct.hifn_desc], ptr %1, i32 0, i32 11, i32 1
  %28 = ptrtoint ptr %p.11 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile i32 %27, ptr %p.11, align 4
  %add.12 = add i32 %3, 5872
  %29 = tail call i32 @llvm.bswap.i32(i32 %add.12)
  %p.12 = getelementptr [25 x %struct.hifn_desc], ptr %1, i32 0, i32 12, i32 1
  %30 = ptrtoint ptr %p.12 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile i32 %29, ptr %p.12, align 4
  %add.13 = add i32 %3, 6220
  %31 = tail call i32 @llvm.bswap.i32(i32 %add.13)
  %p.13 = getelementptr [25 x %struct.hifn_desc], ptr %1, i32 0, i32 13, i32 1
  %32 = ptrtoint ptr %p.13 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile i32 %31, ptr %p.13, align 4
  %add.14 = add i32 %3, 6568
  %33 = tail call i32 @llvm.bswap.i32(i32 %add.14)
  %p.14 = getelementptr [25 x %struct.hifn_desc], ptr %1, i32 0, i32 14, i32 1
  %34 = ptrtoint ptr %p.14 to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile i32 %33, ptr %p.14, align 4
  %add.15 = add i32 %3, 6916
  %35 = tail call i32 @llvm.bswap.i32(i32 %add.15)
  %p.15 = getelementptr [25 x %struct.hifn_desc], ptr %1, i32 0, i32 15, i32 1
  %36 = ptrtoint ptr %p.15 to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile i32 %35, ptr %p.15, align 4
  %add.16 = add i32 %3, 7264
  %37 = tail call i32 @llvm.bswap.i32(i32 %add.16)
  %p.16 = getelementptr [25 x %struct.hifn_desc], ptr %1, i32 0, i32 16, i32 1
  %38 = ptrtoint ptr %p.16 to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile i32 %37, ptr %p.16, align 4
  %add.17 = add i32 %3, 7612
  %39 = tail call i32 @llvm.bswap.i32(i32 %add.17)
  %p.17 = getelementptr [25 x %struct.hifn_desc], ptr %1, i32 0, i32 17, i32 1
  %40 = ptrtoint ptr %p.17 to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile i32 %39, ptr %p.17, align 4
  %add.18 = add i32 %3, 7960
  %41 = tail call i32 @llvm.bswap.i32(i32 %add.18)
  %p.18 = getelementptr [25 x %struct.hifn_desc], ptr %1, i32 0, i32 18, i32 1
  %42 = ptrtoint ptr %p.18 to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile i32 %41, ptr %p.18, align 4
  %add.19 = add i32 %3, 8308
  %43 = tail call i32 @llvm.bswap.i32(i32 %add.19)
  %p.19 = getelementptr [25 x %struct.hifn_desc], ptr %1, i32 0, i32 19, i32 1
  %44 = ptrtoint ptr %p.19 to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile i32 %43, ptr %p.19, align 4
  %add.20 = add i32 %3, 8656
  %45 = tail call i32 @llvm.bswap.i32(i32 %add.20)
  %p.20 = getelementptr [25 x %struct.hifn_desc], ptr %1, i32 0, i32 20, i32 1
  %46 = ptrtoint ptr %p.20 to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile i32 %45, ptr %p.20, align 4
  %add.21 = add i32 %3, 9004
  %47 = tail call i32 @llvm.bswap.i32(i32 %add.21)
  %p.21 = getelementptr [25 x %struct.hifn_desc], ptr %1, i32 0, i32 21, i32 1
  %48 = ptrtoint ptr %p.21 to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile i32 %47, ptr %p.21, align 4
  %add.22 = add i32 %3, 9352
  %49 = tail call i32 @llvm.bswap.i32(i32 %add.22)
  %p.22 = getelementptr [25 x %struct.hifn_desc], ptr %1, i32 0, i32 22, i32 1
  %50 = ptrtoint ptr %p.22 to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile i32 %49, ptr %p.22, align 4
  %add.23 = add i32 %3, 9700
  %51 = tail call i32 @llvm.bswap.i32(i32 %add.23)
  %p.23 = getelementptr [25 x %struct.hifn_desc], ptr %1, i32 0, i32 23, i32 1
  %52 = ptrtoint ptr %p.23 to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile i32 %51, ptr %p.23, align 4
  %53 = add i32 %3, 10048
  %54 = tail call i32 @llvm.bswap.i32(i32 %53)
  %p6 = getelementptr %struct.hifn_dma, ptr %1, i32 0, i32 3, i32 0, i32 1
  %55 = ptrtoint ptr %p6 to i32
  call void @__asan_store4_noabort(i32 %55)
  store volatile i32 %54, ptr %p6, align 4
  %add4.1 = add i32 %3, 10088
  %56 = tail call i32 @llvm.bswap.i32(i32 %add4.1)
  %p6.1 = getelementptr %struct.hifn_dma, ptr %1, i32 0, i32 3, i32 1, i32 1
  %57 = ptrtoint ptr %p6.1 to i32
  call void @__asan_store4_noabort(i32 %57)
  store volatile i32 %56, ptr %p6.1, align 4
  %add4.2 = add i32 %3, 10128
  %58 = tail call i32 @llvm.bswap.i32(i32 %add4.2)
  %p6.2 = getelementptr %struct.hifn_dma, ptr %1, i32 0, i32 3, i32 2, i32 1
  %59 = ptrtoint ptr %p6.2 to i32
  call void @__asan_store4_noabort(i32 %59)
  store volatile i32 %58, ptr %p6.2, align 4
  %add4.3 = add i32 %3, 10168
  %60 = tail call i32 @llvm.bswap.i32(i32 %add4.3)
  %p6.3 = getelementptr %struct.hifn_dma, ptr %1, i32 0, i32 3, i32 3, i32 1
  %61 = ptrtoint ptr %p6.3 to i32
  call void @__asan_store4_noabort(i32 %61)
  store volatile i32 %60, ptr %p6.3, align 4
  %add4.4 = add i32 %3, 10208
  %62 = tail call i32 @llvm.bswap.i32(i32 %add4.4)
  %p6.4 = getelementptr %struct.hifn_dma, ptr %1, i32 0, i32 3, i32 4, i32 1
  %63 = ptrtoint ptr %p6.4 to i32
  call void @__asan_store4_noabort(i32 %63)
  store volatile i32 %62, ptr %p6.4, align 4
  %add4.5 = add i32 %3, 10248
  %64 = tail call i32 @llvm.bswap.i32(i32 %add4.5)
  %p6.5 = getelementptr %struct.hifn_dma, ptr %1, i32 0, i32 3, i32 5, i32 1
  %65 = ptrtoint ptr %p6.5 to i32
  call void @__asan_store4_noabort(i32 %65)
  store volatile i32 %64, ptr %p6.5, align 4
  %add4.6 = add i32 %3, 10288
  %66 = tail call i32 @llvm.bswap.i32(i32 %add4.6)
  %p6.6 = getelementptr %struct.hifn_dma, ptr %1, i32 0, i32 3, i32 6, i32 1
  %67 = ptrtoint ptr %p6.6 to i32
  call void @__asan_store4_noabort(i32 %67)
  store volatile i32 %66, ptr %p6.6, align 4
  %add4.7 = add i32 %3, 10328
  %68 = tail call i32 @llvm.bswap.i32(i32 %add4.7)
  %p6.7 = getelementptr %struct.hifn_dma, ptr %1, i32 0, i32 3, i32 7, i32 1
  %69 = ptrtoint ptr %p6.7 to i32
  call void @__asan_store4_noabort(i32 %69)
  store volatile i32 %68, ptr %p6.7, align 4
  %add4.8 = add i32 %3, 10368
  %70 = tail call i32 @llvm.bswap.i32(i32 %add4.8)
  %p6.8 = getelementptr %struct.hifn_dma, ptr %1, i32 0, i32 3, i32 8, i32 1
  %71 = ptrtoint ptr %p6.8 to i32
  call void @__asan_store4_noabort(i32 %71)
  store volatile i32 %70, ptr %p6.8, align 4
  %add4.9 = add i32 %3, 10408
  %72 = tail call i32 @llvm.bswap.i32(i32 %add4.9)
  %p6.9 = getelementptr %struct.hifn_dma, ptr %1, i32 0, i32 3, i32 9, i32 1
  %73 = ptrtoint ptr %p6.9 to i32
  call void @__asan_store4_noabort(i32 %73)
  store volatile i32 %72, ptr %p6.9, align 4
  %add4.10 = add i32 %3, 10448
  %74 = tail call i32 @llvm.bswap.i32(i32 %add4.10)
  %p6.10 = getelementptr %struct.hifn_dma, ptr %1, i32 0, i32 3, i32 10, i32 1
  %75 = ptrtoint ptr %p6.10 to i32
  call void @__asan_store4_noabort(i32 %75)
  store volatile i32 %74, ptr %p6.10, align 4
  %add4.11 = add i32 %3, 10488
  %76 = tail call i32 @llvm.bswap.i32(i32 %add4.11)
  %p6.11 = getelementptr %struct.hifn_dma, ptr %1, i32 0, i32 3, i32 11, i32 1
  %77 = ptrtoint ptr %p6.11 to i32
  call void @__asan_store4_noabort(i32 %77)
  store volatile i32 %76, ptr %p6.11, align 4
  %add4.12 = add i32 %3, 10528
  %78 = tail call i32 @llvm.bswap.i32(i32 %add4.12)
  %p6.12 = getelementptr %struct.hifn_dma, ptr %1, i32 0, i32 3, i32 12, i32 1
  %79 = ptrtoint ptr %p6.12 to i32
  call void @__asan_store4_noabort(i32 %79)
  store volatile i32 %78, ptr %p6.12, align 4
  %add4.13 = add i32 %3, 10568
  %80 = tail call i32 @llvm.bswap.i32(i32 %add4.13)
  %p6.13 = getelementptr %struct.hifn_dma, ptr %1, i32 0, i32 3, i32 13, i32 1
  %81 = ptrtoint ptr %p6.13 to i32
  call void @__asan_store4_noabort(i32 %81)
  store volatile i32 %80, ptr %p6.13, align 4
  %add4.14 = add i32 %3, 10608
  %82 = tail call i32 @llvm.bswap.i32(i32 %add4.14)
  %p6.14 = getelementptr %struct.hifn_dma, ptr %1, i32 0, i32 3, i32 14, i32 1
  %83 = ptrtoint ptr %p6.14 to i32
  call void @__asan_store4_noabort(i32 %83)
  store volatile i32 %82, ptr %p6.14, align 4
  %add4.15 = add i32 %3, 10648
  %84 = tail call i32 @llvm.bswap.i32(i32 %add4.15)
  %p6.15 = getelementptr %struct.hifn_dma, ptr %1, i32 0, i32 3, i32 15, i32 1
  %85 = ptrtoint ptr %p6.15 to i32
  call void @__asan_store4_noabort(i32 %85)
  store volatile i32 %84, ptr %p6.15, align 4
  %add4.16 = add i32 %3, 10688
  %86 = tail call i32 @llvm.bswap.i32(i32 %add4.16)
  %p6.16 = getelementptr %struct.hifn_dma, ptr %1, i32 0, i32 3, i32 16, i32 1
  %87 = ptrtoint ptr %p6.16 to i32
  call void @__asan_store4_noabort(i32 %87)
  store volatile i32 %86, ptr %p6.16, align 4
  %add4.17 = add i32 %3, 10728
  %88 = tail call i32 @llvm.bswap.i32(i32 %add4.17)
  %p6.17 = getelementptr %struct.hifn_dma, ptr %1, i32 0, i32 3, i32 17, i32 1
  %89 = ptrtoint ptr %p6.17 to i32
  call void @__asan_store4_noabort(i32 %89)
  store volatile i32 %88, ptr %p6.17, align 4
  %add4.18 = add i32 %3, 10768
  %90 = tail call i32 @llvm.bswap.i32(i32 %add4.18)
  %p6.18 = getelementptr %struct.hifn_dma, ptr %1, i32 0, i32 3, i32 18, i32 1
  %91 = ptrtoint ptr %p6.18 to i32
  call void @__asan_store4_noabort(i32 %91)
  store volatile i32 %90, ptr %p6.18, align 4
  %add4.19 = add i32 %3, 10808
  %92 = tail call i32 @llvm.bswap.i32(i32 %add4.19)
  %p6.19 = getelementptr %struct.hifn_dma, ptr %1, i32 0, i32 3, i32 19, i32 1
  %93 = ptrtoint ptr %p6.19 to i32
  call void @__asan_store4_noabort(i32 %93)
  store volatile i32 %92, ptr %p6.19, align 4
  %add4.20 = add i32 %3, 10848
  %94 = tail call i32 @llvm.bswap.i32(i32 %add4.20)
  %p6.20 = getelementptr %struct.hifn_dma, ptr %1, i32 0, i32 3, i32 20, i32 1
  %95 = ptrtoint ptr %p6.20 to i32
  call void @__asan_store4_noabort(i32 %95)
  store volatile i32 %94, ptr %p6.20, align 4
  %add4.21 = add i32 %3, 10888
  %96 = tail call i32 @llvm.bswap.i32(i32 %add4.21)
  %p6.21 = getelementptr %struct.hifn_dma, ptr %1, i32 0, i32 3, i32 21, i32 1
  %97 = ptrtoint ptr %p6.21 to i32
  call void @__asan_store4_noabort(i32 %97)
  store volatile i32 %96, ptr %p6.21, align 4
  %add4.22 = add i32 %3, 10928
  %98 = tail call i32 @llvm.bswap.i32(i32 %add4.22)
  %p6.22 = getelementptr %struct.hifn_dma, ptr %1, i32 0, i32 3, i32 22, i32 1
  %99 = ptrtoint ptr %p6.22 to i32
  call void @__asan_store4_noabort(i32 %99)
  store volatile i32 %98, ptr %p6.22, align 4
  %add4.23 = add i32 %3, 10968
  %100 = tail call i32 @llvm.bswap.i32(i32 %add4.23)
  %p6.23 = getelementptr %struct.hifn_dma, ptr %1, i32 0, i32 3, i32 23, i32 1
  %101 = ptrtoint ptr %p6.23 to i32
  call void @__asan_store4_noabort(i32 %101)
  store volatile i32 %100, ptr %p6.23, align 4
  %102 = tail call i32 @llvm.bswap.i32(i32 %3)
  %p13 = getelementptr [25 x %struct.hifn_desc], ptr %1, i32 0, i32 24, i32 1
  %103 = ptrtoint ptr %p13 to i32
  call void @__asan_store4_noabort(i32 %103)
  store volatile i32 %102, ptr %p13, align 4
  %add14 = add i32 %3, 200
  %104 = tail call i32 @llvm.bswap.i32(i32 %add14)
  %p16 = getelementptr %struct.hifn_dma, ptr %1, i32 0, i32 1, i32 80, i32 1
  %105 = ptrtoint ptr %p16 to i32
  call void @__asan_store4_noabort(i32 %105)
  store volatile i32 %104, ptr %p16, align 4
  %add17 = add i32 %3, 848
  %106 = tail call i32 @llvm.bswap.i32(i32 %add17)
  %p19 = getelementptr %struct.hifn_dma, ptr %1, i32 0, i32 2, i32 80, i32 1
  %107 = ptrtoint ptr %p19 to i32
  call void @__asan_store4_noabort(i32 %107)
  store volatile i32 %106, ptr %p19, align 4
  %add20 = add i32 %3, 1496
  %108 = tail call i32 @llvm.bswap.i32(i32 %add20)
  %p23 = getelementptr %struct.hifn_dma, ptr %1, i32 0, i32 3, i32 24, i32 1
  %109 = ptrtoint ptr %p23 to i32
  call void @__asan_store4_noabort(i32 %109)
  store volatile i32 %108, ptr %p23, align 4
  %resu = getelementptr inbounds %struct.hifn_dma, ptr %1, i32 0, i32 13
  %110 = ptrtoint ptr %resu to i32
  call void @__asan_store4_noabort(i32 %110)
  store volatile i32 0, ptr %resu, align 4
  %dstu = getelementptr inbounds %struct.hifn_dma, ptr %1, i32 0, i32 12
  %111 = ptrtoint ptr %dstu to i32
  call void @__asan_store4_noabort(i32 %111)
  store volatile i32 0, ptr %dstu, align 4
  %srcu = getelementptr inbounds %struct.hifn_dma, ptr %1, i32 0, i32 11
  %112 = ptrtoint ptr %srcu to i32
  call void @__asan_store4_noabort(i32 %112)
  store volatile i32 0, ptr %srcu, align 4
  %cmdu = getelementptr inbounds %struct.hifn_dma, ptr %1, i32 0, i32 10
  %113 = ptrtoint ptr %cmdu to i32
  call void @__asan_store4_noabort(i32 %113)
  store volatile i32 0, ptr %cmdu, align 4
  %resi = getelementptr inbounds %struct.hifn_dma, ptr %1, i32 0, i32 9
  %114 = ptrtoint ptr %resi to i32
  call void @__asan_store4_noabort(i32 %114)
  store volatile i32 0, ptr %resi, align 4
  %dsti = getelementptr inbounds %struct.hifn_dma, ptr %1, i32 0, i32 8
  %115 = ptrtoint ptr %dsti to i32
  call void @__asan_store4_noabort(i32 %115)
  store volatile i32 0, ptr %dsti, align 4
  %srci = getelementptr inbounds %struct.hifn_dma, ptr %1, i32 0, i32 7
  %116 = ptrtoint ptr %srci to i32
  call void @__asan_store4_noabort(i32 %116)
  store volatile i32 0, ptr %srci, align 4
  %cmdi = getelementptr inbounds %struct.hifn_dma, ptr %1, i32 0, i32 6
  %117 = ptrtoint ptr %cmdi to i32
  call void @__asan_store4_noabort(i32 %117)
  store volatile i32 0, ptr %cmdi, align 4
  %cmdk = getelementptr inbounds %struct.hifn_dma, ptr %1, i32 0, i32 14
  %118 = call ptr @memset(ptr %cmdk, i32 0, i32 16)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hifn_init_registers(ptr nocapture noundef %dev) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %desc_dma = getelementptr inbounds %struct.hifn_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %desc_dma to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %desc_dma, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !214
  tail call void @arm_heavy_mb() #14
  %bar.i = getelementptr inbounds %struct.hifn_device, ptr %dev, i32 0, i32 3
  %2 = ptrtoint ptr %bar.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bar.i, align 8
  %add.ptr.i = getelementptr i8, ptr %3, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 2) #14, !srcloc !213
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !214
  tail call void @arm_heavy_mb() #14
  %4 = ptrtoint ptr %bar.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bar.i, align 8
  %add.ptr.i29 = getelementptr i8, ptr %5, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29, i32 1024) #14, !srcloc !213
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !214
  tail call void @arm_heavy_mb() #14
  %6 = ptrtoint ptr %bar.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bar.i, align 8
  %add.ptr.i31 = getelementptr i8, ptr %7, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i31, i32 512) #14, !srcloc !213
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !212
  tail call void @arm_heavy_mb() #14
  %arrayidx.i = getelementptr %struct.hifn_device, ptr %dev, i32 0, i32 3, i32 1
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i32 = getelementptr i8, ptr %9, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i32, i32 %1) #14, !srcloc !213
  %add1 = add i32 %1, 200
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !212
  tail call void @arm_heavy_mb() #14
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i34 = getelementptr i8, ptr %11, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i34, i32 %add1) #14, !srcloc !213
  %add2 = add i32 %1, 848
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !212
  tail call void @arm_heavy_mb() #14
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i36 = getelementptr i8, ptr %13, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i36, i32 %add2) #14, !srcloc !213
  %add3 = add i32 %1, 1496
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !212
  tail call void @arm_heavy_mb() #14
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i38 = getelementptr i8, ptr %15, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i38, i32 %add3) #14, !srcloc !213
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 429496000) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !212
  tail call void @arm_heavy_mb() #14
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i40 = getelementptr i8, ptr %18, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i40, i32 -1094796097) #14, !srcloc !213
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i42 = getelementptr i8, ptr %20, i32 64
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i42) #14, !srcloc !217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !218
  %dmareg = getelementptr inbounds %struct.hifn_device, ptr %dev, i32 0, i32 6
  %22 = ptrtoint ptr %dmareg to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %dmareg, align 4
  %or = and i32 %23, -573710374
  %and = or i32 %or, 573710369
  store i32 %and, ptr %dmareg, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !212
  tail call void @arm_heavy_mb() #14
  %24 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i44 = getelementptr i8, ptr %25, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i44, i32 %and) #14, !srcloc !213
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i46 = getelementptr i8, ptr %27, i32 68
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i46) #14, !srcloc !217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !218
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !214
  tail call void @arm_heavy_mb() #14
  %29 = ptrtoint ptr %bar.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %bar.i, align 8
  %add.ptr.i48 = getelementptr i8, ptr %30, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i48, i32 66370) #14, !srcloc !213
  %bcmp.i = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(3) @hifn_pll_ref, ptr noundef nonnull dereferenceable(3) @.str.52, i32 3) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %cmp.i = icmp eq i32 %bcmp.i, 0
  %..i = select i1 %cmp.i, i32 1101, i32 1100
  %31 = load i8, ptr getelementptr inbounds ([7 x i8], ptr @hifn_pll_ref, i32 0, i32 3), align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %cmp2.not.i = icmp eq i8 %31, 0
  br i1 %cmp2.not.i, label %if.end8.thread.i, label %if.end8.i

if.end8.thread.i:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %pdev.i = getelementptr inbounds %struct.hifn_device, ptr %dev, i32 0, i32 2
  %32 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pdev.i, align 4
  %dev7.i = getelementptr inbounds %struct.pci_dev, ptr %33, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev7.i, ptr noundef nonnull @.str.53, i32 noundef 66, ptr noundef nonnull @hifn_pll_ref) #17
  %or1052.i = or i32 %..i, 2048
  br label %35

if.end8.i:                                        ; preds = %entry
  %call5.i = tail call i32 @simple_strtoul(ptr noundef getelementptr inbounds ([7 x i8], ptr @hifn_pll_ref, i32 0, i32 3), ptr noundef null, i32 noundef 10) #14
  %div.i = udiv i32 266, %call5.i
  %34 = shl nuw nsw i32 %div.i, 10
  %sub.i = and i32 %34, 522240
  %shl.i = add nsw i32 %sub.i, -2048
  %or10.i = or i32 %shl.i, %..i
  call void @__sanitizer_cov_trace_const_cmp4(i32 29, i32 %call5.i)
  %cmp11.i = icmp ugt i32 %call5.i, 29
  %or16.i = or i32 %or10.i, 65536
  br i1 %cmp11.i, label %if.end8.i._crit_edge, label %if.end8.i.hifn_init_pll.exit_crit_edge

if.end8.i.hifn_init_pll.exit_crit_edge:           ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %hifn_init_pll.exit

if.end8.i._crit_edge:                             ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %35

35:                                               ; preds = %if.end8.i._crit_edge, %if.end8.thread.i
  %or1059.i = phi i32 [ %or1052.i, %if.end8.thread.i ], [ %or10.i, %if.end8.i._crit_edge ]
  %div58.i = phi i32 [ 4, %if.end8.thread.i ], [ %div.i, %if.end8.i._crit_edge ]
  %freq.056.i = phi i32 [ 66, %if.end8.thread.i ], [ %call5.i, %if.end8.i._crit_edge ]
  br label %hifn_init_pll.exit

hifn_init_pll.exit:                               ; preds = %35, %if.end8.i.hifn_init_pll.exit_crit_edge
  %div57.i = phi i32 [ %div58.i, %35 ], [ %div.i, %if.end8.i.hifn_init_pll.exit_crit_edge ]
  %freq.055.i = phi i32 [ %freq.056.i, %35 ], [ %call5.i, %if.end8.i.hifn_init_pll.exit_crit_edge ]
  %36 = phi i32 [ %or1059.i, %35 ], [ %or16.i, %if.end8.i.hifn_init_pll.exit_crit_edge ]
  %or20.i = or i32 %36, 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !212
  tail call void @arm_heavy_mb() #14
  %37 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %38, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %or20.i) #14, !srcloc !213
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %39 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %39(i32 noundef 214748000) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %40 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %40(i32 noundef 214748000) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %41 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %41(i32 noundef 214748000) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %42 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %42(i32 noundef 214748000) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %43 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %43(i32 noundef 214748000) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %44 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %44(i32 noundef 214748000) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %45 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %45(i32 noundef 214748000) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %46 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %46(i32 noundef 214748000) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %47 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %47(i32 noundef 214748000) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %48 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %48(i32 noundef 214748000) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !212
  tail call void @arm_heavy_mb() #14
  %49 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i45.i = getelementptr i8, ptr %50, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i45.i, i32 %36) #14, !srcloc !213
  %or24.i = or i32 %36, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !212
  tail call void @arm_heavy_mb() #14
  %51 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i47.i = getelementptr i8, ptr %52, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i47.i, i32 %or24.i) #14, !srcloc !213
  %53 = mul i32 %freq.055.i, 1000000
  %mul.i = add i32 %53, 1000000
  %mul25.i = mul i32 %mul.i, %div57.i
  %div2643.i = lshr exact i32 %mul25.i, 1
  %pk_clk_freq.i = getelementptr inbounds %struct.hifn_device, ptr %dev, i32 0, i32 20
  %54 = ptrtoint ptr %pk_clk_freq.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %div2643.i, ptr %pk_clk_freq.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !214
  tail call void @arm_heavy_mb() #14
  %55 = ptrtoint ptr %bar.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %bar.i, align 8
  %add.ptr.i50 = getelementptr i8, ptr %56, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i50, i32 512) #14, !srcloc !213
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !212
  tail call void @arm_heavy_mb() #14
  %57 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i52 = getelementptr i8, ptr %58, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i52, i32 65559) #14, !srcloc !213
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_strtoul(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hifn_enable_crypto(ptr noundef %dev) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev = getelementptr inbounds %struct.hifn_device, ptr %dev, i32 0, i32 2
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 4
  %vendor = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %vendor to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %vendor, align 8
  %device = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 5027, i16 %3)
  %cmp2 = icmp eq i16 %3, 5027
  br i1 %cmp2, label %land.lhs.true, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %4 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %device, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 32, i16 %5)
  %cmp8 = icmp eq i16 %5, 32
  br i1 %cmp8, label %land.lhs.true.for.end_crit_edge, label %land.lhs.true.1

land.lhs.true.for.end_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

land.lhs.true.1:                                  ; preds = %land.lhs.true
  %6 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %device, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 29, i16 %7)
  %cmp8.1 = icmp eq i16 %7, 29
  br i1 %cmp8.1, label %land.lhs.true.1.for.end_crit_edge, label %land.lhs.true.1.do.end_crit_edge

land.lhs.true.1.do.end_crit_edge:                 ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

land.lhs.true.1.for.end_crit_edge:                ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %land.lhs.true.1.for.end_crit_edge, %land.lhs.true.for.end_crit_edge
  %i.077.lcssa = phi i32 [ 0, %land.lhs.true.for.end_crit_edge ], [ 1, %land.lhs.true.1.for.end_crit_edge ]
  %card_id = getelementptr [2 x %struct.pci2id], ptr @pci2id, i32 0, i32 %i.077.lcssa, i32 2
  %tobool.not = icmp eq ptr %card_id, null
  br i1 %tobool.not, label %for.end.do.end_crit_edge, label %if.end14

for.end.do.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

do.end:                                           ; preds = %for.end.do.end_crit_edge, %land.lhs.true.1.do.end_crit_edge, %entry.do.end_crit_edge
  %8 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdev, align 4
  %dev13 = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev13, ptr noundef nonnull @.str.55) #17
  br label %cleanup

if.end14:                                         ; preds = %for.end
  %arrayidx.i = getelementptr %struct.hifn_device, ptr %dev, i32 0, i32 3, i32 1
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 72
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #14, !srcloc !217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !218
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !212
  tail call void @arm_heavy_mb() #14
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i64 = getelementptr i8, ptr %14, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i64, i32 2055) #14, !srcloc !213
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 214748000) #14
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i66 = getelementptr i8, ptr %17, i32 244
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i66) #14, !srcloc !217
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !218
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %20(i32 noundef 214748000) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !212
  tail call void @arm_heavy_mb() #14
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i68 = getelementptr i8, ptr %22, i32 252
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i68, i32 0) #14, !srcloc !213
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %23(i32 noundef 214748000) #14
  br label %for.body19

for.body19:                                       ; preds = %hifn_next_signature.exit.for.body19_crit_edge, %if.end14
  %i.180 = phi i32 [ 0, %if.end14 ], [ %inc24, %hifn_next_signature.exit.for.body19_crit_edge ]
  %addr.079 = phi i32 [ %19, %if.end14 ], [ %xor1025.i, %hifn_next_signature.exit.for.body19_crit_edge ]
  %arrayidx20 = getelementptr i8, ptr %card_id, i32 %i.180
  %24 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx20, align 1
  %conv21 = zext i8 %25 to i32
  %26 = or i32 %conv21, 256
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body19
  %i.028.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.body19 ]
  %a.addr.027.i = phi i32 [ %xor1025.i, %for.body.i.for.body.i_crit_edge ], [ %addr.079, %for.body19 ]
  %and.i = and i32 %a.addr.027.i, -2146959067
  %shr.i = lshr i32 %and.i, 16
  %xor24.i = or i32 %shr.i, %and.i
  %shr1.i = lshr i32 %xor24.i, 8
  %xor2.i = xor i32 %shr1.i, %xor24.i
  %shr3.i = lshr i32 %xor2.i, 4
  %xor4.i = xor i32 %shr3.i, %xor2.i
  %shr5.i = lshr i32 %xor4.i, 2
  %xor6.i = xor i32 %shr5.i, %xor4.i
  %shr7.i = lshr i32 %xor6.i, 1
  %xor8.i = xor i32 %shr7.i, %xor6.i
  %and9.i = and i32 %xor8.i, 1
  %shl.i = shl i32 %a.addr.027.i, 1
  %xor1025.i = or i32 %and9.i, %shl.i
  %inc.i = add nuw nsw i32 %i.028.i, 1
  %exitcond.not.i = icmp eq i32 %i.028.i, %26
  br i1 %exitcond.not.i, label %hifn_next_signature.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

hifn_next_signature.exit:                         ; preds = %for.body.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !212
  tail call void @arm_heavy_mb() #14
  %27 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i70 = getelementptr i8, ptr %28, i32 252
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i70, i32 %xor1025.i) #14, !srcloc !213
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %29(i32 noundef 214748000) #14
  %inc24 = add nuw nsw i32 %i.180, 1
  %exitcond.not = icmp eq i32 %inc24, 12
  br i1 %exitcond.not, label %for.end25, label %hifn_next_signature.exit.for.body19_crit_edge

hifn_next_signature.exit.for.body19_crit_edge:    ; preds = %hifn_next_signature.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body19

for.end25:                                        ; preds = %hifn_next_signature.exit
  call void @__sanitizer_cov_trace_pc() #16
  %30 = tail call i32 @llvm.bswap.i32(i32 %12) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !212
  tail call void @arm_heavy_mb() #14
  %31 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i72 = getelementptr i8, ptr %32, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i72, i32 %30) #14, !srcloc !213
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hifn_enable_crypto.__UNIQUE_ID_ddebug252, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hifn_enable_crypto, %if.then31)) #14
          to label %cleanup [label %if.then31], !srcloc !211

if.then31:                                        ; preds = %for.end25
  %33 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pdev, align 4
  %dev33 = getelementptr inbounds %struct.pci_dev, ptr %34, i32 0, i32 44
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %34, i32 0, i32 44, i32 3
  %35 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %36, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then31.pci_name.exit_crit_edge

if.then31.pci_name.exit_crit_edge:                ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #16
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #16
  %37 = ptrtoint ptr %dev33 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev33, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %if.then31.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %38, %if.end.i.i ], [ %36, %if.then31.pci_name.exit_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hifn_enable_crypto.__UNIQUE_ID_ddebug252, ptr noundef %dev33, ptr noundef nonnull @.str.57, ptr noundef %dev, ptr noundef %retval.0.i.i) #14
  br label %cleanup

cleanup:                                          ; preds = %pci_name.exit, %for.end25, %do.end
  %retval.0 = phi i32 [ -19, %do.end ], [ 0, %pci_name.exit ], [ 0, %for.end25 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hifn_init_pubrng(ptr nocapture noundef %dev) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i = getelementptr %struct.hifn_device, ptr %dev, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 516
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #14, !srcloc !217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !218
  %3 = or i32 %2, 16777216
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !212
  tail call void @arm_heavy_mb() #14
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i5 = getelementptr i8, ptr %6, i32 516
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5, i32 %4) #14, !srcloc !213
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.022 = phi i32 [ 100, %entry ], [ %dec, %for.inc.for.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 214748000) #14
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i7 = getelementptr i8, ptr %9, i32 516
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i7) #14, !srcloc !217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !218
  %11 = and i32 %10, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp2 = icmp eq i32 %11, 0
  br i1 %cmp2, label %if.else, label %for.inc

for.inc:                                          ; preds = %for.body
  %dec = add nsw i32 %i.022, -1
  %cmp = icmp ugt i32 %i.022, 1
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %do.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

do.end:                                           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  %pdev = getelementptr inbounds %struct.hifn_device, ptr %dev, i32 0, i32 2
  %12 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pdev, align 4
  %dev4 = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev4, ptr noundef nonnull @.str.60) #17
  br label %if.end18

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !212
  tail call void @arm_heavy_mb() #14
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i9 = getelementptr i8, ptr %15, i32 784
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9, i32 1) #14, !srcloc !213
  %dmareg = getelementptr inbounds %struct.hifn_device, ptr %dev, i32 0, i32 6
  %16 = ptrtoint ptr %dmareg to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dmareg, align 4
  %or5 = or i32 %17, 2
  store i32 %or5, ptr %dmareg, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !212
  tail call void @arm_heavy_mb() #14
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i11 = getelementptr i8, ptr %19, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11, i32 %or5) #14, !srcloc !213
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hifn_init_pubrng.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hifn_init_pubrng, %if.then12)) #14
          to label %if.end18 [label %if.then12], !srcloc !211

if.then12:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %pdev13 = getelementptr inbounds %struct.hifn_device, ptr %dev, i32 0, i32 2
  %20 = ptrtoint ptr %pdev13 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pdev13, align 4
  %dev14 = getelementptr inbounds %struct.pci_dev, ptr %21, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hifn_init_pubrng.__UNIQUE_ID_ddebug250, ptr noundef %dev14, ptr noundef nonnull @.str.62) #14
  br label %if.end18

if.end18:                                         ; preds = %if.then12, %if.else, %do.end
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i13 = getelementptr i8, ptr %23, i32 788
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i13) #14, !srcloc !217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !218
  %25 = or i32 %24, 16777216
  %26 = tail call i32 @llvm.bswap.i32(i32 %25)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !212
  tail call void @arm_heavy_mb() #14
  %27 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i15 = getelementptr i8, ptr %28, i32 788
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i15, i32 %26) #14, !srcloc !213
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hifn_init_pubrng.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hifn_init_pubrng, %if.then33)) #14
          to label %do.end38 [label %if.then33], !srcloc !211

if.then33:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #16
  %pdev34 = getelementptr inbounds %struct.hifn_device, ptr %dev, i32 0, i32 2
  %29 = ptrtoint ptr %pdev34 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pdev34, align 4
  %dev35 = getelementptr inbounds %struct.pci_dev, ptr %30, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hifn_init_pubrng.__UNIQUE_ID_ddebug251, ptr noundef %dev35, ptr noundef nonnull @.str.63) #14
  br label %do.end38

do.end38:                                         ; preds = %if.then33, %if.end18
  %31 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i17 = getelementptr i8, ptr %32, i32 792
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i17) #14, !srcloc !217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !218
  %call40 = tail call i64 @ktime_get() #14
  %rngtime = getelementptr inbounds %struct.hifn_device, ptr %dev, i32 0, i32 22
  %34 = ptrtoint ptr %rngtime to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %call40, ptr %rngtime, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hifn_rng_data_present(ptr nocapture noundef readonly %rng, i32 noundef %wait) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.hwrng, ptr %rng, i32 0, i32 6
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %priv, align 4
  %2 = inttoptr i32 %1 to ptr
  %call = tail call i64 @ktime_get() #14
  %rngtime = getelementptr inbounds %struct.hifn_device, ptr %2, i32 0, i32 22
  %3 = ptrtoint ptr %rngtime to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %rngtime, align 8
  %rng_wait_time = getelementptr inbounds %struct.hifn_device, ptr %2, i32 0, i32 21
  %5 = ptrtoint ptr %rng_wait_time to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %rng_wait_time, align 4
  %conv = zext i32 %6 to i64
  %7 = add i64 %4, %conv
  %sub2 = sub i64 %call, %7
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %sub2)
  %cmp = icmp slt i64 %sub2, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %wait)
  %tobool.not = icmp eq i32 %wait, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %cond.false8.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

cond.false8.i:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %conv6 = trunc i64 %sub2 to i32
  %sub.i = add i32 %conv6, 999
  %div.i = udiv i32 %sub.i, 1000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %8(i32 noundef %div.i) #14
  br label %cleanup

cleanup:                                          ; preds = %cond.false8.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 1, %cond.false8.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hifn_rng_data_read(ptr nocapture noundef readonly %rng, ptr nocapture noundef writeonly %data) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.hwrng, ptr %rng, i32 0, i32 6
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %priv, align 4
  %2 = inttoptr i32 %1 to ptr
  %arrayidx.i = getelementptr %struct.hifn_device, ptr %2, i32 0, i32 3, i32 1
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 792
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #14, !srcloc !217
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !218
  %7 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %data, align 4
  %call1 = tail call i64 @ktime_get() #14
  %rngtime = getelementptr inbounds %struct.hifn_device, ptr %2, i32 0, i32 22
  %8 = ptrtoint ptr %rngtime to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %call1, ptr %rngtime, align 8
  ret i32 4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hwrng_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @hifn_init_tfm(ptr nocapture noundef %tfm) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_alg.i = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 0, i32 2, i32 3
  %0 = ptrtoint ptr %__crt_alg.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__crt_alg.i, align 4
  %dev = getelementptr i8, ptr %1, i32 512
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 128
  %dev2 = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1, i32 1, i32 28
  %4 = ptrtoint ptr %dev2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %dev2, align 4
  %5 = ptrtoint ptr %tfm to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 340, ptr %tfm, align 128
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_skcipher(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hifn_des3_setkey(ptr nocapture noundef %cipher, ptr nocapture noundef readonly %key, i32 noundef %len) #3 align 64 {
entry:
  %K.i.i.i = alloca [6 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %cipher, i32 1
  %dev1 = getelementptr inbounds %struct.crypto_skcipher, ptr %cipher, i32 1, i32 1, i32 28
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %base.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %cipher, i32 0, i32 2
  %2 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %base.i.i, align 128
  %and.i.i = and i32 %3, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %K.i.i.i) #14
  %4 = getelementptr inbounds [6 x i32], ptr %K.i.i.i, i32 0, i32 1
  %5 = getelementptr inbounds [6 x i32], ptr %K.i.i.i, i32 0, i32 2
  %6 = getelementptr inbounds [6 x i32], ptr %K.i.i.i, i32 0, i32 3
  %7 = call ptr @memcpy(ptr %K.i.i.i, ptr %key, i32 24)
  %8 = ptrtoint ptr %K.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %K.i.i.i, align 4
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %5, align 4
  %12 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %4, align 4
  %14 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %6, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %16 = icmp eq i32 %9, %11
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %17 = icmp eq i32 %13, %15
  %tobool.not.i.i.i = and i1 %16, %17
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.i.i, label %lor.lhs.false.i.i.i

lor.lhs.false.i.i.i:                              ; preds = %entry
  %18 = getelementptr inbounds [6 x i32], ptr %K.i.i.i, i32 0, i32 5
  %19 = getelementptr inbounds [6 x i32], ptr %K.i.i.i, i32 0, i32 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 4
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %18, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %21)
  %24 = icmp ne i32 %11, %21
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %23)
  %25 = icmp ne i32 %15, %23
  %tobool12.not.not.i.i.i = or i1 %24, %25
  %brmerge.i.i.i = or i1 %tobool.not.i.i, %tobool12.not.not.i.i.i
  br i1 %brmerge.i.i.i, label %lor.lhs.false.i.i.i.if.end_crit_edge, label %lor.lhs.false.i.i.i.verify_skcipher_des3_key.exit.thread_crit_edge

lor.lhs.false.i.i.i.verify_skcipher_des3_key.exit.thread_crit_edge: ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %verify_skcipher_des3_key.exit.thread

lor.lhs.false.i.i.i.if.end_crit_edge:             ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true.i.i.i:                              ; preds = %entry
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.i.if.end_crit_edge, label %land.lhs.true.i.i.i.verify_skcipher_des3_key.exit.thread_crit_edge

land.lhs.true.i.i.i.verify_skcipher_des3_key.exit.thread_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %verify_skcipher_des3_key.exit.thread

land.lhs.true.i.i.i.if.end_crit_edge:             ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

verify_skcipher_des3_key.exit.thread:             ; preds = %land.lhs.true.i.i.i.verify_skcipher_des3_key.exit.thread_crit_edge, %lor.lhs.false.i.i.i.verify_skcipher_des3_key.exit.thread_crit_edge
  %26 = call ptr @memset(ptr %K.i.i.i, i32 0, i32 24)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %K.i.i.i) #14, !srcloc !234
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %K.i.i.i) #14
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.i.i.i.if.end_crit_edge, %lor.lhs.false.i.i.i.if.end_crit_edge
  %27 = call ptr @memset(ptr %K.i.i.i, i32 0, i32 24)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %K.i.i.i) #14, !srcloc !234
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %K.i.i.i) #14
  %flags = getelementptr inbounds %struct.hifn_device, ptr %1, i32 0, i32 9
  %28 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %flags, align 4
  %and = and i32 %29, -17
  store i32 %and, ptr %flags, align 4
  %30 = call ptr @memcpy(ptr %__crt_ctx.i.i, ptr %key, i32 %len)
  %keysize = getelementptr inbounds %struct.crypto_skcipher, ptr %cipher, i32 1, i32 1, i32 32
  %31 = ptrtoint ptr %keysize to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %len, ptr %keysize, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %verify_skcipher_des3_key.exit.thread
  %ret.0.i.i.i14 = phi i32 [ -126, %verify_skcipher_des3_key.exit.thread ], [ 0, %if.end ]
  ret i32 %ret.0.i.i.i14
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hifn_encrypt_3des_cfb(ptr noundef %req) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %call = tail call fastcc i32 @hifn_setup_crypto(ptr noundef %req, i8 noundef zeroext 1, i8 noundef zeroext 3, i8 noundef zeroext 2)
  ret i32 %call
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hifn_decrypt_3des_cfb(ptr noundef %req) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %call = tail call fastcc i32 @hifn_setup_crypto(ptr noundef %req, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 2)
  ret i32 %call
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hifn_encrypt_3des_ofb(ptr noundef %req) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %call = tail call fastcc i32 @hifn_setup_crypto(ptr noundef %req, i8 noundef zeroext 1, i8 noundef zeroext 3, i8 noundef zeroext 3)
  ret i32 %call
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hifn_decrypt_3des_ofb(ptr noundef %req) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %call = tail call fastcc i32 @hifn_setup_crypto(ptr noundef %req, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3)
  ret i32 %call
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hifn_encrypt_3des_cbc(ptr noundef %req) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %call = tail call fastcc i32 @hifn_setup_crypto(ptr noundef %req, i8 noundef zeroext 1, i8 noundef zeroext 3, i8 noundef zeroext 1)
  ret i32 %call
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hifn_decrypt_3des_cbc(ptr noundef %req) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %call = tail call fastcc i32 @hifn_setup_crypto(ptr noundef %req, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 1)
  ret i32 %call
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hifn_encrypt_3des_ecb(ptr noundef %req) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %call = tail call fastcc i32 @hifn_setup_crypto(ptr noundef %req, i8 noundef zeroext 1, i8 noundef zeroext 3, i8 noundef zeroext 0)
  ret i32 %call
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hifn_decrypt_3des_ecb(ptr noundef %req) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %call = tail call fastcc i32 @hifn_setup_crypto(ptr noundef %req, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 0)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hifn_setkey(ptr nocapture noundef %cipher, ptr noundef %key, i32 noundef %len) #3 align 64 {
entry:
  %tmp.i.i = alloca %struct.des_ctx, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %cipher, i32 1
  %dev1 = getelementptr inbounds %struct.crypto_skcipher, ptr %cipher, i32 1, i32 1, i32 28
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %tmp.i.i) #14
  %2 = call ptr @memset(ptr %tmp.i.i, i32 255, i32 128)
  %call.i.i = call i32 @des_expand_key(ptr noundef nonnull %tmp.i.i, ptr noundef %key, i32 noundef 8) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -126, i32 %call.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i, -126
  br i1 %cmp.i.i, label %if.then.i.i, label %entry.verify_skcipher_des_key.exit_crit_edge

entry.verify_skcipher_des_key.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %verify_skcipher_des_key.exit

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %base.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %cipher, i32 0, i32 2
  %3 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %base.i.i, align 128
  %and.i.i = and i32 %4, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %spec.select = select i1 %tobool.not.i.i, i32 0, i32 -22
  br label %verify_skcipher_des_key.exit

verify_skcipher_des_key.exit:                     ; preds = %if.then.i.i, %entry.verify_skcipher_des_key.exit_crit_edge
  %err.0.i.i = phi i32 [ %call.i.i, %entry.verify_skcipher_des_key.exit_crit_edge ], [ %spec.select, %if.then.i.i ]
  %5 = call ptr @memset(ptr %tmp.i.i, i32 0, i32 128)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %tmp.i.i) #14, !srcloc !234
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %tmp.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.i.i)
  %tobool.not = icmp eq i32 %err.0.i.i, 0
  br i1 %tobool.not, label %if.end, label %verify_skcipher_des_key.exit.cleanup_crit_edge

verify_skcipher_des_key.exit.cleanup_crit_edge:   ; preds = %verify_skcipher_des_key.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %verify_skcipher_des_key.exit
  call void @__sanitizer_cov_trace_pc() #16
  %flags = getelementptr inbounds %struct.hifn_device, ptr %1, i32 0, i32 9
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 4
  %and = and i32 %7, -17
  store i32 %and, ptr %flags, align 4
  %8 = call ptr @memcpy(ptr %__crt_ctx.i.i, ptr %key, i32 %len)
  %keysize = getelementptr inbounds %struct.crypto_skcipher, ptr %cipher, i32 1, i32 1, i32 32
  %9 = ptrtoint ptr %keysize to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %len, ptr %keysize, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %verify_skcipher_des_key.exit.cleanup_crit_edge
  ret i32 %err.0.i.i
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hifn_encrypt_des_cfb(ptr noundef %req) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %call = tail call fastcc i32 @hifn_setup_crypto(ptr noundef %req, i8 noundef zeroext 1, i8 noundef zeroext 4, i8 noundef zeroext 2)
  ret i32 %call
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hifn_decrypt_des_cfb(ptr noundef %req) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %call = tail call fastcc i32 @hifn_setup_crypto(ptr noundef %req, i8 noundef zeroext 0, i8 noundef zeroext 4, i8 noundef zeroext 2)
  ret i32 %call
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hifn_encrypt_des_ofb(ptr noundef %req) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %call = tail call fastcc i32 @hifn_setup_crypto(ptr noundef %req, i8 noundef zeroext 1, i8 noundef zeroext 4, i8 noundef zeroext 3)
  ret i32 %call
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hifn_decrypt_des_ofb(ptr noundef %req) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %call = tail call fastcc i32 @hifn_setup_crypto(ptr noundef %req, i8 noundef zeroext 0, i8 noundef zeroext 4, i8 noundef zeroext 3)
  ret i32 %call
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hifn_encrypt_des_cbc(ptr noundef %req) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %call = tail call fastcc i32 @hifn_setup_crypto(ptr noundef %req, i8 noundef zeroext 1, i8 noundef zeroext 4, i8 noundef zeroext 1)
  ret i32 %call
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hifn_decrypt_des_cbc(ptr noundef %req) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %call = tail call fastcc i32 @hifn_setup_crypto(ptr noundef %req, i8 noundef zeroext 0, i8 noundef zeroext 4, i8 noundef zeroext 1)
  ret i32 %call
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hifn_encrypt_des_ecb(ptr noundef %req) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %call = tail call fastcc i32 @hifn_setup_crypto(ptr noundef %req, i8 noundef zeroext 1, i8 noundef zeroext 4, i8 noundef zeroext 0)
  ret i32 %call
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hifn_decrypt_des_ecb(ptr noundef %req) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %call = tail call fastcc i32 @hifn_setup_crypto(ptr noundef %req, i8 noundef zeroext 0, i8 noundef zeroext 4, i8 noundef zeroext 0)
  ret i32 %call
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hifn_encrypt_aes_ecb(ptr noundef %req) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %call = tail call fastcc i32 @hifn_setup_crypto(ptr noundef %req, i8 noundef zeroext 1, i8 noundef zeroext 0, i8 noundef zeroext 0)
  ret i32 %call
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hifn_decrypt_aes_ecb(ptr noundef %req) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %call = tail call fastcc i32 @hifn_setup_crypto(ptr noundef %req, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0)
  ret i32 %call
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hifn_encrypt_aes_cbc(ptr noundef %req) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %call = tail call fastcc i32 @hifn_setup_crypto(ptr noundef %req, i8 noundef zeroext 1, i8 noundef zeroext 0, i8 noundef zeroext 1)
  ret i32 %call
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hifn_decrypt_aes_cbc(ptr noundef %req) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %call = tail call fastcc i32 @hifn_setup_crypto(ptr noundef %req, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 1)
  ret i32 %call
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hifn_encrypt_aes_cfb(ptr noundef %req) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %call = tail call fastcc i32 @hifn_setup_crypto(ptr noundef %req, i8 noundef zeroext 1, i8 noundef zeroext 0, i8 noundef zeroext 2)
  ret i32 %call
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hifn_decrypt_aes_cfb(ptr noundef %req) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %call = tail call fastcc i32 @hifn_setup_crypto(ptr noundef %req, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 2)
  ret i32 %call
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hifn_encrypt_aes_ofb(ptr noundef %req) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %call = tail call fastcc i32 @hifn_setup_crypto(ptr noundef %req, i8 noundef zeroext 1, i8 noundef zeroext 0, i8 noundef zeroext 3)
  ret i32 %call
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hifn_decrypt_aes_ofb(ptr noundef %req) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %call = tail call fastcc i32 @hifn_setup_crypto(ptr noundef %req, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 3)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hifn_setup_crypto(ptr noundef %req, i8 noundef zeroext %op, i8 noundef zeroext %type, i8 noundef zeroext %mode) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 3
  %0 = ptrtoint ptr %tfm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm, align 16
  %dev1 = getelementptr inbounds %struct.crypto_tfm, ptr %1, i32 1, i32 4, i32 16
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  %__crt_alg.i.i.i = getelementptr i8, ptr %1, i32 12
  %4 = ptrtoint ptr %__crt_alg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %__crt_alg.i.i.i, align 4
  %ivsize.i.i = getelementptr i8, ptr %5, i32 -100
  %6 = ptrtoint ptr %ivsize.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ivsize.i.i, align 4
  %iv.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 1
  %8 = ptrtoint ptr %iv.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %iv.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %mode)
  %cmp.not.i = icmp eq i8 %mode, 0
  %or.cond.i = or i1 %cmp.not.i, %tobool.not.i
  br i1 %or.cond.i, label %entry.if.end20.i_crit_edge, label %if.then.i

entry.if.end20.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end20.i

if.then.i:                                        ; preds = %entry
  %10 = zext i8 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.89)
  switch i8 %type, label %if.end20.fold.split.i [
    i8 0, label %if.then.i.if.end20.i_crit_edge
    i8 4, label %if.then.i.hifn_setup_crypto_req.exit_crit_edge
    i8 3, label %if.then17.i
  ]

if.then.i.hifn_setup_crypto_req.exit_crit_edge:   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %hifn_setup_crypto_req.exit

if.then.i.if.end20.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end20.i

if.then17.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %hifn_setup_crypto_req.exit

if.end20.fold.split.i:                            ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.end20.fold.split.i, %if.then.i.if.end20.i_crit_edge, %entry.if.end20.i_crit_edge
  %ivsize.0.i = phi i32 [ %7, %entry.if.end20.i_crit_edge ], [ 16, %if.then.i.if.end20.i_crit_edge ], [ %7, %if.end20.fold.split.i ]
  %keysize.i = getelementptr inbounds %struct.crypto_tfm, ptr %1, i32 1, i32 4, i32 20
  %11 = ptrtoint ptr %keysize.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %keysize.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %12)
  %cmp21.not.i = icmp ne i32 %12, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %type)
  %cmp25.i = icmp eq i8 %type, 0
  %or.cond63.i = and i1 %cmp25.i, %cmp21.not.i
  br i1 %or.cond63.i, label %if.then27.i, label %if.end20.i.hifn_setup_crypto_req.exit_crit_edge

if.end20.i.hifn_setup_crypto_req.exit_crit_edge:  ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %hifn_setup_crypto_req.exit

if.then27.i:                                      ; preds = %if.end20.i
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.90)
  switch i32 %12, label %if.end39.fold.split.i [
    i32 24, label %if.then27.i.hifn_setup_crypto_req.exit_crit_edge
    i32 32, label %if.then36.i
  ]

if.then27.i.hifn_setup_crypto_req.exit_crit_edge: ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %hifn_setup_crypto_req.exit

if.then36.i:                                      ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %hifn_setup_crypto_req.exit

if.end39.fold.split.i:                            ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %hifn_setup_crypto_req.exit

hifn_setup_crypto_req.exit:                       ; preds = %if.end39.fold.split.i, %if.then36.i, %if.then27.i.hifn_setup_crypto_req.exit_crit_edge, %if.end20.i.hifn_setup_crypto_req.exit_crit_edge, %if.then17.i, %if.then.i.hifn_setup_crypto_req.exit_crit_edge
  %ivsize.069.i = phi i32 [ %ivsize.0.i, %if.then36.i ], [ %ivsize.0.i, %if.end20.i.hifn_setup_crypto_req.exit_crit_edge ], [ %ivsize.0.i, %if.then27.i.hifn_setup_crypto_req.exit_crit_edge ], [ %ivsize.0.i, %if.end39.fold.split.i ], [ 24, %if.then17.i ], [ 8, %if.then.i.hifn_setup_crypto_req.exit_crit_edge ]
  %type.addr.0.i = phi i8 [ 2, %if.then36.i ], [ %type, %if.end20.i.hifn_setup_crypto_req.exit_crit_edge ], [ 1, %if.then27.i.hifn_setup_crypto_req.exit_crit_edge ], [ 0, %if.end39.fold.split.i ], [ 3, %if.then17.i ], [ %type, %if.then.i.hifn_setup_crypto_req.exit_crit_edge ]
  %__ctx.i.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 6
  %op40.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 1, i32 2
  %14 = ptrtoint ptr %op40.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %op, ptr %op40.i, align 4
  %mode41.i = getelementptr inbounds %struct.hifn_request_context, ptr %__ctx.i.i, i32 0, i32 4
  %15 = ptrtoint ptr %mode41.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %mode, ptr %mode41.i, align 2
  %type42.i = getelementptr inbounds %struct.hifn_request_context, ptr %__ctx.i.i, i32 0, i32 3
  %16 = ptrtoint ptr %type42.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %type.addr.0.i, ptr %type42.i, align 1
  %17 = ptrtoint ptr %__ctx.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %9, ptr %__ctx.i.i, align 4
  %ivsize45.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 1, i32 1
  %18 = ptrtoint ptr %ivsize45.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %ivsize.069.i, ptr %ivsize45.i, align 4
  %call46.i = tail call fastcc i32 @hifn_handle_req(ptr noundef %req) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46.i)
  %tobool.not = icmp eq i32 %call46.i, 0
  br i1 %tobool.not, label %if.end, label %hifn_setup_crypto_req.exit.cleanup_crit_edge

hifn_setup_crypto_req.exit.cleanup_crit_edge:     ; preds = %hifn_setup_crypto_req.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %hifn_setup_crypto_req.exit
  %started = getelementptr inbounds %struct.hifn_device, ptr %3, i32 0, i32 11
  %19 = ptrtoint ptr %started to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %started, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %20)
  %cmp = icmp slt i32 %20, 23
  br i1 %cmp, label %land.lhs.true, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end
  %qlen = getelementptr inbounds %struct.hifn_device, ptr %3, i32 0, i32 18, i32 2
  %21 = ptrtoint ptr %qlen to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %qlen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool3.not = icmp eq i32 %22, 0
  br i1 %tobool3.not, label %land.lhs.true.cleanup_crit_edge, label %if.then4

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then4:                                         ; preds = %land.lhs.true
  %lock.i = getelementptr inbounds %struct.hifn_device, ptr %3, i32 0, i32 8
  %queue.i = getelementptr inbounds %struct.hifn_device, ptr %3, i32 0, i32 18
  %backlog.i.i = getelementptr inbounds %struct.hifn_device, ptr %3, i32 0, i32 18, i32 1
  br label %while.cond.i

while.cond.i:                                     ; preds = %if.end12.i.while.cond.i_crit_edge, %if.then4
  %23 = ptrtoint ptr %started to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %started, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %24)
  %cmp.i = icmp slt i32 %24, 23
  br i1 %cmp.i, label %do.body1.i, label %while.cond.i.cleanup_crit_edge

while.cond.i.cleanup_crit_edge:                   ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body1.i:                                       ; preds = %while.cond.i
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #14
  %25 = ptrtoint ptr %backlog.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %backlog.i.i, align 4
  %cmp.i.i = icmp eq ptr %26, %queue.i
  %spec.select.i.i = select i1 %cmp.i.i, ptr null, ptr %26
  %call8.i = tail call ptr @crypto_dequeue_request(ptr noundef %queue.i) #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call3.i) #14
  %tobool.not.i13 = icmp eq ptr %call8.i, null
  br i1 %tobool.not.i13, label %do.body1.i.cleanup_crit_edge, label %if.end.i

do.body1.i.cleanup_crit_edge:                     ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end.i:                                         ; preds = %do.body1.i
  %tobool10.not.i = icmp eq ptr %spec.select.i.i, null
  br i1 %tobool10.not.i, label %if.end.i.if.end12.i_crit_edge, label %if.then11.i

if.end.i.if.end12.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end12.i

if.then11.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %complete.i = getelementptr inbounds %struct.crypto_async_request, ptr %spec.select.i.i, i32 0, i32 1
  %27 = ptrtoint ptr %complete.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %complete.i, align 4
  tail call void %28(ptr noundef nonnull %spec.select.i.i, i32 noundef -115) #14
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.then11.i, %if.end.i.if.end12.i_crit_edge
  %add.ptr.i.i = getelementptr i8, ptr %call8.i, i32 -16
  %call14.i = tail call fastcc i32 @hifn_handle_req(ptr noundef %add.ptr.i.i) #14
  %tobool15.not.i = icmp eq i32 %call14.i, 0
  br i1 %tobool15.not.i, label %if.end12.i.while.cond.i_crit_edge, label %if.end12.i.cleanup_crit_edge

if.end12.i.cleanup_crit_edge:                     ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end12.i.while.cond.i_crit_edge:                ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond.i

cleanup:                                          ; preds = %if.end12.i.cleanup_crit_edge, %do.body1.i.cleanup_crit_edge, %while.cond.i.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end.cleanup_crit_edge, %hifn_setup_crypto_req.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call46.i, %hifn_setup_crypto_req.exit.cleanup_crit_edge ], [ -115, %land.lhs.true.cleanup_crit_edge ], [ -115, %if.end.cleanup_crit_edge ], [ -115, %while.cond.i.cleanup_crit_edge ], [ -115, %do.body1.i.cleanup_crit_edge ], [ -115, %if.end12.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @des_expand_key(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_skcipher(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hwrng_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #14

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #15 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 96)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #15 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 96)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind readonly }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { argmemonly nofree nounwind readonly willreturn }
attributes #14 = { nounwind }
attributes #15 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #16 = { nomerge }
attributes #17 = { cold nounwind }
attributes #18 = { nobuiltin }
attributes #19 = { nounwind allocsize(2) }
attributes #20 = { nounwind readnone }
attributes #21 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !9, !10, !11, !13, !15, !17, !18, !20, !22, !23, !24, !26, !28, !30, !32, !34, !36, !37, !38, !39, !40, !41, !43, !45, !46, !48, !49, !50, !52, !53, !54, !56, !57, !58, !59, !61, !62, !63, !65, !67, !68, !69, !71, !72, !74, !75, !76, !78, !79, !80, !82, !83, !84, !85, !86, !88, !89, !90, !91, !93, !95, !96, !97, !99, !100, !101, !103, !104, !105, !107, !108, !109, !111, !112, !113, !115, !116, !117, !118, !120, !121, !122, !124, !125, !127, !129, !130, !131, !132, !134, !135, !136, !137, !139, !140, !142, !144, !145, !146, !147, !149, !150, !151, !152, !154, !155, !157, !158, !160, !162, !164, !165, !166, !167, !169, !170, !171, !173, !174, !175, !177, !178, !179, !181, !183, !184, !185, !186, !188, !189, !190, !192, !193, !194, !196, !197}
!llvm.named.register.sp = !{!198}
!llvm.module.flags = !{!199, !200, !201, !202, !203, !204, !205, !206}
!llvm.ident = !{!207}

!0 = !{ptr @__param_hifn_pll_ref, !1, !"__param_hifn_pll_ref", i1 false, i1 false}
!1 = !{!"../drivers/crypto/hifn_795x.c", i32 28, i32 1}
!2 = !{ptr @__UNIQUE_ID_hifn_pll_reftype248, !1, !"__UNIQUE_ID_hifn_pll_reftype248", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_hifn_pll_ref249, !4, !"__UNIQUE_ID_hifn_pll_ref249", i1 false, i1 false}
!4 = !{!"../drivers/crypto/hifn_795x.c", i32 29, i32 1}
!5 = !{ptr @.str, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/crypto/hifn_795x.c", i32 2685, i32 2}
!7 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @hifn_fini._entry, !6, !"_entry", i1 false, i1 false}
!10 = !{ptr @hifn_fini._entry_ptr, !6, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @__initcall__kmod_hifn_795x__287_2689_hifn_init6, !12, !"__initcall__kmod_hifn_795x__287_2689_hifn_init6", i1 false, i1 false}
!12 = !{!"../drivers/crypto/hifn_795x.c", i32 2689, i32 1}
!13 = !{ptr @__exitcall_hifn_fini, !14, !"__exitcall_hifn_fini", i1 false, i1 false}
!14 = !{!"../drivers/crypto/hifn_795x.c", i32 2690, i32 1}
!15 = !{ptr @__UNIQUE_ID_file288, !16, !"__UNIQUE_ID_file288", i1 false, i1 false}
!16 = !{!"../drivers/crypto/hifn_795x.c", i32 2692, i32 1}
!17 = !{ptr @__UNIQUE_ID_license289, !16, !"__UNIQUE_ID_license289", i1 false, i1 false}
!18 = !{ptr @__UNIQUE_ID_author290, !19, !"__UNIQUE_ID_author290", i1 false, i1 false}
!19 = !{!"../drivers/crypto/hifn_795x.c", i32 2693, i32 1}
!20 = !{ptr @__UNIQUE_ID_description291, !21, !"__UNIQUE_ID_description291", i1 false, i1 false}
!21 = !{!"../drivers/crypto/hifn_795x.c", i32 2694, i32 1}
!22 = !{ptr @__param_str_hifn_pll_ref, !1, !"__param_str_hifn_pll_ref", i1 false, i1 false}
!23 = !{ptr @__param_string_hifn_pll_ref, !1, !"__param_string_hifn_pll_ref", i1 false, i1 false}
!24 = !{ptr @hifn_pll_ref, !25, !"hifn_pll_ref", i1 false, i1 false}
!25 = !{!"../drivers/crypto/hifn_795x.c", i32 27, i32 13}
!26 = !{ptr @.str.3, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/crypto/hifn_795x.c", i32 2637, i32 14}
!28 = !{ptr @hifn_pci_driver, !29, !"hifn_pci_driver", i1 false, i1 false}
!29 = !{!"../drivers/crypto/hifn_795x.c", i32 2636, i32 26}
!30 = !{ptr @hifn_pci_tbl, !31, !"hifn_pci_tbl", i1 false, i1 false}
!31 = !{!"../drivers/crypto/hifn_795x.c", i32 2629, i32 29}
!32 = !{ptr @.str.4, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/crypto/hifn_795x.c", i32 2479, i32 31}
!34 = !{ptr @.str.5, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/crypto/hifn_795x.c", i32 2489, i32 3}
!36 = !{ptr @.str.6, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.7, !35, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.8, !35, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @hifn_probe._entry, !35, !"_entry", i1 false, i1 false}
!40 = !{ptr @hifn_probe._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.9, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/crypto/hifn_795x.c", i32 2503, i32 41}
!43 = !{ptr @hifn_probe.__key, !44, !"__key", i1 false, i1 false}
!44 = !{!"../drivers/crypto/hifn_795x.c", i32 2504, i32 2}
!45 = !{ptr @.str.10, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.12, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/crypto/hifn_795x.c", i32 2523, i32 3}
!48 = !{ptr @hifn_probe._entry.11, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @hifn_probe._entry_ptr.13, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.15, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/crypto/hifn_795x.c", i32 2542, i32 3}
!52 = !{ptr @hifn_probe._entry.14, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @hifn_probe._entry_ptr.16, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @hifn_probe.__key.17, !55, !"__key", i1 false, i1 false}
!55 = !{!"../drivers/crypto/hifn_795x.c", i32 2560, i32 2}
!56 = !{ptr @.str.18, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @hifn_probe.__key.19, !55, !"__key", i1 false, i1 false}
!58 = !{ptr @.str.20, !55, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.21, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/crypto/hifn_795x.c", i32 2563, i32 2}
!61 = !{ptr @.str.22, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @hifn_probe.__UNIQUE_ID_ddebug286, !60, !"__UNIQUE_ID_ddebug286", i1 false, i1 false}
!63 = !{ptr @hifn_dev_number, !64, !"hifn_dev_number", i1 false, i1 false}
!64 = !{!"../drivers/crypto/hifn_795x.c", i32 32, i32 17}
!65 = !{ptr @.str.23, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/crypto/hifn_795x.c", i32 1716, i32 2}
!67 = !{ptr @.str.24, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @hifn_clear_rings.__UNIQUE_ID_ddebug282, !66, !"__UNIQUE_ID_ddebug282", i1 false, i1 false}
!69 = !{ptr @.str.25, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/crypto/hifn_795x.c", i32 1770, i32 2}
!71 = !{ptr @hifn_clear_rings.__UNIQUE_ID_ddebug283, !70, !"__UNIQUE_ID_ddebug283", i1 false, i1 false}
!72 = !{ptr @.str.26, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/crypto/hifn_795x.c", i32 1680, i32 4}
!74 = !{ptr @.str.27, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @hifn_process_ready.__UNIQUE_ID_ddebug277, !73, !"__UNIQUE_ID_ddebug277", i1 false, i1 false}
!76 = !{ptr @.str.28, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/crypto/hifn_795x.c", i32 1639, i32 3}
!78 = !{ptr @.str.29, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @skcipher_get.__UNIQUE_ID_ddebug276, !77, !"__UNIQUE_ID_ddebug276", i1 false, i1 false}
!80 = !{ptr @.str.30, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/crypto/hifn_795x.c", i32 1660, i32 3}
!82 = !{ptr @.str.31, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @.str.32, !81, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @hifn_complete_sa._entry, !81, !"_entry", i1 false, i1 false}
!85 = !{ptr @hifn_complete_sa._entry_ptr, !81, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.33, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/crypto/hifn_795x.c", i32 1584, i32 3}
!88 = !{ptr @.str.34, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @hifn_setup_session._entry, !87, !"_entry", i1 false, i1 false}
!90 = !{ptr @hifn_setup_session._entry_ptr, !87, !"_entry_ptr", i1 false, i1 false}
!91 = distinct !{null, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../include/linux/gfp.h", i32 570, i32 2}
!93 = !{ptr @.str.36, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/crypto/hifn_795x.c", i32 1454, i32 3}
!95 = !{ptr @.str.37, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @hifn_cipher_walk.__UNIQUE_ID_ddebug264, !94, !"__UNIQUE_ID_ddebug264", i1 false, i1 false}
!97 = !{ptr @.str.38, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/crypto/hifn_795x.c", i32 1491, i32 5}
!99 = !{ptr @hifn_cipher_walk._entry, !98, !"_entry", i1 false, i1 false}
!100 = !{ptr @hifn_cipher_walk._entry_ptr, !98, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.40, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/crypto/hifn_795x.c", i32 1493, i32 5}
!103 = !{ptr @hifn_cipher_walk._entry.39, !102, !"_entry", i1 false, i1 false}
!104 = !{ptr @hifn_cipher_walk._entry_ptr.41, !102, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.42, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/crypto/hifn_795x.c", i32 1426, i32 3}
!107 = !{ptr @.str.43, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @skcipher_add.__UNIQUE_ID_ddebug263, !106, !"__UNIQUE_ID_ddebug263", i1 false, i1 false}
!109 = !{ptr @.str.44, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/crypto/hifn_795x.c", i32 1857, i32 2}
!111 = !{ptr @.str.45, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @hifn_interrupt.__UNIQUE_ID_ddebug284, !110, !"__UNIQUE_ID_ddebug284", i1 false, i1 false}
!113 = !{ptr @.str.46, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/crypto/hifn_795x.c", i32 1878, i32 3}
!115 = !{ptr @.str.47, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @hifn_interrupt._entry, !114, !"_entry", i1 false, i1 false}
!117 = !{ptr @hifn_interrupt._entry_ptr, !114, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.49, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/crypto/hifn_795x.c", i32 1891, i32 3}
!120 = !{ptr @hifn_interrupt._entry.48, !119, !"_entry", i1 false, i1 false}
!121 = !{ptr @hifn_interrupt._entry_ptr.50, !119, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.51, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/crypto/hifn_795x.c", i32 1902, i32 3}
!124 = !{ptr @hifn_interrupt.__UNIQUE_ID_ddebug285, !123, !"__UNIQUE_ID_ddebug285", i1 false, i1 false}
!125 = !{ptr @.str.52, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/crypto/hifn_795x.c", i32 928, i32 28}
!127 = !{ptr @.str.53, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/crypto/hifn_795x.c", i32 937, i32 3}
!129 = !{ptr @.str.54, !128, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @hifn_init_pll._entry, !128, !"_entry", i1 false, i1 false}
!131 = !{ptr @hifn_init_pll._entry_ptr, !128, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.55, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/crypto/hifn_795x.c", i32 852, i32 3}
!134 = !{ptr @.str.56, !133, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @hifn_enable_crypto._entry, !133, !"_entry", i1 false, i1 false}
!136 = !{ptr @hifn_enable_crypto._entry_ptr, !133, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.57, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/crypto/hifn_795x.c", i32 875, i32 2}
!139 = !{ptr @hifn_enable_crypto.__UNIQUE_ID_ddebug252, !138, !"__UNIQUE_ID_ddebug252", i1 false, i1 false}
!140 = !{ptr @pci2id, !141, !"pci2id", i1 false, i1 false}
!141 = !{!"../drivers/crypto/hifn_795x.c", i32 734, i32 3}
!142 = !{ptr @.str.58, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/crypto/hifn_795x.c", i32 663, i32 3}
!144 = !{ptr @.str.59, !143, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @hifn_wait_puc._entry, !143, !"_entry", i1 false, i1 false}
!146 = !{ptr @hifn_wait_puc._entry_ptr, !143, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @.str.60, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/crypto/hifn_795x.c", i32 814, i32 3}
!149 = !{ptr @.str.61, !148, !"<string literal>", i1 false, i1 false}
!150 = !{ptr @hifn_init_pubrng._entry, !148, !"_entry", i1 false, i1 false}
!151 = !{ptr @hifn_init_pubrng._entry_ptr, !148, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @.str.62, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/crypto/hifn_795x.c", i32 820, i32 3}
!154 = !{ptr @hifn_init_pubrng.__UNIQUE_ID_ddebug250, !153, !"__UNIQUE_ID_ddebug250", i1 false, i1 false}
!155 = !{ptr @.str.63, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/crypto/hifn_795x.c", i32 827, i32 2}
!157 = !{ptr @hifn_init_pubrng.__UNIQUE_ID_ddebug251, !156, !"__UNIQUE_ID_ddebug251", i1 false, i1 false}
!158 = !{ptr @.str.64, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/crypto/hifn_795x.c", i32 2397, i32 63}
!160 = !{ptr @hifn_alg_templates, !161, !"hifn_alg_templates", i1 false, i1 false}
!161 = !{!"../drivers/crypto/hifn_795x.c", i32 2235, i32 39}
!162 = !{ptr @.str.65, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/crypto/hifn_795x.c", i32 1820, i32 4}
!164 = !{ptr @.str.66, !163, !"<string literal>", i1 false, i1 false}
!165 = !{ptr @hifn_work._entry, !163, !"_entry", i1 false, i1 false}
!166 = !{ptr @hifn_work._entry_ptr, !163, !"_entry_ptr", i1 false, i1 false}
!167 = !{ptr @.str.68, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/crypto/hifn_795x.c", i32 1827, i32 4}
!169 = !{ptr @hifn_work._entry.67, !168, !"_entry", i1 false, i1 false}
!170 = !{ptr @hifn_work._entry_ptr.69, !168, !"_entry_ptr", i1 false, i1 false}
!171 = !{ptr @.str.71, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/crypto/hifn_795x.c", i32 1829, i32 5}
!173 = !{ptr @hifn_work._entry.70, !172, !"_entry", i1 false, i1 false}
!174 = !{ptr @hifn_work._entry_ptr.72, !172, !"_entry_ptr", i1 false, i1 false}
!175 = !{ptr @.str.74, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/crypto/hifn_795x.c", i32 1835, i32 4}
!177 = !{ptr @hifn_work._entry.73, !176, !"_entry", i1 false, i1 false}
!178 = !{ptr @hifn_work._entry_ptr.75, !176, !"_entry_ptr", i1 false, i1 false}
!179 = !{ptr @.str.76, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/crypto/hifn_795x.c", i32 2649, i32 28}
!181 = !{ptr @.str.77, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/crypto/hifn_795x.c", i32 2650, i32 3}
!183 = !{ptr @.str.78, !182, !"<string literal>", i1 false, i1 false}
!184 = !{ptr @hifn_init._entry, !182, !"_entry", i1 false, i1 false}
!185 = !{ptr @hifn_init._entry_ptr, !182, !"_entry_ptr", i1 false, i1 false}
!186 = !{ptr @.str.80, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/crypto/hifn_795x.c", i32 2662, i32 4}
!188 = !{ptr @hifn_init._entry.79, !187, !"_entry", i1 false, i1 false}
!189 = !{ptr @hifn_init._entry_ptr.81, !187, !"_entry_ptr", i1 false, i1 false}
!190 = !{ptr @.str.83, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/crypto/hifn_795x.c", i32 2670, i32 3}
!192 = !{ptr @hifn_init._entry.82, !191, !"_entry", i1 false, i1 false}
!193 = !{ptr @hifn_init._entry_ptr.84, !191, !"_entry_ptr", i1 false, i1 false}
!194 = !{ptr @.str.86, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/crypto/hifn_795x.c", i32 2675, i32 2}
!196 = !{ptr @hifn_init._entry.85, !195, !"_entry", i1 false, i1 false}
!197 = !{ptr @hifn_init._entry_ptr.87, !195, !"_entry_ptr", i1 false, i1 false}
!198 = !{!"sp"}
!199 = !{i32 1, !"wchar_size", i32 2}
!200 = !{i32 1, !"min_enum_size", i32 4}
!201 = !{i32 8, !"branch-target-enforcement", i32 0}
!202 = !{i32 8, !"sign-return-address", i32 0}
!203 = !{i32 8, !"sign-return-address-all", i32 0}
!204 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!205 = !{i32 7, !"uwtable", i32 1}
!206 = !{i32 7, !"frame-pointer", i32 2}
!207 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!208 = !{i64 2148369361}
!209 = !{i64 2148284670, i64 2148284702, i64 2148284731, i64 2148284765, i64 2148284796, i64 2148284819}
!210 = !{i64 2148369590}
!211 = !{i64 2148765765, i64 2148765770, i64 2148765783, i64 2148765827, i64 2148765861, i64 2148765882}
!212 = !{i64 2154743633}
!213 = !{i64 4719868}
!214 = !{i64 2154742680}
!215 = !{!"branch_weights", i32 1, i32 2000}
!216 = !{i64 2154839332, i64 2154839824, i64 2154839369, i64 2154839425, i64 2154839459, i64 2154839483, i64 2154839524, i64 2154839545, i64 2154839573, i64 2154839607}
!217 = !{i64 4720286}
!218 = !{i64 2154742127}
!219 = !{i64 2154741472}
!220 = !{!"branch_weights", i32 2000, i32 1}
!221 = !{i64 2148674484, i64 2148674764, i64 2148675098, i64 2148675432}
!222 = !{i64 2154434584, i64 2154435076, i64 2154434621, i64 2154434677, i64 2154434711, i64 2154434735, i64 2154434776, i64 2154434797, i64 2154434825, i64 2154434859}
!223 = !{i64 2154564077}
!224 = !{i64 2153953248}
!225 = !{i64 2153953455}
!226 = !{i64 2154566848}
!227 = distinct !{!227, !228}
!228 = !{!"llvm.loop.peeled.count", i32 1}
!229 = !{i64 2154431026, i64 2154431518, i64 2154431063, i64 2154431119, i64 2154431153, i64 2154431177, i64 2154431218, i64 2154431239, i64 2154431267, i64 2154431301}
!230 = !{i64 2154432636, i64 2154433128, i64 2154432673, i64 2154432729, i64 2154432763, i64 2154432787, i64 2154432828, i64 2154432849, i64 2154432877, i64 2154432911}
!231 = !{i64 2154788701, i64 2154789193, i64 2154788738, i64 2154788794, i64 2154788828, i64 2154788852, i64 2154788893, i64 2154788914, i64 2154788942, i64 2154788976}
!232 = !{i64 2154790307, i64 2154790799, i64 2154790344, i64 2154790400, i64 2154790434, i64 2154790458, i64 2154790499, i64 2154790520, i64 2154790548, i64 2154790582}
!233 = !{i64 2154815547, i64 2154816039, i64 2154815584, i64 2154815640, i64 2154815674, i64 2154815698, i64 2154815739, i64 2154815760, i64 2154815788, i64 2154815822}
!234 = !{i64 2149084773}
