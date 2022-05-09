; ModuleID = '/llk/IR_all_yes/drivers/i2c/busses/i2c-qup.c_pt.bc'
source_filename = "../drivers/i2c/busses/i2c-qup.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_adapter_quirks = type { i64, i32, i16, i16, i16, i16 }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.qup_i2c_dev = type { ptr, ptr, i32, ptr, ptr, %struct.i2c_adapter, i32, i32, i32, i32, i32, i32, i32, i32, %struct.qup_i2c_block, ptr, i32, i32, i32, i8, i8, i32, i8, i8, i32, i32, i32, ptr, %struct.qup_i2c_tag, %struct.qup_i2c_bam, %struct.qup_i2c_bam, %struct.completion, ptr, ptr, ptr }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.qup_i2c_block = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i8, i8, i8, i8, i8, i8, [6 x i8] }
%struct.qup_i2c_tag = type { ptr, i32 }
%struct.qup_i2c_bam = type { %struct.qup_i2c_tag, ptr, ptr, i32 }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.page = type { i32, %union.anon.2, %union.anon.75, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.75 = type { %struct.atomic_t }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }

@__param_str_scl_freq = internal constant [17 x i8] c"i2c_qup.scl_freq\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@scl_freq = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_scl_freq = internal constant %struct.kernel_param { ptr @__param_str_scl_freq, ptr null, ptr @param_ops_uint, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @scl_freq } }, section "__param", align 4
@__UNIQUE_ID_scl_freqtype291 = internal constant [31 x i8] c"i2c_qup.parmtype=scl_freq:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_scl_freq292 = internal constant [45 x i8] c"i2c_qup.parm=scl_freq:SCL frequency override\00", section ".modinfo", align 1
@__initcall__kmod_i2c_qup__301_1990_qup_i2c_driver_init6 = internal global ptr @qup_i2c_driver_init, section ".initcall6.init", align 4
@qup_i2c_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @qup_i2c_probe, ptr @qup_i2c_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @qup_i2c_dt_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @qup_i2c_qup_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_qup_i2c_driver_exit = internal global ptr @qup_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file302 = internal constant [40 x i8] c"i2c_qup.file=drivers/i2c/busses/i2c-qup\00", section ".modinfo", align 1
@__UNIQUE_ID_license303 = internal constant [23 x i8] c"i2c_qup.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias304 = internal constant [31 x i8] c"i2c_qup.alias=platform:i2c_qup\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"i2c_qup\00", [24 x i8] zeroinitializer }, align 32
@qup_i2c_dt_match = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,i2c-qup-v1.1.1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,i2c-qup-v2.1.1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,i2c-qup-v2.2.1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@qup_i2c_qup_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @qup_i2c_suspend, ptr @qup_i2c_resume, ptr @qup_i2c_suspend, ptr @qup_i2c_resume, ptr @qup_i2c_suspend, ptr @qup_i2c_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @qup_i2c_pm_suspend_runtime, ptr @qup_i2c_pm_resume_runtime, ptr null }, [36 x i8] zeroinitializer }, align 32
@qup_i2c_probe.blk_sizes = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 4, i32 16, i32 32], [20 x i8] zeroinitializer }, align 32
@qup_i2c_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1678, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Using override frequency of %u\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"qup_i2c_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/i2c/busses/i2c-qup.c\00", [35 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\015\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@qup_i2c_probe._entry_ptr = internal global ptr @qup_i2c_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"clock-frequency\00", [16 x i8] zeroinitializer }, align 32
@qup_i2c_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 1684, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"using default clock-frequency %d\00", [63 x i8] zeroinitializer }, align 32
@qup_i2c_probe._entry_ptr.9 = internal global ptr @qup_i2c_probe._entry.7, section ".printk_index", align 4
@.str.10 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"qcom,i2c-qup-v1.1.1\00", [44 x i8] zeroinitializer }, align 32
@qup_i2c_algo = internal constant { %struct.i2c_algorithm, [36 x i8] } { %struct.i2c_algorithm { ptr @qup_i2c_xfer, ptr null, ptr null, ptr null, ptr @qup_i2c_func, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@qup_i2c_quirks = internal constant { %struct.i2c_adapter_quirks, [40 x i8] } { %struct.i2c_adapter_quirks { i64 96, i32 0, i16 0, i16 256, i16 0, i16 0 }, [40 x i8] zeroinitializer }, align 32
@qup_i2c_algo_v2 = internal constant { %struct.i2c_algorithm, [36 x i8] } { %struct.i2c_algorithm { ptr @qup_i2c_xfer_v2, ptr null, ptr null, ptr null, ptr @qup_i2c_func, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@qup_i2c_quirks_v2 = internal constant { %struct.i2c_adapter_quirks, [40 x i8] } { %struct.i2c_adapter_quirks { i64 96, i32 0, i16 0, i16 0, i16 0, i16 0 }, [40 x i8] zeroinitializer }, align 32
@qup_i2c_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str.3, i32 1754, ptr @.str.13, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"clock frequency not supported %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@qup_i2c_probe._entry_ptr.14 = internal global ptr @qup_i2c_probe._entry.11, section ".printk_index", align 4
@qup_i2c_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.2, ptr @.str.3, i32 1771, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"using default src-clock-hz %d\00", [34 x i8] zeroinitializer }, align 32
@qup_i2c_probe._entry_ptr.18 = internal global ptr @qup_i2c_probe._entry.16, section ".printk_index", align 4
@.str.19 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"core\00", [27 x i8] zeroinitializer }, align 32
@qup_i2c_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.2, ptr @.str.3, i32 1777, ptr @.str.13, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Could not get core clock\0A\00", [38 x i8] zeroinitializer }, align 32
@qup_i2c_probe._entry_ptr.22 = internal global ptr @qup_i2c_probe._entry.20, section ".printk_index", align 4
@.str.23 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"iface\00", [26 x i8] zeroinitializer }, align 32
@qup_i2c_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.2, ptr @.str.3, i32 1783, ptr @.str.13, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Could not get iface clock\0A\00", [37 x i8] zeroinitializer }, align 32
@qup_i2c_probe._entry_ptr.26 = internal global ptr @qup_i2c_probe._entry.24, section ".printk_index", align 4
@qup_i2c_probe._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.2, ptr @.str.3, i32 1803, ptr @.str.13, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Request %d IRQ failed\0A\00", [41 x i8] zeroinitializer }, align 32
@qup_i2c_probe._entry_ptr.29 = internal global ptr @qup_i2c_probe._entry.27, section ".printk_index", align 4
@qup_i2c_probe.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.30, i8 1, i8 -60, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Revision %x\0A\00", [19 x i8] zeroinitializer }, align 32
@qup_i2c_probe.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.31, i8 1, i8 -44, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"IN:block:%d, fifo:%d, OUT:block:%d, fifo:%d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"QUP I2C adapter\00", [16 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.33 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@high_memory = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@qup_i2c_bam_schedule_desc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.3, i32 754, ptr @.str.13, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed to get tx desc\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"qup_i2c_bam_schedule_desc\00", [38 x i8] zeroinitializer }, align 32
@qup_i2c_bam_schedule_desc._entry_ptr = internal global ptr @qup_i2c_bam_schedule_desc._entry, section ".printk_index", align 4
@qup_i2c_bam_schedule_desc._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.35, ptr @.str.3, i32 777, ptr @.str.13, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed to get rx desc\0A\00", [41 x i8] zeroinitializer }, align 32
@qup_i2c_bam_schedule_desc._entry_ptr.38 = internal global ptr @qup_i2c_bam_schedule_desc._entry.36, section ".printk_index", align 4
@qup_i2c_bam_schedule_desc._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.35, ptr @.str.3, i32 797, ptr @.str.13, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"normal trans timed out\0A\00", [40 x i8] zeroinitializer }, align 32
@qup_i2c_bam_schedule_desc._entry_ptr.41 = internal global ptr @qup_i2c_bam_schedule_desc._entry.39, section ".printk_index", align 4
@qup_i2c_bam_schedule_desc._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.35, ptr @.str.3, i32 806, ptr @.str.13, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"change to run state timed out\00", [34 x i8] zeroinitializer }, align 32
@qup_i2c_bam_schedule_desc._entry_ptr.44 = internal global ptr @qup_i2c_bam_schedule_desc._entry.42, section ".printk_index", align 4
@qup_i2c_bam_schedule_desc._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.35, ptr @.str.3, i32 814, ptr @.str.13, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"flush timed out\0A\00", [47 x i8] zeroinitializer }, align 32
@qup_i2c_bam_schedule_desc._entry_ptr.47 = internal global ptr @qup_i2c_bam_schedule_desc._entry.45, section ".printk_index", align 4
@.str.48 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"include/linux/dmaengine.h\00", [38 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"tx\00", [29 x i8] zeroinitializer }, align 32
@qup_i2c_req_dma._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.3, i32 630, ptr @.str.13, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\0A tx channel not available\00", [37 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"qup_i2c_req_dma\00", [16 x i8] zeroinitializer }, align 32
@qup_i2c_req_dma._entry_ptr = internal global ptr @qup_i2c_req_dma._entry, section ".printk_index", align 4
@.str.52 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"rx\00", [29 x i8] zeroinitializer }, align 32
@qup_i2c_req_dma._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.51, ptr @.str.3, i32 638, ptr @.str.13, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\0A rx channel not available\00", [37 x i8] zeroinitializer }, align 32
@qup_i2c_req_dma._entry_ptr.55 = internal global ptr @qup_i2c_req_dma._entry.53, section ".printk_index", align 4
@qup_i2c_pm_suspend_runtime.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.56, ptr @.str.3, ptr @.str.57, i8 1, i8 -30, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"qup_i2c_pm_suspend_runtime\00", [37 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"pm_runtime: suspending...\0A\00", [37 x i8] zeroinitializer }, align 32
@qup_i2c_pm_resume_runtime.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.58, ptr @.str.3, ptr @.str.59, i8 1, i8 -28, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"qup_i2c_pm_resume_runtime\00", [38 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"pm_runtime: resuming...\0A\00", [39 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966779]
@___asan_gen_.60 = private unnamed_addr constant [9 x i8] c"scl_freq\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 153, i32 21 }
@___asan_gen_.63 = private unnamed_addr constant [15 x i8] c"qup_i2c_driver\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 1979, i32 31 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 1983, i32 11 }
@___asan_gen_.69 = private unnamed_addr constant [17 x i8] c"qup_i2c_dt_match\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 1971, i32 34 }
@___asan_gen_.72 = private unnamed_addr constant [19 x i8] c"qup_i2c_qup_pm_ops\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 1961, i32 32 }
@___asan_gen_.75 = private unnamed_addr constant [10 x i8] c"blk_sizes\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 1659, i32 19 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 1678, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 1681, i32 44 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 1683, i32 4 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 1688, i32 49 }
@___asan_gen_.108 = private unnamed_addr constant [13 x i8] c"qup_i2c_algo\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 1609, i32 35 }
@___asan_gen_.111 = private unnamed_addr constant [15 x i8] c"qup_i2c_quirks\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 1624, i32 40 }
@___asan_gen_.114 = private unnamed_addr constant [16 x i8] c"qup_i2c_algo_v2\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 1614, i32 35 }
@___asan_gen_.117 = private unnamed_addr constant [18 x i8] c"qup_i2c_quirks_v2\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 1629, i32 40 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 1753, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 1770, i32 4 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 1775, i32 37 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 1777, i32 4 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 1781, i32 38 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 1783, i32 4 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 1803, i32 3 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 1808, i32 2 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 1872, i32 2 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 1881, i32 26 }
@___asan_gen_.168 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.172 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 87, i32 2 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 754, i32 3 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 777, i32 4 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 797, i32 3 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 806, i32 4 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 814, i32 4 }
@___asan_gen_.208 = private unnamed_addr constant [29 x i8] c"../include/linux/dmaengine.h\00", align 1
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 1169, i32 2 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 626, i32 45 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 630, i32 4 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 636, i32 45 }
@___asan_gen_.225 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 638, i32 4 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 1929, i32 2 }
@___asan_gen_.240 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.241 = private constant [32 x i8] c"../drivers/i2c/busses/i2c-qup.c\00", align 1
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 1938, i32 2 }
@llvm.compiler.used = appending global [84 x ptr] [ptr @__UNIQUE_ID_alias304, ptr @__UNIQUE_ID_file302, ptr @__UNIQUE_ID_license303, ptr @__UNIQUE_ID_scl_freq292, ptr @__UNIQUE_ID_scl_freqtype291, ptr @__exitcall_qup_i2c_driver_exit, ptr @__initcall__kmod_i2c_qup__301_1990_qup_i2c_driver_init6, ptr @__param_scl_freq, ptr @qup_i2c_bam_schedule_desc._entry, ptr @qup_i2c_bam_schedule_desc._entry.36, ptr @qup_i2c_bam_schedule_desc._entry.39, ptr @qup_i2c_bam_schedule_desc._entry.42, ptr @qup_i2c_bam_schedule_desc._entry.45, ptr @qup_i2c_bam_schedule_desc._entry_ptr, ptr @qup_i2c_bam_schedule_desc._entry_ptr.38, ptr @qup_i2c_bam_schedule_desc._entry_ptr.41, ptr @qup_i2c_bam_schedule_desc._entry_ptr.44, ptr @qup_i2c_bam_schedule_desc._entry_ptr.47, ptr @qup_i2c_driver_exit, ptr @qup_i2c_probe._entry, ptr @qup_i2c_probe._entry.11, ptr @qup_i2c_probe._entry.16, ptr @qup_i2c_probe._entry.20, ptr @qup_i2c_probe._entry.24, ptr @qup_i2c_probe._entry.27, ptr @qup_i2c_probe._entry.7, ptr @qup_i2c_probe._entry_ptr, ptr @qup_i2c_probe._entry_ptr.14, ptr @qup_i2c_probe._entry_ptr.18, ptr @qup_i2c_probe._entry_ptr.22, ptr @qup_i2c_probe._entry_ptr.26, ptr @qup_i2c_probe._entry_ptr.29, ptr @qup_i2c_probe._entry_ptr.9, ptr @qup_i2c_req_dma._entry, ptr @qup_i2c_req_dma._entry.53, ptr @qup_i2c_req_dma._entry_ptr, ptr @qup_i2c_req_dma._entry_ptr.55, ptr @scl_freq, ptr @qup_i2c_driver, ptr @.str, ptr @qup_i2c_dt_match, ptr @qup_i2c_qup_pm_ops, ptr @qup_i2c_probe.blk_sizes, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @qup_i2c_algo, ptr @qup_i2c_quirks, ptr @qup_i2c_algo_v2, ptr @qup_i2c_quirks_v2, ptr @.str.12, ptr @.str.13, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @.str.23, ptr @.str.25, ptr @.str.28, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @init_completion.__key, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.37, ptr @.str.40, ptr @.str.43, ptr @.str.46, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.54, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59], section "llvm.metadata"
@0 = internal global [61 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scl_freq to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qup_i2c_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qup_i2c_dt_match to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qup_i2c_qup_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qup_i2c_probe.blk_sizes to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qup_i2c_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qup_i2c_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qup_i2c_algo to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qup_i2c_quirks to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qup_i2c_algo_v2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qup_i2c_quirks_v2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qup_i2c_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qup_i2c_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qup_i2c_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qup_i2c_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qup_i2c_probe._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qup_i2c_bam_schedule_desc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qup_i2c_bam_schedule_desc._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qup_i2c_bam_schedule_desc._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qup_i2c_bam_schedule_desc._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qup_i2c_bam_schedule_desc._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qup_i2c_req_dma._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qup_i2c_req_dma._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @qup_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @qup_i2c_driver, ptr noundef null) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @qup_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @platform_driver_unregister(ptr noundef nonnull @qup_i2c_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qup_i2c_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %clk_freq = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %clk_freq) #9
  %0 = ptrtoint ptr %clk_freq to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 100000, ptr %clk_freq, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i462 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 1656, i32 noundef 3520) #9
  %tobool.not = icmp eq ptr %call.i462, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call.i462 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dev, ptr %call.i462, align 8
  %xfer = getelementptr inbounds %struct.qup_i2c_dev, ptr %call.i462, i32 0, i32 31
  %2 = ptrtoint ptr %xfer to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %xfer, align 4
  %wait.i = getelementptr inbounds %struct.qup_i2c_dev, ptr %call.i462, i32 0, i32 31, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.33, ptr noundef nonnull @init_completion.__key) #9
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %3 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i462, ptr %driver_data.i.i, align 4
  %4 = load i32, ptr @scl_freq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool3.not = icmp eq i32 %4, 0
  %5 = ptrtoint ptr %call.i462 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %call.i462, align 8
  br i1 %tobool3.not, label %if.else, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %6, ptr noundef nonnull @.str.1, i32 noundef %4) #12
  %7 = load i32, ptr @scl_freq, align 4
  %8 = ptrtoint ptr %clk_freq to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %clk_freq, align 4
  br label %if.end15

if.else:                                          ; preds = %if.end
  %call.i463 = call i32 @device_property_read_u32_array(ptr noundef %6, ptr noundef nonnull @.str.6, ptr noundef nonnull %clk_freq, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i463)
  %tobool8.not = icmp eq i32 %call.i463, 0
  br i1 %tobool8.not, label %if.else.if.end15_crit_edge, label %do.end12

if.else.if.end15_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

do.end12:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %call.i462 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %call.i462, align 8
  call void (ptr, ptr, ...) @_dev_notice(ptr noundef %10, ptr noundef nonnull @.str.8, i32 noundef 100000) #12
  br label %if.end15

if.end15:                                         ; preds = %do.end12, %if.else.if.end15_crit_edge, %do.end
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %11 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %of_node, align 8
  %call17 = call i32 @of_device_is_compatible(ptr noundef %12, ptr noundef nonnull @.str.10) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  %algo23 = getelementptr inbounds %struct.qup_i2c_dev, ptr %call.i462, i32 0, i32 5, i32 2
  br i1 %tobool18.not, label %if.else21, label %if.then19

if.then19:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %algo23 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @qup_i2c_algo, ptr %algo23, align 8
  %quirks = getelementptr inbounds %struct.qup_i2c_dev, ptr %call.i462, i32 0, i32 5, i32 17
  %14 = ptrtoint ptr %quirks to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @qup_i2c_quirks, ptr %quirks, align 8
  br label %nodma

if.else21:                                        ; preds = %if.end15
  %15 = ptrtoint ptr %algo23 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @qup_i2c_algo_v2, ptr %algo23, align 8
  %quirks25 = getelementptr inbounds %struct.qup_i2c_dev, ptr %call.i462, i32 0, i32 5, i32 17
  %16 = ptrtoint ptr %quirks25 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @qup_i2c_quirks_v2, ptr %quirks25, align 8
  %call31 = call fastcc i32 @qup_i2c_req_dma(ptr noundef nonnull %call.i462)
  %17 = zext i32 %call31 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call31, label %if.else21.nodma_crit_edge [
    i32 -517, label %if.else21.fail_dma_crit_edge
    i32 0, label %if.end38
  ]

if.else21.fail_dma_crit_edge:                     ; preds = %if.else21
  call void @__sanitizer_cov_trace_pc() #11
  br label %fail_dma

if.else21.nodma_crit_edge:                        ; preds = %if.else21
  call void @__sanitizer_cov_trace_pc() #11
  br label %nodma

if.end38:                                         ; preds = %if.else21
  %max_xfer_sg_len = getelementptr inbounds %struct.qup_i2c_dev, ptr %call.i462, i32 0, i32 24
  %18 = ptrtoint ptr %max_xfer_sg_len to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 512, ptr %max_xfer_sg_len, align 8
  %call5.i.i = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 20500, i32 noundef 3520) #9
  %btx = getelementptr inbounds %struct.qup_i2c_dev, ptr %call.i462, i32 0, i32 30
  %sg = getelementptr inbounds %struct.qup_i2c_dev, ptr %call.i462, i32 0, i32 30, i32 2
  %19 = ptrtoint ptr %sg to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call5.i.i, ptr %sg, align 4
  %tobool43.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool43.not, label %if.end38.fail_dma_crit_edge, label %if.end45

if.end38.fail_dma_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  br label %fail_dma

if.end45:                                         ; preds = %if.end38
  call void @sg_init_table(ptr noundef nonnull %call5.i.i, i32 noundef 1025) #9
  %call5.i.i464 = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 20500, i32 noundef 3520) #9
  %brx = getelementptr inbounds %struct.qup_i2c_dev, ptr %call.i462, i32 0, i32 29
  %sg50 = getelementptr inbounds %struct.qup_i2c_dev, ptr %call.i462, i32 0, i32 29, i32 2
  %20 = ptrtoint ptr %sg50 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call5.i.i464, ptr %sg50, align 4
  %tobool53.not = icmp eq ptr %call5.i.i464, null
  br i1 %tobool53.not, label %if.end45.fail_dma_crit_edge, label %if.end55

if.end45.fail_dma_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  br label %fail_dma

if.end55:                                         ; preds = %if.end45
  call void @sg_init_table(ptr noundef nonnull %call5.i.i464, i32 noundef 1025) #9
  %call.i465 = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 2055, i32 noundef 3520) #9
  %start_tag = getelementptr inbounds %struct.qup_i2c_dev, ptr %call.i462, i32 0, i32 28
  %21 = ptrtoint ptr %start_tag to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call.i465, ptr %start_tag, align 8
  %tobool62.not = icmp eq ptr %call.i465, null
  br i1 %tobool62.not, label %if.end55.fail_dma_crit_edge, label %if.end64

if.end55.fail_dma_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #11
  br label %fail_dma

if.end64:                                         ; preds = %if.end55
  %call.i466 = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 2, i32 noundef 3520) #9
  %22 = ptrtoint ptr %brx to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call.i466, ptr %brx, align 8
  %tobool72.not = icmp eq ptr %call.i466, null
  br i1 %tobool72.not, label %if.end64.fail_dma_crit_edge, label %if.end74

if.end64.fail_dma_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #11
  br label %fail_dma

if.end74:                                         ; preds = %if.end64
  %call.i467 = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 2, i32 noundef 3520) #9
  %23 = ptrtoint ptr %btx to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call.i467, ptr %btx, align 4
  %tobool83.not = icmp eq ptr %call.i467, null
  br i1 %tobool83.not, label %if.end74.fail_dma_crit_edge, label %if.end85

if.end74.fail_dma_crit_edge:                      ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #11
  br label %fail_dma

if.end85:                                         ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #11
  %is_dma = getelementptr inbounds %struct.qup_i2c_dev, ptr %call.i462, i32 0, i32 22
  %24 = ptrtoint ptr %is_dma to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %is_dma, align 4
  br label %nodma

nodma:                                            ; preds = %if.end85, %if.else21.nodma_crit_edge, %if.then19
  %25 = ptrtoint ptr %clk_freq to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %clk_freq, align 4
  %27 = add i32 %26, -1000001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1000000, i32 %27)
  %28 = icmp ult i32 %27, -1000000
  br i1 %28, label %do.end92, label %if.end94

do.end92:                                         ; preds = %nodma
  call void @__sanitizer_cov_trace_pc() #11
  %29 = ptrtoint ptr %call.i462 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %call.i462, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.12, i32 noundef %26) #12
  br label %cleanup

if.end94:                                         ; preds = %nodma
  %call95 = call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #9
  %base = getelementptr inbounds %struct.qup_i2c_dev, ptr %call.i462, i32 0, i32 1
  %31 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call95, ptr %base, align 4
  %cmp.i468 = icmp ugt ptr %call95, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i468, label %if.then98, label %if.end101

if.then98:                                        ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #11
  %32 = ptrtoint ptr %call95 to i32
  br label %cleanup

if.end101:                                        ; preds = %if.end94
  %call102 = call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #9
  %irq = getelementptr inbounds %struct.qup_i2c_dev, ptr %call.i462, i32 0, i32 2
  %33 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %call102, ptr %irq, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call102)
  %cmp104 = icmp slt i32 %call102, 0
  br i1 %cmp104, label %if.end101.cleanup_crit_edge, label %if.end107

if.end101.cleanup_crit_edge:                      ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end107:                                        ; preds = %if.end101
  %34 = ptrtoint ptr %call.i462 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %call.i462, align 8
  %call125 = call ptr @devm_clk_get(ptr noundef %35, ptr noundef nonnull @.str.19) #9
  %clk = getelementptr inbounds %struct.qup_i2c_dev, ptr %call.i462, i32 0, i32 3
  %36 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call125, ptr %clk, align 4
  %cmp.i469 = icmp ugt ptr %call125, inttoptr (i32 -4096 to ptr)
  %37 = ptrtoint ptr %call.i462 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %call.i462, align 8
  br i1 %cmp.i469, label %do.end131, label %if.end135

do.end131:                                        ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.21) #12
  %39 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %clk, align 4
  %41 = ptrtoint ptr %40 to i32
  br label %cleanup

if.end135:                                        ; preds = %if.end107
  %call137 = call ptr @devm_clk_get(ptr noundef %38, ptr noundef nonnull @.str.23) #9
  %pclk = getelementptr inbounds %struct.qup_i2c_dev, ptr %call.i462, i32 0, i32 4
  %42 = ptrtoint ptr %pclk to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call137, ptr %pclk, align 8
  %cmp.i470 = icmp ugt ptr %call137, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i470, label %do.end143, label %if.end147

do.end143:                                        ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #11
  %43 = ptrtoint ptr %call.i462 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %call.i462, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %44, ptr noundef nonnull @.str.25) #12
  %45 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %pclk, align 8
  %47 = ptrtoint ptr %46 to i32
  br label %cleanup

if.end147:                                        ; preds = %if.end135
  call fastcc void @qup_i2c_enable_clocks(ptr noundef nonnull %call.i462)
  %48 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %clk, align 4
  %call149 = call i32 @clk_get_rate(ptr noundef %49) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !143
  call void @arm_heavy_mb() #9
  %50 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %51, i32 12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 16777216) #9, !srcloc !144
  %52 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %base, align 4
  %add.ptr.i.i = getelementptr i8, ptr %53, i32 4
  %54 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !145
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !146
  %55 = and i32 %54, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool.not.i.not.i = icmp eq i32 %55, 0
  br i1 %tobool.not.i.not.i, label %if.end.i.i, label %if.end147.if.end158_crit_edge

if.end147.if.end158_crit_edge:                    ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end158

if.end.i.i:                                       ; preds = %if.end147
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %56 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %56(i32 noundef 214748) #9
  %57 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %base, align 4
  %add.ptr.1.i.i = getelementptr i8, ptr %58, i32 4
  %59 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.1.i.i) #9, !srcloc !145
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !146
  %60 = and i32 %59, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool.not.1.i.not.i = icmp eq i32 %60, 0
  br i1 %tobool.not.1.i.not.i, label %qup_i2c_poll_state_valid.exit, label %if.end.i.i.if.end158_crit_edge

if.end.i.i.if.end158_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end158

qup_i2c_poll_state_valid.exit:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %61 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %61(i32 noundef 214748) #9
  br label %fail

if.end158:                                        ; preds = %if.end.i.i.if.end158_crit_edge, %if.end147.if.end158_crit_edge
  %62 = ptrtoint ptr %call.i462 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %call.i462, align 8
  %64 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %irq, align 8
  %call.i471 = call i32 @devm_request_threaded_irq(ptr noundef %63, i32 noundef %65, ptr noundef nonnull @qup_i2c_interrupt, ptr noundef null, i32 noundef 524292, ptr noundef nonnull @.str, ptr noundef nonnull %call.i462) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i471)
  %tobool162.not = icmp eq i32 %call.i471, 0
  br i1 %tobool162.not, label %if.end169, label %do.end166

do.end166:                                        ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #11
  %66 = ptrtoint ptr %call.i462 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %call.i462, align 8
  %68 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %irq, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %67, ptr noundef nonnull @.str.28, i32 noundef %69) #12
  br label %fail

if.end169:                                        ; preds = %if.end158
  %70 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %base, align 4
  %add.ptr171 = getelementptr i8, ptr %71, i32 48
  %72 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr171) #9, !srcloc !145
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !147
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qup_i2c_probe.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@qup_i2c_probe, %do.end185)) #9
          to label %if.then181 [label %do.end185], !srcloc !148

if.then181:                                       ; preds = %if.end169
  call void @__sanitizer_cov_trace_pc() #11
  %73 = call i32 @llvm.bswap.i32(i32 %72)
  %74 = ptrtoint ptr %call.i462 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %call.i462, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @qup_i2c_probe.__UNIQUE_ID_ddebug297, ptr noundef %75, ptr noundef nonnull @.str.30, i32 noundef %73) #9
  br label %do.end185

do.end185:                                        ; preds = %if.then181, %if.end169
  %76 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %base, align 4
  %add.ptr189 = getelementptr i8, ptr %77, i32 8
  %78 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr189) #9, !srcloc !145
  %79 = call i32 @llvm.bswap.i32(i32 %78)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !149
  %and = and i32 %79, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and)
  %cmp193 = icmp eq i32 %and, 3
  br i1 %cmp193, label %do.end185.fail_crit_edge, label %if.end195

do.end185.fail_crit_edge:                         ; preds = %do.end185
  call void @__sanitizer_cov_trace_pc() #11
  br label %fail

if.end195:                                        ; preds = %do.end185
  %arrayidx = getelementptr [3 x i32], ptr @qup_i2c_probe.blk_sizes, i32 0, i32 %and
  %80 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %arrayidx, align 4
  %out_blk_sz = getelementptr inbounds %struct.qup_i2c_dev, ptr %call.i462, i32 0, i32 9
  %82 = ptrtoint ptr %out_blk_sz to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %81, ptr %out_blk_sz, align 4
  %shr196 = lshr i32 %79, 5
  %and197 = and i32 %shr196, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and197)
  %cmp198 = icmp eq i32 %and197, 3
  br i1 %cmp198, label %if.end195.fail_crit_edge, label %if.end200

if.end195.fail_crit_edge:                         ; preds = %if.end195
  call void @__sanitizer_cov_trace_pc() #11
  br label %fail

if.end200:                                        ; preds = %if.end195
  %arrayidx201 = getelementptr [3 x i32], ptr @qup_i2c_probe.blk_sizes, i32 0, i32 %and197
  %83 = ptrtoint ptr %arrayidx201 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %arrayidx201, align 4
  %in_blk_sz = getelementptr inbounds %struct.qup_i2c_dev, ptr %call.i462, i32 0, i32 10
  %85 = ptrtoint ptr %in_blk_sz to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %84, ptr %in_blk_sz, align 8
  br i1 %tobool18.not, label %if.end200.if.end211_crit_edge, label %if.then203

if.end200.if.end211_crit_edge:                    ; preds = %if.end200
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end211

if.then203:                                       ; preds = %if.end200
  call void @__sanitizer_cov_trace_pc() #11
  %div = sdiv i32 %84, 2
  %86 = ptrtoint ptr %in_blk_sz to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %div, ptr %in_blk_sz, align 8
  %div206 = sdiv i32 %81, 2
  %87 = ptrtoint ptr %out_blk_sz to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %div206, ptr %out_blk_sz, align 4
  br label %if.end211

if.end211:                                        ; preds = %if.then203, %if.end200.if.end211_crit_edge
  %qup_i2c_write_tx_fifo_v1.sink = phi ptr [ @qup_i2c_write_tx_fifo_v1, %if.then203 ], [ @qup_i2c_write_tx_fifo_v2, %if.end200.if.end211_crit_edge ]
  %qup_i2c_read_rx_fifo_v1.sink = phi ptr [ @qup_i2c_read_rx_fifo_v1, %if.then203 ], [ @qup_i2c_read_rx_fifo_v2, %if.end200.if.end211_crit_edge ]
  %qup_i2c_write_rx_tags_v1.sink = phi ptr [ @qup_i2c_write_rx_tags_v1, %if.then203 ], [ @qup_i2c_write_rx_tags_v2, %if.end200.if.end211_crit_edge ]
  %88 = getelementptr inbounds %struct.qup_i2c_dev, ptr %call.i462, i32 0, i32 32
  %89 = ptrtoint ptr %88 to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %qup_i2c_write_tx_fifo_v1.sink, ptr %88, align 8
  %90 = getelementptr inbounds %struct.qup_i2c_dev, ptr %call.i462, i32 0, i32 33
  %91 = ptrtoint ptr %90 to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %qup_i2c_read_rx_fifo_v1.sink, ptr %90, align 4
  %92 = getelementptr inbounds %struct.qup_i2c_dev, ptr %call.i462, i32 0, i32 34
  %93 = ptrtoint ptr %92 to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %qup_i2c_write_rx_tags_v1.sink, ptr %92, align 8
  %shr212 = lshr i32 %79, 2
  %and213 = and i32 %shr212, 7
  %94 = ptrtoint ptr %out_blk_sz to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %out_blk_sz, align 4
  %shl = shl nuw nsw i32 2, %and213
  %mul215 = mul i32 %95, %shl
  %out_fifo_sz = getelementptr inbounds %struct.qup_i2c_dev, ptr %call.i462, i32 0, i32 7
  %96 = ptrtoint ptr %out_fifo_sz to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %mul215, ptr %out_fifo_sz, align 4
  %shr216 = lshr i32 %79, 7
  %and217 = and i32 %shr216, 7
  %97 = ptrtoint ptr %in_blk_sz to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %in_blk_sz, align 8
  %shl219 = shl nuw nsw i32 2, %and217
  %mul220 = mul i32 %98, %shl219
  %in_fifo_sz = getelementptr inbounds %struct.qup_i2c_dev, ptr %call.i462, i32 0, i32 8
  %99 = ptrtoint ptr %in_fifo_sz to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %mul220, ptr %in_fifo_sz, align 8
  %100 = ptrtoint ptr %clk_freq to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %clk_freq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 100001, i32 %101)
  %cmp221 = icmp ult i32 %101, 100001
  %div223 = udiv i32 %call149, %101
  br i1 %cmp221, label %if.then222, label %if.else227

if.then222:                                       ; preds = %if.end211
  call void @__sanitizer_cov_trace_pc() #11
  %div224457 = lshr i32 %div223, 1
  %sub = add nuw i32 %div224457, 253
  %and226 = and i32 %sub, 255
  br label %if.end239

if.else227:                                       ; preds = %if.end211
  call void @__sanitizer_cov_trace_pc() #11
  %sub229 = shl nuw nsw i32 %div223, 1
  %mul230 = add nsw i32 %sub229, -12
  %div231 = udiv i32 %mul230, 3
  %div232 = udiv i32 %mul230, 6
  %shl233 = shl i32 %div232, 16
  %and236 = and i32 %div231, 255
  %or235 = or i32 %shl233, %and236
  br label %if.end239

if.end239:                                        ; preds = %if.else227, %if.then222
  %or237.sink.in = phi i32 [ %and226, %if.then222 ], [ %or235, %if.else227 ]
  %or237.sink = or i32 %or237.sink.in, 768
  %102 = getelementptr inbounds %struct.qup_i2c_dev, ptr %call.i462, i32 0, i32 6
  %103 = ptrtoint ptr %102 to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %or237.sink, ptr %102, align 8
  %div240 = udiv i32 1000000, %101
  %104 = mul nuw nsw i32 %div240, 9
  %mul242 = add nuw nsw i32 %104, 9
  %one_byte_t = getelementptr inbounds %struct.qup_i2c_dev, ptr %call.i462, i32 0, i32 12
  %105 = ptrtoint ptr %one_byte_t to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %mul242, ptr %one_byte_t, align 8
  %mul244 = shl i32 %mul242, 17
  %call3.i = call i32 @__usecs_to_jiffies(i32 noundef %mul244) #9
  %add246 = add i32 %call3.i, 200
  %xfer_timeout = getelementptr inbounds %struct.qup_i2c_dev, ptr %call.i462, i32 0, i32 13
  %106 = ptrtoint ptr %xfer_timeout to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %add246, ptr %xfer_timeout, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qup_i2c_probe.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@qup_i2c_probe, %do.end269)) #9
          to label %if.then261 [label %do.end269], !srcloc !148

if.then261:                                       ; preds = %if.end239
  call void @__sanitizer_cov_trace_pc() #11
  %107 = ptrtoint ptr %call.i462 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %call.i462, align 8
  %109 = ptrtoint ptr %in_blk_sz to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %in_blk_sz, align 8
  %111 = ptrtoint ptr %in_fifo_sz to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %in_fifo_sz, align 8
  %113 = ptrtoint ptr %out_blk_sz to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %out_blk_sz, align 4
  %115 = ptrtoint ptr %out_fifo_sz to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %out_fifo_sz, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @qup_i2c_probe.__UNIQUE_ID_ddebug298, ptr noundef %108, ptr noundef nonnull @.str.31, i32 noundef %110, i32 noundef %112, i32 noundef %114, i32 noundef %116) #9
  br label %do.end269

do.end269:                                        ; preds = %if.then261, %if.end239
  %adap270 = getelementptr inbounds %struct.qup_i2c_dev, ptr %call.i462, i32 0, i32 5
  %driver_data.i.i472 = getelementptr inbounds %struct.qup_i2c_dev, ptr %call.i462, i32 0, i32 5, i32 9, i32 8
  %117 = ptrtoint ptr %driver_data.i.i472 to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr %call.i462, ptr %driver_data.i.i472, align 4
  %118 = ptrtoint ptr %call.i462 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %call.i462, align 8
  %parent = getelementptr inbounds %struct.qup_i2c_dev, ptr %call.i462, i32 0, i32 5, i32 9, i32 1
  %120 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr %119, ptr %parent, align 8
  %121 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %of_node, align 8
  %of_node278 = getelementptr inbounds %struct.qup_i2c_dev, ptr %call.i462, i32 0, i32 5, i32 9, i32 27
  %123 = ptrtoint ptr %of_node278 to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr %122, ptr %of_node278, align 8
  %is_last = getelementptr inbounds %struct.qup_i2c_dev, ptr %call.i462, i32 0, i32 19
  %124 = ptrtoint ptr %is_last to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 1, ptr %is_last, align 4
  %name = getelementptr inbounds %struct.qup_i2c_dev, ptr %call.i462, i32 0, i32 5, i32 12
  %call280 = call i32 @strlcpy(ptr noundef %name, ptr noundef nonnull @.str.32, i32 noundef 48) #9
  %125 = ptrtoint ptr %call.i462 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %call.i462, align 8
  call void @pm_runtime_set_autosuspend_delay(ptr noundef %126, i32 noundef 1000) #9
  %127 = ptrtoint ptr %call.i462 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %call.i462, align 8
  call void @__pm_runtime_use_autosuspend(ptr noundef %128, i1 noundef zeroext true) #9
  %129 = ptrtoint ptr %call.i462 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %call.i462, align 8
  %call.i473 = call i32 @__pm_runtime_set_status(ptr noundef %130, i32 noundef 0) #9
  %131 = ptrtoint ptr %call.i462 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %call.i462, align 8
  call void @pm_runtime_enable(ptr noundef %132) #9
  %call287 = call i32 @i2c_add_adapter(ptr noundef %adap270) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call287)
  %tobool288.not = icmp eq i32 %call287, 0
  br i1 %tobool288.not, label %do.end269.cleanup_crit_edge, label %fail_runtime

do.end269.cleanup_crit_edge:                      ; preds = %do.end269
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

fail_runtime:                                     ; preds = %do.end269
  call void @__sanitizer_cov_trace_pc() #11
  %133 = ptrtoint ptr %call.i462 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %call.i462, align 8
  call void @__pm_runtime_disable(ptr noundef %134, i1 noundef zeroext true) #9
  %135 = ptrtoint ptr %call.i462 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %call.i462, align 8
  %call.i474 = call i32 @__pm_runtime_set_status(ptr noundef %136, i32 noundef 2) #9
  br label %fail

fail:                                             ; preds = %fail_runtime, %if.end195.fail_crit_edge, %do.end185.fail_crit_edge, %do.end166, %qup_i2c_poll_state_valid.exit
  %ret.0 = phi i32 [ -110, %qup_i2c_poll_state_valid.exit ], [ %call.i471, %do.end166 ], [ %call287, %fail_runtime ], [ -5, %do.end185.fail_crit_edge ], [ -5, %if.end195.fail_crit_edge ]
  %call.i475 = call fastcc i32 @qup_i2c_change_state(ptr noundef nonnull %call.i462, i32 noundef 0) #9
  %137 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %clk, align 4
  call void @clk_disable(ptr noundef %138) #9
  call void @clk_unprepare(ptr noundef %138) #9
  %139 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %base, align 4
  %141 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %140) #9, !srcloc !145
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !150
  %142 = or i32 %141, 2097152
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !151
  call void @arm_heavy_mb() #9
  %143 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %base, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %144, i32 %142) #9, !srcloc !144
  %145 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %pclk, align 8
  call void @clk_disable(ptr noundef %146) #9
  call void @clk_unprepare(ptr noundef %146) #9
  br label %fail_dma

fail_dma:                                         ; preds = %fail, %if.end74.fail_dma_crit_edge, %if.end64.fail_dma_crit_edge, %if.end55.fail_dma_crit_edge, %if.end45.fail_dma_crit_edge, %if.end38.fail_dma_crit_edge, %if.else21.fail_dma_crit_edge
  %ret.1 = phi i32 [ %ret.0, %fail ], [ %call31, %if.else21.fail_dma_crit_edge ], [ -12, %if.end38.fail_dma_crit_edge ], [ -12, %if.end45.fail_dma_crit_edge ], [ -12, %if.end55.fail_dma_crit_edge ], [ -12, %if.end64.fail_dma_crit_edge ], [ -12, %if.end74.fail_dma_crit_edge ]
  %dma = getelementptr inbounds %struct.qup_i2c_dev, ptr %call.i462, i32 0, i32 30, i32 1
  %147 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %dma, align 4
  %tobool295.not = icmp eq ptr %148, null
  br i1 %tobool295.not, label %fail_dma.if.end299_crit_edge, label %if.then296

fail_dma.if.end299_crit_edge:                     ; preds = %fail_dma
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end299

if.then296:                                       ; preds = %fail_dma
  call void @__sanitizer_cov_trace_pc() #11
  call void @dma_release_channel(ptr noundef nonnull %148) #9
  br label %if.end299

if.end299:                                        ; preds = %if.then296, %fail_dma.if.end299_crit_edge
  %dma301 = getelementptr inbounds %struct.qup_i2c_dev, ptr %call.i462, i32 0, i32 29, i32 1
  %149 = ptrtoint ptr %dma301 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %dma301, align 8
  %tobool302.not = icmp eq ptr %150, null
  br i1 %tobool302.not, label %if.end299.cleanup_crit_edge, label %if.then303

if.end299.cleanup_crit_edge:                      ; preds = %if.end299
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then303:                                       ; preds = %if.end299
  call void @__sanitizer_cov_trace_pc() #11
  call void @dma_release_channel(ptr noundef nonnull %150) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then303, %if.end299.cleanup_crit_edge, %do.end269.cleanup_crit_edge, %do.end143, %do.end131, %if.end101.cleanup_crit_edge, %if.then98, %do.end92, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end92 ], [ %32, %if.then98 ], [ %41, %do.end131 ], [ %47, %do.end143 ], [ -12, %entry.cleanup_crit_edge ], [ %call102, %if.end101.cleanup_crit_edge ], [ 0, %do.end269.cleanup_crit_edge ], [ %ret.1, %if.then303 ], [ %ret.1, %if.end299.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %clk_freq) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qup_i2c_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %is_dma = getelementptr inbounds %struct.qup_i2c_dev, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %is_dma to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %is_dma, align 4, !range !152
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dma = getelementptr inbounds %struct.qup_i2c_dev, ptr %1, i32 0, i32 30, i32 1
  %4 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dma, align 4
  tail call void @dma_release_channel(ptr noundef %5) #9
  %dma1 = getelementptr inbounds %struct.qup_i2c_dev, ptr %1, i32 0, i32 29, i32 1
  %6 = ptrtoint ptr %dma1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dma1, align 8
  tail call void @dma_release_channel(ptr noundef %7) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %irq = getelementptr inbounds %struct.qup_i2c_dev, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %irq, align 8
  tail call void @disable_irq(i32 noundef %9) #9
  %call.i = tail call fastcc i32 @qup_i2c_change_state(ptr noundef %1, i32 noundef 0) #9
  %clk.i = getelementptr inbounds %struct.qup_i2c_dev, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %clk.i, align 4
  tail call void @clk_disable(ptr noundef %11) #9
  tail call void @clk_unprepare(ptr noundef %11) #9
  %base.i = getelementptr inbounds %struct.qup_i2c_dev, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base.i, align 4
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #9, !srcloc !145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !150
  %15 = or i32 %14, 2097152
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !151
  tail call void @arm_heavy_mb() #9
  %16 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %15) #9, !srcloc !144
  %pclk.i = getelementptr inbounds %struct.qup_i2c_dev, ptr %1, i32 0, i32 4
  %18 = ptrtoint ptr %pclk.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pclk.i, align 8
  tail call void @clk_disable(ptr noundef %19) #9
  tail call void @clk_unprepare(ptr noundef %19) #9
  %adap = getelementptr inbounds %struct.qup_i2c_dev, ptr %1, i32 0, i32 5
  tail call void @i2c_del_adapter(ptr noundef %adap) #9
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 8
  tail call void @__pm_runtime_disable(ptr noundef %21, i1 noundef zeroext true) #9
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 8
  %call.i11 = tail call i32 @__pm_runtime_set_status(ptr noundef %23, i32 noundef 2) #9
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qup_i2c_req_dma(ptr nocapture noundef %qup) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dma = getelementptr inbounds %struct.qup_i2c_dev, ptr %qup, i32 0, i32 30, i32 1
  %0 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dma, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %entry.if.end13_crit_edge

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %qup to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %qup, align 8
  %call = tail call ptr @dma_request_chan(ptr noundef %3, ptr noundef nonnull @.str.49) #9
  %4 = ptrtoint ptr %dma to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call, ptr %dma, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.then.if.end13_crit_edge

if.then.if.end13_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %call to i32
  %6 = ptrtoint ptr %dma to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %dma, align 4
  %7 = ptrtoint ptr %qup to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %qup, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.50) #12
  br label %cleanup

if.end13:                                         ; preds = %if.then.if.end13_crit_edge, %entry.if.end13_crit_edge
  %dma14 = getelementptr inbounds %struct.qup_i2c_dev, ptr %qup, i32 0, i32 29, i32 1
  %9 = ptrtoint ptr %dma14 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dma14, align 8
  %tobool15.not = icmp eq ptr %10, null
  br i1 %tobool15.not, label %if.then16, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then16:                                        ; preds = %if.end13
  %11 = ptrtoint ptr %qup to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %qup, align 8
  %call18 = tail call ptr @dma_request_chan(ptr noundef %12, ptr noundef nonnull @.str.52) #9
  %13 = ptrtoint ptr %dma14 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call18, ptr %dma14, align 8
  %cmp.i51 = icmp ugt ptr %call18, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i51, label %do.end27, label %if.then16.cleanup_crit_edge

if.then16.cleanup_crit_edge:                      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end27:                                         ; preds = %if.then16
  %14 = ptrtoint ptr %qup to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %qup, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.54) #12
  %16 = ptrtoint ptr %dma14 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dma14, align 8
  %18 = ptrtoint ptr %17 to i32
  store ptr null, ptr %dma14, align 8
  %19 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dma, align 4
  %tobool.not.i = icmp eq ptr %20, null
  br i1 %tobool.not.i, label %do.end27.qup_i2c_rel_dma.exit_crit_edge, label %if.end.i

do.end27.qup_i2c_rel_dma.exit_crit_edge:          ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %qup_i2c_rel_dma.exit

if.end.i:                                         ; preds = %do.end27
  tail call void @dma_release_channel(ptr noundef nonnull %20) #9
  %21 = ptrtoint ptr %dma14 to i32
  call void @__asan_load4_noabort(i32 %21)
  %.pr = load ptr, ptr %dma14, align 8
  %tobool4.not.i = icmp eq ptr %.pr, null
  br i1 %tobool4.not.i, label %if.end.i.qup_i2c_rel_dma.exit_crit_edge, label %if.then5.i

if.end.i.qup_i2c_rel_dma.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %qup_i2c_rel_dma.exit

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dma_release_channel(ptr noundef nonnull %.pr) #9
  br label %qup_i2c_rel_dma.exit

qup_i2c_rel_dma.exit:                             ; preds = %if.then5.i, %if.end.i.qup_i2c_rel_dma.exit_crit_edge, %do.end27.qup_i2c_rel_dma.exit_crit_edge
  %22 = ptrtoint ptr %dma to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %dma, align 4
  %23 = ptrtoint ptr %dma14 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %dma14, align 8
  br label %cleanup

cleanup:                                          ; preds = %qup_i2c_rel_dma.exit, %if.then16.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %if.then6
  %retval.0 = phi i32 [ %18, %qup_i2c_rel_dma.exit ], [ %5, %if.then6 ], [ 0, %if.then16.cleanup_crit_edge ], [ 0, %if.end13.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_table(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qup_i2c_enable_clocks(ptr nocapture noundef readonly %qup) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %clk = getelementptr inbounds %struct.qup_i2c_dev, ptr %qup, i32 0, i32 3
  %0 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.clk_prepare_enable.exit_crit_edge

entry.clk_prepare_enable.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.clk_prepare_enable.exit_crit_edge, label %if.then3.i

if.end.i.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %clk_prepare_enable.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @clk_unprepare(ptr noundef %1) #9
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end.i.clk_prepare_enable.exit_crit_edge, %entry.clk_prepare_enable.exit_crit_edge
  %pclk = getelementptr inbounds %struct.qup_i2c_dev, ptr %qup, i32 0, i32 4
  %2 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pclk, align 8
  %call.i3 = tail call i32 @clk_prepare(ptr noundef %3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i3)
  %tobool.not.i4 = icmp eq i32 %call.i3, 0
  br i1 %tobool.not.i4, label %if.end.i7, label %clk_prepare_enable.exit.clk_prepare_enable.exit9_crit_edge

clk_prepare_enable.exit.clk_prepare_enable.exit9_crit_edge: ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %clk_prepare_enable.exit9

if.end.i7:                                        ; preds = %clk_prepare_enable.exit
  %call1.i5 = tail call i32 @clk_enable(ptr noundef %3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i5)
  %tobool2.not.i6 = icmp eq i32 %call1.i5, 0
  br i1 %tobool2.not.i6, label %if.end.i7.clk_prepare_enable.exit9_crit_edge, label %if.then3.i8

if.end.i7.clk_prepare_enable.exit9_crit_edge:     ; preds = %if.end.i7
  call void @__sanitizer_cov_trace_pc() #11
  br label %clk_prepare_enable.exit9

if.then3.i8:                                      ; preds = %if.end.i7
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @clk_unprepare(ptr noundef %3) #9
  br label %clk_prepare_enable.exit9

clk_prepare_enable.exit9:                         ; preds = %if.then3.i8, %if.end.i7.clk_prepare_enable.exit9_crit_edge, %clk_prepare_enable.exit.clk_prepare_enable.exit9_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qup_i2c_interrupt(i32 noundef %irq, ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.qup_i2c_dev, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 1028
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !153
  %3 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %base, align 4
  %add.ptr6 = getelementptr i8, ptr %4, i32 28
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6) #9, !srcloc !145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !154
  %6 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base, align 4
  %add.ptr13 = getelementptr i8, ptr %7, i32 24
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13) #9, !srcloc !145
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !155
  %msg = getelementptr inbounds %struct.qup_i2c_dev, ptr %dev, i32 0, i32 15
  %10 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %msg, align 4
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %do.body, label %if.end

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !156
  tail call void @arm_heavy_mb() #9
  %12 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base, align 4
  %add.ptr18 = getelementptr i8, ptr %13, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18, i32 0) #9, !srcloc !144
  br label %cleanup

if.end:                                           ; preds = %entry
  %14 = lshr i32 %5, 24
  %15 = and i32 %2, -67076093
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  %and19 = and i32 %14, 124
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %if.end.if.end27_crit_edge, label %do.body22

if.end.if.end27_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

do.body22:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !157
  tail call void @arm_heavy_mb() #9
  %17 = shl nuw nsw i32 %and19, 24
  %18 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base, align 4
  %add.ptr26 = getelementptr i8, ptr %19, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26, i32 %17) #9, !srcloc !144
  br label %if.end27

if.end27:                                         ; preds = %do.body22, %if.end.if.end27_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool28.not = icmp eq i32 %15, 0
  br i1 %tobool28.not, label %if.end27.if.end35_crit_edge, label %do.body30

if.end27.if.end35_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35

do.body30:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !158
  tail call void @arm_heavy_mb() #9
  %20 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base, align 4
  %add.ptr34 = getelementptr i8, ptr %21, i32 1028
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr34, i32 %15) #9, !srcloc !144
  br label %if.end35

if.end35:                                         ; preds = %do.body30, %if.end27.if.end35_crit_edge
  %use_dma = getelementptr inbounds %struct.qup_i2c_dev, ptr %dev, i32 0, i32 23
  %22 = ptrtoint ptr %use_dma to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %use_dma, align 1, !range !152
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool36.not = icmp eq i8 %23, 0
  br i1 %tobool36.not, label %if.end42, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end35
  %qup_err37 = getelementptr inbounds %struct.qup_i2c_dev, ptr %dev, i32 0, i32 18
  %24 = ptrtoint ptr %qup_err37 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %qup_err37, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool38.not = icmp eq i32 %25, 0
  br i1 %tobool38.not, label %lor.lhs.false, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %land.lhs.true
  %bus_err39 = getelementptr inbounds %struct.qup_i2c_dev, ptr %dev, i32 0, i32 17
  %26 = ptrtoint ptr %bus_err39 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %bus_err39, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool40.not = icmp eq i32 %27, 0
  br i1 %tobool40.not, label %if.end42.thread, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end42:                                         ; preds = %if.end35
  %28 = select i1 %tobool20.not, i1 %tobool28.not, i1 false
  br i1 %28, label %if.end42.if.end56_crit_edge, label %do.body50

if.end42.if.end56_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end56

if.end42.thread:                                  ; preds = %lor.lhs.false
  %29 = select i1 %tobool20.not, i1 %tobool28.not, i1 false
  br i1 %29, label %if.end42.thread.if.end56_crit_edge, label %if.end42.thread.done_crit_edge

if.end42.thread.done_crit_edge:                   ; preds = %if.end42.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

if.end42.thread.if.end56_crit_edge:               ; preds = %if.end42.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end56

do.body50:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !159
  tail call void @arm_heavy_mb() #9
  %30 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %base, align 4
  %add.ptr54 = getelementptr i8, ptr %31, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr54, i32 0) #9, !srcloc !144
  br label %done

if.end56:                                         ; preds = %if.end42.thread.if.end56_crit_edge, %if.end42.if.end56_crit_edge
  %and57 = and i32 %9, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57)
  %tobool58.not = icmp eq i32 %and57, 0
  br i1 %tobool58.not, label %if.end56.if.end74_crit_edge, label %do.body60

if.end56.if.end74_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end74

do.body60:                                        ; preds = %if.end56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !160
  tail call void @arm_heavy_mb() #9
  %32 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %base, align 4
  %add.ptr64 = getelementptr i8, ptr %33, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr64, i32 65536) #9, !srcloc !144
  %and65 = and i32 %9, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and65)
  %tobool66.not = icmp eq i32 %and65, 0
  br i1 %tobool66.not, label %do.body60.if.end74_crit_edge, label %if.then67

do.body60.if.end74_crit_edge:                     ; preds = %do.body60
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end74

if.then67:                                        ; preds = %do.body60
  call void @__sanitizer_cov_trace_pc() #11
  %out_blk_sz = getelementptr inbounds %struct.qup_i2c_dev, ptr %dev, i32 0, i32 9
  %34 = ptrtoint ptr %out_blk_sz to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %out_blk_sz, align 4
  %tx_fifo_free = getelementptr inbounds %struct.qup_i2c_dev, ptr %dev, i32 0, i32 14, i32 9
  %36 = ptrtoint ptr %tx_fifo_free to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %tx_fifo_free, align 4
  %add = add i32 %37, %35
  store i32 %add, ptr %tx_fifo_free, align 4
  %38 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %msg, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %flags, align 2
  %42 = and i16 %41, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %42)
  %tobool70.not = icmp eq i16 %42, 0
  %write_tx_fifo = getelementptr inbounds %struct.qup_i2c_dev, ptr %dev, i32 0, i32 32
  %write_rx_tags = getelementptr inbounds %struct.qup_i2c_dev, ptr %dev, i32 0, i32 34
  %write_tx_fifo.sink = select i1 %tobool70.not, ptr %write_tx_fifo, ptr %write_rx_tags
  %43 = ptrtoint ptr %write_tx_fifo.sink to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %write_tx_fifo.sink, align 8
  tail call void %44(ptr noundef %dev) #9
  br label %if.end74

if.end74:                                         ; preds = %if.then67, %do.body60.if.end74_crit_edge, %if.end56.if.end74_crit_edge
  %and75 = and i32 %9, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and75)
  %tobool76.not = icmp eq i32 %and75, 0
  br i1 %tobool76.not, label %if.end74.if.end95_crit_edge, label %do.body78

if.end74.if.end95_crit_edge:                      ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end95

do.body78:                                        ; preds = %if.end74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !161
  tail call void @arm_heavy_mb() #9
  %45 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %base, align 4
  %add.ptr82 = getelementptr i8, ptr %46, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82, i32 131072) #9, !srcloc !144
  %is_rx_blk_mode = getelementptr inbounds %struct.qup_i2c_dev, ptr %dev, i32 0, i32 14, i32 21
  %47 = ptrtoint ptr %is_rx_blk_mode to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %is_rx_blk_mode, align 1, !range !152
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool83.not = icmp eq i8 %48, 0
  br i1 %tobool83.not, label %if.then84, label %if.else86

if.then84:                                        ; preds = %do.body78
  call void @__sanitizer_cov_trace_pc() #11
  %in_fifo_sz = getelementptr inbounds %struct.qup_i2c_dev, ptr %dev, i32 0, i32 8
  br label %if.end95.sink.split

if.else86:                                        ; preds = %do.body78
  %and87 = and i32 %9, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and87)
  %tobool88.not = icmp eq i32 %and87, 0
  br i1 %tobool88.not, label %if.else86.if.end95_crit_edge, label %if.then89

if.else86.if.end95_crit_edge:                     ; preds = %if.else86
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end95

if.then89:                                        ; preds = %if.else86
  call void @__sanitizer_cov_trace_pc() #11
  %in_blk_sz = getelementptr inbounds %struct.qup_i2c_dev, ptr %dev, i32 0, i32 10
  br label %if.end95.sink.split

if.end95.sink.split:                              ; preds = %if.then89, %if.then84
  %in_blk_sz.sink = phi ptr [ %in_blk_sz, %if.then89 ], [ %in_fifo_sz, %if.then84 ]
  %49 = ptrtoint ptr %in_blk_sz.sink to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %in_blk_sz.sink, align 8
  %fifo_available90 = getelementptr inbounds %struct.qup_i2c_dev, ptr %dev, i32 0, i32 14, i32 11
  %51 = ptrtoint ptr %fifo_available90 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %fifo_available90, align 4
  %add85 = add i32 %52, %50
  store i32 %add85, ptr %fifo_available90, align 4
  %read_rx_fifo = getelementptr inbounds %struct.qup_i2c_dev, ptr %dev, i32 0, i32 33
  %53 = ptrtoint ptr %read_rx_fifo to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %read_rx_fifo, align 4
  tail call void %54(ptr noundef %dev) #9
  br label %if.end95

if.end95:                                         ; preds = %if.end95.sink.split, %if.else86.if.end95_crit_edge, %if.end74.if.end95_crit_edge
  %55 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %msg, align 4
  %flags97 = getelementptr inbounds %struct.i2c_msg, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %flags97 to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %flags97, align 2
  %59 = and i16 %58, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %59)
  %tobool100.not = icmp eq i16 %59, 0
  br i1 %tobool100.not, label %if.else105, label %if.then101

if.then101:                                       ; preds = %if.end95
  %rx_bytes_read = getelementptr inbounds %struct.qup_i2c_dev, ptr %dev, i32 0, i32 14, i32 19
  %60 = ptrtoint ptr %rx_bytes_read to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %rx_bytes_read, align 1, !range !152
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool102.not = icmp eq i8 %61, 0
  br i1 %tobool102.not, label %if.then101.cleanup_crit_edge, label %if.then101.done_crit_edge

if.then101.done_crit_edge:                        ; preds = %if.then101
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

if.then101.cleanup_crit_edge:                     ; preds = %if.then101
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.else105:                                       ; preds = %if.end95
  %is_tx_blk_mode = getelementptr inbounds %struct.qup_i2c_dev, ptr %dev, i32 0, i32 14, i32 20
  %62 = ptrtoint ptr %is_tx_blk_mode to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %is_tx_blk_mode, align 4, !range !152
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool106.not = icmp ne i8 %63, 0
  %and109 = and i32 %9, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and109)
  %tobool110.not = icmp eq i32 %and109, 0
  %or.cond = select i1 %tobool106.not, i1 %tobool110.not, i1 false
  br i1 %or.cond, label %if.else105.cleanup_crit_edge, label %if.else105.done_crit_edge

if.else105.done_crit_edge:                        ; preds = %if.else105
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

if.else105.cleanup_crit_edge:                     ; preds = %if.else105
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

done:                                             ; preds = %if.else105.done_crit_edge, %if.then101.done_crit_edge, %do.body50, %if.end42.thread.done_crit_edge
  %qup_err114 = getelementptr inbounds %struct.qup_i2c_dev, ptr %dev, i32 0, i32 18
  %64 = ptrtoint ptr %qup_err114 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %and19, ptr %qup_err114, align 8
  %bus_err115 = getelementptr inbounds %struct.qup_i2c_dev, ptr %dev, i32 0, i32 17
  %65 = ptrtoint ptr %bus_err115 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %16, ptr %bus_err115, align 4
  %xfer = getelementptr inbounds %struct.qup_i2c_dev, ptr %dev, i32 0, i32 31
  tail call void @complete(ptr noundef %xfer) #9
  br label %cleanup

cleanup:                                          ; preds = %done, %if.else105.cleanup_crit_edge, %if.then101.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %do.body
  ret i32 1
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qup_i2c_write_tx_fifo_v1(ptr nocapture noundef %qup) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %msg2 = getelementptr inbounds %struct.qup_i2c_dev, ptr %qup, i32 0, i32 15
  %0 = ptrtoint ptr %msg2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %msg2, align 4
  %pos = getelementptr inbounds %struct.qup_i2c_dev, ptr %qup, i32 0, i32 16
  %2 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pos, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %flags.i, align 2
  %6 = and i16 %5, 1
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %1, align 4
  %conv.i = zext i16 %8 to i32
  %shl.i = shl nuw nsw i32 %conv.i, 1
  %shl.i.masked = and i32 %shl.i, 254
  %9 = or i16 %6, 256
  %conv = zext i16 %9 to i32
  %or = or i32 %shl.i.masked, %conv
  %tx_fifo_free = getelementptr inbounds %struct.qup_i2c_dev, ptr %qup, i32 0, i32 14, i32 9
  %10 = ptrtoint ptr %tx_fifo_free to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tx_fifo_free, align 4
  %dec = add i32 %11, -1
  store i32 %dec, ptr %tx_fifo_free, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %idx.0 = phi i32 [ 1, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %val.0 = phi i32 [ %or, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %tx_fifo_free4 = getelementptr inbounds %struct.qup_i2c_dev, ptr %qup, i32 0, i32 14, i32 9
  %12 = ptrtoint ptr %tx_fifo_free4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tx_fifo_free4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not68 = icmp eq i32 %13, 0
  br i1 %tobool.not68, label %if.end.while.end_crit_edge, label %land.rhs.lr.ph

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

land.rhs.lr.ph:                                   ; preds = %if.end
  %len = getelementptr inbounds %struct.i2c_msg, ptr %1, i32 0, i32 2
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %1, i32 0, i32 3
  %base = getelementptr inbounds %struct.qup_i2c_dev, ptr %qup, i32 0, i32 1
  br label %land.rhs

land.rhs:                                         ; preds = %if.end39.land.rhs_crit_edge, %land.rhs.lr.ph
  %val.170 = phi i32 [ %val.0, %land.rhs.lr.ph ], [ %val.267, %if.end39.land.rhs_crit_edge ]
  %idx.169 = phi i32 [ %idx.0, %land.rhs.lr.ph ], [ %inc41, %if.end39.land.rhs_crit_edge ]
  %14 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pos, align 8
  %16 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %len, align 4
  %conv6 = zext i16 %17 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %conv6)
  %cmp7 = icmp slt i32 %15, %conv6
  br i1 %cmp7, label %while.body, label %land.rhs.while.end_crit_edge

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body:                                       ; preds = %land.rhs
  %sub = add nsw i32 %conv6, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %sub)
  %cmp12 = icmp eq i32 %15, %sub
  %. = select i1 %cmp12, i32 768, i32 512
  %and = and i32 %idx.169, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool17.not = icmp eq i32 %and, 0
  %18 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %buf, align 4
  %arrayidx26 = getelementptr i8, ptr %19, i32 %15
  %20 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx26, align 1
  %conv27 = zext i8 %21 to i32
  %or28 = or i32 %., %conv27
  br i1 %tobool17.not, label %lor.lhs.false, label %if.end29

if.end29:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  %shl = shl nuw nsw i32 %or28, 16
  %or22 = or i32 %shl, %val.170
  br label %do.body

lor.lhs.false:                                    ; preds = %while.body
  br i1 %cmp12, label %lor.lhs.false.do.body_crit_edge, label %lor.lhs.false.if.end39_crit_edge

lor.lhs.false.if.end39_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end39

lor.lhs.false.do.body_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

do.body:                                          ; preds = %lor.lhs.false.do.body_crit_edge, %if.end29
  %val.265 = phi i32 [ %or22, %if.end29 ], [ %or28, %lor.lhs.false.do.body_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !162
  tail call void @arm_heavy_mb() #9
  %22 = tail call i32 @llvm.bswap.i32(i32 %val.265)
  %23 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %24, i32 272
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %22) #9, !srcloc !144
  br label %if.end39

if.end39:                                         ; preds = %do.body, %lor.lhs.false.if.end39_crit_edge
  %val.267 = phi i32 [ %val.265, %do.body ], [ %or28, %lor.lhs.false.if.end39_crit_edge ]
  %25 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %pos, align 8
  %inc = add i32 %26, 1
  store i32 %inc, ptr %pos, align 8
  %inc41 = add i32 %idx.169, 1
  %27 = ptrtoint ptr %tx_fifo_free4 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %tx_fifo_free4, align 4
  %dec43 = add i32 %28, -1
  store i32 %dec43, ptr %tx_fifo_free4, align 4
  %tobool.not = icmp eq i32 %dec43, 0
  br i1 %tobool.not, label %if.end39.while.end_crit_edge, label %if.end39.land.rhs_crit_edge

if.end39.land.rhs_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs

if.end39.while.end_crit_edge:                     ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %if.end39.while.end_crit_edge, %land.rhs.while.end_crit_edge, %if.end.while.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qup_i2c_read_rx_fifo_v1(ptr nocapture noundef %qup) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %msg2 = getelementptr inbounds %struct.qup_i2c_dev, ptr %qup, i32 0, i32 15
  %0 = ptrtoint ptr %msg2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %msg2, align 4
  %pos = getelementptr inbounds %struct.qup_i2c_dev, ptr %qup, i32 0, i32 16
  %fifo_available = getelementptr inbounds %struct.qup_i2c_dev, ptr %qup, i32 0, i32 14, i32 11
  %2 = ptrtoint ptr %fifo_available to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fifo_available, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not37 = icmp eq i32 %3, 0
  br i1 %tobool.not37, label %entry.while.end_crit_edge, label %land.rhs.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

land.rhs.lr.ph:                                   ; preds = %entry
  %len = getelementptr inbounds %struct.i2c_msg, ptr %1, i32 0, i32 2
  %buf11 = getelementptr inbounds %struct.i2c_msg, ptr %1, i32 0, i32 3
  %base = getelementptr inbounds %struct.qup_i2c_dev, ptr %qup, i32 0, i32 1
  br label %land.rhs

land.rhs:                                         ; preds = %if.end.land.rhs_crit_edge, %land.rhs.lr.ph
  %val.039 = phi i32 [ 0, %land.rhs.lr.ph ], [ %val.1, %if.end.land.rhs_crit_edge ]
  %idx.038 = phi i32 [ 0, %land.rhs.lr.ph ], [ %inc15, %if.end.land.rhs_crit_edge ]
  %4 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pos, align 8
  %6 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %len, align 4
  %conv = zext i16 %7 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %conv)
  %cmp = icmp slt i32 %5, %conv
  br i1 %cmp, label %while.body, label %land.rhs.while.end_crit_edge

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body:                                       ; preds = %land.rhs
  %and = and i32 %idx.038, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp4 = icmp eq i32 %and, 0
  br i1 %cmp4, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %9, i32 536
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !145
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !163
  %conv8 = trunc i32 %11 to i8
  %12 = ptrtoint ptr %buf11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %buf11, align 4
  %14 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pos, align 8
  %inc = add i32 %15, 1
  store i32 %inc, ptr %pos, align 8
  %arrayidx = getelementptr i8, ptr %13, i32 %15
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv8, ptr %arrayidx, align 1
  br label %if.end

if.else:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  %shr = lshr i32 %val.039, 16
  %conv10 = trunc i32 %shr to i8
  %17 = ptrtoint ptr %buf11 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %buf11, align 4
  %inc13 = add nsw i32 %5, 1
  %19 = ptrtoint ptr %pos to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %inc13, ptr %pos, align 8
  %arrayidx14 = getelementptr i8, ptr %18, i32 %5
  %20 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv10, ptr %arrayidx14, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %val.1 = phi i32 [ %11, %if.then ], [ %val.039, %if.else ]
  %inc15 = add i32 %idx.038, 1
  %21 = ptrtoint ptr %fifo_available to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %fifo_available, align 4
  %dec = add i32 %22, -1
  store i32 %dec, ptr %fifo_available, align 4
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %if.end.while.end_crit_edge, label %if.end.land.rhs_crit_edge

if.end.land.rhs_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %if.end.while.end_crit_edge, %land.rhs.while.end_crit_edge, %entry.while.end_crit_edge
  %23 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %pos, align 8
  %len18 = getelementptr inbounds %struct.i2c_msg, ptr %1, i32 0, i32 2
  %25 = ptrtoint ptr %len18 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %len18, align 4
  %conv19 = zext i16 %26 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %conv19)
  %cmp20 = icmp eq i32 %24, %conv19
  br i1 %cmp20, label %if.then22, label %while.end.if.end23_crit_edge

while.end.if.end23_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

if.then22:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  %rx_bytes_read = getelementptr inbounds %struct.qup_i2c_dev, ptr %qup, i32 0, i32 14, i32 19
  %27 = ptrtoint ptr %rx_bytes_read to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 1, ptr %rx_bytes_read, align 1
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %while.end.if.end23_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qup_i2c_write_rx_tags_v1(ptr nocapture noundef readonly %qup) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %msg1 = getelementptr inbounds %struct.qup_i2c_dev, ptr %qup, i32 0, i32 15
  %0 = ptrtoint ptr %msg1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %msg1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %1, align 4
  %conv.i = zext i16 %3 to i32
  %shl.i = shl nuw nsw i32 %conv.i, 1
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %flags.i, align 2
  %6 = and i16 %5, 1
  %7 = zext i16 %6 to i32
  %len2 = getelementptr inbounds %struct.i2c_msg, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %len2 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %len2, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %9)
  %cmp = icmp eq i16 %9, 256
  %10 = or i16 %9, 1024
  %phi.bo = zext i16 %10 to i32
  %phi.bo12 = shl nuw i32 %phi.bo, 16
  %phi.bo13 = or i32 %phi.bo12, 256
  %cond = select i1 %cmp, i32 67109120, i32 %phi.bo13
  %shl.i.masked = and i32 %shl.i, 254
  %conv = or i32 %shl.i.masked, %7
  %or8 = or i32 %conv, %cond
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !164
  tail call void @arm_heavy_mb() #9
  %11 = tail call i32 @llvm.bswap.i32(i32 %or8)
  %base = getelementptr inbounds %struct.qup_i2c_dev, ptr %qup, i32 0, i32 1
  %12 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %13, i32 272
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %11) #9, !srcloc !144
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qup_i2c_write_tx_fifo_v2(ptr nocapture noundef %qup) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_tags_sent = getelementptr inbounds %struct.qup_i2c_dev, ptr %qup, i32 0, i32 14, i32 16
  %0 = ptrtoint ptr %tx_tags_sent to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %tx_tags_sent, align 4, !range !152
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  %cur_tx_tags = getelementptr inbounds %struct.qup_i2c_dev, ptr %qup, i32 0, i32 14, i32 15
  %tx_tag_len = getelementptr inbounds %struct.qup_i2c_dev, ptr %qup, i32 0, i32 14, i32 2
  %tx_fifo_data_pos.i = getelementptr inbounds %struct.qup_i2c_dev, ptr %qup, i32 0, i32 14, i32 8
  %2 = ptrtoint ptr %tx_fifo_data_pos.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tx_fifo_data_pos.i, align 4
  %tx_fifo_free.i = getelementptr inbounds %struct.qup_i2c_dev, ptr %qup, i32 0, i32 14, i32 9
  %4 = ptrtoint ptr %tx_tag_len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tx_tag_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not20.i = icmp eq i32 %5, 0
  br i1 %tobool.not20.i, label %if.then.qup_i2c_write_blk_data.exit_crit_edge, label %land.rhs.lr.ph.i

if.then.qup_i2c_write_blk_data.exit_crit_edge:    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %qup_i2c_write_blk_data.exit

land.rhs.lr.ph.i:                                 ; preds = %if.then
  %tx_fifo_data.i = getelementptr inbounds %struct.qup_i2c_dev, ptr %qup, i32 0, i32 14, i32 12
  %base.i = getelementptr inbounds %struct.qup_i2c_dev, ptr %qup, i32 0, i32 1
  %6 = ptrtoint ptr %tx_fifo_free.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pr.i = load i32, ptr %tx_fifo_free.i, align 4
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %for.inc.i.land.rhs.i_crit_edge, %land.rhs.lr.ph.i
  %7 = phi i32 [ %.pr.i, %land.rhs.lr.ph.i ], [ %dec7.i, %for.inc.i.land.rhs.i_crit_edge ]
  %j.021.i = phi i32 [ %3, %land.rhs.lr.ph.i ], [ %j.1.i, %for.inc.i.land.rhs.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool2.not.i = icmp eq i32 %7, 0
  br i1 %tobool2.not.i, label %land.rhs.i.qup_i2c_write_blk_data.exit_crit_edge, label %for.body.i

land.rhs.i.qup_i2c_write_blk_data.exit_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %qup_i2c_write_blk_data.exit

for.body.i:                                       ; preds = %land.rhs.i
  %8 = ptrtoint ptr %cur_tx_tags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cur_tx_tags, align 4
  %incdec.ptr.i = getelementptr i8, ptr %9, i32 1
  store ptr %incdec.ptr.i, ptr %cur_tx_tags, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %9, align 1
  %conv.i = zext i8 %11 to i32
  %mul.i = shl i32 %j.021.i, 3
  %shl.i = shl i32 %conv.i, %mul.i
  %12 = ptrtoint ptr %tx_fifo_data.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tx_fifo_data.i, align 4
  %or.i = or i32 %shl.i, %13
  store i32 %or.i, ptr %tx_fifo_data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %j.021.i)
  %cmp.i = icmp eq i32 %j.021.i, 3
  br i1 %cmp.i, label %do.body.i, label %if.else.i

do.body.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !165
  tail call void @arm_heavy_mb() #9
  %14 = ptrtoint ptr %tx_fifo_data.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tx_fifo_data.i, align 4
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #9
  %17 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %18, i32 272
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %16) #9, !srcloc !144
  %19 = ptrtoint ptr %tx_fifo_data.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %tx_fifo_data.i, align 4
  br label %for.inc.i

if.else.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %inc.i = add i32 %j.021.i, 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.else.i, %do.body.i
  %j.1.i = phi i32 [ 0, %do.body.i ], [ %inc.i, %if.else.i ]
  %20 = ptrtoint ptr %tx_tag_len to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tx_tag_len, align 4
  %dec.i = add i32 %21, -1
  store i32 %dec.i, ptr %tx_tag_len, align 4
  %22 = ptrtoint ptr %tx_fifo_free.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %tx_fifo_free.i, align 4
  %dec7.i = add i32 %23, -1
  store i32 %dec7.i, ptr %tx_fifo_free.i, align 4
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %for.inc.i.qup_i2c_write_blk_data.exit_crit_edge, label %for.inc.i.land.rhs.i_crit_edge

for.inc.i.land.rhs.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs.i

for.inc.i.qup_i2c_write_blk_data.exit_crit_edge:  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %qup_i2c_write_blk_data.exit

qup_i2c_write_blk_data.exit:                      ; preds = %for.inc.i.qup_i2c_write_blk_data.exit_crit_edge, %land.rhs.i.qup_i2c_write_blk_data.exit_crit_edge, %if.then.qup_i2c_write_blk_data.exit_crit_edge
  %j.0.lcssa.i = phi i32 [ %3, %if.then.qup_i2c_write_blk_data.exit_crit_edge ], [ %j.021.i, %land.rhs.i.qup_i2c_write_blk_data.exit_crit_edge ], [ %j.1.i, %for.inc.i.qup_i2c_write_blk_data.exit_crit_edge ]
  %24 = ptrtoint ptr %tx_fifo_data_pos.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %j.0.lcssa.i, ptr %tx_fifo_data_pos.i, align 4
  %25 = ptrtoint ptr %tx_tags_sent to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %tx_tags_sent, align 4
  br label %if.end

if.end:                                           ; preds = %qup_i2c_write_blk_data.exit, %entry.if.end_crit_edge
  %send_last_word = getelementptr inbounds %struct.qup_i2c_dev, ptr %qup, i32 0, i32 14, i32 17
  %26 = ptrtoint ptr %send_last_word to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %send_last_word, align 1, !range !152
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool3.not = icmp eq i8 %27, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.do.body_crit_edge

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.end5:                                          ; preds = %if.end
  %cur_data = getelementptr inbounds %struct.qup_i2c_dev, ptr %qup, i32 0, i32 14, i32 14
  %cur_blk_len = getelementptr inbounds %struct.qup_i2c_dev, ptr %qup, i32 0, i32 14, i32 5
  %tx_fifo_data_pos.i32 = getelementptr inbounds %struct.qup_i2c_dev, ptr %qup, i32 0, i32 14, i32 8
  %28 = ptrtoint ptr %tx_fifo_data_pos.i32 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %tx_fifo_data_pos.i32, align 4
  %tx_fifo_free.i33 = getelementptr inbounds %struct.qup_i2c_dev, ptr %qup, i32 0, i32 14, i32 9
  %30 = ptrtoint ptr %cur_blk_len to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %cur_blk_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.not20.i34 = icmp eq i32 %31, 0
  br i1 %tobool.not20.i34, label %if.end5.qup_i2c_write_blk_data.exit59.thread_crit_edge, label %land.rhs.lr.ph.i38

if.end5.qup_i2c_write_blk_data.exit59.thread_crit_edge: ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %qup_i2c_write_blk_data.exit59.thread

land.rhs.lr.ph.i38:                               ; preds = %if.end5
  %tx_fifo_data.i35 = getelementptr inbounds %struct.qup_i2c_dev, ptr %qup, i32 0, i32 14, i32 12
  %base.i36 = getelementptr inbounds %struct.qup_i2c_dev, ptr %qup, i32 0, i32 1
  %32 = ptrtoint ptr %tx_fifo_free.i33 to i32
  call void @__asan_load4_noabort(i32 %32)
  %.pr.i37 = load i32, ptr %tx_fifo_free.i33, align 4
  br label %land.rhs.i41

land.rhs.i41:                                     ; preds = %for.inc.i57.land.rhs.i41_crit_edge, %land.rhs.lr.ph.i38
  %33 = phi i32 [ %.pr.i37, %land.rhs.lr.ph.i38 ], [ %dec7.i55, %for.inc.i57.land.rhs.i41_crit_edge ]
  %j.021.i39 = phi i32 [ %29, %land.rhs.lr.ph.i38 ], [ %j.1.i53, %for.inc.i57.land.rhs.i41_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool2.not.i40 = icmp eq i32 %33, 0
  br i1 %tobool2.not.i40, label %qup_i2c_write_blk_data.exit59, label %for.body.i48

for.body.i48:                                     ; preds = %land.rhs.i41
  %34 = ptrtoint ptr %cur_data to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %cur_data, align 4
  %incdec.ptr.i42 = getelementptr i8, ptr %35, i32 1
  store ptr %incdec.ptr.i42, ptr %cur_data, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %35, align 1
  %conv.i43 = zext i8 %37 to i32
  %mul.i44 = shl i32 %j.021.i39, 3
  %shl.i45 = shl i32 %conv.i43, %mul.i44
  %38 = ptrtoint ptr %tx_fifo_data.i35 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %tx_fifo_data.i35, align 4
  %or.i46 = or i32 %shl.i45, %39
  store i32 %or.i46, ptr %tx_fifo_data.i35, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %j.021.i39)
  %cmp.i47 = icmp eq i32 %j.021.i39, 3
  br i1 %cmp.i47, label %do.body.i50, label %if.else.i52

do.body.i50:                                      ; preds = %for.body.i48
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !165
  tail call void @arm_heavy_mb() #9
  %40 = ptrtoint ptr %tx_fifo_data.i35 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %tx_fifo_data.i35, align 4
  %42 = tail call i32 @llvm.bswap.i32(i32 %41) #9
  %43 = ptrtoint ptr %base.i36 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %base.i36, align 4
  %add.ptr.i49 = getelementptr i8, ptr %44, i32 272
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i49, i32 %42) #9, !srcloc !144
  %45 = ptrtoint ptr %tx_fifo_data.i35 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %tx_fifo_data.i35, align 4
  br label %for.inc.i57

if.else.i52:                                      ; preds = %for.body.i48
  call void @__sanitizer_cov_trace_pc() #11
  %inc.i51 = add i32 %j.021.i39, 1
  br label %for.inc.i57

for.inc.i57:                                      ; preds = %if.else.i52, %do.body.i50
  %j.1.i53 = phi i32 [ 0, %do.body.i50 ], [ %inc.i51, %if.else.i52 ]
  %46 = ptrtoint ptr %cur_blk_len to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %cur_blk_len, align 4
  %dec.i54 = add i32 %47, -1
  store i32 %dec.i54, ptr %cur_blk_len, align 4
  %48 = ptrtoint ptr %tx_fifo_free.i33 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %tx_fifo_free.i33, align 4
  %dec7.i55 = add i32 %49, -1
  store i32 %dec7.i55, ptr %tx_fifo_free.i33, align 4
  %tobool.not.i56 = icmp eq i32 %dec.i54, 0
  br i1 %tobool.not.i56, label %for.inc.i57.qup_i2c_write_blk_data.exit59.thread_crit_edge, label %for.inc.i57.land.rhs.i41_crit_edge

for.inc.i57.land.rhs.i41_crit_edge:               ; preds = %for.inc.i57
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs.i41

for.inc.i57.qup_i2c_write_blk_data.exit59.thread_crit_edge: ; preds = %for.inc.i57
  call void @__sanitizer_cov_trace_pc() #11
  br label %qup_i2c_write_blk_data.exit59.thread

qup_i2c_write_blk_data.exit59.thread:             ; preds = %for.inc.i57.qup_i2c_write_blk_data.exit59.thread_crit_edge, %if.end5.qup_i2c_write_blk_data.exit59.thread_crit_edge
  %j.0.lcssa.i58.ph = phi i32 [ %29, %if.end5.qup_i2c_write_blk_data.exit59.thread_crit_edge ], [ %j.1.i53, %for.inc.i57.qup_i2c_write_blk_data.exit59.thread_crit_edge ]
  %50 = ptrtoint ptr %tx_fifo_data_pos.i32 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %j.0.lcssa.i58.ph, ptr %tx_fifo_data_pos.i32, align 4
  br label %if.then8

qup_i2c_write_blk_data.exit59:                    ; preds = %land.rhs.i41
  %51 = ptrtoint ptr %cur_blk_len to i32
  call void @__asan_load4_noabort(i32 %51)
  %.pr = load i32, ptr %cur_blk_len, align 4
  %52 = ptrtoint ptr %tx_fifo_data_pos.i32 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %j.021.i39, ptr %tx_fifo_data_pos.i32, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool7.not = icmp eq i32 %.pr, 0
  br i1 %tobool7.not, label %qup_i2c_write_blk_data.exit59.if.then8_crit_edge, label %qup_i2c_write_blk_data.exit59.cleanup_crit_edge

qup_i2c_write_blk_data.exit59.cleanup_crit_edge:  ; preds = %qup_i2c_write_blk_data.exit59
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

qup_i2c_write_blk_data.exit59.if.then8_crit_edge: ; preds = %qup_i2c_write_blk_data.exit59
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then8

if.then8:                                         ; preds = %qup_i2c_write_blk_data.exit59.if.then8_crit_edge, %qup_i2c_write_blk_data.exit59.thread
  %j.0.lcssa.i5862 = phi i32 [ %j.0.lcssa.i58.ph, %qup_i2c_write_blk_data.exit59.thread ], [ %j.021.i39, %qup_i2c_write_blk_data.exit59.if.then8_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %j.0.lcssa.i5862)
  %tobool9.not = icmp eq i32 %j.0.lcssa.i5862, 0
  br i1 %tobool9.not, label %if.then8.cleanup_crit_edge, label %if.end11

if.then8.cleanup_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end11:                                         ; preds = %if.then8
  %53 = ptrtoint ptr %tx_fifo_free.i33 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %tx_fifo_free.i33, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool12.not = icmp eq i32 %54, 0
  br i1 %tobool12.not, label %if.end14, label %if.end11.do.body_crit_edge

if.end11.do.body_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.end14:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  %55 = ptrtoint ptr %send_last_word to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 1, ptr %send_last_word, align 1
  br label %cleanup

do.body:                                          ; preds = %if.end11.do.body_crit_edge, %if.end.do.body_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !166
  tail call void @arm_heavy_mb() #9
  %tx_fifo_data = getelementptr inbounds %struct.qup_i2c_dev, ptr %qup, i32 0, i32 14, i32 12
  %56 = ptrtoint ptr %tx_fifo_data to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %tx_fifo_data, align 4
  %58 = tail call i32 @llvm.bswap.i32(i32 %57)
  %base = getelementptr inbounds %struct.qup_i2c_dev, ptr %qup, i32 0, i32 1
  %59 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %60, i32 272
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %58) #9, !srcloc !144
  br label %cleanup

cleanup:                                          ; preds = %do.body, %if.end14, %if.then8.cleanup_crit_edge, %qup_i2c_write_blk_data.exit59.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qup_i2c_read_rx_fifo_v2(ptr nocapture noundef %qup) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_tags_fetched = getelementptr inbounds %struct.qup_i2c_dev, ptr %qup, i32 0, i32 14, i32 18
  %0 = ptrtoint ptr %rx_tags_fetched to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %rx_tags_fetched, align 2, !range !152
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %base.i = getelementptr inbounds %struct.qup_i2c_dev, ptr %qup, i32 0, i32 1
  %2 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 536
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !145
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !167
  %rx_fifo_data.i = getelementptr inbounds %struct.qup_i2c_dev, ptr %qup, i32 0, i32 14, i32 13
  %rx_tag_len.i = getelementptr inbounds %struct.qup_i2c_dev, ptr %qup, i32 0, i32 14, i32 3
  %6 = ptrtoint ptr %rx_tag_len.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rx_tag_len.i, align 4
  %mul.i = shl i32 %7, 3
  %shr.i = lshr i32 %5, %mul.i
  %8 = ptrtoint ptr %rx_fifo_data.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %shr.i, ptr %rx_fifo_data.i, align 4
  %rx_fifo_data_pos.i = getelementptr inbounds %struct.qup_i2c_dev, ptr %qup, i32 0, i32 14, i32 10
  %9 = ptrtoint ptr %rx_fifo_data_pos.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %7, ptr %rx_fifo_data_pos.i, align 4
  %fifo_available.i = getelementptr inbounds %struct.qup_i2c_dev, ptr %qup, i32 0, i32 14, i32 11
  %10 = ptrtoint ptr %fifo_available.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %fifo_available.i, align 4
  %sub.i = sub i32 %11, %7
  store i32 %sub.i, ptr %fifo_available.i, align 4
  %12 = ptrtoint ptr %rx_tags_fetched to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %rx_tags_fetched, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %rx_fifo_data_pos.i11 = getelementptr inbounds %struct.qup_i2c_dev, ptr %qup, i32 0, i32 14, i32 10
  %13 = ptrtoint ptr %rx_fifo_data_pos.i11 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %rx_fifo_data_pos.i11, align 4
  %fifo_available.i12 = getelementptr inbounds %struct.qup_i2c_dev, ptr %qup, i32 0, i32 14, i32 11
  %cur_blk_len.i = getelementptr inbounds %struct.qup_i2c_dev, ptr %qup, i32 0, i32 14, i32 5
  %15 = ptrtoint ptr %cur_blk_len.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cur_blk_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not27.i = icmp eq i32 %16, 0
  br i1 %tobool.not27.i, label %if.end.qup_i2c_recv_data.exit.thread_crit_edge, label %land.rhs.lr.ph.i

if.end.qup_i2c_recv_data.exit.thread_crit_edge:   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %qup_i2c_recv_data.exit.thread

land.rhs.lr.ph.i:                                 ; preds = %if.end
  %base.i13 = getelementptr inbounds %struct.qup_i2c_dev, ptr %qup, i32 0, i32 1
  %rx_fifo_data.i14 = getelementptr inbounds %struct.qup_i2c_dev, ptr %qup, i32 0, i32 14, i32 13
  %cur_data.i = getelementptr inbounds %struct.qup_i2c_dev, ptr %qup, i32 0, i32 14, i32 14
  %17 = ptrtoint ptr %fifo_available.i12 to i32
  call void @__asan_load4_noabort(i32 %17)
  %.pr.i = load i32, ptr %fifo_available.i12, align 4
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %if.end.i.land.rhs.i_crit_edge, %land.rhs.lr.ph.i
  %18 = phi i32 [ %.pr.i, %land.rhs.lr.ph.i ], [ %dec12.i, %if.end.i.land.rhs.i_crit_edge ]
  %j.028.i = phi i32 [ %14, %land.rhs.lr.ph.i ], [ %j.1.i, %if.end.i.land.rhs.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool2.not.i = icmp eq i32 %18, 0
  br i1 %tobool2.not.i, label %qup_i2c_recv_data.exit, label %for.body.i

for.body.i:                                       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %j.028.i)
  %cmp.i = icmp eq i32 %j.028.i, 0
  br i1 %cmp.i, label %if.then.i, label %for.body.i.if.end.i_crit_edge

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %19 = ptrtoint ptr %base.i13 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base.i13, align 4
  %add.ptr.i15 = getelementptr i8, ptr %20, i32 536
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i15) #9, !srcloc !145
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !168
  %23 = ptrtoint ptr %rx_fifo_data.i14 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %rx_fifo_data.i14, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body.i.if.end.i_crit_edge
  %24 = ptrtoint ptr %rx_fifo_data.i14 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %rx_fifo_data.i14, align 4
  %conv.i = trunc i32 %25 to i8
  %26 = ptrtoint ptr %cur_data.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %cur_data.i, align 4
  %incdec.ptr.i = getelementptr i8, ptr %27, i32 1
  store ptr %incdec.ptr.i, ptr %cur_data.i, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv.i, ptr %27, align 1
  %29 = load i32, ptr %rx_fifo_data.i14, align 4
  %shr.i16 = lshr i32 %29, 8
  store i32 %shr.i16, ptr %rx_fifo_data.i14, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %j.028.i)
  %cmp6.i = icmp eq i32 %j.028.i, 3
  %inc.i = add i32 %j.028.i, 1
  %j.1.i = select i1 %cmp6.i, i32 0, i32 %inc.i
  %30 = ptrtoint ptr %cur_blk_len.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %cur_blk_len.i, align 4
  %dec.i = add i32 %31, -1
  store i32 %dec.i, ptr %cur_blk_len.i, align 4
  %32 = ptrtoint ptr %fifo_available.i12 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %fifo_available.i12, align 4
  %dec12.i = add i32 %33, -1
  store i32 %dec12.i, ptr %fifo_available.i12, align 4
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %if.end.i.qup_i2c_recv_data.exit.thread_crit_edge, label %if.end.i.land.rhs.i_crit_edge

if.end.i.land.rhs.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs.i

if.end.i.qup_i2c_recv_data.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %qup_i2c_recv_data.exit.thread

qup_i2c_recv_data.exit.thread:                    ; preds = %if.end.i.qup_i2c_recv_data.exit.thread_crit_edge, %if.end.qup_i2c_recv_data.exit.thread_crit_edge
  %j.0.lcssa.i.ph = phi i32 [ %14, %if.end.qup_i2c_recv_data.exit.thread_crit_edge ], [ %j.1.i, %if.end.i.qup_i2c_recv_data.exit.thread_crit_edge ]
  %34 = ptrtoint ptr %rx_fifo_data_pos.i11 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %j.0.lcssa.i.ph, ptr %rx_fifo_data_pos.i11, align 4
  br label %if.then4

qup_i2c_recv_data.exit:                           ; preds = %land.rhs.i
  %35 = ptrtoint ptr %cur_blk_len.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %.pr = load i32, ptr %cur_blk_len.i, align 4
  %36 = ptrtoint ptr %rx_fifo_data_pos.i11 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %j.028.i, ptr %rx_fifo_data_pos.i11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool3.not = icmp eq i32 %.pr, 0
  br i1 %tobool3.not, label %qup_i2c_recv_data.exit.if.then4_crit_edge, label %qup_i2c_recv_data.exit.if.end5_crit_edge

qup_i2c_recv_data.exit.if.end5_crit_edge:         ; preds = %qup_i2c_recv_data.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

qup_i2c_recv_data.exit.if.then4_crit_edge:        ; preds = %qup_i2c_recv_data.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then4

if.then4:                                         ; preds = %qup_i2c_recv_data.exit.if.then4_crit_edge, %qup_i2c_recv_data.exit.thread
  %rx_bytes_read = getelementptr inbounds %struct.qup_i2c_dev, ptr %qup, i32 0, i32 14, i32 19
  %37 = ptrtoint ptr %rx_bytes_read to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 1, ptr %rx_bytes_read, align 1
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %qup_i2c_recv_data.exit.if.end5_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qup_i2c_write_rx_tags_v2(ptr nocapture noundef %qup) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cur_tx_tags = getelementptr inbounds %struct.qup_i2c_dev, ptr %qup, i32 0, i32 14, i32 15
  %tx_tag_len = getelementptr inbounds %struct.qup_i2c_dev, ptr %qup, i32 0, i32 14, i32 2
  %tx_fifo_data_pos.i = getelementptr inbounds %struct.qup_i2c_dev, ptr %qup, i32 0, i32 14, i32 8
  %0 = ptrtoint ptr %tx_fifo_data_pos.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tx_fifo_data_pos.i, align 4
  %tx_fifo_free.i = getelementptr inbounds %struct.qup_i2c_dev, ptr %qup, i32 0, i32 14, i32 9
  %2 = ptrtoint ptr %tx_tag_len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tx_tag_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not20.i = icmp eq i32 %3, 0
  br i1 %tobool.not20.i, label %entry.qup_i2c_write_blk_data.exit_crit_edge, label %land.rhs.lr.ph.i

entry.qup_i2c_write_blk_data.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %qup_i2c_write_blk_data.exit

land.rhs.lr.ph.i:                                 ; preds = %entry
  %tx_fifo_data.i = getelementptr inbounds %struct.qup_i2c_dev, ptr %qup, i32 0, i32 14, i32 12
  %base.i = getelementptr inbounds %struct.qup_i2c_dev, ptr %qup, i32 0, i32 1
  %4 = ptrtoint ptr %tx_fifo_free.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pr.i = load i32, ptr %tx_fifo_free.i, align 4
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %for.inc.i.land.rhs.i_crit_edge, %land.rhs.lr.ph.i
  %5 = phi i32 [ %.pr.i, %land.rhs.lr.ph.i ], [ %dec7.i, %for.inc.i.land.rhs.i_crit_edge ]
  %j.021.i = phi i32 [ %1, %land.rhs.lr.ph.i ], [ %j.1.i, %for.inc.i.land.rhs.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool2.not.i = icmp eq i32 %5, 0
  br i1 %tobool2.not.i, label %land.rhs.i.qup_i2c_write_blk_data.exit_crit_edge, label %for.body.i

land.rhs.i.qup_i2c_write_blk_data.exit_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %qup_i2c_write_blk_data.exit

for.body.i:                                       ; preds = %land.rhs.i
  %6 = ptrtoint ptr %cur_tx_tags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cur_tx_tags, align 4
  %incdec.ptr.i = getelementptr i8, ptr %7, i32 1
  store ptr %incdec.ptr.i, ptr %cur_tx_tags, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %7, align 1
  %conv.i = zext i8 %9 to i32
  %mul.i = shl i32 %j.021.i, 3
  %shl.i = shl i32 %conv.i, %mul.i
  %10 = ptrtoint ptr %tx_fifo_data.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tx_fifo_data.i, align 4
  %or.i = or i32 %shl.i, %11
  store i32 %or.i, ptr %tx_fifo_data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %j.021.i)
  %cmp.i = icmp eq i32 %j.021.i, 3
  br i1 %cmp.i, label %do.body.i, label %if.else.i

do.body.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !165
  tail call void @arm_heavy_mb() #9
  %12 = ptrtoint ptr %tx_fifo_data.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tx_fifo_data.i, align 4
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #9
  %15 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %16, i32 272
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %14) #9, !srcloc !144
  %17 = ptrtoint ptr %tx_fifo_data.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %tx_fifo_data.i, align 4
  br label %for.inc.i

if.else.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %inc.i = add i32 %j.021.i, 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.else.i, %do.body.i
  %j.1.i = phi i32 [ 0, %do.body.i ], [ %inc.i, %if.else.i ]
  %18 = ptrtoint ptr %tx_tag_len to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tx_tag_len, align 4
  %dec.i = add i32 %19, -1
  store i32 %dec.i, ptr %tx_tag_len, align 4
  %20 = ptrtoint ptr %tx_fifo_free.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tx_fifo_free.i, align 4
  %dec7.i = add i32 %21, -1
  store i32 %dec7.i, ptr %tx_fifo_free.i, align 4
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %for.inc.i.qup_i2c_write_blk_data.exit_crit_edge, label %for.inc.i.land.rhs.i_crit_edge

for.inc.i.land.rhs.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs.i

for.inc.i.qup_i2c_write_blk_data.exit_crit_edge:  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %qup_i2c_write_blk_data.exit

qup_i2c_write_blk_data.exit:                      ; preds = %for.inc.i.qup_i2c_write_blk_data.exit_crit_edge, %land.rhs.i.qup_i2c_write_blk_data.exit_crit_edge, %entry.qup_i2c_write_blk_data.exit_crit_edge
  %j.0.lcssa.i = phi i32 [ %1, %entry.qup_i2c_write_blk_data.exit_crit_edge ], [ %j.021.i, %land.rhs.i.qup_i2c_write_blk_data.exit_crit_edge ], [ %j.1.i, %for.inc.i.qup_i2c_write_blk_data.exit_crit_edge ]
  %22 = ptrtoint ptr %tx_fifo_data_pos.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %j.0.lcssa.i, ptr %tx_fifo_data_pos.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %j.0.lcssa.i)
  %tobool.not = icmp eq i32 %j.0.lcssa.i, 0
  br i1 %tobool.not, label %qup_i2c_write_blk_data.exit.if.end_crit_edge, label %do.body

qup_i2c_write_blk_data.exit.if.end_crit_edge:     ; preds = %qup_i2c_write_blk_data.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.body:                                          ; preds = %qup_i2c_write_blk_data.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !169
  tail call void @arm_heavy_mb() #9
  %tx_fifo_data = getelementptr inbounds %struct.qup_i2c_dev, ptr %qup, i32 0, i32 14, i32 12
  %23 = ptrtoint ptr %tx_fifo_data to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %tx_fifo_data, align 4
  %25 = tail call i32 @llvm.bswap.i32(i32 %24)
  %base = getelementptr inbounds %struct.qup_i2c_dev, ptr %qup, i32 0, i32 1
  %26 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %27, i32 272
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %25) #9, !srcloc !144
  br label %if.end

if.end:                                           ; preds = %do.body, %qup_i2c_write_blk_data.exit.if.end_crit_edge
  ret void
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_add_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_release_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qup_i2c_xfer(ptr nocapture noundef readonly %adap, ptr noundef %msgs, i32 noundef %num) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %3, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end:                                           ; preds = %entry
  %bus_err = getelementptr inbounds %struct.qup_i2c_dev, ptr %1, i32 0, i32 17
  %4 = ptrtoint ptr %bus_err to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %bus_err, align 4
  %qup_err = getelementptr inbounds %struct.qup_i2c_dev, ptr %1, i32 0, i32 18
  %5 = ptrtoint ptr %qup_err to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %qup_err, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %base = getelementptr inbounds %struct.qup_i2c_dev, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 16777216) #9, !srcloc !144
  %8 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base, align 4
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !146
  %11 = and i32 %10, 117440512
  call void @__sanitizer_cov_trace_const_cmp4(i32 67108864, i32 %11)
  %12 = icmp eq i32 %11, 67108864
  br i1 %12, label %if.end.do.body5_crit_edge, label %if.end.i.i

if.end.do.body5_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body5

if.end.i.i:                                       ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 214748) #9
  %14 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base, align 4
  %add.ptr.1.i.i = getelementptr i8, ptr %15, i32 4
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.1.i.i) #9, !srcloc !145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !146
  %17 = and i32 %16, 117440512
  call void @__sanitizer_cov_trace_const_cmp4(i32 67108864, i32 %17)
  %18 = icmp eq i32 %17, 67108864
  br i1 %18, label %if.end.i.i.do.body5_crit_edge, label %if.end.i.i.out.sink.split_crit_edge

if.end.i.i.out.sink.split_crit_edge:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.sink.split

if.end.i.i.do.body5_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body5

do.body5:                                         ; preds = %if.end.i.i.do.body5_crit_edge, %if.end.do.body5_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !171
  tail call void @arm_heavy_mb() #9
  %19 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 251789312) #9, !srcloc !144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num)
  %cmp1084 = icmp sgt i32 %num, 0
  br i1 %cmp1084, label %for.body.lr.ph, label %do.body5.out_crit_edge

do.body5.out_crit_edge:                           ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

for.body.lr.ph:                                   ; preds = %do.body5
  %msg = getelementptr inbounds %struct.qup_i2c_dev, ptr %1, i32 0, i32 15
  %pos.i = getelementptr inbounds %struct.qup_i2c_dev, ptr %1, i32 0, i32 16
  %total_tx_len.i = getelementptr inbounds %struct.qup_i2c_dev, ptr %1, i32 0, i32 14, i32 6
  %total_rx_len.i = getelementptr inbounds %struct.qup_i2c_dev, ptr %1, i32 0, i32 14, i32 7
  br label %for.body

for.cond:                                         ; preds = %if.end27
  %inc = add nuw nsw i32 %idx.085, 1
  %exitcond.not = icmp eq i32 %inc, %num
  br i1 %exitcond.not, label %for.cond.out_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.cond.out_crit_edge:                           ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %idx.085 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %21 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %base, align 4
  %add.ptr.i.i64 = getelementptr i8, ptr %22, i32 4
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i64) #9, !srcloc !145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !146
  %24 = and i32 %23, 335544320
  call void @__sanitizer_cov_trace_const_cmp4(i32 335544320, i32 %24)
  %25 = icmp eq i32 %24, 335544320
  br i1 %25, label %for.body.if.end14_crit_edge, label %if.end.i.i66

for.body.if.end14_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.end.i.i66:                                     ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %26(i32 noundef 214748) #9
  %27 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %base, align 4
  %add.ptr.1.i.i65 = getelementptr i8, ptr %28, i32 4
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.1.i.i65) #9, !srcloc !145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !146
  %30 = and i32 %29, 335544320
  call void @__sanitizer_cov_trace_const_cmp4(i32 335544320, i32 %30)
  %31 = icmp eq i32 %30, 335544320
  br i1 %31, label %if.end.i.i66.if.end14_crit_edge, label %if.end.i.i66.out.sink.split_crit_edge

if.end.i.i66.out.sink.split_crit_edge:            ; preds = %if.end.i.i66
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.sink.split

if.end.i.i66.if.end14_crit_edge:                  ; preds = %if.end.i.i66
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.end14:                                         ; preds = %if.end.i.i66.if.end14_crit_edge, %for.body.if.end14_crit_edge
  %flags.i = getelementptr %struct.i2c_msg, ptr %msgs, i32 %idx.085, i32 1
  %32 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %flags.i, align 2
  %34 = and i16 %33, 1025
  call void @__sanitizer_cov_trace_const_cmp2(i16 1025, i16 %34)
  %35 = icmp eq i16 %34, 1025
  br i1 %35, label %if.end14.out_crit_edge, label %if.end17

if.end14.out_crit_edge:                           ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end17:                                         ; preds = %if.end14
  %arrayidx = getelementptr %struct.i2c_msg, ptr %msgs, i32 %idx.085
  %36 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %arrayidx, ptr %msg, align 4
  %37 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %flags.i, align 2
  %39 = and i16 %38, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %39)
  %tobool20.not = icmp eq i16 %39, 0
  %40 = ptrtoint ptr %pos.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %pos.i, align 8
  br i1 %tobool20.not, label %if.else, label %if.then21

if.then21:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  %41 = ptrtoint ptr %total_tx_len.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 2, ptr %total_tx_len.i, align 4
  %len.i = getelementptr %struct.i2c_msg, ptr %msgs, i32 %idx.085, i32 2
  %42 = ptrtoint ptr %len.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %len.i, align 4
  %conv.i = zext i16 %43 to i32
  br label %if.end24

if.else:                                          ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  %len.i71 = getelementptr %struct.i2c_msg, ptr %msgs, i32 %idx.085, i32 2
  %44 = ptrtoint ptr %len.i71 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %len.i71, align 4
  %conv.i72 = zext i16 %45 to i32
  %add.i = add nuw nsw i32 %conv.i72, 1
  %46 = ptrtoint ptr %total_tx_len.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %add.i, ptr %total_tx_len.i, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.else, %if.then21
  %.sink90 = phi i32 [ 0, %if.else ], [ %conv.i, %if.then21 ]
  %47 = xor i1 %tobool20.not, true
  %48 = ptrtoint ptr %total_rx_len.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %.sink90, ptr %total_rx_len.i, align 4
  %call.i75 = tail call fastcc i32 @qup_i2c_conf_xfer_v1(ptr noundef %1, i1 noundef zeroext %47) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i75)
  %tobool25.not = icmp eq i32 %call.i75, 0
  br i1 %tobool25.not, label %if.end27, label %if.end24.out_crit_edge

if.end24.out_crit_edge:                           ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end27:                                         ; preds = %if.end24
  %call28 = tail call fastcc i32 @qup_i2c_change_state(ptr noundef %1, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %for.cond, label %if.end27.out_crit_edge

if.end27.out_crit_edge:                           ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

out.sink.split:                                   ; preds = %if.end.i.i66.out.sink.split_crit_edge, %if.end.i.i.out.sink.split_crit_edge
  %ret.3.ph = phi i32 [ -110, %if.end.i.i.out.sink.split_crit_edge ], [ -5, %if.end.i.i66.out.sink.split_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %49 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %49(i32 noundef 214748) #9
  br label %out

out:                                              ; preds = %out.sink.split, %if.end27.out_crit_edge, %if.end24.out_crit_edge, %if.end14.out_crit_edge, %for.cond.out_crit_edge, %do.body5.out_crit_edge, %entry.out_crit_edge
  %ret.3 = phi i32 [ %call.i, %entry.out_crit_edge ], [ %num, %do.body5.out_crit_edge ], [ %ret.3.ph, %out.sink.split ], [ -22, %if.end14.out_crit_edge ], [ %num, %for.cond.out_crit_edge ], [ %call.i75, %if.end24.out_crit_edge ], [ %call28, %if.end27.out_crit_edge ]
  %50 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %1, align 8
  %call.i76 = tail call i64 @ktime_get_mono_fast_ns() #9
  %last_busy.i = getelementptr inbounds %struct.device, ptr %51, i32 0, i32 12, i32 22
  %52 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %52)
  store volatile i64 %call.i76, ptr %last_busy.i, align 8
  %53 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %1, align 8
  %call.i77 = tail call i32 @__pm_runtime_suspend(ptr noundef %54, i32 noundef 13) #9
  ret i32 %ret.3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @qup_i2c_func(ptr nocapture noundef readnone %adap) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 268337161
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qup_i2c_change_state(ptr nocapture noundef readonly %qup, i32 noundef %state) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %base.i.i = getelementptr inbounds %struct.qup_i2c_dev, ptr %qup, i32 0, i32 1
  %0 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !146
  %3 = and i32 %2, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i.not.i, label %if.end.i.i, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.end.i.i:                                       ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748) #9
  %5 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base.i.i, align 4
  %add.ptr.1.i.i = getelementptr i8, ptr %6, i32 4
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.1.i.i) #9, !srcloc !145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !146
  %8 = and i32 %7, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.1.i.not.i = icmp eq i32 %8, 0
  br i1 %tobool.not.1.i.not.i, label %if.end.i.i.return.sink.split_crit_edge, label %if.end.i.i.do.body_crit_edge

if.end.i.i.do.body_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.end.i.i.return.sink.split_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %return.sink.split

do.body:                                          ; preds = %if.end.i.i.do.body_crit_edge, %entry.do.body_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  tail call void @arm_heavy_mb() #9
  %9 = tail call i32 @llvm.bswap.i32(i32 %state)
  %10 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base.i.i, align 4
  %add.ptr = getelementptr i8, ptr %11, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %9) #9, !srcloc !144
  %12 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i9 = getelementptr i8, ptr %13, i32 4
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i9) #9, !srcloc !145
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !146
  %and.i.i = and i32 %15, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp ne i32 %and.i.i, 0
  %and2.i.i = and i32 %15, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %and2.i.i, i32 %state)
  %cmp.i.i = icmp eq i32 %and2.i.i, %state
  %or.cond.i.i = and i1 %tobool.not.i.i, %cmp.i.i
  br i1 %or.cond.i.i, label %do.body.return_crit_edge, label %if.end.i.i11

do.body.return_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end.i.i11:                                     ; preds = %do.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 214748) #9
  %17 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %base.i.i, align 4
  %add.ptr.1.i.i10 = getelementptr i8, ptr %18, i32 4
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.1.i.i10) #9, !srcloc !145
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !146
  %and.1.i.i = and i32 %20, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1.i.i)
  %tobool.not.1.i.i = icmp ne i32 %and.1.i.i, 0
  %and2.1.i.i = and i32 %20, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %and2.1.i.i, i32 %state)
  %cmp.1.i.i = icmp eq i32 %and2.1.i.i, %state
  %or.cond.1.i.i = and i1 %tobool.not.1.i.i, %cmp.1.i.i
  br i1 %or.cond.1.i.i, label %if.end.i.i11.return_crit_edge, label %if.end.i.i11.return.sink.split_crit_edge

if.end.i.i11.return.sink.split_crit_edge:         ; preds = %if.end.i.i11
  call void @__sanitizer_cov_trace_pc() #11
  br label %return.sink.split

if.end.i.i11.return_crit_edge:                    ; preds = %if.end.i.i11
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

return.sink.split:                                ; preds = %if.end.i.i11.return.sink.split_crit_edge, %if.end.i.i.return.sink.split_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 214748) #9
  br label %return

return:                                           ; preds = %return.sink.split, %if.end.i.i11.return_crit_edge, %do.body.return_crit_edge
  %retval.0 = phi i32 [ 0, %do.body.return_crit_edge ], [ 0, %if.end.i.i11.return_crit_edge ], [ -5, %return.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qup_i2c_conf_xfer_v1(ptr noundef %qup, i1 noundef zeroext %is_rx) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_fifo_free.i = getelementptr inbounds %struct.qup_i2c_dev, ptr %qup, i32 0, i32 14, i32 9
  %0 = ptrtoint ptr %tx_fifo_free.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %tx_fifo_free.i, align 4
  %fifo_available.i = getelementptr inbounds %struct.qup_i2c_dev, ptr %qup, i32 0, i32 14, i32 11
  %1 = ptrtoint ptr %fifo_available.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %fifo_available.i, align 4
  %rx_bytes_read.i = getelementptr inbounds %struct.qup_i2c_dev, ptr %qup, i32 0, i32 14, i32 19
  %2 = ptrtoint ptr %rx_bytes_read.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %rx_bytes_read.i, align 1
  %total_tx_len.i = getelementptr inbounds %struct.qup_i2c_dev, ptr %qup, i32 0, i32 14, i32 6
  %3 = ptrtoint ptr %total_tx_len.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %total_tx_len.i, align 4
  %out_fifo_sz.i = getelementptr inbounds %struct.qup_i2c_dev, ptr %qup, i32 0, i32 7
  %5 = ptrtoint ptr %out_fifo_sz.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %out_fifo_sz.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %6)
  %cmp.i = icmp sgt i32 %4, %6
  %is_tx_blk_mode.i = getelementptr inbounds %struct.qup_i2c_dev, ptr %qup, i32 0, i32 14, i32 20
  %frombool.i = zext i1 %cmp.i to i8
  %7 = ptrtoint ptr %is_tx_blk_mode.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %frombool.i, ptr %is_tx_blk_mode.i, align 4
  %total_rx_len.i = getelementptr inbounds %struct.qup_i2c_dev, ptr %qup, i32 0, i32 14, i32 7
  %8 = ptrtoint ptr %total_rx_len.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %total_rx_len.i, align 4
  %in_fifo_sz.i = getelementptr inbounds %struct.qup_i2c_dev, ptr %qup, i32 0, i32 8
  %10 = ptrtoint ptr %in_fifo_sz.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %in_fifo_sz.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp2.i = icmp sgt i32 %9, %11
  %is_rx_blk_mode.i = getelementptr inbounds %struct.qup_i2c_dev, ptr %qup, i32 0, i32 14, i32 21
  %frombool3.i = zext i1 %cmp2.i to i8
  %12 = ptrtoint ptr %is_rx_blk_mode.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %frombool3.i, ptr %is_rx_blk_mode.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  %base.i = getelementptr inbounds %struct.qup_i2c_dev, ptr %qup, i32 0, i32 1
  %13 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base.i, align 4
  br i1 %cmp.i, label %if.then.i, label %do.body11.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i = getelementptr i8, ptr %14, i32 336
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #9, !srcloc !144
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !173
  tail call void @arm_heavy_mb() #9
  %15 = ptrtoint ptr %total_tx_len.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %total_tx_len.i, align 4
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #9
  %18 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base.i, align 4
  %add.ptr10.i = getelementptr i8, ptr %19, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i, i32 %17) #9, !srcloc !144
  br label %if.end.i

do.body11.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr15.i = getelementptr i8, ptr %14, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15.i, i32 0) #9, !srcloc !144
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !174
  tail call void @arm_heavy_mb() #9
  %20 = ptrtoint ptr %total_tx_len.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %total_tx_len.i, align 4
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #9
  %23 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %base.i, align 4
  %add.ptr21.i = getelementptr i8, ptr %24, i32 336
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21.i, i32 %22) #9, !srcloc !144
  br label %if.end.i

if.end.i:                                         ; preds = %do.body11.i, %if.then.i
  %io_mode.0.i = phi i32 [ 50176, %if.then.i ], [ 49152, %do.body11.i ]
  %25 = ptrtoint ptr %total_rx_len.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %total_rx_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool23.not.i = icmp eq i32 %26, 0
  br i1 %tobool23.not.i, label %if.end.i.qup_i2c_conf_v1.exit_crit_edge, label %if.then24.i

if.end.i.qup_i2c_conf_v1.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %qup_i2c_conf_v1.exit

if.then24.i:                                      ; preds = %if.end.i
  %27 = ptrtoint ptr %is_rx_blk_mode.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %is_rx_blk_mode.i, align 1, !range !152
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool26.not.i = icmp eq i8 %28, 0
  br i1 %tobool26.not.i, label %do.body41.i, label %if.then27.i

if.then27.i:                                      ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #11
  %or28.i = or i32 %io_mode.0.i, 4096
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !175
  tail call void @arm_heavy_mb() #9
  %29 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %base.i, align 4
  %add.ptr33.i = getelementptr i8, ptr %30, i32 520
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr33.i, i32 0) #9, !srcloc !144
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !176
  tail call void @arm_heavy_mb() #9
  %31 = ptrtoint ptr %total_rx_len.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %total_rx_len.i, align 4
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #9
  %34 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %base.i, align 4
  %add.ptr39.i = getelementptr i8, ptr %35, i32 512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr39.i, i32 %33) #9, !srcloc !144
  br label %qup_i2c_conf_v1.exit

do.body41.i:                                      ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !177
  tail call void @arm_heavy_mb() #9
  %36 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %base.i, align 4
  %add.ptr45.i = getelementptr i8, ptr %37, i32 512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr45.i, i32 0) #9, !srcloc !144
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !178
  tail call void @arm_heavy_mb() #9
  %38 = ptrtoint ptr %total_rx_len.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %total_rx_len.i, align 4
  %40 = tail call i32 @llvm.bswap.i32(i32 %39) #9
  %41 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %base.i, align 4
  %add.ptr51.i = getelementptr i8, ptr %42, i32 520
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr51.i, i32 %40) #9, !srcloc !144
  br label %qup_i2c_conf_v1.exit

qup_i2c_conf_v1.exit:                             ; preds = %do.body41.i, %if.then27.i, %if.end.i.qup_i2c_conf_v1.exit_crit_edge
  %qup_config.0.i = phi i32 [ 527, %if.then27.i ], [ 527, %do.body41.i ], [ 655, %if.end.i.qup_i2c_conf_v1.exit_crit_edge ]
  %io_mode.1.i = phi i32 [ %or28.i, %if.then27.i ], [ %io_mode.0.i, %do.body41.i ], [ %io_mode.0.i, %if.end.i.qup_i2c_conf_v1.exit_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !179
  tail call void @arm_heavy_mb() #9
  %43 = tail call i32 @llvm.bswap.i32(i32 %qup_config.0.i) #9
  %44 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %base.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %45, i32 %43) #9, !srcloc !144
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !180
  tail call void @arm_heavy_mb() #9
  %46 = tail call i32 @llvm.bswap.i32(i32 %io_mode.1.i) #9
  %47 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %base.i, align 4
  %add.ptr65.i = getelementptr i8, ptr %48, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr65.i, i32 %46) #9, !srcloc !144
  %call = tail call fastcc i32 @qup_i2c_change_state(ptr noundef %qup, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.body, label %qup_i2c_conf_v1.exit.cleanup_crit_edge

qup_i2c_conf_v1.exit.cleanup_crit_edge:           ; preds = %qup_i2c_conf_v1.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %qup_i2c_conf_v1.exit
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !181
  tail call void @arm_heavy_mb() #9
  %clk_ctl = getelementptr inbounds %struct.qup_i2c_dev, ptr %qup, i32 0, i32 6
  %49 = ptrtoint ptr %clk_ctl to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %clk_ctl, align 8
  %51 = tail call i32 @llvm.bswap.i32(i32 %50)
  %52 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %base.i, align 4
  %add.ptr = getelementptr i8, ptr %53, i32 1024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %51) #9, !srcloc !144
  %call2 = tail call fastcc i32 @qup_i2c_change_state(ptr noundef %qup, i32 noundef 3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %do.body
  %xfer = getelementptr inbounds %struct.qup_i2c_dev, ptr %qup, i32 0, i32 31
  %54 = ptrtoint ptr %xfer to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 0, ptr %xfer, align 4
  %irq = getelementptr inbounds %struct.qup_i2c_dev, ptr %qup, i32 0, i32 2
  %55 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %irq, align 8
  tail call void @enable_irq(i32 noundef %56) #9
  %57 = ptrtoint ptr %is_tx_blk_mode.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %is_tx_blk_mode.i, align 4, !range !152
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %tobool6.not = icmp eq i8 %58, 0
  br i1 %tobool6.not, label %if.then7, label %if.end5.if.end11_crit_edge

if.end5.if.end11_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.then7:                                         ; preds = %if.end5
  %59 = ptrtoint ptr %out_fifo_sz.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %out_fifo_sz.i, align 4
  %61 = ptrtoint ptr %tx_fifo_free.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %tx_fifo_free.i, align 4
  br i1 %is_rx, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  %msg1.i = getelementptr inbounds %struct.qup_i2c_dev, ptr %qup, i32 0, i32 15
  %62 = ptrtoint ptr %msg1.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %msg1.i, align 4
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %63, align 4
  %conv.i.i = zext i16 %65 to i32
  %shl.i.i = shl nuw nsw i32 %conv.i.i, 1
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %63, i32 0, i32 1
  %66 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %flags.i.i, align 2
  %68 = and i16 %67, 1
  %69 = zext i16 %68 to i32
  %len2.i = getelementptr inbounds %struct.i2c_msg, ptr %63, i32 0, i32 2
  %70 = ptrtoint ptr %len2.i to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %len2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %71)
  %cmp.i46 = icmp eq i16 %71, 256
  %72 = or i16 %71, 1024
  %phi.bo.i = zext i16 %72 to i32
  %phi.bo12.i = shl nuw i32 %phi.bo.i, 16
  %phi.bo13.i = or i32 %phi.bo12.i, 256
  %cond.i = select i1 %cmp.i46, i32 67109120, i32 %phi.bo13.i
  %shl.i.masked.i = and i32 %shl.i.i, 254
  %conv.i = or i32 %shl.i.masked.i, %69
  %or8.i = or i32 %conv.i, %cond.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !164
  tail call void @arm_heavy_mb() #9
  %73 = tail call i32 @llvm.bswap.i32(i32 %or8.i) #9
  %74 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %base.i, align 4
  %add.ptr.i48 = getelementptr i8, ptr %75, i32 272
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i48, i32 %73) #9, !srcloc !144
  br label %if.end11

if.else:                                          ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @qup_i2c_write_tx_fifo_v1(ptr noundef %qup)
  br label %if.end11

if.end11:                                         ; preds = %if.else, %if.then9, %if.end5.if.end11_crit_edge
  %call12 = tail call fastcc i32 @qup_i2c_change_state(ptr noundef %qup, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.end11.err_crit_edge

if.end11.err_crit_edge:                           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

if.end15:                                         ; preds = %if.end11
  %xfer_timeout.i = getelementptr inbounds %struct.qup_i2c_dev, ptr %qup, i32 0, i32 13
  %76 = ptrtoint ptr %xfer_timeout.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %xfer_timeout.i, align 4
  %call.i = tail call i32 @wait_for_completion_timeout(ptr noundef %xfer, i32 noundef %77) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %do.body.i, label %if.end15.if.end.i51_crit_edge

if.end15.if.end.i51_crit_edge:                    ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i51

do.body.i:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !182
  tail call void @arm_heavy_mb() #9
  %78 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %base.i, align 4
  %add.ptr.i50 = getelementptr i8, ptr %79, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i50, i32 16777216) #9, !srcloc !144
  br label %if.end.i51

if.end.i51:                                       ; preds = %do.body.i, %if.end15.if.end.i51_crit_edge
  %ret.0.i = phi i32 [ 0, %if.end15.if.end.i51_crit_edge ], [ -110, %do.body.i ]
  %bus_err.i = getelementptr inbounds %struct.qup_i2c_dev, ptr %qup, i32 0, i32 17
  %80 = ptrtoint ptr %bus_err.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %bus_err.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %tobool1.not.i = icmp eq i32 %81, 0
  br i1 %tobool1.not.i, label %lor.lhs.false.i, label %if.end.i51.qup_i2c_wait_for_complete.exit.thread_crit_edge

if.end.i51.qup_i2c_wait_for_complete.exit.thread_crit_edge: ; preds = %if.end.i51
  call void @__sanitizer_cov_trace_pc() #11
  br label %qup_i2c_wait_for_complete.exit.thread

lor.lhs.false.i:                                  ; preds = %if.end.i51
  %qup_err.i = getelementptr inbounds %struct.qup_i2c_dev, ptr %qup, i32 0, i32 18
  %82 = ptrtoint ptr %qup_err.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %qup_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %tobool2.not.i = icmp eq i32 %83, 0
  br i1 %tobool2.not.i, label %qup_i2c_wait_for_complete.exit, label %lor.lhs.false.i.qup_i2c_wait_for_complete.exit.thread_crit_edge

lor.lhs.false.i.qup_i2c_wait_for_complete.exit.thread_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %qup_i2c_wait_for_complete.exit.thread

qup_i2c_wait_for_complete.exit.thread:            ; preds = %lor.lhs.false.i.qup_i2c_wait_for_complete.exit.thread_crit_edge, %if.end.i51.qup_i2c_wait_for_complete.exit.thread_crit_edge
  %and.i = and i32 %81, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool5.not.i = icmp eq i32 %and.i, 0
  %cond.i52 = select i1 %tobool5.not.i, i32 -5, i32 -6
  br label %err

qup_i2c_wait_for_complete.exit:                   ; preds = %lor.lhs.false.i
  br i1 %tobool.not.i, label %qup_i2c_wait_for_complete.exit.err_crit_edge, label %if.end19

qup_i2c_wait_for_complete.exit.err_crit_edge:     ; preds = %qup_i2c_wait_for_complete.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

if.end19:                                         ; preds = %qup_i2c_wait_for_complete.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %84 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %84, 4
  %85 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %base.i, align 4
  %add.ptr1.i = getelementptr i8, ptr %86, i32 1028
  %87 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i) #9, !srcloc !145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !183
  %88 = and i32 %87, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %tobool.not2.i = icmp eq i32 %88, 0
  br i1 %tobool.not2.i, label %if.end19.err_crit_edge, label %if.end19.if.end.i57_crit_edge

if.end19.if.end.i57_crit_edge:                    ; preds = %if.end19
  br label %if.end.i57

if.end19.err_crit_edge:                           ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

if.end.i57:                                       ; preds = %if.end.i57.if.end.i57_crit_edge, %if.end19.if.end.i57_crit_edge
  %ret.03.i = phi i32 [ %spec.select.i, %if.end.i57.if.end.i57_crit_edge ], [ 0, %if.end19.if.end.i57_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %89 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %89
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i54 = icmp slt i32 %sub.i, 0
  %spec.select.i = select i1 %cmp.i54, i32 -110, i32 %ret.03.i
  tail call void @usleep_range_state(i32 noundef 1, i32 noundef 2, i32 noundef 2) #9
  %90 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %base.i, align 4
  %add.ptr.i55 = getelementptr i8, ptr %91, i32 1028
  %92 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i55) #9, !srcloc !145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !183
  %93 = and i32 %92, 65536
  %tobool.not.i56 = icmp eq i32 %93, 0
  br i1 %tobool.not.i56, label %if.end.i57.err_crit_edge, label %if.end.i57.if.end.i57_crit_edge

if.end.i57.if.end.i57_crit_edge:                  ; preds = %if.end.i57
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i57

if.end.i57.err_crit_edge:                         ; preds = %if.end.i57
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

err:                                              ; preds = %if.end.i57.err_crit_edge, %if.end19.err_crit_edge, %qup_i2c_wait_for_complete.exit.err_crit_edge, %qup_i2c_wait_for_complete.exit.thread, %if.end11.err_crit_edge
  %ret.0 = phi i32 [ %call12, %if.end11.err_crit_edge ], [ %ret.0.i, %qup_i2c_wait_for_complete.exit.err_crit_edge ], [ %cond.i52, %qup_i2c_wait_for_complete.exit.thread ], [ 0, %if.end19.err_crit_edge ], [ %spec.select.i, %if.end.i57.err_crit_edge ]
  %94 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %irq, align 8
  tail call void @disable_irq(i32 noundef %95) #9
  br label %cleanup

cleanup:                                          ; preds = %err, %do.body.cleanup_crit_edge, %qup_i2c_conf_v1.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %err ], [ %call, %qup_i2c_conf_v1.exit.cleanup_crit_edge ], [ %call2, %do.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qup_i2c_xfer_v2(ptr nocapture noundef readonly %adap, ptr noundef %msgs, i32 noundef %num) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %bus_err = getelementptr inbounds %struct.qup_i2c_dev, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %bus_err to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %bus_err, align 4
  %qup_err = getelementptr inbounds %struct.qup_i2c_dev, ptr %1, i32 0, i32 18
  %3 = ptrtoint ptr %qup_err to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %qup_err, align 8
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %5, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num)
  %cmp2.i = icmp sgt i32 %num, 0
  br i1 %cmp2.i, label %if.end.for.body.i_crit_edge, label %if.end.land.lhs.true.i_crit_edge

if.end.land.lhs.true.i_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true.i

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %idx.07.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end.for.body.i_crit_edge ]
  %no_dma.0.off06.i = phi i1 [ %spec.select.i, %for.body.i.for.body.i_crit_edge ], [ false, %if.end.for.body.i_crit_edge ]
  %total_len.05.i = phi i32 [ %add.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end.for.body.i_crit_edge ]
  %max_rx_len.04.i = phi i32 [ %max_rx_len.1.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end.for.body.i_crit_edge ]
  %max_tx_len.03.i = phi i32 [ %max_tx_len.1.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end.for.body.i_crit_edge ]
  %flags.i = getelementptr %struct.i2c_msg, ptr %msgs, i32 %idx.07.i, i32 1
  %6 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %flags.i, align 2
  %8 = and i16 %7, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool.not.i = icmp eq i16 %8, 0
  %len6.i = getelementptr %struct.i2c_msg, ptr %msgs, i32 %idx.07.i, i32 2
  %9 = ptrtoint ptr %len6.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %len6.i, align 4
  %conv7.i = zext i16 %10 to i32
  %11 = tail call i32 @llvm.umax.i32(i32 %max_rx_len.04.i, i32 %conv7.i) #9
  %12 = tail call i32 @llvm.umax.i32(i32 %max_tx_len.03.i, i32 %conv7.i) #9
  %max_tx_len.1.i = select i1 %tobool.not.i, i32 %12, i32 %max_tx_len.03.i
  %max_rx_len.1.i = select i1 %tobool.not.i, i32 %max_rx_len.04.i, i32 %11
  %buf.i = getelementptr %struct.i2c_msg, ptr %msgs, i32 %idx.07.i, i32 3
  %13 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %buf.i, align 4
  %call.i94 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %14) #9
  %spec.select.i = select i1 %call.i94, i1 true, i1 %no_dma.0.off06.i
  %15 = ptrtoint ptr %len6.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %len6.i, align 4
  %conv20.i = zext i16 %16 to i32
  %add.i = add i32 %total_len.05.i, %conv20.i
  %inc.i = add nuw nsw i32 %idx.07.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %num
  br i1 %exitcond.not.i, label %for.end.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  br i1 %spec.select.i, label %for.end.i.if.else30.i_crit_edge, label %for.end.i.land.lhs.true.i_crit_edge

for.end.i.land.lhs.true.i_crit_edge:              ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true.i

for.end.i.if.else30.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else30.i

land.lhs.true.i:                                  ; preds = %for.end.i.land.lhs.true.i_crit_edge, %if.end.land.lhs.true.i_crit_edge
  %total_len.0.lcssa20.i = phi i32 [ %add.i, %for.end.i.land.lhs.true.i_crit_edge ], [ 0, %if.end.land.lhs.true.i_crit_edge ]
  %max_rx_len.0.lcssa18.i = phi i32 [ %max_rx_len.1.i, %for.end.i.land.lhs.true.i_crit_edge ], [ 0, %if.end.land.lhs.true.i_crit_edge ]
  %max_tx_len.0.lcssa16.i = phi i32 [ %max_tx_len.1.i, %for.end.i.land.lhs.true.i_crit_edge ], [ 0, %if.end.land.lhs.true.i_crit_edge ]
  %is_dma.i = getelementptr inbounds %struct.qup_i2c_dev, ptr %1, i32 0, i32 22
  %17 = ptrtoint ptr %is_dma.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %is_dma.i, align 4, !range !152
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool22.not.i = icmp eq i8 %18, 0
  br i1 %tobool22.not.i, label %land.lhs.true.i.if.else30.i_crit_edge, label %land.lhs.true24.i

land.lhs.true.i.if.else30.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else30.i

land.lhs.true24.i:                                ; preds = %land.lhs.true.i
  %out_fifo_sz.i = getelementptr inbounds %struct.qup_i2c_dev, ptr %1, i32 0, i32 7
  %19 = ptrtoint ptr %out_fifo_sz.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %out_fifo_sz.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %total_len.0.lcssa20.i, i32 %20)
  %cmp25.i = icmp ugt i32 %total_len.0.lcssa20.i, %20
  br i1 %cmp25.i, label %land.lhs.true24.i.if.then29.i_crit_edge, label %lor.lhs.false.i

land.lhs.true24.i.if.then29.i_crit_edge:          ; preds = %land.lhs.true24.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then29.i

lor.lhs.false.i:                                  ; preds = %land.lhs.true24.i
  %in_fifo_sz.i = getelementptr inbounds %struct.qup_i2c_dev, ptr %1, i32 0, i32 8
  %21 = ptrtoint ptr %in_fifo_sz.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %in_fifo_sz.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %total_len.0.lcssa20.i, i32 %22)
  %cmp27.i = icmp ugt i32 %total_len.0.lcssa20.i, %22
  br i1 %cmp27.i, label %lor.lhs.false.i.if.then29.i_crit_edge, label %lor.lhs.false.i.if.else30.i_crit_edge

lor.lhs.false.i.if.else30.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else30.i

lor.lhs.false.i.if.then29.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then29.i

if.then29.i:                                      ; preds = %lor.lhs.false.i.if.then29.i_crit_edge, %land.lhs.true24.i.if.then29.i_crit_edge
  %use_dma.i = getelementptr inbounds %struct.qup_i2c_dev, ptr %1, i32 0, i32 23
  %23 = ptrtoint ptr %use_dma.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %use_dma.i, align 1
  br label %qup_i2c_determine_mode_v2.exit

if.else30.i:                                      ; preds = %lor.lhs.false.i.if.else30.i_crit_edge, %land.lhs.true.i.if.else30.i_crit_edge, %for.end.i.if.else30.i_crit_edge
  %max_rx_len.0.lcssa19.i = phi i32 [ %max_rx_len.0.lcssa18.i, %lor.lhs.false.i.if.else30.i_crit_edge ], [ %max_rx_len.0.lcssa18.i, %land.lhs.true.i.if.else30.i_crit_edge ], [ %max_rx_len.1.i, %for.end.i.if.else30.i_crit_edge ]
  %max_tx_len.0.lcssa17.i = phi i32 [ %max_tx_len.0.lcssa16.i, %lor.lhs.false.i.if.else30.i_crit_edge ], [ %max_tx_len.0.lcssa16.i, %land.lhs.true.i.if.else30.i_crit_edge ], [ %max_tx_len.1.i, %for.end.i.if.else30.i_crit_edge ]
  %out_fifo_sz31.i = getelementptr inbounds %struct.qup_i2c_dev, ptr %1, i32 0, i32 7
  %24 = ptrtoint ptr %out_fifo_sz31.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %out_fifo_sz31.i, align 4
  %sub.i = add i32 %25, -4
  call void @__sanitizer_cov_trace_cmp4(i32 %max_tx_len.0.lcssa17.i, i32 %sub.i)
  %cmp32.i = icmp ugt i32 %max_tx_len.0.lcssa17.i, %sub.i
  %is_tx_blk_mode.i = getelementptr inbounds %struct.qup_i2c_dev, ptr %1, i32 0, i32 14, i32 20
  %frombool.i = zext i1 %cmp32.i to i8
  %26 = ptrtoint ptr %is_tx_blk_mode.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %frombool.i, ptr %is_tx_blk_mode.i, align 4
  %in_fifo_sz34.i = getelementptr inbounds %struct.qup_i2c_dev, ptr %1, i32 0, i32 8
  %27 = ptrtoint ptr %in_fifo_sz34.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %in_fifo_sz34.i, align 8
  %sub35.i = add i32 %28, -2
  call void @__sanitizer_cov_trace_cmp4(i32 %max_rx_len.0.lcssa19.i, i32 %sub35.i)
  %cmp36.i = icmp ugt i32 %max_rx_len.0.lcssa19.i, %sub35.i
  %is_rx_blk_mode.i = getelementptr inbounds %struct.qup_i2c_dev, ptr %1, i32 0, i32 14, i32 21
  %frombool39.i = zext i1 %cmp36.i to i8
  %29 = ptrtoint ptr %is_rx_blk_mode.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %frombool39.i, ptr %is_rx_blk_mode.i, align 1
  br label %qup_i2c_determine_mode_v2.exit

qup_i2c_determine_mode_v2.exit:                   ; preds = %if.else30.i, %if.then29.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !184
  tail call void @arm_heavy_mb() #9
  %base = getelementptr inbounds %struct.qup_i2c_dev, ptr %1, i32 0, i32 1
  %30 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %31, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 16777216) #9, !srcloc !144
  %32 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %base, align 4
  %add.ptr.i.i = getelementptr i8, ptr %33, i32 4
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !146
  %35 = and i32 %34, 117440512
  call void @__sanitizer_cov_trace_const_cmp4(i32 67108864, i32 %35)
  %36 = icmp eq i32 %35, 67108864
  br i1 %36, label %qup_i2c_determine_mode_v2.exit.do.body9_crit_edge, label %if.end.i.i

qup_i2c_determine_mode_v2.exit.do.body9_crit_edge: ; preds = %qup_i2c_determine_mode_v2.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body9

if.end.i.i:                                       ; preds = %qup_i2c_determine_mode_v2.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %37 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %37(i32 noundef 214748) #9
  %38 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %base, align 4
  %add.ptr.1.i.i = getelementptr i8, ptr %39, i32 4
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.1.i.i) #9, !srcloc !145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !146
  %41 = and i32 %40, 117440512
  call void @__sanitizer_cov_trace_const_cmp4(i32 67108864, i32 %41)
  %42 = icmp eq i32 %41, 67108864
  br i1 %42, label %if.end.i.i.do.body9_crit_edge, label %qup_i2c_poll_state.exit

if.end.i.i.do.body9_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body9

qup_i2c_poll_state.exit:                          ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %43 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %43(i32 noundef 214748) #9
  br label %out

do.body9:                                         ; preds = %if.end.i.i.do.body9_crit_edge, %qup_i2c_determine_mode_v2.exit.do.body9_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !185
  tail call void @arm_heavy_mb() #9
  %44 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %45, i32 117571584) #9, !srcloc !144
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !186
  tail call void @arm_heavy_mb() #9
  %46 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %base, align 4
  %add.ptr18 = getelementptr i8, ptr %47, i32 1032
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18, i32 16777216) #9, !srcloc !144
  %48 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %base, align 4
  %add.ptr.i.i96 = getelementptr i8, ptr %49, i32 4
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i96) #9, !srcloc !145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !146
  %51 = and i32 %50, 335544320
  call void @__sanitizer_cov_trace_const_cmp4(i32 335544320, i32 %51)
  %52 = icmp eq i32 %51, 335544320
  br i1 %52, label %do.body9.if.end22_crit_edge, label %if.end.i.i98

do.body9.if.end22_crit_edge:                      ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

if.end.i.i98:                                     ; preds = %do.body9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %53 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %53(i32 noundef 214748) #9
  %54 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %base, align 4
  %add.ptr.1.i.i97 = getelementptr i8, ptr %55, i32 4
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.1.i.i97) #9, !srcloc !145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !146
  %57 = and i32 %56, 335544320
  call void @__sanitizer_cov_trace_const_cmp4(i32 335544320, i32 %57)
  %58 = icmp eq i32 %57, 335544320
  br i1 %58, label %if.end.i.i98.if.end22_crit_edge, label %qup_i2c_poll_state_i2c_master.exit

if.end.i.i98.if.end22_crit_edge:                  ; preds = %if.end.i.i98
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

qup_i2c_poll_state_i2c_master.exit:               ; preds = %if.end.i.i98
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %59 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %59(i32 noundef 214748) #9
  br label %out

if.end22:                                         ; preds = %if.end.i.i98.if.end22_crit_edge, %do.body9.if.end22_crit_edge
  %use_dma = getelementptr inbounds %struct.qup_i2c_dev, ptr %1, i32 0, i32 23
  %60 = ptrtoint ptr %use_dma to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %use_dma, align 1, !range !152
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool23.not = icmp eq i8 %61, 0
  br i1 %tobool23.not, label %if.else, label %if.then24

if.then24:                                        ; preds = %if.end22
  %xfer = getelementptr inbounds %struct.qup_i2c_dev, ptr %1, i32 0, i32 31
  %62 = ptrtoint ptr %xfer to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 0, ptr %xfer, align 4
  %63 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %driver_data.i.i, align 4
  %irq.i = getelementptr inbounds %struct.qup_i2c_dev, ptr %64, i32 0, i32 2
  %65 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %irq.i, align 8
  tail call void @enable_irq(i32 noundef %66) #9
  %call1.i = tail call fastcc i32 @qup_i2c_req_dma(ptr noundef %64) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i101 = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i101, label %do.body.i, label %if.then24.qup_i2c_bam_xfer.exit_crit_edge

if.then24.qup_i2c_bam_xfer.exit_crit_edge:        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #11
  br label %qup_i2c_bam_xfer.exit

do.body.i:                                        ; preds = %if.then24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !187
  tail call void @arm_heavy_mb() #9
  %base.i = getelementptr inbounds %struct.qup_i2c_dev, ptr %64, i32 0, i32 1
  %67 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %68, i32 512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #9, !srcloc !144
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !188
  tail call void @arm_heavy_mb() #9
  %69 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %base.i, align 4
  %add.ptr6.i = getelementptr i8, ptr %70, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i, i32 0) #9, !srcloc !144
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !189
  tail call void @arm_heavy_mb() #9
  %71 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %base.i, align 4
  %add.ptr11.i = getelementptr i8, ptr %72, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11.i, i32 16515072) #9, !srcloc !144
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !190
  tail call void @arm_heavy_mb() #9
  %73 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %base.i, align 4
  %add.ptr16.i = getelementptr i8, ptr %74, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16.i, i32 196608) #9, !srcloc !144
  %call17.i = tail call fastcc i32 @qup_i2c_change_state(ptr noundef %64, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %tobool18.not.i = icmp eq i32 %call17.i, 0
  br i1 %tobool18.not.i, label %do.body21.i, label %do.body.i.qup_i2c_bam_xfer.exit_crit_edge

do.body.i.qup_i2c_bam_xfer.exit_crit_edge:        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %qup_i2c_bam_xfer.exit

do.body21.i:                                      ; preds = %do.body.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !191
  tail call void @arm_heavy_mb() #9
  %clk_ctl.i = getelementptr inbounds %struct.qup_i2c_dev, ptr %64, i32 0, i32 6
  %75 = ptrtoint ptr %clk_ctl.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %clk_ctl.i, align 8
  %77 = tail call i32 @llvm.bswap.i32(i32 %76) #9
  %78 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %base.i, align 4
  %add.ptr25.i = getelementptr i8, ptr %79, i32 1024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25.i, i32 %77) #9, !srcloc !144
  %sg_cnt.i.i = getelementptr inbounds %struct.qup_i2c_dev, ptr %64, i32 0, i32 30, i32 3
  %80 = ptrtoint ptr %sg_cnt.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 0, ptr %sg_cnt.i.i, align 4
  %sg_cnt1.i.i = getelementptr inbounds %struct.qup_i2c_dev, ptr %64, i32 0, i32 29, i32 3
  %81 = ptrtoint ptr %sg_cnt1.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 0, ptr %sg_cnt1.i.i, align 8
  %tag_buf_pos.i.i = getelementptr inbounds %struct.qup_i2c_dev, ptr %64, i32 0, i32 25
  %82 = ptrtoint ptr %tag_buf_pos.i.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 0, ptr %tag_buf_pos.i.i, align 4
  br i1 %cmp2.i, label %for.body.lr.ph.i, label %do.body21.i.qup_i2c_bam_xfer.exit_crit_edge

do.body21.i.qup_i2c_bam_xfer.exit_crit_edge:      ; preds = %do.body21.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %qup_i2c_bam_xfer.exit

for.body.lr.ph.i:                                 ; preds = %do.body21.i
  %msg27.i = getelementptr inbounds %struct.qup_i2c_dev, ptr %64, i32 0, i32 15
  %sub.i102 = add nsw i32 %num, -1
  %is_last.i = getelementptr inbounds %struct.qup_i2c_dev, ptr %64, i32 0, i32 19
  %blk_xfer_limit.i.i = getelementptr inbounds %struct.qup_i2c_dev, ptr %64, i32 0, i32 11
  %blk.i.i.i = getelementptr inbounds %struct.qup_i2c_dev, ptr %64, i32 0, i32 14
  %pos.i.i.i = getelementptr inbounds %struct.qup_i2c_dev, ptr %64, i32 0, i32 14, i32 1
  %data_len.i.i.i = getelementptr inbounds %struct.qup_i2c_dev, ptr %64, i32 0, i32 14, i32 4
  %start_tag.i.i = getelementptr inbounds %struct.qup_i2c_dev, ptr %64, i32 0, i32 28
  %brx.i.i = getelementptr inbounds %struct.qup_i2c_dev, ptr %64, i32 0, i32 29
  %sg.i.i = getelementptr inbounds %struct.qup_i2c_dev, ptr %64, i32 0, i32 29, i32 2
  %sg35.i.i = getelementptr inbounds %struct.qup_i2c_dev, ptr %64, i32 0, i32 30, i32 2
  %max_xfer_sg_len.i = getelementptr inbounds %struct.qup_i2c_dev, ptr %64, i32 0, i32 24
  %btx.i123.i = getelementptr inbounds %struct.qup_i2c_dev, ptr %64, i32 0, i32 30
  %dma.i.i = getelementptr inbounds %struct.qup_i2c_dev, ptr %64, i32 0, i32 30, i32 1
  %dma49.i.i = getelementptr inbounds %struct.qup_i2c_dev, ptr %64, i32 0, i32 29, i32 1
  %xfer.i.i = getelementptr inbounds %struct.qup_i2c_dev, ptr %64, i32 0, i32 31
  %xfer_timeout.i.i = getelementptr inbounds %struct.qup_i2c_dev, ptr %64, i32 0, i32 13
  %bus_err.i.i = getelementptr inbounds %struct.qup_i2c_dev, ptr %64, i32 0, i32 17
  %qup_err.i.i = getelementptr inbounds %struct.qup_i2c_dev, ptr %64, i32 0, i32 18
  br label %for.body.i105

for.body.i105:                                    ; preds = %for.inc.i.for.body.i105_crit_edge, %for.body.lr.ph.i
  %idx.0139.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i109, %for.inc.i.for.body.i105_crit_edge ]
  %add.ptr26.i = getelementptr %struct.i2c_msg, ptr %msgs, i32 %idx.0139.i
  %83 = ptrtoint ptr %msg27.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %add.ptr26.i, ptr %msg27.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %idx.0139.i, i32 %sub.i102)
  %cmp28.i = icmp eq i32 %idx.0139.i, %sub.i102
  %frombool.i103 = zext i1 %cmp28.i to i8
  %84 = ptrtoint ptr %is_last.i to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 %frombool.i103, ptr %is_last.i, align 4
  %85 = ptrtoint ptr %blk_xfer_limit.i.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 256, ptr %blk_xfer_limit.i.i, align 4
  %86 = ptrtoint ptr %pos.i.i.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 0, ptr %pos.i.i.i, align 4
  %len.i.i.i = getelementptr %struct.i2c_msg, ptr %msgs, i32 %idx.0139.i, i32 2
  %87 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %len.i.i.i, align 4
  %conv.i.i.i = zext i16 %88 to i32
  %89 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %conv.i.i.i, ptr %data_len.i.i.i, align 8
  %90 = load i16, ptr %len.i.i.i, align 4
  %conv3.i.i.i = zext i16 %90 to i32
  %sub.i.i.i = add nuw nsw i32 %conv3.i.i.i, 255
  %div.i301302.i.i = lshr i32 %sub.i.i.i, 8
  %91 = ptrtoint ptr %blk.i.i.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %div.i301302.i.i, ptr %blk.i.i.i, align 8
  %92 = load i16, ptr %len.i.i.i, align 4
  %conv.i.i = zext i16 %92 to i32
  %sub.i.i = add nsw i32 %div.i301302.i.i, -1
  %mul.neg.i.i = mul nsw i32 %sub.i.i, -256
  %sub2.i.i = add nsw i32 %mul.neg.i.i, %conv.i.i
  %flags.i.i = getelementptr %struct.i2c_msg, ptr %msgs, i32 %idx.0139.i, i32 1
  %93 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %flags.i.i, align 2
  %95 = and i16 %94, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %95)
  %tobool.not.i.i104 = icmp eq i16 %95, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %90)
  %cmp53321.i.not.i = icmp eq i16 %90, 0
  br i1 %tobool.not.i.i104, label %while.cond50.preheader.i.i, label %while.cond.preheader.i.i

while.cond.preheader.i.i:                         ; preds = %for.body.i105
  br i1 %cmp53321.i.not.i, label %while.cond.preheader.i.i.while.end.i.i_crit_edge, label %while.body.lr.ph.i.i

while.cond.preheader.i.i.while.end.i.i_crit_edge: ; preds = %while.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i.i

while.body.lr.ph.i.i:                             ; preds = %while.cond.preheader.i.i
  %buf.i.i = getelementptr %struct.i2c_msg, ptr %msgs, i32 %idx.0139.i, i32 3
  br label %while.body.i.i

while.cond50.preheader.i.i:                       ; preds = %for.body.i105
  br i1 %cmp53321.i.not.i, label %while.cond50.preheader.i.i.if.end33.i_crit_edge, label %while.body55.lr.ph.i.i

while.cond50.preheader.i.i.if.end33.i_crit_edge:  ; preds = %while.cond50.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33.i

while.body55.lr.ph.i.i:                           ; preds = %while.cond50.preheader.i.i
  %buf89.i.i = getelementptr %struct.i2c_msg, ptr %msgs, i32 %idx.0139.i, i32 3
  br label %while.body55.i.i

while.body.i.i:                                   ; preds = %if.end31.i.i.while.body.i.i_crit_edge, %while.body.lr.ph.i.i
  %i.0320.i.i = phi i32 [ 0, %while.body.lr.ph.i.i ], [ %inc32.i.i, %if.end31.i.i.while.body.i.i_crit_edge ]
  %len.0319.i.i = phi i32 [ 0, %while.body.lr.ph.i.i ], [ %add9.i.i, %if.end31.i.i.while.body.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0320.i.i, i32 %sub.i.i)
  %cmp7.i.i = icmp eq i32 %i.0320.i.i, %sub.i.i
  %sub2..i.i = select i1 %cmp7.i.i, i32 %sub2.i.i, i32 256
  %96 = ptrtoint ptr %start_tag.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %start_tag.i.i, align 8
  %98 = ptrtoint ptr %tag_buf_pos.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %tag_buf_pos.i.i, align 4
  %add.i.i = add i32 %99, %len.0319.i.i
  %arrayidx.i.i = getelementptr i8, ptr %97, i32 %add.i.i
  %call.i.i = tail call fastcc i32 @qup_i2c_set_tags(ptr noundef %arrayidx.i.i, ptr noundef %64, ptr noundef %add.ptr26.i) #9
  %add9.i.i = add i32 %call.i.i, %len.0319.i.i
  %100 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %data_len.i.i.i, align 8
  %sub11.i.i = sub i32 %101, %sub2..i.i
  store i32 %sub11.i.i, ptr %data_len.i.i.i, align 8
  %102 = ptrtoint ptr %sg.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %sg.i.i, align 4
  %104 = ptrtoint ptr %sg_cnt1.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %sg_cnt1.i.i, align 8
  %inc.i.i = add i32 %105, 1
  store i32 %inc.i.i, ptr %sg_cnt1.i.i, align 8
  %arrayidx13.i.i = getelementptr %struct.scatterlist, ptr %103, i32 %105
  %106 = ptrtoint ptr %brx.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %brx.i.i, align 8
  %108 = ptrtoint ptr %107 to i32
  %cmp.i.i.i.i = icmp ugt ptr %107, inttoptr (i32 -1073741825 to ptr)
  br i1 %cmp.i.i.i.i, label %land.lhs.true.i.i.i.i, label %while.body.i.i.do.body5.i.i.i.i_crit_edge, !prof !192

while.body.i.i.do.body5.i.i.i.i_crit_edge:        ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body5.i.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %while.body.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %109 = load ptr, ptr @high_memory, align 4
  %cmp1.i.i.i.i = icmp ugt ptr %109, %107
  br i1 %cmp1.i.i.i.i, label %land.rhs.i.i.i.i, label %land.lhs.true.i.i.i.i.do.body5.i.i.i.i_crit_edge, !prof !192

land.lhs.true.i.i.i.i.do.body5.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body5.i.i.i.i

land.rhs.i.i.i.i:                                 ; preds = %land.lhs.true.i.i.i.i
  %sub.i.i.i.i = add i32 %108, 1073741824
  %shr.i.i.i.i = lshr i32 %sub.i.i.i.i, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %110 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i.i.i.i = add i32 %110, %shr.i.i.i.i
  %call.i.i.i.i = tail call i32 @pfn_valid(i32 noundef %add.i.i.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool.i.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.i.i.i.i, label %land.rhs.i.i.i.i.do.body5.i.i.i.i_crit_edge, label %do.end8.i.i.i.i, !prof !193

land.rhs.i.i.i.i.do.body5.i.i.i.i_crit_edge:      ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body5.i.i.i.i

do.body5.i.i.i.i:                                 ; preds = %land.rhs.i.i.i.i.do.body5.i.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.do.body5.i.i.i.i_crit_edge, %while.body.i.i.do.body5.i.i.i.i_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 160, 0\0A.popsection", ""() #9, !srcloc !194
  unreachable

do.end8.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %111 = load ptr, ptr @mem_map, align 4
  %add.ptr.i.i.i.i = getelementptr %struct.page, ptr %111, i32 %shr.i.i.i.i
  %112 = ptrtoint ptr %arrayidx13.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %arrayidx13.i.i, align 4
  %114 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  %and2.i.i.i.i.i.i = and i32 %114, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i.i.i.i)
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %and2.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i, label %do.body11.i.i.i.i.i.i, label %do.body5.i.i.i.i.i.i, !prof !192

do.body5.i.i.i.i.i.i:                             ; preds = %do.end8.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #9, !srcloc !195
  unreachable

do.body11.i.i.i.i.i.i:                            ; preds = %do.end8.i.i.i.i
  %and.i.i.i.i.i.i.i = and i32 %113, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i.i.i)
  %tobool.i.not.i.i.i.i.i.i = icmp eq i32 %and.i.i.i.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i.i.i.i, label %qup_sg_set_buf.exit.i.i, label %do.body19.i.i.i.i.i.i, !prof !192

do.body19.i.i.i.i.i.i:                            ; preds = %do.body11.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #9, !srcloc !196
  unreachable

qup_sg_set_buf.exit.i.i:                          ; preds = %do.body11.i.i.i.i.i.i
  %and.i.i.i.i = and i32 %108, 4095
  %and.i.i.i.i.i.i = and i32 %113, 3
  %or.i.i.i.i.i.i = or i32 %and.i.i.i.i.i.i, %114
  %115 = ptrtoint ptr %arrayidx13.i.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %or.i.i.i.i.i.i, ptr %arrayidx13.i.i, align 4
  %offset1.i.i.i.i.i = getelementptr %struct.scatterlist, ptr %103, i32 %105, i32 1
  %116 = ptrtoint ptr %offset1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %and.i.i.i.i, ptr %offset1.i.i.i.i.i, align 4
  %length.i.i.i.i.i = getelementptr %struct.scatterlist, ptr %103, i32 %105, i32 2
  %117 = ptrtoint ptr %length.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 2, ptr %length.i.i.i.i.i, align 4
  %118 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %64, align 8
  %call.i.i.i = tail call i32 @dma_map_sg_attrs(ptr noundef %119, ptr noundef %arrayidx13.i.i, i32 noundef 1, i32 noundef 2, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.not.i.i, label %qup_sg_set_buf.exit.i.i.qup_i2c_bam_xfer.exit_crit_edge, label %if.end.i.i106

qup_sg_set_buf.exit.i.i.qup_i2c_bam_xfer.exit_crit_edge: ; preds = %qup_sg_set_buf.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %qup_i2c_bam_xfer.exit

if.end.i.i106:                                    ; preds = %qup_sg_set_buf.exit.i.i
  %120 = ptrtoint ptr %sg.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %sg.i.i, align 4
  %122 = ptrtoint ptr %sg_cnt1.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %sg_cnt1.i.i, align 8
  %inc24.i.i = add i32 %123, 1
  store i32 %inc24.i.i, ptr %sg_cnt1.i.i, align 8
  %arrayidx25.i.i = getelementptr %struct.scatterlist, ptr %121, i32 %123
  %124 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %buf.i.i, align 4
  %mul26.i.i = shl i32 %i.0320.i.i, 8
  %arrayidx27.i.i = getelementptr i8, ptr %125, i32 %mul26.i.i
  %126 = ptrtoint ptr %arrayidx27.i.i to i32
  %cmp.i.i189.i.i = icmp ugt ptr %arrayidx27.i.i, inttoptr (i32 -1073741825 to ptr)
  br i1 %cmp.i.i189.i.i, label %land.lhs.true.i.i191.i.i, label %if.end.i.i106.do.body5.i.i198.i.i_crit_edge, !prof !192

if.end.i.i106.do.body5.i.i198.i.i_crit_edge:      ; preds = %if.end.i.i106
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body5.i.i198.i.i

land.lhs.true.i.i191.i.i:                         ; preds = %if.end.i.i106
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %127 = load ptr, ptr @high_memory, align 4
  %cmp1.i.i190.i.i = icmp ugt ptr %127, %arrayidx27.i.i
  br i1 %cmp1.i.i190.i.i, label %land.rhs.i.i197.i.i, label %land.lhs.true.i.i191.i.i.do.body5.i.i198.i.i_crit_edge, !prof !192

land.lhs.true.i.i191.i.i.do.body5.i.i198.i.i_crit_edge: ; preds = %land.lhs.true.i.i191.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body5.i.i198.i.i

land.rhs.i.i197.i.i:                              ; preds = %land.lhs.true.i.i191.i.i
  %sub.i.i192.i.i = add i32 %126, 1073741824
  %shr.i.i193.i.i = lshr i32 %sub.i.i192.i.i, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %128 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i.i194.i.i = add i32 %128, %shr.i.i193.i.i
  %call.i.i195.i.i = tail call i32 @pfn_valid(i32 noundef %add.i.i194.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i195.i.i)
  %tobool.i.i196.i.i = icmp eq i32 %call.i.i195.i.i, 0
  br i1 %tobool.i.i196.i.i, label %land.rhs.i.i197.i.i.do.body5.i.i198.i.i_crit_edge, label %do.end8.i.i202.i.i, !prof !193

land.rhs.i.i197.i.i.do.body5.i.i198.i.i_crit_edge: ; preds = %land.rhs.i.i197.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body5.i.i198.i.i

do.body5.i.i198.i.i:                              ; preds = %land.rhs.i.i197.i.i.do.body5.i.i198.i.i_crit_edge, %land.lhs.true.i.i191.i.i.do.body5.i.i198.i.i_crit_edge, %if.end.i.i106.do.body5.i.i198.i.i_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 160, 0\0A.popsection", ""() #9, !srcloc !194
  unreachable

do.end8.i.i202.i.i:                               ; preds = %land.rhs.i.i197.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %129 = load ptr, ptr @mem_map, align 4
  %add.ptr.i.i199.i.i = getelementptr %struct.page, ptr %129, i32 %shr.i.i193.i.i
  %130 = ptrtoint ptr %arrayidx25.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %arrayidx25.i.i, align 4
  %132 = ptrtoint ptr %add.ptr.i.i199.i.i to i32
  %and2.i.i.i.i200.i.i = and i32 %132, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i.i200.i.i)
  %tobool.not.i.i.i.i201.i.i = icmp eq i32 %and2.i.i.i.i200.i.i, 0
  br i1 %tobool.not.i.i.i.i201.i.i, label %do.body11.i.i.i.i206.i.i, label %do.body5.i.i.i.i203.i.i, !prof !192

do.body5.i.i.i.i203.i.i:                          ; preds = %do.end8.i.i202.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #9, !srcloc !195
  unreachable

do.body11.i.i.i.i206.i.i:                         ; preds = %do.end8.i.i202.i.i
  %and.i.i.i.i.i204.i.i = and i32 %131, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i204.i.i)
  %tobool.i.not.i.i.i.i205.i.i = icmp eq i32 %and.i.i.i.i.i204.i.i, 0
  br i1 %tobool.i.not.i.i.i.i205.i.i, label %qup_sg_set_buf.exit216.i.i, label %do.body19.i.i.i.i207.i.i, !prof !192

do.body19.i.i.i.i207.i.i:                         ; preds = %do.body11.i.i.i.i206.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #9, !srcloc !196
  unreachable

qup_sg_set_buf.exit216.i.i:                       ; preds = %do.body11.i.i.i.i206.i.i
  %and.i.i208.i.i = and i32 %126, 4095
  %and.i.i.i.i209.i.i = and i32 %131, 3
  %or.i.i.i.i210.i.i = or i32 %and.i.i.i.i209.i.i, %132
  %133 = ptrtoint ptr %arrayidx25.i.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 %or.i.i.i.i210.i.i, ptr %arrayidx25.i.i, align 4
  %offset1.i.i.i211.i.i = getelementptr %struct.scatterlist, ptr %121, i32 %123, i32 1
  %134 = ptrtoint ptr %offset1.i.i.i211.i.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %and.i.i208.i.i, ptr %offset1.i.i.i211.i.i, align 4
  %length.i.i.i212.i.i = getelementptr %struct.scatterlist, ptr %121, i32 %123, i32 2
  %135 = ptrtoint ptr %length.i.i.i212.i.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 %sub2..i.i, ptr %length.i.i.i212.i.i, align 4
  %136 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %64, align 8
  %call.i213.i.i = tail call i32 @dma_map_sg_attrs(ptr noundef %137, ptr noundef %arrayidx25.i.i, i32 noundef 1, i32 noundef 2, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i213.i.i)
  %tobool.not.i214.not.i.i = icmp eq i32 %call.i213.i.i, 0
  br i1 %tobool.not.i214.not.i.i, label %qup_sg_set_buf.exit216.i.i.qup_i2c_bam_xfer.exit_crit_edge, label %if.end31.i.i

qup_sg_set_buf.exit216.i.i.qup_i2c_bam_xfer.exit_crit_edge: ; preds = %qup_sg_set_buf.exit216.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %qup_i2c_bam_xfer.exit

if.end31.i.i:                                     ; preds = %qup_sg_set_buf.exit216.i.i
  %inc32.i.i = add nuw nsw i32 %i.0320.i.i, 1
  %138 = ptrtoint ptr %pos.i.i.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 %inc32.i.i, ptr %pos.i.i.i, align 4
  %exitcond.not.i.i = icmp eq i32 %inc32.i.i, %div.i301302.i.i
  br i1 %exitcond.not.i.i, label %if.end31.i.i.while.end.i.i_crit_edge, label %if.end31.i.i.while.body.i.i_crit_edge

if.end31.i.i.while.body.i.i_crit_edge:            ; preds = %if.end31.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i.i

if.end31.i.i.while.end.i.i_crit_edge:             ; preds = %if.end31.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i.i

while.end.i.i:                                    ; preds = %if.end31.i.i.while.end.i.i_crit_edge, %while.cond.preheader.i.i.while.end.i.i_crit_edge
  %len.0.lcssa.i.i = phi i32 [ 0, %while.cond.preheader.i.i.while.end.i.i_crit_edge ], [ %add9.i.i, %if.end31.i.i.while.end.i.i_crit_edge ]
  %139 = ptrtoint ptr %sg35.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %sg35.i.i, align 4
  %141 = ptrtoint ptr %sg_cnt.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %sg_cnt.i.i, align 4
  %inc38.i.i = add i32 %142, 1
  store i32 %inc38.i.i, ptr %sg_cnt.i.i, align 4
  %arrayidx39.i.i = getelementptr %struct.scatterlist, ptr %140, i32 %142
  %143 = ptrtoint ptr %start_tag.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %start_tag.i.i, align 8
  %145 = ptrtoint ptr %tag_buf_pos.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %tag_buf_pos.i.i, align 4
  %arrayidx43.i.i = getelementptr i8, ptr %144, i32 %146
  %147 = ptrtoint ptr %arrayidx43.i.i to i32
  %cmp.i.i217.i.i = icmp ugt ptr %arrayidx43.i.i, inttoptr (i32 -1073741825 to ptr)
  br i1 %cmp.i.i217.i.i, label %land.lhs.true.i.i219.i.i, label %while.end.i.i.do.body5.i.i226.i.i_crit_edge, !prof !192

while.end.i.i.do.body5.i.i226.i.i_crit_edge:      ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body5.i.i226.i.i

land.lhs.true.i.i219.i.i:                         ; preds = %while.end.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %148 = load ptr, ptr @high_memory, align 4
  %cmp1.i.i218.i.i = icmp ugt ptr %148, %arrayidx43.i.i
  br i1 %cmp1.i.i218.i.i, label %land.rhs.i.i225.i.i, label %land.lhs.true.i.i219.i.i.do.body5.i.i226.i.i_crit_edge, !prof !192

land.lhs.true.i.i219.i.i.do.body5.i.i226.i.i_crit_edge: ; preds = %land.lhs.true.i.i219.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body5.i.i226.i.i

land.rhs.i.i225.i.i:                              ; preds = %land.lhs.true.i.i219.i.i
  %sub.i.i220.i.i = add i32 %147, 1073741824
  %shr.i.i221.i.i = lshr i32 %sub.i.i220.i.i, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %149 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i.i222.i.i = add i32 %149, %shr.i.i221.i.i
  %call.i.i223.i.i = tail call i32 @pfn_valid(i32 noundef %add.i.i222.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i223.i.i)
  %tobool.i.i224.i.i = icmp eq i32 %call.i.i223.i.i, 0
  br i1 %tobool.i.i224.i.i, label %land.rhs.i.i225.i.i.do.body5.i.i226.i.i_crit_edge, label %do.end8.i.i230.i.i, !prof !193

land.rhs.i.i225.i.i.do.body5.i.i226.i.i_crit_edge: ; preds = %land.rhs.i.i225.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body5.i.i226.i.i

do.body5.i.i226.i.i:                              ; preds = %land.rhs.i.i225.i.i.do.body5.i.i226.i.i_crit_edge, %land.lhs.true.i.i219.i.i.do.body5.i.i226.i.i_crit_edge, %while.end.i.i.do.body5.i.i226.i.i_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 160, 0\0A.popsection", ""() #9, !srcloc !194
  unreachable

do.end8.i.i230.i.i:                               ; preds = %land.rhs.i.i225.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %150 = load ptr, ptr @mem_map, align 4
  %add.ptr.i.i227.i.i = getelementptr %struct.page, ptr %150, i32 %shr.i.i221.i.i
  %151 = ptrtoint ptr %arrayidx39.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %arrayidx39.i.i, align 4
  %153 = ptrtoint ptr %add.ptr.i.i227.i.i to i32
  %and2.i.i.i.i228.i.i = and i32 %153, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i.i228.i.i)
  %tobool.not.i.i.i.i229.i.i = icmp eq i32 %and2.i.i.i.i228.i.i, 0
  br i1 %tobool.not.i.i.i.i229.i.i, label %do.body11.i.i.i.i234.i.i, label %do.body5.i.i.i.i231.i.i, !prof !192

do.body5.i.i.i.i231.i.i:                          ; preds = %do.end8.i.i230.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #9, !srcloc !195
  unreachable

do.body11.i.i.i.i234.i.i:                         ; preds = %do.end8.i.i230.i.i
  %and.i.i.i.i.i232.i.i = and i32 %152, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i232.i.i)
  %tobool.i.not.i.i.i.i233.i.i = icmp eq i32 %and.i.i.i.i.i232.i.i, 0
  br i1 %tobool.i.not.i.i.i.i233.i.i, label %qup_sg_set_buf.exit244.i.i, label %do.body19.i.i.i.i235.i.i, !prof !192

do.body19.i.i.i.i235.i.i:                         ; preds = %do.body11.i.i.i.i234.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #9, !srcloc !196
  unreachable

qup_sg_set_buf.exit244.i.i:                       ; preds = %do.body11.i.i.i.i234.i.i
  %and.i.i236.i.i = and i32 %147, 4095
  %and.i.i.i.i237.i.i = and i32 %152, 3
  %or.i.i.i.i238.i.i = or i32 %and.i.i.i.i237.i.i, %153
  %154 = ptrtoint ptr %arrayidx39.i.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 %or.i.i.i.i238.i.i, ptr %arrayidx39.i.i, align 4
  %offset1.i.i.i239.i.i = getelementptr %struct.scatterlist, ptr %140, i32 %142, i32 1
  %155 = ptrtoint ptr %offset1.i.i.i239.i.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 %and.i.i236.i.i, ptr %offset1.i.i.i239.i.i, align 4
  %length.i.i.i240.i.i = getelementptr %struct.scatterlist, ptr %140, i32 %142, i32 2
  %156 = ptrtoint ptr %length.i.i.i240.i.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 %len.0.lcssa.i.i, ptr %length.i.i.i240.i.i, align 4
  %157 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %64, align 8
  %call.i241.i.i = tail call i32 @dma_map_sg_attrs(ptr noundef %158, ptr noundef %arrayidx39.i.i, i32 noundef 1, i32 noundef 1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i241.i.i)
  %tobool.not.i242.not.i.i = icmp eq i32 %call.i241.i.i, 0
  br i1 %tobool.not.i242.not.i.i, label %qup_sg_set_buf.exit244.i.i.qup_i2c_bam_xfer.exit_crit_edge, label %qup_sg_set_buf.exit244.i.i.if.end33.i_crit_edge

qup_sg_set_buf.exit244.i.i.if.end33.i_crit_edge:  ; preds = %qup_sg_set_buf.exit244.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33.i

qup_sg_set_buf.exit244.i.i.qup_i2c_bam_xfer.exit_crit_edge: ; preds = %qup_sg_set_buf.exit244.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %qup_i2c_bam_xfer.exit

while.body55.i.i:                                 ; preds = %if.end95.i.i.while.body55.i.i_crit_edge, %while.body55.lr.ph.i.i
  %tx_len.0323.i.i = phi i32 [ 0, %while.body55.lr.ph.i.i ], [ %add82.i.i, %if.end95.i.i.while.body55.i.i_crit_edge ]
  %i.1322.i.i = phi i32 [ 0, %while.body55.lr.ph.i.i ], [ %inc96.i.i, %if.end95.i.i.while.body55.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.1322.i.i, i32 %sub.i.i)
  %cmp57.i.i = icmp eq i32 %i.1322.i.i, %sub.i.i
  %sub2.188.i.i = select i1 %cmp57.i.i, i32 %sub2.i.i, i32 256
  %159 = ptrtoint ptr %start_tag.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %start_tag.i.i, align 8
  %161 = ptrtoint ptr %tag_buf_pos.i.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %tag_buf_pos.i.i, align 4
  %add66.i.i = add i32 %162, %tx_len.0323.i.i
  %arrayidx67.i.i = getelementptr i8, ptr %160, i32 %add66.i.i
  %call68.i.i = tail call fastcc i32 @qup_i2c_set_tags(ptr noundef %arrayidx67.i.i, ptr noundef %64, ptr noundef %add.ptr26.i) #9, !range !197
  %163 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %data_len.i.i.i, align 8
  %sub71.i.i = sub i32 %164, %sub2.188.i.i
  store i32 %sub71.i.i, ptr %data_len.i.i.i, align 8
  %165 = ptrtoint ptr %sg35.i.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %sg35.i.i, align 4
  %167 = ptrtoint ptr %sg_cnt.i.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %sg_cnt.i.i, align 4
  %inc76.i.i = add i32 %168, 1
  store i32 %inc76.i.i, ptr %sg_cnt.i.i, align 4
  %arrayidx77.i.i = getelementptr %struct.scatterlist, ptr %166, i32 %168
  %169 = ptrtoint ptr %arrayidx67.i.i to i32
  %cmp.i.i245.i.i = icmp ugt ptr %arrayidx67.i.i, inttoptr (i32 -1073741825 to ptr)
  br i1 %cmp.i.i245.i.i, label %land.lhs.true.i.i247.i.i, label %while.body55.i.i.do.body5.i.i254.i.i_crit_edge, !prof !192

while.body55.i.i.do.body5.i.i254.i.i_crit_edge:   ; preds = %while.body55.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body5.i.i254.i.i

land.lhs.true.i.i247.i.i:                         ; preds = %while.body55.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %170 = load ptr, ptr @high_memory, align 4
  %cmp1.i.i246.i.i = icmp ugt ptr %170, %arrayidx67.i.i
  br i1 %cmp1.i.i246.i.i, label %land.rhs.i.i253.i.i, label %land.lhs.true.i.i247.i.i.do.body5.i.i254.i.i_crit_edge, !prof !192

land.lhs.true.i.i247.i.i.do.body5.i.i254.i.i_crit_edge: ; preds = %land.lhs.true.i.i247.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body5.i.i254.i.i

land.rhs.i.i253.i.i:                              ; preds = %land.lhs.true.i.i247.i.i
  %sub.i.i248.i.i = add i32 %169, 1073741824
  %shr.i.i249.i.i = lshr i32 %sub.i.i248.i.i, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %171 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i.i250.i.i = add i32 %171, %shr.i.i249.i.i
  %call.i.i251.i.i = tail call i32 @pfn_valid(i32 noundef %add.i.i250.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i251.i.i)
  %tobool.i.i252.i.i = icmp eq i32 %call.i.i251.i.i, 0
  br i1 %tobool.i.i252.i.i, label %land.rhs.i.i253.i.i.do.body5.i.i254.i.i_crit_edge, label %do.end8.i.i258.i.i, !prof !193

land.rhs.i.i253.i.i.do.body5.i.i254.i.i_crit_edge: ; preds = %land.rhs.i.i253.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body5.i.i254.i.i

do.body5.i.i254.i.i:                              ; preds = %land.rhs.i.i253.i.i.do.body5.i.i254.i.i_crit_edge, %land.lhs.true.i.i247.i.i.do.body5.i.i254.i.i_crit_edge, %while.body55.i.i.do.body5.i.i254.i.i_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 160, 0\0A.popsection", ""() #9, !srcloc !194
  unreachable

do.end8.i.i258.i.i:                               ; preds = %land.rhs.i.i253.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %172 = load ptr, ptr @mem_map, align 4
  %add.ptr.i.i255.i.i = getelementptr %struct.page, ptr %172, i32 %shr.i.i249.i.i
  %173 = ptrtoint ptr %arrayidx77.i.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %arrayidx77.i.i, align 4
  %175 = ptrtoint ptr %add.ptr.i.i255.i.i to i32
  %and2.i.i.i.i256.i.i = and i32 %175, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i.i256.i.i)
  %tobool.not.i.i.i.i257.i.i = icmp eq i32 %and2.i.i.i.i256.i.i, 0
  br i1 %tobool.not.i.i.i.i257.i.i, label %do.body11.i.i.i.i262.i.i, label %do.body5.i.i.i.i259.i.i, !prof !192

do.body5.i.i.i.i259.i.i:                          ; preds = %do.end8.i.i258.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #9, !srcloc !195
  unreachable

do.body11.i.i.i.i262.i.i:                         ; preds = %do.end8.i.i258.i.i
  %and.i.i.i.i.i260.i.i = and i32 %174, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i260.i.i)
  %tobool.i.not.i.i.i.i261.i.i = icmp eq i32 %and.i.i.i.i.i260.i.i, 0
  br i1 %tobool.i.not.i.i.i.i261.i.i, label %qup_sg_set_buf.exit272.i.i, label %do.body19.i.i.i.i263.i.i, !prof !192

do.body19.i.i.i.i263.i.i:                         ; preds = %do.body11.i.i.i.i262.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #9, !srcloc !196
  unreachable

qup_sg_set_buf.exit272.i.i:                       ; preds = %do.body11.i.i.i.i262.i.i
  %and.i.i264.i.i = and i32 %169, 4095
  %and.i.i.i.i265.i.i = and i32 %174, 3
  %or.i.i.i.i266.i.i = or i32 %and.i.i.i.i265.i.i, %175
  %176 = ptrtoint ptr %arrayidx77.i.i to i32
  call void @__asan_store4_noabort(i32 %176)
  store i32 %or.i.i.i.i266.i.i, ptr %arrayidx77.i.i, align 4
  %offset1.i.i.i267.i.i = getelementptr %struct.scatterlist, ptr %166, i32 %168, i32 1
  %177 = ptrtoint ptr %offset1.i.i.i267.i.i to i32
  call void @__asan_store4_noabort(i32 %177)
  store i32 %and.i.i264.i.i, ptr %offset1.i.i.i267.i.i, align 4
  %length.i.i.i268.i.i = getelementptr %struct.scatterlist, ptr %166, i32 %168, i32 2
  %178 = ptrtoint ptr %length.i.i.i268.i.i to i32
  call void @__asan_store4_noabort(i32 %178)
  store i32 %call68.i.i, ptr %length.i.i.i268.i.i, align 4
  %179 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %64, align 8
  %call.i269.i.i = tail call i32 @dma_map_sg_attrs(ptr noundef %180, ptr noundef %arrayidx77.i.i, i32 noundef 1, i32 noundef 1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i269.i.i)
  %tobool.not.i270.not.i.i = icmp eq i32 %call.i269.i.i, 0
  br i1 %tobool.not.i270.not.i.i, label %qup_sg_set_buf.exit272.i.i.qup_i2c_bam_xfer.exit_crit_edge, label %if.end81.i.i

qup_sg_set_buf.exit272.i.i.qup_i2c_bam_xfer.exit_crit_edge: ; preds = %qup_sg_set_buf.exit272.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %qup_i2c_bam_xfer.exit

if.end81.i.i:                                     ; preds = %qup_sg_set_buf.exit272.i.i
  %181 = ptrtoint ptr %sg35.i.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %sg35.i.i, align 4
  %183 = ptrtoint ptr %sg_cnt.i.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %sg_cnt.i.i, align 4
  %inc87.i.i = add i32 %184, 1
  store i32 %inc87.i.i, ptr %sg_cnt.i.i, align 4
  %arrayidx88.i.i = getelementptr %struct.scatterlist, ptr %182, i32 %184
  %185 = ptrtoint ptr %buf89.i.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %buf89.i.i, align 4
  %mul90.i.i = shl i32 %i.1322.i.i, 8
  %arrayidx91.i.i = getelementptr i8, ptr %186, i32 %mul90.i.i
  %187 = ptrtoint ptr %arrayidx91.i.i to i32
  %cmp.i.i273.i.i = icmp ugt ptr %arrayidx91.i.i, inttoptr (i32 -1073741825 to ptr)
  br i1 %cmp.i.i273.i.i, label %land.lhs.true.i.i275.i.i, label %if.end81.i.i.do.body5.i.i282.i.i_crit_edge, !prof !192

if.end81.i.i.do.body5.i.i282.i.i_crit_edge:       ; preds = %if.end81.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body5.i.i282.i.i

land.lhs.true.i.i275.i.i:                         ; preds = %if.end81.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %188 = load ptr, ptr @high_memory, align 4
  %cmp1.i.i274.i.i = icmp ugt ptr %188, %arrayidx91.i.i
  br i1 %cmp1.i.i274.i.i, label %land.rhs.i.i281.i.i, label %land.lhs.true.i.i275.i.i.do.body5.i.i282.i.i_crit_edge, !prof !192

land.lhs.true.i.i275.i.i.do.body5.i.i282.i.i_crit_edge: ; preds = %land.lhs.true.i.i275.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body5.i.i282.i.i

land.rhs.i.i281.i.i:                              ; preds = %land.lhs.true.i.i275.i.i
  %sub.i.i276.i.i = add i32 %187, 1073741824
  %shr.i.i277.i.i = lshr i32 %sub.i.i276.i.i, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %189 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i.i278.i.i = add i32 %189, %shr.i.i277.i.i
  %call.i.i279.i.i = tail call i32 @pfn_valid(i32 noundef %add.i.i278.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i279.i.i)
  %tobool.i.i280.i.i = icmp eq i32 %call.i.i279.i.i, 0
  br i1 %tobool.i.i280.i.i, label %land.rhs.i.i281.i.i.do.body5.i.i282.i.i_crit_edge, label %do.end8.i.i286.i.i, !prof !193

land.rhs.i.i281.i.i.do.body5.i.i282.i.i_crit_edge: ; preds = %land.rhs.i.i281.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body5.i.i282.i.i

do.body5.i.i282.i.i:                              ; preds = %land.rhs.i.i281.i.i.do.body5.i.i282.i.i_crit_edge, %land.lhs.true.i.i275.i.i.do.body5.i.i282.i.i_crit_edge, %if.end81.i.i.do.body5.i.i282.i.i_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 160, 0\0A.popsection", ""() #9, !srcloc !194
  unreachable

do.end8.i.i286.i.i:                               ; preds = %land.rhs.i.i281.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %190 = load ptr, ptr @mem_map, align 4
  %add.ptr.i.i283.i.i = getelementptr %struct.page, ptr %190, i32 %shr.i.i277.i.i
  %191 = ptrtoint ptr %arrayidx88.i.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %arrayidx88.i.i, align 4
  %193 = ptrtoint ptr %add.ptr.i.i283.i.i to i32
  %and2.i.i.i.i284.i.i = and i32 %193, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i.i284.i.i)
  %tobool.not.i.i.i.i285.i.i = icmp eq i32 %and2.i.i.i.i284.i.i, 0
  br i1 %tobool.not.i.i.i.i285.i.i, label %do.body11.i.i.i.i290.i.i, label %do.body5.i.i.i.i287.i.i, !prof !192

do.body5.i.i.i.i287.i.i:                          ; preds = %do.end8.i.i286.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #9, !srcloc !195
  unreachable

do.body11.i.i.i.i290.i.i:                         ; preds = %do.end8.i.i286.i.i
  %and.i.i.i.i.i288.i.i = and i32 %192, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i288.i.i)
  %tobool.i.not.i.i.i.i289.i.i = icmp eq i32 %and.i.i.i.i.i288.i.i, 0
  br i1 %tobool.i.not.i.i.i.i289.i.i, label %qup_sg_set_buf.exit300.i.i, label %do.body19.i.i.i.i291.i.i, !prof !192

do.body19.i.i.i.i291.i.i:                         ; preds = %do.body11.i.i.i.i290.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #9, !srcloc !196
  unreachable

qup_sg_set_buf.exit300.i.i:                       ; preds = %do.body11.i.i.i.i290.i.i
  %and.i.i292.i.i = and i32 %187, 4095
  %and.i.i.i.i293.i.i = and i32 %192, 3
  %or.i.i.i.i294.i.i = or i32 %and.i.i.i.i293.i.i, %193
  %194 = ptrtoint ptr %arrayidx88.i.i to i32
  call void @__asan_store4_noabort(i32 %194)
  store i32 %or.i.i.i.i294.i.i, ptr %arrayidx88.i.i, align 4
  %offset1.i.i.i295.i.i = getelementptr %struct.scatterlist, ptr %182, i32 %184, i32 1
  %195 = ptrtoint ptr %offset1.i.i.i295.i.i to i32
  call void @__asan_store4_noabort(i32 %195)
  store i32 %and.i.i292.i.i, ptr %offset1.i.i.i295.i.i, align 4
  %length.i.i.i296.i.i = getelementptr %struct.scatterlist, ptr %182, i32 %184, i32 2
  %196 = ptrtoint ptr %length.i.i.i296.i.i to i32
  call void @__asan_store4_noabort(i32 %196)
  store i32 %sub2.188.i.i, ptr %length.i.i.i296.i.i, align 4
  %197 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %64, align 8
  %call.i297.i.i = tail call i32 @dma_map_sg_attrs(ptr noundef %198, ptr noundef %arrayidx88.i.i, i32 noundef 1, i32 noundef 1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i297.i.i)
  %tobool.not.i298.not.i.i = icmp eq i32 %call.i297.i.i, 0
  br i1 %tobool.not.i298.not.i.i, label %qup_sg_set_buf.exit300.i.i.qup_i2c_bam_xfer.exit_crit_edge, label %if.end95.i.i

qup_sg_set_buf.exit300.i.i.qup_i2c_bam_xfer.exit_crit_edge: ; preds = %qup_sg_set_buf.exit300.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %qup_i2c_bam_xfer.exit

if.end95.i.i:                                     ; preds = %qup_sg_set_buf.exit300.i.i
  %add82.i.i = add i32 %call68.i.i, %tx_len.0323.i.i
  %inc96.i.i = add nuw nsw i32 %i.1322.i.i, 1
  %199 = ptrtoint ptr %pos.i.i.i to i32
  call void @__asan_store4_noabort(i32 %199)
  store i32 %inc96.i.i, ptr %pos.i.i.i, align 4
  %exitcond333.not.i.i = icmp eq i32 %inc96.i.i, %div.i301302.i.i
  br i1 %exitcond333.not.i.i, label %if.end95.i.i.if.end33.i_crit_edge, label %if.end95.i.i.while.body55.i.i_crit_edge

if.end95.i.i.while.body55.i.i_crit_edge:          ; preds = %if.end95.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body55.i.i

if.end95.i.i.if.end33.i_crit_edge:                ; preds = %if.end95.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33.i

if.end33.i:                                       ; preds = %if.end95.i.i.if.end33.i_crit_edge, %qup_sg_set_buf.exit244.i.i.if.end33.i_crit_edge, %while.cond50.preheader.i.i.if.end33.i_crit_edge
  %len.0.lcssa.sink.i.i = phi i32 [ %len.0.lcssa.i.i, %qup_sg_set_buf.exit244.i.i.if.end33.i_crit_edge ], [ 0, %while.cond50.preheader.i.i.if.end33.i_crit_edge ], [ %add82.i.i, %if.end95.i.i.if.end33.i_crit_edge ]
  %200 = ptrtoint ptr %tag_buf_pos.i.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %tag_buf_pos.i.i, align 4
  %add49.i.i = add i32 %201, %len.0.lcssa.sink.i.i
  store i32 %add49.i.i, ptr %tag_buf_pos.i.i, align 4
  %202 = ptrtoint ptr %sg_cnt.i.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %sg_cnt.i.i, align 4
  %204 = ptrtoint ptr %max_xfer_sg_len.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %max_xfer_sg_len.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %203, i32 %205)
  %cmp34.i = icmp ugt i32 %203, %205
  %206 = ptrtoint ptr %sg_cnt1.i.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %.pr.i = load i32, ptr %sg_cnt1.i.i, align 8
  br i1 %cmp34.i, label %if.end33.i.if.then41.i_crit_edge, label %lor.lhs.false.i107

if.end33.i.if.then41.i_crit_edge:                 ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then41.i

lor.lhs.false.i107:                               ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_cmp4(i32 %.pr.i, i32 %205)
  %cmp37.i = icmp ugt i32 %.pr.i, %205
  br i1 %cmp37.i, label %lor.lhs.false.i107.if.then.i.i_crit_edge, label %lor.lhs.false38.i

lor.lhs.false.i107.if.then.i.i_crit_edge:         ; preds = %lor.lhs.false.i107
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i

lor.lhs.false38.i:                                ; preds = %lor.lhs.false.i107
  %207 = ptrtoint ptr %is_last.i to i32
  call void @__asan_load1_noabort(i32 %207)
  %208 = load i8, ptr %is_last.i, align 4, !range !152
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %208)
  %tobool40.not.i = icmp eq i8 %208, 0
  br i1 %tobool40.not.i, label %lor.lhs.false38.i.for.inc.i_crit_edge, label %lor.lhs.false38.i.if.then41.i_crit_edge

lor.lhs.false38.i.if.then41.i_crit_edge:          ; preds = %lor.lhs.false38.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then41.i

lor.lhs.false38.i.for.inc.i_crit_edge:            ; preds = %lor.lhs.false38.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.then41.i:                                      ; preds = %lor.lhs.false38.i.if.then41.i_crit_edge, %if.end33.i.if.then41.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i)
  %tobool.not.i83.i = icmp eq i32 %.pr.i, 0
  br i1 %tobool.not.i83.i, label %if.then41.i.if.end12.i.i_crit_edge, label %if.then41.i.if.then.i.i_crit_edge

if.then41.i.if.then.i.i_crit_edge:                ; preds = %if.then41.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i

if.then41.i.if.end12.i.i_crit_edge:               ; preds = %if.then41.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12.i.i

if.then.i.i:                                      ; preds = %if.then41.i.if.then.i.i_crit_edge, %lor.lhs.false.i107.if.then.i.i_crit_edge
  %209 = ptrtoint ptr %btx.i123.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %btx.i123.i, align 4
  %211 = ptrtoint ptr %210 to i32
  call void @__asan_store1_noabort(i32 %211)
  store i8 -109, ptr %210, align 1
  %212 = ptrtoint ptr %sg.i.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %sg.i.i, align 4
  %inc4.i.i = add i32 %.pr.i, 1
  %arrayidx5.i.i = getelementptr %struct.scatterlist, ptr %213, i32 %.pr.i
  %214 = ptrtoint ptr %brx.i.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %brx.i.i, align 8
  %216 = ptrtoint ptr %215 to i32
  %cmp.i.i.i86.i = icmp ugt ptr %215, inttoptr (i32 -1073741825 to ptr)
  br i1 %cmp.i.i.i86.i, label %land.lhs.true.i.i.i88.i, label %if.then.i.i.do.body5.i.i.i95.i_crit_edge, !prof !192

if.then.i.i.do.body5.i.i.i95.i_crit_edge:         ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body5.i.i.i95.i

land.lhs.true.i.i.i88.i:                          ; preds = %if.then.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %217 = load ptr, ptr @high_memory, align 4
  %cmp1.i.i.i87.i = icmp ugt ptr %217, %215
  br i1 %cmp1.i.i.i87.i, label %land.rhs.i.i.i94.i, label %land.lhs.true.i.i.i88.i.do.body5.i.i.i95.i_crit_edge, !prof !192

land.lhs.true.i.i.i88.i.do.body5.i.i.i95.i_crit_edge: ; preds = %land.lhs.true.i.i.i88.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body5.i.i.i95.i

land.rhs.i.i.i94.i:                               ; preds = %land.lhs.true.i.i.i88.i
  %sub.i.i.i89.i = add i32 %216, 1073741824
  %shr.i.i.i90.i = lshr i32 %sub.i.i.i89.i, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %218 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i.i.i91.i = add i32 %218, %shr.i.i.i90.i
  %call.i.i.i92.i = tail call i32 @pfn_valid(i32 noundef %add.i.i.i91.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i92.i)
  %tobool.i.i.i93.i = icmp eq i32 %call.i.i.i92.i, 0
  br i1 %tobool.i.i.i93.i, label %land.rhs.i.i.i94.i.do.body5.i.i.i95.i_crit_edge, label %do.end8.i.i.i99.i, !prof !193

land.rhs.i.i.i94.i.do.body5.i.i.i95.i_crit_edge:  ; preds = %land.rhs.i.i.i94.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body5.i.i.i95.i

do.body5.i.i.i95.i:                               ; preds = %land.rhs.i.i.i94.i.do.body5.i.i.i95.i_crit_edge, %land.lhs.true.i.i.i88.i.do.body5.i.i.i95.i_crit_edge, %if.then.i.i.do.body5.i.i.i95.i_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 160, 0\0A.popsection", ""() #9, !srcloc !194
  unreachable

do.end8.i.i.i99.i:                                ; preds = %land.rhs.i.i.i94.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %219 = load ptr, ptr @mem_map, align 4
  %add.ptr.i.i.i96.i = getelementptr %struct.page, ptr %219, i32 %shr.i.i.i90.i
  %220 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %arrayidx5.i.i, align 4
  %222 = ptrtoint ptr %add.ptr.i.i.i96.i to i32
  %and2.i.i.i.i.i97.i = and i32 %222, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i.i.i97.i)
  %tobool.not.i.i.i.i.i98.i = icmp eq i32 %and2.i.i.i.i.i97.i, 0
  br i1 %tobool.not.i.i.i.i.i98.i, label %do.body11.i.i.i.i.i103.i, label %do.body5.i.i.i.i.i100.i, !prof !192

do.body5.i.i.i.i.i100.i:                          ; preds = %do.end8.i.i.i99.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #9, !srcloc !195
  unreachable

do.body11.i.i.i.i.i103.i:                         ; preds = %do.end8.i.i.i99.i
  %and.i.i.i.i.i.i101.i = and i32 %221, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i.i101.i)
  %tobool.i.not.i.i.i.i.i102.i = icmp eq i32 %and.i.i.i.i.i.i101.i, 0
  br i1 %tobool.i.not.i.i.i.i.i102.i, label %qup_sg_set_buf.exit.i112.i, label %do.body19.i.i.i.i.i104.i, !prof !192

do.body19.i.i.i.i.i104.i:                         ; preds = %do.body11.i.i.i.i.i103.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #9, !srcloc !196
  unreachable

qup_sg_set_buf.exit.i112.i:                       ; preds = %do.body11.i.i.i.i.i103.i
  %and.i.i.i105.i = and i32 %216, 4095
  %and.i.i.i.i.i106.i = and i32 %221, 3
  %or.i.i.i.i.i107.i = or i32 %and.i.i.i.i.i106.i, %222
  %223 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_store4_noabort(i32 %223)
  store i32 %or.i.i.i.i.i107.i, ptr %arrayidx5.i.i, align 4
  %offset1.i.i.i.i108.i = getelementptr %struct.scatterlist, ptr %213, i32 %.pr.i, i32 1
  %224 = ptrtoint ptr %offset1.i.i.i.i108.i to i32
  call void @__asan_store4_noabort(i32 %224)
  store i32 %and.i.i.i105.i, ptr %offset1.i.i.i.i108.i, align 4
  %length.i.i.i.i109.i = getelementptr %struct.scatterlist, ptr %213, i32 %.pr.i, i32 2
  %225 = ptrtoint ptr %length.i.i.i.i109.i to i32
  call void @__asan_store4_noabort(i32 %225)
  store i32 1, ptr %length.i.i.i.i109.i, align 4
  %226 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %64, align 8
  %call.i.i110.i = tail call i32 @dma_map_sg_attrs(ptr noundef %227, ptr noundef %arrayidx5.i.i, i32 noundef 1, i32 noundef 2, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i110.i)
  %tobool.not.i.not.i111.i = icmp eq i32 %call.i.i110.i, 0
  br i1 %tobool.not.i.not.i111.i, label %qup_sg_set_buf.exit.i112.i.qup_i2c_bam_xfer.exit_crit_edge, label %qup_sg_set_buf.exit.i112.i.if.end12.i.i_crit_edge

qup_sg_set_buf.exit.i112.i.if.end12.i.i_crit_edge: ; preds = %qup_sg_set_buf.exit.i112.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12.i.i

qup_sg_set_buf.exit.i112.i.qup_i2c_bam_xfer.exit_crit_edge: ; preds = %qup_sg_set_buf.exit.i112.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %qup_i2c_bam_xfer.exit

if.end12.i.i:                                     ; preds = %qup_sg_set_buf.exit.i112.i.if.end12.i.i_crit_edge, %if.then41.i.if.end12.i.i_crit_edge
  %len.0.i.i = phi i32 [ 2, %qup_sg_set_buf.exit.i112.i.if.end12.i.i_crit_edge ], [ 1, %if.then41.i.if.end12.i.i_crit_edge ]
  %rx_cnt.0.i.i = phi i32 [ %inc4.i.i, %qup_sg_set_buf.exit.i112.i.if.end12.i.i_crit_edge ], [ 0, %if.then41.i.if.end12.i.i_crit_edge ]
  %228 = ptrtoint ptr %btx.i123.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %btx.i123.i, align 4
  %sub.i113.i = add nsw i32 %len.0.i.i, -1
  %arrayidx16.i.i = getelementptr i8, ptr %229, i32 %sub.i113.i
  %230 = ptrtoint ptr %arrayidx16.i.i to i32
  call void @__asan_store1_noabort(i32 %230)
  store i8 -106, ptr %arrayidx16.i.i, align 1
  %231 = ptrtoint ptr %sg35.i.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %sg35.i.i, align 4
  %inc19.i.i = add i32 %203, 1
  %arrayidx20.i.i = getelementptr %struct.scatterlist, ptr %232, i32 %203
  %233 = load ptr, ptr %btx.i123.i, align 4
  %234 = ptrtoint ptr %233 to i32
  %cmp.i.i181.i.i = icmp ugt ptr %233, inttoptr (i32 -1073741825 to ptr)
  br i1 %cmp.i.i181.i.i, label %land.lhs.true.i.i183.i.i, label %if.end12.i.i.do.body5.i.i190.i.i_crit_edge, !prof !192

if.end12.i.i.do.body5.i.i190.i.i_crit_edge:       ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body5.i.i190.i.i

land.lhs.true.i.i183.i.i:                         ; preds = %if.end12.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %235 = load ptr, ptr @high_memory, align 4
  %cmp1.i.i182.i.i = icmp ugt ptr %235, %233
  br i1 %cmp1.i.i182.i.i, label %land.rhs.i.i189.i.i, label %land.lhs.true.i.i183.i.i.do.body5.i.i190.i.i_crit_edge, !prof !192

land.lhs.true.i.i183.i.i.do.body5.i.i190.i.i_crit_edge: ; preds = %land.lhs.true.i.i183.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body5.i.i190.i.i

land.rhs.i.i189.i.i:                              ; preds = %land.lhs.true.i.i183.i.i
  %sub.i.i184.i.i = add i32 %234, 1073741824
  %shr.i.i185.i.i = lshr i32 %sub.i.i184.i.i, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %236 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i.i186.i.i = add i32 %236, %shr.i.i185.i.i
  %call.i.i187.i.i = tail call i32 @pfn_valid(i32 noundef %add.i.i186.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i187.i.i)
  %tobool.i.i188.i.i = icmp eq i32 %call.i.i187.i.i, 0
  br i1 %tobool.i.i188.i.i, label %land.rhs.i.i189.i.i.do.body5.i.i190.i.i_crit_edge, label %do.end8.i.i194.i.i, !prof !193

land.rhs.i.i189.i.i.do.body5.i.i190.i.i_crit_edge: ; preds = %land.rhs.i.i189.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body5.i.i190.i.i

do.body5.i.i190.i.i:                              ; preds = %land.rhs.i.i189.i.i.do.body5.i.i190.i.i_crit_edge, %land.lhs.true.i.i183.i.i.do.body5.i.i190.i.i_crit_edge, %if.end12.i.i.do.body5.i.i190.i.i_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 160, 0\0A.popsection", ""() #9, !srcloc !194
  unreachable

do.end8.i.i194.i.i:                               ; preds = %land.rhs.i.i189.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %237 = load ptr, ptr @mem_map, align 4
  %add.ptr.i.i191.i.i = getelementptr %struct.page, ptr %237, i32 %shr.i.i185.i.i
  %238 = ptrtoint ptr %arrayidx20.i.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %arrayidx20.i.i, align 4
  %240 = ptrtoint ptr %add.ptr.i.i191.i.i to i32
  %and2.i.i.i.i192.i.i = and i32 %240, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i.i192.i.i)
  %tobool.not.i.i.i.i193.i.i = icmp eq i32 %and2.i.i.i.i192.i.i, 0
  br i1 %tobool.not.i.i.i.i193.i.i, label %do.body11.i.i.i.i198.i.i, label %do.body5.i.i.i.i195.i.i, !prof !192

do.body5.i.i.i.i195.i.i:                          ; preds = %do.end8.i.i194.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #9, !srcloc !195
  unreachable

do.body11.i.i.i.i198.i.i:                         ; preds = %do.end8.i.i194.i.i
  %and.i.i.i.i.i196.i.i = and i32 %239, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i196.i.i)
  %tobool.i.not.i.i.i.i197.i.i = icmp eq i32 %and.i.i.i.i.i196.i.i, 0
  br i1 %tobool.i.not.i.i.i.i197.i.i, label %qup_sg_set_buf.exit208.i.i, label %do.body19.i.i.i.i199.i.i, !prof !192

do.body19.i.i.i.i199.i.i:                         ; preds = %do.body11.i.i.i.i198.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #9, !srcloc !196
  unreachable

qup_sg_set_buf.exit208.i.i:                       ; preds = %do.body11.i.i.i.i198.i.i
  %and.i.i200.i.i = and i32 %234, 4095
  %and.i.i.i.i201.i.i = and i32 %239, 3
  %or.i.i.i.i202.i.i = or i32 %and.i.i.i.i201.i.i, %240
  %241 = ptrtoint ptr %arrayidx20.i.i to i32
  call void @__asan_store4_noabort(i32 %241)
  store i32 %or.i.i.i.i202.i.i, ptr %arrayidx20.i.i, align 4
  %offset1.i.i.i203.i.i = getelementptr %struct.scatterlist, ptr %232, i32 %203, i32 1
  %242 = ptrtoint ptr %offset1.i.i.i203.i.i to i32
  call void @__asan_store4_noabort(i32 %242)
  store i32 %and.i.i200.i.i, ptr %offset1.i.i.i203.i.i, align 4
  %length.i.i.i204.i.i = getelementptr %struct.scatterlist, ptr %232, i32 %203, i32 2
  %243 = ptrtoint ptr %length.i.i.i204.i.i to i32
  call void @__asan_store4_noabort(i32 %243)
  store i32 %len.0.i.i, ptr %length.i.i.i204.i.i, align 4
  %244 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %64, align 8
  %call.i205.i.i = tail call i32 @dma_map_sg_attrs(ptr noundef %245, ptr noundef %arrayidx20.i.i, i32 noundef 1, i32 noundef 1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i205.i.i)
  %tobool.not.i206.not.i.i = icmp eq i32 %call.i205.i.i, 0
  br i1 %tobool.not.i206.not.i.i, label %qup_sg_set_buf.exit208.i.i.qup_i2c_bam_xfer.exit_crit_edge, label %if.end28.i.i

qup_sg_set_buf.exit208.i.i.qup_i2c_bam_xfer.exit_crit_edge: ; preds = %qup_sg_set_buf.exit208.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %qup_i2c_bam_xfer.exit

if.end28.i.i:                                     ; preds = %qup_sg_set_buf.exit208.i.i
  %246 = ptrtoint ptr %dma.i.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %dma.i.i, align 4
  %248 = ptrtoint ptr %sg35.i.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %sg35.i.i, align 4
  %tobool.not.i209.i.i = icmp eq ptr %247, null
  br i1 %tobool.not.i209.i.i, label %if.end28.i.i.do.end.i.i_crit_edge, label %lor.lhs.false.i.i.i

if.end28.i.i.do.end.i.i_crit_edge:                ; preds = %if.end28.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i.i

lor.lhs.false.i.i.i:                              ; preds = %if.end28.i.i
  %250 = ptrtoint ptr %247 to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %247, align 4
  %tobool1.not.i.i.i = icmp eq ptr %251, null
  br i1 %tobool1.not.i.i.i, label %lor.lhs.false.i.i.i.do.end.i.i_crit_edge, label %lor.lhs.false2.i.i.i

lor.lhs.false.i.i.i.do.end.i.i_crit_edge:         ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i.i

lor.lhs.false2.i.i.i:                             ; preds = %lor.lhs.false.i.i.i
  %device_prep_slave_sg.i.i.i = getelementptr inbounds %struct.dma_device, ptr %251, i32 0, i32 39
  %252 = ptrtoint ptr %device_prep_slave_sg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %device_prep_slave_sg.i.i.i, align 4
  %tobool4.not.i.i.i = icmp eq ptr %253, null
  br i1 %tobool4.not.i.i.i, label %lor.lhs.false2.i.i.i.do.end.i.i_crit_edge, label %dmaengine_prep_slave_sg.exit.i.i

lor.lhs.false2.i.i.i.do.end.i.i_crit_edge:        ; preds = %lor.lhs.false2.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i.i

dmaengine_prep_slave_sg.exit.i.i:                 ; preds = %lor.lhs.false2.i.i.i
  %call.i210.i.i = tail call ptr %253(ptr noundef nonnull %247, ptr noundef %249, i32 noundef %inc19.i.i, i32 noundef 1, i32 noundef 33, ptr noundef null) #9
  %tobool33.not.i.i = icmp eq ptr %call.i210.i.i, null
  br i1 %tobool33.not.i.i, label %dmaengine_prep_slave_sg.exit.i.i.do.end.i.i_crit_edge, label %if.end35.i.i

dmaengine_prep_slave_sg.exit.i.i.do.end.i.i_crit_edge: ; preds = %dmaengine_prep_slave_sg.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %dmaengine_prep_slave_sg.exit.i.i.do.end.i.i_crit_edge, %lor.lhs.false2.i.i.i.do.end.i.i_crit_edge, %lor.lhs.false.i.i.i.do.end.i.i_crit_edge, %if.end28.i.i.do.end.i.i_crit_edge
  %254 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %64, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %255, ptr noundef nonnull @.str.34) #12
  br label %desc_err.i.i

if.end35.i.i:                                     ; preds = %dmaengine_prep_slave_sg.exit.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rx_cnt.0.i.i)
  %tobool36.not.i.i = icmp eq i32 %rx_cnt.0.i.i, 0
  br i1 %tobool36.not.i.i, label %if.then37.i.i, label %if.end35.i.i.if.end38.i.i_crit_edge

if.end35.i.i.if.end38.i.i_crit_edge:              ; preds = %if.end35.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end38.i.i

if.then37.i.i:                                    ; preds = %if.end35.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %callback.i.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i210.i.i, i32 0, i32 6
  %256 = ptrtoint ptr %callback.i.i to i32
  call void @__asan_store4_noabort(i32 %256)
  store ptr @qup_i2c_bam_cb, ptr %callback.i.i, align 4
  %callback_param.i.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i210.i.i, i32 0, i32 8
  %257 = ptrtoint ptr %callback_param.i.i to i32
  call void @__asan_store4_noabort(i32 %257)
  store ptr %64, ptr %callback_param.i.i, align 4
  br label %if.end38.i.i

if.end38.i.i:                                     ; preds = %if.then37.i.i, %if.end35.i.i.if.end38.i.i_crit_edge
  %tx_submit.i.i.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i210.i.i, i32 0, i32 4
  %258 = ptrtoint ptr %tx_submit.i.i.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %tx_submit.i.i.i, align 4
  %call.i211.i.i = tail call i32 %259(ptr noundef nonnull %call.i210.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i211.i.i)
  %tobool41.not.i.i = icmp sgt i32 %call.i211.i.i, -1
  br i1 %tobool41.not.i.i, label %if.end43.i.i, label %if.end38.i.i.desc_err.i.i_crit_edge

if.end38.i.i.desc_err.i.i_crit_edge:              ; preds = %if.end38.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %desc_err.i.i

if.end43.i.i:                                     ; preds = %if.end38.i.i
  %260 = ptrtoint ptr %dma.i.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %dma.i.i, align 4
  %262 = ptrtoint ptr %261 to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %261, align 4
  %device_issue_pending.i.i.i = getelementptr inbounds %struct.dma_device, ptr %263, i32 0, i32 50
  %264 = ptrtoint ptr %device_issue_pending.i.i.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %device_issue_pending.i.i.i, align 4
  tail call void %265(ptr noundef %261) #9
  br i1 %tobool36.not.i.i, label %if.end43.i.i.if.end72.i.i_crit_edge, label %if.then47.i.i

if.end43.i.i.if.end72.i.i_crit_edge:              ; preds = %if.end43.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end72.i.i

if.then47.i.i:                                    ; preds = %if.end43.i.i
  %266 = ptrtoint ptr %dma49.i.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %dma49.i.i, align 8
  %268 = ptrtoint ptr %sg.i.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %sg.i.i, align 4
  %tobool.not.i212.i.i = icmp eq ptr %267, null
  br i1 %tobool.not.i212.i.i, label %if.then47.i.i.do.end57.i.i_crit_edge, label %lor.lhs.false.i214.i.i

if.then47.i.i.do.end57.i.i_crit_edge:             ; preds = %if.then47.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end57.i.i

lor.lhs.false.i214.i.i:                           ; preds = %if.then47.i.i
  %270 = ptrtoint ptr %267 to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %267, align 4
  %tobool1.not.i213.i.i = icmp eq ptr %271, null
  br i1 %tobool1.not.i213.i.i, label %lor.lhs.false.i214.i.i.do.end57.i.i_crit_edge, label %lor.lhs.false2.i217.i.i

lor.lhs.false.i214.i.i.do.end57.i.i_crit_edge:    ; preds = %lor.lhs.false.i214.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end57.i.i

lor.lhs.false2.i217.i.i:                          ; preds = %lor.lhs.false.i214.i.i
  %device_prep_slave_sg.i215.i.i = getelementptr inbounds %struct.dma_device, ptr %271, i32 0, i32 39
  %272 = ptrtoint ptr %device_prep_slave_sg.i215.i.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %device_prep_slave_sg.i215.i.i, align 4
  %tobool4.not.i216.i.i = icmp eq ptr %273, null
  br i1 %tobool4.not.i216.i.i, label %lor.lhs.false2.i217.i.i.do.end57.i.i_crit_edge, label %dmaengine_prep_slave_sg.exit221.i.i

lor.lhs.false2.i217.i.i.do.end57.i.i_crit_edge:   ; preds = %lor.lhs.false2.i217.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end57.i.i

dmaengine_prep_slave_sg.exit221.i.i:              ; preds = %lor.lhs.false2.i217.i.i
  %call.i218.i.i = tail call ptr %273(ptr noundef nonnull %267, ptr noundef %269, i32 noundef %rx_cnt.0.i.i, i32 noundef 2, i32 noundef 1, ptr noundef null) #9
  %tobool53.not.i.i = icmp eq ptr %call.i218.i.i, null
  br i1 %tobool53.not.i.i, label %dmaengine_prep_slave_sg.exit221.i.i.do.end57.i.i_crit_edge, label %if.end62.i.i

dmaengine_prep_slave_sg.exit221.i.i.do.end57.i.i_crit_edge: ; preds = %dmaengine_prep_slave_sg.exit221.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end57.i.i

do.end57.i.i:                                     ; preds = %dmaengine_prep_slave_sg.exit221.i.i.do.end57.i.i_crit_edge, %lor.lhs.false2.i217.i.i.do.end57.i.i_crit_edge, %lor.lhs.false.i214.i.i.do.end57.i.i_crit_edge, %if.then47.i.i.do.end57.i.i_crit_edge
  %274 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %64, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %275, ptr noundef nonnull @.str.37) #12
  %276 = ptrtoint ptr %dma.i.i to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %dma.i.i, align 4
  %278 = ptrtoint ptr %277 to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %277, align 4
  %device_terminate_all.i.i.i = getelementptr inbounds %struct.dma_device, ptr %279, i32 0, i32 47
  %280 = ptrtoint ptr %device_terminate_all.i.i.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %device_terminate_all.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %281, null
  br i1 %tobool.not.i.i.i, label %do.end57.i.i.desc_err.i.i_crit_edge, label %dmaengine_terminate_async.exit.i.i

do.end57.i.i.desc_err.i.i_crit_edge:              ; preds = %do.end57.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %desc_err.i.i

dmaengine_terminate_async.exit.i.i:               ; preds = %do.end57.i.i
  %call.i.i118.i = tail call i32 %281(ptr noundef %277) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i118.i)
  %tobool.not.i119.i = icmp eq i32 %call.i.i118.i, 0
  br i1 %tobool.not.i119.i, label %if.end.i120.i, label %dmaengine_terminate_async.exit.i.i.desc_err.i.i_crit_edge

dmaengine_terminate_async.exit.i.i.desc_err.i.i_crit_edge: ; preds = %dmaengine_terminate_async.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %desc_err.i.i

if.end.i120.i:                                    ; preds = %dmaengine_terminate_async.exit.i.i
  tail call void @__might_sleep(ptr noundef nonnull @.str.48, i32 noundef 1169) #9
  %282 = ptrtoint ptr %277 to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %277, align 4
  %device_synchronize.i.i.i = getelementptr inbounds %struct.dma_device, ptr %283, i32 0, i32 48
  %284 = ptrtoint ptr %device_synchronize.i.i.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %device_synchronize.i.i.i, align 4
  %tobool.not.i1.i.i = icmp eq ptr %285, null
  br i1 %tobool.not.i1.i.i, label %if.end.i120.i.desc_err.i.i_crit_edge, label %if.then.i2.i.i

if.end.i120.i.desc_err.i.i_crit_edge:             ; preds = %if.end.i120.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %desc_err.i.i

if.then.i2.i.i:                                   ; preds = %if.end.i120.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %285(ptr noundef %277) #9
  br label %desc_err.i.i

if.end62.i.i:                                     ; preds = %dmaengine_prep_slave_sg.exit221.i.i
  %callback63.i.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i218.i.i, i32 0, i32 6
  %286 = ptrtoint ptr %callback63.i.i to i32
  call void @__asan_store4_noabort(i32 %286)
  store ptr @qup_i2c_bam_cb, ptr %callback63.i.i, align 4
  %callback_param64.i.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i218.i.i, i32 0, i32 8
  %287 = ptrtoint ptr %callback_param64.i.i to i32
  call void @__asan_store4_noabort(i32 %287)
  store ptr %64, ptr %callback_param64.i.i, align 4
  %tx_submit.i222.i.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i218.i.i, i32 0, i32 4
  %288 = ptrtoint ptr %tx_submit.i222.i.i to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %tx_submit.i222.i.i, align 4
  %call.i223.i.i = tail call i32 %289(ptr noundef nonnull %call.i218.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i223.i.i)
  %tobool67.not.i.i = icmp sgt i32 %call.i223.i.i, -1
  br i1 %tobool67.not.i.i, label %if.end69.i.i, label %if.end62.i.i.desc_err.i.i_crit_edge

if.end62.i.i.desc_err.i.i_crit_edge:              ; preds = %if.end62.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %desc_err.i.i

if.end69.i.i:                                     ; preds = %if.end62.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %290 = ptrtoint ptr %dma49.i.i to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %dma49.i.i, align 8
  %292 = ptrtoint ptr %291 to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %291, align 4
  %device_issue_pending.i224.i.i = getelementptr inbounds %struct.dma_device, ptr %293, i32 0, i32 50
  %294 = ptrtoint ptr %device_issue_pending.i224.i.i to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %device_issue_pending.i224.i.i, align 4
  tail call void %295(ptr noundef %291) #9
  br label %if.end72.i.i

if.end72.i.i:                                     ; preds = %if.end69.i.i, %if.end43.i.i.if.end72.i.i_crit_edge
  %296 = ptrtoint ptr %xfer_timeout.i.i to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load i32, ptr %xfer_timeout.i.i, align 4
  %call73.i.i = tail call i32 @wait_for_completion_timeout(ptr noundef %xfer.i.i, i32 noundef %297) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73.i.i)
  %tobool74.not.i.i = icmp eq i32 %call73.i.i, 0
  br i1 %tobool74.not.i.i, label %do.end78.i.i, label %lor.lhs.false.critedge.i.i

do.end78.i.i:                                     ; preds = %if.end72.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %298 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %64, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %299, ptr noundef nonnull @.str.40) #12
  br label %if.then85.i.i

lor.lhs.false.critedge.i.i:                       ; preds = %if.end72.i.i
  %300 = ptrtoint ptr %bus_err.i.i to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load i32, ptr %bus_err.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %301)
  %tobool82.not.i.i = icmp eq i32 %301, 0
  br i1 %tobool82.not.i.i, label %lor.lhs.false83.i.i, label %lor.lhs.false.critedge.i.i.if.then85.i.i_crit_edge

lor.lhs.false.critedge.i.i.if.then85.i.i_crit_edge: ; preds = %lor.lhs.false.critedge.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then85.i.i

lor.lhs.false83.i.i:                              ; preds = %lor.lhs.false.critedge.i.i
  %302 = ptrtoint ptr %qup_err.i.i to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load i32, ptr %qup_err.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %303)
  %tobool84.not.i.i = icmp eq i32 %303, 0
  br i1 %tobool84.not.i.i, label %lor.lhs.false83.i.i.desc_err.i.i_crit_edge, label %lor.lhs.false83.i.i.if.then85.i.i_crit_edge

lor.lhs.false83.i.i.if.then85.i.i_crit_edge:      ; preds = %lor.lhs.false83.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then85.i.i

lor.lhs.false83.i.i.desc_err.i.i_crit_edge:       ; preds = %lor.lhs.false83.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %desc_err.i.i

if.then85.i.i:                                    ; preds = %lor.lhs.false83.i.i.if.then85.i.i_crit_edge, %lor.lhs.false.critedge.i.i.if.then85.i.i_crit_edge, %do.end78.i.i
  %304 = ptrtoint ptr %xfer.i.i to i32
  call void @__asan_store4_noabort(i32 %304)
  store i32 0, ptr %xfer.i.i, align 4
  %call87.i.i = tail call fastcc i32 @qup_i2c_change_state(ptr noundef %64, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87.i.i)
  %tobool88.not.i.i = icmp eq i32 %call87.i.i, 0
  br i1 %tobool88.not.i.i, label %if.end94.i.i, label %do.end92.i.i

do.end92.i.i:                                     ; preds = %if.then85.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %305 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load ptr, ptr %64, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %306, ptr noundef nonnull @.str.43) #12
  br label %desc_err.i.i

if.end94.i.i:                                     ; preds = %if.then85.i.i
  %307 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load ptr, ptr %base.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %308, i32 4
  %309 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #9, !srcloc !145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !198
  %310 = or i32 %309, 1073741824
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !199
  tail call void @arm_heavy_mb() #9
  %311 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load ptr, ptr %base.i, align 4
  %add.ptr3.i.i.i = getelementptr i8, ptr %312, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i.i.i, i32 %310) #9, !srcloc !144
  %call96.i.i = tail call i32 @wait_for_completion_timeout(ptr noundef %xfer.i.i, i32 noundef 100) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call96.i.i)
  %tobool97.not.i.i = icmp eq i32 %call96.i.i, 0
  br i1 %tobool97.not.i.i, label %do.end101.i.i, label %if.end94.i.i.if.end103.i.i_crit_edge

if.end94.i.i.if.end103.i.i_crit_edge:             ; preds = %if.end94.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end103.i.i

do.end101.i.i:                                    ; preds = %if.end94.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %313 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load ptr, ptr %64, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %314, ptr noundef nonnull @.str.46) #12
  br label %if.end103.i.i

if.end103.i.i:                                    ; preds = %do.end101.i.i, %if.end94.i.i.if.end103.i.i_crit_edge
  %315 = ptrtoint ptr %bus_err.i.i to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load i32, ptr %bus_err.i.i, align 4
  %and.i.i108 = and i32 %316, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i108)
  %tobool105.not.i.i = icmp eq i32 %and.i.i108, 0
  %cond.i.i = select i1 %tobool105.not.i.i, i32 -5, i32 -6
  br label %desc_err.i.i

desc_err.i.i:                                     ; preds = %if.end103.i.i, %do.end92.i.i, %lor.lhs.false83.i.i.desc_err.i.i_crit_edge, %if.end62.i.i.desc_err.i.i_crit_edge, %if.then.i2.i.i, %if.end.i120.i.desc_err.i.i_crit_edge, %dmaengine_terminate_async.exit.i.i.desc_err.i.i_crit_edge, %do.end57.i.i.desc_err.i.i_crit_edge, %if.end38.i.i.desc_err.i.i_crit_edge, %do.end.i.i
  %ret.1.i.i = phi i32 [ %call87.i.i, %do.end92.i.i ], [ %cond.i.i, %if.end103.i.i ], [ 0, %lor.lhs.false83.i.i.desc_err.i.i_crit_edge ], [ -22, %do.end.i.i ], [ -22, %if.end38.i.i.desc_err.i.i_crit_edge ], [ -22, %if.end62.i.i.desc_err.i.i_crit_edge ], [ -22, %do.end57.i.i.desc_err.i.i_crit_edge ], [ -22, %dmaengine_terminate_async.exit.i.i.desc_err.i.i_crit_edge ], [ -22, %if.end.i120.i.desc_err.i.i_crit_edge ], [ -22, %if.then.i2.i.i ]
  %317 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load ptr, ptr %64, align 8
  %319 = ptrtoint ptr %sg35.i.i to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load ptr, ptr %sg35.i.i, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %318, ptr noundef %320, i32 noundef %inc19.i.i, i32 noundef 1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rx_cnt.0.i.i)
  %tobool110.not.i.i = icmp eq i32 %rx_cnt.0.i.i, 0
  br i1 %tobool110.not.i.i, label %desc_err.i.i.qup_i2c_bam_schedule_desc.exit.i_crit_edge, label %if.then111.i.i

desc_err.i.i.qup_i2c_bam_schedule_desc.exit.i_crit_edge: ; preds = %desc_err.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %qup_i2c_bam_schedule_desc.exit.i

if.then111.i.i:                                   ; preds = %desc_err.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %321 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load ptr, ptr %64, align 8
  %323 = ptrtoint ptr %sg.i.i to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load ptr, ptr %sg.i.i, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %322, ptr noundef %324, i32 noundef %rx_cnt.0.i.i, i32 noundef 2, i32 noundef 0) #9
  br label %qup_i2c_bam_schedule_desc.exit.i

qup_i2c_bam_schedule_desc.exit.i:                 ; preds = %if.then111.i.i, %desc_err.i.i.qup_i2c_bam_schedule_desc.exit.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1.i.i)
  %tobool43.not.i = icmp eq i32 %ret.1.i.i, 0
  br i1 %tobool43.not.i, label %if.end45.i, label %qup_i2c_bam_schedule_desc.exit.i.qup_i2c_bam_xfer.exit_crit_edge

qup_i2c_bam_schedule_desc.exit.i.qup_i2c_bam_xfer.exit_crit_edge: ; preds = %qup_i2c_bam_schedule_desc.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %qup_i2c_bam_xfer.exit

if.end45.i:                                       ; preds = %qup_i2c_bam_schedule_desc.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %325 = ptrtoint ptr %sg_cnt.i.i to i32
  call void @__asan_store4_noabort(i32 %325)
  store i32 0, ptr %sg_cnt.i.i, align 4
  %326 = ptrtoint ptr %sg_cnt1.i.i to i32
  call void @__asan_store4_noabort(i32 %326)
  store i32 0, ptr %sg_cnt1.i.i, align 8
  %327 = ptrtoint ptr %tag_buf_pos.i.i to i32
  call void @__asan_store4_noabort(i32 %327)
  store i32 0, ptr %tag_buf_pos.i.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end45.i, %lor.lhs.false38.i.for.inc.i_crit_edge
  %inc.i109 = add nuw nsw i32 %idx.0139.i, 1
  %exitcond.not.i110 = icmp eq i32 %inc.i109, %num
  br i1 %exitcond.not.i110, label %for.inc.i.qup_i2c_bam_xfer.exit_crit_edge, label %for.inc.i.for.body.i105_crit_edge

for.inc.i.for.body.i105_crit_edge:                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i105

for.inc.i.qup_i2c_bam_xfer.exit_crit_edge:        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %qup_i2c_bam_xfer.exit

qup_i2c_bam_xfer.exit:                            ; preds = %for.inc.i.qup_i2c_bam_xfer.exit_crit_edge, %qup_i2c_bam_schedule_desc.exit.i.qup_i2c_bam_xfer.exit_crit_edge, %qup_sg_set_buf.exit208.i.i.qup_i2c_bam_xfer.exit_crit_edge, %qup_sg_set_buf.exit.i112.i.qup_i2c_bam_xfer.exit_crit_edge, %qup_sg_set_buf.exit300.i.i.qup_i2c_bam_xfer.exit_crit_edge, %qup_sg_set_buf.exit272.i.i.qup_i2c_bam_xfer.exit_crit_edge, %qup_sg_set_buf.exit244.i.i.qup_i2c_bam_xfer.exit_crit_edge, %qup_sg_set_buf.exit216.i.i.qup_i2c_bam_xfer.exit_crit_edge, %qup_sg_set_buf.exit.i.i.qup_i2c_bam_xfer.exit_crit_edge, %do.body21.i.qup_i2c_bam_xfer.exit_crit_edge, %do.body.i.qup_i2c_bam_xfer.exit_crit_edge, %if.then24.qup_i2c_bam_xfer.exit_crit_edge
  %ret.2.i = phi i32 [ %call1.i, %if.then24.qup_i2c_bam_xfer.exit_crit_edge ], [ %call17.i, %do.body.i.qup_i2c_bam_xfer.exit_crit_edge ], [ 0, %do.body21.i.qup_i2c_bam_xfer.exit_crit_edge ], [ -22, %qup_sg_set_buf.exit300.i.i.qup_i2c_bam_xfer.exit_crit_edge ], [ -22, %qup_sg_set_buf.exit272.i.i.qup_i2c_bam_xfer.exit_crit_edge ], [ -22, %qup_sg_set_buf.exit216.i.i.qup_i2c_bam_xfer.exit_crit_edge ], [ -22, %qup_sg_set_buf.exit.i.i.qup_i2c_bam_xfer.exit_crit_edge ], [ -22, %qup_sg_set_buf.exit208.i.i.qup_i2c_bam_xfer.exit_crit_edge ], [ -22, %qup_sg_set_buf.exit.i112.i.qup_i2c_bam_xfer.exit_crit_edge ], [ -22, %qup_sg_set_buf.exit244.i.i.qup_i2c_bam_xfer.exit_crit_edge ], [ 0, %for.inc.i.qup_i2c_bam_xfer.exit_crit_edge ], [ %ret.1.i.i, %qup_i2c_bam_schedule_desc.exit.i.qup_i2c_bam_xfer.exit_crit_edge ]
  %328 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load i32, ptr %irq.i, align 8
  tail call void @disable_irq(i32 noundef %329) #9
  %msg48.i = getelementptr inbounds %struct.qup_i2c_dev, ptr %64, i32 0, i32 15
  %330 = ptrtoint ptr %msg48.i to i32
  call void @__asan_store4_noabort(i32 %330)
  store ptr null, ptr %msg48.i, align 4
  %331 = ptrtoint ptr %use_dma to i32
  call void @__asan_store1_noabort(i32 %331)
  store i8 0, ptr %use_dma, align 1
  br label %if.end38

if.else:                                          ; preds = %if.end22
  %is_tx_blk_mode.i111 = getelementptr inbounds %struct.qup_i2c_dev, ptr %1, i32 0, i32 14, i32 20
  %332 = ptrtoint ptr %is_tx_blk_mode.i111 to i32
  call void @__asan_load1_noabort(i32 %332)
  %333 = load i8, ptr %is_tx_blk_mode.i111, align 4, !range !152
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %333)
  %tobool.not.i112 = icmp eq i8 %333, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  %334 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load ptr, ptr %base, align 4
  br i1 %tobool.not.i112, label %do.body2.i, label %if.then.i

if.then.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i113 = getelementptr i8, ptr %335, i32 336
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i113, i32 0) #9, !srcloc !144
  br label %if.end.i

do.body2.i:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr6.i114 = getelementptr i8, ptr %335, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i114, i32 0) #9, !srcloc !144
  br label %if.end.i

if.end.i:                                         ; preds = %do.body2.i, %if.then.i
  %io_mode.0.i = phi i32 [ 50176, %if.then.i ], [ 49152, %do.body2.i ]
  %is_rx_blk_mode.i115 = getelementptr inbounds %struct.qup_i2c_dev, ptr %1, i32 0, i32 14, i32 21
  %336 = ptrtoint ptr %is_rx_blk_mode.i115 to i32
  call void @__asan_load1_noabort(i32 %336)
  %337 = load i8, ptr %is_rx_blk_mode.i115, align 1, !range !152
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %337)
  %tobool7.not.i = icmp eq i8 %337, 0
  br i1 %tobool7.not.i, label %do.body16.i, label %if.then8.i

if.then8.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %or9.i = or i32 %io_mode.0.i, 4096
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !200
  tail call void @arm_heavy_mb() #9
  %338 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load ptr, ptr %base, align 4
  %add.ptr14.i = getelementptr i8, ptr %339, i32 520
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.i, i32 0) #9, !srcloc !144
  br label %qup_i2c_conf_mode_v2.exit

do.body16.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !201
  tail call void @arm_heavy_mb() #9
  %340 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load ptr, ptr %base, align 4
  %add.ptr20.i = getelementptr i8, ptr %341, i32 512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20.i, i32 0) #9, !srcloc !144
  br label %qup_i2c_conf_mode_v2.exit

qup_i2c_conf_mode_v2.exit:                        ; preds = %do.body16.i, %if.then8.i
  %io_mode.1.i = phi i32 [ %or9.i, %if.then8.i ], [ %io_mode.0.i, %do.body16.i ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !202
  tail call void @arm_heavy_mb() #9
  %342 = tail call i32 @llvm.bswap.i32(i32 %io_mode.1.i) #9
  %343 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load ptr, ptr %base, align 4
  %add.ptr26.i116 = getelementptr i8, ptr %344, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26.i116, i32 %342) #9, !srcloc !144
  br i1 %cmp2.i, label %for.body.lr.ph, label %qup_i2c_conf_mode_v2.exit.for.end_crit_edge

qup_i2c_conf_mode_v2.exit.for.end_crit_edge:      ; preds = %qup_i2c_conf_mode_v2.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %qup_i2c_conf_mode_v2.exit
  %msg = getelementptr inbounds %struct.qup_i2c_dev, ptr %1, i32 0, i32 15
  %sub = add nsw i32 %num, -1
  %is_last = getelementptr inbounds %struct.qup_i2c_dev, ptr %1, i32 0, i32 19
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %idx.0146, 1
  %exitcond.not = icmp eq i32 %inc, %num
  br i1 %exitcond.not, label %for.cond.for.end_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %idx.0146 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %arrayidx28 = getelementptr %struct.i2c_msg, ptr %msgs, i32 %idx.0146
  %345 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %345)
  store ptr %arrayidx28, ptr %msg, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %idx.0146, i32 %sub)
  %cmp29 = icmp eq i32 %idx.0146, %sub
  %frombool = zext i1 %cmp29 to i8
  %346 = ptrtoint ptr %is_last to i32
  call void @__asan_store1_noabort(i32 %346)
  store i8 %frombool, ptr %is_last, align 4
  %flags = getelementptr %struct.i2c_msg, ptr %msgs, i32 %idx.0146, i32 1
  %347 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %347)
  %348 = load i16, ptr %flags, align 2
  %349 = and i16 %348, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %349)
  %tobool31 = icmp ne i16 %349, 0
  %call33 = tail call fastcc i32 @qup_i2c_xfer_v2_msg(ptr noundef %1, i32 noundef %idx.0146, i1 noundef zeroext %tobool31)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %for.cond, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge, %qup_i2c_conf_mode_v2.exit.for.end_crit_edge
  %ret.1 = phi i32 [ 0, %qup_i2c_conf_mode_v2.exit.for.end_crit_edge ], [ %call33, %for.body.for.end_crit_edge ], [ 0, %for.cond.for.end_crit_edge ]
  %msg37 = getelementptr inbounds %struct.qup_i2c_dev, ptr %1, i32 0, i32 15
  %350 = ptrtoint ptr %msg37 to i32
  call void @__asan_store4_noabort(i32 %350)
  store ptr null, ptr %msg37, align 4
  br label %if.end38

if.end38:                                         ; preds = %for.end, %qup_i2c_bam_xfer.exit
  %ret.2 = phi i32 [ %ret.2.i, %qup_i2c_bam_xfer.exit ], [ %ret.1, %for.end ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.2)
  %tobool39.not = icmp eq i32 %ret.2, 0
  br i1 %tobool39.not, label %if.then40, label %if.end38.out_crit_edge

if.end38.out_crit_edge:                           ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then40:                                        ; preds = %if.end38
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %351 = load volatile i32, ptr @jiffies, align 128
  %add.i117 = add i32 %351, 4
  %352 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load ptr, ptr %base, align 4
  %add.ptr1.i = getelementptr i8, ptr %353, i32 1028
  %354 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i) #9, !srcloc !145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !183
  %355 = and i32 %354, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %355)
  %tobool.not2.i = icmp eq i32 %355, 0
  br i1 %tobool.not2.i, label %if.then40.if.then44_crit_edge, label %if.then40.if.end.i123_crit_edge

if.then40.if.end.i123_crit_edge:                  ; preds = %if.then40
  br label %if.end.i123

if.then40.if.then44_crit_edge:                    ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then44

if.end.i123:                                      ; preds = %if.end.i123.if.end.i123_crit_edge, %if.then40.if.end.i123_crit_edge
  %ret.03.i = phi i32 [ %spec.select.i120, %if.end.i123.if.end.i123_crit_edge ], [ 0, %if.then40.if.end.i123_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %356 = load volatile i32, ptr @jiffies, align 128
  %sub.i119 = sub i32 %add.i117, %356
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i119)
  %cmp.i = icmp slt i32 %sub.i119, 0
  %spec.select.i120 = select i1 %cmp.i, i32 -110, i32 %ret.03.i
  tail call void @usleep_range_state(i32 noundef 1, i32 noundef 2, i32 noundef 2) #9
  %357 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load ptr, ptr %base, align 4
  %add.ptr.i121 = getelementptr i8, ptr %358, i32 1028
  %359 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i121) #9, !srcloc !145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !183
  %360 = and i32 %359, 65536
  %tobool.not.i122 = icmp eq i32 %360, 0
  br i1 %tobool.not.i122, label %if.end42, label %if.end.i123.if.end.i123_crit_edge

if.end.i123.if.end.i123_crit_edge:                ; preds = %if.end.i123
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i123

if.end42:                                         ; preds = %if.end.i123
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i120)
  %cond = icmp eq i32 %spec.select.i120, 0
  br i1 %cond, label %if.end42.if.then44_crit_edge, label %if.end42.out_crit_edge

if.end42.out_crit_edge:                           ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end42.if.then44_crit_edge:                     ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then44

if.then44:                                        ; preds = %if.end42.if.then44_crit_edge, %if.then40.if.then44_crit_edge
  %call45 = tail call fastcc i32 @qup_i2c_change_state(ptr noundef %1, i32 noundef 0)
  br label %out

out:                                              ; preds = %if.then44, %if.end42.out_crit_edge, %if.end38.out_crit_edge, %qup_i2c_poll_state_i2c_master.exit, %qup_i2c_poll_state.exit, %entry.out_crit_edge
  %ret.4 = phi i32 [ %call.i, %entry.out_crit_edge ], [ -110, %qup_i2c_poll_state.exit ], [ %num, %if.then44 ], [ -5, %qup_i2c_poll_state_i2c_master.exit ], [ %spec.select.i120, %if.end42.out_crit_edge ], [ %ret.2, %if.end38.out_crit_edge ]
  %361 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %361)
  %362 = load ptr, ptr %1, align 8
  %call.i125 = tail call i64 @ktime_get_mono_fast_ns() #9
  %last_busy.i = getelementptr inbounds %struct.device, ptr %362, i32 0, i32 12, i32 22
  %363 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %363)
  store volatile i64 %call.i125, ptr %last_busy.i, align 8
  %364 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load ptr, ptr %1, align 8
  %call.i126 = tail call i32 @__pm_runtime_suspend(ptr noundef %365, i32 noundef 13) #9
  ret i32 %ret.4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qup_i2c_xfer_v2_msg(ptr noundef %qup, i32 noundef %msg_id, i1 noundef zeroext %is_rx) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %msg1 = getelementptr inbounds %struct.qup_i2c_dev, ptr %qup, i32 0, i32 15
  %0 = ptrtoint ptr %msg1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %msg1, align 4
  %blk2 = getelementptr inbounds %struct.qup_i2c_dev, ptr %qup, i32 0, i32 14
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %buf, align 4
  %cond = select i1 %is_rx, i32 254, i32 256
  %blk_xfer_limit = getelementptr inbounds %struct.qup_i2c_dev, ptr %qup, i32 0, i32 11
  %4 = ptrtoint ptr %blk_xfer_limit to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %cond, ptr %blk_xfer_limit, align 4
  %pos.i = getelementptr inbounds %struct.qup_i2c_dev, ptr %qup, i32 0, i32 14, i32 1
  %5 = ptrtoint ptr %pos.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %pos.i, align 4
  %len.i = getelementptr inbounds %struct.i2c_msg, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %len.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %len.i, align 4
  %conv.i = zext i16 %7 to i32
  %data_len.i = getelementptr inbounds %struct.qup_i2c_dev, ptr %qup, i32 0, i32 14, i32 4
  %8 = ptrtoint ptr %data_len.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %conv.i, ptr %data_len.i, align 8
  %9 = load i16, ptr %len.i, align 4
  %conv3.i = zext i16 %9 to i32
  %add.i = add nsw i32 %cond, -1
  %sub.i = add nuw nsw i32 %add.i, %conv3.i
  %div.i117 = udiv i32 %sub.i, %cond
  %10 = ptrtoint ptr %blk2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %div.i117, ptr %blk2, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %cond, i32 %sub.i)
  %cmp121.not = icmp ugt i32 %cond, %sub.i
  br i1 %cmp121.not, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %tags = getelementptr inbounds %struct.qup_i2c_dev, ptr %qup, i32 0, i32 14, i32 22
  %cur_tx_tags = getelementptr inbounds %struct.qup_i2c_dev, ptr %qup, i32 0, i32 14, i32 15
  %cur_blk_len = getelementptr inbounds %struct.qup_i2c_dev, ptr %qup, i32 0, i32 14, i32 5
  %tx_tag_len = getelementptr inbounds %struct.qup_i2c_dev, ptr %qup, i32 0, i32 14, i32 2
  %cur_data = getelementptr inbounds %struct.qup_i2c_dev, ptr %qup, i32 0, i32 14, i32 14
  %total_tx_len11 = getelementptr inbounds %struct.qup_i2c_dev, ptr %qup, i32 0, i32 14, i32 6
  %total_rx_len12 = getelementptr inbounds %struct.qup_i2c_dev, ptr %qup, i32 0, i32 14, i32 7
  %rx_tag_len = getelementptr inbounds %struct.qup_i2c_dev, ptr %qup, i32 0, i32 14, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %msg_id)
  %tobool14.not = icmp eq i32 %msg_id, 0
  %is_last = getelementptr inbounds %struct.qup_i2c_dev, ptr %qup, i32 0, i32 19
  %is_smbus_read.i = getelementptr inbounds %struct.qup_i2c_dev, ptr %qup, i32 0, i32 20
  %config_run.i = getelementptr inbounds %struct.qup_i2c_dev, ptr %qup, i32 0, i32 21
  %tx_tags_sent.i.i = getelementptr inbounds %struct.qup_i2c_dev, ptr %qup, i32 0, i32 14, i32 16
  %tx_fifo_data_pos.i.i = getelementptr inbounds %struct.qup_i2c_dev, ptr %qup, i32 0, i32 14, i32 8
  %is_tx_blk_mode.i.i = getelementptr inbounds %struct.qup_i2c_dev, ptr %qup, i32 0, i32 14, i32 20
  %base8.i.i = getelementptr inbounds %struct.qup_i2c_dev, ptr %qup, i32 0, i32 1
  %is_rx_blk_mode.i.i = getelementptr inbounds %struct.qup_i2c_dev, ptr %qup, i32 0, i32 14, i32 21
  %clk_ctl.i = getelementptr inbounds %struct.qup_i2c_dev, ptr %qup, i32 0, i32 6
  %xfer.i = getelementptr inbounds %struct.qup_i2c_dev, ptr %qup, i32 0, i32 31
  %irq.i = getelementptr inbounds %struct.qup_i2c_dev, ptr %qup, i32 0, i32 2
  %out_fifo_sz.i = getelementptr inbounds %struct.qup_i2c_dev, ptr %qup, i32 0, i32 7
  %tx_fifo_free.i = getelementptr inbounds %struct.qup_i2c_dev, ptr %qup, i32 0, i32 14, i32 9
  %xfer_timeout.i.i = getelementptr inbounds %struct.qup_i2c_dev, ptr %qup, i32 0, i32 13
  %bus_err.i.i = getelementptr inbounds %struct.qup_i2c_dev, ptr %qup, i32 0, i32 17
  %qup_err.i.i = getelementptr inbounds %struct.qup_i2c_dev, ptr %qup, i32 0, i32 18
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %1, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %if.end49.for.body_crit_edge, %for.body.lr.ph
  %msg_buf.0124 = phi ptr [ %3, %for.body.lr.ph ], [ %add.ptr, %if.end49.for.body_crit_edge ]
  %i.0122 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end49.for.body_crit_edge ]
  %11 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %data_len.i, align 8
  %13 = ptrtoint ptr %blk_xfer_limit to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %blk_xfer_limit, align 4
  %15 = tail call i32 @llvm.smin.i32(i32 %12, i32 %14) #9
  %16 = ptrtoint ptr %pos.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %i.0122, ptr %pos.i, align 4
  %17 = ptrtoint ptr %cur_tx_tags to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %tags, ptr %cur_tx_tags, align 4
  %18 = ptrtoint ptr %cur_blk_len to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %15, ptr %cur_blk_len, align 4
  %19 = ptrtoint ptr %msg1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %msg1, align 4
  %call5 = tail call fastcc i32 @qup_i2c_set_tags(ptr noundef %tags, ptr noundef %qup, ptr noundef %20)
  %21 = ptrtoint ptr %tx_tag_len to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %call5, ptr %tx_tag_len, align 4
  %22 = ptrtoint ptr %cur_data to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %msg_buf.0124, ptr %cur_data, align 4
  br i1 %is_rx, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %23 = ptrtoint ptr %total_tx_len11 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %call5, ptr %total_tx_len11, align 4
  %24 = ptrtoint ptr %rx_tag_len to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 2, ptr %rx_tag_len, align 4
  %add = add i32 %15, 2
  br label %if.end

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %add10 = add i32 %call5, %15
  %25 = ptrtoint ptr %total_tx_len11 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %add10, ptr %total_tx_len11, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %storemerge = phi i32 [ 0, %if.else ], [ %add, %if.then ]
  %26 = ptrtoint ptr %total_rx_len12 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %storemerge, ptr %total_rx_len12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0122)
  %tobool15.not = icmp eq i32 %i.0122, 0
  %spec.select = select i1 %tobool14.not, i1 %tobool15.not, i1 false
  %27 = ptrtoint ptr %is_last to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %is_last, align 4, !range !152
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool16.not = icmp eq i8 %28, 0
  br i1 %tobool16.not, label %if.end.lor.end_crit_edge, label %lor.rhs

if.end.lor.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.end

lor.rhs:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %29 = ptrtoint ptr %blk2 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %blk2, align 4
  %sub = add i32 %30, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0122, i32 %sub)
  %cmp18 = icmp ult i32 %i.0122, %sub
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.end.lor.end_crit_edge
  %31 = phi i1 [ true, %if.end.lor.end_crit_edge ], [ %cmp18, %lor.rhs ]
  %32 = ptrtoint ptr %msg1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %msg1, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %flags.i.i, align 2
  %36 = and i16 %35, 1025
  call void @__sanitizer_cov_trace_const_cmp2(i16 1025, i16 %36)
  %37 = icmp eq i16 %36, 1025
  br i1 %37, label %if.then.i, label %lor.end.if.end6.i_crit_edge

lor.end.if.end6.i_crit_edge:                      ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6.i

if.then.i:                                        ; preds = %lor.end
  %38 = ptrtoint ptr %is_smbus_read.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %is_smbus_read.i, align 1, !range !152
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool.not.i = icmp eq i8 %39, 0
  br i1 %tobool.not.i, label %if.then.i.if.end6.i_crit_edge, label %if.end6.thread.i

if.then.i.if.end6.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6.i

if.end6.thread.i:                                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i = getelementptr i8, ptr %msg_buf.0124, i32 1
  %40 = ptrtoint ptr %cur_data to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %add.ptr.i, ptr %cur_data, align 4
  br label %41

if.end6.i:                                        ; preds = %if.then.i.if.end6.i_crit_edge, %lor.end.if.end6.i_crit_edge
  %change_pause_state.addr.0.shrunk.i = phi i1 [ %31, %lor.end.if.end6.i_crit_edge ], [ false, %if.then.i.if.end6.i_crit_edge ]
  %spec.select87.i = select i1 %spec.select, i32 0, i32 -2147483648
  br label %41

41:                                               ; preds = %if.end6.i, %if.end6.thread.i
  %change_pause_state.addr.0.shrunk80.i = phi i1 [ %31, %if.end6.thread.i ], [ %change_pause_state.addr.0.shrunk.i, %if.end6.i ]
  %is_first.addr.0.shrunk79.i = phi i1 [ false, %if.end6.thread.i ], [ %spec.select, %if.end6.i ]
  %42 = phi i32 [ -2147483648, %if.end6.thread.i ], [ %spec.select87.i, %if.end6.i ]
  %43 = ptrtoint ptr %config_run.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %config_run.i, align 8
  %44 = call ptr @memset(ptr %tx_fifo_data_pos.i.i, i32 0, i32 24)
  %45 = ptrtoint ptr %tx_tags_sent.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %tx_tags_sent.i.i, align 4
  %46 = ptrtoint ptr %is_tx_blk_mode.i.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %is_tx_blk_mode.i.i, align 4, !range !152
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool.not.i.i = icmp eq i8 %47, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  %48 = ptrtoint ptr %config_run.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %config_run.i, align 8
  %50 = ptrtoint ptr %total_tx_len11 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %total_tx_len11, align 4
  %or7.i.i = or i32 %51, %49
  %52 = tail call i32 @llvm.bswap.i32(i32 %or7.i.i) #9
  %53 = ptrtoint ptr %base8.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %base8.i.i, align 4
  br i1 %tobool.not.i.i, label %do.body2.i.i, label %do.body.i.i

do.body.i.i:                                      ; preds = %41
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i = getelementptr i8, ptr %54, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %52) #9, !srcloc !144
  br label %if.end.i.i

do.body2.i.i:                                     ; preds = %41
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr9.i.i = getelementptr i8, ptr %54, i32 336
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i.i, i32 %52) #9, !srcloc !144
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.body2.i.i, %do.body.i.i
  %55 = ptrtoint ptr %total_rx_len12 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %total_rx_len12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool10.not.i.i = icmp eq i32 %56, 0
  br i1 %tobool10.not.i.i, label %if.end.i.i.qup_i2c_conf_count_v2.exit.i_crit_edge, label %if.then11.i.i

if.end.i.i.qup_i2c_conf_count_v2.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %qup_i2c_conf_count_v2.exit.i

if.then11.i.i:                                    ; preds = %if.end.i.i
  %57 = ptrtoint ptr %is_rx_blk_mode.i.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %is_rx_blk_mode.i.i, align 1, !range !152
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %tobool12.not.i.i = icmp eq i8 %58, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  %59 = ptrtoint ptr %config_run.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %config_run.i, align 8
  %61 = ptrtoint ptr %total_rx_len12 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %total_rx_len12, align 4
  %or28.i.i = or i32 %62, %60
  %63 = tail call i32 @llvm.bswap.i32(i32 %or28.i.i) #9
  %64 = ptrtoint ptr %base8.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %base8.i.i, align 4
  br i1 %tobool12.not.i.i, label %do.body23.i.i, label %do.body14.i.i

do.body14.i.i:                                    ; preds = %if.then11.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr21.i.i = getelementptr i8, ptr %65, i32 512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21.i.i, i32 %63) #9, !srcloc !144
  br label %qup_i2c_conf_count_v2.exit.i

do.body23.i.i:                                    ; preds = %if.then11.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr30.i.i = getelementptr i8, ptr %65, i32 520
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30.i.i, i32 %63) #9, !srcloc !144
  br label %qup_i2c_conf_count_v2.exit.i

qup_i2c_conf_count_v2.exit.i:                     ; preds = %do.body23.i.i, %do.body14.i.i, %if.end.i.i.qup_i2c_conf_count_v2.exit.i_crit_edge
  %qup_config.0.i.i = phi i32 [ 519, %do.body14.i.i ], [ 519, %do.body23.i.i ], [ 647, %if.end.i.i.qup_i2c_conf_count_v2.exit.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !203
  tail call void @arm_heavy_mb() #9
  %66 = tail call i32 @llvm.bswap.i32(i32 %qup_config.0.i.i) #9
  %67 = ptrtoint ptr %base8.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %base8.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %68, i32 %66) #9, !srcloc !144
  br i1 %is_first.addr.0.shrunk79.i, label %if.then9.i, label %qup_i2c_conf_count_v2.exit.i.if.end19.i_crit_edge

qup_i2c_conf_count_v2.exit.i.if.end19.i_crit_edge: ; preds = %qup_i2c_conf_count_v2.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19.i

if.then9.i:                                       ; preds = %qup_i2c_conf_count_v2.exit.i
  %call10.i = tail call fastcc i32 @qup_i2c_change_state(ptr noundef %qup, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool11.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool11.not.i, label %do.body.i, label %if.then9.i.cleanup_crit_edge

if.then9.i.cleanup_crit_edge:                     ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body.i:                                        ; preds = %if.then9.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !204
  tail call void @arm_heavy_mb() #9
  %69 = ptrtoint ptr %clk_ctl.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %clk_ctl.i, align 8
  %71 = tail call i32 @llvm.bswap.i32(i32 %70) #9
  %72 = ptrtoint ptr %base8.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %base8.i.i, align 4
  %add.ptr14.i = getelementptr i8, ptr %73, i32 1024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.i, i32 %71) #9, !srcloc !144
  %call15.i = tail call fastcc i32 @qup_i2c_change_state(ptr noundef %qup, i32 noundef 3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %tobool16.not.i = icmp eq i32 %call15.i, 0
  br i1 %tobool16.not.i, label %do.body.i.if.end19.i_crit_edge, label %do.body.i.cleanup_crit_edge

do.body.i.cleanup_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body.i.if.end19.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19.i

if.end19.i:                                       ; preds = %do.body.i.if.end19.i_crit_edge, %qup_i2c_conf_count_v2.exit.i.if.end19.i_crit_edge
  %74 = ptrtoint ptr %xfer.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 0, ptr %xfer.i, align 4
  %75 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %irq.i, align 8
  tail call void @enable_irq(i32 noundef %76) #9
  %77 = ptrtoint ptr %is_tx_blk_mode.i.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %is_tx_blk_mode.i.i, align 4, !range !152
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %78)
  %tobool20.not.i = icmp eq i8 %78, 0
  br i1 %tobool20.not.i, label %if.then21.i, label %if.end19.i.if.end26.i_crit_edge

if.end19.i.if.end26.i_crit_edge:                  ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26.i

if.then21.i:                                      ; preds = %if.end19.i
  %79 = ptrtoint ptr %out_fifo_sz.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %out_fifo_sz.i, align 4
  %81 = ptrtoint ptr %tx_fifo_free.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %80, ptr %tx_fifo_free.i, align 4
  br i1 %is_rx, label %if.then23.i, label %if.else24.i

if.then23.i:                                      ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @qup_i2c_write_rx_tags_v2(ptr noundef %qup) #9
  br label %if.end26.i

if.else24.i:                                      ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @qup_i2c_write_tx_fifo_v2(ptr noundef %qup) #9
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.else24.i, %if.then23.i, %if.end19.i.if.end26.i_crit_edge
  %call27.i = tail call fastcc i32 @qup_i2c_change_state(ptr noundef %qup, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i)
  %tobool28.not.i = icmp eq i32 %call27.i, 0
  br i1 %tobool28.not.i, label %if.end30.i, label %if.end26.i.qup_i2c_conf_xfer_v2.exit.thread114_crit_edge

if.end26.i.qup_i2c_conf_xfer_v2.exit.thread114_crit_edge: ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %qup_i2c_conf_xfer_v2.exit.thread114

if.end30.i:                                       ; preds = %if.end26.i
  %82 = ptrtoint ptr %xfer_timeout.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %xfer_timeout.i.i, align 4
  %call.i.i = tail call i32 @wait_for_completion_timeout(ptr noundef %xfer.i, i32 noundef %83) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i73.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i73.i, label %do.body.i75.i, label %if.end30.i.if.end.i76.i_crit_edge

if.end30.i.if.end.i76.i_crit_edge:                ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i76.i

do.body.i75.i:                                    ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !182
  tail call void @arm_heavy_mb() #9
  %84 = ptrtoint ptr %base8.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %base8.i.i, align 4
  %add.ptr.i74.i = getelementptr i8, ptr %85, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i74.i, i32 16777216) #9, !srcloc !144
  br label %if.end.i76.i

if.end.i76.i:                                     ; preds = %do.body.i75.i, %if.end30.i.if.end.i76.i_crit_edge
  %call31.mux.i = phi i32 [ -110, %do.body.i75.i ], [ 0, %if.end30.i.if.end.i76.i_crit_edge ]
  %86 = ptrtoint ptr %bus_err.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %bus_err.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %tobool1.not.i.i = icmp eq i32 %87, 0
  br i1 %tobool1.not.i.i, label %lor.lhs.false.i.i, label %if.end.i76.i.qup_i2c_wait_for_complete.exit.thread.i_crit_edge

if.end.i76.i.qup_i2c_wait_for_complete.exit.thread.i_crit_edge: ; preds = %if.end.i76.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %qup_i2c_wait_for_complete.exit.thread.i

lor.lhs.false.i.i:                                ; preds = %if.end.i76.i
  %88 = ptrtoint ptr %qup_err.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %qup_err.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %tobool2.not.i.i = icmp eq i32 %89, 0
  br i1 %tobool2.not.i.i, label %qup_i2c_wait_for_complete.exit.i, label %lor.lhs.false.i.i.qup_i2c_wait_for_complete.exit.thread.i_crit_edge

lor.lhs.false.i.i.qup_i2c_wait_for_complete.exit.thread.i_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %qup_i2c_wait_for_complete.exit.thread.i

qup_i2c_wait_for_complete.exit.thread.i:          ; preds = %lor.lhs.false.i.i.qup_i2c_wait_for_complete.exit.thread.i_crit_edge, %if.end.i76.i.qup_i2c_wait_for_complete.exit.thread.i_crit_edge
  %and.i.i = and i32 %87, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool5.not.i.i = icmp eq i32 %and.i.i, 0
  %cond.i.i = select i1 %tobool5.not.i.i, i32 -5, i32 -6
  br label %qup_i2c_conf_xfer_v2.exit.thread114

qup_i2c_wait_for_complete.exit.i:                 ; preds = %lor.lhs.false.i.i
  %change_pause_state.addr.0.shrunk.not.i = xor i1 %change_pause_state.addr.0.shrunk80.i, true
  %brmerge.i = or i1 %tobool.not.i73.i, %change_pause_state.addr.0.shrunk.not.i
  br i1 %brmerge.i, label %qup_i2c_wait_for_complete.exit.i.qup_i2c_conf_xfer_v2.exit_crit_edge, label %if.then36.i

qup_i2c_wait_for_complete.exit.i.qup_i2c_conf_xfer_v2.exit_crit_edge: ; preds = %qup_i2c_wait_for_complete.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %qup_i2c_conf_xfer_v2.exit

if.then36.i:                                      ; preds = %qup_i2c_wait_for_complete.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %call37.i = tail call fastcc i32 @qup_i2c_change_state(ptr noundef %qup, i32 noundef 3) #9
  br label %qup_i2c_conf_xfer_v2.exit

qup_i2c_conf_xfer_v2.exit.thread114:              ; preds = %qup_i2c_wait_for_complete.exit.thread.i, %if.end26.i.qup_i2c_conf_xfer_v2.exit.thread114_crit_edge
  %ret.0.i.ph = phi i32 [ %cond.i.i, %qup_i2c_wait_for_complete.exit.thread.i ], [ %call27.i, %if.end26.i.qup_i2c_conf_xfer_v2.exit.thread114_crit_edge ]
  %90 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %irq.i, align 8
  tail call void @disable_irq(i32 noundef %91) #9
  br label %cleanup

qup_i2c_conf_xfer_v2.exit:                        ; preds = %if.then36.i, %qup_i2c_wait_for_complete.exit.i.qup_i2c_conf_xfer_v2.exit_crit_edge
  %ret.0.i = phi i32 [ %call31.mux.i, %qup_i2c_wait_for_complete.exit.i.qup_i2c_conf_xfer_v2.exit_crit_edge ], [ %call37.i, %if.then36.i ]
  %92 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %irq.i, align 8
  tail call void @disable_irq(i32 noundef %93) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %tobool20.not = icmp eq i32 %ret.0.i, 0
  br i1 %tobool20.not, label %if.end22, label %qup_i2c_conf_xfer_v2.exit.cleanup_crit_edge

qup_i2c_conf_xfer_v2.exit.cleanup_crit_edge:      ; preds = %qup_i2c_conf_xfer_v2.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end22:                                         ; preds = %qup_i2c_conf_xfer_v2.exit
  %94 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %flags.i, align 2
  %96 = and i16 %95, 1025
  call void @__sanitizer_cov_trace_const_cmp2(i16 1025, i16 %96)
  %97 = icmp eq i16 %96, 1025
  br i1 %97, label %land.lhs.true, label %if.end22.if.end49_crit_edge

if.end22.if.end49_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end49

land.lhs.true:                                    ; preds = %if.end22
  %98 = ptrtoint ptr %len.i to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %99)
  %cmp24 = icmp eq i16 %99, 1
  br i1 %cmp24, label %land.lhs.true26, label %land.lhs.true.if.end49_crit_edge

land.lhs.true.if.end49_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end49

land.lhs.true26:                                  ; preds = %land.lhs.true
  %100 = ptrtoint ptr %is_smbus_read.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %is_smbus_read.i, align 1, !range !152
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %101)
  %tobool27.not = icmp eq i8 %101, 0
  br i1 %tobool27.not, label %if.then28, label %land.lhs.true26.if.end49_crit_edge

land.lhs.true26.if.end49_crit_edge:               ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end49

if.then28:                                        ; preds = %land.lhs.true26
  %102 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %buf, align 4
  %104 = ptrtoint ptr %103 to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %103, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %105)
  %cmp31 = icmp ugt i8 %105, 32
  br i1 %cmp31, label %if.then28.cleanup_crit_edge, label %if.end34

if.then28.cleanup_crit_edge:                      ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end34:                                         ; preds = %if.then28
  %conv37 = zext i8 %105 to i16
  %106 = ptrtoint ptr %len.i to i32
  call void @__asan_store2_noabort(i32 %106)
  store i16 %conv37, ptr %len.i, align 4
  %107 = ptrtoint ptr %is_smbus_read.i to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 1, ptr %is_smbus_read.i, align 1
  %call40 = tail call fastcc i32 @qup_i2c_xfer_v2_msg(ptr noundef %qup, i32 noundef %msg_id, i1 noundef zeroext true)
  %108 = ptrtoint ptr %is_smbus_read.i to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 0, ptr %is_smbus_read.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool42.not = icmp eq i32 %call40, 0
  br i1 %tobool42.not, label %if.end44, label %if.end34.cleanup_crit_edge

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end44:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  %109 = ptrtoint ptr %len.i to i32
  call void @__asan_load2_noabort(i32 %109)
  %110 = load i16, ptr %len.i, align 4
  %add47 = add i16 %110, 1
  store i16 %add47, ptr %len.i, align 4
  br label %if.end49

if.end49:                                         ; preds = %if.end44, %land.lhs.true26.if.end49_crit_edge, %land.lhs.true.if.end49_crit_edge, %if.end22.if.end49_crit_edge
  %add.ptr = getelementptr i8, ptr %msg_buf.0124, i32 %15
  %111 = ptrtoint ptr %blk_xfer_limit to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %blk_xfer_limit, align 4
  %113 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %data_len.i, align 4
  %sub52 = sub i32 %114, %112
  store i32 %sub52, ptr %data_len.i, align 4
  %inc = add nuw i32 %i.0122, 1
  %115 = ptrtoint ptr %blk2 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %blk2, align 4
  %cmp = icmp ult i32 %inc, %116
  br i1 %cmp, label %if.end49.for.body_crit_edge, label %if.end49.cleanup_crit_edge

if.end49.cleanup_crit_edge:                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end49.for.body_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

cleanup:                                          ; preds = %if.end49.cleanup_crit_edge, %if.end34.cleanup_crit_edge, %if.then28.cleanup_crit_edge, %qup_i2c_conf_xfer_v2.exit.cleanup_crit_edge, %qup_i2c_conf_xfer_v2.exit.thread114, %do.body.i.cleanup_crit_edge, %if.then9.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0.i.ph, %qup_i2c_conf_xfer_v2.exit.thread114 ], [ 0, %entry.cleanup_crit_edge ], [ %ret.0.i, %qup_i2c_conf_xfer_v2.exit.cleanup_crit_edge ], [ -71, %if.then28.cleanup_crit_edge ], [ %call40, %if.end34.cleanup_crit_edge ], [ 0, %if.end49.cleanup_crit_edge ], [ %call10.i, %if.then9.i.cleanup_crit_edge ], [ %call15.i, %do.body.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc i32 @qup_i2c_set_tags(ptr nocapture noundef writeonly %tags, ptr nocapture noundef readonly %qup, ptr nocapture noundef readonly %msg) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %msg to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %msg, align 4
  %conv.i = trunc i16 %1 to i8
  %shl.i = shl i8 %conv.i, 1
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %2 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %flags.i, align 2
  %4 = trunc i16 %3 to i8
  %5 = and i8 %4, 1
  %or.i = or i8 %5, %shl.i
  %blk = getelementptr inbounds %struct.qup_i2c_dev, ptr %qup, i32 0, i32 14
  %pos = getelementptr inbounds %struct.qup_i2c_dev, ptr %qup, i32 0, i32 14, i32 1
  %6 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pos, align 4
  %8 = ptrtoint ptr %blk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %blk, align 8
  %sub = add i32 %9, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %sub)
  %cmp = icmp eq i32 %7, %sub
  br i1 %cmp, label %land.rhs, label %entry.land.end_crit_edge

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.end

land.rhs:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %is_last = getelementptr inbounds %struct.qup_i2c_dev, ptr %qup, i32 0, i32 19
  %10 = ptrtoint ptr %is_last to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %is_last, align 4, !range !152
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool = icmp ne i8 %11, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry.land.end_crit_edge
  %12 = phi i1 [ false, %entry.land.end_crit_edge ], [ %tobool, %land.rhs ]
  %13 = and i16 %3, 1025
  call void @__sanitizer_cov_trace_const_cmp2(i16 1025, i16 %13)
  %14 = icmp eq i16 %13, 1025
  br i1 %14, label %if.then, label %if.end

if.then:                                          ; preds = %land.end
  %is_smbus_read.i = getelementptr inbounds %struct.qup_i2c_dev, ptr %qup, i32 0, i32 20
  %15 = ptrtoint ptr %is_smbus_read.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %is_smbus_read.i, align 1, !range !152
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not.i = icmp eq i8 %16, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %tags to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 -121, ptr %tags, align 1
  %data_len1.i.i = getelementptr inbounds %struct.qup_i2c_dev, ptr %qup, i32 0, i32 14, i32 4
  %18 = ptrtoint ptr %data_len1.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %data_len1.i.i, align 8
  %blk_xfer_limit.i.i = getelementptr inbounds %struct.qup_i2c_dev, ptr %qup, i32 0, i32 11
  %20 = ptrtoint ptr %blk_xfer_limit.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %blk_xfer_limit.i.i, align 4
  %22 = tail call i32 @llvm.smin.i32(i32 %19, i32 %21) #9
  %conv.i106 = trunc i32 %22 to i8
  br label %qup_i2c_set_tags_smb.exit

if.else.i:                                        ; preds = %if.then
  %23 = ptrtoint ptr %tags to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 -127, ptr %tags, align 1
  %arrayidx8.i = getelementptr i8, ptr %tags, i32 1
  %24 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %or.i, ptr %arrayidx8.i, align 1
  %25 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %flags.i, align 2
  %27 = and i16 %26, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %27)
  %tobool11.not.i = icmp eq i16 %27, 0
  br i1 %tobool11.not.i, label %if.else.i.if.end.i_crit_edge, label %if.then12.i

if.else.i.if.end.i_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then12.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx16.i = getelementptr i8, ptr %tags, i32 2
  %28 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %arrayidx16.i, align 1
  br label %if.end.i

if.end.i:                                         ; preds = %if.then12.i, %if.else.i.if.end.i_crit_edge
  %len.0.i = phi i32 [ 3, %if.then12.i ], [ 2, %if.else.i.if.end.i_crit_edge ]
  %inc17.i = add nuw nsw i32 %len.0.i, 1
  %arrayidx18.i = getelementptr i8, ptr %tags, i32 %len.0.i
  %29 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 -123, ptr %arrayidx18.i, align 1
  %inc19.i = add nuw nsw i32 %len.0.i, 2
  br label %qup_i2c_set_tags_smb.exit

qup_i2c_set_tags_smb.exit:                        ; preds = %if.end.i, %if.then.i
  %inc17.sink.i = phi i32 [ %inc17.i, %if.end.i ], [ 1, %if.then.i ]
  %.sink.i = phi i8 [ 1, %if.end.i ], [ %conv.i106, %if.then.i ]
  %len.1.i = phi i32 [ %inc19.i, %if.end.i ], [ 2, %if.then.i ]
  %arrayidx20.i = getelementptr i8, ptr %tags, i32 %inc17.sink.i
  %30 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %.sink.i, ptr %arrayidx20.i, align 1
  br label %cleanup

if.end:                                           ; preds = %land.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp8 = icmp eq i32 %7, 0
  br i1 %cmp8, label %if.then10, label %if.end.if.end24_crit_edge

if.end.if.end24_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

if.then10:                                        ; preds = %if.end
  %31 = ptrtoint ptr %tags to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 -127, ptr %tags, align 1
  %arrayidx14 = getelementptr i8, ptr %tags, i32 1
  %32 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %or.i, ptr %arrayidx14, align 1
  %33 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %flags.i, align 2
  %35 = and i16 %34, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %35)
  %tobool17.not = icmp eq i16 %35, 0
  br i1 %tobool17.not, label %if.then10.if.end24_crit_edge, label %if.then18

if.then10.if.end24_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

if.then18:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx22 = getelementptr i8, ptr %tags, i32 2
  %36 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 0, ptr %arrayidx22, align 1
  br label %if.end24

if.end24:                                         ; preds = %if.then18, %if.then10.if.end24_crit_edge, %if.end.if.end24_crit_edge
  %len.0 = phi i32 [ 3, %if.then18 ], [ 2, %if.then10.if.end24_crit_edge ], [ 0, %if.end.if.end24_crit_edge ]
  %37 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %flags.i, align 2
  %39 = and i16 %38, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %39)
  %tobool30.not = icmp eq i16 %39, 0
  br i1 %12, label %if.then26, label %if.else37

if.then26:                                        ; preds = %if.end24
  %arrayidx35 = getelementptr i8, ptr %tags, i32 %len.0
  br i1 %tobool30.not, label %if.else, label %if.then31

if.then31:                                        ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #11
  %40 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 -121, ptr %arrayidx35, align 1
  br label %if.end57

if.else:                                          ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #11
  %41 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 -125, ptr %arrayidx35, align 1
  br label %if.end57

if.else37:                                        ; preds = %if.end24
  br i1 %tobool30.not, label %if.else53, label %if.then42

if.then42:                                        ; preds = %if.else37
  call void @__sanitizer_cov_trace_pc() #11
  %42 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %pos, align 4
  %44 = ptrtoint ptr %blk to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %blk, align 8
  %sub47 = add i32 %45, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %sub47)
  %cmp48 = icmp eq i32 %43, %sub47
  %conv50 = select i1 %cmp48, i8 -122, i8 -123
  %arrayidx52 = getelementptr i8, ptr %tags, i32 %len.0
  %46 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %conv50, ptr %arrayidx52, align 1
  br label %if.end57

if.else53:                                        ; preds = %if.else37
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx55 = getelementptr i8, ptr %tags, i32 %len.0
  %47 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 -126, ptr %arrayidx55, align 1
  br label %if.end57

if.end57:                                         ; preds = %if.else53, %if.then42, %if.else, %if.then31
  %len.1 = add nuw nsw i32 %len.0, 1
  %data_len1.i = getelementptr inbounds %struct.qup_i2c_dev, ptr %qup, i32 0, i32 14, i32 4
  %48 = ptrtoint ptr %data_len1.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %data_len1.i, align 8
  %blk_xfer_limit.i = getelementptr inbounds %struct.qup_i2c_dev, ptr %qup, i32 0, i32 11
  %50 = ptrtoint ptr %blk_xfer_limit.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %blk_xfer_limit.i, align 4
  %52 = tail call i32 @llvm.smin.i32(i32 %49, i32 %51) #9
  %conv65 = trunc i32 %52 to i8
  %53 = getelementptr i8, ptr %tags, i32 %len.1
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %conv65, ptr %53, align 1
  %len.2 = add nuw nsw i32 %len.0, 2
  br label %cleanup

cleanup:                                          ; preds = %if.end57, %qup_i2c_set_tags_smb.exit
  %retval.0 = phi i32 [ %len.1.i, %qup_i2c_set_tags_smb.exit ], [ %len.2, %if.end57 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pfn_valid(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qup_i2c_bam_cb(ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %xfer = getelementptr inbounds %struct.qup_i2c_dev, ptr %data, i32 0, i32 31
  tail call void @complete(ptr noundef %xfer) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_request_chan(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__usecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qup_i2c_suspend(ptr noundef %device) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime_status.i = getelementptr inbounds %struct.device, ptr %device, i32 0, i32 12, i32 18
  %0 = ptrtoint ptr %runtime_status.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %runtime_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.i = icmp eq i32 %1, 2
  br i1 %cmp.i, label %pm_runtime_suspended.exit, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

pm_runtime_suspended.exit:                        ; preds = %entry
  %disable_depth.i = getelementptr inbounds %struct.device, ptr %device, i32 0, i32 12, i32 15
  %2 = ptrtoint ptr %disable_depth.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load.i = load i16, ptr %disable_depth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load.i)
  %tobool.not.i = icmp ult i16 %bf.load.i, 8192
  br i1 %tobool.not.i, label %pm_runtime_suspended.exit.return_crit_edge, label %pm_runtime_suspended.exit.if.then_crit_edge

pm_runtime_suspended.exit.if.then_crit_edge:      ; preds = %pm_runtime_suspended.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

pm_runtime_suspended.exit.return_crit_edge:       ; preds = %pm_runtime_suspended.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.then:                                          ; preds = %pm_runtime_suspended.exit.if.then_crit_edge, %entry.if.then_crit_edge
  %call1 = tail call i32 @qup_i2c_pm_suspend_runtime(ptr noundef %device)
  br label %return

return:                                           ; preds = %if.then, %pm_runtime_suspended.exit.return_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qup_i2c_resume(ptr noundef %device) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %device, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qup_i2c_pm_resume_runtime.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@qup_i2c_resume, %qup_i2c_pm_resume_runtime.exit)) #9
          to label %if.then.i [label %qup_i2c_pm_resume_runtime.exit], !srcloc !148

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @qup_i2c_pm_resume_runtime.__UNIQUE_ID_ddebug300, ptr noundef %device, ptr noundef nonnull @.str.59) #9
  br label %qup_i2c_pm_resume_runtime.exit

qup_i2c_pm_resume_runtime.exit:                   ; preds = %if.then.i, %entry
  tail call fastcc void @qup_i2c_enable_clocks(ptr noundef %1) #9
  %call.i = tail call i64 @ktime_get_mono_fast_ns() #9
  %last_busy.i = getelementptr inbounds %struct.device, ptr %device, i32 0, i32 12, i32 22
  %2 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %2)
  store volatile i64 %call.i, ptr %last_busy.i, align 8
  %call.i4 = tail call i32 @__pm_runtime_suspend(ptr noundef %device, i32 noundef 9) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qup_i2c_pm_suspend_runtime(ptr noundef %device) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %device, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qup_i2c_pm_suspend_runtime.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@qup_i2c_pm_suspend_runtime, %do.end)) #9
          to label %if.then [label %do.end], !srcloc !148

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @qup_i2c_pm_suspend_runtime.__UNIQUE_ID_ddebug299, ptr noundef %device, ptr noundef nonnull @.str.57) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call.i = tail call fastcc i32 @qup_i2c_change_state(ptr noundef %1, i32 noundef 0) #9
  %clk.i = getelementptr inbounds %struct.qup_i2c_dev, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk.i, align 4
  tail call void @clk_disable(ptr noundef %3) #9
  tail call void @clk_unprepare(ptr noundef %3) #9
  %base.i = getelementptr inbounds %struct.qup_i2c_dev, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #9, !srcloc !145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !150
  %7 = or i32 %6, 2097152
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !151
  tail call void @arm_heavy_mb() #9
  %8 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %7) #9, !srcloc !144
  %pclk.i = getelementptr inbounds %struct.qup_i2c_dev, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %pclk.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pclk.i, align 8
  tail call void @clk_disable(ptr noundef %11) #9
  tail call void @clk_unprepare(ptr noundef %11) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qup_i2c_pm_resume_runtime(ptr noundef %device) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %device, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qup_i2c_pm_resume_runtime.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@qup_i2c_pm_resume_runtime, %do.end)) #9
          to label %if.then [label %do.end], !srcloc !148

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @qup_i2c_pm_resume_runtime.__UNIQUE_ID_ddebug300, ptr noundef %device, ptr noundef nonnull @.str.59) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call fastcc void @qup_i2c_enable_clocks(ptr noundef %1)
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 61)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 61)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !11, !13, !15, !16, !18, !20, !22, !24, !25, !26, !27, !28, !29, !30, !32, !34, !35, !36, !38, !40, !41, !42, !43, !45, !47, !48, !49, !51, !53, !54, !55, !57, !59, !60, !61, !63, !64, !65, !67, !68, !70, !71, !73, !75, !76, !78, !80, !82, !84, !85, !86, !87, !89, !90, !91, !93, !94, !95, !97, !98, !99, !101, !102, !103, !105, !107, !109, !111, !113, !114, !115, !116, !118, !120, !121, !122, !124, !126, !128, !129, !130, !132, !133}
!llvm.module.flags = !{!134, !135, !136, !137, !138, !139, !140, !141}
!llvm.ident = !{!142}

!0 = !{ptr @__param_scl_freq, !1, !"__param_scl_freq", i1 false, i1 false}
!1 = !{!"../drivers/i2c/busses/i2c-qup.c", i32 154, i32 1}
!2 = !{ptr @__UNIQUE_ID_scl_freqtype291, !1, !"__UNIQUE_ID_scl_freqtype291", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_scl_freq292, !4, !"__UNIQUE_ID_scl_freq292", i1 false, i1 false}
!4 = !{!"../drivers/i2c/busses/i2c-qup.c", i32 155, i32 1}
!5 = !{ptr @__initcall__kmod_i2c_qup__301_1990_qup_i2c_driver_init6, !6, !"__initcall__kmod_i2c_qup__301_1990_qup_i2c_driver_init6", i1 false, i1 false}
!6 = !{!"../drivers/i2c/busses/i2c-qup.c", i32 1990, i32 1}
!7 = !{ptr @__exitcall_qup_i2c_driver_exit, !6, !"__exitcall_qup_i2c_driver_exit", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_file302, !9, !"__UNIQUE_ID_file302", i1 false, i1 false}
!9 = !{!"../drivers/i2c/busses/i2c-qup.c", i32 1992, i32 1}
!10 = !{ptr @__UNIQUE_ID_license303, !9, !"__UNIQUE_ID_license303", i1 false, i1 false}
!11 = !{ptr @__UNIQUE_ID_alias304, !12, !"__UNIQUE_ID_alias304", i1 false, i1 false}
!12 = !{!"../drivers/i2c/busses/i2c-qup.c", i32 1993, i32 1}
!13 = !{ptr @scl_freq, !14, !"scl_freq", i1 false, i1 false}
!14 = !{!"../drivers/i2c/busses/i2c-qup.c", i32 153, i32 21}
!15 = !{ptr @__param_str_scl_freq, !1, !"__param_str_scl_freq", i1 false, i1 false}
!16 = !{ptr @.str, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/i2c/busses/i2c-qup.c", i32 1983, i32 11}
!18 = !{ptr @qup_i2c_driver, !19, !"qup_i2c_driver", i1 false, i1 false}
!19 = !{!"../drivers/i2c/busses/i2c-qup.c", i32 1979, i32 31}
!20 = !{ptr @qup_i2c_probe.blk_sizes, !21, !"blk_sizes", i1 false, i1 false}
!21 = !{!"../drivers/i2c/busses/i2c-qup.c", i32 1659, i32 19}
!22 = !{ptr @.str.1, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/i2c/busses/i2c-qup.c", i32 1678, i32 3}
!24 = !{ptr @.str.2, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.3, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @qup_i2c_probe._entry, !23, !"_entry", i1 false, i1 false}
!29 = !{ptr @qup_i2c_probe._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.6, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/i2c/busses/i2c-qup.c", i32 1681, i32 44}
!32 = !{ptr @.str.8, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/i2c/busses/i2c-qup.c", i32 1683, i32 4}
!34 = !{ptr @qup_i2c_probe._entry.7, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @qup_i2c_probe._entry_ptr.9, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.10, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/i2c/busses/i2c-qup.c", i32 1688, i32 49}
!38 = !{ptr @.str.12, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/i2c/busses/i2c-qup.c", i32 1753, i32 3}
!40 = !{ptr @.str.13, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @qup_i2c_probe._entry.11, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @qup_i2c_probe._entry_ptr.14, !39, !"_entry_ptr", i1 false, i1 false}
!43 = distinct !{null, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/i2c/busses/i2c-qup.c", i32 1768, i32 5}
!45 = !{ptr @.str.17, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/i2c/busses/i2c-qup.c", i32 1770, i32 4}
!47 = !{ptr @qup_i2c_probe._entry.16, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @qup_i2c_probe._entry_ptr.18, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.19, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/i2c/busses/i2c-qup.c", i32 1775, i32 37}
!51 = !{ptr @.str.21, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/i2c/busses/i2c-qup.c", i32 1777, i32 4}
!53 = !{ptr @qup_i2c_probe._entry.20, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @qup_i2c_probe._entry_ptr.22, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.23, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/i2c/busses/i2c-qup.c", i32 1781, i32 38}
!57 = !{ptr @.str.25, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/i2c/busses/i2c-qup.c", i32 1783, i32 4}
!59 = !{ptr @qup_i2c_probe._entry.24, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @qup_i2c_probe._entry_ptr.26, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.28, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/i2c/busses/i2c-qup.c", i32 1803, i32 3}
!63 = !{ptr @qup_i2c_probe._entry.27, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @qup_i2c_probe._entry_ptr.29, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.30, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/i2c/busses/i2c-qup.c", i32 1808, i32 2}
!67 = !{ptr @qup_i2c_probe.__UNIQUE_ID_ddebug297, !66, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!68 = !{ptr @.str.31, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/i2c/busses/i2c-qup.c", i32 1872, i32 2}
!70 = !{ptr @qup_i2c_probe.__UNIQUE_ID_ddebug298, !69, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!71 = !{ptr @.str.32, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/i2c/busses/i2c-qup.c", i32 1881, i32 26}
!73 = !{ptr @init_completion.__key, !74, !"__key", i1 false, i1 false}
!74 = !{!"../include/linux/completion.h", i32 87, i32 2}
!75 = !{ptr @.str.33, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @qup_i2c_algo, !77, !"qup_i2c_algo", i1 false, i1 false}
!77 = !{!"../drivers/i2c/busses/i2c-qup.c", i32 1609, i32 35}
!78 = !{ptr @qup_i2c_quirks, !79, !"qup_i2c_quirks", i1 false, i1 false}
!79 = !{!"../drivers/i2c/busses/i2c-qup.c", i32 1624, i32 40}
!80 = !{ptr @qup_i2c_algo_v2, !81, !"qup_i2c_algo_v2", i1 false, i1 false}
!81 = !{!"../drivers/i2c/busses/i2c-qup.c", i32 1614, i32 35}
!82 = !{ptr @.str.34, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/i2c/busses/i2c-qup.c", i32 754, i32 3}
!84 = !{ptr @.str.35, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @qup_i2c_bam_schedule_desc._entry, !83, !"_entry", i1 false, i1 false}
!86 = !{ptr @qup_i2c_bam_schedule_desc._entry_ptr, !83, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.37, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/i2c/busses/i2c-qup.c", i32 777, i32 4}
!89 = !{ptr @qup_i2c_bam_schedule_desc._entry.36, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @qup_i2c_bam_schedule_desc._entry_ptr.38, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.40, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/i2c/busses/i2c-qup.c", i32 797, i32 3}
!93 = !{ptr @qup_i2c_bam_schedule_desc._entry.39, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @qup_i2c_bam_schedule_desc._entry_ptr.41, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.43, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/i2c/busses/i2c-qup.c", i32 806, i32 4}
!97 = !{ptr @qup_i2c_bam_schedule_desc._entry.42, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @qup_i2c_bam_schedule_desc._entry_ptr.44, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.46, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/i2c/busses/i2c-qup.c", i32 814, i32 4}
!101 = !{ptr @qup_i2c_bam_schedule_desc._entry.45, !100, !"_entry", i1 false, i1 false}
!102 = !{ptr @qup_i2c_bam_schedule_desc._entry_ptr.47, !100, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.48, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../include/linux/dmaengine.h", i32 1169, i32 2}
!105 = !{ptr @qup_i2c_quirks_v2, !106, !"qup_i2c_quirks_v2", i1 false, i1 false}
!106 = !{!"../drivers/i2c/busses/i2c-qup.c", i32 1629, i32 40}
!107 = distinct !{null, !108, !"qup_i2c_acpi_match", i1 false, i1 false}
!108 = !{!"../drivers/i2c/busses/i2c-qup.c", i32 1651, i32 36}
!109 = !{ptr @.str.49, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/i2c/busses/i2c-qup.c", i32 626, i32 45}
!111 = !{ptr @.str.50, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/i2c/busses/i2c-qup.c", i32 630, i32 4}
!113 = !{ptr @.str.51, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @qup_i2c_req_dma._entry, !112, !"_entry", i1 false, i1 false}
!115 = !{ptr @qup_i2c_req_dma._entry_ptr, !112, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.52, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/i2c/busses/i2c-qup.c", i32 636, i32 45}
!118 = !{ptr @.str.54, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/i2c/busses/i2c-qup.c", i32 638, i32 4}
!120 = !{ptr @qup_i2c_req_dma._entry.53, !119, !"_entry", i1 false, i1 false}
!121 = !{ptr @qup_i2c_req_dma._entry_ptr.55, !119, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @qup_i2c_dt_match, !123, !"qup_i2c_dt_match", i1 false, i1 false}
!123 = !{!"../drivers/i2c/busses/i2c-qup.c", i32 1971, i32 34}
!124 = !{ptr @qup_i2c_qup_pm_ops, !125, !"qup_i2c_qup_pm_ops", i1 false, i1 false}
!125 = !{!"../drivers/i2c/busses/i2c-qup.c", i32 1961, i32 32}
!126 = !{ptr @.str.56, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/i2c/busses/i2c-qup.c", i32 1929, i32 2}
!128 = !{ptr @.str.57, !127, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @qup_i2c_pm_suspend_runtime.__UNIQUE_ID_ddebug299, !127, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!130 = !{ptr @.str.58, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/i2c/busses/i2c-qup.c", i32 1938, i32 2}
!132 = !{ptr @.str.59, !131, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @qup_i2c_pm_resume_runtime.__UNIQUE_ID_ddebug300, !131, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!134 = !{i32 1, !"wchar_size", i32 2}
!135 = !{i32 1, !"min_enum_size", i32 4}
!136 = !{i32 8, !"branch-target-enforcement", i32 0}
!137 = !{i32 8, !"sign-return-address", i32 0}
!138 = !{i32 8, !"sign-return-address-all", i32 0}
!139 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!140 = !{i32 7, !"uwtable", i32 1}
!141 = !{i32 7, !"frame-pointer", i32 2}
!142 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!143 = !{i64 2155830180}
!144 = !{i64 7008670}
!145 = !{i64 7009088}
!146 = !{i64 2155778288}
!147 = !{i64 2155832465}
!148 = !{i64 2148995620, i64 2148995625, i64 2148995638, i64 2148995682, i64 2148995716, i64 2148995737}
!149 = !{i64 2155835151}
!150 = !{i64 2155818107}
!151 = !{i64 2155818414}
!152 = !{i8 0, i8 2}
!153 = !{i64 2155773621}
!154 = !{i64 2155774113}
!155 = !{i64 2155774605}
!156 = !{i64 2155774825}
!157 = !{i64 2155775233}
!158 = !{i64 2155775644}
!159 = !{i64 2155776051}
!160 = !{i64 2155776628}
!161 = !{i64 2155777374}
!162 = !{i64 2155781642}
!163 = !{i64 2155797194}
!164 = !{i64 2155797474}
!165 = !{i64 2155809441}
!166 = !{i64 2155810343}
!167 = !{i64 2155809207}
!168 = !{i64 2155808715}
!169 = !{i64 2155809892}
!170 = !{i64 2155802806}
!171 = !{i64 2155803219}
!172 = !{i64 2155780269}
!173 = !{i64 2155798490}
!174 = !{i64 2155799328}
!175 = !{i64 2155799773}
!176 = !{i64 2155800176}
!177 = !{i64 2155800611}
!178 = !{i64 2155801014}
!179 = !{i64 2155801540}
!180 = !{i64 2155801960}
!181 = !{i64 2155802378}
!182 = !{i64 2155796443}
!183 = !{i64 2155780944}
!184 = !{i64 2155815320}
!185 = !{i64 2155815731}
!186 = !{i64 2155816153}
!187 = !{i64 2155793793}
!188 = !{i64 2155794180}
!189 = !{i64 2155794918}
!190 = !{i64 2155795584}
!191 = !{i64 2155796011}
!192 = !{!"branch_weights", i32 2000, i32 1}
!193 = !{!"branch_weights", i32 1, i32 2000}
!194 = !{i64 2154565625, i64 2154566117, i64 2154565662, i64 2154565718, i64 2154565752, i64 2154565776, i64 2154565817, i64 2154565838, i64 2154565866, i64 2154565900}
!195 = !{i64 2154559306, i64 2154559798, i64 2154559343, i64 2154559399, i64 2154559433, i64 2154559457, i64 2154559498, i64 2154559519, i64 2154559547, i64 2154559581}
!196 = !{i64 2154560916, i64 2154561408, i64 2154560953, i64 2154561009, i64 2154561043, i64 2154561067, i64 2154561108, i64 2154561129, i64 2154561157, i64 2154561191}
!197 = !{i32 2, i32 6}
!198 = !{i64 2155779404}
!199 = !{i64 2155779706}
!200 = !{i64 2155807256}
!201 = !{i64 2155807643}
!202 = !{i64 2155808036}
!203 = !{i64 2155805850}
!204 = !{i64 2155810875}
