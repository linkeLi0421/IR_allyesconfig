; ModuleID = '/llk/IR_all_yes/kernel/dma/map_benchmark.c_pt.bc'
source_filename = "../kernel/dma/map_benchmark.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_driver = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, %struct.pci_dynids }
%struct.list_head = type { ptr, ptr }
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.map_benchmark_data = type { %struct.map_benchmark, ptr, ptr, i32, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.map_benchmark = type { i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, [76 x i8] }
%struct.atomic64_t = type { i64 }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
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
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.page = type { i32, %union.anon.2, %union.anon.63, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.63 = type { %struct.atomic_t }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.71, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.71 = type { ptr }

@map_benchmark_platform_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @map_benchmark_platform_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@map_benchmark_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr null, ptr @map_benchmark_pci_probe, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__initcall__kmod_map_benchmark__236_377_map_benchmark_init6 = internal global ptr @map_benchmark_init, section ".initcall6.init", align 4
@__exitcall_map_benchmark_cleanup = internal global ptr @map_benchmark_cleanup, section ".exitcall.exit", align 4
@__UNIQUE_ID_author237 = internal constant [61 x i8] c"map_benchmark.author=Barry Song <song.bao.hua@hisilicon.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description238 = internal constant [51 x i8] c"map_benchmark.description=dma_map benchmark driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file239 = internal constant [44 x i8] c"map_benchmark.file=kernel/dma/map_benchmark\00", section ".modinfo", align 1
@__UNIQUE_ID_license240 = internal constant [26 x i8] c"map_benchmark.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"dma_map_benchmark\00", [46 x i8] zeroinitializer }, align 32
@__map_benchmark_probe._entry = internal constant %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 314, ptr null, ptr null }, align 1
@.str.1 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013map_benchmark: Can't add debugfs remove action\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"__map_benchmark_probe\00", [42 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"kernel/dma/map_benchmark.c\00", [37 x i8] zeroinitializer }, align 32
@__map_benchmark_probe._entry_ptr = internal global ptr @__map_benchmark_probe._entry, section ".printk_index", align 4
@map_benchmark_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @map_benchmark_ioctl, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@map_benchmark_ioctl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.3, i32 218, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013map_benchmark: invalid thread number\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"map_benchmark_ioctl\00", [44 x i8] zeroinitializer }, align 32
@map_benchmark_ioctl._entry_ptr = internal global ptr @map_benchmark_ioctl._entry, section ".printk_index", align 4
@map_benchmark_ioctl._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.5, ptr @.str.3, i32 224, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013map_benchmark: invalid duration seconds\0A\00", [53 x i8] zeroinitializer }, align 32
@map_benchmark_ioctl._entry_ptr.8 = internal global ptr @map_benchmark_ioctl._entry.6, section ".printk_index", align 4
@map_benchmark_ioctl._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.5, ptr @.str.3, i32 229, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013map_benchmark: invalid transmission delay\0A\00", [51 x i8] zeroinitializer }, align 32
@map_benchmark_ioctl._entry_ptr.11 = internal global ptr @map_benchmark_ioctl._entry.9, section ".printk_index", align 4
@map_benchmark_ioctl._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.5, ptr @.str.3, i32 235, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013map_benchmark: invalid numa node\0A\00", [60 x i8] zeroinitializer }, align 32
@map_benchmark_ioctl._entry_ptr.14 = internal global ptr @map_benchmark_ioctl._entry.12, section ".printk_index", align 4
@map_benchmark_ioctl._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.5, ptr @.str.3, i32 240, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013map_benchmark: invalid granule size\0A\00", [57 x i8] zeroinitializer }, align 32
@map_benchmark_ioctl._entry_ptr.17 = internal global ptr @map_benchmark_ioctl._entry.15, section ".printk_index", align 4
@map_benchmark_ioctl._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.5, ptr @.str.3, i32 255, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013map_benchmark: invalid DMA direction\0A\00", [56 x i8] zeroinitializer }, align 32
@map_benchmark_ioctl._entry_ptr.20 = internal global ptr @map_benchmark_ioctl._entry.18, section ".printk_index", align 4
@map_benchmark_ioctl._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.5, ptr @.str.3, i32 265, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013map_benchmark: failed to set dma_mask on device %s\0A\00", [42 x i8] zeroinitializer }, align 32
@map_benchmark_ioctl._entry_ptr.23 = internal global ptr @map_benchmark_ioctl._entry.21, section ".printk_index", align 4
@.str.26 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@.str.27 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"dma-map-benchmark/%d\00", [43 x i8] zeroinitializer }, align 32
@do_map_benchmark._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.3, i32 142, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013map_benchmark: create dma_map thread failed\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"do_map_benchmark\00", [47 x i8] zeroinitializer }, align 32
@do_map_benchmark._entry_ptr = internal global ptr @do_map_benchmark._entry, section ".printk_index", align 4
@map_benchmark_thread._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.3, i32 88, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013map_benchmark: dma_map_single failed on %s\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"map_benchmark_thread\00", [43 x i8] zeroinitializer }, align 32
@map_benchmark_thread._entry_ptr = internal global ptr @map_benchmark_thread._entry, section ".printk_index", align 4
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.32 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.34 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"map_benchmark\00", [18 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@___asan_gen_.35 = private unnamed_addr constant [30 x i8] c"map_benchmark_platform_driver\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 336, i32 31 }
@___asan_gen_.38 = private unnamed_addr constant [25 x i8] c"map_benchmark_pci_driver\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 349, i32 26 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 338, i32 11 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 314, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant [19 x i8] c"map_benchmark_fops\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 289, i32 37 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 218, i32 4 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 224, i32 4 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 229, i32 4 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 235, i32 4 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 240, i32 4 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 255, i32 4 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 264, i32 4 }
@___asan_gen_.102 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 156, i32 2 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 140, i32 23 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 142, i32 4 }
@___asan_gen_.116 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 87, i32 4 }
@___asan_gen_.129 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 326, i32 6 }
@___asan_gen_.131 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.132 = private constant [30 x i8] c"../kernel/dma/map_benchmark.c\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 358, i32 8 }
@llvm.compiler.used = appending global [51 x ptr] [ptr @__UNIQUE_ID_author237, ptr @__UNIQUE_ID_description238, ptr @__UNIQUE_ID_file239, ptr @__UNIQUE_ID_license240, ptr @__exitcall_map_benchmark_cleanup, ptr @__initcall__kmod_map_benchmark__236_377_map_benchmark_init6, ptr @__map_benchmark_probe._entry, ptr @__map_benchmark_probe._entry_ptr, ptr @do_map_benchmark._entry, ptr @do_map_benchmark._entry_ptr, ptr @map_benchmark_cleanup, ptr @map_benchmark_ioctl._entry, ptr @map_benchmark_ioctl._entry.12, ptr @map_benchmark_ioctl._entry.15, ptr @map_benchmark_ioctl._entry.18, ptr @map_benchmark_ioctl._entry.21, ptr @map_benchmark_ioctl._entry.6, ptr @map_benchmark_ioctl._entry.9, ptr @map_benchmark_ioctl._entry_ptr, ptr @map_benchmark_ioctl._entry_ptr.11, ptr @map_benchmark_ioctl._entry_ptr.14, ptr @map_benchmark_ioctl._entry_ptr.17, ptr @map_benchmark_ioctl._entry_ptr.20, ptr @map_benchmark_ioctl._entry_ptr.23, ptr @map_benchmark_ioctl._entry_ptr.8, ptr @map_benchmark_thread._entry, ptr @map_benchmark_thread._entry_ptr, ptr @map_benchmark_platform_driver, ptr @map_benchmark_pci_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @map_benchmark_fops, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34], section "llvm.metadata"
@0 = internal global [33 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @map_benchmark_platform_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @map_benchmark_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @map_benchmark_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @map_benchmark_ioctl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @map_benchmark_ioctl._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @map_benchmark_ioctl._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @map_benchmark_ioctl._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @map_benchmark_ioctl._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @map_benchmark_ioctl._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @map_benchmark_ioctl._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_map_benchmark._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @map_benchmark_thread._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @map_benchmark_cleanup() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @map_benchmark_platform_driver) #8
  tail call void @pci_unregister_driver(ptr noundef nonnull @map_benchmark_pci_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @map_benchmark_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @map_benchmark_pci_driver, ptr noundef null, ptr noundef nonnull @.str.34) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @map_benchmark_platform_driver, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @pci_unregister_driver(ptr noundef nonnull @map_benchmark_pci_driver) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.then3 ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @map_benchmark_platform_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 192, i32 noundef 3520) #8
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %entry.__map_benchmark_probe.exit_crit_edge, label %if.end.i

entry.__map_benchmark_probe.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %__map_benchmark_probe.exit

if.end.i:                                         ; preds = %entry
  %dev2.i = getelementptr inbounds %struct.map_benchmark_data, ptr %call.i.i, i32 0, i32 1
  %0 = ptrtoint ptr %dev2.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev, ptr %dev2.i, align 8
  %call3.i = tail call i32 @devm_add_action(ptr noundef %dev, ptr noundef nonnull @map_benchmark_remove_debugfs, ptr noundef nonnull %call.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %if.end7.i, label %do.end.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %call6.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #11
  br label %__map_benchmark_probe.exit

if.end7.i:                                        ; preds = %if.end.i
  %call8.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str, i16 noundef zeroext 384, ptr noundef null, ptr noundef nonnull %call.i.i, ptr noundef nonnull @map_benchmark_fops) #8
  %cmp.i.i = icmp ugt ptr %call8.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then10.i, label %if.end12.i

if.then10.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  %1 = ptrtoint ptr %call8.i to i32
  br label %__map_benchmark_probe.exit

if.end12.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  %debugfs.i = getelementptr inbounds %struct.map_benchmark_data, ptr %call.i.i, i32 0, i32 2
  %2 = ptrtoint ptr %debugfs.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call8.i, ptr %debugfs.i, align 4
  br label %__map_benchmark_probe.exit

__map_benchmark_probe.exit:                       ; preds = %if.end12.i, %if.then10.i, %do.end.i, %entry.__map_benchmark_probe.exit_crit_edge
  %retval.0.i = phi i32 [ %call3.i, %do.end.i ], [ %1, %if.then10.i ], [ 0, %if.end12.i ], [ -12, %entry.__map_benchmark_probe.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @map_benchmark_remove_debugfs(ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %debugfs = getelementptr inbounds %struct.map_benchmark_data, ptr %data, i32 0, i32 2
  %0 = ptrtoint ptr %debugfs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %debugfs, align 4
  tail call void @debugfs_remove(ptr noundef %1) #8
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @map_benchmark_ioctl(ptr nocapture noundef readonly %file, i32 noundef %cmd, i32 noundef %arg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = inttoptr i32 %arg to ptr
  tail call void @__might_fault(ptr noundef nonnull @.str.26, i32 noundef 156) #8
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i, label %entry.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.then11.i.i_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %3 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 136, i32 -1226833920) #12
  %asmresult.i.i = extractvalue { i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !89

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %1, i32 noundef 136) #8
  %4 = tail call i32 @llvm.read_register.i32(metadata !79) #8
  %and.i.i.i.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 4
  %6 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #4, !srcloc !90
  %and.i.i.i.i = and i32 %6, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #8, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !92
  %call1.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef %1, ptr noundef %2, i32 noundef 136) #8
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %6) #8, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !92
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !89

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %entry.if.then11.i.i_crit_edge
  %res.03.i.i = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 136, %entry.if.then11.i.i_crit_edge ], [ 136, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 136, %res.03.i.i
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 %sub.i.i
  %7 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.03.i.i)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1064803327, i32 %cmd)
  %cond97 = icmp eq i32 %cmd, -1064803327
  br i1 %cond97, label %sw.bb, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %threads = getelementptr inbounds %struct.map_benchmark, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %threads to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %threads, align 8
  %10 = add i32 %9, -1025
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1024, i32 %10)
  %11 = icmp ult i32 %10, -1024
  br i1 %11, label %do.end, label %if.end7

do.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #11
  br label %cleanup

if.end7:                                          ; preds = %sw.bb
  %seconds = getelementptr inbounds %struct.map_benchmark, ptr %1, i32 0, i32 5
  %12 = ptrtoint ptr %seconds to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %seconds, align 4
  %14 = add i32 %13, -301
  call void @__sanitizer_cov_trace_const_cmp4(i32 -300, i32 %14)
  %15 = icmp ult i32 %14, -300
  br i1 %15, label %do.end17, label %if.end20

do.end17:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #11
  br label %cleanup

if.end20:                                         ; preds = %if.end7
  %dma_trans_ns = getelementptr inbounds %struct.map_benchmark, ptr %1, i32 0, i32 9
  %16 = ptrtoint ptr %dma_trans_ns to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dma_trans_ns, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000000, i32 %17)
  %cmp22 = icmp ugt i32 %17, 10000000
  br i1 %cmp22, label %do.end26, label %if.end29

do.end26:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  %call28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #11
  br label %cleanup

if.end29:                                         ; preds = %if.end20
  %node = getelementptr inbounds %struct.map_benchmark, ptr %1, i32 0, i32 6
  %18 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %node, align 8
  %20 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values)
  switch i32 %19, label %do.end39 [
    i32 -1, label %if.end29.if.end42_crit_edge
    i32 0, label %if.end29.if.end42_crit_edge169
  ]

if.end29.if.end42_crit_edge169:                   ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end42

if.end29.if.end42_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end42

do.end39:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  %call41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #11
  br label %cleanup

if.end42:                                         ; preds = %if.end29.if.end42_crit_edge, %if.end29.if.end42_crit_edge169
  %granule = getelementptr inbounds %struct.map_benchmark, ptr %1, i32 0, i32 10
  %21 = ptrtoint ptr %granule to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %granule, align 8
  %23 = add i32 %22, -1025
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1024, i32 %23)
  %24 = icmp ult i32 %23, -1024
  br i1 %24, label %do.end52, label %if.end55

do.end52:                                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  %call54 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #11
  br label %cleanup

if.end55:                                         ; preds = %if.end42
  %dma_dir = getelementptr inbounds %struct.map_benchmark, ptr %1, i32 0, i32 8
  %25 = ptrtoint ptr %dma_dir to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %dma_dir, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %26)
  %switch = icmp ult i32 %26, 3
  br i1 %switch, label %sw.epilog, label %do.end64

do.end64:                                         ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #10
  %call66 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19) #11
  br label %cleanup

sw.epilog:                                        ; preds = %if.end55
  %dir61 = getelementptr inbounds %struct.map_benchmark_data, ptr %1, i32 0, i32 3
  %27 = ptrtoint ptr %dir61 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %dir61, align 8
  %dev = getelementptr inbounds %struct.map_benchmark_data, ptr %1, i32 0, i32 1
  %28 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev, align 8
  %dma_mask.i = getelementptr inbounds %struct.device, ptr %29, i32 0, i32 18
  %30 = ptrtoint ptr %dma_mask.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dma_mask.i, align 8
  %tobool.not.i = icmp eq ptr %31, null
  br i1 %tobool.not.i, label %sw.epilog.if.end.i_crit_edge, label %land.lhs.true.i

sw.epilog.if.end.i_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %sw.epilog
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %31, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %33)
  %tobool2.not.i = icmp eq i64 %33, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %land.lhs.true.i.dma_get_mask.exit_crit_edge

land.lhs.true.i.dma_get_mask.exit_crit_edge:      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dma_get_mask.exit

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %sw.epilog.if.end.i_crit_edge
  br label %dma_get_mask.exit

dma_get_mask.exit:                                ; preds = %if.end.i, %land.lhs.true.i.dma_get_mask.exit_crit_edge
  %retval.0.i = phi i64 [ 4294967295, %if.end.i ], [ %33, %land.lhs.true.i.dma_get_mask.exit_crit_edge ]
  %dma_bits = getelementptr inbounds %struct.map_benchmark, ptr %1, i32 0, i32 7
  %34 = ptrtoint ptr %dma_bits to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %dma_bits, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %35)
  %cmp70 = icmp eq i32 %35, 64
  br i1 %cmp70, label %dma_get_mask.exit.cond.end_crit_edge, label %cond.false

dma_get_mask.exit.cond.end_crit_edge:             ; preds = %dma_get_mask.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.false:                                       ; preds = %dma_get_mask.exit
  call void @__sanitizer_cov_trace_pc() #10
  %sh_prom = zext i32 %35 to i64
  %notmask = shl nsw i64 -1, %sh_prom
  %sub = xor i64 %notmask, -1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %dma_get_mask.exit.cond.end_crit_edge
  %cond = phi i64 [ %sub, %cond.false ], [ -1, %dma_get_mask.exit.cond.end_crit_edge ]
  %call73 = tail call i32 @dma_set_mask(ptr noundef %29, i64 noundef %cond) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %tobool74.not = icmp eq i32 %call73, 0
  br i1 %tobool74.not, label %if.end83, label %do.end78

do.end78:                                         ; preds = %cond.end
  %36 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %37, i32 0, i32 3
  %38 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i136 = icmp eq ptr %39, null
  br i1 %tobool.not.i136, label %if.end.i137, label %do.end78.dev_name.exit_crit_edge

do.end78.dev_name.exit_crit_edge:                 ; preds = %do.end78
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit

if.end.i137:                                      ; preds = %do.end78
  call void @__sanitizer_cov_trace_pc() #10
  %40 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %37, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i137, %do.end78.dev_name.exit_crit_edge
  %retval.0.i138 = phi ptr [ %41, %if.end.i137 ], [ %39, %do.end78.dev_name.exit_crit_edge ]
  %call82 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef %retval.0.i138) #11
  br label %cleanup

if.end83:                                         ; preds = %cond.end
  %42 = ptrtoint ptr %threads to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %threads, align 8
  %44 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %node, align 8
  %46 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %43, i32 4) #8
  %47 = extractvalue { i32, i1 } %46, 1
  br i1 %47, label %if.end83.if.then.i130_crit_edge, label %if.end7.i.i, !prof !93

if.end83.if.then.i130_crit_edge:                  ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i130

if.end7.i.i:                                      ; preds = %if.end83
  %48 = extractvalue { i32, i1 } %46, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %48, i32 noundef 3264) #13
  %tobool.not.i140 = icmp eq ptr %call8.i.i, null
  br i1 %tobool.not.i140, label %if.end7.i.i.if.then.i130_crit_edge, label %if.end.i141

if.end7.i.i.if.then.i130_crit_edge:               ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i130

if.end.i141:                                      ; preds = %if.end7.i.i
  %49 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev, align 8
  %call4.i = tail call ptr @get_device(ptr noundef %50) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp180.not.i = icmp eq i32 %43, 0
  br i1 %cmp180.not.i, label %if.end.i141.for.end.i_crit_edge, label %for.body.lr.ph.i

if.end.i141.for.end.i_crit_edge:                  ; preds = %if.end.i141
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.end.i141
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %45)
  %cmp15.not.i = icmp eq i32 %45, -1
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.0181.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %51 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %node, align 8
  %call7.i = tail call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @map_benchmark_thread, ptr noundef %1, i32 noundef %52, ptr noundef nonnull @.str.27, i32 noundef %i.0181.i) #8
  %arrayidx.i = getelementptr ptr, ptr %call8.i.i, i32 %i.0181.i
  %53 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %call7.i, ptr %arrayidx.i, align 4
  %cmp.i.i142 = icmp ugt ptr %call7.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i142, label %do.end.i, label %if.end14.i

do.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i.le = getelementptr ptr, ptr %call8.i.i, i32 %i.0181.i
  %call11.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28) #11
  %54 = ptrtoint ptr %arrayidx.i.le to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %arrayidx.i.le, align 4
  %56 = ptrtoint ptr %55 to i32
  br label %out.i

if.end14.i:                                       ; preds = %for.body.i
  br i1 %cmp15.not.i, label %if.end14.i.for.inc.i_crit_edge, label %if.then16.i

if.end14.i.for.inc.i_crit_edge:                   ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.then16.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kthread_bind_mask(ptr noundef %call7.i, ptr noundef nonnull @__cpu_online_mask) #8
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then16.i, %if.end14.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.0181.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %43
  br i1 %exitcond.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.end.i141.for.end.i_crit_edge
  %sum_map_100ns.i = getelementptr inbounds %struct.map_benchmark_data, ptr %1, i32 0, i32 4
  %call.i.i.i143 = tail call zeroext i1 @__kasan_check_write(ptr noundef %sum_map_100ns.i, i32 noundef 8) #8
  tail call void @generic_atomic64_set(ptr noundef %sum_map_100ns.i, i64 noundef 0) #8
  %sum_unmap_100ns.i = getelementptr inbounds %struct.map_benchmark_data, ptr %1, i32 0, i32 5
  %call.i.i156.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sum_unmap_100ns.i, i32 noundef 8) #8
  tail call void @generic_atomic64_set(ptr noundef %sum_unmap_100ns.i, i64 noundef 0) #8
  %sum_sq_map.i = getelementptr inbounds %struct.map_benchmark_data, ptr %1, i32 0, i32 6
  %call.i.i157.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sum_sq_map.i, i32 noundef 8) #8
  tail call void @generic_atomic64_set(ptr noundef %sum_sq_map.i, i64 noundef 0) #8
  %sum_sq_unmap.i = getelementptr inbounds %struct.map_benchmark_data, ptr %1, i32 0, i32 7
  %call.i.i158.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sum_sq_unmap.i, i32 noundef 8) #8
  tail call void @generic_atomic64_set(ptr noundef %sum_sq_unmap.i, i64 noundef 0) #8
  %loops19.i = getelementptr inbounds %struct.map_benchmark_data, ptr %1, i32 0, i32 8
  %call.i.i159.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %loops19.i, i32 noundef 8) #8
  tail call void @generic_atomic64_set(ptr noundef %loops19.i, i64 noundef 0) #8
  br i1 %cmp180.not.i, label %for.end29.thread.i, label %for.end.i.for.body22.i_crit_edge

for.end.i.for.body22.i_crit_edge:                 ; preds = %for.end.i
  br label %for.body22.i

for.end29.thread.i:                               ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %57 = ptrtoint ptr %seconds to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %seconds, align 4
  %mul194.i = mul i32 %58, 1000
  %call31195.i = tail call i32 @msleep_interruptible(i32 noundef %mul194.i) #8
  br label %for.end42.i

for.body22.i:                                     ; preds = %get_task_struct.exit.i.for.body22.i_crit_edge, %for.end.i.for.body22.i_crit_edge
  %i.1183.i = phi i32 [ %inc28.i, %get_task_struct.exit.i.for.body22.i_crit_edge ], [ 0, %for.end.i.for.body22.i_crit_edge ]
  %arrayidx23.i = getelementptr ptr, ptr %call8.i.i, i32 %i.1183.i
  %59 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %arrayidx23.i, align 4
  %usage.i.i = getelementptr inbounds %struct.task_struct, ptr %60, i32 0, i32 2
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %usage.i.i, i32 1, i32 3, i32 1) #8
  %61 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i.i, ptr %usage.i.i, i32 1, ptr elementtype(i32) %usage.i.i) #8, !srcloc !94
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %61, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %for.body22.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !93

for.body22.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %for.body22.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %for.body22.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %62 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %62)
  %.not.i.i.i.i.i = icmp sgt i32 %62, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.get_task_struct.exit.i_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !89

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.get_task_struct.exit.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_task_struct.exit.i

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %for.body22.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %for.body22.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %usage.i.i, i32 noundef %.sink.i.i.i.i.i) #8
  br label %get_task_struct.exit.i

get_task_struct.exit.i:                           ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.get_task_struct.exit.i_crit_edge
  %63 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %arrayidx23.i, align 4
  %call26.i = tail call i32 @wake_up_process(ptr noundef %64) #8
  %inc28.i = add nuw nsw i32 %i.1183.i, 1
  %exitcond190.not.i = icmp eq i32 %inc28.i, %43
  br i1 %exitcond190.not.i, label %for.body34.i.preheader, label %get_task_struct.exit.i.for.body22.i_crit_edge

get_task_struct.exit.i.for.body22.i_crit_edge:    ; preds = %get_task_struct.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body22.i

for.body34.i.preheader:                           ; preds = %get_task_struct.exit.i
  %65 = ptrtoint ptr %seconds to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %seconds, align 4
  %mul.i = mul i32 %66, 1000
  %call31.i = tail call i32 @msleep_interruptible(i32 noundef %mul.i) #8
  br label %for.body34.i

for.cond32.i:                                     ; preds = %for.body34.i
  %inc41.i = add nuw nsw i32 %i.2185.i, 1
  %exitcond191.not.i = icmp eq i32 %inc41.i, %43
  br i1 %exitcond191.not.i, label %for.cond32.i.for.end42.i_crit_edge, label %for.cond32.i.for.body34.i_crit_edge

for.cond32.i.for.body34.i_crit_edge:              ; preds = %for.cond32.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body34.i

for.cond32.i.for.end42.i_crit_edge:               ; preds = %for.cond32.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end42.i

for.body34.i:                                     ; preds = %for.cond32.i.for.body34.i_crit_edge, %for.body34.i.preheader
  %i.2185.i = phi i32 [ %inc41.i, %for.cond32.i.for.body34.i_crit_edge ], [ 0, %for.body34.i.preheader ]
  %arrayidx35.i = getelementptr ptr, ptr %call8.i.i, i32 %i.2185.i
  %67 = ptrtoint ptr %arrayidx35.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %arrayidx35.i, align 4
  %call36.i = tail call i32 @kthread_stop(ptr noundef %68) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.i)
  %tobool37.not.i = icmp eq i32 %call36.i, 0
  br i1 %tobool37.not.i, label %for.cond32.i, label %for.body34.i.out.i_crit_edge

for.body34.i.out.i_crit_edge:                     ; preds = %for.body34.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out.i

for.end42.i:                                      ; preds = %for.cond32.i.for.end42.i_crit_edge, %for.end29.thread.i
  %call.i.i160.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %loops19.i, i32 noundef 8) #8
  %call.i.i144 = tail call i64 @generic_atomic64_read(ptr noundef %loops19.i) #8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call.i.i144)
  %cmp45.not.i = icmp eq i64 %call.i.i144, 0
  br i1 %cmp45.not.i, label %for.end42.i.out.i_crit_edge, label %if.then48.i, !prof !93

for.end42.i.out.i_crit_edge:                      ; preds = %for.end42.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out.i

if.then48.i:                                      ; preds = %for.end42.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i161.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %sum_map_100ns.i, i32 noundef 8) #8
  %call.i162.i = tail call i64 @generic_atomic64_read(ptr noundef %sum_map_100ns.i) #8
  %call.i.i163.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %sum_unmap_100ns.i, i32 noundef 8) #8
  %call.i164.i = tail call i64 @generic_atomic64_read(ptr noundef %sum_unmap_100ns.i) #8
  %call.i.i165.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %sum_sq_map.i, i32 noundef 8) #8
  %call.i166.i = tail call i64 @generic_atomic64_read(ptr noundef %sum_sq_map.i) #8
  %call.i.i167.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %sum_sq_unmap.i, i32 noundef 8) #8
  %call.i168.i = tail call i64 @generic_atomic64_read(ptr noundef %sum_sq_unmap.i) #8
  %call59.i = tail call i64 @div64_u64(i64 noundef %call.i162.i, i64 noundef %call.i.i144) #8
  %69 = ptrtoint ptr %1 to i32
  call void @__asan_store8_noabort(i32 %69)
  store i64 %call59.i, ptr %1, align 8
  %call61.i = tail call i64 @div64_u64(i64 noundef %call.i164.i, i64 noundef %call.i.i144) #8
  %avg_unmap_100ns.i = getelementptr inbounds %struct.map_benchmark, ptr %1, i32 0, i32 2
  %70 = ptrtoint ptr %avg_unmap_100ns.i to i32
  call void @__asan_store8_noabort(i32 %70)
  store i64 %call61.i, ptr %avg_unmap_100ns.i, align 8
  %call63.i = tail call i64 @div64_u64(i64 noundef %call.i166.i, i64 noundef %call.i.i144) #8
  %71 = ptrtoint ptr %1 to i32
  call void @__asan_load8_noabort(i32 %71)
  %72 = load i64, ptr %1, align 8
  %mul68.i = mul i64 %72, %72
  %sub.i = sub i64 %call63.i, %mul68.i
  %call69.i = tail call i64 @div64_u64(i64 noundef %call.i168.i, i64 noundef %call.i.i144) #8
  %73 = ptrtoint ptr %avg_unmap_100ns.i to i32
  call void @__asan_load8_noabort(i32 %73)
  %74 = load i64, ptr %avg_unmap_100ns.i, align 8
  %mul74.i = mul i64 %74, %74
  %sub75.i = sub i64 %call69.i, %mul74.i
  %call76.i = tail call i32 @int_sqrt64(i64 noundef %sub.i) #8
  %conv.i145 = zext i32 %call76.i to i64
  %map_stddev.i = getelementptr inbounds %struct.map_benchmark, ptr %1, i32 0, i32 1
  %75 = ptrtoint ptr %map_stddev.i to i32
  call void @__asan_store8_noabort(i32 %75)
  store i64 %conv.i145, ptr %map_stddev.i, align 8
  %call78.i = tail call i32 @int_sqrt64(i64 noundef %sub75.i) #8
  %conv79.i = zext i32 %call78.i to i64
  %unmap_stddev.i = getelementptr inbounds %struct.map_benchmark, ptr %1, i32 0, i32 3
  %76 = ptrtoint ptr %unmap_stddev.i to i32
  call void @__asan_store8_noabort(i32 %76)
  store i64 %conv79.i, ptr %unmap_stddev.i, align 8
  br label %out.i

out.i:                                            ; preds = %if.then48.i, %for.end42.i.out.i_crit_edge, %for.body34.i.out.i_crit_edge, %do.end.i
  %ret.1.i = phi i32 [ %56, %do.end.i ], [ 0, %if.then48.i ], [ 0, %for.end42.i.out.i_crit_edge ], [ %call36.i, %for.body34.i.out.i_crit_edge ]
  br i1 %cmp180.not.i, label %out.i.do_map_benchmark.exit_crit_edge, label %out.i.for.body85.i_crit_edge

out.i.for.body85.i_crit_edge:                     ; preds = %out.i
  br label %for.body85.i

out.i.do_map_benchmark.exit_crit_edge:            ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do_map_benchmark.exit

for.body85.i:                                     ; preds = %put_task_struct.exit.i.for.body85.i_crit_edge, %out.i.for.body85.i_crit_edge
  %i.3187.i = phi i32 [ %inc88.i, %put_task_struct.exit.i.for.body85.i_crit_edge ], [ 0, %out.i.for.body85.i_crit_edge ]
  %arrayidx86.i = getelementptr ptr, ptr %call8.i.i, i32 %i.3187.i
  %77 = ptrtoint ptr %arrayidx86.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %arrayidx86.i, align 4
  %usage.i169.i = getelementptr inbounds %struct.task_struct, ptr %78, i32 0, i32 2
  %call.i.i.i.i.i.i170.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i169.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !95
  tail call void @llvm.prefetch.p0(ptr %usage.i169.i, i32 1, i32 3, i32 1) #8
  %79 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i169.i, ptr %usage.i169.i, i32 1, ptr elementtype(i32) %usage.i169.i) #8, !srcloc !96
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %79, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %for.body85.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i171.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i171.i, label %if.end5.i.i.i.i.i.put_task_struct.exit.i_crit_edge, label %if.then10.i.i.i.i.i, !prof !89

if.end5.i.i.i.i.i.put_task_struct.exit.i_crit_edge: ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %put_task_struct.exit.i

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @refcount_warn_saturate(ptr noundef %usage.i169.i, i32 noundef 3) #8
  br label %put_task_struct.exit.i

if.then.i.i:                                      ; preds = %for.body85.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !97
  tail call void @__put_task_struct(ptr noundef %78) #8
  br label %put_task_struct.exit.i

put_task_struct.exit.i:                           ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.put_task_struct.exit.i_crit_edge
  %inc88.i = add nuw nsw i32 %i.3187.i, 1
  %exitcond192.not.i = icmp eq i32 %inc88.i, %43
  br i1 %exitcond192.not.i, label %put_task_struct.exit.i.do_map_benchmark.exit_crit_edge, label %put_task_struct.exit.i.for.body85.i_crit_edge

put_task_struct.exit.i.for.body85.i_crit_edge:    ; preds = %put_task_struct.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body85.i

put_task_struct.exit.i.do_map_benchmark.exit_crit_edge: ; preds = %put_task_struct.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do_map_benchmark.exit

do_map_benchmark.exit:                            ; preds = %put_task_struct.exit.i.do_map_benchmark.exit_crit_edge, %out.i.do_map_benchmark.exit_crit_edge
  %80 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %dev, align 8
  tail call void @put_device(ptr noundef %81) #8
  tail call void @kfree(ptr noundef nonnull %call8.i.i) #8
  br label %if.then.i130

if.then.i130:                                     ; preds = %do_map_benchmark.exit, %if.end7.i.i.if.then.i130_crit_edge, %if.end83.if.then.i130_crit_edge
  %retval.0.i146152 = phi i32 [ %ret.1.i, %do_map_benchmark.exit ], [ -12, %if.end83.if.then.i130_crit_edge ], [ -12, %if.end7.i.i.if.then.i130_crit_edge ]
  %82 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %dev, align 8
  %call86 = tail call i32 @dma_set_mask(ptr noundef %83, i64 noundef %retval.0.i) #8
  tail call void @__might_fault(ptr noundef nonnull @.str.26, i32 noundef 174) #8
  %call.i.i129 = tail call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i129, label %if.then.i130.cleanup_crit_edge, label %copy_to_user.exit

if.then.i130.cleanup_crit_edge:                   ; preds = %if.then.i130
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

copy_to_user.exit:                                ; preds = %if.then.i130
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i134 = tail call zeroext i1 @__kasan_check_read(ptr noundef %1, i32 noundef 136) #8
  %call.i1.i.i = tail call i32 @arm_copy_to_user(ptr noundef %2, ptr noundef %1, i32 noundef 136) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i.i)
  %tobool91.not = icmp eq i32 %call.i1.i.i, 0
  %spec.select = select i1 %tobool91.not, i32 %retval.0.i146152, i32 -14
  br label %cleanup

cleanup:                                          ; preds = %copy_to_user.exit, %if.then.i130.cleanup_crit_edge, %dev_name.exit, %do.end64, %do.end52, %do.end39, %do.end26, %do.end17, %do.end, %if.end.cleanup_crit_edge, %if.then11.i.i
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end17 ], [ -22, %do.end26 ], [ -22, %do.end52 ], [ -22, %do.end64 ], [ -22, %dev_name.exit ], [ -22, %do.end39 ], [ -22, %if.end.cleanup_crit_edge ], [ -14, %if.then11.i.i ], [ -14, %if.then.i130.cleanup_crit_edge ], [ %spec.select, %copy_to_user.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_open(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_create_on_node(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @map_benchmark_thread(ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %granule = getelementptr inbounds %struct.map_benchmark, ptr %data, i32 0, i32 10
  %0 = ptrtoint ptr %granule to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %granule, align 8
  %mul = shl i32 %1, 12
  %call = tail call noalias ptr @alloc_pages_exact(i32 noundef %mul, i32 noundef 3264) #13
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup44_crit_edge, label %while.cond.preheader

entry.cleanup44_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup44

while.cond.preheader:                             ; preds = %entry
  %call298 = tail call zeroext i1 @kthread_should_stop() #8
  br i1 %call298, label %while.cond.preheader.out_crit_edge, label %while.body.lr.ph

while.cond.preheader.out_crit_edge:               ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %dir = getelementptr inbounds %struct.map_benchmark_data, ptr %data, i32 0, i32 3
  %dev = getelementptr inbounds %struct.map_benchmark_data, ptr %data, i32 0, i32 1
  %2 = ptrtoint ptr %call to i32
  %sub.i = add i32 %2, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %and.i = and i32 %2, 4095
  %dma_trans_ns = getelementptr inbounds %struct.map_benchmark, ptr %data, i32 0, i32 9
  %sum_map_100ns = getelementptr inbounds %struct.map_benchmark_data, ptr %data, i32 0, i32 4
  %sum_unmap_100ns = getelementptr inbounds %struct.map_benchmark_data, ptr %data, i32 0, i32 5
  %sum_sq_map = getelementptr inbounds %struct.map_benchmark_data, ptr %data, i32 0, i32 6
  %sum_sq_unmap = getelementptr inbounds %struct.map_benchmark_data, ptr %data, i32 0, i32 7
  %loops = getelementptr inbounds %struct.map_benchmark_data, ptr %data, i32 0, i32 8
  br label %while.body

while.body:                                       ; preds = %if.end21.while.body_crit_edge, %while.body.lr.ph
  %3 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %dir, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %cmp.not = icmp eq i32 %4, 2
  br i1 %cmp.not, label %while.body.if.end6_crit_edge, label %if.then4

while.body.if.end6_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.then4:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %5 = call ptr @memset(ptr %call, i32 102, i32 %mul)
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %while.body.if.end6_crit_edge
  %call7 = tail call i64 @ktime_get() #8
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 8
  %8 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dir, align 8
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef nonnull %call) #8
  br i1 %call.i, label %land.rhs.i, label %dma_map_single_attrs.exit

land.rhs.i:                                       ; preds = %if.end6
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge, label %if.then.i, !prof !89

land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dma_map_single_attrs.exit.thread

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %7) #8
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 3
  %10 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %11, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %7, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %13, %if.end.i.i ], [ %11, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.32, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.33, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #8
  br label %dma_map_single_attrs.exit.thread

dma_map_single_attrs.exit.thread:                 ; preds = %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 8
  tail call void @debug_dma_mapping_error(ptr noundef %15, i32 noundef -1) #8
  br label %do.end

dma_map_single_attrs.exit:                        ; preds = %if.end6
  tail call void @debug_dma_map_single(ptr noundef %7, ptr noundef nonnull %call, i32 noundef %mul) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %16 = load ptr, ptr @mem_map, align 4
  %add.ptr.i = getelementptr %struct.page, ptr %16, i32 %shr.i
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %7, ptr noundef %add.ptr.i, i32 noundef %and.i, i32 noundef %mul, i32 noundef %9, i32 noundef 0) #8
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 8
  tail call void @debug_dma_mapping_error(ptr noundef %18, i32 noundef %call41.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i)
  %cmp.i = icmp eq i32 %call41.i, -1
  br i1 %cmp.i, label %dma_map_single_attrs.exit.do.end_crit_edge, label %if.end21

dma_map_single_attrs.exit.do.end_crit_edge:       ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end:                                           ; preds = %dma_map_single_attrs.exit.do.end_crit_edge, %dma_map_single_attrs.exit.thread
  %19 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %22, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end.cleanup.thread_crit_edge

do.end.cleanup.thread_crit_edge:                  ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread

if.end.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %20, align 4
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.end.i, %do.end.cleanup.thread_crit_edge
  %retval.0.i79 = phi ptr [ %24, %if.end.i ], [ %22, %do.end.cleanup.thread_crit_edge ]
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef %retval.0.i79) #11
  br label %out

if.end21:                                         ; preds = %dma_map_single_attrs.exit
  %call22 = tail call i64 @ktime_get() #8
  %sub = sub i64 %call22, %call7
  %25 = ptrtoint ptr %dma_trans_ns to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %dma_trans_ns, align 4
  %sub.i80 = add i32 %26, 999
  %div.i = udiv i32 %sub.i80, 1000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %27(i32 noundef %div.i) #8
  %call24 = tail call i64 @ktime_get() #8
  %28 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev, align 8
  %30 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %dir, align 8
  tail call void @dma_unmap_page_attrs(ptr noundef %29, i32 noundef %call41.i, i32 noundef %mul, i32 noundef %31, i32 noundef 0) #8
  %call28 = tail call i64 @ktime_get() #8
  %sub29 = sub i64 %call28, %call24
  %32 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -6640827866535438582, i64 %sub, i32 0) #12, !srcloc !98
  %asmresult.i.i.i = extractvalue { i64, i32 } %32, 0
  %asmresult4.i.i.i = extractvalue { i64, i32 } %32, 1
  %33 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -6640827866535438582, i64 %sub, i64 %asmresult.i.i.i, i32 %asmresult4.i.i.i) #12, !srcloc !99
  %asmresult10.i.i.i = extractvalue { i64, i32 } %33, 0
  %div1581.i.i = lshr i64 %asmresult10.i.i.i, 6
  %34 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -6640827866535438582, i64 %sub29, i32 0) #12, !srcloc !98
  %asmresult.i.i.i82 = extractvalue { i64, i32 } %34, 0
  %asmresult4.i.i.i83 = extractvalue { i64, i32 } %34, 1
  %35 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -6640827866535438582, i64 %sub29, i64 %asmresult.i.i.i82, i32 %asmresult4.i.i.i83) #12, !srcloc !99
  %asmresult10.i.i.i84 = extractvalue { i64, i32 } %35, 0
  %div1581.i.i85 = lshr i64 %asmresult10.i.i.i84, 6
  %mul32 = mul i64 %div1581.i.i, %div1581.i.i
  %mul33 = mul i64 %div1581.i.i85, %div1581.i.i85
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sum_map_100ns, i32 noundef 8) #8
  tail call void @generic_atomic64_add(i64 noundef %div1581.i.i, ptr noundef %sum_map_100ns) #8
  %call.i.i75 = tail call zeroext i1 @__kasan_check_write(ptr noundef %sum_unmap_100ns, i32 noundef 8) #8
  tail call void @generic_atomic64_add(i64 noundef %div1581.i.i85, ptr noundef %sum_unmap_100ns) #8
  %call.i.i76 = tail call zeroext i1 @__kasan_check_write(ptr noundef %sum_sq_map, i32 noundef 8) #8
  tail call void @generic_atomic64_add(i64 noundef %mul32, ptr noundef %sum_sq_map) #8
  %call.i.i77 = tail call zeroext i1 @__kasan_check_write(ptr noundef %sum_sq_unmap, i32 noundef 8) #8
  tail call void @generic_atomic64_add(i64 noundef %mul33, ptr noundef %sum_sq_unmap) #8
  %call.i.i78 = tail call zeroext i1 @__kasan_check_write(ptr noundef %loops, i32 noundef 8) #8
  tail call void @generic_atomic64_add(i64 noundef 1, ptr noundef %loops) #8
  %call2 = tail call zeroext i1 @kthread_should_stop() #8
  br i1 %call2, label %if.end21.out_crit_edge, label %if.end21.while.body_crit_edge

if.end21.while.body_crit_edge:                    ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

if.end21.out_crit_edge:                           ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

out:                                              ; preds = %if.end21.out_crit_edge, %cleanup.thread, %while.cond.preheader.out_crit_edge
  %ret.2 = phi i32 [ -12, %cleanup.thread ], [ 0, %while.cond.preheader.out_crit_edge ], [ 0, %if.end21.out_crit_edge ]
  tail call void @free_pages_exact(ptr noundef nonnull %call, i32 noundef %mul) #8
  br label %cleanup44

cleanup44:                                        ; preds = %out, %entry.cleanup44_crit_edge
  %retval.0 = phi i32 [ %ret.2, %out ], [ -12, %entry.cleanup44_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kthread_bind_mask(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msleep_interruptible(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kthread_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div64_u64(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @int_sqrt64(i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @alloc_pages_exact(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_should_stop() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages_exact(ptr noundef, i32 noundef) local_unnamed_addr #1

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
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_atomic64_add(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_atomic64_set(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_task_struct(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @map_benchmark_pci_probe(ptr noundef %pdev, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 192, i32 noundef 3520) #8
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %entry.__map_benchmark_probe.exit_crit_edge, label %if.end.i

entry.__map_benchmark_probe.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %__map_benchmark_probe.exit

if.end.i:                                         ; preds = %entry
  %dev2.i = getelementptr inbounds %struct.map_benchmark_data, ptr %call.i.i, i32 0, i32 1
  %0 = ptrtoint ptr %dev2.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev, ptr %dev2.i, align 8
  %call3.i = tail call i32 @devm_add_action(ptr noundef %dev, ptr noundef nonnull @map_benchmark_remove_debugfs, ptr noundef nonnull %call.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %if.end7.i, label %do.end.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %call6.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #11
  br label %__map_benchmark_probe.exit

if.end7.i:                                        ; preds = %if.end.i
  %call8.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str, i16 noundef zeroext 384, ptr noundef null, ptr noundef nonnull %call.i.i, ptr noundef nonnull @map_benchmark_fops) #8
  %cmp.i.i = icmp ugt ptr %call8.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then10.i, label %if.end12.i

if.then10.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  %1 = ptrtoint ptr %call8.i to i32
  br label %__map_benchmark_probe.exit

if.end12.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  %debugfs.i = getelementptr inbounds %struct.map_benchmark_data, ptr %call.i.i, i32 0, i32 2
  %2 = ptrtoint ptr %debugfs.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call8.i, ptr %debugfs.i, align 4
  br label %__map_benchmark_probe.exit

__map_benchmark_probe.exit:                       ; preds = %if.end12.i, %if.then10.i, %do.end.i, %entry.__map_benchmark_probe.exit_crit_edge
  %retval.0.i = phi i32 [ %call3.i, %do.end.i ], [ %1, %if.then10.i ], [ 0, %if.end12.i ], [ -12, %entry.__map_benchmark_probe.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind readonly }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind readnone }
attributes #13 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !18, !19, !20, !21, !23, !25, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !55, !57, !59, !61, !63, !64, !65, !66, !68, !69, !70, !71, !73, !74, !75, !77}
!llvm.named.register.sp = !{!79}
!llvm.module.flags = !{!80, !81, !82, !83, !84, !85, !86, !87}
!llvm.ident = !{!88}

!0 = !{ptr @__initcall__kmod_map_benchmark__236_377_map_benchmark_init6, !1, !"__initcall__kmod_map_benchmark__236_377_map_benchmark_init6", i1 false, i1 false}
!1 = !{!"../kernel/dma/map_benchmark.c", i32 377, i32 1}
!2 = !{ptr @__exitcall_map_benchmark_cleanup, !3, !"__exitcall_map_benchmark_cleanup", i1 false, i1 false}
!3 = !{!"../kernel/dma/map_benchmark.c", i32 378, i32 1}
!4 = !{ptr @__UNIQUE_ID_author237, !5, !"__UNIQUE_ID_author237", i1 false, i1 false}
!5 = !{!"../kernel/dma/map_benchmark.c", i32 380, i32 1}
!6 = !{ptr @__UNIQUE_ID_description238, !7, !"__UNIQUE_ID_description238", i1 false, i1 false}
!7 = !{!"../kernel/dma/map_benchmark.c", i32 381, i32 1}
!8 = !{ptr @__UNIQUE_ID_file239, !9, !"__UNIQUE_ID_file239", i1 false, i1 false}
!9 = !{!"../kernel/dma/map_benchmark.c", i32 382, i32 1}
!10 = !{ptr @__UNIQUE_ID_license240, !9, !"__UNIQUE_ID_license240", i1 false, i1 false}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../kernel/dma/map_benchmark.c", i32 338, i32 11}
!13 = !{ptr @map_benchmark_platform_driver, !14, !"map_benchmark_platform_driver", i1 false, i1 false}
!14 = !{!"../kernel/dma/map_benchmark.c", i32 336, i32 31}
!15 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../kernel/dma/map_benchmark.c", i32 314, i32 3}
!17 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @__map_benchmark_probe._entry, !16, !"_entry", i1 false, i1 false}
!20 = !{ptr @__map_benchmark_probe._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @map_benchmark_fops, !22, !"map_benchmark_fops", i1 false, i1 false}
!22 = !{!"../kernel/dma/map_benchmark.c", i32 289, i32 37}
!23 = !{ptr @.str.4, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../kernel/dma/map_benchmark.c", i32 218, i32 4}
!25 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @map_benchmark_ioctl._entry, !24, !"_entry", i1 false, i1 false}
!27 = !{ptr @map_benchmark_ioctl._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.7, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../kernel/dma/map_benchmark.c", i32 224, i32 4}
!30 = !{ptr @map_benchmark_ioctl._entry.6, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @map_benchmark_ioctl._entry_ptr.8, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../kernel/dma/map_benchmark.c", i32 229, i32 4}
!34 = !{ptr @map_benchmark_ioctl._entry.9, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @map_benchmark_ioctl._entry_ptr.11, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../kernel/dma/map_benchmark.c", i32 235, i32 4}
!38 = !{ptr @map_benchmark_ioctl._entry.12, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @map_benchmark_ioctl._entry_ptr.14, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../kernel/dma/map_benchmark.c", i32 240, i32 4}
!42 = !{ptr @map_benchmark_ioctl._entry.15, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @map_benchmark_ioctl._entry_ptr.17, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../kernel/dma/map_benchmark.c", i32 255, i32 4}
!46 = !{ptr @map_benchmark_ioctl._entry.18, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @map_benchmark_ioctl._entry_ptr.20, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.22, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../kernel/dma/map_benchmark.c", i32 264, i32 4}
!50 = !{ptr @map_benchmark_ioctl._entry.21, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @map_benchmark_ioctl._entry_ptr.23, !49, !"_entry_ptr", i1 false, i1 false}
!52 = distinct !{null, !53, !"__already_done", i1 false, i1 false}
!53 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!54 = distinct !{null, !53, !"<string literal>", i1 false, i1 false}
!55 = distinct !{null, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!57 = !{ptr @.str.26, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!59 = !{ptr @.str.27, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../kernel/dma/map_benchmark.c", i32 140, i32 23}
!61 = !{ptr @.str.28, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../kernel/dma/map_benchmark.c", i32 142, i32 4}
!63 = !{ptr @.str.29, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @do_map_benchmark._entry, !62, !"_entry", i1 false, i1 false}
!65 = !{ptr @do_map_benchmark._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.30, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../kernel/dma/map_benchmark.c", i32 87, i32 4}
!68 = !{ptr @.str.31, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @map_benchmark_thread._entry, !67, !"_entry", i1 false, i1 false}
!70 = !{ptr @map_benchmark_thread._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!71 = distinct !{null, !72, !"__already_done", i1 false, i1 false}
!72 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!73 = !{ptr @.str.32, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @.str.33, !72, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @map_benchmark_pci_driver, !76, !"map_benchmark_pci_driver", i1 false, i1 false}
!76 = !{!"../kernel/dma/map_benchmark.c", i32 349, i32 26}
!77 = !{ptr @.str.34, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../kernel/dma/map_benchmark.c", i32 358, i32 8}
!79 = !{!"sp"}
!80 = !{i32 1, !"wchar_size", i32 2}
!81 = !{i32 1, !"min_enum_size", i32 4}
!82 = !{i32 8, !"branch-target-enforcement", i32 0}
!83 = !{i32 8, !"sign-return-address", i32 0}
!84 = !{i32 8, !"sign-return-address-all", i32 0}
!85 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!86 = !{i32 7, !"uwtable", i32 1}
!87 = !{i32 7, !"frame-pointer", i32 2}
!88 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!89 = !{!"branch_weights", i32 2000, i32 1}
!90 = !{i64 4679566}
!91 = !{i64 4679763}
!92 = !{i64 2152164996}
!93 = !{!"branch_weights", i32 1, i32 2000}
!94 = !{i64 2148673062, i64 2148673094, i64 2148673123, i64 2148673157, i64 2148673188, i64 2148673211}
!95 = !{i64 2148761087}
!96 = !{i64 2148675527, i64 2148675559, i64 2148675588, i64 2148675622, i64 2148675653, i64 2148675676}
!97 = !{i64 2150382176}
!98 = !{i64 1035773, i64 1035800, i64 1035822, i64 1035850}
!99 = !{i64 1036181, i64 1036208, i64 1036241, i64 1036262, i64 1036289, i64 1036315}
