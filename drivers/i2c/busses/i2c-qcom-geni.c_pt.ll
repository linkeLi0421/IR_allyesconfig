; ModuleID = '/llk/IR_all_yes/drivers/i2c/busses/i2c-qcom-geni.c_pt.bc'
source_filename = "../drivers/i2c/busses/i2c-qcom-geni.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.geni_i2c_clk_fld = type { i32, i8, i8, i8, i8 }
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
%struct.geni_se = type { ptr, ptr, ptr, ptr, i32, ptr, [3 x %struct.geni_icc_path] }
%struct.geni_icc_path = type { ptr, i32 }
%struct.geni_i2c_dev = type { %struct.geni_se, i32, i32, i32, %struct.i2c_adapter, %struct.completion, ptr, i32, i32, %struct.spinlock, i32, ptr, i32, ptr, i32, i32 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_lock_operations = type { ptr, ptr, ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }

@__initcall__kmod_i2c_qcom_geni__297_744_geni_i2c_driver_init6 = internal global ptr @geni_i2c_driver_init, section ".initcall6.init", align 4
@geni_i2c_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @geni_i2c_probe, ptr @geni_i2c_remove, ptr @geni_i2c_shutdown, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @geni_i2c_dt_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @geni_i2c_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_geni_i2c_driver_exit = internal global ptr @geni_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description298 = internal constant [73 x i8] c"i2c_qcom_geni.description=I2C Controller Driver for GENI based QUP cores\00", section ".modinfo", align 1
@__UNIQUE_ID_file299 = internal constant [52 x i8] c"i2c_qcom_geni.file=drivers/i2c/busses/i2c-qcom-geni\00", section ".modinfo", align 1
@__UNIQUE_ID_license300 = internal constant [29 x i8] c"i2c_qcom_geni.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"geni_i2c\00", [23 x i8] zeroinitializer }, align 32
@geni_i2c_dt_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,geni-i2c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@geni_i2c_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @geni_i2c_suspend_noirq, ptr @geni_i2c_resume_noirq, ptr @geni_i2c_suspend_noirq, ptr @geni_i2c_resume_noirq, ptr @geni_i2c_suspend_noirq, ptr @geni_i2c_resume_noirq, ptr @geni_i2c_runtime_suspend, ptr @geni_i2c_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"se\00", [29 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"clock-frequency\00", [16 x i8] zeroinitializer }, align 32
@geni_i2c_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 546, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Bus frequency not specified, default to 100kHz.\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"geni_i2c_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/i2c/busses/i2c-qcom-geni.c\00", [61 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@geni_i2c_probe._entry_ptr = internal global ptr @geni_i2c_probe._entry, section ".printk_index", align 4
@geni_i2c_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.5, i32 560, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Invalid clk frequency %d Hz: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@geni_i2c_probe._entry_ptr.11 = internal global ptr @geni_i2c_probe._entry.8, section ".printk_index", align 4
@geni_i2c_algo = internal constant { %struct.i2c_algorithm, [36 x i8] } { %struct.i2c_algorithm { ptr @geni_i2c_xfer, ptr null, ptr null, ptr null, ptr @geni_i2c_func, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@geni_i2c_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&gi2c->lock\00", [20 x i8] zeroinitializer }, align 32
@geni_i2c_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.4, ptr @.str.5, i32 572, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Request_irq failed:%d: err:%d\0A\00", [33 x i8] zeroinitializer }, align 32
@geni_i2c_probe._entry_ptr.15 = internal global ptr @geni_i2c_probe._entry.13, section ".printk_index", align 4
@.str.16 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Geni-I2C\00", [23 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"qup-memory\00", [21 x i8] zeroinitializer }, align 32
@geni_i2c_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.4, ptr @.str.5, i32 600, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Error turning on resources %d\0A\00", [33 x i8] zeroinitializer }, align 32
@geni_i2c_probe._entry_ptr.20 = internal global ptr @geni_i2c_probe._entry.18, section ".printk_index", align 4
@geni_i2c_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.4, ptr @.str.5, i32 606, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Invalid proto %d\0A\00", [46 x i8] zeroinitializer }, align 32
@geni_i2c_probe._entry_ptr.23 = internal global ptr @geni_i2c_probe._entry.21, section ".printk_index", align 4
@geni_i2c_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.4, ptr @.str.5, i32 616, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Error turning off resources %d\0A\00", [32 x i8] zeroinitializer }, align 32
@geni_i2c_probe._entry_ptr.26 = internal global ptr @geni_i2c_probe._entry.24, section ".printk_index", align 4
@geni_i2c_probe.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.27, ptr @.str.4, ptr @.str.5, ptr @.str.28, i8 0, i8 -100, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"i2c_qcom_geni\00", [18 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"i2c fifo/se-dma mode. fifo depth:%d\0A\00", [59 x i8] zeroinitializer }, align 32
@geni_i2c_probe._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.4, ptr @.str.5, i32 634, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Error adding i2c adapter %d\0A\00", [35 x i8] zeroinitializer }, align 32
@geni_i2c_probe._entry_ptr.31 = internal global ptr @geni_i2c_probe._entry.29, section ".printk_index", align 4
@geni_i2c_probe.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.27, ptr @.str.4, ptr @.str.5, ptr @.str.32, i8 0, i8 -97, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Geni-I2C adaptor successfully added\0A\00", [59 x i8] zeroinitializer }, align 32
@geni_i2c_clk_map = internal constant { [3 x %struct.geni_i2c_clk_fld], [40 x i8] } { [3 x %struct.geni_i2c_clk_fld] [%struct.geni_i2c_clk_fld { i32 100000, i8 7, i8 10, i8 11, i8 26 }, %struct.geni_i2c_clk_fld { i32 400000, i8 2, i8 5, i8 12, i8 24 }, %struct.geni_i2c_clk_fld { i32 1000000, i8 1, i8 3, i8 9, i8 18 }], [40 x i8] zeroinitializer }, align 32
@geni_i2c_xfer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.5, i32 470, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"error turning SE resources:%d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"geni_i2c_xfer\00", [18 x i8] zeroinitializer }, align 32
@geni_i2c_xfer._entry_ptr = internal global ptr @geni_i2c_xfer._entry, section ".printk_index", align 4
@geni_i2c_abort_xfer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.5, i32 321, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Timeout abort_m_cmd\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"geni_i2c_abort_xfer\00", [44 x i8] zeroinitializer }, align 32
@geni_i2c_abort_xfer._entry_ptr = internal global ptr @geni_i2c_abort_xfer._entry, section ".printk_index", align 4
@geni_i2c_err.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.27, ptr @.str.37, ptr @.str.5, ptr @.str.38, i8 0, i8 49, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"geni_i2c_err\00", [19 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"len:%d, slv-addr:0x%x, RD/WR:%d\0A\00", [63 x i8] zeroinitializer }, align 32
@geni_i2c_err._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.37, ptr @.str.5, i32 199, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@geni_i2c_err._entry_ptr = internal global ptr @geni_i2c_err._entry, section ".printk_index", align 4
@.str.40 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Unknown I2C err GP_IRQ0\00", [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Bus proto err, noisy/unexpected start/stop\00", [53 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Bus arbitration lost, clock line undriveable\00", [51 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Cmd overrun, check GENI cmd-state machine\00", [54 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Illegal cmd, check GENI cmd-state machine\00", [54 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"I2C TXN timed out\00", [46 x i8] zeroinitializer }, align 32
@geni_i2c_err_misc.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.27, ptr @.str.50, ptr @.str.5, ptr @.str.51, i8 0, i8 46, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"geni_i2c_err_misc\00", [46 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"DMA:%d tx_stat:0x%x, rx_stat:0x%x, irq-stat:0x%x\0A\00", [46 x i8] zeroinitializer }, align 32
@geni_i2c_err_misc.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.27, ptr @.str.50, ptr @.str.5, ptr @.str.52, i8 0, i8 46, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"m_cmd:0x%x, geni_status:0x%x, geni_ios:0x%x\0A\00", [51 x i8] zeroinitializer }, align 32
@geni_i2c_rx_fsm_rst._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.5, i32 336, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Timeout resetting RX_FSM\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"geni_i2c_rx_fsm_rst\00", [44 x i8] zeroinitializer }, align 32
@geni_i2c_rx_fsm_rst._entry_ptr = internal global ptr @geni_i2c_rx_fsm_rst._entry, section ".printk_index", align 4
@geni_i2c_tx_fsm_rst._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.56, ptr @.str.5, i32 351, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Timeout resetting TX_FSM\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"geni_i2c_tx_fsm_rst\00", [44 x i8] zeroinitializer }, align 32
@geni_i2c_tx_fsm_rst._entry_ptr = internal global ptr @geni_i2c_tx_fsm_rst._entry, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.57 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@geni_i2c_irq.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.27, ptr @.str.58, ptr @.str.5, ptr @.str.59, i8 0, i8 62, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"geni_i2c_irq\00", [19 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"i2c dma tx:0x%x, dma rx:0x%x\0A\00", [34 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 100000, i64 400000, i64 1000000]
@___asan_gen_.60 = private unnamed_addr constant [16 x i8] c"geni_i2c_driver\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 732, i32 31 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 737, i32 11 }
@___asan_gen_.66 = private unnamed_addr constant [18 x i8] c"geni_i2c_dt_match\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 726, i32 34 }
@___asan_gen_.69 = private unnamed_addr constant [16 x i8] c"geni_i2c_pm_ops\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 720, i32 32 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 539, i32 35 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 543, i32 38 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 546, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 559, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant [14 x i8] c"geni_i2c_algo\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 507, i32 35 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 566, i32 2 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 571, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 580, i32 27 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 582, i32 32 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 600, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 606, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 616, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 624, i32 2 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 634, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 639, i32 2 }
@___asan_gen_.159 = private unnamed_addr constant [17 x i8] c"geni_i2c_clk_map\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 132, i32 38 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 470, i32 3 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 321, i32 3 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 195, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 199, i32 3 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 100, i32 21 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 103, i32 26 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 104, i32 25 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 106, i32 26 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 107, i32 30 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 109, i32 32 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 184, i32 2 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 186, i32 2 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 336, i32 3 }
@___asan_gen_.228 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 351, i32 3 }
@___asan_gen_.237 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.241 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 87, i32 2 }
@___asan_gen_.246 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.247 = private constant [38 x i8] c"../drivers/i2c/busses/i2c-qcom-geni.c\00", align 1
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 247, i32 3 }
@llvm.compiler.used = appending global [81 x ptr] [ptr @__UNIQUE_ID_description298, ptr @__UNIQUE_ID_file299, ptr @__UNIQUE_ID_license300, ptr @__exitcall_geni_i2c_driver_exit, ptr @__initcall__kmod_i2c_qcom_geni__297_744_geni_i2c_driver_init6, ptr @geni_i2c_abort_xfer._entry, ptr @geni_i2c_abort_xfer._entry_ptr, ptr @geni_i2c_driver_exit, ptr @geni_i2c_err._entry, ptr @geni_i2c_err._entry_ptr, ptr @geni_i2c_probe._entry, ptr @geni_i2c_probe._entry.13, ptr @geni_i2c_probe._entry.18, ptr @geni_i2c_probe._entry.21, ptr @geni_i2c_probe._entry.24, ptr @geni_i2c_probe._entry.29, ptr @geni_i2c_probe._entry.8, ptr @geni_i2c_probe._entry_ptr, ptr @geni_i2c_probe._entry_ptr.11, ptr @geni_i2c_probe._entry_ptr.15, ptr @geni_i2c_probe._entry_ptr.20, ptr @geni_i2c_probe._entry_ptr.23, ptr @geni_i2c_probe._entry_ptr.26, ptr @geni_i2c_probe._entry_ptr.31, ptr @geni_i2c_rx_fsm_rst._entry, ptr @geni_i2c_rx_fsm_rst._entry_ptr, ptr @geni_i2c_tx_fsm_rst._entry, ptr @geni_i2c_tx_fsm_rst._entry_ptr, ptr @geni_i2c_xfer._entry, ptr @geni_i2c_xfer._entry_ptr, ptr @geni_i2c_driver, ptr @.str, ptr @geni_i2c_dt_match, ptr @geni_i2c_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @geni_i2c_algo, ptr @geni_i2c_probe.__key, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.22, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @.str.30, ptr @.str.32, ptr @geni_i2c_clk_map, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.43, ptr @.str.44, ptr @.str.46, ptr @.str.47, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @init_completion.__key, ptr @.str.57, ptr @.str.58, ptr @.str.59], section "llvm.metadata"
@0 = internal global [63 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @geni_i2c_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @geni_i2c_dt_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @geni_i2c_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @geni_i2c_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @geni_i2c_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @geni_i2c_algo to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @geni_i2c_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @geni_i2c_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @geni_i2c_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @geni_i2c_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @geni_i2c_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @geni_i2c_probe._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @geni_i2c_clk_map to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @geni_i2c_xfer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @geni_i2c_abort_xfer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @geni_i2c_err._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @geni_i2c_rx_fsm_rst._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @geni_i2c_tx_fsm_rst._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @geni_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @geni_i2c_driver, ptr noundef null) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @geni_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @platform_driver_unregister(ptr noundef nonnull @geni_i2c_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @geni_i2c_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 1560, i32 noundef 3520) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev2 = getelementptr inbounds %struct.geni_se, ptr %call.i, i32 0, i32 1
  %0 = ptrtoint ptr %dev2 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev1, ptr %dev2, align 4
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %1 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 8
  %3 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %driver_data.i, align 4
  %wrapper = getelementptr inbounds %struct.geni_se, ptr %call.i, i32 0, i32 2
  %5 = ptrtoint ptr %wrapper to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %wrapper, align 8
  %call5 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #9
  %call6 = tail call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef %call5) #9
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call6, ptr %call.i, align 8
  %cmp.i = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then11, label %if.end15

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %call6 to i32
  br label %cleanup

if.end15:                                         ; preds = %if.end
  %call16 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.1) #9
  %clk = getelementptr inbounds %struct.geni_se, ptr %call.i, i32 0, i32 3
  %8 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call16, ptr %clk, align 4
  %cmp.i284 = icmp ugt ptr %call16, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i284, label %land.lhs.true, label %if.end26

land.lhs.true:                                    ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %call16 to i32
  br label %cleanup

if.end26:                                         ; preds = %if.end15
  %clk_freq_out = getelementptr inbounds %struct.geni_i2c_dev, ptr %call.i, i32 0, i32 10
  %call.i285 = tail call i32 @device_property_read_u32_array(ptr noundef %dev1, ptr noundef nonnull @.str.2, ptr noundef %clk_freq_out, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i285)
  %tobool28.not = icmp eq i32 %call.i285, 0
  br i1 %tobool28.not, label %if.end26.if.end31_crit_edge, label %do.end

if.end26.if.end31_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

do.end:                                           ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.3) #12
  %10 = ptrtoint ptr %clk_freq_out to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 100000, ptr %clk_freq_out, align 8
  br label %if.end31

if.end31:                                         ; preds = %do.end, %if.end26.if.end31_crit_edge
  %call38 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #9
  %irq = getelementptr inbounds %struct.geni_i2c_dev, ptr %call.i, i32 0, i32 2
  %11 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %call38, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %cmp = icmp slt i32 %call38, 0
  br i1 %cmp, label %if.end31.cleanup_crit_edge, label %if.end42

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end42:                                         ; preds = %if.end31
  %12 = ptrtoint ptr %clk_freq_out to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %clk_freq_out, align 8
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values)
  switch i32 %13, label %do.end48 [
    i32 100000, label %if.end42.if.end50_crit_edge
    i32 400000, label %if.then.fold.split.i
    i32 1000000, label %if.then.fold.split12.i
  ]

if.end42.if.end50_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end50

if.then.fold.split.i:                             ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end50

if.then.fold.split12.i:                           ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end50

do.end48:                                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %clk_freq_out to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %clk_freq_out, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.9, i32 noundef %16, i32 noundef -22) #12
  br label %cleanup

if.end50:                                         ; preds = %if.then.fold.split12.i, %if.then.fold.split.i, %if.end42.if.end50_crit_edge
  %itr.010.lcssa.i = phi ptr [ @geni_i2c_clk_map, %if.end42.if.end50_crit_edge ], [ getelementptr inbounds ([3 x %struct.geni_i2c_clk_fld], ptr @geni_i2c_clk_map, i32 0, i32 1), %if.then.fold.split.i ], [ getelementptr inbounds ([3 x %struct.geni_i2c_clk_fld], ptr @geni_i2c_clk_map, i32 0, i32 2), %if.then.fold.split12.i ]
  %clk_fld.i = getelementptr inbounds %struct.geni_i2c_dev, ptr %call.i, i32 0, i32 11
  %17 = ptrtoint ptr %clk_fld.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %itr.010.lcssa.i, ptr %clk_fld.i, align 4
  %adap = getelementptr inbounds %struct.geni_i2c_dev, ptr %call.i, i32 0, i32 4
  %algo = getelementptr inbounds %struct.geni_i2c_dev, ptr %call.i, i32 0, i32 4, i32 2
  %18 = ptrtoint ptr %algo to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @geni_i2c_algo, ptr %algo, align 8
  %done = getelementptr inbounds %struct.geni_i2c_dev, ptr %call.i, i32 0, i32 5
  %19 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %done, align 4
  %wait.i = getelementptr inbounds %struct.geni_i2c_dev, ptr %call.i, i32 0, i32 5, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.57, ptr noundef nonnull @init_completion.__key) #9
  %lock = getelementptr inbounds %struct.geni_i2c_dev, ptr %call.i, i32 0, i32 9
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.12, ptr noundef nonnull @geni_i2c_probe.__key, i16 noundef signext 3) #9
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %20 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %21 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %irq, align 4
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %23 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %24, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end50.dev_name.exit_crit_edge

if.end50.dev_name.exit_crit_edge:                 ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #11
  %25 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end50.dev_name.exit_crit_edge
  %retval.0.i287 = phi ptr [ %26, %if.end.i ], [ %24, %if.end50.dev_name.exit_crit_edge ]
  %call.i288 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %22, ptr noundef nonnull @geni_i2c_irq, ptr noundef null, i32 noundef 0, ptr noundef %retval.0.i287, ptr noundef nonnull %call.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i288)
  %tobool58.not = icmp eq i32 %call.i288, 0
  %27 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %irq, align 4
  br i1 %tobool58.not, label %if.end64, label %do.end62

do.end62:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.14, i32 noundef %28, i32 noundef %call.i288) #12
  br label %cleanup

if.end64:                                         ; preds = %dev_name.exit
  tail call void @disable_irq(i32 noundef %28) #9
  %driver_data.i.i289 = getelementptr inbounds %struct.geni_i2c_dev, ptr %call.i, i32 0, i32 4, i32 9, i32 8
  %29 = ptrtoint ptr %driver_data.i.i289 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call.i, ptr %driver_data.i.i289, align 4
  %parent69 = getelementptr inbounds %struct.geni_i2c_dev, ptr %call.i, i32 0, i32 4, i32 9, i32 1
  %30 = ptrtoint ptr %parent69 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %dev1, ptr %parent69, align 8
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %31 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %of_node, align 8
  %of_node72 = getelementptr inbounds %struct.geni_i2c_dev, ptr %call.i, i32 0, i32 4, i32 9, i32 27
  %33 = ptrtoint ptr %of_node72 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %32, ptr %of_node72, align 8
  %name = getelementptr inbounds %struct.geni_i2c_dev, ptr %call.i, i32 0, i32 4, i32 12
  %call74 = tail call i32 @strlcpy(ptr noundef %name, ptr noundef nonnull @.str.16, i32 noundef 48) #9
  %call76 = tail call i32 @geni_icc_get(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.17) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %tobool77.not = icmp eq i32 %call76, 0
  br i1 %tobool77.not, label %if.end79, label %if.end64.cleanup_crit_edge

if.end64.cleanup_crit_edge:                       ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end79:                                         ; preds = %if.end64
  %avg_bw = getelementptr inbounds %struct.geni_se, ptr %call.i, i32 0, i32 6, i32 0, i32 1
  %34 = ptrtoint ptr %avg_bw to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 1, ptr %avg_bw, align 4
  %avg_bw84 = getelementptr %struct.geni_se, ptr %call.i, i32 0, i32 6, i32 1, i32 1
  %35 = ptrtoint ptr %avg_bw84 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 1, ptr %avg_bw84, align 4
  %36 = ptrtoint ptr %clk_freq_out to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %clk_freq_out, align 8
  %div = udiv i32 %37, 1000
  %avg_bw89 = getelementptr %struct.geni_se, ptr %call.i, i32 0, i32 6, i32 2, i32 1
  %38 = ptrtoint ptr %avg_bw89 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %div, ptr %avg_bw89, align 4
  %call91 = tail call i32 @geni_icc_set_bw(ptr noundef nonnull %call.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91)
  %tobool92.not = icmp eq i32 %call91, 0
  br i1 %tobool92.not, label %if.end94, label %if.end79.cleanup_crit_edge

if.end79.cleanup_crit_edge:                       ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end94:                                         ; preds = %if.end79
  %call96 = tail call i32 @geni_se_resources_on(ptr noundef nonnull %call.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call96)
  %tobool97.not = icmp eq i32 %call96, 0
  br i1 %tobool97.not, label %if.end102, label %do.end101

do.end101:                                        ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.19, i32 noundef %call96) #12
  br label %cleanup

if.end102:                                        ; preds = %if.end94
  %39 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %call.i, align 4
  %add.ptr.i = getelementptr i8, ptr %40, i32 104
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !144
  %42 = lshr i32 %41, 16
  %and.i = and i32 %42, 255
  %43 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %call.i, align 4
  %add.ptr.i290 = getelementptr i8, ptr %44, i32 3620
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i290) #9, !srcloc !144
  %46 = lshr i32 %45, 8
  %shr.i = and i32 %46, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and.i)
  %cmp107.not = icmp eq i32 %and.i, 3
  br i1 %cmp107.not, label %if.end114, label %do.end111

do.end111:                                        ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.22, i32 noundef %and.i) #12
  %call113 = tail call i32 @geni_se_resources_off(ptr noundef nonnull %call.i) #9
  br label %cleanup

if.end114:                                        ; preds = %if.end102
  %sub = add nsw i32 %shr.i, -1
  %tx_wm = getelementptr inbounds %struct.geni_i2c_dev, ptr %call.i, i32 0, i32 1
  %47 = ptrtoint ptr %tx_wm to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %sub, ptr %tx_wm, align 8
  tail call void @geni_se_init(ptr noundef nonnull %call.i, i32 noundef %sub, i32 noundef %shr.i) #9
  tail call void @geni_se_config_packing(ptr noundef nonnull %call.i, i32 noundef 8, i32 noundef 4, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext true) #9
  %call119 = tail call i32 @geni_se_resources_off(ptr noundef nonnull %call.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call119)
  %tobool120.not = icmp eq i32 %call119, 0
  br i1 %tobool120.not, label %if.end125, label %do.end124

do.end124:                                        ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.25, i32 noundef %call119) #12
  br label %cleanup

if.end125:                                        ; preds = %if.end114
  %call127 = tail call i32 @geni_icc_disable(ptr noundef nonnull %call.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call127)
  %tobool128.not = icmp eq i32 %call127, 0
  br i1 %tobool128.not, label %do.body131, label %if.end125.cleanup_crit_edge

if.end125.cleanup_crit_edge:                      ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body131:                                       ; preds = %if.end125
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @geni_i2c_probe.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@geni_i2c_probe, %do.end140)) #9
          to label %if.then137 [label %do.end140], !srcloc !145

if.then137:                                       ; preds = %do.body131
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @geni_i2c_probe.__UNIQUE_ID_ddebug295, ptr noundef %dev1, ptr noundef nonnull @.str.28, i32 noundef %shr.i) #9
  br label %do.end140

do.end140:                                        ; preds = %if.then137, %do.body131
  %suspended = getelementptr inbounds %struct.geni_i2c_dev, ptr %call.i, i32 0, i32 12
  %48 = ptrtoint ptr %suspended to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 1, ptr %suspended, align 8
  %49 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev2, align 4
  %call.i291 = tail call i32 @__pm_runtime_set_status(ptr noundef %50, i32 noundef 2) #9
  %51 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev2, align 4
  tail call void @pm_runtime_set_autosuspend_delay(ptr noundef %52, i32 noundef 250) #9
  %53 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev2, align 4
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %54, i1 noundef zeroext true) #9
  %55 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dev2, align 4
  tail call void @pm_runtime_enable(ptr noundef %56) #9
  %call151 = tail call i32 @i2c_add_adapter(ptr noundef %adap) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call151)
  %tobool152.not = icmp eq i32 %call151, 0
  br i1 %tobool152.not, label %do.body160, label %do.end156

do.end156:                                        ; preds = %do.end140
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.30, i32 noundef %call151) #12
  %57 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dev2, align 4
  tail call void @__pm_runtime_disable(ptr noundef %58, i1 noundef zeroext true) #9
  br label %cleanup

do.body160:                                       ; preds = %do.end140
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @geni_i2c_probe.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@geni_i2c_probe, %cleanup)) #9
          to label %if.then174 [label %cleanup], !srcloc !145

if.then174:                                       ; preds = %do.body160
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @geni_i2c_probe.__UNIQUE_ID_ddebug296, ptr noundef %dev1, ptr noundef nonnull @.str.32) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then174, %do.body160, %do.end156, %if.end125.cleanup_crit_edge, %do.end124, %do.end111, %do.end101, %if.end79.cleanup_crit_edge, %if.end64.cleanup_crit_edge, %do.end62, %do.end48, %if.end31.cleanup_crit_edge, %land.lhs.true, %if.then11, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %7, %if.then11 ], [ -22, %do.end48 ], [ %call.i288, %do.end62 ], [ %call96, %do.end101 ], [ -6, %do.end111 ], [ %call119, %do.end124 ], [ %call151, %do.end156 ], [ %9, %land.lhs.true ], [ -12, %entry.cleanup_crit_edge ], [ %call38, %if.end31.cleanup_crit_edge ], [ %call76, %if.end64.cleanup_crit_edge ], [ %call91, %if.end79.cleanup_crit_edge ], [ %call127, %if.end125.cleanup_crit_edge ], [ 0, %if.then174 ], [ 0, %do.body160 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @geni_i2c_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %adap = getelementptr inbounds %struct.geni_i2c_dev, ptr %1, i32 0, i32 4
  tail call void @i2c_del_adapter(ptr noundef %adap) #9
  %dev = getelementptr inbounds %struct.geni_se, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void @__pm_runtime_disable(ptr noundef %3, i1 noundef zeroext true) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @geni_i2c_shutdown(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %adap = getelementptr inbounds %struct.geni_i2c_dev, ptr %1, i32 0, i32 4
  %lock_ops.i.i = getelementptr inbounds %struct.geni_i2c_dev, ptr %1, i32 0, i32 4, i32 4
  %2 = ptrtoint ptr %lock_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lock_ops.i.i, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  tail call void %5(ptr noundef %adap, i32 noundef 1) #9
  %locked_flags.i = getelementptr inbounds %struct.geni_i2c_dev, ptr %1, i32 0, i32 4, i32 10
  tail call void @_set_bit(i32 noundef 0, ptr noundef %locked_flags.i) #9
  %6 = ptrtoint ptr %lock_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lock_ops.i.i, align 8
  %unlock_bus.i.i = getelementptr inbounds %struct.i2c_lock_operations, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %unlock_bus.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %unlock_bus.i.i, align 4
  tail call void %9(ptr noundef %adap, i32 noundef 1) #9
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @geni_i2c_irq(i32 noundef %irq, ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  %lock = getelementptr inbounds %struct.geni_i2c_dev, ptr %dev, i32 0, i32 9
  tail call void @_raw_spin_lock(ptr noundef %lock) #9
  %add.ptr = getelementptr i8, ptr %1, i32 1552
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !144
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %add.ptr3 = getelementptr i8, ptr %1, i32 2052
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3) #9, !srcloc !144
  %add.ptr7 = getelementptr i8, ptr %1, i32 3136
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7) #9, !srcloc !144
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %add.ptr11 = getelementptr i8, ptr %1, i32 3392
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11) #9, !srcloc !144
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %add.ptr15 = getelementptr i8, ptr %1, i32 600
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr15) #9, !srcloc !144
  %cur18 = getelementptr inbounds %struct.geni_i2c_dev, ptr %dev, i32 0, i32 6
  %10 = ptrtoint ptr %cur18 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cur18, align 8
  %tobool.not = icmp ne ptr %11, null
  %and = and i32 %3, 40
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool19.not = icmp eq i32 %and, 0
  %or.cond = select i1 %tobool.not, i1 %tobool19.not, i1 false
  %and21 = and i32 %8, 832
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  %or.cond263 = select i1 %or.cond, i1 %tobool22.not, i1 false
  br i1 %or.cond263, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %and23 = and i32 %3, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %if.then.if.end_crit_edge, label %if.then25

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then25:                                        ; preds = %if.then
  %err1.i = getelementptr inbounds %struct.geni_i2c_dev, ptr %dev, i32 0, i32 3
  %12 = ptrtoint ptr %err1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %err1.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i = icmp eq i32 %13, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then25.if.end.i_crit_edge

if.then25.if.end.i_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %err1.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -6, ptr %err1.i, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then25.if.end.i_crit_edge
  %tobool4.not.i = icmp eq ptr %11, null
  br i1 %tobool4.not.i, label %if.end.i.if.end_crit_edge, label %do.body.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.body.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @geni_i2c_err.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@geni_i2c_irq, %if.end)) #9
          to label %if.then10.i [label %if.end], !srcloc !145

if.then10.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.geni_se, ptr %dev, i32 0, i32 1
  %15 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev.i, align 4
  %17 = ptrtoint ptr %cur18 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cur18, align 8
  %len.i = getelementptr inbounds %struct.i2c_msg, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %len.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %len.i, align 4
  %conv.i = zext i16 %20 to i32
  %21 = ptrtoint ptr %18 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %18, align 4
  %conv13.i = zext i16 %22 to i32
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %18, i32 0, i32 1
  %23 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %flags.i, align 2
  %conv15.i = zext i16 %24 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @geni_i2c_err.__UNIQUE_ID_ddebug293, ptr noundef %16, ptr noundef nonnull @.str.38, i32 noundef %conv.i, i32 noundef %conv13.i, i32 noundef %conv15.i) #9
  br label %if.end

if.end:                                           ; preds = %if.then10.i, %do.body.i, %if.end.i.if.end_crit_edge, %if.then.if.end_crit_edge
  %and26 = and i32 %3, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %if.end.if.end29_crit_edge, label %if.then28

if.end.if.end29_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29

if.then28:                                        ; preds = %if.end
  %err1.i275 = getelementptr inbounds %struct.geni_i2c_dev, ptr %dev, i32 0, i32 3
  %25 = ptrtoint ptr %err1.i275 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %err1.i275, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not.i276 = icmp eq i32 %26, 0
  br i1 %tobool.not.i276, label %if.then.i277, label %if.then28.if.end.i280_crit_edge

if.then28.if.end.i280_crit_edge:                  ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i280

if.then.i277:                                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #11
  %27 = ptrtoint ptr %err1.i275 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 -71, ptr %err1.i275, align 8
  br label %if.end.i280

if.end.i280:                                      ; preds = %if.then.i277, %if.then28.if.end.i280_crit_edge
  %28 = ptrtoint ptr %cur18 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %cur18, align 8
  %tobool4.not.i279 = icmp eq ptr %29, null
  br i1 %tobool4.not.i279, label %if.end.i280.geni_i2c_err.exit289_crit_edge, label %do.body.i281

if.end.i280.geni_i2c_err.exit289_crit_edge:       ; preds = %if.end.i280
  call void @__sanitizer_cov_trace_pc() #11
  br label %geni_i2c_err.exit289

do.body.i281:                                     ; preds = %if.end.i280
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @geni_i2c_err.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@geni_i2c_irq, %geni_i2c_err.exit289)) #9
          to label %if.then10.i288 [label %geni_i2c_err.exit289], !srcloc !145

if.then10.i288:                                   ; preds = %do.body.i281
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i282 = getelementptr inbounds %struct.geni_se, ptr %dev, i32 0, i32 1
  %30 = ptrtoint ptr %dev.i282 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev.i282, align 4
  %32 = ptrtoint ptr %cur18 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %cur18, align 8
  %len.i283 = getelementptr inbounds %struct.i2c_msg, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %len.i283 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %len.i283, align 4
  %conv.i284 = zext i16 %35 to i32
  %36 = ptrtoint ptr %33 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %33, align 4
  %conv13.i285 = zext i16 %37 to i32
  %flags.i286 = getelementptr inbounds %struct.i2c_msg, ptr %33, i32 0, i32 1
  %38 = ptrtoint ptr %flags.i286 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %flags.i286, align 2
  %conv15.i287 = zext i16 %39 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @geni_i2c_err.__UNIQUE_ID_ddebug293, ptr noundef %31, ptr noundef nonnull @.str.38, i32 noundef %conv.i284, i32 noundef %conv13.i285, i32 noundef %conv15.i287) #9
  br label %geni_i2c_err.exit289

geni_i2c_err.exit289:                             ; preds = %if.then10.i288, %do.body.i281, %if.end.i280.geni_i2c_err.exit289_crit_edge
  %dev25.i = getelementptr inbounds %struct.geni_se, ptr %dev, i32 0, i32 1
  %40 = ptrtoint ptr %dev25.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev25.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.43) #12
  tail call fastcc void @geni_i2c_err_misc(ptr noundef %dev) #9
  br label %if.end29

if.end29:                                         ; preds = %geni_i2c_err.exit289, %if.end.if.end29_crit_edge
  %and30 = and i32 %3, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  br i1 %tobool31.not, label %if.end29.if.end33_crit_edge, label %if.then32

if.end29.if.end33_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33

if.then32:                                        ; preds = %if.end29
  %err1.i290 = getelementptr inbounds %struct.geni_i2c_dev, ptr %dev, i32 0, i32 3
  %42 = ptrtoint ptr %err1.i290 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %err1.i290, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool.not.i291 = icmp eq i32 %43, 0
  br i1 %tobool.not.i291, label %if.then.i292, label %if.then32.if.end.i295_crit_edge

if.then32.if.end.i295_crit_edge:                  ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i295

if.then.i292:                                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #11
  %44 = ptrtoint ptr %err1.i290 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 -11, ptr %err1.i290, align 8
  br label %if.end.i295

if.end.i295:                                      ; preds = %if.then.i292, %if.then32.if.end.i295_crit_edge
  %45 = ptrtoint ptr %cur18 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %cur18, align 8
  %tobool4.not.i294 = icmp eq ptr %46, null
  br i1 %tobool4.not.i294, label %if.end.i295.geni_i2c_err.exit305_crit_edge, label %do.body.i296

if.end.i295.geni_i2c_err.exit305_crit_edge:       ; preds = %if.end.i295
  call void @__sanitizer_cov_trace_pc() #11
  br label %geni_i2c_err.exit305

do.body.i296:                                     ; preds = %if.end.i295
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @geni_i2c_err.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@geni_i2c_irq, %geni_i2c_err.exit305)) #9
          to label %if.then10.i303 [label %geni_i2c_err.exit305], !srcloc !145

if.then10.i303:                                   ; preds = %do.body.i296
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i297 = getelementptr inbounds %struct.geni_se, ptr %dev, i32 0, i32 1
  %47 = ptrtoint ptr %dev.i297 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev.i297, align 4
  %49 = ptrtoint ptr %cur18 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %cur18, align 8
  %len.i298 = getelementptr inbounds %struct.i2c_msg, ptr %50, i32 0, i32 2
  %51 = ptrtoint ptr %len.i298 to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %len.i298, align 4
  %conv.i299 = zext i16 %52 to i32
  %53 = ptrtoint ptr %50 to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %50, align 4
  %conv13.i300 = zext i16 %54 to i32
  %flags.i301 = getelementptr inbounds %struct.i2c_msg, ptr %50, i32 0, i32 1
  %55 = ptrtoint ptr %flags.i301 to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %flags.i301, align 2
  %conv15.i302 = zext i16 %56 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @geni_i2c_err.__UNIQUE_ID_ddebug293, ptr noundef %48, ptr noundef nonnull @.str.38, i32 noundef %conv.i299, i32 noundef %conv13.i300, i32 noundef %conv15.i302) #9
  br label %geni_i2c_err.exit305

geni_i2c_err.exit305:                             ; preds = %if.then10.i303, %do.body.i296, %if.end.i295.geni_i2c_err.exit305_crit_edge
  %dev25.i304 = getelementptr inbounds %struct.geni_se, ptr %dev, i32 0, i32 1
  %57 = ptrtoint ptr %dev25.i304 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dev25.i304, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %58, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.44) #12
  tail call fastcc void @geni_i2c_err_misc(ptr noundef %dev) #9
  br label %if.end33

if.end33:                                         ; preds = %geni_i2c_err.exit305, %if.end29.if.end33_crit_edge
  %and34 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  br i1 %tobool35.not, label %if.end33.if.end37_crit_edge, label %if.then36

if.end33.if.end37_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37

if.then36:                                        ; preds = %if.end33
  %err1.i306 = getelementptr inbounds %struct.geni_i2c_dev, ptr %dev, i32 0, i32 3
  %59 = ptrtoint ptr %err1.i306 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %err1.i306, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool.not.i307 = icmp eq i32 %60, 0
  br i1 %tobool.not.i307, label %if.then.i308, label %if.then36.if.end.i311_crit_edge

if.then36.if.end.i311_crit_edge:                  ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i311

if.then.i308:                                     ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #11
  %61 = ptrtoint ptr %err1.i306 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 -5, ptr %err1.i306, align 8
  br label %if.end.i311

if.end.i311:                                      ; preds = %if.then.i308, %if.then36.if.end.i311_crit_edge
  %62 = ptrtoint ptr %cur18 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %cur18, align 8
  %tobool4.not.i310 = icmp eq ptr %63, null
  br i1 %tobool4.not.i310, label %if.end.i311.geni_i2c_err.exit321_crit_edge, label %do.body.i312

if.end.i311.geni_i2c_err.exit321_crit_edge:       ; preds = %if.end.i311
  call void @__sanitizer_cov_trace_pc() #11
  br label %geni_i2c_err.exit321

do.body.i312:                                     ; preds = %if.end.i311
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @geni_i2c_err.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@geni_i2c_irq, %geni_i2c_err.exit321)) #9
          to label %if.then10.i319 [label %geni_i2c_err.exit321], !srcloc !145

if.then10.i319:                                   ; preds = %do.body.i312
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i313 = getelementptr inbounds %struct.geni_se, ptr %dev, i32 0, i32 1
  %64 = ptrtoint ptr %dev.i313 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %dev.i313, align 4
  %66 = ptrtoint ptr %cur18 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %cur18, align 8
  %len.i314 = getelementptr inbounds %struct.i2c_msg, ptr %67, i32 0, i32 2
  %68 = ptrtoint ptr %len.i314 to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %len.i314, align 4
  %conv.i315 = zext i16 %69 to i32
  %70 = ptrtoint ptr %67 to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %67, align 4
  %conv13.i316 = zext i16 %71 to i32
  %flags.i317 = getelementptr inbounds %struct.i2c_msg, ptr %67, i32 0, i32 1
  %72 = ptrtoint ptr %flags.i317 to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %flags.i317, align 2
  %conv15.i318 = zext i16 %73 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @geni_i2c_err.__UNIQUE_ID_ddebug293, ptr noundef %65, ptr noundef nonnull @.str.38, i32 noundef %conv.i315, i32 noundef %conv13.i316, i32 noundef %conv15.i318) #9
  br label %geni_i2c_err.exit321

geni_i2c_err.exit321:                             ; preds = %if.then10.i319, %do.body.i312, %if.end.i311.geni_i2c_err.exit321_crit_edge
  %dev25.i320 = getelementptr inbounds %struct.geni_se, ptr %dev, i32 0, i32 1
  %74 = ptrtoint ptr %dev25.i320 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dev25.i320, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %75, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.46) #12
  tail call fastcc void @geni_i2c_err_misc(ptr noundef %dev) #9
  br label %if.end37

if.end37:                                         ; preds = %geni_i2c_err.exit321, %if.end33.if.end37_crit_edge
  %and38 = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %if.end37.if.end41_crit_edge, label %if.then40

if.end37.if.end41_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end41

if.then40:                                        ; preds = %if.end37
  %err1.i322 = getelementptr inbounds %struct.geni_i2c_dev, ptr %dev, i32 0, i32 3
  %76 = ptrtoint ptr %err1.i322 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %err1.i322, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %tobool.not.i323 = icmp eq i32 %77, 0
  br i1 %tobool.not.i323, label %if.then.i324, label %if.then40.if.end.i327_crit_edge

if.then40.if.end.i327_crit_edge:                  ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i327

if.then.i324:                                     ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #11
  %78 = ptrtoint ptr %err1.i322 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 -5, ptr %err1.i322, align 8
  br label %if.end.i327

if.end.i327:                                      ; preds = %if.then.i324, %if.then40.if.end.i327_crit_edge
  %79 = ptrtoint ptr %cur18 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %cur18, align 8
  %tobool4.not.i326 = icmp eq ptr %80, null
  br i1 %tobool4.not.i326, label %if.end.i327.geni_i2c_err.exit337_crit_edge, label %do.body.i328

if.end.i327.geni_i2c_err.exit337_crit_edge:       ; preds = %if.end.i327
  call void @__sanitizer_cov_trace_pc() #11
  br label %geni_i2c_err.exit337

do.body.i328:                                     ; preds = %if.end.i327
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @geni_i2c_err.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@geni_i2c_irq, %geni_i2c_err.exit337)) #9
          to label %if.then10.i335 [label %geni_i2c_err.exit337], !srcloc !145

if.then10.i335:                                   ; preds = %do.body.i328
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i329 = getelementptr inbounds %struct.geni_se, ptr %dev, i32 0, i32 1
  %81 = ptrtoint ptr %dev.i329 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %dev.i329, align 4
  %83 = ptrtoint ptr %cur18 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %cur18, align 8
  %len.i330 = getelementptr inbounds %struct.i2c_msg, ptr %84, i32 0, i32 2
  %85 = ptrtoint ptr %len.i330 to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %len.i330, align 4
  %conv.i331 = zext i16 %86 to i32
  %87 = ptrtoint ptr %84 to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %84, align 4
  %conv13.i332 = zext i16 %88 to i32
  %flags.i333 = getelementptr inbounds %struct.i2c_msg, ptr %84, i32 0, i32 1
  %89 = ptrtoint ptr %flags.i333 to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %flags.i333, align 2
  %conv15.i334 = zext i16 %90 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @geni_i2c_err.__UNIQUE_ID_ddebug293, ptr noundef %82, ptr noundef nonnull @.str.38, i32 noundef %conv.i331, i32 noundef %conv13.i332, i32 noundef %conv15.i334) #9
  br label %geni_i2c_err.exit337

geni_i2c_err.exit337:                             ; preds = %if.then10.i335, %do.body.i328, %if.end.i327.geni_i2c_err.exit337_crit_edge
  %dev25.i336 = getelementptr inbounds %struct.geni_se, ptr %dev, i32 0, i32 1
  %91 = ptrtoint ptr %dev25.i336 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %dev25.i336, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %92, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.47) #12
  tail call fastcc void @geni_i2c_err_misc(ptr noundef %dev) #9
  br label %if.end41

if.end41:                                         ; preds = %geni_i2c_err.exit337, %if.end37.if.end41_crit_edge
  %and42 = and i32 %3, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42)
  %tobool43.not = icmp eq i32 %and42, 0
  br i1 %tobool43.not, label %if.end41.if.end45_crit_edge, label %if.then44

if.end41.if.end45_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end45

if.then44:                                        ; preds = %if.end41
  %err1.i338 = getelementptr inbounds %struct.geni_i2c_dev, ptr %dev, i32 0, i32 3
  %93 = ptrtoint ptr %err1.i338 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %err1.i338, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %tobool.not.i339 = icmp eq i32 %94, 0
  br i1 %tobool.not.i339, label %if.then.i340, label %if.then44.if.end.i343_crit_edge

if.then44.if.end.i343_crit_edge:                  ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i343

if.then.i340:                                     ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #11
  %95 = ptrtoint ptr %err1.i338 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 -110, ptr %err1.i338, align 8
  br label %if.end.i343

if.end.i343:                                      ; preds = %if.then.i340, %if.then44.if.end.i343_crit_edge
  %96 = ptrtoint ptr %cur18 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %cur18, align 8
  %tobool4.not.i342 = icmp eq ptr %97, null
  br i1 %tobool4.not.i342, label %if.end.i343.if.end45_crit_edge, label %do.body.i344

if.end.i343.if.end45_crit_edge:                   ; preds = %if.end.i343
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end45

do.body.i344:                                     ; preds = %if.end.i343
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @geni_i2c_err.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@geni_i2c_irq, %if.end45)) #9
          to label %if.then10.i351 [label %if.end45], !srcloc !145

if.then10.i351:                                   ; preds = %do.body.i344
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i345 = getelementptr inbounds %struct.geni_se, ptr %dev, i32 0, i32 1
  %98 = ptrtoint ptr %dev.i345 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %dev.i345, align 4
  %100 = ptrtoint ptr %cur18 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %cur18, align 8
  %len.i346 = getelementptr inbounds %struct.i2c_msg, ptr %101, i32 0, i32 2
  %102 = ptrtoint ptr %len.i346 to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %len.i346, align 4
  %conv.i347 = zext i16 %103 to i32
  %104 = ptrtoint ptr %101 to i32
  call void @__asan_load2_noabort(i32 %104)
  %105 = load i16, ptr %101, align 4
  %conv13.i348 = zext i16 %105 to i32
  %flags.i349 = getelementptr inbounds %struct.i2c_msg, ptr %101, i32 0, i32 1
  %106 = ptrtoint ptr %flags.i349 to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %flags.i349, align 2
  %conv15.i350 = zext i16 %107 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @geni_i2c_err.__UNIQUE_ID_ddebug293, ptr noundef %99, ptr noundef nonnull @.str.38, i32 noundef %conv.i347, i32 noundef %conv13.i348, i32 noundef %conv15.i350) #9
  br label %if.end45

if.end45:                                         ; preds = %if.then10.i351, %do.body.i344, %if.end.i343.if.end45_crit_edge, %if.end41.if.end45_crit_edge
  %and46 = and i32 %3, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46)
  %tobool47.not = icmp eq i32 %and46, 0
  br i1 %tobool47.not, label %if.end45.if.end49_crit_edge, label %if.then48

if.end45.if.end49_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end49

if.then48:                                        ; preds = %if.end45
  %err1.i353 = getelementptr inbounds %struct.geni_i2c_dev, ptr %dev, i32 0, i32 3
  %108 = ptrtoint ptr %err1.i353 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %err1.i353, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %109)
  %tobool.not.i354 = icmp eq i32 %109, 0
  br i1 %tobool.not.i354, label %if.then.i355, label %if.then48.if.end.i358_crit_edge

if.then48.if.end.i358_crit_edge:                  ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i358

if.then.i355:                                     ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #11
  %110 = ptrtoint ptr %err1.i353 to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 -5, ptr %err1.i353, align 8
  br label %if.end.i358

if.end.i358:                                      ; preds = %if.then.i355, %if.then48.if.end.i358_crit_edge
  %111 = ptrtoint ptr %cur18 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %cur18, align 8
  %tobool4.not.i357 = icmp eq ptr %112, null
  br i1 %tobool4.not.i357, label %if.end.i358.geni_i2c_err.exit368_crit_edge, label %do.body.i359

if.end.i358.geni_i2c_err.exit368_crit_edge:       ; preds = %if.end.i358
  call void @__sanitizer_cov_trace_pc() #11
  br label %geni_i2c_err.exit368

do.body.i359:                                     ; preds = %if.end.i358
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @geni_i2c_err.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@geni_i2c_irq, %geni_i2c_err.exit368)) #9
          to label %if.then10.i366 [label %geni_i2c_err.exit368], !srcloc !145

if.then10.i366:                                   ; preds = %do.body.i359
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i360 = getelementptr inbounds %struct.geni_se, ptr %dev, i32 0, i32 1
  %113 = ptrtoint ptr %dev.i360 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %dev.i360, align 4
  %115 = ptrtoint ptr %cur18 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %cur18, align 8
  %len.i361 = getelementptr inbounds %struct.i2c_msg, ptr %116, i32 0, i32 2
  %117 = ptrtoint ptr %len.i361 to i32
  call void @__asan_load2_noabort(i32 %117)
  %118 = load i16, ptr %len.i361, align 4
  %conv.i362 = zext i16 %118 to i32
  %119 = ptrtoint ptr %116 to i32
  call void @__asan_load2_noabort(i32 %119)
  %120 = load i16, ptr %116, align 4
  %conv13.i363 = zext i16 %120 to i32
  %flags.i364 = getelementptr inbounds %struct.i2c_msg, ptr %116, i32 0, i32 1
  %121 = ptrtoint ptr %flags.i364 to i32
  call void @__asan_load2_noabort(i32 %121)
  %122 = load i16, ptr %flags.i364, align 2
  %conv15.i365 = zext i16 %122 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @geni_i2c_err.__UNIQUE_ID_ddebug293, ptr noundef %114, ptr noundef nonnull @.str.38, i32 noundef %conv.i362, i32 noundef %conv13.i363, i32 noundef %conv15.i365) #9
  br label %geni_i2c_err.exit368

geni_i2c_err.exit368:                             ; preds = %if.then10.i366, %do.body.i359, %if.end.i358.geni_i2c_err.exit368_crit_edge
  %dev25.i367 = getelementptr inbounds %struct.geni_se, ptr %dev, i32 0, i32 1
  %123 = ptrtoint ptr %dev25.i367 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %dev25.i367, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %124, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.40) #12
  tail call fastcc void @geni_i2c_err_misc(ptr noundef %dev) #9
  br label %if.end49

if.end49:                                         ; preds = %geni_i2c_err.exit368, %if.end45.if.end49_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool50.not = icmp eq i32 %9, 0
  br i1 %tobool50.not, label %if.then51, label %if.end49.if.end140_crit_edge

if.end49.if.end140_crit_edge:                     ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end140

if.then51:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr52 = getelementptr i8, ptr %1, i32 2060
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr52, i32 0) #9, !srcloc !146
  br label %if.end140

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool54.not = icmp eq i32 %9, 0
  br i1 %tobool54.not, label %if.else66, label %do.body

do.body:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @geni_i2c_irq.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@geni_i2c_irq, %if.end140)) #9
          to label %if.then62 [label %if.end140], !srcloc !145

if.then62:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %dev64 = getelementptr inbounds %struct.geni_se, ptr %dev, i32 0, i32 1
  %125 = ptrtoint ptr %dev64 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %dev64, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @geni_i2c_irq.__UNIQUE_ID_ddebug294, ptr noundef %126, ptr noundef nonnull @.str.59, i32 noundef %6, i32 noundef %8) #9
  br label %if.end140

if.else66:                                        ; preds = %if.else
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 1
  %127 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %127)
  %128 = load i16, ptr %flags, align 2
  %129 = and i16 %128, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %129)
  %tobool68.not = icmp eq i16 %129, 0
  %and69 = and i32 %3, 201326592
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and69)
  %tobool70.not = icmp eq i32 %and69, 0
  %or.cond264 = select i1 %tobool68.not, i1 true, i1 %tobool70.not
  br i1 %or.cond264, label %if.else95, label %if.then71

if.then71:                                        ; preds = %if.else66
  %130 = and i32 %4, -255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %130)
  %cmp380.not = icmp eq i32 %130, 0
  br i1 %cmp380.not, label %if.then71.if.end140_crit_edge, label %for.body.lr.ph

if.then71.if.end140_crit_edge:                    ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end140

for.body.lr.ph:                                   ; preds = %if.then71
  %131 = tail call i32 @llvm.bswap.i32(i32 %130)
  %add.ptr75 = getelementptr i8, ptr %1, i32 1920
  %cur_rd = getelementptr inbounds %struct.geni_i2c_dev, ptr %dev, i32 0, i32 8
  %len = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 2
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 3
  %umax = call i32 @llvm.umax.i32(i32 %131, i32 1)
  br label %for.body

for.body:                                         ; preds = %while.end.for.body_crit_edge, %for.body.lr.ph
  %j.0381 = phi i32 [ 0, %for.body.lr.ph ], [ %inc94, %while.end.for.body_crit_edge ]
  %132 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr75) #9, !srcloc !144
  %133 = ptrtoint ptr %cur_rd to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %cur_rd, align 8
  %135 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %135)
  %136 = load i16, ptr %len, align 4
  %conv78374 = zext i16 %136 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %134, i32 %conv78374)
  %cmp79375 = icmp slt i32 %134, %conv78374
  br i1 %cmp79375, label %while.body, label %for.body.while.end_crit_edge

for.body.while.end_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body:                                       ; preds = %for.body
  %137 = tail call i32 @llvm.bswap.i32(i32 %132)
  %conv84 = trunc i32 %137 to i8
  %138 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %buf, align 4
  %inc = add nsw i32 %134, 1
  %140 = ptrtoint ptr %cur_rd to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 %inc, ptr %cur_rd, align 8
  %arrayidx = getelementptr i8, ptr %139, i32 %134
  %141 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 %conv84, ptr %arrayidx, align 1
  %142 = load i32, ptr %cur_rd, align 8
  %143 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %143)
  %144 = load i16, ptr %len, align 4
  %conv78 = zext i16 %144 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %142, i32 %conv78)
  %cmp79 = icmp slt i32 %142, %conv78
  br i1 %cmp79, label %while.body.1, label %while.body.while.end.loopexit_crit_edge

while.body.while.end.loopexit_crit_edge:          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.loopexit

while.body.1:                                     ; preds = %while.body
  %shr = lshr i32 %137, 8
  %conv84.1 = trunc i32 %shr to i8
  %145 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %buf, align 4
  %inc.1 = add nsw i32 %142, 1
  %147 = ptrtoint ptr %cur_rd to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 %inc.1, ptr %cur_rd, align 8
  %arrayidx.1 = getelementptr i8, ptr %146, i32 %142
  %148 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store1_noabort(i32 %148)
  store i8 %conv84.1, ptr %arrayidx.1, align 1
  %149 = load i32, ptr %cur_rd, align 8
  %150 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %150)
  %151 = load i16, ptr %len, align 4
  %conv78.1 = zext i16 %151 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %149, i32 %conv78.1)
  %cmp79.1 = icmp slt i32 %149, %conv78.1
  br i1 %cmp79.1, label %while.body.2, label %while.body.1.while.end.loopexit_crit_edge

while.body.1.while.end.loopexit_crit_edge:        ; preds = %while.body.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.loopexit

while.body.2:                                     ; preds = %while.body.1
  %shr.1 = lshr i32 %137, 16
  %conv84.2 = trunc i32 %shr.1 to i8
  %152 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %buf, align 4
  %inc.2 = add nsw i32 %149, 1
  %154 = ptrtoint ptr %cur_rd to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 %inc.2, ptr %cur_rd, align 8
  %arrayidx.2 = getelementptr i8, ptr %153, i32 %149
  %155 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store1_noabort(i32 %155)
  store i8 %conv84.2, ptr %arrayidx.2, align 1
  %156 = load i32, ptr %cur_rd, align 8
  %157 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %157)
  %158 = load i16, ptr %len, align 4
  %conv78.2 = zext i16 %158 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %156, i32 %conv78.2)
  %cmp79.2 = icmp slt i32 %156, %conv78.2
  br i1 %cmp79.2, label %while.body.3, label %while.body.2.while.end.loopexit_crit_edge

while.body.2.while.end.loopexit_crit_edge:        ; preds = %while.body.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.loopexit

while.body.3:                                     ; preds = %while.body.2
  call void @__sanitizer_cov_trace_pc() #11
  %shr.2 = lshr i32 %137, 24
  %conv84.3 = trunc i32 %shr.2 to i8
  %159 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %buf, align 4
  %inc.3 = add nsw i32 %156, 1
  %161 = ptrtoint ptr %cur_rd to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 %inc.3, ptr %cur_rd, align 8
  %arrayidx.3 = getelementptr i8, ptr %160, i32 %156
  %162 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store1_noabort(i32 %162)
  store i8 %conv84.3, ptr %arrayidx.3, align 1
  %163 = load i32, ptr %cur_rd, align 8
  %164 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %164)
  %165 = load i16, ptr %len, align 4
  br label %while.end.loopexit

while.end.loopexit:                               ; preds = %while.body.3, %while.body.2.while.end.loopexit_crit_edge, %while.body.1.while.end.loopexit_crit_edge, %while.body.while.end.loopexit_crit_edge
  %.lcssa403 = phi i32 [ %142, %while.body.while.end.loopexit_crit_edge ], [ %149, %while.body.1.while.end.loopexit_crit_edge ], [ %156, %while.body.2.while.end.loopexit_crit_edge ], [ %163, %while.body.3 ]
  %.lcssa402 = phi i16 [ %144, %while.body.while.end.loopexit_crit_edge ], [ %151, %while.body.1.while.end.loopexit_crit_edge ], [ %158, %while.body.2.while.end.loopexit_crit_edge ], [ %165, %while.body.3 ]
  %conv78.le = zext i16 %.lcssa402 to i32
  br label %while.end

while.end:                                        ; preds = %while.end.loopexit, %for.body.while.end_crit_edge
  %conv78.le.pre-phi = phi i32 [ %conv78374, %for.body.while.end_crit_edge ], [ %conv78.le, %while.end.loopexit ]
  %.lcssa = phi i32 [ %134, %for.body.while.end_crit_edge ], [ %.lcssa403, %while.end.loopexit ]
  call void @__sanitizer_cov_trace_cmp4(i32 %.lcssa, i32 %conv78.le.pre-phi)
  %cmp90 = icmp eq i32 %.lcssa, %conv78.le.pre-phi
  %inc94 = add nuw nsw i32 %j.0381, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc94, i32 %umax)
  %exitcond.not = icmp eq i32 %inc94, %umax
  %or.cond397 = select i1 %cmp90, i1 true, i1 %exitcond.not
  br i1 %or.cond397, label %while.end.if.end140_crit_edge, label %while.end.for.body_crit_edge

while.end.for.body_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

while.end.if.end140_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end140

if.else95:                                        ; preds = %if.else66
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %129)
  %tobool99.not = icmp ne i16 %129, 0
  %and101 = and i32 %3, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and101)
  %tobool102.not = icmp eq i32 %and101, 0
  %or.cond266 = select i1 %tobool99.not, i1 true, i1 %tobool102.not
  br i1 %or.cond266, label %if.else95.if.end140_crit_edge, label %for.cond104.preheader

if.else95.if.end140_crit_edge:                    ; preds = %if.else95
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end140

for.cond104.preheader:                            ; preds = %if.else95
  %tx_wm = getelementptr inbounds %struct.geni_i2c_dev, ptr %dev, i32 0, i32 1
  %166 = ptrtoint ptr %tx_wm to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %tx_wm, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %167)
  %cmp105389.not = icmp eq i32 %167, 0
  br i1 %cmp105389.not, label %for.cond104.preheader.if.end140_crit_edge, label %while.cond108.preheader.lr.ph

for.cond104.preheader.if.end140_crit_edge:        ; preds = %for.cond104.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end140

while.cond108.preheader.lr.ph:                    ; preds = %for.cond104.preheader
  %cur_wr = getelementptr inbounds %struct.geni_i2c_dev, ptr %dev, i32 0, i32 7
  %len109 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 2
  %buf118 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 3
  %add.ptr125 = getelementptr i8, ptr %1, i32 1792
  br label %while.cond108.preheader

for.cond104:                                      ; preds = %while.end124
  %inc135 = add nuw i32 %j.1390, 1
  %168 = ptrtoint ptr %tx_wm to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %tx_wm, align 8
  %cmp105 = icmp ult i32 %inc135, %169
  br i1 %cmp105, label %for.cond104.while.cond108.preheader_crit_edge, label %for.cond104.if.end140_crit_edge

for.cond104.if.end140_crit_edge:                  ; preds = %for.cond104
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end140

for.cond104.while.cond108.preheader_crit_edge:    ; preds = %for.cond104
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond108.preheader

while.cond108.preheader:                          ; preds = %for.cond104.while.cond108.preheader_crit_edge, %while.cond108.preheader.lr.ph
  %j.1390 = phi i32 [ 0, %while.cond108.preheader.lr.ph ], [ %inc135, %for.cond104.while.cond108.preheader_crit_edge ]
  %170 = ptrtoint ptr %cur_wr to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %cur_wr, align 4
  %172 = ptrtoint ptr %len109 to i32
  call void @__asan_load2_noabort(i32 %172)
  %173 = load i16, ptr %len109, align 4
  %conv110382 = zext i16 %173 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %171, i32 %conv110382)
  %cmp111383 = icmp slt i32 %171, %conv110382
  br i1 %cmp111383, label %while.body117, label %while.cond108.preheader.while.end124_crit_edge

while.cond108.preheader.while.end124_crit_edge:   ; preds = %while.cond108.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end124

while.body117:                                    ; preds = %while.cond108.preheader
  %174 = ptrtoint ptr %buf118 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %buf118, align 4
  %inc120 = add nsw i32 %171, 1
  %176 = ptrtoint ptr %cur_wr to i32
  call void @__asan_store4_noabort(i32 %176)
  store i32 %inc120, ptr %cur_wr, align 4
  %arrayidx121 = getelementptr i8, ptr %175, i32 %171
  %177 = ptrtoint ptr %arrayidx121 to i32
  call void @__asan_load1_noabort(i32 %177)
  %178 = load i8, ptr %arrayidx121, align 1
  %conv122 = zext i8 %178 to i32
  %179 = ptrtoint ptr %len109 to i32
  call void @__asan_load2_noabort(i32 %179)
  %180 = load i16, ptr %len109, align 4
  %conv110 = zext i16 %180 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %inc120, i32 %conv110)
  %cmp111 = icmp slt i32 %inc120, %conv110
  br i1 %cmp111, label %while.body117.1, label %while.body117.while.end124_crit_edge

while.body117.while.end124_crit_edge:             ; preds = %while.body117
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end124

while.body117.1:                                  ; preds = %while.body117
  %181 = ptrtoint ptr %buf118 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %buf118, align 4
  %inc120.1 = add nsw i32 %171, 2
  %183 = ptrtoint ptr %cur_wr to i32
  call void @__asan_store4_noabort(i32 %183)
  store i32 %inc120.1, ptr %cur_wr, align 4
  %arrayidx121.1 = getelementptr i8, ptr %182, i32 %inc120
  %184 = ptrtoint ptr %arrayidx121.1 to i32
  call void @__asan_load1_noabort(i32 %184)
  %185 = load i8, ptr %arrayidx121.1, align 1
  %conv122.1 = zext i8 %185 to i32
  %shl.1 = shl nuw nsw i32 %conv122.1, 8
  %or.1 = or i32 %shl.1, %conv122
  %186 = ptrtoint ptr %len109 to i32
  call void @__asan_load2_noabort(i32 %186)
  %187 = load i16, ptr %len109, align 4
  %conv110.1 = zext i16 %187 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %inc120.1, i32 %conv110.1)
  %cmp111.1 = icmp slt i32 %inc120.1, %conv110.1
  br i1 %cmp111.1, label %while.body117.2, label %while.body117.1.while.end124_crit_edge

while.body117.1.while.end124_crit_edge:           ; preds = %while.body117.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end124

while.body117.2:                                  ; preds = %while.body117.1
  %188 = ptrtoint ptr %buf118 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %buf118, align 4
  %inc120.2 = add nsw i32 %171, 3
  %190 = ptrtoint ptr %cur_wr to i32
  call void @__asan_store4_noabort(i32 %190)
  store i32 %inc120.2, ptr %cur_wr, align 4
  %arrayidx121.2 = getelementptr i8, ptr %189, i32 %inc120.1
  %191 = ptrtoint ptr %arrayidx121.2 to i32
  call void @__asan_load1_noabort(i32 %191)
  %192 = load i8, ptr %arrayidx121.2, align 1
  %conv122.2 = zext i8 %192 to i32
  %shl.2 = shl nuw nsw i32 %conv122.2, 16
  %or.2 = or i32 %shl.2, %or.1
  %193 = ptrtoint ptr %len109 to i32
  call void @__asan_load2_noabort(i32 %193)
  %194 = load i16, ptr %len109, align 4
  %conv110.2 = zext i16 %194 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %inc120.2, i32 %conv110.2)
  %cmp111.2 = icmp slt i32 %inc120.2, %conv110.2
  br i1 %cmp111.2, label %while.body117.3, label %while.body117.2.while.end124_crit_edge

while.body117.2.while.end124_crit_edge:           ; preds = %while.body117.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end124

while.body117.3:                                  ; preds = %while.body117.2
  call void @__sanitizer_cov_trace_pc() #11
  %195 = ptrtoint ptr %buf118 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %buf118, align 4
  %inc120.3 = add nsw i32 %171, 4
  %197 = ptrtoint ptr %cur_wr to i32
  call void @__asan_store4_noabort(i32 %197)
  store i32 %inc120.3, ptr %cur_wr, align 4
  %arrayidx121.3 = getelementptr i8, ptr %196, i32 %inc120.2
  %198 = ptrtoint ptr %arrayidx121.3 to i32
  call void @__asan_load1_noabort(i32 %198)
  %199 = load i8, ptr %arrayidx121.3, align 1
  %conv122.3 = zext i8 %199 to i32
  %shl.3 = shl nuw i32 %conv122.3, 24
  %or.3 = or i32 %shl.3, %or.2
  br label %while.end124

while.end124:                                     ; preds = %while.body117.3, %while.body117.2.while.end124_crit_edge, %while.body117.1.while.end124_crit_edge, %while.body117.while.end124_crit_edge, %while.cond108.preheader.while.end124_crit_edge
  %val.1.lcssa = phi i32 [ 0, %while.cond108.preheader.while.end124_crit_edge ], [ %conv122, %while.body117.while.end124_crit_edge ], [ %or.1, %while.body117.1.while.end124_crit_edge ], [ %or.2, %while.body117.2.while.end124_crit_edge ], [ %or.3, %while.body117.3 ]
  %200 = tail call i32 @llvm.bswap.i32(i32 %val.1.lcssa)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr125, i32 %200) #9, !srcloc !146
  %201 = ptrtoint ptr %cur_wr to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %cur_wr, align 4
  %203 = ptrtoint ptr %len109 to i32
  call void @__asan_load2_noabort(i32 %203)
  %204 = load i16, ptr %len109, align 4
  %conv128 = zext i16 %204 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %202, i32 %conv128)
  %cmp129 = icmp eq i32 %202, %conv128
  br i1 %cmp129, label %cleanup, label %for.cond104

cleanup:                                          ; preds = %while.end124
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr132 = getelementptr i8, ptr %1, i32 2060
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr132, i32 0) #9, !srcloc !146
  br label %if.end140

if.end140:                                        ; preds = %cleanup, %for.cond104.if.end140_crit_edge, %for.cond104.preheader.if.end140_crit_edge, %if.else95.if.end140_crit_edge, %while.end.if.end140_crit_edge, %if.then71.if.end140_crit_edge, %if.then62, %do.body, %if.then51, %if.end49.if.end140_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool141.not = icmp eq i32 %2, 0
  br i1 %tobool141.not, label %if.end140.if.end144_crit_edge, label %if.then142

if.end140.if.end144_crit_edge:                    ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end144

if.then142:                                       ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr143 = getelementptr i8, ptr %1, i32 1560
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr143, i32 %2) #9, !srcloc !146
  br label %if.end144

if.end144:                                        ; preds = %if.then142, %if.end140.if.end144_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool145.not = icmp eq i32 %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool147.not = icmp eq i32 %5, 0
  %or.cond268 = select i1 %tobool145.not, i1 true, i1 %tobool147.not
  br i1 %or.cond268, label %if.end144.if.end150_crit_edge, label %if.then148

if.end144.if.end150_crit_edge:                    ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end150

if.then148:                                       ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr149 = getelementptr i8, ptr %1, i32 3140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr149, i32 %5) #9, !srcloc !146
  br label %if.end150

if.end150:                                        ; preds = %if.then148, %if.end144.if.end150_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool153.not = icmp eq i32 %7, 0
  %or.cond269 = select i1 %tobool145.not, i1 true, i1 %tobool153.not
  br i1 %or.cond269, label %if.end150.if.end156_crit_edge, label %if.then154

if.end150.if.end156_crit_edge:                    ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end156

if.then154:                                       ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr155 = getelementptr i8, ptr %1, i32 3396
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr155, i32 %7) #9, !srcloc !146
  br label %if.end156

if.end156:                                        ; preds = %if.then154, %if.end150.if.end156_crit_edge
  %205 = and i32 %3, 33
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %205)
  %206 = icmp eq i32 %205, 0
  %and163 = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and163)
  %tobool164.not = icmp eq i32 %and163, 0
  %or.cond271 = select i1 %206, i1 %tobool164.not, i1 false
  %and166 = and i32 %6, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and166)
  %tobool167.not = icmp eq i32 %and166, 0
  %or.cond272 = select i1 %or.cond271, i1 %tobool167.not, i1 false
  %and169 = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and169)
  %tobool170.not = icmp eq i32 %and169, 0
  %or.cond273 = select i1 %or.cond272, i1 %tobool170.not, i1 false
  %and172 = and i32 %8, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and172)
  %tobool173.not = icmp eq i32 %and172, 0
  %or.cond274 = select i1 %or.cond273, i1 %tobool173.not, i1 false
  br i1 %or.cond274, label %if.end156.if.end175_crit_edge, label %if.then174

if.end156.if.end175_crit_edge:                    ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end175

if.then174:                                       ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #11
  %done = getelementptr inbounds %struct.geni_i2c_dev, ptr %dev, i32 0, i32 5
  tail call void @complete(ptr noundef %done) #9
  br label %if.end175

if.end175:                                        ; preds = %if.then174, %if.end156.if.end175_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #9
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @geni_icc_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @geni_icc_set_bw(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @geni_se_resources_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @geni_se_resources_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @geni_se_init(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @geni_se_config_packing(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @geni_icc_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_add_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @geni_i2c_xfer(ptr nocapture noundef readonly %adap, ptr noundef %msgs, i32 noundef %num) #2 align 64 {
entry:
  %tx_dma.i = alloca i32, align 4
  %rx_dma.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %err = getelementptr inbounds %struct.geni_i2c_dev, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %err, align 8
  %done = getelementptr inbounds %struct.geni_i2c_dev, ptr %1, i32 0, i32 5
  %3 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %done, align 4
  %dev = getelementptr inbounds %struct.geni_se, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %5, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.33, i32 noundef %call.i) #12
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %usage_count.i = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !147
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #9
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #9, !srcloc !148
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %do.end.pm_runtime_put_noidle.exit_crit_edge, label %do.end11.i.i.i.i

do.end.pm_runtime_put_noidle.exit_crit_edge:      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %pm_runtime_put_noidle.exit

do.end11.i.i.i.i:                                 ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !149
  br label %pm_runtime_put_noidle.exit

pm_runtime_put_noidle.exit:                       ; preds = %do.end11.i.i.i.i, %do.end.pm_runtime_put_noidle.exit_crit_edge
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  %call.i71 = tail call i32 @__pm_runtime_set_status(ptr noundef %12, i32 noundef 2) #9
  br label %cleanup35

if.end:                                           ; preds = %entry
  %clk_fld.i = getelementptr inbounds %struct.geni_i2c_dev, ptr %1, i32 0, i32 11
  %13 = ptrtoint ptr %clk_fld.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %clk_fld.i, align 4
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 8
  %add.ptr.i = getelementptr i8, ptr %16, i32 124
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #9, !srcloc !146
  %clk_div.i = getelementptr inbounds %struct.geni_i2c_clk_fld, ptr %14, i32 0, i32 1
  %17 = ptrtoint ptr %clk_div.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %clk_div.i, align 4
  %conv.i = zext i8 %18 to i32
  %shl.i = shl nuw nsw i32 %conv.i, 4
  %or.i = or i32 %shl.i, 1
  %19 = tail call i32 @llvm.bswap.i32(i32 %or.i) #9
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 8
  %add.ptr3.i = getelementptr i8, ptr %21, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %19) #9, !srcloc !146
  %t_high_cnt.i = getelementptr inbounds %struct.geni_i2c_clk_fld, ptr %14, i32 0, i32 2
  %22 = ptrtoint ptr %t_high_cnt.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %t_high_cnt.i, align 1
  %conv4.i = zext i8 %23 to i32
  %shl5.i = shl nuw nsw i32 %conv4.i, 20
  %t_low_cnt.i = getelementptr inbounds %struct.geni_i2c_clk_fld, ptr %14, i32 0, i32 3
  %24 = ptrtoint ptr %t_low_cnt.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %t_low_cnt.i, align 2
  %conv6.i = zext i8 %25 to i32
  %shl7.i = shl nuw nsw i32 %conv6.i, 10
  %or8.i = or i32 %shl7.i, %shl5.i
  %t_cycle_cnt.i = getelementptr inbounds %struct.geni_i2c_clk_fld, ptr %14, i32 0, i32 4
  %26 = ptrtoint ptr %t_cycle_cnt.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %t_cycle_cnt.i, align 1
  %conv9.i = zext i8 %27 to i32
  %or10.i = or i32 %or8.i, %conv9.i
  %28 = tail call i32 @llvm.bswap.i32(i32 %or10.i) #9
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %1, align 8
  %add.ptr13.i = getelementptr i8, ptr %30, i32 632
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i, i32 %28) #9, !srcloc !146
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num)
  %cmp9118 = icmp sgt i32 %num, 0
  br i1 %cmp9118, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %sub = add nsw i32 %num, -1
  %cur = getelementptr inbounds %struct.geni_i2c_dev, ptr %1, i32 0, i32 6
  %xfer_len.i = getelementptr inbounds %struct.geni_i2c_dev, ptr %1, i32 0, i32 14
  %dma_addr.i = getelementptr inbounds %struct.geni_i2c_dev, ptr %1, i32 0, i32 15
  %dma_buf8.i = getelementptr inbounds %struct.geni_i2c_dev, ptr %1, i32 0, i32 13
  %cur_rd.i.i = getelementptr inbounds %struct.geni_i2c_dev, ptr %1, i32 0, i32 8
  %cur_wr.i.i = getelementptr inbounds %struct.geni_i2c_dev, ptr %1, i32 0, i32 7
  br label %for.body

for.cond:                                         ; preds = %if.end20
  %inc = add nuw nsw i32 %i.0119, 1
  %exitcond.not = icmp eq i32 %inc, %num
  br i1 %exitcond.not, label %for.cond.for.end.thread_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.cond.for.end.thread_crit_edge:                ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.thread

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.0119 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0119, i32 %sub)
  %cmp10 = icmp slt i32 %i.0119, %sub
  %cond = select i1 %cmp10, i32 4, i32 0
  %arrayidx = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0119
  %31 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %arrayidx, align 4
  %conv = zext i16 %32 to i32
  %shl = shl nuw nsw i32 %conv, 9
  %and = and i32 %shl, 65024
  %or = or i32 %and, %cond
  %33 = ptrtoint ptr %cur to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %arrayidx, ptr %cur, align 8
  %flags = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0119, i32 1
  %34 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %flags, align 2
  %36 = and i16 %35, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %36)
  %tobool.not = icmp eq i16 %36, 0
  br i1 %tobool.not, label %if.else, label %if.then15

if.then15:                                        ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rx_dma.i) #9
  %37 = ptrtoint ptr %rx_dma.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %rx_dma.i, align 4
  %len2.i = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0119, i32 2
  %38 = ptrtoint ptr %len2.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %len2.i, align 4
  %conv.i72 = zext i16 %39 to i32
  %call.i73 = call ptr @i2c_get_dma_safe_msg_buf(ptr noundef %arrayidx, i32 noundef 32) #9
  %tobool.not.i = icmp eq ptr %call.i73, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then15
  call void @geni_se_select_mode(ptr noundef %1, i32 noundef 2) #9
  %40 = call i32 @llvm.bswap.i32(i32 %conv.i72) #9
  %41 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %1, align 4
  %add.ptr.c36.i = getelementptr i8, ptr %42, i32 624
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.c36.i, i32 %40) #9, !srcloc !146
  %or.i.i = or i32 %or, 268435456
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !150
  call void @arm_heavy_mb() #9
  %43 = call i32 @llvm.bswap.i32(i32 %or.i.i) #9
  %44 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %1, align 4
  %add.ptr.i.i = getelementptr i8, ptr %45, i32 1536
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %43) #9, !srcloc !146
  %call4.i = call i32 @geni_se_rx_dma_prep(ptr noundef %1, ptr noundef nonnull %call.i73, i32 noundef %conv.i72, ptr noundef nonnull %rx_dma.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.then.i.if.else7.i_crit_edge, label %if.then6.i

if.then.i.if.else7.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else7.i

if.else.i:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #11
  call void @geni_se_select_mode(ptr noundef %1, i32 noundef 1) #9
  %46 = call i32 @llvm.bswap.i32(i32 %conv.i72) #9
  %47 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %1, align 4
  %add.ptr.c.i = getelementptr i8, ptr %48, i32 624
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.c.i, i32 %46) #9, !srcloc !146
  %or.i38.i = or i32 %or, 268435456
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !150
  call void @arm_heavy_mb() #9
  %49 = call i32 @llvm.bswap.i32(i32 %or.i38.i) #9
  %50 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %1, align 4
  %add.ptr.i39.i = getelementptr i8, ptr %51, i32 1536
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i39.i, i32 %49) #9, !srcloc !146
  br label %if.else7.i

if.then6.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @geni_se_select_mode(ptr noundef %1, i32 noundef 1) #9
  call void @i2c_put_dma_safe_msg_buf(ptr noundef nonnull %call.i73, ptr noundef %arrayidx, i1 noundef zeroext false) #9
  br label %if.end9.i

if.else7.i:                                       ; preds = %if.else.i, %if.then.i.if.else7.i_crit_edge
  %52 = ptrtoint ptr %xfer_len.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %conv.i72, ptr %xfer_len.i, align 8
  %53 = ptrtoint ptr %rx_dma.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %rx_dma.i, align 4
  %55 = ptrtoint ptr %dma_addr.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %dma_addr.i, align 4
  %56 = ptrtoint ptr %dma_buf8.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %call.i73, ptr %dma_buf8.i, align 4
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.else7.i, %if.then6.i
  %57 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %cur, align 8
  %call11.i = call i32 @wait_for_completion_timeout(ptr noundef %done, i32 noundef 100) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool12.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool12.not.i, label %if.then13.i, label %if.end9.i.if.end14.i_crit_edge

if.end9.i.if.end14.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14.i

if.then13.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @geni_i2c_abort_xfer(ptr noundef %1) #9
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.then13.i, %if.end9.i.if.end14.i_crit_edge
  %59 = ptrtoint ptr %cur_rd.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 0, ptr %cur_rd.i.i, align 8
  %60 = ptrtoint ptr %dma_buf8.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dma_buf8.i, align 4
  %tobool.not.i.i = icmp eq ptr %61, null
  br i1 %tobool.not.i.i, label %if.end14.i.geni_i2c_rx_one_msg.exit_crit_edge, label %if.then.i.i

if.end14.i.geni_i2c_rx_one_msg.exit_crit_edge:    ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %geni_i2c_rx_one_msg.exit

if.then.i.i:                                      ; preds = %if.end14.i
  %62 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %err, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool1.not.i.i = icmp eq i32 %63, 0
  br i1 %tobool1.not.i.i, label %if.then.i.i.if.end.i.i_crit_edge, label %if.then2.i.i

if.then.i.i.if.end.i.i_crit_edge:                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

if.then2.i.i:                                     ; preds = %if.then.i.i
  %64 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %1, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %65, i32 3416
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 16777216) #9, !srcloc !146
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %do.body.i.i.i.do.body.i.i.i_crit_edge, %if.then2.i.i
  %time_left.0.i.i.i = phi i32 [ 100, %if.then2.i.i ], [ %call.i.i.i74, %do.body.i.i.i.do.body.i.i.i_crit_edge ]
  %call.i.i.i74 = call i32 @wait_for_completion_timeout(ptr noundef %done, i32 noundef %time_left.0.i.i.i) #9
  %66 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %1, align 8
  %add.ptr3.i.i.i = getelementptr i8, ptr %67, i32 3392
  %68 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i.i.i) #9, !srcloc !144
  %69 = and i32 %68, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool.not.i.i.i = icmp eq i32 %69, 0
  %tobool.not.not.i.i.i = xor i1 %tobool.not.i.i.i, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i74)
  %tobool5.not.i.i.i = icmp eq i32 %call.i.i.i74, 0
  %or.cond.i.i.i = select i1 %tobool.not.not.i.i.i, i1 true, i1 %tobool5.not.i.i.i
  br i1 %or.cond.i.i.i, label %do.end.i.i.i, label %do.body.i.i.i.do.body.i.i.i_crit_edge

do.body.i.i.i.do.body.i.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i.i.i

do.end.i.i.i:                                     ; preds = %do.body.i.i.i
  br i1 %tobool.not.i.i.i, label %do.end10.i.i.i, label %do.end.i.i.i.if.end.i.i_crit_edge

do.end.i.i.i.if.end.i.i_crit_edge:                ; preds = %do.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

do.end10.i.i.i:                                   ; preds = %do.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %70 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %71, ptr noundef nonnull @.str.53) #12
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.end10.i.i.i, %do.end.i.i.i.if.end.i.i_crit_edge, %if.then.i.i.if.end.i.i_crit_edge
  %72 = ptrtoint ptr %dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %dma_addr.i, align 4
  %74 = ptrtoint ptr %xfer_len.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %xfer_len.i, align 8
  call void @geni_se_rx_dma_unprep(ptr noundef %1, i32 noundef %73, i32 noundef %75) #9
  %76 = ptrtoint ptr %dma_buf8.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %dma_buf8.i, align 4
  %78 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %err, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %tobool5.not.i.i = icmp eq i32 %79, 0
  call void @i2c_put_dma_safe_msg_buf(ptr noundef %77, ptr noundef %58, i1 noundef zeroext %tobool5.not.i.i) #9
  br label %geni_i2c_rx_one_msg.exit

geni_i2c_rx_one_msg.exit:                         ; preds = %if.end.i.i, %if.end14.i.geni_i2c_rx_one_msg.exit_crit_edge
  %80 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %err, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rx_dma.i) #9
  br label %if.end20

if.else:                                          ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tx_dma.i) #9
  %82 = ptrtoint ptr %tx_dma.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 0, ptr %tx_dma.i, align 4
  %len2.i75 = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0119, i32 2
  %83 = ptrtoint ptr %len2.i75 to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %len2.i75, align 4
  %conv.i76 = zext i16 %84 to i32
  %call.i77 = call ptr @i2c_get_dma_safe_msg_buf(ptr noundef %arrayidx, i32 noundef 32) #9
  %tobool.not.i78 = icmp eq ptr %call.i77, null
  br i1 %tobool.not.i78, label %if.else7.thread.i, label %if.then.i83

if.then.i83:                                      ; preds = %if.else
  call void @geni_se_select_mode(ptr noundef %1, i32 noundef 2) #9
  %85 = call i32 @llvm.bswap.i32(i32 %conv.i76) #9
  %86 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %1, align 4
  %add.ptr.c43.i = getelementptr i8, ptr %87, i32 620
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.c43.i, i32 %85) #9, !srcloc !146
  %or.i.i79 = or i32 %or, 134217728
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !150
  call void @arm_heavy_mb() #9
  %88 = call i32 @llvm.bswap.i32(i32 %or.i.i79) #9
  %89 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %1, align 4
  %add.ptr.i.i80 = getelementptr i8, ptr %90, i32 1536
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i80, i32 %88) #9, !srcloc !146
  %call4.i81 = call i32 @geni_se_tx_dma_prep(ptr noundef %1, ptr noundef nonnull %call.i77, i32 noundef %conv.i76, ptr noundef nonnull %tx_dma.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i81)
  %tobool5.not.i82 = icmp eq i32 %call4.i81, 0
  br i1 %tobool5.not.i82, label %if.else7.i89, label %if.then6.i85

if.else7.thread.i:                                ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  call void @geni_se_select_mode(ptr noundef %1, i32 noundef 1) #9
  %91 = call i32 @llvm.bswap.i32(i32 %conv.i76) #9
  %92 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %1, align 4
  %add.ptr.c.i84 = getelementptr i8, ptr %93, i32 620
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.c.i84, i32 %91) #9, !srcloc !146
  %or.i45.i = or i32 %or, 134217728
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !150
  call void @arm_heavy_mb() #9
  %94 = call i32 @llvm.bswap.i32(i32 %or.i45.i) #9
  %95 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %1, align 4
  %add.ptr.i46.i = getelementptr i8, ptr %96, i32 1536
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i46.i, i32 %94) #9, !srcloc !146
  %97 = ptrtoint ptr %xfer_len.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %conv.i76, ptr %xfer_len.i, align 8
  %98 = ptrtoint ptr %tx_dma.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %tx_dma.i, align 4
  %100 = ptrtoint ptr %dma_addr.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %99, ptr %dma_addr.i, align 4
  %101 = ptrtoint ptr %dma_buf8.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr null, ptr %dma_buf8.i, align 4
  br label %if.then11.i

if.then6.i85:                                     ; preds = %if.then.i83
  call void @__sanitizer_cov_trace_pc() #11
  call void @geni_se_select_mode(ptr noundef %1, i32 noundef 1) #9
  call void @i2c_put_dma_safe_msg_buf(ptr noundef nonnull %call.i77, ptr noundef %arrayidx, i1 noundef zeroext false) #9
  br label %if.then11.i

if.else7.i89:                                     ; preds = %if.then.i83
  call void @__sanitizer_cov_trace_pc() #11
  %102 = ptrtoint ptr %xfer_len.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %conv.i76, ptr %xfer_len.i, align 8
  %103 = ptrtoint ptr %tx_dma.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %tx_dma.i, align 4
  %105 = ptrtoint ptr %dma_addr.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %104, ptr %dma_addr.i, align 4
  %106 = ptrtoint ptr %dma_buf8.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %call.i77, ptr %dma_buf8.i, align 4
  br label %if.end14.i92

if.then11.i:                                      ; preds = %if.then6.i85, %if.else7.thread.i
  %107 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %1, align 4
  %add.ptr13.i90 = getelementptr i8, ptr %108, i32 2060
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i90, i32 16777216) #9, !srcloc !146
  br label %if.end14.i92

if.end14.i92:                                     ; preds = %if.then11.i, %if.else7.i89
  %109 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %cur, align 8
  %call16.i = call i32 @wait_for_completion_timeout(ptr noundef %done, i32 noundef 100) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool17.not.i = icmp eq i32 %call16.i, 0
  br i1 %tobool17.not.i, label %if.then18.i, label %if.end14.i92.if.end19.i_crit_edge

if.end14.i92.if.end19.i_crit_edge:                ; preds = %if.end14.i92
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19.i

if.then18.i:                                      ; preds = %if.end14.i92
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @geni_i2c_abort_xfer(ptr noundef %1) #9
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.then18.i, %if.end14.i92.if.end19.i_crit_edge
  %111 = ptrtoint ptr %cur_wr.i.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 0, ptr %cur_wr.i.i, align 4
  %112 = ptrtoint ptr %dma_buf8.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %dma_buf8.i, align 4
  %tobool.not.i.i94 = icmp eq ptr %113, null
  br i1 %tobool.not.i.i94, label %if.end19.i.geni_i2c_tx_one_msg.exit_crit_edge, label %if.then.i.i97

if.end19.i.geni_i2c_tx_one_msg.exit_crit_edge:    ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %geni_i2c_tx_one_msg.exit

if.then.i.i97:                                    ; preds = %if.end19.i
  %114 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %err, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %115)
  %tobool1.not.i.i96 = icmp eq i32 %115, 0
  br i1 %tobool1.not.i.i96, label %if.then.i.i97.if.end.i.i114_crit_edge, label %if.then2.i.i99

if.then.i.i97.if.end.i.i114_crit_edge:            ; preds = %if.then.i.i97
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i114

if.then2.i.i99:                                   ; preds = %if.then.i.i97
  %116 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %1, align 8
  %add.ptr.i.i.i98 = getelementptr i8, ptr %117, i32 3160
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i98, i32 16777216) #9, !srcloc !146
  br label %do.body.i.i.i107

do.body.i.i.i107:                                 ; preds = %do.body.i.i.i107.do.body.i.i.i107_crit_edge, %if.then2.i.i99
  %time_left.0.i.i.i100 = phi i32 [ 100, %if.then2.i.i99 ], [ %call.i.i.i101, %do.body.i.i.i107.do.body.i.i.i107_crit_edge ]
  %call.i.i.i101 = call i32 @wait_for_completion_timeout(ptr noundef %done, i32 noundef %time_left.0.i.i.i100) #9
  %118 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %1, align 8
  %add.ptr3.i.i.i102 = getelementptr i8, ptr %119, i32 3136
  %120 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i.i.i102) #9, !srcloc !144
  %121 = and i32 %120, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %121)
  %tobool.not.i.i.i103 = icmp eq i32 %121, 0
  %tobool.not.not.i.i.i104 = xor i1 %tobool.not.i.i.i103, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i101)
  %tobool5.not.i.i.i105 = icmp eq i32 %call.i.i.i101, 0
  %or.cond.i.i.i106 = select i1 %tobool.not.not.i.i.i104, i1 true, i1 %tobool5.not.i.i.i105
  br i1 %or.cond.i.i.i106, label %do.end.i.i.i108, label %do.body.i.i.i107.do.body.i.i.i107_crit_edge

do.body.i.i.i107.do.body.i.i.i107_crit_edge:      ; preds = %do.body.i.i.i107
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i.i.i107

do.end.i.i.i108:                                  ; preds = %do.body.i.i.i107
  br i1 %tobool.not.i.i.i103, label %do.end10.i.i.i110, label %do.end.i.i.i108.if.end.i.i114_crit_edge

do.end.i.i.i108.if.end.i.i114_crit_edge:          ; preds = %do.end.i.i.i108
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i114

do.end10.i.i.i110:                                ; preds = %do.end.i.i.i108
  call void @__sanitizer_cov_trace_pc() #11
  %122 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %123, ptr noundef nonnull @.str.55) #12
  br label %if.end.i.i114

if.end.i.i114:                                    ; preds = %do.end10.i.i.i110, %do.end.i.i.i108.if.end.i.i114_crit_edge, %if.then.i.i97.if.end.i.i114_crit_edge
  %124 = ptrtoint ptr %dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %dma_addr.i, align 4
  %126 = ptrtoint ptr %xfer_len.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %xfer_len.i, align 8
  call void @geni_se_tx_dma_unprep(ptr noundef %1, i32 noundef %125, i32 noundef %127) #9
  %128 = ptrtoint ptr %dma_buf8.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %dma_buf8.i, align 4
  %130 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %err, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %131)
  %tobool5.not.i.i113 = icmp eq i32 %131, 0
  call void @i2c_put_dma_safe_msg_buf(ptr noundef %129, ptr noundef %110, i1 noundef zeroext %tobool5.not.i.i113) #9
  br label %geni_i2c_tx_one_msg.exit

geni_i2c_tx_one_msg.exit:                         ; preds = %if.end.i.i114, %if.end19.i.geni_i2c_tx_one_msg.exit_crit_edge
  %132 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %err, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tx_dma.i) #9
  br label %if.end20

if.end20:                                         ; preds = %geni_i2c_tx_one_msg.exit, %geni_i2c_rx_one_msg.exit
  %ret.1 = phi i32 [ %81, %geni_i2c_rx_one_msg.exit ], [ %133, %geni_i2c_tx_one_msg.exit ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1)
  %tobool21.not = icmp eq i32 %ret.1, 0
  br i1 %tobool21.not, label %for.cond, label %if.end20.for.end.thread124_crit_edge

if.end20.for.end.thread124_crit_edge:             ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.thread124

for.end:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp24 = icmp eq i32 %call.i, 0
  br i1 %cmp24, label %for.end.for.end.thread_crit_edge, label %for.end.for.end.thread124_crit_edge

for.end.for.end.thread124_crit_edge:              ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.thread124

for.end.for.end.thread_crit_edge:                 ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.thread

for.end.thread:                                   ; preds = %for.end.for.end.thread_crit_edge, %for.cond.for.end.thread_crit_edge
  br label %for.end.thread124

for.end.thread124:                                ; preds = %for.end.thread, %for.end.for.end.thread124_crit_edge, %if.end20.for.end.thread124_crit_edge
  %134 = phi i32 [ %num, %for.end.thread ], [ %call.i, %for.end.for.end.thread124_crit_edge ], [ %ret.1, %if.end20.for.end.thread124_crit_edge ]
  %135 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %dev, align 4
  %call.i116 = call i64 @ktime_get_mono_fast_ns() #9
  %last_busy.i = getelementptr inbounds %struct.device, ptr %136, i32 0, i32 12, i32 22
  %137 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %137)
  store volatile i64 %call.i116, ptr %last_busy.i, align 8
  %138 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %dev, align 4
  %call.i117 = call i32 @__pm_runtime_suspend(ptr noundef %139, i32 noundef 13) #9
  %cur33 = getelementptr inbounds %struct.geni_i2c_dev, ptr %1, i32 0, i32 6
  %140 = ptrtoint ptr %cur33 to i32
  call void @__asan_store4_noabort(i32 %140)
  store ptr null, ptr %cur33, align 8
  %141 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 0, ptr %err, align 8
  br label %cleanup35

cleanup35:                                        ; preds = %for.end.thread124, %pm_runtime_put_noidle.exit
  %retval.0 = phi i32 [ %call.i, %pm_runtime_put_noidle.exit ], [ %134, %for.end.thread124 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @geni_i2c_func(ptr nocapture noundef readnone %adap) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 251527177
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_get_dma_safe_msg_buf(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @geni_se_select_mode(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @geni_se_rx_dma_prep(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_put_dma_safe_msg_buf(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @geni_i2c_abort_xfer(ptr noundef %gi2c) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.geni_i2c_dev, ptr %gi2c, i32 0, i32 9
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %err1.i = getelementptr inbounds %struct.geni_i2c_dev, ptr %gi2c, i32 0, i32 3
  %0 = ptrtoint ptr %err1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %err1.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i = icmp eq i32 %1, 0
  br i1 %tobool.not.i, label %if.then.i, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %err1.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -110, ptr %err1.i, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %cur.i = getelementptr inbounds %struct.geni_i2c_dev, ptr %gi2c, i32 0, i32 6
  %3 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cur.i, align 8
  %tobool4.not.i = icmp eq ptr %4, null
  br i1 %tobool4.not.i, label %if.end.i.geni_i2c_err.exit_crit_edge, label %do.body.i

if.end.i.geni_i2c_err.exit_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %geni_i2c_err.exit

do.body.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @geni_i2c_err.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@geni_i2c_abort_xfer, %geni_i2c_err.exit)) #9
          to label %if.then10.i [label %geni_i2c_err.exit], !srcloc !145

if.then10.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.geni_se, ptr %gi2c, i32 0, i32 1
  %5 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev.i, align 4
  %7 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cur.i, align 8
  %len.i = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %len.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %len.i, align 4
  %conv.i = zext i16 %10 to i32
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %8, align 4
  %conv13.i = zext i16 %12 to i32
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 1
  %13 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %flags.i, align 2
  %conv15.i = zext i16 %14 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @geni_i2c_err.__UNIQUE_ID_ddebug293, ptr noundef %6, ptr noundef nonnull @.str.38, i32 noundef %conv.i, i32 noundef %conv13.i, i32 noundef %conv15.i) #9
  br label %geni_i2c_err.exit

geni_i2c_err.exit:                                ; preds = %if.then10.i, %do.body.i, %if.end.i.geni_i2c_err.exit_crit_edge
  %dev25.i = getelementptr inbounds %struct.geni_se, ptr %gi2c, i32 0, i32 1
  %15 = ptrtoint ptr %dev25.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev25.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.49) #12
  tail call fastcc void @geni_i2c_err_misc(ptr noundef %gi2c) #9
  %17 = ptrtoint ptr %cur.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %cur.i, align 8
  %18 = ptrtoint ptr %gi2c to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %gi2c, align 4
  %add.ptr.i = getelementptr i8, ptr %19, i32 1540
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 33554432) #9, !srcloc !146
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #9
  %done = getelementptr inbounds %struct.geni_i2c_dev, ptr %gi2c, i32 0, i32 5
  br label %do.body6

do.body6:                                         ; preds = %do.body6.do.body6_crit_edge, %geni_i2c_err.exit
  %time_left.0 = phi i32 [ 100, %geni_i2c_err.exit ], [ %call7, %do.body6.do.body6_crit_edge ]
  %call7 = tail call i32 @wait_for_completion_timeout(ptr noundef %done, i32 noundef %time_left.0) #9
  %20 = ptrtoint ptr %gi2c to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %gi2c, align 8
  %add.ptr = getelementptr i8, ptr %21, i32 1552
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !144
  %23 = and i32 %22, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not = icmp eq i32 %23, 0
  %tobool.not.not = xor i1 %tobool.not, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool12.not = icmp eq i32 %call7, 0
  %or.cond = select i1 %tobool.not.not, i1 true, i1 %tobool12.not
  br i1 %or.cond, label %do.end13, label %do.body6.do.body6_crit_edge

do.body6.do.body6_crit_edge:                      ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body6

do.end13:                                         ; preds = %do.body6
  br i1 %tobool.not, label %do.end18, label %do.end13.if.end_crit_edge

do.end13.if.end_crit_edge:                        ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end18:                                         ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %dev25.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev25.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.35) #12
  br label %if.end

if.end:                                           ; preds = %do.end18, %do.end13.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @geni_i2c_err_misc(ptr nocapture noundef readonly %gi2c) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %gi2c to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gi2c, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 1536
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !144
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %4 = ptrtoint ptr %gi2c to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %gi2c, align 8
  %add.ptr4 = getelementptr i8, ptr %5, i32 1552
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4) #9, !srcloc !144
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  %8 = ptrtoint ptr %gi2c to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %gi2c, align 8
  %add.ptr10 = getelementptr i8, ptr %9, i32 64
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10) #9, !srcloc !144
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  %12 = ptrtoint ptr %gi2c to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %gi2c, align 8
  %add.ptr16 = getelementptr i8, ptr %13, i32 2312
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16) #9, !srcloc !144
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  %16 = ptrtoint ptr %gi2c to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %gi2c, align 8
  %add.ptr22 = getelementptr i8, ptr %17, i32 600
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr22) #9, !srcloc !144
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not = icmp eq i32 %18, 0
  %20 = ptrtoint ptr %gi2c to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %gi2c, align 8
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr28 = getelementptr i8, ptr %21, i32 3392
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr28) #9, !srcloc !144
  %23 = tail call i32 @llvm.bswap.i32(i32 %22)
  %24 = ptrtoint ptr %gi2c to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %gi2c, align 8
  %add.ptr34 = getelementptr i8, ptr %25, i32 3136
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr34) #9, !srcloc !144
  br label %do.body

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr40 = getelementptr i8, ptr %21, i32 2052
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr40) #9, !srcloc !144
  %28 = tail call i32 @llvm.bswap.i32(i32 %27)
  %29 = ptrtoint ptr %gi2c to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %gi2c, align 8
  %add.ptr46 = getelementptr i8, ptr %30, i32 2048
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr46) #9, !srcloc !144
  br label %do.body

do.body:                                          ; preds = %if.else, %if.then
  %.sink = phi i32 [ %26, %if.then ], [ %31, %if.else ]
  %rx_st.0 = phi i32 [ %23, %if.then ], [ %28, %if.else ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @geni_i2c_err_misc.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@geni_i2c_err_misc, %do.body58)) #9
          to label %if.then55 [label %do.body58], !srcloc !145

if.then55:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %32 = tail call i32 @llvm.bswap.i32(i32 %.sink)
  %dev = getelementptr inbounds %struct.geni_se, ptr %gi2c, i32 0, i32 1
  %33 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @geni_i2c_err_misc.__UNIQUE_ID_ddebug291, ptr noundef %34, ptr noundef nonnull @.str.51, i32 noundef %19, i32 noundef %32, i32 noundef %rx_st.0, i32 noundef %7) #9
  br label %do.body58

do.body58:                                        ; preds = %if.then55, %do.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @geni_i2c_err_misc.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@geni_i2c_err_misc, %do.end77)) #9
          to label %if.then72 [label %do.end77], !srcloc !145

if.then72:                                        ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #11
  %dev74 = getelementptr inbounds %struct.geni_se, ptr %gi2c, i32 0, i32 1
  %35 = ptrtoint ptr %dev74 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev74, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @geni_i2c_err_misc.__UNIQUE_ID_ddebug292, ptr noundef %36, ptr noundef nonnull @.str.52, i32 noundef %3, i32 noundef %11, i32 noundef %15) #9
  br label %do.end77

do.end77:                                         ; preds = %if.then72, %do.body58
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @geni_se_rx_dma_unprep(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @geni_se_tx_dma_prep(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @geni_se_tx_dma_unprep(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @geni_i2c_suspend_noirq(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %adap = getelementptr inbounds %struct.geni_i2c_dev, ptr %1, i32 0, i32 4
  %lock_ops.i.i = getelementptr inbounds %struct.geni_i2c_dev, ptr %1, i32 0, i32 4, i32 4
  %2 = ptrtoint ptr %lock_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lock_ops.i.i, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  tail call void %5(ptr noundef %adap, i32 noundef 1) #9
  %locked_flags.i = getelementptr inbounds %struct.geni_i2c_dev, ptr %1, i32 0, i32 4, i32 10
  tail call void @_set_bit(i32 noundef 0, ptr noundef %locked_flags.i) #9
  %6 = ptrtoint ptr %lock_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lock_ops.i.i, align 8
  %unlock_bus.i.i = getelementptr inbounds %struct.i2c_lock_operations, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %unlock_bus.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %unlock_bus.i.i, align 4
  tail call void %9(ptr noundef %adap, i32 noundef 1) #9
  %suspended = getelementptr inbounds %struct.geni_i2c_dev, ptr %1, i32 0, i32 12
  %10 = ptrtoint ptr %suspended to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %suspended, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not = icmp eq i32 %11, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  %12 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %driver_data.i, align 4
  %irq.i = getelementptr inbounds %struct.geni_i2c_dev, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %irq.i, align 4
  tail call void @disable_irq(i32 noundef %15) #9
  %call1.i = tail call i32 @geni_se_resources_off(ptr noundef %13) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %irq.i, align 4
  tail call void @enable_irq(i32 noundef %17) #9
  br label %geni_i2c_runtime_suspend.exit

if.else.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %suspended.i = getelementptr inbounds %struct.geni_i2c_dev, ptr %13, i32 0, i32 12
  %18 = ptrtoint ptr %suspended.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %suspended.i, align 8
  %call4.i = tail call i32 @geni_icc_disable(ptr noundef %13) #9
  br label %geni_i2c_runtime_suspend.exit

geni_i2c_runtime_suspend.exit:                    ; preds = %if.else.i, %if.then.i
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #9
  %call.i = tail call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 2) #9
  tail call void @pm_runtime_enable(ptr noundef %dev) #9
  br label %if.end

if.end:                                           ; preds = %geni_i2c_runtime_suspend.exit, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @geni_i2c_resume_noirq(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %adap = getelementptr inbounds %struct.geni_i2c_dev, ptr %1, i32 0, i32 4
  %lock_ops.i.i = getelementptr inbounds %struct.geni_i2c_dev, ptr %1, i32 0, i32 4, i32 4
  %2 = ptrtoint ptr %lock_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lock_ops.i.i, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  tail call void %5(ptr noundef %adap, i32 noundef 1) #9
  %locked_flags.i = getelementptr inbounds %struct.geni_i2c_dev, ptr %1, i32 0, i32 4, i32 10
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %locked_flags.i) #9
  %6 = ptrtoint ptr %lock_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lock_ops.i.i, align 8
  %unlock_bus.i.i = getelementptr inbounds %struct.i2c_lock_operations, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %unlock_bus.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %unlock_bus.i.i, align 4
  tail call void %9(ptr noundef %adap, i32 noundef 1) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @geni_i2c_runtime_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %irq = getelementptr inbounds %struct.geni_i2c_dev, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  tail call void @disable_irq(i32 noundef %3) #9
  %call1 = tail call i32 @geni_se_resources_off(ptr noundef %1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 4
  tail call void @enable_irq(i32 noundef %5) #9
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %suspended = getelementptr inbounds %struct.geni_i2c_dev, ptr %1, i32 0, i32 12
  %6 = ptrtoint ptr %suspended to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %suspended, align 8
  %call4 = tail call i32 @geni_icc_disable(ptr noundef %1) #9
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then
  %retval.0 = phi i32 [ %call1, %if.then ], [ %call4, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @geni_i2c_runtime_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call i32 @geni_icc_enable(ptr noundef %1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call i32 @geni_se_resources_on(ptr noundef %1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %irq = getelementptr inbounds %struct.geni_i2c_dev, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  tail call void @enable_irq(i32 noundef %3) #9
  %suspended = getelementptr inbounds %struct.geni_i2c_dev, ptr %1, i32 0, i32 12
  %4 = ptrtoint ptr %suspended to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %suspended, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end6 ], [ %call1, %entry.cleanup_crit_edge ], [ %call3, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @geni_icc_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 63)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 63)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !29, !31, !32, !34, !35, !36, !38, !40, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !59, !60, !62, !63, !65, !67, !69, !70, !71, !72, !74, !75, !76, !77, !79, !80, !81, !83, !84, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !110, !111, !113, !114, !116, !117, !118, !119, !121, !122, !123, !124, !126, !127, !129, !130, !131, !133}
!llvm.module.flags = !{!135, !136, !137, !138, !139, !140, !141, !142}
!llvm.ident = !{!143}

!0 = !{ptr @__initcall__kmod_i2c_qcom_geni__297_744_geni_i2c_driver_init6, !1, !"__initcall__kmod_i2c_qcom_geni__297_744_geni_i2c_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/i2c/busses/i2c-qcom-geni.c", i32 744, i32 1}
!2 = !{ptr @__exitcall_geni_i2c_driver_exit, !1, !"__exitcall_geni_i2c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description298, !4, !"__UNIQUE_ID_description298", i1 false, i1 false}
!4 = !{!"../drivers/i2c/busses/i2c-qcom-geni.c", i32 746, i32 1}
!5 = !{ptr @__UNIQUE_ID_file299, !6, !"__UNIQUE_ID_file299", i1 false, i1 false}
!6 = !{!"../drivers/i2c/busses/i2c-qcom-geni.c", i32 747, i32 1}
!7 = !{ptr @__UNIQUE_ID_license300, !6, !"__UNIQUE_ID_license300", i1 false, i1 false}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/i2c/busses/i2c-qcom-geni.c", i32 737, i32 11}
!10 = !{ptr @geni_i2c_driver, !11, !"geni_i2c_driver", i1 false, i1 false}
!11 = !{!"../drivers/i2c/busses/i2c-qcom-geni.c", i32 732, i32 31}
!12 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/i2c/busses/i2c-qcom-geni.c", i32 539, i32 35}
!14 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/i2c/busses/i2c-qcom-geni.c", i32 543, i32 38}
!16 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/i2c/busses/i2c-qcom-geni.c", i32 546, i32 3}
!18 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @geni_i2c_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @geni_i2c_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/i2c/busses/i2c-qcom-geni.c", i32 559, i32 3}
!26 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @geni_i2c_probe._entry.8, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @geni_i2c_probe._entry_ptr.11, !25, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @geni_i2c_probe.__key, !30, !"__key", i1 false, i1 false}
!30 = !{!"../drivers/i2c/busses/i2c-qcom-geni.c", i32 566, i32 2}
!31 = !{ptr @.str.12, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/i2c/busses/i2c-qcom-geni.c", i32 571, i32 3}
!34 = !{ptr @geni_i2c_probe._entry.13, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @geni_i2c_probe._entry_ptr.15, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/i2c/busses/i2c-qcom-geni.c", i32 580, i32 27}
!38 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/i2c/busses/i2c-qcom-geni.c", i32 582, i32 32}
!40 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/i2c/busses/i2c-qcom-geni.c", i32 600, i32 3}
!42 = !{ptr @geni_i2c_probe._entry.18, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @geni_i2c_probe._entry_ptr.20, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/i2c/busses/i2c-qcom-geni.c", i32 606, i32 3}
!46 = !{ptr @geni_i2c_probe._entry.21, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @geni_i2c_probe._entry_ptr.23, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.25, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/i2c/busses/i2c-qcom-geni.c", i32 616, i32 3}
!50 = !{ptr @geni_i2c_probe._entry.24, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @geni_i2c_probe._entry_ptr.26, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.27, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/i2c/busses/i2c-qcom-geni.c", i32 624, i32 2}
!54 = !{ptr @.str.28, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @geni_i2c_probe.__UNIQUE_ID_ddebug295, !53, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!56 = !{ptr @.str.30, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/i2c/busses/i2c-qcom-geni.c", i32 634, i32 3}
!58 = !{ptr @geni_i2c_probe._entry.29, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @geni_i2c_probe._entry_ptr.31, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.32, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/i2c/busses/i2c-qcom-geni.c", i32 639, i32 2}
!62 = !{ptr @geni_i2c_probe.__UNIQUE_ID_ddebug296, !61, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!63 = !{ptr @geni_i2c_clk_map, !64, !"geni_i2c_clk_map", i1 false, i1 false}
!64 = !{!"../drivers/i2c/busses/i2c-qcom-geni.c", i32 132, i32 38}
!65 = !{ptr @geni_i2c_algo, !66, !"geni_i2c_algo", i1 false, i1 false}
!66 = !{!"../drivers/i2c/busses/i2c-qcom-geni.c", i32 507, i32 35}
!67 = !{ptr @.str.33, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/i2c/busses/i2c-qcom-geni.c", i32 470, i32 3}
!69 = !{ptr @.str.34, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @geni_i2c_xfer._entry, !68, !"_entry", i1 false, i1 false}
!71 = !{ptr @geni_i2c_xfer._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.35, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/i2c/busses/i2c-qcom-geni.c", i32 321, i32 3}
!74 = !{ptr @.str.36, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @geni_i2c_abort_xfer._entry, !73, !"_entry", i1 false, i1 false}
!76 = !{ptr @geni_i2c_abort_xfer._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.37, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/i2c/busses/i2c-qcom-geni.c", i32 195, i32 3}
!79 = !{ptr @.str.38, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @geni_i2c_err.__UNIQUE_ID_ddebug293, !78, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!81 = !{ptr @.str.39, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/i2c/busses/i2c-qcom-geni.c", i32 199, i32 3}
!83 = !{ptr @geni_i2c_err._entry, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @geni_i2c_err._entry_ptr, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.40, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/i2c/busses/i2c-qcom-geni.c", i32 100, i32 21}
!87 = distinct !{null, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/i2c/busses/i2c-qcom-geni.c", i32 101, i32 20}
!89 = distinct !{null, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/i2c/busses/i2c-qcom-geni.c", i32 102, i32 21}
!91 = !{ptr @.str.43, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/i2c/busses/i2c-qcom-geni.c", i32 103, i32 26}
!93 = !{ptr @.str.44, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/i2c/busses/i2c-qcom-geni.c", i32 104, i32 25}
!95 = distinct !{null, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/i2c/busses/i2c-qcom-geni.c", i32 105, i32 21}
!97 = !{ptr @.str.46, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/i2c/busses/i2c-qcom-geni.c", i32 106, i32 26}
!99 = !{ptr @.str.47, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/i2c/busses/i2c-qcom-geni.c", i32 107, i32 30}
!101 = distinct !{null, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/i2c/busses/i2c-qcom-geni.c", i32 108, i32 35}
!103 = !{ptr @.str.49, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/i2c/busses/i2c-qcom-geni.c", i32 109, i32 32}
!105 = distinct !{null, !106, !"gi2c_log", i1 false, i1 false}
!106 = !{!"../drivers/i2c/busses/i2c-qcom-geni.c", i32 99, i32 38}
!107 = !{ptr @.str.50, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/i2c/busses/i2c-qcom-geni.c", i32 184, i32 2}
!109 = !{ptr @.str.51, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @geni_i2c_err_misc.__UNIQUE_ID_ddebug291, !108, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!111 = !{ptr @.str.52, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/i2c/busses/i2c-qcom-geni.c", i32 186, i32 2}
!113 = !{ptr @geni_i2c_err_misc.__UNIQUE_ID_ddebug292, !112, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!114 = !{ptr @.str.53, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/i2c/busses/i2c-qcom-geni.c", i32 336, i32 3}
!116 = !{ptr @.str.54, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @geni_i2c_rx_fsm_rst._entry, !115, !"_entry", i1 false, i1 false}
!118 = !{ptr @geni_i2c_rx_fsm_rst._entry_ptr, !115, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.55, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/i2c/busses/i2c-qcom-geni.c", i32 351, i32 3}
!121 = !{ptr @.str.56, !120, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @geni_i2c_tx_fsm_rst._entry, !120, !"_entry", i1 false, i1 false}
!123 = !{ptr @geni_i2c_tx_fsm_rst._entry_ptr, !120, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @init_completion.__key, !125, !"__key", i1 false, i1 false}
!125 = !{!"../include/linux/completion.h", i32 87, i32 2}
!126 = !{ptr @.str.57, !125, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @.str.58, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/i2c/busses/i2c-qcom-geni.c", i32 247, i32 3}
!129 = !{ptr @.str.59, !128, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @geni_i2c_irq.__UNIQUE_ID_ddebug294, !128, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!131 = !{ptr @geni_i2c_dt_match, !132, !"geni_i2c_dt_match", i1 false, i1 false}
!132 = !{!"../drivers/i2c/busses/i2c-qcom-geni.c", i32 726, i32 34}
!133 = !{ptr @geni_i2c_pm_ops, !134, !"geni_i2c_pm_ops", i1 false, i1 false}
!134 = !{!"../drivers/i2c/busses/i2c-qcom-geni.c", i32 720, i32 32}
!135 = !{i32 1, !"wchar_size", i32 2}
!136 = !{i32 1, !"min_enum_size", i32 4}
!137 = !{i32 8, !"branch-target-enforcement", i32 0}
!138 = !{i32 8, !"sign-return-address", i32 0}
!139 = !{i32 8, !"sign-return-address-all", i32 0}
!140 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!141 = !{i32 7, !"uwtable", i32 1}
!142 = !{i32 7, !"frame-pointer", i32 2}
!143 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!144 = !{i64 6920976}
!145 = !{i64 2148965698, i64 2148965703, i64 2148965716, i64 2148965760, i64 2148965794, i64 2148965815}
!146 = !{i64 6920558}
!147 = !{i64 2148320825}
!148 = !{i64 805648, i64 805673, i64 805695, i64 805711, i64 805723, i64 805743, i64 805767, i64 805783, i64 805795}
!149 = !{i64 2148321013}
!150 = !{i64 2155680967}
