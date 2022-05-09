; ModuleID = '/llk/IR_all_yes/drivers/i2c/busses/i2c-eg20t.c_pt.bc'
source_filename = "../drivers/i2c/busses/i2c-eg20t.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

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
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.78, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
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
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.78 = type { ptr }
%struct.adapter_info = type { [2 x %struct.i2c_algo_pch_data], i8, i32 }
%struct.i2c_algo_pch_data = type { %struct.i2c_adapter, ptr, ptr, i32, i32, i8 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }

@__initcall__kmod_i2c_eg20t__311_901_pch_pcidriver_init6 = internal global ptr @pch_pcidriver_init, section ".initcall6.init", align 4
@pch_pcidriver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @pch_pcidev_id, ptr @pch_i2c_probe, ptr @pch_i2c_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pch_i2c_pm_ops, ptr null, ptr null }, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_pch_pcidriver_exit = internal global ptr @pch_pcidriver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description312 = internal constant [80 x i8] c"i2c_eg20t.description=Intel EG20T PCH/LAPIS Semico ML7213/ML7223/ML7831 IOH I2C\00", section ".modinfo", align 1
@__UNIQUE_ID_file313 = internal constant [44 x i8] c"i2c_eg20t.file=drivers/i2c/busses/i2c-eg20t\00", section ".modinfo", align 1
@__UNIQUE_ID_license314 = internal constant [22 x i8] c"i2c_eg20t.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author315 = internal constant [58 x i8] c"i2c_eg20t.author=Tomoya MORINAGA. <tomoya.rohm@gmail.com>\00", section ".modinfo", align 1
@__param_str_pch_i2c_speed = internal constant [24 x i8] c"i2c_eg20t.pch_i2c_speed\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@pch_i2c_speed = internal global { i32, [28 x i8] } { i32 100, [28 x i8] zeroinitializer }, align 32
@__param_pch_i2c_speed = internal constant %struct.kernel_param { ptr @__param_str_pch_i2c_speed, ptr null, ptr @param_ops_int, i16 384, i8 -1, i8 0, %union.anon.76 { ptr @pch_i2c_speed } }, section "__param", align 4
@__UNIQUE_ID_pch_i2c_speedtype316 = internal constant [37 x i8] c"i2c_eg20t.parmtype=pch_i2c_speed:int\00", section ".modinfo", align 1
@__param_str_pch_clk = internal constant [18 x i8] c"i2c_eg20t.pch_clk\00", align 1
@pch_clk = internal global { i32, [28 x i8] } { i32 50000, [28 x i8] zeroinitializer }, align 32
@__param_pch_clk = internal constant %struct.kernel_param { ptr @__param_str_pch_clk, ptr null, ptr @param_ops_int, i16 384, i8 -1, i8 0, %union.anon.76 { ptr @pch_clk } }, section "__param", align 4
@__UNIQUE_ID_pch_clktype317 = internal constant [31 x i8] c"i2c_eg20t.parmtype=pch_clk:int\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"i2c_eg20t\00", [22 x i8] zeroinitializer }, align 32
@pch_pcidev_id = internal constant { [5 x %struct.pci_device_id], [32 x i8] } { [5 x %struct.pci_device_id] [%struct.pci_device_id { i32 32902, i32 34839, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 4315, i32 32813, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 4315, i32 32784, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 4315, i32 34839, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@pch_i2c_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @pch_i2c_suspend, ptr @pch_i2c_resume, ptr @pch_i2c_suspend, ptr @pch_i2c_resume, ptr @pch_i2c_suspend, ptr @pch_i2c_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@pch_i2c_probe.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 -72, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pch_i2c_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/i2c/busses/i2c-eg20t.c\00", [33 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s :Entered.\0A\00", [18 x i8] zeroinitializer }, align 32
@pch_i2c_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 747, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s :pci_enable_device FAILED\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pch_i2c_probe._entry_ptr = internal global ptr @pch_i2c_probe._entry, section ".printk_index", align 4
@pch_i2c_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.1, ptr @.str.2, i32 753, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s :pci_request_regions FAILED\0A\00", [32 x i8] zeroinitializer }, align 32
@pch_i2c_probe._entry_ptr.9 = internal global ptr @pch_i2c_probe._entry.7, section ".printk_index", align 4
@pch_i2c_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.1, ptr @.str.2, i32 760, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s :pci_iomap FAILED\0A\00", [42 x i8] zeroinitializer }, align 32
@pch_i2c_probe._entry_ptr.12 = internal global ptr @pch_i2c_probe._entry.10, section ".printk_index", align 4
@pch_algorithm = internal constant { %struct.i2c_algorithm, [36 x i8] } { %struct.i2c_algorithm { ptr @pch_i2c_xfer, ptr null, ptr null, ptr null, ptr @pch_i2c_func, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@pch_i2c_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.1, ptr @.str.2, i32 790, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s :request_irq FAILED\0A\00", [40 x i8] zeroinitializer }, align 32
@pch_i2c_probe._entry_ptr.15 = internal global ptr @pch_i2c_probe._entry.13, section ".printk_index", align 4
@pch_i2c_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.1, ptr @.str.2, i32 802, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s :i2c_add_adapter[ch:%d] FAILED\0A\00", [61 x i8] zeroinitializer }, align 32
@pch_i2c_probe._entry_ptr.18 = internal global ptr @pch_i2c_probe._entry.16, section ".printk_index", align 4
@pch_i2c_probe.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.19, i8 0, i8 -54, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s :returns %d.\0A\00", [47 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@pch_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.23, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @pch_mutex, i64 52), ptr getelementptr (i8, ptr @pch_mutex, i64 52) }, ptr @pch_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.24, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@pch_i2c_xfer.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.20, ptr @.str.2, ptr @.str.21, i8 0, i8 -88, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pch_i2c_xfer\00", [19 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"%s :adap->p_adapter_info->pch_i2c_suspended is %d\0A\00", [45 x i8] zeroinitializer }, align 32
@pch_i2c_xfer.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.20, ptr @.str.2, ptr @.str.22, i8 0, i8 -86, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s :After invoking I2C_MODE_SEL :flag= 0x%x\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"pch_mutex.wait_lock\00", [44 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pch_mutex\00", [22 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@pch_i2c_wait_for_bus_idle.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.25, ptr @.str.2, ptr @.str.26, i8 0, i8 66, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"pch_i2c_wait_for_bus_idle\00", [38 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s :I2CSR = %x\0A\00", [16 x i8] zeroinitializer }, align 32
@pch_i2c_wait_for_bus_idle._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.25, ptr @.str.2, i32 269, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s :%s: Timeout Error.return%d\0A\00", [32 x i8] zeroinitializer }, align 32
@pch_i2c_wait_for_bus_idle._entry_ptr = internal global ptr @pch_i2c_wait_for_bus_idle._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@pch_i2c_start.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.2, ptr @.str.29, i8 0, i8 74, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pch_i2c_start\00", [18 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s :I2CCTL = %x\0A\00", [47 x i8] zeroinitializer }, align 32
@pch_event = internal global { %struct.wait_queue_head, [44 x i8] } zeroinitializer, align 32
@pch_i2c_wait_for_check_xfer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.2, i32 321, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s :%s:wait-event timeout\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"pch_i2c_wait_for_check_xfer\00", [36 x i8] zeroinitializer }, align 32
@pch_i2c_wait_for_check_xfer._entry_ptr = internal global ptr @pch_i2c_wait_for_check_xfer._entry, section ".printk_index", align 4
@pch_i2c_wait_for_check_xfer._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.31, ptr @.str.2, i32 329, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s :Lost Arbitration\0A\00", [42 x i8] zeroinitializer }, align 32
@pch_i2c_wait_for_check_xfer._entry_ptr.34 = internal global ptr @pch_i2c_wait_for_check_xfer._entry.32, section ".printk_index", align 4
@pch_i2c_wait_for_check_xfer.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.31, ptr @.str.2, ptr @.str.35, i8 0, i8 85, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s :Receive NACK for slave address setting\0A\00", [52 x i8] zeroinitializer }, align 32
@pch_i2c_restart.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.36, ptr @.str.2, ptr @.str.29, i8 0, i8 118, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pch_i2c_restart\00", [16 x i8] zeroinitializer }, align 32
@pch_i2c_stop.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.37, ptr @.str.2, ptr @.str.29, i8 0, i8 77, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pch_i2c_stop\00", [19 x i8] zeroinitializer }, align 32
@pch_i2c_sendack.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.38, ptr @.str.2, ptr @.str.29, i8 0, i8 112, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pch_i2c_sendack\00", [16 x i8] zeroinitializer }, align 32
@pch_i2c_sendnack.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.39, ptr @.str.2, ptr @.str.29, i8 0, i8 115, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"pch_i2c_sendnack\00", [47 x i8] zeroinitializer }, align 32
@pch_i2c_repstart.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.40, ptr @.str.2, ptr @.str.29, i8 0, i8 88, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"pch_i2c_repstart\00", [47 x i8] zeroinitializer }, align 32
@pch_i2c_writebytes.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.41, ptr @.str.2, ptr @.str.42, i8 0, i8 97, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"pch_i2c_writebytes\00", [45 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s :I2CCTL = %x msgs->len = %d\0A\00", [32 x i8] zeroinitializer }, align 32
@pch_i2c_writebytes.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.41, ptr @.str.2, ptr @.str.43, i8 0, i8 105, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s :writing %x to Data register\0A\00", [63 x i8] zeroinitializer }, align 32
@pch_i2c_writebytes.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.41, ptr @.str.2, ptr @.str.44, i8 0, i8 109, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s :return=%d\0A\00", [17 x i8] zeroinitializer }, align 32
@pch_i2c_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.2, i32 635, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s :I2C-%d mode(%d) is not supported\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pch_i2c_handler\00", [16 x i8] zeroinitializer }, align 32
@pch_i2c_handler._entry_ptr = internal global ptr @pch_i2c_handler._entry, section ".printk_index", align 4
@pch_i2c_cb.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.47, ptr @.str.2, ptr @.str.48, i8 0, i8 -104, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pch_i2c_cb\00", [21 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s :PCH_I2CSR = %x\0A\00", [44 x i8] zeroinitializer }, align 32
@pch_i2c_init.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.49, ptr @.str.2, ptr @.str.50, i8 0, i8 57, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pch_i2c_init\00", [19 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s :Fast mode enabled\0A\00", [41 x i8] zeroinitializer }, align 32
@pch_i2c_init.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.49, ptr @.str.2, ptr @.str.51, i8 0, i8 62, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"%s :I2CCTL=%x pch_i2cbc=%x pch_i2ctmr=%x Enable interrupts\0A\00", [36 x i8] zeroinitializer }, align 32
@pch_i2c_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.52 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&pch_event\00", [21 x i8] zeroinitializer }, align 32
@pch_i2c_suspend.__UNIQUE_ID_ddebug310 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.53, ptr @.str.2, ptr @.str.54, i8 0, i8 -38, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pch_i2c_suspend\00", [16 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [94 x i8], [34 x i8] } { [94 x i8] c"%s :I2CSR = %x I2CBUFSTA = %x I2CESRSTA = %x invoked function pch_i2c_disbl_int successfully\0A\00", [34 x i8] zeroinitializer }, align 32
@___asan_gen_.55 = private unnamed_addr constant [14 x i8] c"pch_pcidriver\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 893, i32 26 }
@___asan_gen_.58 = private unnamed_addr constant [14 x i8] c"pch_i2c_speed\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 166, i32 12 }
@___asan_gen_.61 = private unnamed_addr constant [8 x i8] c"pch_clk\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 167, i32 12 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 901, i32 1 }
@___asan_gen_.67 = private unnamed_addr constant [14 x i8] c"pch_pcidev_id\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 176, i32 35 }
@___asan_gen_.70 = private unnamed_addr constant [15 x i8] c"pch_i2c_pm_ops\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 891, i32 8 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 739, i32 2 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 747, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 753, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 760, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant [14 x i8] c"pch_algorithm\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 710, i32 35 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 790, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 802, i32 4 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 808, i32 2 }
@___asan_gen_.124 = private unnamed_addr constant [10 x i8] c"pch_mutex\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 673, i32 2 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 682, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 169, i32 8 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 267, i32 4 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 268, i32 4 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 297, i32 2 }
@___asan_gen_.160 = private unnamed_addr constant [10 x i8] c"pch_event\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 168, i32 26 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 321, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 329, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 340, i32 3 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 474, i32 2 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 308, i32 2 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 450, i32 2 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 461, i32 2 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 354, i32 2 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 388, i32 2 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 422, i32 3 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 438, i32 2 }
@___asan_gen_.208 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 634, i32 4 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 610, i32 2 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 230, i32 3 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 246, i32 2 }
@___asan_gen_.232 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 250, i32 2 }
@___asan_gen_.241 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.242 = private constant [34 x i8] c"../drivers/i2c/busses/i2c-eg20t.c\00", align 1
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 870, i32 2 }
@llvm.compiler.used = appending global [83 x ptr] [ptr @__UNIQUE_ID_author315, ptr @__UNIQUE_ID_description312, ptr @__UNIQUE_ID_file313, ptr @__UNIQUE_ID_license314, ptr @__UNIQUE_ID_pch_clktype317, ptr @__UNIQUE_ID_pch_i2c_speedtype316, ptr @__exitcall_pch_pcidriver_exit, ptr @__initcall__kmod_i2c_eg20t__311_901_pch_pcidriver_init6, ptr @__param_pch_clk, ptr @__param_pch_i2c_speed, ptr @pch_i2c_handler._entry, ptr @pch_i2c_handler._entry_ptr, ptr @pch_i2c_probe._entry, ptr @pch_i2c_probe._entry.10, ptr @pch_i2c_probe._entry.13, ptr @pch_i2c_probe._entry.16, ptr @pch_i2c_probe._entry.7, ptr @pch_i2c_probe._entry_ptr, ptr @pch_i2c_probe._entry_ptr.12, ptr @pch_i2c_probe._entry_ptr.15, ptr @pch_i2c_probe._entry_ptr.18, ptr @pch_i2c_probe._entry_ptr.9, ptr @pch_i2c_wait_for_bus_idle._entry, ptr @pch_i2c_wait_for_bus_idle._entry_ptr, ptr @pch_i2c_wait_for_check_xfer._entry, ptr @pch_i2c_wait_for_check_xfer._entry.32, ptr @pch_i2c_wait_for_check_xfer._entry_ptr, ptr @pch_i2c_wait_for_check_xfer._entry_ptr.34, ptr @pch_pcidriver_exit, ptr @pch_pcidriver, ptr @pch_i2c_speed, ptr @pch_clk, ptr @.str, ptr @pch_pcidev_id, ptr @pch_i2c_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @pch_algorithm, ptr @.str.14, ptr @.str.17, ptr @.str.19, ptr @pch_mutex, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @pch_event, ptr @.str.30, ptr @.str.31, ptr @.str.33, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @pch_i2c_init.__key, ptr @.str.52, ptr @.str.53, ptr @.str.54], section "llvm.metadata"
@0 = internal global [63 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pch_pcidriver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pch_i2c_speed to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pch_clk to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pch_pcidev_id to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pch_i2c_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pch_i2c_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pch_i2c_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pch_i2c_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pch_algorithm to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pch_i2c_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pch_i2c_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pch_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pch_i2c_wait_for_bus_idle._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pch_event to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pch_i2c_wait_for_check_xfer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pch_i2c_wait_for_check_xfer._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pch_i2c_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pch_i2c_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 94, i32 128, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pch_pcidriver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @pch_pcidriver, ptr noundef null, ptr noundef nonnull @.str) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @pch_pcidriver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @pci_unregister_driver(ptr noundef nonnull @pch_pcidriver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pch_i2c_probe(ptr noundef %pdev, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pch_i2c_probe.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pch_i2c_probe, %do.end)) #9
          to label %if.then [label %do.end], !srcloc !155

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pch_i2c_probe.__UNIQUE_ID_ddebug308, ptr noundef %dev, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 2776) #12
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %do.end.cleanup_crit_edge, label %if.end6

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %do.end
  %call7 = tail call i32 @pci_enable_device(ptr noundef %pdev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end14, label %do.end12

do.end12:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  %dev13 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev13, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1) #13
  br label %err_pci_enable

if.end14:                                         ; preds = %if.end6
  %call15 = tail call i32 @pci_request_regions(ptr noundef %pdev, ptr noundef nonnull @.str) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end22, label %do.end20

do.end20:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  %dev21 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev21, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1) #13
  br label %err_pci_req

if.end22:                                         ; preds = %if.end14
  %call23 = tail call ptr @pci_iomap(ptr noundef %pdev, i32 noundef 1, i32 noundef 0) #9
  %cmp24 = icmp eq ptr %call23, null
  br i1 %cmp24, label %do.end28, label %if.end30

do.end28:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  %dev29 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev29, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.1) #13
  br label %err_pci_iomap

if.end30:                                         ; preds = %if.end22
  %driver_data = getelementptr inbounds %struct.pci_device_id, ptr %id, i32 0, i32 6
  %1 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %driver_data, align 4
  %ch_num = getelementptr inbounds %struct.adapter_info, ptr %call7.i.i, i32 0, i32 2
  %3 = ptrtoint ptr %ch_num to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %ch_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp32177 = icmp sgt i32 %2, 0
  br i1 %cmp32177, label %for.body.lr.ph, label %if.end30.for.end_crit_edge

if.end30.for.end_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end30
  %pch_i2c_suspended = getelementptr inbounds %struct.adapter_info, ptr %call7.i.i, i32 0, i32 1
  %dev40 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %of_node = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 27
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.0178 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr [2 x %struct.i2c_algo_pch_data], ptr %call7.i.i, i32 0, i32 %i.0178
  %4 = ptrtoint ptr %pch_i2c_suspended to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %pch_i2c_suspended, align 8
  %p_adapter_info = getelementptr [2 x %struct.i2c_algo_pch_data], ptr %call7.i.i, i32 0, i32 %i.0178, i32 1
  %5 = ptrtoint ptr %p_adapter_info to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call7.i.i, ptr %p_adapter_info, align 8
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %arrayidx, align 8
  %class = getelementptr inbounds %struct.i2c_adapter, ptr %arrayidx, i32 0, i32 1
  %7 = ptrtoint ptr %class to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %class, align 4
  %name = getelementptr inbounds %struct.i2c_adapter, ptr %arrayidx, i32 0, i32 12
  %call35 = tail call i32 @strlcpy(ptr noundef %name, ptr noundef nonnull @.str, i32 noundef 48) #9
  %algo = getelementptr inbounds %struct.i2c_adapter, ptr %arrayidx, i32 0, i32 2
  %8 = ptrtoint ptr %algo to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @pch_algorithm, ptr %algo, align 8
  %algo_data = getelementptr inbounds %struct.i2c_adapter, ptr %arrayidx, i32 0, i32 3
  %9 = ptrtoint ptr %algo_data to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %arrayidx, ptr %algo_data, align 4
  %mul = shl i32 %i.0178, 8
  %add.ptr = getelementptr i8, ptr %call23, i32 %mul
  %pch_base_address = getelementptr [2 x %struct.i2c_algo_pch_data], ptr %call7.i.i, i32 0, i32 %i.0178, i32 2
  %10 = ptrtoint ptr %pch_base_address to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %add.ptr, ptr %pch_base_address, align 4
  %11 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %of_node, align 8
  %of_node42 = getelementptr inbounds %struct.i2c_adapter, ptr %arrayidx, i32 0, i32 9, i32 27
  %13 = ptrtoint ptr %of_node42 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %of_node42, align 8
  %parent = getelementptr inbounds %struct.i2c_adapter, ptr %arrayidx, i32 0, i32 9, i32 1
  %14 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %dev40, ptr %parent, align 8
  %inc = add nuw nsw i32 %i.0178, 1
  %15 = ptrtoint ptr %ch_num to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ch_num, align 4
  %cmp32 = icmp slt i32 %inc, %16
  br i1 %cmp32, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end30.for.end_crit_edge
  %irq = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 46
  %17 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %irq, align 4
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %18, ptr noundef nonnull @pch_i2c_handler, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str, ptr noundef nonnull %call7.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool46.not = icmp eq i32 %call.i, 0
  br i1 %tobool46.not, label %for.cond53.preheader, label %do.end50

for.cond53.preheader:                             ; preds = %for.end
  %19 = ptrtoint ptr %ch_num to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ch_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp55179 = icmp sgt i32 %20, 0
  br i1 %cmp55179, label %for.cond53.preheader.for.body56_crit_edge, label %for.cond53.preheader.for.end72_crit_edge

for.cond53.preheader.for.end72_crit_edge:         ; preds = %for.cond53.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end72

for.cond53.preheader.for.body56_crit_edge:        ; preds = %for.cond53.preheader
  br label %for.body56

do.end50:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %dev51 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev51, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.1) #13
  br label %err_request_irq

for.body56:                                       ; preds = %for.inc70.for.body56_crit_edge, %for.cond53.preheader.for.body56_crit_edge
  %i.1180 = phi i32 [ %inc71, %for.inc70.for.body56_crit_edge ], [ 0, %for.cond53.preheader.for.body56_crit_edge ]
  %arrayidx58 = getelementptr [2 x %struct.i2c_algo_pch_data], ptr %call7.i.i, i32 0, i32 %i.1180
  tail call fastcc void @pch_i2c_init(ptr noundef %arrayidx58)
  %nr = getelementptr inbounds %struct.i2c_adapter, ptr %arrayidx58, i32 0, i32 11
  %21 = ptrtoint ptr %nr to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %i.1180, ptr %nr, align 4
  %call62 = tail call i32 @i2c_add_numbered_adapter(ptr noundef %arrayidx58) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %for.inc70, label %do.end67

do.end67:                                         ; preds = %for.body56
  %dev68 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev68, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.1, i32 noundef %i.1180) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.1180)
  %cmp93181.not = icmp eq i32 %i.1180, 0
  br i1 %cmp93181.not, label %do.end67.for.end100_crit_edge, label %do.end67.for.body94_crit_edge

do.end67.for.body94_crit_edge:                    ; preds = %do.end67
  br label %for.body94

do.end67.for.end100_crit_edge:                    ; preds = %do.end67
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end100

for.inc70:                                        ; preds = %for.body56
  %inc71 = add nuw nsw i32 %i.1180, 1
  %22 = ptrtoint ptr %ch_num to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ch_num, align 4
  %cmp55 = icmp slt i32 %inc71, %23
  br i1 %cmp55, label %for.inc70.for.body56_crit_edge, label %for.inc70.for.end72_crit_edge

for.inc70.for.end72_crit_edge:                    ; preds = %for.inc70
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end72

for.inc70.for.body56_crit_edge:                   ; preds = %for.inc70
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body56

for.end72:                                        ; preds = %for.inc70.for.end72_crit_edge, %for.cond53.preheader.for.end72_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %24 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pch_i2c_probe.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pch_i2c_probe, %cleanup)) #9
          to label %if.then87 [label %cleanup], !srcloc !155

if.then87:                                        ; preds = %for.end72
  call void @__sanitizer_cov_trace_pc() #11
  %dev88 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pch_i2c_probe.__UNIQUE_ID_ddebug309, ptr noundef %dev88, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.1, i32 noundef 0) #9
  br label %cleanup

for.body94:                                       ; preds = %for.body94.for.body94_crit_edge, %do.end67.for.body94_crit_edge
  %j.0182 = phi i32 [ %inc99, %for.body94.for.body94_crit_edge ], [ 0, %do.end67.for.body94_crit_edge ]
  %arrayidx96 = getelementptr [2 x %struct.i2c_algo_pch_data], ptr %call7.i.i, i32 0, i32 %j.0182
  tail call void @i2c_del_adapter(ptr noundef %arrayidx96) #9
  %inc99 = add nuw nsw i32 %j.0182, 1
  %exitcond.not = icmp eq i32 %inc99, %i.1180
  br i1 %exitcond.not, label %for.body94.for.end100_crit_edge, label %for.body94.for.body94_crit_edge

for.body94.for.body94_crit_edge:                  ; preds = %for.body94
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body94

for.body94.for.end100_crit_edge:                  ; preds = %for.body94
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end100

for.end100:                                       ; preds = %for.body94.for.end100_crit_edge, %do.end67.for.end100_crit_edge
  %25 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %irq, align 4
  %call102 = tail call ptr @free_irq(i32 noundef %26, ptr noundef nonnull %call7.i.i) #9
  br label %err_request_irq

err_request_irq:                                  ; preds = %for.end100, %do.end50
  %ret.1 = phi i32 [ %call.i, %do.end50 ], [ %call62, %for.end100 ]
  tail call void @pci_iounmap(ptr noundef %pdev, ptr noundef nonnull %call23) #9
  br label %err_pci_iomap

err_pci_iomap:                                    ; preds = %err_request_irq, %do.end28
  %ret.2 = phi i32 [ -12, %do.end28 ], [ %ret.1, %err_request_irq ]
  tail call void @pci_release_regions(ptr noundef %pdev) #9
  br label %err_pci_req

err_pci_req:                                      ; preds = %err_pci_iomap, %do.end20
  %ret.3 = phi i32 [ %call15, %do.end20 ], [ %ret.2, %err_pci_iomap ]
  tail call void @pci_disable_device(ptr noundef %pdev) #9
  br label %err_pci_enable

err_pci_enable:                                   ; preds = %err_pci_req, %do.end12
  %ret.4 = phi i32 [ %call7, %do.end12 ], [ %ret.3, %err_pci_req ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %err_pci_enable, %if.then87, %for.end72, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.4, %err_pci_enable ], [ -12, %do.end.cleanup_crit_edge ], [ 0, %if.then87 ], [ 0, %for.end72 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pch_i2c_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %irq = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 46
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  %call1 = tail call ptr @free_irq(i32 noundef %3, ptr noundef %1) #9
  %ch_num = getelementptr inbounds %struct.adapter_info, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %ch_num to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ch_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp37 = icmp sgt i32 %5, 0
  br i1 %cmp37, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.038 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr [2 x %struct.i2c_algo_pch_data], ptr %1, i32 0, i32 %i.038
  %pch_base_address.i = getelementptr [2 x %struct.i2c_algo_pch_data], ptr %1, i32 0, i32 %i.038, i32 2
  %6 = ptrtoint ptr %pch_base_address.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pch_base_address.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !156
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !157
  %9 = and i32 %8, -196609
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !158
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %9) #9, !srcloc !159
  %add.ptr.i = getelementptr i8, ptr %7, i32 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !158
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #9, !srcloc !159
  %add.ptr2.i = getelementptr i8, ptr %7, i32 44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !158
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 0) #9, !srcloc !159
  tail call void @i2c_del_adapter(ptr noundef %arrayidx) #9
  %inc = add nuw nsw i32 %i.038, 1
  %10 = ptrtoint ptr %ch_num to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ch_num, align 4
  %cmp = icmp slt i32 %inc, %11
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %pch_base_address = getelementptr inbounds %struct.i2c_algo_pch_data, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %pch_base_address to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pch_base_address, align 4
  %tobool.not = icmp eq ptr %13, null
  br i1 %tobool.not, label %for.end.if.end_crit_edge, label %if.then

for.end.if.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @pci_iounmap(ptr noundef %pdev, ptr noundef nonnull %13) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end.if.end_crit_edge
  %14 = ptrtoint ptr %ch_num to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ch_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp1139 = icmp sgt i32 %15, 0
  br i1 %cmp1139, label %if.end.for.body12_crit_edge, label %if.end.for.end18_crit_edge

if.end.for.end18_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end18

if.end.for.body12_crit_edge:                      ; preds = %if.end
  br label %for.body12

for.body12:                                       ; preds = %for.body12.for.body12_crit_edge, %if.end.for.body12_crit_edge
  %i.140 = phi i32 [ %inc17, %for.body12.for.body12_crit_edge ], [ 0, %if.end.for.body12_crit_edge ]
  %pch_base_address15 = getelementptr [2 x %struct.i2c_algo_pch_data], ptr %1, i32 0, i32 %i.140, i32 2
  %16 = ptrtoint ptr %pch_base_address15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %pch_base_address15, align 4
  %inc17 = add nuw nsw i32 %i.140, 1
  %17 = ptrtoint ptr %ch_num to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ch_num, align 4
  %cmp11 = icmp slt i32 %inc17, %18
  br i1 %cmp11, label %for.body12.for.body12_crit_edge, label %for.body12.for.end18_crit_edge

for.body12.for.end18_crit_edge:                   ; preds = %for.body12
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end18

for.body12.for.body12_crit_edge:                  ; preds = %for.body12
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body12

for.end18:                                        ; preds = %for.body12.for.end18_crit_edge, %if.end.for.end18_crit_edge
  tail call void @pci_release_regions(ptr noundef %pdev) #9
  tail call void @pci_disable_device(ptr noundef %pdev) #9
  tail call void @kfree(ptr noundef %1) #9
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_regions(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_iomap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pch_i2c_handler(i32 noundef %irq, ptr nocapture noundef %pData) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ch_num = getelementptr inbounds %struct.adapter_info, ptr %pData, i32 0, i32 2
  %0 = ptrtoint ptr %ch_num to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ch_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp21 = icmp sgt i32 %1, 0
  br i1 %cmp21, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %parent = getelementptr inbounds %struct.i2c_adapter, ptr %pData, i32 0, i32 9, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.023 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %flag.022 = phi i32 [ 0, %for.body.lr.ph ], [ %flag.1, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [2 x %struct.i2c_algo_pch_data], ptr %pData, i32 0, i32 %i.023
  %pch_base_address = getelementptr [2 x %struct.i2c_algo_pch_data], ptr %pData, i32 0, i32 %i.023, i32 2
  %2 = ptrtoint ptr %pch_base_address to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pch_base_address, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 24
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !156
  %5 = lshr i32 %4, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !157
  %and = and i32 %5, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp1.not = icmp eq i32 %and, 0
  br i1 %cmp1.not, label %if.end, label %do.end

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.46, i32 noundef %and, i32 noundef %i.023) #13
  br label %for.inc

if.end:                                           ; preds = %for.body
  %add.ptr3 = getelementptr i8, ptr %3, i32 8
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3) #9, !srcloc !156
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !157
  %9 = and i32 %8, -1845493760
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %if.end.for.inc_crit_edge, label %if.then6

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @pch_i2c_cb(ptr noundef %arrayidx)
  br label %for.inc

for.inc:                                          ; preds = %if.then6, %if.end.for.inc_crit_edge, %do.end
  %flag.1 = phi i32 [ %flag.022, %do.end ], [ 1, %if.then6 ], [ %flag.022, %if.end.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %i.023, 1
  %10 = ptrtoint ptr %ch_num to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ch_num, align 4
  %cmp = icmp slt i32 %inc, %11
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %flag.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %flag.1, %for.inc.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %flag.0.lcssa)
  %tobool10.not = icmp ne i32 %flag.0.lcssa, 0
  %cond = zext i1 %tobool10.not to i32
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pch_i2c_init(ptr nocapture noundef readonly %adap) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pch_base_address = getelementptr inbounds %struct.i2c_algo_pch_data, ptr %adap, i32 0, i32 2
  %0 = ptrtoint ptr %pch_base_address to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pch_base_address, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 252
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !158
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 16777216) #9, !srcloc !159
  tail call void @msleep(i32 noundef 20) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !158
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #9, !srcloc !159
  %add.ptr2 = getelementptr i8, ptr %1, i32 248
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !158
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 553648128) #9, !srcloc !159
  %2 = ptrtoint ptr %pch_base_address to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pch_base_address, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !156
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !157
  %5 = or i32 %4, -2147483648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !158
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %5) #9, !srcloc !159
  %6 = load i32, ptr @pch_i2c_speed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 400, i32 %6)
  %cmp.not = icmp eq i32 %6, 400
  br i1 %cmp.not, label %if.then5, label %if.end

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  store i32 100, ptr @pch_i2c_speed, align 4
  br label %if.end11

if.then5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pch_i2c_init.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pch_i2c_init, %if.end11)) #9
          to label %if.then9 [label %if.end11], !srcloc !155

if.then9:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  %parent = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9, i32 1
  %7 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %parent, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pch_i2c_init.__UNIQUE_ID_ddebug292, ptr noundef %8, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.49) #9
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.then5, %if.end
  %reg_value.0 = phi i32 [ 897, %if.then9 ], [ 896, %if.end ], [ 897, %if.then5 ]
  %9 = load i32, ptr @pch_clk, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 100000, i32 %9)
  %cmp12 = icmp sgt i32 %9, 100000
  br i1 %cmp12, label %if.then13, label %if.end11.if.end14_crit_edge

if.end11.if.end14_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.then13:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  store i32 62500, ptr @pch_clk, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %if.end11.if.end14_crit_edge
  %10 = load i32, ptr @pch_clk, align 4
  %11 = load i32, ptr @pch_i2c_speed, align 4
  %mul = shl i32 %11, 2
  %add = add i32 %mul, %10
  %mul15 = shl i32 %11, 3
  %div = sdiv i32 %add, %mul15
  %add.ptr16 = getelementptr i8, ptr %1, i32 20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !158
  tail call void @arm_heavy_mb() #9
  %12 = tail call i32 @llvm.bswap.i32(i32 %div) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16, i32 %12) #9, !srcloc !159
  %13 = load i32, ptr @pch_clk, align 4
  %div17 = sdiv i32 %13, 8
  %add.ptr18 = getelementptr i8, ptr %1, i32 72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !158
  tail call void @arm_heavy_mb() #9
  %14 = tail call i32 @llvm.bswap.i32(i32 %div17) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18, i32 %14) #9, !srcloc !159
  %add.ptr20 = getelementptr i8, ptr %1, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !158
  tail call void @arm_heavy_mb() #9
  %15 = tail call i32 @llvm.bswap.i32(i32 %reg_value.0) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20, i32 %15) #9, !srcloc !159
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pch_i2c_init.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pch_i2c_init, %do.body44)) #9
          to label %if.then35 [label %do.body44], !srcloc !155

if.then35:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  %parent38 = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9, i32 1
  %16 = ptrtoint ptr %parent38 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %parent38, align 8
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20) #9, !srcloc !156
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !157
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pch_i2c_init.__UNIQUE_ID_ddebug293, ptr noundef %17, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.49, i32 noundef %19, i32 noundef %div, i32 noundef %div17) #9
  br label %do.body44

do.body44:                                        ; preds = %if.then35, %if.end14
  tail call void @__init_waitqueue_head(ptr noundef nonnull @pch_event, ptr noundef nonnull @.str.52, ptr noundef nonnull @pch_i2c_init.__key) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_add_numbered_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_iounmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_release_regions(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pch_i2c_xfer(ptr nocapture noundef readonly %i2c_adap, ptr nocapture noundef %msgs, i32 noundef %num) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %algo_data = getelementptr inbounds %struct.i2c_adapter, ptr %i2c_adap, i32 0, i32 3
  %0 = ptrtoint ptr %algo_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %algo_data, align 4
  %call = tail call i32 @mutex_lock_interruptible_nested(ptr noundef nonnull @pch_mutex, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %p_adapter_info = getelementptr inbounds %struct.i2c_algo_pch_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %p_adapter_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %p_adapter_info, align 8
  %pch_i2c_suspended = getelementptr inbounds %struct.adapter_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %pch_i2c_suspended to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %pch_i2c_suspended, align 8, !range !160
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool1.not = icmp eq i8 %5, 0
  br i1 %tobool1.not, label %do.body, label %if.end.cleanup.sink.split_crit_edge

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

do.body:                                          ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pch_i2c_xfer.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pch_i2c_xfer, %do.end)) #9
          to label %if.then9 [label %do.end], !srcloc !155

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %parent = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 9, i32 1
  %6 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent, align 8
  %8 = ptrtoint ptr %p_adapter_info to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %p_adapter_info, align 8
  %pch_i2c_suspended11 = getelementptr inbounds %struct.adapter_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %pch_i2c_suspended11 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %pch_i2c_suspended11, align 8, !range !160
  %12 = zext i8 %11 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pch_i2c_xfer.__UNIQUE_ID_ddebug306, ptr noundef %7, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.20, i32 noundef %12) #9
  br label %do.end

do.end:                                           ; preds = %if.then9, %do.body
  %pch_i2c_xfer_in_progress = getelementptr inbounds %struct.i2c_algo_pch_data, ptr %1, i32 0, i32 5
  %13 = ptrtoint ptr %pch_i2c_xfer_in_progress to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %pch_i2c_xfer_in_progress, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num)
  %cmp94.not = icmp eq i32 %num, 0
  br i1 %cmp94.not, label %for.end.thread, label %for.body.lr.ph

for.end.thread:                                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %pch_i2c_xfer_in_progress to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %pch_i2c_xfer_in_progress, align 8
  br label %cleanup.sink.split

for.body.lr.ph:                                   ; preds = %do.end
  %pch_buff_mode_en = getelementptr inbounds %struct.i2c_algo_pch_data, ptr %1, i32 0, i32 3
  %parent38 = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 9, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.095 = phi i32 [ 0, %for.body.lr.ph ], [ %add50, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.095
  %15 = ptrtoint ptr %pch_buff_mode_en to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pch_buff_mode_en, align 8
  %flags = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.095, i32 1
  %17 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %flags, align 2
  %19 = trunc i32 %16 to i16
  %conv18 = or i16 %18, %19
  store i16 %conv18, ptr %flags, align 2
  %conv20 = zext i16 %conv18 to i32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pch_i2c_xfer.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pch_i2c_xfer, %do.end41)) #9
          to label %if.then35 [label %do.end41], !srcloc !155

if.then35:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %parent38 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %parent38, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pch_i2c_xfer.__UNIQUE_ID_ddebug307, ptr noundef %21, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.20, i32 noundef %conv20) #9
  br label %do.end41

do.end41:                                         ; preds = %if.then35, %for.body
  %and = and i32 %conv20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp42.not = icmp eq i32 %and, 0
  %add50 = add nuw i32 %i.095, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add50, i32 %num)
  %cmp51 = icmp eq i32 %add50, %num
  %conv52 = zext i1 %cmp51 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.095)
  %cmp53 = icmp eq i32 %i.095, 0
  %conv54 = zext i1 %cmp53 to i32
  br i1 %cmp42.not, label %if.else, label %if.then44

if.then44:                                        ; preds = %do.end41
  call void @__sanitizer_cov_trace_pc() #11
  %call49 = tail call fastcc i32 @pch_i2c_readbytes(ptr noundef %i2c_adap, ptr noundef %arrayidx, i32 noundef %conv52, i32 noundef %conv54)
  br label %for.inc

if.else:                                          ; preds = %do.end41
  call void @__sanitizer_cov_trace_pc() #11
  %call55 = tail call fastcc i32 @pch_i2c_writebytes(ptr noundef %i2c_adap, ptr noundef %arrayidx, i32 noundef %conv52, i32 noundef %conv54)
  br label %for.inc

for.inc:                                          ; preds = %if.else, %if.then44
  %ret.1 = phi i32 [ %call49, %if.then44 ], [ %call55, %if.else ]
  call void @__sanitizer_cov_trace_cmp4(i32 %add50, i32 %num)
  %cmp = icmp ult i32 %add50, %num
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %ret.1)
  %cmp15 = icmp sgt i32 %ret.1, -1
  %or.cond = select i1 %cmp, i1 %cmp15, i1 false
  br i1 %or.cond, label %for.inc.for.body_crit_edge, label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %pch_i2c_xfer_in_progress to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %pch_i2c_xfer_in_progress, align 8
  tail call void @mutex_unlock(ptr noundef nonnull @pch_mutex) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1)
  %cmp58 = icmp slt i32 %ret.1, 0
  %spec.select = select i1 %cmp58, i32 %ret.1, i32 %num
  br label %cleanup

cleanup.sink.split:                               ; preds = %for.end.thread, %if.end.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ 0, %for.end.thread ], [ -16, %if.end.cleanup.sink.split_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @pch_mutex) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %for.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %spec.select, %for.end ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @pch_i2c_func(ptr nocapture noundef readnone %adap) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 251592715
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pch_i2c_readbytes(ptr nocapture noundef readonly %i2c_adap, ptr nocapture noundef readonly %msgs, i32 noundef %last, i32 noundef %first) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %algo_data = getelementptr inbounds %struct.i2c_adapter, ptr %i2c_adap, i32 0, i32 3
  %0 = ptrtoint ptr %algo_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %algo_data, align 4
  %pch_base_address = getelementptr inbounds %struct.i2c_algo_pch_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %pch_base_address to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pch_base_address, align 4
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 2
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %len, align 4
  %conv = zext i16 %5 to i32
  %buf1 = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 3
  %6 = ptrtoint ptr %buf1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %buf1, align 4
  %8 = ptrtoint ptr %msgs to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %msgs, align 4
  %conv3 = zext i16 %9 to i32
  %add.ptr.i = getelementptr i8, ptr %3, i32 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !156
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !157
  %11 = and i32 %10, -268435457
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !158
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %11) #9, !srcloc !159
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %first)
  %tobool.not = icmp eq i32 %first, 0
  br i1 %tobool.not, label %entry.if.end7_crit_edge, label %if.then

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.then:                                          ; preds = %entry
  %call = tail call fastcc i32 @pch_i2c_wait_for_bus_idle(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -62, i32 %call)
  %cmp = icmp eq i32 %call, -62
  br i1 %cmp, label %if.then.cleanup83_crit_edge, label %if.then.if.end7_crit_edge

if.then.if.end7_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.then.cleanup83_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup83

if.end7:                                          ; preds = %if.then.if.end7_crit_edge, %entry.if.end7_crit_edge
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 1
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %flags, align 2
  %14 = and i16 %13, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %tobool9.not = icmp eq i16 %14, 0
  br i1 %tobool9.not, label %if.else, label %if.then10

if.then10:                                        ; preds = %if.end7
  %add.ptr = getelementptr i8, ptr %3, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !158
  tail call void @arm_heavy_mb() #9
  %15 = shl i32 %conv3, 17
  %or = and i32 %15, 100663296
  %16 = or i32 %or, -268435456
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %16) #9, !srcloc !159
  br i1 %tobool.not, label %if.then10.if.end14_crit_edge, label %if.then13

if.then10.if.end14_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.then13:                                        ; preds = %if.then10
  %17 = ptrtoint ptr %pch_base_address to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pch_base_address, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pch_i2c_start.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pch_i2c_readbytes, %pch_i2c_start.exit)) #9
          to label %if.then.i [label %pch_i2c_start.exit], !srcloc !155

if.then.i:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #11
  %parent.i = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 9, i32 1
  %19 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %parent.i, align 8
  %add.ptr.i145 = getelementptr i8, ptr %18, i32 4
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i145) #9, !srcloc !156
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !157
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pch_i2c_start.__UNIQUE_ID_ddebug295, ptr noundef %20, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.28, i32 noundef %22) #9
  br label %pch_i2c_start.exit

pch_i2c_start.exit:                               ; preds = %if.then.i, %if.then13
  %23 = ptrtoint ptr %pch_base_address to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pch_base_address, align 4
  %add.ptr.i.i = getelementptr i8, ptr %24, i32 4
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !156
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !157
  %26 = or i32 %25, 536870912
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !158
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %26) #9, !srcloc !159
  br label %if.end14

if.end14:                                         ; preds = %pch_i2c_start.exit, %if.then10.if.end14_crit_edge
  %call15 = tail call fastcc i32 @pch_i2c_wait_for_check_xfer(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %if.end14.cleanup83_crit_edge

if.end14.cleanup83_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup83

if.end18:                                         ; preds = %if.end14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !158
  tail call void @arm_heavy_mb() #9
  %and19 = shl i32 %conv3, 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %and19) #9, !srcloc !159
  %27 = ptrtoint ptr %pch_base_address to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pch_base_address, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pch_i2c_restart.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pch_i2c_readbytes, %pch_i2c_restart.exit)) #9
          to label %if.then.i149 [label %pch_i2c_restart.exit], !srcloc !155

if.then.i149:                                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  %parent.i147 = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 9, i32 1
  %29 = ptrtoint ptr %parent.i147 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %parent.i147, align 8
  %add.ptr.i148 = getelementptr i8, ptr %28, i32 4
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i148) #9, !srcloc !156
  %32 = tail call i32 @llvm.bswap.i32(i32 %31) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !157
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pch_i2c_restart.__UNIQUE_ID_ddebug304, ptr noundef %30, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.36, i32 noundef %32) #9
  br label %pch_i2c_restart.exit

pch_i2c_restart.exit:                             ; preds = %if.then.i149, %if.end18
  %33 = ptrtoint ptr %pch_base_address to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pch_base_address, align 4
  %add.ptr.i.i150 = getelementptr i8, ptr %34, i32 4
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i150) #9, !srcloc !156
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !157
  %36 = or i32 %35, 67108864
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !158
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i150, i32 %36) #9, !srcloc !159
  %call21 = tail call fastcc i32 @pch_i2c_wait_for_check_xfer(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end24, label %pch_i2c_restart.exit.cleanup83_crit_edge

pch_i2c_restart.exit.cleanup83_crit_edge:         ; preds = %pch_i2c_restart.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup83

if.end24:                                         ; preds = %pch_i2c_restart.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !158
  tail call void @arm_heavy_mb() #9
  %37 = or i32 %or, -251658240
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %37) #9, !srcloc !159
  br label %if.end31

if.else:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  %38 = ptrtoint ptr %msgs to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %msgs, align 4
  %conv.i = zext i16 %39 to i32
  %shl.i = shl nuw nsw i32 %conv.i, 1
  %40 = and i16 %13, 1
  %41 = zext i16 %40 to i32
  %shl.i.masked = and i32 %shl.i, 254
  %conv29 = or i32 %shl.i.masked, %41
  %add.ptr30 = getelementptr i8, ptr %3, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !158
  tail call void @arm_heavy_mb() #9
  %42 = shl nuw i32 %conv29, 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30, i32 %42) #9, !srcloc !159
  br label %if.end31

if.end31:                                         ; preds = %if.else, %if.end24
  br i1 %tobool.not, label %if.end31.if.end34_crit_edge, label %if.then33

if.end31.if.end34_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

if.then33:                                        ; preds = %if.end31
  %43 = ptrtoint ptr %pch_base_address to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pch_base_address, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pch_i2c_start.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pch_i2c_readbytes, %pch_i2c_start.exit156)) #9
          to label %if.then.i154 [label %pch_i2c_start.exit156], !srcloc !155

if.then.i154:                                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #11
  %parent.i152 = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 9, i32 1
  %45 = ptrtoint ptr %parent.i152 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %parent.i152, align 8
  %add.ptr.i153 = getelementptr i8, ptr %44, i32 4
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i153) #9, !srcloc !156
  %48 = tail call i32 @llvm.bswap.i32(i32 %47) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !157
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pch_i2c_start.__UNIQUE_ID_ddebug295, ptr noundef %46, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.28, i32 noundef %48) #9
  br label %pch_i2c_start.exit156

pch_i2c_start.exit156:                            ; preds = %if.then.i154, %if.then33
  %49 = ptrtoint ptr %pch_base_address to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %pch_base_address, align 4
  %add.ptr.i.i155 = getelementptr i8, ptr %50, i32 4
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i155) #9, !srcloc !156
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !157
  %52 = or i32 %51, 536870912
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !158
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i155, i32 %52) #9, !srcloc !159
  br label %if.end34

if.end34:                                         ; preds = %pch_i2c_start.exit156, %if.end31.if.end34_crit_edge
  %call35 = tail call fastcc i32 @pch_i2c_wait_for_check_xfer(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end38, label %if.end34.cleanup83_crit_edge

if.end34.cleanup83_crit_edge:                     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup83

if.end38:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %cmp39 = icmp eq i16 %5, 0
  %53 = ptrtoint ptr %pch_base_address to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %pch_base_address, align 4
  br i1 %cmp39, label %if.then41, label %if.else44

if.then41:                                        ; preds = %if.end38
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pch_i2c_stop.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pch_i2c_readbytes, %pch_i2c_stop.exit)) #9
          to label %if.then.i160 [label %pch_i2c_stop.exit], !srcloc !155

if.then.i160:                                     ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #11
  %parent.i158 = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 9, i32 1
  %55 = ptrtoint ptr %parent.i158 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %parent.i158, align 8
  %add.ptr.i159 = getelementptr i8, ptr %54, i32 4
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i159) #9, !srcloc !156
  %58 = tail call i32 @llvm.bswap.i32(i32 %57) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !157
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pch_i2c_stop.__UNIQUE_ID_ddebug296, ptr noundef %56, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.37, i32 noundef %58) #9
  br label %pch_i2c_stop.exit

pch_i2c_stop.exit:                                ; preds = %if.then.i160, %if.then41
  %59 = ptrtoint ptr %pch_base_address to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %pch_base_address, align 4
  %add.ptr.i.i161 = getelementptr i8, ptr %60, i32 4
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i161) #9, !srcloc !156
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !157
  %62 = and i32 %61, -536870913
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !158
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i161, i32 %62) #9, !srcloc !159
  %add.ptr42 = getelementptr i8, ptr %3, i32 12
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr42) #9, !srcloc !156
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !157
  br label %cleanup83

if.else44:                                        ; preds = %if.end38
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pch_i2c_sendack.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pch_i2c_readbytes, %pch_i2c_sendack.exit)) #9
          to label %if.then.i165 [label %pch_i2c_sendack.exit], !srcloc !155

if.then.i165:                                     ; preds = %if.else44
  call void @__sanitizer_cov_trace_pc() #11
  %parent.i163 = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 9, i32 1
  %64 = ptrtoint ptr %parent.i163 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %parent.i163, align 8
  %add.ptr.i164 = getelementptr i8, ptr %54, i32 4
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i164) #9, !srcloc !156
  %67 = tail call i32 @llvm.bswap.i32(i32 %66) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !157
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pch_i2c_sendack.__UNIQUE_ID_ddebug302, ptr noundef %65, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.38, i32 noundef %67) #9
  br label %pch_i2c_sendack.exit

pch_i2c_sendack.exit:                             ; preds = %if.then.i165, %if.else44
  %68 = ptrtoint ptr %pch_base_address to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %pch_base_address, align 4
  %add.ptr.i.i166 = getelementptr i8, ptr %69, i32 4
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i166) #9, !srcloc !156
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !157
  %71 = and i32 %70, -134217729
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !158
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i166, i32 %71) #9, !srcloc !159
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %5)
  %cmp45176 = icmp ugt i16 %5, 1
  br i1 %cmp45176, label %for.body.lr.ph, label %pch_i2c_sendack.exit.for.end_crit_edge

pch_i2c_sendack.exit.for.end_crit_edge:           ; preds = %pch_i2c_sendack.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %pch_i2c_sendack.exit
  %add.ptr47 = getelementptr i8, ptr %3, i32 12
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %loop.0178 = phi i32 [ 1, %for.body.lr.ph ], [ %inc58, %for.inc.for.body_crit_edge ]
  %read_index.0177 = phi i32 [ 0, %for.body.lr.ph ], [ %spec.select, %for.inc.for.body_crit_edge ]
  %72 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr47) #9, !srcloc !156
  %73 = lshr i32 %72, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !157
  %conv49 = trunc i32 %73 to i8
  %arrayidx = getelementptr i8, ptr %7, i32 %read_index.0177
  %74 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %conv49, ptr %arrayidx, align 1
  %call54 = tail call fastcc i32 @pch_i2c_wait_for_check_xfer(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %for.inc, label %for.body.cleanup83_crit_edge

for.body.cleanup83_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup83

for.inc:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %loop.0178)
  %cmp50.not = icmp ne i32 %loop.0178, 1
  %inc = zext i1 %cmp50.not to i32
  %spec.select = add i32 %read_index.0177, %inc
  %inc58 = add nuw nsw i32 %loop.0178, 1
  %exitcond.not = icmp eq i32 %inc58, %conv
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %pch_i2c_sendack.exit.for.end_crit_edge
  %read_index.0.lcssa = phi i32 [ 0, %pch_i2c_sendack.exit.for.end_crit_edge ], [ %spec.select, %for.inc.for.end_crit_edge ]
  %75 = ptrtoint ptr %pch_base_address to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %pch_base_address, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pch_i2c_sendnack.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pch_i2c_readbytes, %pch_i2c_sendnack.exit)) #9
          to label %if.then.i170 [label %pch_i2c_sendnack.exit], !srcloc !155

if.then.i170:                                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %parent.i168 = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 9, i32 1
  %77 = ptrtoint ptr %parent.i168 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %parent.i168, align 8
  %add.ptr.i169 = getelementptr i8, ptr %76, i32 4
  %79 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i169) #9, !srcloc !156
  %80 = tail call i32 @llvm.bswap.i32(i32 %79) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !157
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pch_i2c_sendnack.__UNIQUE_ID_ddebug303, ptr noundef %78, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.39, i32 noundef %80) #9
  br label %pch_i2c_sendnack.exit

pch_i2c_sendnack.exit:                            ; preds = %if.then.i170, %for.end
  %81 = ptrtoint ptr %pch_base_address to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %pch_base_address, align 4
  %add.ptr.i.i171 = getelementptr i8, ptr %82, i32 4
  %83 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i171) #9, !srcloc !156
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !157
  %84 = or i32 %83, 134217728
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !158
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i171, i32 %84) #9, !srcloc !159
  %add.ptr59 = getelementptr i8, ptr %3, i32 12
  %85 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr59) #9, !srcloc !156
  %86 = lshr i32 %85, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !157
  %conv61 = trunc i32 %86 to i8
  %arrayidx62 = getelementptr i8, ptr %7, i32 %read_index.0.lcssa
  %87 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 %conv61, ptr %arrayidx62, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %5)
  %cmp63.not = icmp ne i16 %5, 1
  %inc66 = zext i1 %cmp63.not to i32
  %spec.select144 = add i32 %read_index.0.lcssa, %inc66
  %call68 = tail call fastcc i32 @pch_i2c_wait_for_check_xfer(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %if.end71, label %pch_i2c_sendnack.exit.cleanup83_crit_edge

pch_i2c_sendnack.exit.cleanup83_crit_edge:        ; preds = %pch_i2c_sendnack.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup83

if.end71:                                         ; preds = %pch_i2c_sendnack.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %last)
  %tobool72.not = icmp eq i32 %last, 0
  br i1 %tobool72.not, label %if.else74, label %if.then73

if.then73:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @pch_i2c_stop(ptr noundef %1)
  br label %cleanup

if.else74:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @pch_i2c_repstart(ptr noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %if.else74, %if.then73
  %88 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr59) #9, !srcloc !156
  %89 = lshr i32 %88, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !157
  %conv78 = trunc i32 %89 to i8
  %inc79 = add i32 %spec.select144, 1
  %arrayidx80 = getelementptr i8, ptr %7, i32 %spec.select144
  %90 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %conv78, ptr %arrayidx80, align 1
  br label %cleanup83

cleanup83:                                        ; preds = %cleanup, %pch_i2c_sendnack.exit.cleanup83_crit_edge, %for.body.cleanup83_crit_edge, %pch_i2c_stop.exit, %if.end34.cleanup83_crit_edge, %pch_i2c_restart.exit.cleanup83_crit_edge, %if.end14.cleanup83_crit_edge, %if.then.cleanup83_crit_edge
  %retval.1 = phi i32 [ -62, %if.then.cleanup83_crit_edge ], [ %call15, %if.end14.cleanup83_crit_edge ], [ %call21, %pch_i2c_restart.exit.cleanup83_crit_edge ], [ %call35, %if.end34.cleanup83_crit_edge ], [ 0, %pch_i2c_stop.exit ], [ %inc79, %cleanup ], [ %call68, %pch_i2c_sendnack.exit.cleanup83_crit_edge ], [ %call54, %for.body.cleanup83_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pch_i2c_writebytes(ptr nocapture noundef readonly %i2c_adap, ptr nocapture noundef readonly %msgs, i32 noundef %last, i32 noundef %first) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %algo_data = getelementptr inbounds %struct.i2c_adapter, ptr %i2c_adap, i32 0, i32 3
  %0 = ptrtoint ptr %algo_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %algo_data, align 4
  %pch_base_address = getelementptr inbounds %struct.i2c_algo_pch_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %pch_base_address to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pch_base_address, align 4
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 2
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %len, align 4
  %conv = zext i16 %5 to i32
  %buf1 = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 3
  %6 = ptrtoint ptr %buf1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %buf1, align 4
  %8 = ptrtoint ptr %msgs to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %msgs, align 4
  %conv3 = zext i16 %9 to i32
  %add.ptr.i = getelementptr i8, ptr %3, i32 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !156
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !157
  %11 = or i32 %10, 268435456
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !158
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %11) #9, !srcloc !159
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pch_i2c_writebytes.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pch_i2c_writebytes, %do.end)) #9
          to label %if.then [label %do.end], !srcloc !155

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %parent = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 9, i32 1
  %12 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %parent, align 8
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !156
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !157
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pch_i2c_writebytes.__UNIQUE_ID_ddebug299, ptr noundef %13, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.41, i32 noundef %15, i32 noundef %conv) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %first)
  %tobool9.not = icmp eq i32 %first, 0
  br i1 %tobool9.not, label %do.end.if.end15_crit_edge, label %if.then10

do.end.if.end15_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

if.then10:                                        ; preds = %do.end
  %call11 = tail call fastcc i32 @pch_i2c_wait_for_bus_idle(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -62, i32 %call11)
  %cmp = icmp eq i32 %call11, -62
  br i1 %cmp, label %if.then10.cleanup_crit_edge, label %if.then10.if.end15_crit_edge

if.then10.if.end15_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

if.then10.cleanup_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end15:                                         ; preds = %if.then10.if.end15_crit_edge, %do.end.if.end15_crit_edge
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 1
  %16 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %flags, align 2
  %18 = and i16 %17, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %tobool17.not = icmp eq i16 %18, 0
  br i1 %tobool17.not, label %if.else, label %if.then18

if.then18:                                        ; preds = %if.end15
  %add.ptr21 = getelementptr i8, ptr %3, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !158
  tail call void @arm_heavy_mb() #9
  %19 = shl i32 %conv3, 17
  %or = and i32 %19, 100663296
  %20 = or i32 %or, -268435456
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21, i32 %20) #9, !srcloc !159
  br i1 %tobool9.not, label %if.then18.if.end24_crit_edge, label %if.then23

if.then18.if.end24_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

if.then23:                                        ; preds = %if.then18
  %21 = ptrtoint ptr %pch_base_address to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pch_base_address, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pch_i2c_start.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pch_i2c_writebytes, %pch_i2c_start.exit)) #9
          to label %if.then.i [label %pch_i2c_start.exit], !srcloc !155

if.then.i:                                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #11
  %parent.i = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 9, i32 1
  %23 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %parent.i, align 8
  %add.ptr.i151 = getelementptr i8, ptr %22, i32 4
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i151) #9, !srcloc !156
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !157
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pch_i2c_start.__UNIQUE_ID_ddebug295, ptr noundef %24, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.28, i32 noundef %26) #9
  br label %pch_i2c_start.exit

pch_i2c_start.exit:                               ; preds = %if.then.i, %if.then23
  %27 = ptrtoint ptr %pch_base_address to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pch_base_address, align 4
  %add.ptr.i.i = getelementptr i8, ptr %28, i32 4
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !156
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !157
  %30 = or i32 %29, 536870912
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !158
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %30) #9, !srcloc !159
  br label %if.end24

if.end24:                                         ; preds = %pch_i2c_start.exit, %if.then18.if.end24_crit_edge
  %call25 = tail call fastcc i32 @pch_i2c_wait_for_check_xfer(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end28, label %if.end24.cleanup_crit_edge

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end28:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !158
  tail call void @arm_heavy_mb() #9
  %and29 = shl i32 %conv3, 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21, i32 %and29) #9, !srcloc !159
  br label %if.end37

if.else:                                          ; preds = %if.end15
  %31 = ptrtoint ptr %msgs to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %msgs, align 4
  %conv.i = zext i16 %32 to i32
  %shl.i = shl nuw nsw i32 %conv.i, 1
  %33 = and i16 %17, 1
  %34 = zext i16 %33 to i32
  %shl.i.masked = and i32 %shl.i, 254
  %conv32 = or i32 %shl.i.masked, %34
  %add.ptr33 = getelementptr i8, ptr %3, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !158
  tail call void @arm_heavy_mb() #9
  %35 = shl nuw i32 %conv32, 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr33, i32 %35) #9, !srcloc !159
  br i1 %tobool9.not, label %if.else.if.end37_crit_edge, label %if.then35

if.else.if.end37_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37

if.then35:                                        ; preds = %if.else
  %36 = ptrtoint ptr %pch_base_address to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pch_base_address, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pch_i2c_start.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pch_i2c_writebytes, %pch_i2c_start.exit158)) #9
          to label %if.then.i156 [label %pch_i2c_start.exit158], !srcloc !155

if.then.i156:                                     ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #11
  %parent.i154 = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 9, i32 1
  %38 = ptrtoint ptr %parent.i154 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %parent.i154, align 8
  %add.ptr.i155 = getelementptr i8, ptr %37, i32 4
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i155) #9, !srcloc !156
  %41 = tail call i32 @llvm.bswap.i32(i32 %40) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !157
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pch_i2c_start.__UNIQUE_ID_ddebug295, ptr noundef %39, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.28, i32 noundef %41) #9
  br label %pch_i2c_start.exit158

pch_i2c_start.exit158:                            ; preds = %if.then.i156, %if.then35
  %42 = ptrtoint ptr %pch_base_address to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %pch_base_address, align 4
  %add.ptr.i.i157 = getelementptr i8, ptr %43, i32 4
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i157) #9, !srcloc !156
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !157
  %45 = or i32 %44, 536870912
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !158
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i157, i32 %45) #9, !srcloc !159
  br label %if.end37

if.end37:                                         ; preds = %pch_i2c_start.exit158, %if.else.if.end37_crit_edge, %if.end28
  %call38 = tail call fastcc i32 @pch_i2c_wait_for_check_xfer(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %for.cond.preheader, label %if.end37.cleanup_crit_edge

if.end37.cleanup_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end37
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %cmp42176.not = icmp eq i16 %5, 0
  br i1 %cmp42176.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %add.ptr45 = getelementptr i8, ptr %3, i32 12
  %parent63 = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 9, i32 1
  br label %for.body

for.body:                                         ; preds = %if.end72.for.body_crit_edge, %for.body.lr.ph
  %wrcount.0177 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end72.for.body_crit_edge ]
  %arrayidx = getelementptr i8, ptr %7, i32 %wrcount.0177
  %46 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx, align 1
  %conv44 = zext i8 %47 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !158
  tail call void @arm_heavy_mb() #9
  %48 = shl nuw i32 %conv44, 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr45, i32 %48) #9, !srcloc !159
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pch_i2c_writebytes.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pch_i2c_writebytes, %do.end68)) #9
          to label %if.then60 [label %do.end68], !srcloc !155

if.then60:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %49 = ptrtoint ptr %parent63 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %parent63, align 8
  %51 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx, align 1
  %conv65 = zext i8 %52 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pch_i2c_writebytes.__UNIQUE_ID_ddebug300, ptr noundef %50, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.41, i32 noundef %conv65) #9
  br label %do.end68

do.end68:                                         ; preds = %if.then60, %for.body
  %call69 = tail call fastcc i32 @pch_i2c_wait_for_check_xfer(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %if.end72, label %do.end68.cleanup_crit_edge

do.end68.cleanup_crit_edge:                       ; preds = %do.end68
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end72:                                         ; preds = %do.end68
  %53 = ptrtoint ptr %pch_base_address to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %pch_base_address, align 4
  %add.ptr.i159 = getelementptr i8, ptr %54, i32 8
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i159) #9, !srcloc !156
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !157
  %56 = and i32 %55, 2147483647
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !158
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i159, i32 %56) #9, !srcloc !159
  %57 = ptrtoint ptr %pch_base_address to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %pch_base_address, align 4
  %add.ptr.i160 = getelementptr i8, ptr %58, i32 8
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i160) #9, !srcloc !156
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !157
  %60 = and i32 %59, -33554433
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !158
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i160, i32 %60) #9, !srcloc !159
  %inc = add nuw nsw i32 %wrcount.0177, 1
  %exitcond.not = icmp eq i32 %inc, %conv
  br i1 %exitcond.not, label %if.end72.for.end_crit_edge, label %if.end72.for.body_crit_edge

if.end72.for.body_crit_edge:                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

if.end72.for.end_crit_edge:                       ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %if.end72.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %last)
  %tobool75.not = icmp eq i32 %last, 0
  %61 = ptrtoint ptr %pch_base_address to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %pch_base_address, align 4
  br i1 %tobool75.not, label %if.else77, label %if.then76

if.then76:                                        ; preds = %for.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pch_i2c_stop.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pch_i2c_writebytes, %pch_i2c_stop.exit)) #9
          to label %if.then.i165 [label %pch_i2c_stop.exit], !srcloc !155

if.then.i165:                                     ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #11
  %parent.i163 = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 9, i32 1
  %63 = ptrtoint ptr %parent.i163 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %parent.i163, align 8
  %add.ptr.i164 = getelementptr i8, ptr %62, i32 4
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i164) #9, !srcloc !156
  %66 = tail call i32 @llvm.bswap.i32(i32 %65) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !157
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pch_i2c_stop.__UNIQUE_ID_ddebug296, ptr noundef %64, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.37, i32 noundef %66) #9
  br label %pch_i2c_stop.exit

pch_i2c_stop.exit:                                ; preds = %if.then.i165, %if.then76
  %67 = ptrtoint ptr %pch_base_address to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %pch_base_address, align 4
  %add.ptr.i.i166 = getelementptr i8, ptr %68, i32 4
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i166) #9, !srcloc !156
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !157
  %70 = and i32 %69, -536870913
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !158
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i166, i32 %70) #9, !srcloc !159
  br label %do.body79

if.else77:                                        ; preds = %for.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pch_i2c_repstart.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pch_i2c_writebytes, %pch_i2c_repstart.exit)) #9
          to label %if.then.i170 [label %pch_i2c_repstart.exit], !srcloc !155

if.then.i170:                                     ; preds = %if.else77
  call void @__sanitizer_cov_trace_pc() #11
  %parent.i168 = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 9, i32 1
  %71 = ptrtoint ptr %parent.i168 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %parent.i168, align 8
  %add.ptr.i169 = getelementptr i8, ptr %62, i32 4
  %73 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i169) #9, !srcloc !156
  %74 = tail call i32 @llvm.bswap.i32(i32 %73) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !157
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pch_i2c_repstart.__UNIQUE_ID_ddebug298, ptr noundef %72, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.40, i32 noundef %74) #9
  br label %pch_i2c_repstart.exit

pch_i2c_repstart.exit:                            ; preds = %if.then.i170, %if.else77
  %75 = ptrtoint ptr %pch_base_address to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %pch_base_address, align 4
  %add.ptr.i.i171 = getelementptr i8, ptr %76, i32 4
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i171) #9, !srcloc !156
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !157
  %78 = or i32 %77, 67108864
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !158
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i171, i32 %78) #9, !srcloc !159
  br label %do.body79

do.body79:                                        ; preds = %pch_i2c_repstart.exit, %pch_i2c_stop.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pch_i2c_writebytes.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pch_i2c_writebytes, %cleanup)) #9
          to label %if.then93 [label %cleanup], !srcloc !155

if.then93:                                        ; preds = %do.body79
  call void @__sanitizer_cov_trace_pc() #11
  %parent96 = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 9, i32 1
  %79 = ptrtoint ptr %parent96 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %parent96, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pch_i2c_writebytes.__UNIQUE_ID_ddebug301, ptr noundef %80, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.41, i32 noundef %conv) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then93, %do.body79, %do.end68.cleanup_crit_edge, %if.end37.cleanup_crit_edge, %if.end24.cleanup_crit_edge, %if.then10.cleanup_crit_edge
  %retval.0 = phi i32 [ -62, %if.then10.cleanup_crit_edge ], [ %call25, %if.end24.cleanup_crit_edge ], [ %call38, %if.end37.cleanup_crit_edge ], [ %conv, %if.then93 ], [ %conv, %do.body79 ], [ %call69, %do.end68.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pch_i2c_wait_for_bus_idle(ptr nocapture noundef readonly %adap) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pch_base_address = getelementptr inbounds %struct.i2c_algo_pch_data, ptr %adap, i32 0, i32 2
  %0 = ptrtoint ptr %pch_base_address to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pch_base_address, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %2, 2
  %add.ptr = getelementptr i8, ptr %1, i32 8
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !156
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !157
  %4 = and i32 %3, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not3 = icmp eq i32 %4, 0
  br i1 %tobool.not3, label %entry.cleanup_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

while.body:                                       ; preds = %if.end19.while.body_crit_edge, %entry.while.body_crit_edge
  %tobool17.not4 = phi i1 [ false, %if.end19.while.body_crit_edge ], [ true, %entry.while.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %5 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %do.body, label %if.end16

do.body:                                          ; preds = %while.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pch_i2c_wait_for_bus_idle.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pch_i2c_wait_for_bus_idle, %do.end12)) #9
          to label %if.then7 [label %do.end12], !srcloc !155

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %parent = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9, i32 1
  %6 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent, align 8
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !156
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !157
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pch_i2c_wait_for_bus_idle.__UNIQUE_ID_ddebug294, ptr noundef %7, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.25, i32 noundef %9) #9
  br label %do.end12

do.end12:                                         ; preds = %if.then7, %do.body
  %parent15 = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9, i32 1
  %10 = ptrtoint ptr %parent15 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %parent15, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.25, i32 noundef -62) #13
  tail call fastcc void @pch_i2c_init(ptr noundef %adap)
  br label %cleanup

if.end16:                                         ; preds = %while.body
  br i1 %tobool17.not4, label %if.then18, label %if.else

if.then18:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 1073740) #9
  br label %if.end19

if.else:                                          ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @usleep_range_state(i32 noundef 20, i32 noundef 1000, i32 noundef 2) #9
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.then18
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !156
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !157
  %14 = and i32 %13, 536870912
  %tobool.not = icmp eq i32 %14, 0
  br i1 %tobool.not, label %if.end19.cleanup_crit_edge, label %if.end19.while.body_crit_edge

if.end19.while.body_crit_edge:                    ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %if.end19.cleanup_crit_edge, %do.end12, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -62, %do.end12 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end19.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pch_i2c_wait_for_check_xfer(ptr nocapture noundef %adap) unnamed_addr #2 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pch_base_address = getelementptr inbounds %struct.i2c_algo_pch_data, ptr %adap, i32 0, i32 2
  %0 = ptrtoint ptr %pch_base_address to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pch_base_address, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 319) #9
  %pch_event_flag = getelementptr inbounds %struct.i2c_algo_pch_data, ptr %adap, i32 0, i32 4
  %2 = ptrtoint ptr %pch_event_flag to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pch_event_flag, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not.not = icmp eq i32 %3, 0
  br i1 %cmp.not.not, label %if.then8, label %entry.if.end41_crit_edge

entry.if.end41_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end41

if.then8:                                         ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #9
  %4 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #9
  %call11111 = call i32 @prepare_to_wait_event(ptr noundef nonnull @pch_event, ptr noundef nonnull %__wq_entry, i32 noundef 2) #9
  %5 = ptrtoint ptr %pch_event_flag to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pch_event_flag, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp14.not112.not = icmp eq i32 %6, 0
  br i1 %cmp14.not112.not, label %if.then8.cleanup_crit_edge, label %if.end33.thread

if.then8.cleanup_crit_edge:                       ; preds = %if.then8
  br label %cleanup

if.end33.thread:                                  ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  call void @finish_wait(ptr noundef nonnull @pch_event, ptr noundef nonnull %__wq_entry) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #9
  br label %if.end41

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.then8.cleanup_crit_edge
  %__ret9.1114 = phi i32 [ %__ret9.1, %cleanup.cleanup_crit_edge ], [ 100, %if.then8.cleanup_crit_edge ]
  %call31 = call i32 @schedule_timeout(i32 noundef %__ret9.1114) #9
  %call11 = call i32 @prepare_to_wait_event(ptr noundef nonnull @pch_event, ptr noundef nonnull %__wq_entry, i32 noundef 2) #9
  %7 = ptrtoint ptr %pch_event_flag to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pch_event_flag, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp14.not = icmp eq i32 %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool18.not = icmp eq i32 %call31, 0
  %spec.store.select79 = select i1 %tobool18.not, i32 1, i32 %call31
  %__ret9.1 = select i1 %cmp14.not, i32 %call31, i32 %spec.store.select79
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret9.1)
  %tobool24.not = icmp eq i32 %__ret9.1, 0
  %not.cmp14.not = xor i1 %cmp14.not, true
  %9 = select i1 %not.cmp14.not, i1 true, i1 %tobool24.not
  br i1 %9, label %if.end33, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end33:                                         ; preds = %cleanup
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret9.1)
  %phi.cmp = icmp eq i32 %__ret9.1, 0
  call void @finish_wait(ptr noundef nonnull @pch_event, ptr noundef nonnull %__wq_entry) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #9
  br i1 %phi.cmp, label %do.end39, label %if.end33.if.end41_crit_edge

if.end33.if.end41_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end41

do.end39:                                         ; preds = %if.end33
  %parent = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9, i32 1
  %10 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %parent, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.31) #13
  %12 = ptrtoint ptr %pch_event_flag to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %pch_event_flag, align 4
  %13 = ptrtoint ptr %pch_base_address to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pch_base_address, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pch_i2c_stop.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pch_i2c_wait_for_check_xfer, %pch_i2c_stop.exit)) #9
          to label %if.then.i [label %pch_i2c_stop.exit], !srcloc !155

if.then.i:                                        ; preds = %do.end39
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %parent, align 8
  %add.ptr.i = getelementptr i8, ptr %14, i32 4
  %17 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !156
  %18 = call i32 @llvm.bswap.i32(i32 %17) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !157
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pch_i2c_stop.__UNIQUE_ID_ddebug296, ptr noundef %16, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.37, i32 noundef %18) #9
  br label %pch_i2c_stop.exit

pch_i2c_stop.exit:                                ; preds = %if.then.i, %do.end39
  %19 = ptrtoint ptr %pch_base_address to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pch_base_address, align 4
  %add.ptr.i.i = getelementptr i8, ptr %20, i32 4
  %21 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !156
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !157
  %22 = and i32 %21, -536870913
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !158
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %22) #9, !srcloc !159
  call fastcc void @pch_i2c_init(ptr noundef %adap)
  br label %cleanup77

if.end41:                                         ; preds = %if.end33.if.end41_crit_edge, %if.end33.thread, %entry.if.end41_crit_edge
  %23 = ptrtoint ptr %pch_event_flag to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %pch_event_flag, align 4
  %and = and i32 %24, 377
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool43.not = icmp eq i32 %and, 0
  br i1 %tobool43.not, label %if.end54, label %do.end47

do.end47:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #11
  %parent50 = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9, i32 1
  %25 = ptrtoint ptr %parent50 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %parent50, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.31) #13
  %27 = ptrtoint ptr %pch_event_flag to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %pch_event_flag, align 4
  %28 = ptrtoint ptr %pch_base_address to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pch_base_address, align 4
  %add.ptr.i101 = getelementptr i8, ptr %29, i32 8
  %30 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i101) #9, !srcloc !156
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !157
  %31 = and i32 %30, -268435457
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !158
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i101, i32 %31) #9, !srcloc !159
  %32 = ptrtoint ptr %pch_base_address to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pch_base_address, align 4
  %add.ptr.i102 = getelementptr i8, ptr %33, i32 8
  %34 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i102) #9, !srcloc !156
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !157
  %35 = and i32 %34, -33554433
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !158
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i102, i32 %35) #9, !srcloc !159
  call fastcc void @pch_i2c_init(ptr noundef %adap)
  br label %cleanup77

if.end54:                                         ; preds = %if.end41
  %36 = ptrtoint ptr %pch_event_flag to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %pch_event_flag, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 8
  %37 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !156
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !157
  %38 = and i32 %37, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool58.not = icmp eq i32 %38, 0
  br i1 %tobool58.not, label %if.end54.cleanup77_crit_edge, label %do.body60

if.end54.cleanup77_crit_edge:                     ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup77

do.body60:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pch_i2c_wait_for_check_xfer.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pch_i2c_wait_for_check_xfer, %cleanup77)) #9
          to label %if.then69 [label %cleanup77], !srcloc !155

if.then69:                                        ; preds = %do.body60
  call void @__sanitizer_cov_trace_pc() #11
  %parent72 = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9, i32 1
  %39 = ptrtoint ptr %parent72 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %parent72, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pch_i2c_wait_for_check_xfer.__UNIQUE_ID_ddebug297, ptr noundef %40, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.31) #9
  br label %cleanup77

cleanup77:                                        ; preds = %if.then69, %do.body60, %if.end54.cleanup77_crit_edge, %do.end47, %pch_i2c_stop.exit
  %retval.0 = phi i32 [ -11, %do.end47 ], [ -110, %pch_i2c_stop.exit ], [ -6, %if.then69 ], [ 0, %if.end54.cleanup77_crit_edge ], [ -6, %do.body60 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pch_i2c_stop(ptr nocapture noundef readonly %adap) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pch_base_address = getelementptr inbounds %struct.i2c_algo_pch_data, ptr %adap, i32 0, i32 2
  %0 = ptrtoint ptr %pch_base_address to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pch_base_address, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pch_i2c_stop.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pch_i2c_stop, %do.end)) #9
          to label %if.then [label %do.end], !srcloc !155

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %parent = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !156
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !157
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pch_i2c_stop.__UNIQUE_ID_ddebug296, ptr noundef %3, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.37, i32 noundef %5) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %6 = ptrtoint ptr %pch_base_address to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pch_base_address, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !156
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !157
  %9 = and i32 %8, -536870913
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !158
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %9) #9, !srcloc !159
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pch_i2c_repstart(ptr nocapture noundef readonly %adap) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pch_base_address = getelementptr inbounds %struct.i2c_algo_pch_data, ptr %adap, i32 0, i32 2
  %0 = ptrtoint ptr %pch_base_address to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pch_base_address, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pch_i2c_repstart.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pch_i2c_repstart, %do.end)) #9
          to label %if.then [label %do.end], !srcloc !155

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %parent = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !156
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !157
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pch_i2c_repstart.__UNIQUE_ID_ddebug298, ptr noundef %3, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.40, i32 noundef %5) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %6 = ptrtoint ptr %pch_base_address to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pch_base_address, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !156
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !157
  %9 = or i32 %8, 67108864
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !158
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %9) #9, !srcloc !159
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pch_i2c_cb(ptr nocapture noundef %adap) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pch_base_address = getelementptr inbounds %struct.i2c_algo_pch_data, ptr %adap, i32 0, i32 2
  %0 = ptrtoint ptr %pch_base_address to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pch_base_address, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 8
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !156
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !157
  %and = and i32 %3, 146
  %and1 = and i32 %3, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool.not = icmp eq i32 %and1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %pch_event_flag = getelementptr inbounds %struct.i2c_algo_pch_data, ptr %adap, i32 0, i32 4
  %4 = ptrtoint ptr %pch_event_flag to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pch_event_flag, align 4
  %or = or i32 %5, 1
  store i32 %or, ptr %pch_event_flag, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %and2 = and i32 %3, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.end.if.end7_crit_edge, label %if.then4

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %pch_event_flag5 = getelementptr inbounds %struct.i2c_algo_pch_data, ptr %adap, i32 0, i32 4
  %6 = ptrtoint ptr %pch_event_flag5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pch_event_flag5, align 4
  %or6 = or i32 %7, 2
  store i32 %or6, ptr %pch_event_flag5, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %if.end.if.end7_crit_edge
  %8 = ptrtoint ptr %pch_base_address to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pch_base_address, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 8
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !156
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !157
  %neg.i = xor i32 %and, -1
  %and.i = and i32 %11, %neg.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !158
  tail call void @arm_heavy_mb() #9
  %12 = tail call i32 @llvm.bswap.i32(i32 %and.i) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %12) #9, !srcloc !159
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pch_i2c_cb.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pch_i2c_cb, %do.end)) #9
          to label %if.then14 [label %do.end], !srcloc !155

if.then14:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  %parent = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9, i32 1
  %13 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %parent, align 8
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !156
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !157
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pch_i2c_cb.__UNIQUE_ID_ddebug305, ptr noundef %14, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.47, i32 noundef %16) #9
  br label %do.end

do.end:                                           ; preds = %if.then14, %if.end7
  tail call void @__wake_up(ptr noundef nonnull @pch_event, i32 noundef 3, i32 noundef 1, ptr noundef null) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pch_i2c_suspend(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %pch_base_address = getelementptr inbounds %struct.i2c_algo_pch_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %pch_base_address to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pch_base_address, align 4
  %pch_i2c_suspended = getelementptr inbounds %struct.adapter_info, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %pch_i2c_suspended to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %pch_i2c_suspended, align 8
  %ch_num = getelementptr inbounds %struct.adapter_info, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %ch_num to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ch_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp40 = icmp sgt i32 %6, 0
  br i1 %cmp40, label %entry.while.cond.preheader_crit_edge, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

entry.while.cond.preheader_crit_edge:             ; preds = %entry
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %for.inc.while.cond.preheader_crit_edge, %entry.while.cond.preheader_crit_edge
  %i.041 = phi i32 [ %inc, %for.inc.while.cond.preheader_crit_edge ], [ 0, %entry.while.cond.preheader_crit_edge ]
  %pch_i2c_xfer_in_progress = getelementptr [2 x %struct.i2c_algo_pch_data], ptr %1, i32 0, i32 %i.041, i32 5
  %7 = ptrtoint ptr %pch_i2c_xfer_in_progress to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %pch_i2c_xfer_in_progress, align 8, !range !160
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not39 = icmp eq i8 %8, 0
  br i1 %tobool.not39, label %while.cond.preheader.for.inc_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.for.inc_crit_edge:           ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

for.cond3.preheader:                              ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp542 = icmp sgt i32 %12, 0
  br i1 %cmp542, label %for.cond3.preheader.for.body6_crit_edge, label %for.cond3.preheader.do.body_crit_edge

for.cond3.preheader.do.body_crit_edge:            ; preds = %for.cond3.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

for.cond3.preheader.for.body6_crit_edge:          ; preds = %for.cond3.preheader
  br label %for.body6

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  tail call void @msleep(i32 noundef 20) #9
  %9 = ptrtoint ptr %pch_i2c_xfer_in_progress to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %pch_i2c_xfer_in_progress, align 8, !range !160
  %tobool.not = icmp eq i8 %10, 0
  br i1 %tobool.not, label %while.body.for.inc_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.body.for.inc_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

for.inc:                                          ; preds = %while.body.for.inc_crit_edge, %while.cond.preheader.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.041, 1
  %11 = ptrtoint ptr %ch_num to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ch_num, align 4
  %cmp = icmp slt i32 %inc, %12
  br i1 %cmp, label %for.inc.while.cond.preheader_crit_edge, label %for.cond3.preheader

for.inc.while.cond.preheader_crit_edge:           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.preheader

for.body6:                                        ; preds = %for.body6.for.body6_crit_edge, %for.cond3.preheader.for.body6_crit_edge
  %i.143 = phi i32 [ %inc10, %for.body6.for.body6_crit_edge ], [ 0, %for.cond3.preheader.for.body6_crit_edge ]
  %pch_base_address.i = getelementptr [2 x %struct.i2c_algo_pch_data], ptr %1, i32 0, i32 %i.143, i32 2
  %13 = ptrtoint ptr %pch_base_address.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pch_base_address.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %14, i32 4
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !156
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !157
  %16 = and i32 %15, -196609
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !158
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %16) #9, !srcloc !159
  %add.ptr.i = getelementptr i8, ptr %14, i32 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !158
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #9, !srcloc !159
  %add.ptr2.i = getelementptr i8, ptr %14, i32 44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !158
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 0) #9, !srcloc !159
  %inc10 = add nuw nsw i32 %i.143, 1
  %17 = ptrtoint ptr %ch_num to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ch_num, align 4
  %cmp5 = icmp slt i32 %inc10, %18
  br i1 %cmp5, label %for.body6.for.body6_crit_edge, label %for.body6.do.body_crit_edge

for.body6.do.body_crit_edge:                      ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

for.body6.for.body6_crit_edge:                    ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body6

do.body:                                          ; preds = %for.body6.do.body_crit_edge, %for.cond3.preheader.do.body_crit_edge, %entry.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pch_i2c_suspend.__UNIQUE_ID_ddebug310, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pch_i2c_suspend, %do.end)) #9
          to label %if.then [label %do.end], !srcloc !155

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr19 = getelementptr i8, ptr %3, i32 8
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr19) #9, !srcloc !156
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !157
  %add.ptr21 = getelementptr i8, ptr %3, i32 48
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr21) #9, !srcloc !156
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !157
  %add.ptr23 = getelementptr i8, ptr %3, i32 68
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr23) #9, !srcloc !156
  %24 = tail call i32 @llvm.bswap.i32(i32 %23) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !157
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pch_i2c_suspend.__UNIQUE_ID_ddebug310, ptr noundef %dev, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.53, i32 noundef %20, i32 noundef %22, i32 noundef %24) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %do.body
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pch_i2c_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %ch_num = getelementptr inbounds %struct.adapter_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %ch_num to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ch_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp5 = icmp sgt i32 %3, 0
  br i1 %cmp5, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.06 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr [2 x %struct.i2c_algo_pch_data], ptr %1, i32 0, i32 %i.06
  tail call fastcc void @pch_i2c_init(ptr noundef %arrayidx)
  %inc = add nuw nsw i32 %i.06, 1
  %4 = ptrtoint ptr %ch_num to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ch_num, align 4
  %cmp = icmp slt i32 %inc, %5
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %pch_i2c_suspended = getelementptr inbounds %struct.adapter_info, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %pch_i2c_suspended to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %pch_i2c_suspended, align 8
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

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
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !15, !16, !17, !19, !21, !23, !24, !25, !26, !28, !29, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !53, !55, !56, !57, !59, !60, !62, !63, !64, !66, !67, !68, !70, !71, !72, !74, !75, !76, !78, !79, !80, !81, !83, !84, !85, !87, !88, !90, !92, !93, !95, !96, !98, !99, !101, !102, !104, !105, !107, !108, !109, !111, !112, !114, !115, !117, !118, !119, !120, !122, !123, !124, !126, !127, !128, !130, !131, !133, !134, !136, !138, !139, !140, !141, !143, !144}
!llvm.module.flags = !{!146, !147, !148, !149, !150, !151, !152, !153}
!llvm.ident = !{!154}

!0 = !{ptr @__initcall__kmod_i2c_eg20t__311_901_pch_pcidriver_init6, !1, !"__initcall__kmod_i2c_eg20t__311_901_pch_pcidriver_init6", i1 false, i1 false}
!1 = !{!"../drivers/i2c/busses/i2c-eg20t.c", i32 901, i32 1}
!2 = !{ptr @__exitcall_pch_pcidriver_exit, !1, !"__exitcall_pch_pcidriver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description312, !4, !"__UNIQUE_ID_description312", i1 false, i1 false}
!4 = !{!"../drivers/i2c/busses/i2c-eg20t.c", i32 903, i32 1}
!5 = !{ptr @__UNIQUE_ID_file313, !6, !"__UNIQUE_ID_file313", i1 false, i1 false}
!6 = !{!"../drivers/i2c/busses/i2c-eg20t.c", i32 904, i32 1}
!7 = !{ptr @__UNIQUE_ID_license314, !6, !"__UNIQUE_ID_license314", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_author315, !9, !"__UNIQUE_ID_author315", i1 false, i1 false}
!9 = !{!"../drivers/i2c/busses/i2c-eg20t.c", i32 905, i32 1}
!10 = !{ptr @__param_pch_i2c_speed, !11, !"__param_pch_i2c_speed", i1 false, i1 false}
!11 = !{!"../drivers/i2c/busses/i2c-eg20t.c", i32 906, i32 1}
!12 = !{ptr @__UNIQUE_ID_pch_i2c_speedtype316, !11, !"__UNIQUE_ID_pch_i2c_speedtype316", i1 false, i1 false}
!13 = !{ptr @__param_pch_clk, !14, !"__param_pch_clk", i1 false, i1 false}
!14 = !{!"../drivers/i2c/busses/i2c-eg20t.c", i32 907, i32 1}
!15 = !{ptr @__UNIQUE_ID_pch_clktype317, !14, !"__UNIQUE_ID_pch_clktype317", i1 false, i1 false}
!16 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @pch_pcidriver, !18, !"pch_pcidriver", i1 false, i1 false}
!18 = !{!"../drivers/i2c/busses/i2c-eg20t.c", i32 893, i32 26}
!19 = !{ptr @pch_pcidev_id, !20, !"pch_pcidev_id", i1 false, i1 false}
!20 = !{!"../drivers/i2c/busses/i2c-eg20t.c", i32 176, i32 35}
!21 = !{ptr @.str.1, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/i2c/busses/i2c-eg20t.c", i32 739, i32 2}
!23 = !{ptr @.str.2, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @pch_i2c_probe.__UNIQUE_ID_ddebug308, !22, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!26 = !{ptr @.str.4, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/i2c/busses/i2c-eg20t.c", i32 747, i32 3}
!28 = !{ptr @.str.5, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.6, !27, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @pch_i2c_probe._entry, !27, !"_entry", i1 false, i1 false}
!31 = !{ptr @pch_i2c_probe._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.8, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/i2c/busses/i2c-eg20t.c", i32 753, i32 3}
!34 = !{ptr @pch_i2c_probe._entry.7, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @pch_i2c_probe._entry_ptr.9, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.11, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/i2c/busses/i2c-eg20t.c", i32 760, i32 3}
!38 = !{ptr @pch_i2c_probe._entry.10, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @pch_i2c_probe._entry_ptr.12, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.14, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/i2c/busses/i2c-eg20t.c", i32 790, i32 3}
!42 = !{ptr @pch_i2c_probe._entry.13, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @pch_i2c_probe._entry_ptr.15, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.17, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/i2c/busses/i2c-eg20t.c", i32 802, i32 4}
!46 = !{ptr @pch_i2c_probe._entry.16, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @pch_i2c_probe._entry_ptr.18, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.19, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/i2c/busses/i2c-eg20t.c", i32 808, i32 2}
!50 = !{ptr @pch_i2c_probe.__UNIQUE_ID_ddebug309, !49, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!51 = !{ptr @pch_algorithm, !52, !"pch_algorithm", i1 false, i1 false}
!52 = !{!"../drivers/i2c/busses/i2c-eg20t.c", i32 710, i32 35}
!53 = !{ptr @.str.20, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/i2c/busses/i2c-eg20t.c", i32 673, i32 2}
!55 = !{ptr @.str.21, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @pch_i2c_xfer.__UNIQUE_ID_ddebug306, !54, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!57 = !{ptr @.str.22, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/i2c/busses/i2c-eg20t.c", i32 682, i32 3}
!59 = !{ptr @pch_i2c_xfer.__UNIQUE_ID_ddebug307, !58, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!60 = !{ptr @.str.23, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/i2c/busses/i2c-eg20t.c", i32 169, i32 8}
!62 = !{ptr @.str.24, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @pch_mutex, !61, !"pch_mutex", i1 false, i1 false}
!64 = !{ptr @.str.25, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/i2c/busses/i2c-eg20t.c", i32 267, i32 4}
!66 = !{ptr @.str.26, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @pch_i2c_wait_for_bus_idle.__UNIQUE_ID_ddebug294, !65, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!68 = !{ptr @.str.27, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/i2c/busses/i2c-eg20t.c", i32 268, i32 4}
!70 = !{ptr @pch_i2c_wait_for_bus_idle._entry, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @pch_i2c_wait_for_bus_idle._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.28, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/i2c/busses/i2c-eg20t.c", i32 297, i32 2}
!74 = !{ptr @.str.29, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @pch_i2c_start.__UNIQUE_ID_ddebug295, !73, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!76 = !{ptr @.str.30, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/i2c/busses/i2c-eg20t.c", i32 321, i32 3}
!78 = !{ptr @.str.31, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @pch_i2c_wait_for_check_xfer._entry, !77, !"_entry", i1 false, i1 false}
!80 = !{ptr @pch_i2c_wait_for_check_xfer._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.33, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/i2c/busses/i2c-eg20t.c", i32 329, i32 3}
!83 = !{ptr @pch_i2c_wait_for_check_xfer._entry.32, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @pch_i2c_wait_for_check_xfer._entry_ptr.34, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.35, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/i2c/busses/i2c-eg20t.c", i32 340, i32 3}
!87 = !{ptr @pch_i2c_wait_for_check_xfer.__UNIQUE_ID_ddebug297, !86, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!88 = !{ptr @pch_event, !89, !"pch_event", i1 false, i1 false}
!89 = !{!"../drivers/i2c/busses/i2c-eg20t.c", i32 168, i32 26}
!90 = !{ptr @.str.36, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/i2c/busses/i2c-eg20t.c", i32 474, i32 2}
!92 = !{ptr @pch_i2c_restart.__UNIQUE_ID_ddebug304, !91, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!93 = !{ptr @.str.37, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/i2c/busses/i2c-eg20t.c", i32 308, i32 2}
!95 = !{ptr @pch_i2c_stop.__UNIQUE_ID_ddebug296, !94, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!96 = !{ptr @.str.38, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/i2c/busses/i2c-eg20t.c", i32 450, i32 2}
!98 = !{ptr @pch_i2c_sendack.__UNIQUE_ID_ddebug302, !97, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!99 = !{ptr @.str.39, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/i2c/busses/i2c-eg20t.c", i32 461, i32 2}
!101 = !{ptr @pch_i2c_sendnack.__UNIQUE_ID_ddebug303, !100, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!102 = !{ptr @.str.40, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/i2c/busses/i2c-eg20t.c", i32 354, i32 2}
!104 = !{ptr @pch_i2c_repstart.__UNIQUE_ID_ddebug298, !103, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!105 = !{ptr @.str.41, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/i2c/busses/i2c-eg20t.c", i32 388, i32 2}
!107 = !{ptr @.str.42, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @pch_i2c_writebytes.__UNIQUE_ID_ddebug299, !106, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!109 = !{ptr @.str.43, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/i2c/busses/i2c-eg20t.c", i32 422, i32 3}
!111 = !{ptr @pch_i2c_writebytes.__UNIQUE_ID_ddebug300, !110, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!112 = !{ptr @.str.44, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/i2c/busses/i2c-eg20t.c", i32 438, i32 2}
!114 = !{ptr @pch_i2c_writebytes.__UNIQUE_ID_ddebug301, !113, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!115 = !{ptr @.str.45, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/i2c/busses/i2c-eg20t.c", i32 634, i32 4}
!117 = !{ptr @.str.46, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @pch_i2c_handler._entry, !116, !"_entry", i1 false, i1 false}
!119 = !{ptr @pch_i2c_handler._entry_ptr, !116, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.47, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/i2c/busses/i2c-eg20t.c", i32 610, i32 2}
!122 = !{ptr @.str.48, !121, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @pch_i2c_cb.__UNIQUE_ID_ddebug305, !121, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!124 = !{ptr @.str.49, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/i2c/busses/i2c-eg20t.c", i32 230, i32 3}
!126 = !{ptr @.str.50, !125, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @pch_i2c_init.__UNIQUE_ID_ddebug292, !125, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!128 = !{ptr @.str.51, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/i2c/busses/i2c-eg20t.c", i32 246, i32 2}
!130 = !{ptr @pch_i2c_init.__UNIQUE_ID_ddebug293, !129, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!131 = !{ptr @pch_i2c_init.__key, !132, !"__key", i1 false, i1 false}
!132 = !{!"../drivers/i2c/busses/i2c-eg20t.c", i32 250, i32 2}
!133 = !{ptr @.str.52, !132, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @pch_i2c_pm_ops, !135, !"pch_i2c_pm_ops", i1 false, i1 false}
!135 = !{!"../drivers/i2c/busses/i2c-eg20t.c", i32 891, i32 8}
!136 = !{ptr @.str.53, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/i2c/busses/i2c-eg20t.c", i32 870, i32 2}
!138 = !{ptr @.str.54, !137, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @pch_i2c_suspend.__UNIQUE_ID_ddebug310, !137, !"__UNIQUE_ID_ddebug310", i1 false, i1 false}
!140 = !{ptr @__param_str_pch_i2c_speed, !11, !"__param_str_pch_i2c_speed", i1 false, i1 false}
!141 = !{ptr @pch_i2c_speed, !142, !"pch_i2c_speed", i1 false, i1 false}
!142 = !{!"../drivers/i2c/busses/i2c-eg20t.c", i32 166, i32 12}
!143 = !{ptr @__param_str_pch_clk, !14, !"__param_str_pch_clk", i1 false, i1 false}
!144 = !{ptr @pch_clk, !145, !"pch_clk", i1 false, i1 false}
!145 = !{!"../drivers/i2c/busses/i2c-eg20t.c", i32 167, i32 12}
!146 = !{i32 1, !"wchar_size", i32 2}
!147 = !{i32 1, !"min_enum_size", i32 4}
!148 = !{i32 8, !"branch-target-enforcement", i32 0}
!149 = !{i32 8, !"sign-return-address", i32 0}
!150 = !{i32 8, !"sign-return-address-all", i32 0}
!151 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!152 = !{i32 7, !"uwtable", i32 1}
!153 = !{i32 7, !"frame-pointer", i32 2}
!154 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!155 = !{i64 2148975895, i64 2148975900, i64 2148975913, i64 2148975957, i64 2148975991, i64 2148976012}
!156 = !{i64 6853754}
!157 = !{i64 2154386613}
!158 = !{i64 2154387968}
!159 = !{i64 6853336}
!160 = !{i8 0, i8 2}
