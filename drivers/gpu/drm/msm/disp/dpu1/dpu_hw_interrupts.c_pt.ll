; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_interrupts.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_interrupts.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.dpu_intr_reg = type { i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.77 }
%struct.atomic_t = type { i32 }
%union.anon.77 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.dpu_kms = type { %struct.msm_kms, ptr, i32, ptr, ptr, [2 x ptr], ptr, ptr, ptr, ptr, ptr, %struct.dpu_core_perf, %struct.drm_modeset_lock, %struct.drm_private_obj, %struct.dpu_rm, i8, [2 x ptr], ptr, i8, ptr, i8, %struct.dss_module_power, %struct.atomic_t, [2 x ptr], i32 }
%struct.msm_kms = type { ptr, ptr, i32, ptr, ptr, %struct.kthread_work, %struct.mutex, [8 x %struct.mutex], i32, [8 x %struct.msm_pending_timer] }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.msm_pending_timer = type { %struct.msm_hrtimer_work, ptr, ptr, i32 }
%struct.msm_hrtimer_work = type { %struct.hrtimer, %struct.kthread_work, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dpu_core_perf = type { ptr, ptr, ptr, ptr, i64, i64, %struct.dpu_core_perf_tune, i32, i64, i64, i64 }
%struct.dpu_core_perf_tune = type { i32, i64, i64 }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.drm_private_obj = type { %struct.list_head, %struct.drm_modeset_lock, ptr, ptr }
%struct.dpu_rm = type { [7 x ptr], [7 x ptr], [6 x ptr], [7 x ptr], [4 x ptr], [3 x ptr], i32 }
%struct.dss_module_power = type { i32, ptr }
%struct.dpu_hw_intr = type { %struct.dpu_hw_blk_reg_map, ptr, ptr, i32, %struct.spinlock, i32, ptr, ptr }
%struct.dpu_hw_blk_reg_map = type { ptr, i32, i32, i32, i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.dpu_irq_callback = type { %struct.list_head, ptr, ptr }
%struct.dpu_mdss_cfg = type { i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, %struct.dpu_reg_dma_cfg, i32, i32, ptr, %struct.dpu_perf_cfg, ptr, ptr, ptr, i32 }
%struct.dpu_reg_dma_cfg = type { [16 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dpu_perf_cfg = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32], [3 x i32], [3 x %struct.dpu_qos_lut_tbl], [2 x %struct.dpu_perf_cdp_cfg] }
%struct.dpu_qos_lut_tbl = type { i32, ptr }
%struct.dpu_perf_cdp_cfg = type { i8, i8 }
%struct.dpu_mdp_cfg = type { [16 x i8], i32, i32, i32, i32, i32, i32, [16 x %struct.dpu_clk_ctrl_reg] }
%struct.dpu_clk_ctrl_reg = type { i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.85, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.86, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.87, ptr, %struct.address_space, %struct.list_head, %union.anon.88, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.85 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.86 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.87 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.88 = type { ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }

@dpu_intr_set = internal constant { [16 x %struct.dpu_intr_reg], [32 x i8] } { [16 x %struct.dpu_intr_reg] [%struct.dpu_intr_reg { i32 24, i32 16, i32 20 }, %struct.dpu_intr_reg { i32 44, i32 8, i32 12 }, %struct.dpu_intr_reg { i32 36, i32 28, i32 32 }, %struct.dpu_intr_reg { i32 434632, i32 434624, i32 434628 }, %struct.dpu_intr_reg { i32 436680, i32 436672, i32 436676 }, %struct.dpu_intr_reg { i32 438728, i32 438720, i32 438724 }, %struct.dpu_intr_reg { i32 440776, i32 440768, i32 440772 }, %struct.dpu_intr_reg { i32 442824, i32 442816, i32 442820 }, %struct.dpu_intr_reg { i32 508964, i32 508956, i32 508960 }, %struct.dpu_intr_reg { i32 513060, i32 513052, i32 513056 }, %struct.dpu_intr_reg { i32 213448, i32 213440, i32 213444 }, %struct.dpu_intr_reg { i32 217544, i32 217536, i32 217540 }, %struct.dpu_intr_reg { i32 221640, i32 221632, i32 221636 }, %struct.dpu_intr_reg { i32 225736, i32 225728, i32 225732 }, %struct.dpu_intr_reg { i32 229832, i32 229824, i32 229828 }, %struct.dpu_intr_reg { i32 233928, i32 233920, i32 233924 }], [32 x i8] zeroinitializer }, align 32
@.str = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"dpu_intr_set[reg_idx].clr_off\00", [34 x i8] zeroinitializer }, align 32
@dpu_core_irq_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 371, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013[dpu error][%pS] invalid irq_idx=%d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"dpu_core_irq_read\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"drivers/gpu/drm/msm/disp/dpu1/dpu_hw_interrupts.c\00", [46 x i8] zeroinitializer }, align 32
@dpu_core_irq_read._entry_ptr = internal global ptr @dpu_core_irq_read._entry, section ".printk_index", align 4
@dpu_core_irq_read._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 376, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013invalid IRQ index: [%d]\0A\00", [37 x i8] zeroinitializer }, align 32
@dpu_core_irq_read._entry_ptr.6 = internal global ptr @dpu_core_irq_read._entry.4, section ".printk_index", align 4
@dpu_hw_intr_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&intr->irq_lock\00", [16 x i8] zeroinitializer }, align 32
@dpu_core_irq_register_callback._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.3, i32 454, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013[dpu error]invalid params\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"dpu_core_irq_register_callback\00", [33 x i8] zeroinitializer }, align 32
@dpu_core_irq_register_callback._entry_ptr = internal global ptr @dpu_core_irq_register_callback._entry, section ".printk_index", align 4
@dpu_core_irq_register_callback._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.9, ptr @.str.3, i32 462, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013[dpu error]invalid irq_cb:%d func:%d\0A\00", [56 x i8] zeroinitializer }, align 32
@dpu_core_irq_register_callback._entry_ptr.12 = internal global ptr @dpu_core_irq_register_callback._entry.10, section ".printk_index", align 4
@dpu_core_irq_register_callback._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.9, ptr @.str.3, i32 467, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013[dpu error]invalid IRQ index: [%d]\0A\00", [58 x i8] zeroinitializer }, align 32
@dpu_core_irq_register_callback._entry_ptr.15 = internal global ptr @dpu_core_irq_register_callback._entry.13, section ".printk_index", align 4
@dpu_core_irq_register_callback._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.9, ptr @.str.3, i32 485, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013[dpu error]Fail to enable IRQ for irq_idx:%d\0A\00", [48 x i8] zeroinitializer }, align 32
@dpu_core_irq_register_callback._entry_ptr.18 = internal global ptr @dpu_core_irq_register_callback._entry.16, section ".printk_index", align 4
@dpu_core_irq_unregister_callback._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.19, ptr @.str.3, i32 498, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"dpu_core_irq_unregister_callback\00", [63 x i8] zeroinitializer }, align 32
@dpu_core_irq_unregister_callback._entry_ptr = internal global ptr @dpu_core_irq_unregister_callback._entry, section ".printk_index", align 4
@dpu_core_irq_unregister_callback._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.19, ptr @.str.3, i32 506, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dpu_core_irq_unregister_callback._entry_ptr.21 = internal global ptr @dpu_core_irq_unregister_callback._entry.20, section ".printk_index", align 4
@dpu_core_irq_unregister_callback._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.19, ptr @.str.3, i32 511, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dpu_core_irq_unregister_callback._entry_ptr.23 = internal global ptr @dpu_core_irq_unregister_callback._entry.22, section ".printk_index", align 4
@dpu_core_irq_unregister_callback._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.19, ptr @.str.3, i32 527, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013[dpu error]Fail to disable IRQ for irq_idx:%d\0A\00", [47 x i8] zeroinitializer }, align 32
@dpu_core_irq_unregister_callback._entry_ptr.26 = internal global ptr @dpu_core_irq_unregister_callback._entry.24, section ".printk_index", align 4
@.str.27 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"core_irq\00", [23 x i8] zeroinitializer }, align 32
@dpu_debugfs_core_irq_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @dpu_debugfs_core_irq_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@dpu_core_irq_uninstall._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.3, i32 599, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013[dpu error]irq_idx=%d still enabled/registered\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"dpu_core_irq_uninstall\00", [41 x i8] zeroinitializer }, align 32
@dpu_core_irq_uninstall._entry_ptr = internal global ptr @dpu_core_irq_uninstall._entry, section ".printk_index", align 4
@.str.30 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"no registered cb, idx:%d\0A\00", [38 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__tracepoint_dpu_core_irq_register_callback = external dso_local global %struct.tracepoint, align 4
@.str.31 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/gpu/drm/msm/disp/dpu1/dpu_trace.h\00", [54 x i8] zeroinitializer }, align 32
@trace_dpu_core_irq_register_callback.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.32 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.33 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@dpu_hw_intr_enable_irq_locked._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.34, ptr @.str.3, i32 236, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"dpu_hw_intr_enable_irq_locked\00", [34 x i8] zeroinitializer }, align 32
@dpu_hw_intr_enable_irq_locked._entry_ptr = internal global ptr @dpu_hw_intr_enable_irq_locked._entry, section ".printk_index", align 4
@.str.35 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"DPU IRQ already set:\00", [43 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"DPU IRQ enabled:\00", [47 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"reg->clr_off\00", [19 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"reg->en_off\00", [20 x i8] zeroinitializer }, align 32
@dpu_hw_intr_enable_irq_locked.__UNIQUE_ID_ddebug475 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.39, ptr @.str.34, ptr @.str.3, ptr @.str.40, i8 0, i8 67, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"msm\00", [28 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s MASK:0x%.8lx, CACHE-MASK:0x%.8x\0A\00", [60 x i8] zeroinitializer }, align 32
@__tracepoint_dpu_core_irq_unregister_callback = external dso_local global %struct.tracepoint, align 4
@trace_dpu_core_irq_unregister_callback.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@dpu_hw_intr_disable_irq_locked._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.41, ptr @.str.3, i32 285, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"dpu_hw_intr_disable_irq_locked\00", [33 x i8] zeroinitializer }, align 32
@dpu_hw_intr_disable_irq_locked._entry_ptr = internal global ptr @dpu_hw_intr_disable_irq_locked._entry, section ".printk_index", align 4
@.str.42 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"DPU IRQ is already cleared:\00", [36 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"DPU IRQ mask disable:\00", [42 x i8] zeroinitializer }, align 32
@dpu_hw_intr_disable_irq_locked.__UNIQUE_ID_ddebug476 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.39, ptr @.str.41, ptr @.str.3, ptr @.str.40, i8 0, i8 79, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"idx:%d irq:%d cb:%d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"dpu_intr_set[i].clr_off\00", [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"dpu_intr_set[i].en_off\00", [41 x i8] zeroinitializer }, align 32
@___asan_gen_.47 = private unnamed_addr constant [13 x i8] c"dpu_intr_set\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 55, i32 34 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 191, i32 4 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 370, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 376, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 431, i32 2 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 454, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 459, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 467, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 484, i32 4 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 498, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 503, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 511, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 526, i32 4 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 567, i32 22 }
@___asan_gen_.125 = private unnamed_addr constant [26 x i8] c"dpu_debugfs_core_irq_fops\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 562, i32 1 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 599, i32 4 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 153, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant [45 x i8] c"../drivers/gpu/drm/msm/disp/dpu1/dpu_trace.h\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 888, i32 1 }
@___asan_gen_.147 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 108, i32 2 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 236, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 252, i32 12 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 254, i32 12 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 258, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 260, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 268, i32 2 }
@___asan_gen_.173 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 285, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 301, i32 12 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 303, i32 12 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 555, i32 18 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 333, i32 4 }
@___asan_gen_.191 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.192 = private constant [53 x i8] c"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_interrupts.c\00", align 1
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 351, i32 4 }
@llvm.compiler.used = appending global [62 x ptr] [ptr @dpu_core_irq_read._entry, ptr @dpu_core_irq_read._entry.4, ptr @dpu_core_irq_read._entry_ptr, ptr @dpu_core_irq_read._entry_ptr.6, ptr @dpu_core_irq_register_callback._entry, ptr @dpu_core_irq_register_callback._entry.10, ptr @dpu_core_irq_register_callback._entry.13, ptr @dpu_core_irq_register_callback._entry.16, ptr @dpu_core_irq_register_callback._entry_ptr, ptr @dpu_core_irq_register_callback._entry_ptr.12, ptr @dpu_core_irq_register_callback._entry_ptr.15, ptr @dpu_core_irq_register_callback._entry_ptr.18, ptr @dpu_core_irq_uninstall._entry, ptr @dpu_core_irq_uninstall._entry_ptr, ptr @dpu_core_irq_unregister_callback._entry, ptr @dpu_core_irq_unregister_callback._entry.20, ptr @dpu_core_irq_unregister_callback._entry.22, ptr @dpu_core_irq_unregister_callback._entry.24, ptr @dpu_core_irq_unregister_callback._entry_ptr, ptr @dpu_core_irq_unregister_callback._entry_ptr.21, ptr @dpu_core_irq_unregister_callback._entry_ptr.23, ptr @dpu_core_irq_unregister_callback._entry_ptr.26, ptr @dpu_hw_intr_disable_irq_locked._entry, ptr @dpu_hw_intr_disable_irq_locked._entry_ptr, ptr @dpu_hw_intr_enable_irq_locked._entry, ptr @dpu_hw_intr_enable_irq_locked._entry_ptr, ptr @dpu_intr_set, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @dpu_hw_intr_init.__key, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.14, ptr @.str.17, ptr @.str.19, ptr @.str.25, ptr @.str.27, ptr @dpu_debugfs_core_irq_fops, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46], section "llvm.metadata"
@0 = internal global [49 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpu_intr_set to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpu_core_irq_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpu_core_irq_read._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpu_hw_intr_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpu_core_irq_register_callback._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpu_core_irq_register_callback._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpu_core_irq_register_callback._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpu_core_irq_register_callback._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpu_core_irq_unregister_callback._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpu_core_irq_unregister_callback._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpu_core_irq_unregister_callback._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpu_core_irq_unregister_callback._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpu_debugfs_core_irq_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpu_core_irq_uninstall._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpu_hw_intr_enable_irq_locked._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpu_hw_intr_disable_irq_locked._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dpu_core_irq(ptr nocapture noundef readonly %dpu_kms) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_intr = getelementptr inbounds %struct.dpu_kms, ptr %dpu_kms, i32 0, i32 10
  %0 = ptrtoint ptr %hw_intr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw_intr, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body1

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body1:                                         ; preds = %entry
  %irq_lock = getelementptr inbounds %struct.dpu_hw_intr, ptr %1, i32 0, i32 4
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irq_lock) #11
  %irq_mask = getelementptr inbounds %struct.dpu_hw_intr, ptr %1, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.body1
  %reg_idx.059 = phi i32 [ 0, %do.body1 ], [ %inc, %for.inc.for.body_crit_edge ]
  %div3.i = lshr i32 %reg_idx.059, 5
  %arrayidx.i = getelementptr i32, ptr %irq_mask, i32 %div3.i
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %arrayidx.i, align 4
  %4 = shl nuw i32 1, %reg_idx.059
  %5 = and i32 %3, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool8.not = icmp eq i32 %5, 0
  br i1 %tobool8.not, label %for.body.for.inc_crit_edge, label %if.end10

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end10:                                         ; preds = %for.body
  %status_off = getelementptr [16 x %struct.dpu_intr_reg], ptr @dpu_intr_set, i32 0, i32 %reg_idx.059, i32 2
  %6 = ptrtoint ptr %status_off to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %status_off, align 4
  %call11 = tail call i32 @dpu_reg_read(ptr noundef nonnull %1, i32 noundef %7) #11
  %en_off = getelementptr [16 x %struct.dpu_intr_reg], ptr @dpu_intr_set, i32 0, i32 %reg_idx.059, i32 1
  %8 = ptrtoint ptr %en_off to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %en_off, align 4
  %call14 = tail call i32 @dpu_reg_read(ptr noundef nonnull %1, i32 noundef %9) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool15.not = icmp eq i32 %call11, 0
  br i1 %tobool15.not, label %if.end10.if.end19_crit_edge, label %if.then16

if.end10.if.end19_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

if.then16:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx = getelementptr [16 x %struct.dpu_intr_reg], ptr @dpu_intr_set, i32 0, i32 %reg_idx.059
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  tail call void @dpu_reg_write(ptr noundef nonnull %1, i32 noundef %11, i32 noundef %call11, ptr noundef nonnull @.str) #11
  br label %if.end19

if.end19:                                         ; preds = %if.then16, %if.end10.if.end19_crit_edge
  %and = and i32 %call14, %call11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool20.not = icmp eq i32 %and, 0
  br i1 %tobool20.not, label %if.end19.for.inc_crit_edge, label %while.cond.preheader

if.end19.for.inc_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

while.cond.preheader:                             ; preds = %if.end19
  %mul = shl i32 %reg_idx.059, 5
  br label %while.body

while.body:                                       ; preds = %dpu_core_irq_callback_handler.exit.while.body_crit_edge, %while.cond.preheader
  %irq_status.058 = phi i32 [ %and, %while.cond.preheader ], [ %and26, %dpu_core_irq_callback_handler.exit.while.body_crit_edge ]
  %12 = tail call i32 @llvm.cttz.i32(i32 %irq_status.058, i1 true), !range !112
  %sub = or i32 %12, %mul
  %13 = ptrtoint ptr %hw_intr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hw_intr, align 8
  %irq_cb_tbl.i = getelementptr inbounds %struct.dpu_hw_intr, ptr %14, i32 0, i32 6
  %15 = ptrtoint ptr %irq_cb_tbl.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %irq_cb_tbl.i, align 4
  %arrayidx.i56 = getelementptr %struct.list_head, ptr %16, i32 %sub
  %17 = ptrtoint ptr %arrayidx.i56 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile ptr, ptr %arrayidx.i56, align 4
  %cmp.i.not.i = icmp eq ptr %18, %arrayidx.i56
  br i1 %cmp.i.not.i, label %if.then.i, label %while.body.if.end.i_crit_edge

while.body.if.end.i_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then.i:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.30, i32 noundef %sub) #11
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %while.body.if.end.i_crit_edge
  %19 = ptrtoint ptr %hw_intr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hw_intr, align 8
  %irq_counts.i = getelementptr inbounds %struct.dpu_hw_intr, ptr %20, i32 0, i32 7
  %21 = ptrtoint ptr %irq_counts.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %irq_counts.i, align 4
  %arrayidx2.i = getelementptr %struct.atomic_t, ptr %22, i32 %sub
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx2.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %arrayidx2.i, i32 1, i32 3, i32 1) #11
  %23 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx2.i, ptr %arrayidx2.i, i32 1, ptr elementtype(i32) %arrayidx2.i) #11, !srcloc !113
  %24 = ptrtoint ptr %hw_intr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hw_intr, align 8
  %irq_cb_tbl4.i = getelementptr inbounds %struct.dpu_hw_intr, ptr %25, i32 0, i32 6
  %26 = ptrtoint ptr %irq_cb_tbl4.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %irq_cb_tbl4.i, align 4
  %arrayidx5.i = getelementptr %struct.list_head, ptr %27, i32 %sub
  %28 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %cb.030.i = load ptr, ptr %arrayidx5.i, align 4
  %cmp.not33.i = icmp eq ptr %cb.030.i, %arrayidx5.i
  br i1 %cmp.not33.i, label %if.end.i.dpu_core_irq_callback_handler.exit_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

if.end.i.dpu_core_irq_callback_handler.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dpu_core_irq_callback_handler.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %cb.034.i = phi ptr [ %cb.0.i, %for.inc.i.for.body.i_crit_edge ], [ %cb.030.i, %if.end.i.for.body.i_crit_edge ]
  %func.i = getelementptr inbounds %struct.dpu_irq_callback, ptr %cb.034.i, i32 0, i32 1
  %29 = ptrtoint ptr %func.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %func.i, align 4
  %tobool9.not.i = icmp eq ptr %30, null
  br i1 %tobool9.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then10.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.then10.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %arg.i = getelementptr inbounds %struct.dpu_irq_callback, ptr %cb.034.i, i32 0, i32 2
  %31 = ptrtoint ptr %arg.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arg.i, align 4
  tail call void %30(ptr noundef %32, i32 noundef %sub) #11
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then10.i, %for.body.i.for.inc.i_crit_edge
  %33 = ptrtoint ptr %cb.034.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %cb.0.i = load ptr, ptr %cb.034.i, align 4
  %34 = ptrtoint ptr %hw_intr to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %hw_intr, align 8
  %irq_cb_tbl7.i = getelementptr inbounds %struct.dpu_hw_intr, ptr %35, i32 0, i32 6
  %36 = ptrtoint ptr %irq_cb_tbl7.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %irq_cb_tbl7.i, align 4
  %arrayidx8.i = getelementptr %struct.list_head, ptr %37, i32 %sub
  %cmp.not.i = icmp eq ptr %cb.0.i, %arrayidx8.i
  br i1 %cmp.not.i, label %for.inc.i.dpu_core_irq_callback_handler.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.inc.i.dpu_core_irq_callback_handler.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dpu_core_irq_callback_handler.exit

dpu_core_irq_callback_handler.exit:               ; preds = %for.inc.i.dpu_core_irq_callback_handler.exit_crit_edge, %if.end.i.dpu_core_irq_callback_handler.exit_crit_edge
  %shl = shl nuw i32 1, %12
  %neg = xor i32 %shl, -1
  %and26 = and i32 %irq_status.058, %neg
  %iszero = icmp eq i32 %and26, 0
  br i1 %iszero, label %dpu_core_irq_callback_handler.exit.for.inc_crit_edge, label %dpu_core_irq_callback_handler.exit.while.body_crit_edge

dpu_core_irq_callback_handler.exit.while.body_crit_edge: ; preds = %dpu_core_irq_callback_handler.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

dpu_core_irq_callback_handler.exit.for.inc_crit_edge: ; preds = %dpu_core_irq_callback_handler.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

for.inc:                                          ; preds = %dpu_core_irq_callback_handler.exit.for.inc_crit_edge, %if.end19.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %reg_idx.059, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %do.body27, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

do.body27:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !114
  tail call void @arm_heavy_mb() #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irq_lock, i32 noundef %call2) #11
  br label %cleanup

cleanup:                                          ; preds = %do.body27, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %do.body27 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dpu_reg_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dpu_reg_write(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dpu_core_irq_read(ptr nocapture noundef readonly %dpu_kms, i32 noundef %irq_idx, i1 noundef zeroext %clear) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_intr = getelementptr inbounds %struct.dpu_kms, ptr %dpu_kms, i32 0, i32 10
  %0 = ptrtoint ptr %hw_intr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw_intr, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %irq_idx)
  %cmp = icmp slt i32 %irq_idx, 0
  br i1 %cmp, label %do.end, label %lor.lhs.false

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %2 = tail call ptr @llvm.returnaddress(i32 0)
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %2, i32 noundef %irq_idx) #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %total_irqs = getelementptr inbounds %struct.dpu_hw_intr, ptr %1, i32 0, i32 3
  %3 = ptrtoint ptr %total_irqs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %total_irqs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %irq_idx)
  %cmp4.not = icmp ugt i32 %4, %irq_idx
  br i1 %cmp4.not, label %do.body13, label %do.end8

do.end8:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %irq_idx) #14
  br label %cleanup

do.body13:                                        ; preds = %lor.lhs.false
  %irq_lock = getelementptr inbounds %struct.dpu_hw_intr, ptr %1, i32 0, i32 4
  %call17 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irq_lock) #11
  %div5253 = lshr i32 %irq_idx, 5
  %status_off = getelementptr [16 x %struct.dpu_intr_reg], ptr @dpu_intr_set, i32 0, i32 %div5253, i32 2
  %5 = ptrtoint ptr %status_off to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %status_off, align 4
  %call22 = tail call i32 @dpu_reg_read(ptr noundef nonnull %1, i32 noundef %6) #11
  %rem51 = and i32 %irq_idx, 31
  %shl = shl nuw i32 1, %rem51
  %and = and i32 %call22, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool23.not = icmp ne i32 %and, 0
  %7 = and i1 %tobool23.not, %clear
  br i1 %7, label %if.then26, label %do.body13.do.body30_crit_edge

do.body13.do.body30_crit_edge:                    ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body30

if.then26:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx = getelementptr [16 x %struct.dpu_intr_reg], ptr @dpu_intr_set, i32 0, i32 %div5253
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  tail call void @dpu_reg_write(ptr noundef nonnull %1, i32 noundef %9, i32 noundef %and, ptr noundef nonnull @.str) #11
  br label %do.body30

do.body30:                                        ; preds = %if.then26, %do.body13.do.body30_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !115
  tail call void @arm_heavy_mb() #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irq_lock, i32 noundef %call17) #11
  br label %cleanup

cleanup:                                          ; preds = %do.body30, %do.end8, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end ], [ 0, %do.end8 ], [ %and, %do.body30 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @dpu_hw_intr_init(ptr noundef %addr, ptr noundef readonly %m) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %addr, null
  %tobool1.not = icmp eq ptr %m, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 92) #15
  %tobool3.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %addr, ptr %call7.i.i, align 8
  %mdp.i = getelementptr inbounds %struct.dpu_mdss_cfg, ptr %m, i32 0, i32 3
  %2 = ptrtoint ptr %mdp.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mdp.i, align 4
  %base.i = getelementptr inbounds %struct.dpu_mdp_cfg, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %base.i, align 4
  %blk_off.i = getelementptr inbounds %struct.dpu_hw_blk_reg_map, ptr %call7.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %blk_off.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %blk_off.i, align 4
  %7 = ptrtoint ptr %m to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %m, align 4
  %hwversion1.i = getelementptr inbounds %struct.dpu_hw_blk_reg_map, ptr %call7.i.i, i32 0, i32 4
  %9 = ptrtoint ptr %hwversion1.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %hwversion1.i, align 8
  %total_irqs = getelementptr inbounds %struct.dpu_hw_intr, ptr %call7.i.i, i32 0, i32 3
  %10 = ptrtoint ptr %total_irqs to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 512, ptr %total_irqs, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %11 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3520, i32 noundef 64) #15
  %cache_irq_mask = getelementptr inbounds %struct.dpu_hw_intr, ptr %call7.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %cache_irq_mask to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call7.i.i.i, ptr %cache_irq_mask, align 8
  %cmp = icmp eq ptr %call7.i.i.i, null
  br i1 %cmp, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %cleanup

if.end11:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  %mdss_irqs = getelementptr inbounds %struct.dpu_mdss_cfg, ptr %m, i32 0, i32 27
  %13 = ptrtoint ptr %mdss_irqs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %mdss_irqs, align 4
  %irq_mask = getelementptr inbounds %struct.dpu_hw_intr, ptr %call7.i.i, i32 0, i32 5
  %15 = ptrtoint ptr %irq_mask to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %irq_mask, align 8
  %irq_lock = getelementptr inbounds %struct.dpu_hw_intr, ptr %call7.i.i, i32 0, i32 4
  tail call void @__raw_spin_lock_init(ptr noundef %irq_lock, ptr noundef nonnull @.str.7, ptr noundef nonnull @dpu_hw_intr_init.__key, i16 noundef signext 3) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.then9, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -12 to ptr), %if.then9 ], [ %call7.i.i, %if.end11 ], [ inttoptr (i32 -22 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dpu_hw_intr_destroy(ptr noundef %intr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %intr, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %cache_irq_mask = getelementptr inbounds %struct.dpu_hw_intr, ptr %intr, i32 0, i32 1
  %0 = ptrtoint ptr %cache_irq_mask to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cache_irq_mask, align 4
  tail call void @kfree(ptr noundef %1) #11
  %irq_cb_tbl = getelementptr inbounds %struct.dpu_hw_intr, ptr %intr, i32 0, i32 6
  %2 = ptrtoint ptr %irq_cb_tbl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %irq_cb_tbl, align 4
  tail call void @kfree(ptr noundef %3) #11
  %irq_counts = getelementptr inbounds %struct.dpu_hw_intr, ptr %intr, i32 0, i32 7
  %4 = ptrtoint ptr %irq_counts to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %irq_counts, align 4
  tail call void @kfree(ptr noundef %5) #11
  tail call void @kfree(ptr noundef nonnull %intr) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dpu_core_irq_register_callback(ptr nocapture noundef readonly %dpu_kms, i32 noundef %irq_idx, ptr noundef %register_irq_cb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_intr = getelementptr inbounds %struct.dpu_kms, ptr %dpu_kms, i32 0, i32 10
  %0 = ptrtoint ptr %hw_intr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw_intr, align 8
  %irq_cb_tbl = getelementptr inbounds %struct.dpu_hw_intr, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %irq_cb_tbl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %irq_cb_tbl, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool1.not = icmp eq ptr %register_irq_cb, null
  br i1 %tobool1.not, label %if.end.cond.end_crit_edge, label %lor.lhs.false

if.end.cond.end_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

lor.lhs.false:                                    ; preds = %if.end
  %func = getelementptr inbounds %struct.dpu_irq_callback, ptr %register_irq_cb, i32 0, i32 1
  %4 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %func, align 4
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %cond.true, label %if.end13

cond.true:                                        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  %6 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %func, align 4
  %cmp10 = icmp ne ptr %7, null
  %conv11 = zext i1 %cmp10 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end.cond.end_crit_edge
  %conv87 = phi i32 [ 1, %cond.true ], [ 0, %if.end.cond.end_crit_edge ]
  %cond = phi i32 [ %conv11, %cond.true ], [ -1, %if.end.cond.end_crit_edge ]
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef %conv87, i32 noundef %cond) #14
  br label %cleanup

if.end13:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %irq_idx)
  %cmp14 = icmp slt i32 %irq_idx, 0
  br i1 %cmp14, label %if.end13.do.end23_crit_edge, label %lor.lhs.false16

if.end13.do.end23_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end23

lor.lhs.false16:                                  ; preds = %if.end13
  %total_irqs = getelementptr inbounds %struct.dpu_hw_intr, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %total_irqs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %total_irqs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %irq_idx)
  %cmp18.not = icmp ugt i32 %9, %irq_idx
  br i1 %cmp18.not, label %do.body28, label %lor.lhs.false16.do.end23_crit_edge

lor.lhs.false16.do.end23_crit_edge:               ; preds = %lor.lhs.false16
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end23

do.end23:                                         ; preds = %lor.lhs.false16.do.end23_crit_edge, %if.end13.do.end23_crit_edge
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef %irq_idx) #14
  br label %cleanup

do.body28:                                        ; preds = %lor.lhs.false16
  %irq_lock = getelementptr inbounds %struct.dpu_hw_intr, ptr %1, i32 0, i32 4
  %call34 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irq_lock) #11
  tail call fastcc void @trace_dpu_core_irq_register_callback(i32 noundef %irq_idx, ptr noundef nonnull %register_irq_cb)
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %register_irq_cb) #11
  br i1 %call.i.i, label %if.end.i.i, label %do.body28.list_del_init.exit_crit_edge

do.body28.list_del_init.exit_crit_edge:           ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %register_irq_cb, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i.i, align 4
  %12 = ptrtoint ptr %register_irq_cb to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %register_irq_cb, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev1.i.i.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %13, ptr %11, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %do.body28.list_del_init.exit_crit_edge
  %16 = ptrtoint ptr %register_irq_cb to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %register_irq_cb, ptr %register_irq_cb, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %register_irq_cb, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %register_irq_cb, ptr %prev.i3.i, align 4
  %18 = ptrtoint ptr %hw_intr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hw_intr, align 8
  %irq_cb_tbl41 = getelementptr inbounds %struct.dpu_hw_intr, ptr %19, i32 0, i32 6
  %20 = ptrtoint ptr %irq_cb_tbl41 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %irq_cb_tbl41, align 4
  %arrayidx = getelementptr %struct.list_head, ptr %21, i32 %irq_idx
  %prev.i = getelementptr %struct.list_head, ptr %21, i32 %irq_idx, i32 1
  %22 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %prev.i, align 4
  %call.i.i83 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %register_irq_cb, ptr noundef %23, ptr noundef %arrayidx) #11
  br i1 %call.i.i83, label %if.end.i.i84, label %list_del_init.exit.list_add_tail.exit_crit_edge

list_del_init.exit.list_add_tail.exit_crit_edge:  ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add_tail.exit

if.end.i.i84:                                     ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #13
  %24 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %register_irq_cb, ptr %prev.i, align 4
  %25 = ptrtoint ptr %register_irq_cb to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %arrayidx, ptr %register_irq_cb, align 4
  %26 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %23, ptr %prev.i3.i, align 4
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %register_irq_cb, ptr %23, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i84, %list_del_init.exit.list_add_tail.exit_crit_edge
  %28 = ptrtoint ptr %hw_intr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %hw_intr, align 8
  %irq_cb_tbl44 = getelementptr inbounds %struct.dpu_hw_intr, ptr %29, i32 0, i32 6
  %30 = ptrtoint ptr %irq_cb_tbl44 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %irq_cb_tbl44, align 4
  %arrayidx45 = getelementptr %struct.list_head, ptr %31, i32 %irq_idx
  %32 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %prev.i3.i, align 4
  %cmp.i.not = icmp eq ptr %33, %arrayidx45
  br i1 %cmp.i.not, label %if.then48, label %list_add_tail.exit.if.end59_crit_edge

list_add_tail.exit.if.end59_crit_edge:            ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end59

if.then48:                                        ; preds = %list_add_tail.exit
  %call50 = tail call fastcc i32 @dpu_hw_intr_enable_irq_locked(ptr noundef %29, i32 noundef %irq_idx)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.then48.if.end59_crit_edge, label %do.end55

if.then48.if.end59_crit_edge:                     ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end59

do.end55:                                         ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #13
  %call57 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef %irq_idx) #14
  br label %if.end59

if.end59:                                         ; preds = %do.end55, %if.then48.if.end59_crit_edge, %list_add_tail.exit.if.end59_crit_edge
  %34 = ptrtoint ptr %hw_intr to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %hw_intr, align 8
  %irq_lock61 = getelementptr inbounds %struct.dpu_hw_intr, ptr %35, i32 0, i32 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irq_lock61, i32 noundef %call34) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end59, %do.end23, %cond.end, %do.end
  %retval.0 = phi i32 [ -22, %do.end23 ], [ 0, %if.end59 ], [ -22, %cond.end ], [ -22, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_dpu_core_irq_register_callback(i32 noundef %irq_idx, ptr noundef %callback) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_core_irq_register_callback, i32 0, i32 1), ptr blockaddress(@trace_dpu_core_irq_register_callback, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !116

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !102) #11
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !117

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.33, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !102) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !118
  %call42 = tail call i32 @__traceiter_dpu_core_irq_register_callback(ptr noundef null, i32 noundef %irq_idx, ptr noundef %callback) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !119
  %13 = tail call i32 @llvm.read_register.i32(metadata !102) #11
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !102) #11
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !117

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.33, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !102) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !120
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_core_irq_register_callback, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_core_irq_register_callback, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_dpu_core_irq_register_callback.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_dpu_core_irq_register_callback.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.31, i32 noundef 891, ptr noundef nonnull @.str.32) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !121
  %31 = tail call i32 @llvm.read_register.i32(metadata !102) #11
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dpu_hw_intr_enable_irq_locked(ptr noundef %intr, i32 noundef %irq_idx) unnamed_addr #0 align 64 {
entry:
  %agg.tmp.sroa.0.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %intr, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %total_irqs = getelementptr inbounds %struct.dpu_hw_intr, ptr %intr, i32 0, i32 3
  %0 = ptrtoint ptr %total_irqs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %total_irqs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %irq_idx)
  %cmp1.not = icmp ugt i32 %1, %irq_idx
  br i1 %cmp1.not, label %do.body4, label %do.end

do.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %irq_idx) #14
  br label %cleanup

do.body4:                                         ; preds = %lor.lhs.false
  %irq_lock = getelementptr inbounds %struct.dpu_hw_intr, ptr %intr, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i)
  %2 = ptrtoint ptr %irq_lock to i32
  call void @__asan_load4_noabort(i32 %2)
  %agg.tmp.sroa.0.0.copyload.i = load volatile i32, ptr %irq_lock, align 4
  %3 = ptrtoint ptr %agg.tmp.sroa.0.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i, ptr %agg.tmp.sroa.0.i, align 4
  %lock.sroa.0.0.extract.shift.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i, 16
  %conv.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i, i32 %lock.sroa.0.0.extract.shift.i.i)
  %cmp.i.i.not = icmp eq i32 %conv.i.i, %lock.sroa.0.0.extract.shift.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i)
  br i1 %cmp.i.i.not, label %do.body11, label %do.end19, !prof !122

do.body11:                                        ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/dpu1/dpu_hw_interrupts.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 245, 0\0A.popsection", ""() #11, !srcloc !123
  unreachable

do.end19:                                         ; preds = %do.body4
  %div = sdiv i32 %irq_idx, 32
  %cache_irq_mask20 = getelementptr inbounds %struct.dpu_hw_intr, ptr %intr, i32 0, i32 1
  %4 = ptrtoint ptr %cache_irq_mask20 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cache_irq_mask20, align 4
  %arrayidx21 = getelementptr i32, ptr %5, i32 %div
  %6 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx21, align 4
  %rem74 = and i32 %irq_idx, 31
  %shl = shl nuw i32 1, %rem74
  %and = and i32 %7, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool22.not = icmp eq i32 %and, 0
  br i1 %tobool22.not, label %if.else, label %do.end19.do.body35_crit_edge

do.end19.do.body35_crit_edge:                     ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body35

if.else:                                          ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx = getelementptr [16 x %struct.dpu_intr_reg], ptr @dpu_intr_set, i32 0, i32 %div
  %or = or i32 %7, %shl
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  tail call void @dpu_reg_write(ptr noundef nonnull %intr, i32 noundef %9, i32 noundef %shl, ptr noundef nonnull @.str.37) #11
  %en_off = getelementptr [16 x %struct.dpu_intr_reg], ptr @dpu_intr_set, i32 0, i32 %div, i32 1
  %10 = ptrtoint ptr %en_off to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %en_off, align 4
  tail call void @dpu_reg_write(ptr noundef nonnull %intr, i32 noundef %11, i32 noundef %or, ptr noundef nonnull @.str.38) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !124
  tail call void @arm_heavy_mb() #11
  %12 = ptrtoint ptr %cache_irq_mask20 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cache_irq_mask20, align 4
  %arrayidx33 = getelementptr i32, ptr %13, i32 %div
  %14 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %or, ptr %arrayidx33, align 4
  br label %do.body35

do.body35:                                        ; preds = %if.else, %do.end19.do.body35_crit_edge
  %dbgstr.0 = phi ptr [ @.str.36, %if.else ], [ @.str.35, %do.end19.do.body35_crit_edge ]
  %cache_irq_mask.0 = phi i32 [ %or, %if.else ], [ %7, %do.end19.do.body35_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dpu_hw_intr_enable_irq_locked.__UNIQUE_ID_ddebug475, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dpu_hw_intr_enable_irq_locked, %if.then45)) #11
          to label %cleanup [label %if.then45], !srcloc !116

if.then45:                                        ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dpu_hw_intr_enable_irq_locked.__UNIQUE_ID_ddebug475, ptr noundef nonnull @.str.40, ptr noundef nonnull %dbgstr.0, i32 noundef %shl, i32 noundef %cache_irq_mask.0) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then45, %do.body35, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.then45 ], [ 0, %do.body35 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dpu_core_irq_unregister_callback(ptr nocapture noundef readonly %dpu_kms, i32 noundef %irq_idx, ptr noundef %register_irq_cb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_intr = getelementptr inbounds %struct.dpu_kms, ptr %dpu_kms, i32 0, i32 10
  %0 = ptrtoint ptr %hw_intr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw_intr, align 8
  %irq_cb_tbl = getelementptr inbounds %struct.dpu_hw_intr, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %irq_cb_tbl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %irq_cb_tbl, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool1.not = icmp eq ptr %register_irq_cb, null
  br i1 %tobool1.not, label %if.end.cond.end_crit_edge, label %lor.lhs.false

if.end.cond.end_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

lor.lhs.false:                                    ; preds = %if.end
  %func = getelementptr inbounds %struct.dpu_irq_callback, ptr %register_irq_cb, i32 0, i32 1
  %4 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %func, align 4
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %cond.true, label %if.end13

cond.true:                                        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  %6 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %func, align 4
  %cmp10 = icmp ne ptr %7, null
  %conv11 = zext i1 %cmp10 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end.cond.end_crit_edge
  %conv75 = phi i32 [ 1, %cond.true ], [ 0, %if.end.cond.end_crit_edge ]
  %cond = phi i32 [ %conv11, %cond.true ], [ -1, %if.end.cond.end_crit_edge ]
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef %conv75, i32 noundef %cond) #14
  br label %cleanup

if.end13:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %irq_idx)
  %cmp14 = icmp slt i32 %irq_idx, 0
  br i1 %cmp14, label %if.end13.do.end23_crit_edge, label %lor.lhs.false16

if.end13.do.end23_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end23

lor.lhs.false16:                                  ; preds = %if.end13
  %total_irqs = getelementptr inbounds %struct.dpu_hw_intr, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %total_irqs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %total_irqs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %irq_idx)
  %cmp18.not = icmp ugt i32 %9, %irq_idx
  br i1 %cmp18.not, label %do.body28, label %lor.lhs.false16.do.end23_crit_edge

lor.lhs.false16.do.end23_crit_edge:               ; preds = %lor.lhs.false16
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end23

do.end23:                                         ; preds = %lor.lhs.false16.do.end23_crit_edge, %if.end13.do.end23_crit_edge
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef %irq_idx) #14
  br label %cleanup

do.body28:                                        ; preds = %lor.lhs.false16
  %irq_lock = getelementptr inbounds %struct.dpu_hw_intr, ptr %1, i32 0, i32 4
  %call34 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irq_lock) #11
  tail call fastcc void @trace_dpu_core_irq_unregister_callback(i32 noundef %irq_idx, ptr noundef nonnull %register_irq_cb)
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %register_irq_cb) #11
  br i1 %call.i.i, label %if.end.i.i, label %do.body28.list_del_init.exit_crit_edge

do.body28.list_del_init.exit_crit_edge:           ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %register_irq_cb, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i.i, align 4
  %12 = ptrtoint ptr %register_irq_cb to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %register_irq_cb, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev1.i.i.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %13, ptr %11, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %do.body28.list_del_init.exit_crit_edge
  %16 = ptrtoint ptr %register_irq_cb to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %register_irq_cb, ptr %register_irq_cb, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %register_irq_cb, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %register_irq_cb, ptr %prev.i3.i, align 4
  %18 = ptrtoint ptr %hw_intr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hw_intr, align 8
  %irq_cb_tbl40 = getelementptr inbounds %struct.dpu_hw_intr, ptr %19, i32 0, i32 6
  %20 = ptrtoint ptr %irq_cb_tbl40 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %irq_cb_tbl40, align 4
  %arrayidx = getelementptr %struct.list_head, ptr %21, i32 %irq_idx
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile ptr, ptr %arrayidx, align 4
  %cmp.i.not = icmp eq ptr %23, %arrayidx
  br i1 %cmp.i.not, label %if.then43, label %list_del_init.exit.if.end54_crit_edge

list_del_init.exit.if.end54_crit_edge:            ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end54

if.then43:                                        ; preds = %list_del_init.exit
  %call45 = tail call fastcc i32 @dpu_hw_intr_disable_irq_locked(ptr noundef %19, i32 noundef %irq_idx)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.then43.if.end54_crit_edge, label %do.end50

if.then43.if.end54_crit_edge:                     ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end54

do.end50:                                         ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #13
  %call52 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, i32 noundef %irq_idx) #14
  br label %if.end54

if.end54:                                         ; preds = %do.end50, %if.then43.if.end54_crit_edge, %list_del_init.exit.if.end54_crit_edge
  %24 = ptrtoint ptr %hw_intr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hw_intr, align 8
  %irq_lock56 = getelementptr inbounds %struct.dpu_hw_intr, ptr %25, i32 0, i32 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irq_lock56, i32 noundef %call34) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end54, %do.end23, %cond.end, %do.end
  %retval.0 = phi i32 [ -22, %do.end23 ], [ 0, %if.end54 ], [ -22, %cond.end ], [ -22, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_dpu_core_irq_unregister_callback(i32 noundef %irq_idx, ptr noundef %callback) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_core_irq_unregister_callback, i32 0, i32 1), ptr blockaddress(@trace_dpu_core_irq_unregister_callback, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !116

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !102) #11
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !117

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.33, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !102) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !125
  %call42 = tail call i32 @__traceiter_dpu_core_irq_unregister_callback(ptr noundef null, i32 noundef %irq_idx, ptr noundef %callback) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !126
  %13 = tail call i32 @llvm.read_register.i32(metadata !102) #11
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !102) #11
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !117

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.33, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !102) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !120
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_core_irq_unregister_callback, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_core_irq_unregister_callback, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_dpu_core_irq_unregister_callback.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_dpu_core_irq_unregister_callback.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.31, i32 noundef 895, ptr noundef nonnull @.str.32) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !121
  %31 = tail call i32 @llvm.read_register.i32(metadata !102) #11
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dpu_hw_intr_disable_irq_locked(ptr noundef %intr, i32 noundef %irq_idx) unnamed_addr #0 align 64 {
entry:
  %agg.tmp.sroa.0.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %intr, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %total_irqs = getelementptr inbounds %struct.dpu_hw_intr, ptr %intr, i32 0, i32 3
  %0 = ptrtoint ptr %total_irqs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %total_irqs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %irq_idx)
  %cmp1.not = icmp ugt i32 %1, %irq_idx
  br i1 %cmp1.not, label %do.body4, label %do.end

do.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %irq_idx) #14
  br label %cleanup

do.body4:                                         ; preds = %lor.lhs.false
  %irq_lock = getelementptr inbounds %struct.dpu_hw_intr, ptr %intr, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i)
  %2 = ptrtoint ptr %irq_lock to i32
  call void @__asan_load4_noabort(i32 %2)
  %agg.tmp.sroa.0.0.copyload.i = load volatile i32, ptr %irq_lock, align 4
  %3 = ptrtoint ptr %agg.tmp.sroa.0.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i, ptr %agg.tmp.sroa.0.i, align 4
  %lock.sroa.0.0.extract.shift.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i, 16
  %conv.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i, i32 %lock.sroa.0.0.extract.shift.i.i)
  %cmp.i.i.not = icmp eq i32 %conv.i.i, %lock.sroa.0.0.extract.shift.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i)
  br i1 %cmp.i.i.not, label %do.body11, label %do.end19, !prof !122

do.body11:                                        ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/dpu1/dpu_hw_interrupts.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 294, 0\0A.popsection", ""() #11, !srcloc !127
  unreachable

do.end19:                                         ; preds = %do.body4
  %div = sdiv i32 %irq_idx, 32
  %cache_irq_mask20 = getelementptr inbounds %struct.dpu_hw_intr, ptr %intr, i32 0, i32 1
  %4 = ptrtoint ptr %cache_irq_mask20 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cache_irq_mask20, align 4
  %arrayidx21 = getelementptr i32, ptr %5, i32 %div
  %6 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx21, align 4
  %rem75 = and i32 %irq_idx, 31
  %shl = shl nuw i32 1, %rem75
  %and = and i32 %7, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp22 = icmp eq i32 %and, 0
  br i1 %cmp22, label %do.end19.do.body36_crit_edge, label %if.else

do.end19.do.body36_crit_edge:                     ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body36

if.else:                                          ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx = getelementptr [16 x %struct.dpu_intr_reg], ptr @dpu_intr_set, i32 0, i32 %div
  %neg = xor i32 %shl, -1
  %and26 = and i32 %7, %neg
  %en_off = getelementptr [16 x %struct.dpu_intr_reg], ptr @dpu_intr_set, i32 0, i32 %div, i32 1
  %8 = ptrtoint ptr %en_off to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %en_off, align 4
  tail call void @dpu_reg_write(ptr noundef nonnull %intr, i32 noundef %9, i32 noundef %and26, ptr noundef nonnull @.str.38) #11
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  tail call void @dpu_reg_write(ptr noundef nonnull %intr, i32 noundef %11, i32 noundef %shl, ptr noundef nonnull @.str.37) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !128
  tail call void @arm_heavy_mb() #11
  %12 = ptrtoint ptr %cache_irq_mask20 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cache_irq_mask20, align 4
  %arrayidx34 = getelementptr i32, ptr %13, i32 %div
  %14 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %and26, ptr %arrayidx34, align 4
  br label %do.body36

do.body36:                                        ; preds = %if.else, %do.end19.do.body36_crit_edge
  %dbgstr.0 = phi ptr [ @.str.43, %if.else ], [ @.str.42, %do.end19.do.body36_crit_edge ]
  %cache_irq_mask.0 = phi i32 [ %and26, %if.else ], [ %7, %do.end19.do.body36_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dpu_hw_intr_disable_irq_locked.__UNIQUE_ID_ddebug476, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dpu_hw_intr_disable_irq_locked, %if.then46)) #11
          to label %cleanup [label %if.then46], !srcloc !116

if.then46:                                        ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dpu_hw_intr_disable_irq_locked.__UNIQUE_ID_ddebug476, ptr noundef nonnull @.str.40, ptr noundef nonnull %dbgstr.0, i32 noundef %shl, i32 noundef %cache_irq_mask.0) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then46, %do.body36, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.then46 ], [ 0, %do.body36 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dpu_debugfs_core_irq_init(ptr noundef %dpu_kms, ptr noundef %parent) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.27, i16 noundef zeroext 384, ptr noundef %parent, ptr noundef %dpu_kms, ptr noundef nonnull @dpu_debugfs_core_irq_fops) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dpu_core_irq_preinstall(ptr nocapture noundef readonly %dpu_kms) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev = getelementptr inbounds %struct.dpu_kms, ptr %dpu_kms, i32 0, i32 19
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #11
  %hw_intr.i = getelementptr inbounds %struct.dpu_kms, ptr %dpu_kms, i32 0, i32 10
  %2 = ptrtoint ptr %hw_intr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw_intr.i, align 8
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.dpu_disable_all_irqs.exit_crit_edge, label %for.cond.preheader.i

entry.dpu_disable_all_irqs.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %dpu_disable_all_irqs.exit

for.cond.preheader.i:                             ; preds = %entry
  %irq_mask.i = getelementptr inbounds %struct.dpu_hw_intr, ptr %3, i32 0, i32 5
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i
  %i.010.i = phi i32 [ 0, %for.cond.preheader.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %div3.i.i = lshr i32 %i.010.i, 5
  %arrayidx.i.i = getelementptr i32, ptr %irq_mask.i, i32 %div3.i.i
  %4 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %arrayidx.i.i, align 4
  %6 = shl nuw i32 1, %i.010.i
  %7 = and i32 %5, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool1.not.i = icmp eq i32 %7, 0
  br i1 %tobool1.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then2.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.then2.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i = getelementptr [16 x %struct.dpu_intr_reg], ptr @dpu_intr_set, i32 0, i32 %i.010.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i, align 4
  tail call void @dpu_reg_write(ptr noundef nonnull %3, i32 noundef %9, i32 noundef -1, ptr noundef nonnull @.str.45) #11
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then2.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.010.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 16
  br i1 %exitcond.not.i, label %dpu_clear_irqs.exit, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

dpu_clear_irqs.exit:                              ; preds = %for.inc.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !129
  tail call void @arm_heavy_mb() #11
  %10 = ptrtoint ptr %hw_intr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pr = load ptr, ptr %hw_intr.i, align 8
  %tobool.not.i31 = icmp eq ptr %.pr, null
  br i1 %tobool.not.i31, label %dpu_clear_irqs.exit.dpu_disable_all_irqs.exit_crit_edge, label %for.cond.preheader.i33

dpu_clear_irqs.exit.dpu_disable_all_irqs.exit_crit_edge: ; preds = %dpu_clear_irqs.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %dpu_disable_all_irqs.exit

for.cond.preheader.i33:                           ; preds = %dpu_clear_irqs.exit
  %irq_mask.i32 = getelementptr inbounds %struct.dpu_hw_intr, ptr %.pr, i32 0, i32 5
  br label %for.body.i38

for.body.i38:                                     ; preds = %for.inc.i42.for.body.i38_crit_edge, %for.cond.preheader.i33
  %i.010.i34 = phi i32 [ 0, %for.cond.preheader.i33 ], [ %inc.i40, %for.inc.i42.for.body.i38_crit_edge ]
  %div3.i.i35 = lshr i32 %i.010.i34, 5
  %arrayidx.i.i36 = getelementptr i32, ptr %irq_mask.i32, i32 %div3.i.i35
  %11 = ptrtoint ptr %arrayidx.i.i36 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %arrayidx.i.i36, align 4
  %13 = shl nuw i32 1, %i.010.i34
  %14 = and i32 %12, %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool1.not.i37 = icmp eq i32 %14, 0
  br i1 %tobool1.not.i37, label %for.body.i38.for.inc.i42_crit_edge, label %if.then2.i39

for.body.i38.for.inc.i42_crit_edge:               ; preds = %for.body.i38
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i42

if.then2.i39:                                     ; preds = %for.body.i38
  call void @__sanitizer_cov_trace_pc() #13
  %en_off.i = getelementptr [16 x %struct.dpu_intr_reg], ptr @dpu_intr_set, i32 0, i32 %i.010.i34, i32 1
  %15 = ptrtoint ptr %en_off.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %en_off.i, align 4
  tail call void @dpu_reg_write(ptr noundef nonnull %.pr, i32 noundef %16, i32 noundef 0, ptr noundef nonnull @.str.46) #11
  br label %for.inc.i42

for.inc.i42:                                      ; preds = %if.then2.i39, %for.body.i38.for.inc.i42_crit_edge
  %inc.i40 = add nuw nsw i32 %i.010.i34, 1
  %exitcond.not.i41 = icmp eq i32 %inc.i40, 16
  br i1 %exitcond.not.i41, label %do.body.i43, label %for.inc.i42.for.body.i38_crit_edge

for.inc.i42.for.body.i38_crit_edge:               ; preds = %for.inc.i42
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i38

do.body.i43:                                      ; preds = %for.inc.i42
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !130
  tail call void @arm_heavy_mb() #11
  br label %dpu_disable_all_irqs.exit

dpu_disable_all_irqs.exit:                        ; preds = %do.body.i43, %dpu_clear_irqs.exit.dpu_disable_all_irqs.exit_crit_edge, %entry.dpu_disable_all_irqs.exit_crit_edge
  %17 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pdev, align 8
  %dev2 = getelementptr inbounds %struct.platform_device, ptr %18, i32 0, i32 3
  %call.i44 = tail call i32 @__pm_runtime_idle(ptr noundef %dev2, i32 noundef 4) #11
  %19 = ptrtoint ptr %hw_intr.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hw_intr.i, align 8
  %total_irqs = getelementptr inbounds %struct.dpu_hw_intr, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %total_irqs to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %total_irqs, align 4
  %23 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %22, i32 8) #11
  %24 = extractvalue { i32, i1 } %23, 1
  br i1 %24, label %dpu_disable_all_irqs.exit.kcalloc.exit_crit_edge, label %if.end7.i.i, !prof !122

dpu_disable_all_irqs.exit.kcalloc.exit_crit_edge: ; preds = %dpu_disable_all_irqs.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %kcalloc.exit

if.end7.i.i:                                      ; preds = %dpu_disable_all_irqs.exit
  call void @__sanitizer_cov_trace_pc() #13
  %25 = extractvalue { i32, i1 } %23, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %25, i32 noundef 3520) #16
  br label %kcalloc.exit

kcalloc.exit:                                     ; preds = %if.end7.i.i, %dpu_disable_all_irqs.exit.kcalloc.exit_crit_edge
  %retval.0.i.i = phi ptr [ %call8.i.i, %if.end7.i.i ], [ null, %dpu_disable_all_irqs.exit.kcalloc.exit_crit_edge ]
  %26 = ptrtoint ptr %hw_intr.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %hw_intr.i, align 8
  %irq_cb_tbl = getelementptr inbounds %struct.dpu_hw_intr, ptr %27, i32 0, i32 6
  %28 = ptrtoint ptr %irq_cb_tbl to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %retval.0.i.i, ptr %irq_cb_tbl, align 4
  %29 = load ptr, ptr %hw_intr.i, align 8
  %total_irqs7 = getelementptr inbounds %struct.dpu_hw_intr, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %total_irqs7 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %total_irqs7, align 4
  %32 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %31, i32 4) #11
  %33 = extractvalue { i32, i1 } %32, 1
  br i1 %33, label %kcalloc.exit.kcalloc.exit77_crit_edge, label %if.end7.i.i75, !prof !122

kcalloc.exit.kcalloc.exit77_crit_edge:            ; preds = %kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %kcalloc.exit77

if.end7.i.i75:                                    ; preds = %kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #13
  %34 = extractvalue { i32, i1 } %32, 0
  %call8.i.i74 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %34, i32 noundef 3520) #16
  br label %kcalloc.exit77

kcalloc.exit77:                                   ; preds = %if.end7.i.i75, %kcalloc.exit.kcalloc.exit77_crit_edge
  %retval.0.i.i76 = phi ptr [ %call8.i.i74, %if.end7.i.i75 ], [ null, %kcalloc.exit.kcalloc.exit77_crit_edge ]
  %35 = ptrtoint ptr %hw_intr.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %hw_intr.i, align 8
  %irq_counts = getelementptr inbounds %struct.dpu_hw_intr, ptr %36, i32 0, i32 7
  %37 = ptrtoint ptr %irq_counts to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %retval.0.i.i76, ptr %irq_counts, align 4
  %38 = load ptr, ptr %hw_intr.i, align 8
  %total_irqs1179 = getelementptr inbounds %struct.dpu_hw_intr, ptr %38, i32 0, i32 3
  %39 = ptrtoint ptr %total_irqs1179 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %total_irqs1179, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp80.not = icmp eq i32 %40, 0
  br i1 %cmp80.not, label %kcalloc.exit77.for.end_crit_edge, label %kcalloc.exit77.for.body_crit_edge

kcalloc.exit77.for.body_crit_edge:                ; preds = %kcalloc.exit77
  br label %for.body

kcalloc.exit77.for.end_crit_edge:                 ; preds = %kcalloc.exit77
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %kcalloc.exit77.for.body_crit_edge
  %41 = phi ptr [ %52, %for.body.for.body_crit_edge ], [ %38, %kcalloc.exit77.for.body_crit_edge ]
  %i.081 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %kcalloc.exit77.for.body_crit_edge ]
  %irq_cb_tbl13 = getelementptr inbounds %struct.dpu_hw_intr, ptr %41, i32 0, i32 6
  %42 = ptrtoint ptr %irq_cb_tbl13 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %irq_cb_tbl13, align 4
  %arrayidx = getelementptr %struct.list_head, ptr %43, i32 %i.081
  %44 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %arrayidx, ptr %arrayidx, align 4
  %prev.i = getelementptr %struct.list_head, ptr %43, i32 %i.081, i32 1
  %45 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %arrayidx, ptr %prev.i, align 4
  %46 = ptrtoint ptr %hw_intr.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %hw_intr.i, align 8
  %irq_counts15 = getelementptr inbounds %struct.dpu_hw_intr, ptr %47, i32 0, i32 7
  %48 = ptrtoint ptr %irq_counts15 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %irq_counts15, align 4
  %arrayidx16 = getelementptr %struct.atomic_t, ptr %49, i32 %i.081
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx16, i32 noundef 4) #11
  %50 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile i32 0, ptr %arrayidx16, align 4
  %inc = add nuw i32 %i.081, 1
  %51 = ptrtoint ptr %hw_intr.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %hw_intr.i, align 8
  %total_irqs11 = getelementptr inbounds %struct.dpu_hw_intr, ptr %52, i32 0, i32 3
  %53 = ptrtoint ptr %total_irqs11 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %total_irqs11, align 4
  %cmp = icmp ult i32 %inc, %54
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %kcalloc.exit77.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dpu_core_irq_uninstall(ptr nocapture noundef readonly %dpu_kms) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev = getelementptr inbounds %struct.dpu_kms, ptr %dpu_kms, i32 0, i32 19
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #11
  %hw_intr = getelementptr inbounds %struct.dpu_kms, ptr %dpu_kms, i32 0, i32 10
  %2 = ptrtoint ptr %hw_intr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw_intr, align 8
  %total_irqs30 = getelementptr inbounds %struct.dpu_hw_intr, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %total_irqs30 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %total_irqs30, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp31.not = icmp eq i32 %5, 0
  br i1 %cmp31.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %6 = phi ptr [ %12, %for.inc.for.body_crit_edge ], [ %3, %entry.for.body_crit_edge ]
  %i.032 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %irq_cb_tbl = getelementptr inbounds %struct.dpu_hw_intr, ptr %6, i32 0, i32 6
  %7 = ptrtoint ptr %irq_cb_tbl to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %irq_cb_tbl, align 4
  %arrayidx = getelementptr %struct.list_head, ptr %8, i32 %i.032
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %arrayidx, align 4
  %cmp.i.not = icmp eq ptr %10, %arrayidx
  br i1 %cmp.i.not, label %for.body.for.inc_crit_edge, label %do.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, i32 noundef %i.032) #14
  br label %for.inc

for.inc:                                          ; preds = %do.end, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.032, 1
  %11 = ptrtoint ptr %hw_intr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hw_intr, align 8
  %total_irqs = getelementptr inbounds %struct.dpu_hw_intr, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %total_irqs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %total_irqs, align 4
  %cmp = icmp ult i32 %inc, %14
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %.lcssa = phi ptr [ %3, %entry.for.end_crit_edge ], [ %12, %for.inc.for.end_crit_edge ]
  %tobool.not.i = icmp eq ptr %.lcssa, null
  br i1 %tobool.not.i, label %for.end.dpu_clear_irqs.exit_crit_edge, label %for.cond.preheader.i

for.end.dpu_clear_irqs.exit_crit_edge:            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %dpu_clear_irqs.exit

for.cond.preheader.i:                             ; preds = %for.end
  %irq_mask.i = getelementptr inbounds %struct.dpu_hw_intr, ptr %.lcssa, i32 0, i32 5
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i
  %i.010.i = phi i32 [ 0, %for.cond.preheader.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %div3.i.i = lshr i32 %i.010.i, 5
  %arrayidx.i.i = getelementptr i32, ptr %irq_mask.i, i32 %div3.i.i
  %15 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %arrayidx.i.i, align 4
  %17 = shl nuw i32 1, %i.010.i
  %18 = and i32 %16, %17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool1.not.i = icmp eq i32 %18, 0
  br i1 %tobool1.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then2.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.then2.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i = getelementptr [16 x %struct.dpu_intr_reg], ptr @dpu_intr_set, i32 0, i32 %i.010.i
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx.i, align 4
  tail call void @dpu_reg_write(ptr noundef nonnull %.lcssa, i32 noundef %20, i32 noundef -1, ptr noundef nonnull @.str.45) #11
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then2.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.010.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 16
  br i1 %exitcond.not.i, label %do.body.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

do.body.i:                                        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !129
  tail call void @arm_heavy_mb() #11
  br label %dpu_clear_irqs.exit

dpu_clear_irqs.exit:                              ; preds = %do.body.i, %for.end.dpu_clear_irqs.exit_crit_edge
  %21 = ptrtoint ptr %hw_intr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hw_intr, align 8
  %tobool.not.i16 = icmp eq ptr %22, null
  br i1 %tobool.not.i16, label %dpu_clear_irqs.exit.dpu_disable_all_irqs.exit_crit_edge, label %for.cond.preheader.i18

dpu_clear_irqs.exit.dpu_disable_all_irqs.exit_crit_edge: ; preds = %dpu_clear_irqs.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %dpu_disable_all_irqs.exit

for.cond.preheader.i18:                           ; preds = %dpu_clear_irqs.exit
  %irq_mask.i17 = getelementptr inbounds %struct.dpu_hw_intr, ptr %22, i32 0, i32 5
  br label %for.body.i23

for.body.i23:                                     ; preds = %for.inc.i27.for.body.i23_crit_edge, %for.cond.preheader.i18
  %i.010.i19 = phi i32 [ 0, %for.cond.preheader.i18 ], [ %inc.i25, %for.inc.i27.for.body.i23_crit_edge ]
  %div3.i.i20 = lshr i32 %i.010.i19, 5
  %arrayidx.i.i21 = getelementptr i32, ptr %irq_mask.i17, i32 %div3.i.i20
  %23 = ptrtoint ptr %arrayidx.i.i21 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %arrayidx.i.i21, align 4
  %25 = shl nuw i32 1, %i.010.i19
  %26 = and i32 %24, %25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool1.not.i22 = icmp eq i32 %26, 0
  br i1 %tobool1.not.i22, label %for.body.i23.for.inc.i27_crit_edge, label %if.then2.i24

for.body.i23.for.inc.i27_crit_edge:               ; preds = %for.body.i23
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i27

if.then2.i24:                                     ; preds = %for.body.i23
  call void @__sanitizer_cov_trace_pc() #13
  %en_off.i = getelementptr [16 x %struct.dpu_intr_reg], ptr @dpu_intr_set, i32 0, i32 %i.010.i19, i32 1
  %27 = ptrtoint ptr %en_off.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %en_off.i, align 4
  tail call void @dpu_reg_write(ptr noundef nonnull %22, i32 noundef %28, i32 noundef 0, ptr noundef nonnull @.str.46) #11
  br label %for.inc.i27

for.inc.i27:                                      ; preds = %if.then2.i24, %for.body.i23.for.inc.i27_crit_edge
  %inc.i25 = add nuw nsw i32 %i.010.i19, 1
  %exitcond.not.i26 = icmp eq i32 %inc.i25, 16
  br i1 %exitcond.not.i26, label %do.body.i28, label %for.inc.i27.for.body.i23_crit_edge

for.inc.i27.for.body.i23_crit_edge:               ; preds = %for.inc.i27
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i23

do.body.i28:                                      ; preds = %for.inc.i27
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !130
  tail call void @arm_heavy_mb() #11
  br label %dpu_disable_all_irqs.exit

dpu_disable_all_irqs.exit:                        ; preds = %do.body.i28, %dpu_clear_irqs.exit.dpu_disable_all_irqs.exit_crit_edge
  %29 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pdev, align 8
  %dev5 = getelementptr inbounds %struct.platform_device, ptr %30, i32 0, i32 3
  %call.i29 = tail call i32 @__pm_runtime_idle(ptr noundef %dev5, i32 noundef 4) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_dpu_core_irq_register_callback(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #10

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_dpu_core_irq_unregister_callback(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dpu_debugfs_core_irq_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @dpu_debugfs_core_irq_show, ptr noundef %1) #11
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dpu_debugfs_core_irq_show(ptr noundef %s, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %hw_intr = getelementptr inbounds %struct.dpu_kms, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %hw_intr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw_intr, align 8
  %irq_cb_tbl = getelementptr inbounds %struct.dpu_hw_intr, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %irq_cb_tbl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %irq_cb_tbl, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %do.end, label %for.cond.preheader, !prof !122

for.cond.preheader:                               ; preds = %entry
  %6 = ptrtoint ptr %hw_intr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw_intr, align 8
  %total_irqs86 = getelementptr inbounds %struct.dpu_hw_intr, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %total_irqs86 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %total_irqs86, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp87.not = icmp eq i32 %9, 0
  br i1 %cmp87.not, label %for.cond.preheader.cleanup_crit_edge, label %for.cond.preheader.do.body26_crit_edge

for.cond.preheader.do.body26_crit_edge:           ; preds = %for.cond.preheader
  br label %do.body26

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 543, i32 noundef 9, ptr noundef null) #11
  br label %cleanup

do.body26:                                        ; preds = %for.inc61.do.body26_crit_edge, %for.cond.preheader.do.body26_crit_edge
  %10 = phi ptr [ %23, %for.inc61.do.body26_crit_edge ], [ %7, %for.cond.preheader.do.body26_crit_edge ]
  %i.088 = phi i32 [ %inc62, %for.inc61.do.body26_crit_edge ], [ 0, %for.cond.preheader.do.body26_crit_edge ]
  %irq_lock = getelementptr inbounds %struct.dpu_hw_intr, ptr %10, i32 0, i32 4
  %call30 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irq_lock) #11
  %11 = ptrtoint ptr %hw_intr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hw_intr, align 8
  %irq_counts = getelementptr inbounds %struct.dpu_hw_intr, ptr %12, i32 0, i32 7
  %13 = ptrtoint ptr %irq_counts to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %irq_counts, align 4
  %arrayidx = getelementptr %struct.atomic_t, ptr %14, i32 %i.088
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx, i32 noundef 4) #11
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %arrayidx, align 4
  %17 = ptrtoint ptr %hw_intr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hw_intr, align 8
  %irq_cb_tbl38 = getelementptr inbounds %struct.dpu_hw_intr, ptr %18, i32 0, i32 6
  %19 = ptrtoint ptr %irq_cb_tbl38 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %irq_cb_tbl38, align 4
  %arrayidx39 = getelementptr %struct.list_head, ptr %20, i32 %i.088
  br label %for.cond41

for.cond41:                                       ; preds = %for.cond41.for.cond41_crit_edge, %do.body26
  %cb_count.0 = phi i32 [ 0, %do.body26 ], [ %inc, %for.cond41.for.cond41_crit_edge ]
  %cb.0.in = phi ptr [ %arrayidx39, %do.body26 ], [ %cb.0, %for.cond41.for.cond41_crit_edge ]
  %21 = ptrtoint ptr %cb.0.in to i32
  call void @__asan_load4_noabort(i32 %21)
  %cb.0 = load ptr, ptr %cb.0.in, align 4
  %cmp45.not = icmp eq ptr %cb.0, %arrayidx39
  %inc = add i32 %cb_count.0, 1
  br i1 %cmp45.not, label %for.end, label %for.cond41.for.cond41_crit_edge

for.cond41.for.cond41_crit_edge:                  ; preds = %for.cond41
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond41

for.end:                                          ; preds = %for.cond41
  %irq_lock56 = getelementptr inbounds %struct.dpu_hw_intr, ptr %18, i32 0, i32 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irq_lock56, i32 noundef %call30) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool57.not = icmp eq i32 %16, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cb_count.0)
  %tobool58.not = icmp eq i32 %cb_count.0, 0
  %or.cond = select i1 %tobool57.not, i1 %tobool58.not, i1 false
  br i1 %or.cond, label %for.end.for.inc61_crit_edge, label %if.then59

for.end.for.inc61_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc61

if.then59:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.44, i32 noundef %i.088, i32 noundef %16, i32 noundef %cb_count.0) #11
  br label %for.inc61

for.inc61:                                        ; preds = %if.then59, %for.end.for.inc61_crit_edge
  %inc62 = add nuw i32 %i.088, 1
  %22 = ptrtoint ptr %hw_intr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hw_intr, align 8
  %total_irqs = getelementptr inbounds %struct.dpu_hw_intr, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %total_irqs to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %total_irqs, align 4
  %cmp = icmp ult i32 %inc62, %25
  br i1 %cmp, label %for.inc61.do.body26_crit_edge, label %for.inc61.cleanup_crit_edge

for.inc61.cleanup_crit_edge:                      ; preds = %for.inc61
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.inc61.do.body26_crit_edge:                    ; preds = %for.inc61
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body26

cleanup:                                          ; preds = %for.inc61.cleanup_crit_edge, %do.end, %for.cond.preheader.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 49)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 49)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind readonly }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !17, !18, !19, !20, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !39, !41, !42, !44, !45, !46, !48, !50, !51, !52, !53, !55, !57, !59, !60, !61, !62, !64, !65, !67, !68, !69, !71, !73, !75, !77, !79, !80, !81, !83, !84, !86, !87, !88, !90, !92, !94, !96, !98, !100}
!llvm.named.register.sp = !{!102}
!llvm.module.flags = !{!103, !104, !105, !106, !107, !108, !109, !110}
!llvm.ident = !{!111}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_interrupts.c", i32 191, i32 4}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_interrupts.c", i32 370, i32 3}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @dpu_core_irq_read._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @dpu_core_irq_read._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_interrupts.c", i32 376, i32 3}
!10 = !{ptr @dpu_core_irq_read._entry.4, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @dpu_core_irq_read._entry_ptr.6, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @dpu_hw_intr_init.__key, !13, !"__key", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_interrupts.c", i32 431, i32 2}
!14 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_interrupts.c", i32 454, i32 3}
!17 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @dpu_core_irq_register_callback._entry, !16, !"_entry", i1 false, i1 false}
!19 = !{ptr @dpu_core_irq_register_callback._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_interrupts.c", i32 459, i32 3}
!22 = !{ptr @dpu_core_irq_register_callback._entry.10, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @dpu_core_irq_register_callback._entry_ptr.12, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.14, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_interrupts.c", i32 467, i32 3}
!26 = !{ptr @dpu_core_irq_register_callback._entry.13, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @dpu_core_irq_register_callback._entry_ptr.15, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.17, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_interrupts.c", i32 484, i32 4}
!30 = !{ptr @dpu_core_irq_register_callback._entry.16, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @dpu_core_irq_register_callback._entry_ptr.18, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.19, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_interrupts.c", i32 498, i32 3}
!34 = !{ptr @dpu_core_irq_unregister_callback._entry, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @dpu_core_irq_unregister_callback._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @dpu_core_irq_unregister_callback._entry.20, !37, !"_entry", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_interrupts.c", i32 503, i32 3}
!38 = !{ptr @dpu_core_irq_unregister_callback._entry_ptr.21, !37, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @dpu_core_irq_unregister_callback._entry.22, !40, !"_entry", i1 false, i1 false}
!40 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_interrupts.c", i32 511, i32 3}
!41 = !{ptr @dpu_core_irq_unregister_callback._entry_ptr.23, !40, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.25, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_interrupts.c", i32 526, i32 4}
!44 = !{ptr @dpu_core_irq_unregister_callback._entry.24, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @dpu_core_irq_unregister_callback._entry_ptr.26, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.27, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_interrupts.c", i32 567, i32 22}
!48 = !{ptr @.str.28, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_interrupts.c", i32 599, i32 4}
!50 = !{ptr @.str.29, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @dpu_core_irq_uninstall._entry, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @dpu_core_irq_uninstall._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @dpu_intr_set, !54, !"dpu_intr_set", i1 false, i1 false}
!54 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_interrupts.c", i32 55, i32 34}
!55 = !{ptr @.str.30, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_interrupts.c", i32 153, i32 3}
!57 = distinct !{null, !58, !"__already_done", i1 false, i1 false}
!58 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_trace.h", i32 888, i32 1}
!59 = !{ptr @.str.31, !58, !"<string literal>", i1 false, i1 false}
!60 = distinct !{null, !58, !"__warned", i1 false, i1 false}
!61 = !{ptr @.str.32, !58, !"<string literal>", i1 false, i1 false}
!62 = distinct !{null, !63, !"__already_done", i1 false, i1 false}
!63 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!64 = !{ptr @.str.33, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @.str.34, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_interrupts.c", i32 236, i32 3}
!67 = !{ptr @dpu_hw_intr_enable_irq_locked._entry, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @dpu_hw_intr_enable_irq_locked._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.35, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_interrupts.c", i32 252, i32 12}
!71 = !{ptr @.str.36, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_interrupts.c", i32 254, i32 12}
!73 = !{ptr @.str.37, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_interrupts.c", i32 258, i32 3}
!75 = !{ptr @.str.38, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_interrupts.c", i32 260, i32 3}
!77 = !{ptr @.str.39, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_interrupts.c", i32 268, i32 2}
!79 = !{ptr @.str.40, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @dpu_hw_intr_enable_irq_locked.__UNIQUE_ID_ddebug475, !78, !"__UNIQUE_ID_ddebug475", i1 false, i1 false}
!81 = distinct !{null, !82, !"__already_done", i1 false, i1 false}
!82 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_trace.h", i32 892, i32 1}
!83 = distinct !{null, !82, !"__warned", i1 false, i1 false}
!84 = !{ptr @.str.41, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_interrupts.c", i32 285, i32 3}
!86 = !{ptr @dpu_hw_intr_disable_irq_locked._entry, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @dpu_hw_intr_disable_irq_locked._entry_ptr, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.42, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_interrupts.c", i32 301, i32 12}
!90 = !{ptr @.str.43, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_interrupts.c", i32 303, i32 12}
!92 = !{ptr @dpu_hw_intr_disable_irq_locked.__UNIQUE_ID_ddebug476, !93, !"__UNIQUE_ID_ddebug476", i1 false, i1 false}
!93 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_interrupts.c", i32 317, i32 2}
!94 = !{ptr @dpu_debugfs_core_irq_fops, !95, !"dpu_debugfs_core_irq_fops", i1 false, i1 false}
!95 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_interrupts.c", i32 562, i32 1}
!96 = !{ptr @.str.44, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_interrupts.c", i32 555, i32 18}
!98 = !{ptr @.str.45, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_interrupts.c", i32 333, i32 4}
!100 = !{ptr @.str.46, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_interrupts.c", i32 351, i32 4}
!102 = !{!"sp"}
!103 = !{i32 1, !"wchar_size", i32 2}
!104 = !{i32 1, !"min_enum_size", i32 4}
!105 = !{i32 8, !"branch-target-enforcement", i32 0}
!106 = !{i32 8, !"sign-return-address", i32 0}
!107 = !{i32 8, !"sign-return-address-all", i32 0}
!108 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!109 = !{i32 7, !"uwtable", i32 1}
!110 = !{i32 7, !"frame-pointer", i32 2}
!111 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!112 = !{i32 0, i32 33}
!113 = !{i64 2148175614, i64 2148175640, i64 2148175669, i64 2148175703, i64 2148175734, i64 2148175757}
!114 = !{i64 2158663002}
!115 = !{i64 2158682420}
!116 = !{i64 2148985542, i64 2148985547, i64 2148985560, i64 2148985604, i64 2148985638, i64 2148985659}
!117 = !{!"branch_weights", i32 2000, i32 1}
!118 = !{i64 2158505175}
!119 = !{i64 2158505432}
!120 = !{i64 2149497803}
!121 = !{i64 2149498839}
!122 = !{!"branch_weights", i32 1, i32 2000}
!123 = !{i64 2158665271, i64 2158665785, i64 2158665308, i64 2158665364, i64 2158665398, i64 2158665422, i64 2158665463, i64 2158665484, i64 2158665512, i64 2158665546}
!124 = !{i64 2158667256}
!125 = !{i64 2158527388}
!126 = !{i64 2158527649}
!127 = !{i64 2158672182, i64 2158672696, i64 2158672219, i64 2158672275, i64 2158672309, i64 2158672333, i64 2158672374, i64 2158672395, i64 2158672423, i64 2158672457}
!128 = !{i64 2158674167}
!129 = !{i64 2158677476}
!130 = !{i64 2158678126}
