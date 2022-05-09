; ModuleID = '/llk/IR_all_yes/drivers/i2c/busses/i2c-stm32f7.c_pt.bc'
source_filename = "../drivers/i2c/busses/i2c-stm32f7.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.stm32f7_i2c_spec = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.stm32f7_i2c_setup = type { i32, i32, i32, i32, i32 }
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
%struct.stm32f7_i2c_dev = type { %struct.i2c_adapter, ptr, ptr, %struct.completion, ptr, i32, ptr, i32, i32, %struct.stm32f7_i2c_msg, %struct.stm32f7_i2c_setup, %struct.stm32f7_i2c_timings, [3 x ptr], ptr, %struct.stm32f7_i2c_regs, i32, i8, ptr, i8, ptr, i32, i32, i32, i8, i8, ptr, i8, i32, i32, ptr }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.stm32f7_i2c_msg = type { i16, i32, ptr, i32, i8, i8, i32, i8, [3 x i8], [35 x i8] }
%struct.stm32f7_i2c_timings = type { %struct.list_head, i8, i8, i8, i8, i8 }
%struct.stm32f7_i2c_regs = type { i32, i32, i32, i32, i32 }
%struct.stm32f7_i2c_alert = type { %struct.i2c_smbus_alert_setup, ptr }
%struct.i2c_smbus_alert_setup = type { i32 }
%struct.stm32_i2c_dma = type { ptr, ptr, ptr, i32, i32, i32, i32, %struct.completion }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.i2c_timings = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.i2c_lock_operations = type { ptr, ptr, ptr }

@__initcall__kmod_i2c_stm32f7_drv__304_2485_stm32f7_i2c_driver_init6 = internal global ptr @stm32f7_i2c_driver_init, section ".initcall6.init", align 4
@stm32f7_i2c_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @stm32f7_i2c_probe, ptr @stm32f7_i2c_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @stm32f7_i2c_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @stm32f7_i2c_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_stm32f7_i2c_driver_exit = internal global ptr @stm32f7_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author305 = internal constant [76 x i8] c"i2c_stm32f7_drv.author=M'boumba Cedric Madianga <cedric.madianga@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description306 = internal constant [66 x i8] c"i2c_stm32f7_drv.description=STMicroelectronics STM32F7 I2C driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file307 = internal constant [56 x i8] c"i2c_stm32f7_drv.file=drivers/i2c/busses/i2c-stm32f7-drv\00", section ".modinfo", align 1
@__UNIQUE_ID_license308 = internal constant [31 x i8] c"i2c_stm32f7_drv.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"stm32f7-i2c\00", [20 x i8] zeroinitializer }, align 32
@stm32f7_i2c_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stm32f7-i2c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @stm32f7_setup }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stm32mp15-i2c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @stm32mp15_setup }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@stm32f7_i2c_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @stm32f7_i2c_suspend, ptr @stm32f7_i2c_resume, ptr @stm32f7_i2c_suspend, ptr @stm32f7_i2c_resume, ptr @stm32f7_i2c_suspend, ptr @stm32f7_i2c_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @stm32f7_i2c_runtime_suspend, ptr @stm32f7_i2c_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"wakeup-source\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to get controller clock\0A\00", [32 x i8] zeroinitializer }, align 32
@stm32f7_i2c_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 2135, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to prepare_enable clock\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"stm32f7_i2c_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/i2c/busses/i2c-stm32f7.c\00", [63 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@stm32f7_i2c_probe._entry_ptr = internal global ptr @stm32f7_i2c_probe._entry, section ".printk_index", align 4
@.str.8 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Error: Missing reset ctrl\0A\00", [37 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@stm32f7_i2c_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.4, ptr @.str.5, i32 2158, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to request irq event %i\0A\00", [32 x i8] zeroinitializer }, align 32
@stm32f7_i2c_probe._entry_ptr.11 = internal global ptr @stm32f7_i2c_probe._entry.9, section ".printk_index", align 4
@stm32f7_i2c_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.4, ptr @.str.5, i32 2166, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to request irq error %i\0A\00", [32 x i8] zeroinitializer }, align 32
@stm32f7_i2c_probe._entry_ptr.14 = internal global ptr @stm32f7_i2c_probe._entry.12, section ".printk_index", align 4
@stm32f7_i2c_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.4, ptr @.str.5, i32 2172, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Can't get device data\0A\00", [41 x i8] zeroinitializer }, align 32
@stm32f7_i2c_probe._entry_ptr.17 = internal global ptr @stm32f7_i2c_probe._entry.15, section ".printk_index", align 4
@.str.18 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"STM32F7 I2C(%pa)\00", [47 x i8] zeroinitializer }, align 32
@stm32f7_i2c_algo = internal constant { %struct.i2c_algorithm, [36 x i8] } { %struct.i2c_algorithm { ptr @stm32f7_i2c_xfer, ptr null, ptr @stm32f7_i2c_smbus_xfer, ptr null, ptr @stm32f7_i2c_func, ptr @stm32f7_i2c_reg_slave, ptr @stm32f7_i2c_unreg_slave }, [36 x i8] zeroinitializer }, align 32
@stm32f7_i2c_probe.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.4, ptr @.str.5, ptr @.str.20, i8 2, i8 41, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"i2c_stm32f7_drv\00", [16 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"No DMA option: fallback using interrupts\0A\00", [54 x i8] zeroinitializer }, align 32
@stm32f7_i2c_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.4, ptr @.str.5, i32 2223, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to set wake up irq\0A\00", [37 x i8] zeroinitializer }, align 32
@stm32f7_i2c_probe._entry_ptr.23 = internal global ptr @stm32f7_i2c_probe._entry.21, section ".printk_index", align 4
@.str.24 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"smbus\00", [26 x i8] zeroinitializer }, align 32
@stm32f7_i2c_probe._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.4, ptr @.str.5, i32 2251, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"failed to enable SMBus Host-Notify protocol (%d)\0A\00", [46 x i8] zeroinitializer }, align 32
@stm32f7_i2c_probe._entry_ptr.27 = internal global ptr @stm32f7_i2c_probe._entry.25, section ".printk_index", align 4
@.str.28 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"smbus-alert\00", [20 x i8] zeroinitializer }, align 32
@stm32f7_i2c_probe._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.4, ptr @.str.5, i32 2261, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"failed to enable SMBus alert protocol (%d)\0A\00", [52 x i8] zeroinitializer }, align 32
@stm32f7_i2c_probe._entry_ptr.31 = internal global ptr @stm32f7_i2c_probe._entry.29, section ".printk_index", align 4
@stm32f7_i2c_probe._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.4, ptr @.str.5, i32 2266, ptr @.str.34, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"STM32F7 I2C-%d bus adapter\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@stm32f7_i2c_probe._entry_ptr.35 = internal global ptr @stm32f7_i2c_probe._entry.32, section ".printk_index", align 4
@stm32f7_i2c_isr_event.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.36, ptr @.str.5, ptr @.str.37, i8 1, i8 121, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"stm32f7_i2c_isr_event\00", [42 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"<%s>: Receive NACK (addr %x)\0A\00", [34 x i8] zeroinitializer }, align 32
@stm32f7_i2c_slave_isr_event.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.38, ptr @.str.5, ptr @.str.39, i8 1, i8 106, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"stm32f7_i2c_slave_isr_event\00", [36 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"<%s>: Receive NACK\0A\00", [44 x i8] zeroinitializer }, align 32
@stm32f7_i2c_smbus_rep_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.5, i32 1180, ptr @.str.42, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"can't use DMA\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"stm32f7_i2c_smbus_rep_start\00", [36 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@stm32f7_i2c_smbus_rep_start._entry_ptr = internal global ptr @stm32f7_i2c_smbus_rep_start._entry, section ".printk_index", align 4
@stm32f7_i2c_xfer_msg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.43, ptr @.str.5, i32 921, ptr @.str.42, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"stm32f7_i2c_xfer_msg\00", [43 x i8] zeroinitializer }, align 32
@stm32f7_i2c_xfer_msg._entry_ptr = internal global ptr @stm32f7_i2c_xfer_msg._entry, section ".printk_index", align 4
@stm32f7_i2c_isr_event_thread.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.44, ptr @.str.5, ptr @.str.45, i8 1, i8 -118, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"stm32f7_i2c_isr_event_thread\00", [35 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"<%s>: Timed out\0A\00", [47 x i8] zeroinitializer }, align 32
@stm32f7_i2c_isr_error._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.5, i32 1617, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"<%s>: Bus error accessing addr 0x%x\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"stm32f7_i2c_isr_error\00", [42 x i8] zeroinitializer }, align 32
@stm32f7_i2c_isr_error._entry_ptr = internal global ptr @stm32f7_i2c_isr_error._entry, section ".printk_index", align 4
@stm32f7_i2c_isr_error.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.47, ptr @.str.5, ptr @.str.48, i8 1, i8 -106, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"<%s>: Arbitration loss accessing addr 0x%x\0A\00", [52 x i8] zeroinitializer }, align 32
@stm32f7_i2c_isr_error._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.47, ptr @.str.5, i32 1633, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"<%s>: PEC error in reception accessing addr 0x%x\0A\00", [46 x i8] zeroinitializer }, align 32
@stm32f7_i2c_isr_error._entry_ptr.51 = internal global ptr @stm32f7_i2c_isr_error._entry.49, section ".printk_index", align 4
@stm32f7_i2c_isr_error.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.47, ptr @.str.5, ptr @.str.52, i8 1, i8 -103, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"<%s>: SMBus alert received\0A\00", [36 x i8] zeroinitializer }, align 32
@stm32f7_i2c_setup_timing._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.5, i32 658, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Invalid bus speed (%i>%i)\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"stm32f7_i2c_setup_timing\00", [39 x i8] zeroinitializer }, align 32
@stm32f7_i2c_setup_timing._entry_ptr = internal global ptr @stm32f7_i2c_setup_timing._entry, section ".printk_index", align 4
@stm32f7_i2c_setup_timing._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.54, ptr @.str.5, i32 669, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"clock rate is 0\0A\00", [47 x i8] zeroinitializer }, align 32
@stm32f7_i2c_setup_timing._entry_ptr.57 = internal global ptr @stm32f7_i2c_setup_timing._entry.55, section ".printk_index", align 4
@.str.58 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"i2c-digital-filter\00", [45 x i8] zeroinitializer }, align 32
@stm32f7_i2c_setup_timing._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.54, ptr @.str.5, i32 681, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to compute I2C timings.\0A\00", [32 x i8] zeroinitializer }, align 32
@stm32f7_i2c_setup_timing._entry_ptr.61 = internal global ptr @stm32f7_i2c_setup_timing._entry.59, section ".printk_index", align 4
@stm32f7_i2c_setup_timing._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.54, ptr @.str.5, i32 688, ptr @.str.42, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"downgrade I2C Speed Freq to (%i)\0A\00", [62 x i8] zeroinitializer }, align 32
@stm32f7_i2c_setup_timing._entry_ptr.64 = internal global ptr @stm32f7_i2c_setup_timing._entry.62, section ".printk_index", align 4
@stm32f7_i2c_setup_timing._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.54, ptr @.str.5, i32 693, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Impossible to compute I2C timings.\0A\00", [60 x i8] zeroinitializer }, align 32
@stm32f7_i2c_setup_timing._entry_ptr.67 = internal global ptr @stm32f7_i2c_setup_timing._entry.65, section ".printk_index", align 4
@.str.68 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"i2c-analog-filter\00", [46 x i8] zeroinitializer }, align 32
@stm32f7_i2c_setup_timing.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.54, ptr @.str.5, ptr @.str.69, i8 0, i8 -81, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.69 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"I2C Speed(%i), Clk Source(%i)\0A\00", [33 x i8] zeroinitializer }, align 32
@stm32f7_i2c_setup_timing.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.54, ptr @.str.5, ptr @.str.70, i8 0, i8 -81, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.70 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"I2C Rise(%i) and Fall(%i) Time\0A\00", [32 x i8] zeroinitializer }, align 32
@stm32f7_i2c_setup_timing.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.54, ptr @.str.5, ptr @.str.71, i8 0, i8 -80, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.71 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"I2C Analog Filter(%s), DNF(%i)\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"On\00", [29 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"Off\00", [28 x i8] zeroinitializer }, align 32
@stm32f7_i2c_compute_timing._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.75, ptr @.str.5, i32 465, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"speed out of bound {%d}\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"stm32f7_i2c_compute_timing\00", [37 x i8] zeroinitializer }, align 32
@stm32f7_i2c_compute_timing._entry_ptr = internal global ptr @stm32f7_i2c_compute_timing._entry, section ".printk_index", align 4
@stm32f7_i2c_compute_timing._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.75, ptr @.str.5, i32 474, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"timings out of bound Rise{%d>%d}/Fall{%d>%d}\0A\00", [50 x i8] zeroinitializer }, align 32
@stm32f7_i2c_compute_timing._entry_ptr.78 = internal global ptr @stm32f7_i2c_compute_timing._entry.76, section ".printk_index", align 4
@stm32f7_i2c_compute_timing._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.75, ptr @.str.5, i32 482, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"DNF out of bound %d/%d\0A\00", [40 x i8] zeroinitializer }, align 32
@stm32f7_i2c_compute_timing._entry_ptr.81 = internal global ptr @stm32f7_i2c_compute_timing._entry.79, section ".printk_index", align 4
@stm32f7_i2c_compute_timing.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.75, ptr @.str.5, ptr @.str.82, i8 0, i8 127, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.82 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"SDADEL(min/max): %i/%i, SCLDEL(Min): %i\0A\00", [55 x i8] zeroinitializer }, align 32
@stm32f7_i2c_compute_timing._entry.83 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.75, ptr @.str.5, i32 549, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"no Prescaler solution\0A\00", [41 x i8] zeroinitializer }, align 32
@stm32f7_i2c_compute_timing._entry_ptr.85 = internal global ptr @stm32f7_i2c_compute_timing._entry.83, section ".printk_index", align 4
@stm32f7_i2c_compute_timing._entry.86 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.75, ptr @.str.5, i32 606, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"no solution at all\0A\00", [44 x i8] zeroinitializer }, align 32
@stm32f7_i2c_compute_timing._entry_ptr.88 = internal global ptr @stm32f7_i2c_compute_timing._entry.86, section ".printk_index", align 4
@stm32f7_i2c_compute_timing.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.75, ptr @.str.5, ptr @.str.89, i8 0, i8 -101, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.89 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"Presc: %i, scldel: %i, sdadel: %i, scll: %i, sclh: %i\0A\00", [41 x i8] zeroinitializer }, align 32
@stm32f7_i2c_specs = internal global { [3 x %struct.stm32f7_i2c_spec], [32 x i8] } { [3 x %struct.stm32f7_i2c_spec] [%struct.stm32f7_i2c_spec { i32 100000, i32 300, i32 1000, i32 0, i32 3450, i32 250, i32 4700, i32 4000 }, %struct.stm32f7_i2c_spec { i32 400000, i32 300, i32 300, i32 0, i32 900, i32 100, i32 1300, i32 600 }, %struct.stm32f7_i2c_spec { i32 1000000, i32 100, i32 120, i32 0, i32 450, i32 50, i32 500, i32 260 }], [32 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.90 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"st,syscfg-fmp\00", [18 x i8] zeroinitializer }, align 32
@stm32f7_i2c_xfer.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.91, ptr @.str.5, ptr @.str.92, i8 1, i8 -85, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.91 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"stm32f7_i2c_xfer\00", [47 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Access to slave 0x%x timed out\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"include/linux/dmaengine.h\00", [38 x i8] zeroinitializer }, align 32
@stm32f7_i2c_smbus_xfer.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.94, ptr @.str.5, ptr @.str.92, i8 1, i8 -70, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.94 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"stm32f7_i2c_smbus_xfer\00", [41 x i8] zeroinitializer }, align 32
@stm32f7_i2c_smbus_xfer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.94, ptr @.str.5, i32 1803, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Unsupported smbus transaction\0A\00", [33 x i8] zeroinitializer }, align 32
@stm32f7_i2c_smbus_xfer._entry_ptr = internal global ptr @stm32f7_i2c_smbus_xfer._entry, section ".printk_index", align 4
@stm32f7_i2c_smbus_xfer_msg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.97, ptr @.str.5, i32 1014, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Invalid block write size %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"stm32f7_i2c_smbus_xfer_msg\00", [37 x i8] zeroinitializer }, align 32
@stm32f7_i2c_smbus_xfer_msg._entry_ptr = internal global ptr @stm32f7_i2c_smbus_xfer_msg._entry, section ".printk_index", align 4
@stm32f7_i2c_smbus_xfer_msg._entry.98 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.97, ptr @.str.5, i32 1034, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@stm32f7_i2c_smbus_xfer_msg._entry_ptr.99 = internal global ptr @stm32f7_i2c_smbus_xfer_msg._entry.98, section ".printk_index", align 4
@stm32f7_i2c_smbus_xfer_msg._entry.100 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.97, ptr @.str.5, i32 1047, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Unsupported smbus protocol %d\0A\00", [33 x i8] zeroinitializer }, align 32
@stm32f7_i2c_smbus_xfer_msg._entry_ptr.102 = internal global ptr @stm32f7_i2c_smbus_xfer_msg._entry.100, section ".printk_index", align 4
@stm32f7_i2c_smbus_xfer_msg._entry.103 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.97, ptr @.str.5, i32 1087, ptr @.str.42, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@stm32f7_i2c_smbus_xfer_msg._entry_ptr.104 = internal global ptr @stm32f7_i2c_smbus_xfer_msg._entry.103, section ".printk_index", align 4
@stm32f7_i2c_smbus_check_pec._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @.str.106, ptr @.str.5, i32 1218, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Unsupported smbus protocol for PEC\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"stm32f7_i2c_smbus_check_pec\00", [36 x i8] zeroinitializer }, align 32
@stm32f7_i2c_smbus_check_pec._entry_ptr = internal global ptr @stm32f7_i2c_smbus_check_pec._entry, section ".printk_index", align 4
@stm32f7_i2c_smbus_check_pec._entry.107 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @.str.106, ptr @.str.5, i32 1224, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Bad PEC 0x%02x vs. 0x%02x\0A\00", [37 x i8] zeroinitializer }, align 32
@stm32f7_i2c_smbus_check_pec._entry_ptr.109 = internal global ptr @stm32f7_i2c_smbus_check_pec._entry.107, section ".printk_index", align 4
@stm32f7_i2c_reg_slave._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.110, ptr @.str.111, ptr @.str.5, i32 1841, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"SMBus PEC not supported in slave mode\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"stm32f7_i2c_reg_slave\00", [42 x i8] zeroinitializer }, align 32
@stm32f7_i2c_reg_slave._entry_ptr = internal global ptr @stm32f7_i2c_reg_slave._entry, section ".printk_index", align 4
@stm32f7_i2c_reg_slave._entry.112 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.113, ptr @.str.111, ptr @.str.5, i32 1846, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Too much slave registered\0A\00", [37 x i8] zeroinitializer }, align 32
@stm32f7_i2c_reg_slave._entry_ptr.114 = internal global ptr @stm32f7_i2c_reg_slave._entry.112, section ".printk_index", align 4
@stm32f7_i2c_reg_slave._entry.115 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.116, ptr @.str.111, ptr @.str.5, i32 1898, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"I2C slave id not supported\0A\00", [36 x i8] zeroinitializer }, align 32
@stm32f7_i2c_reg_slave._entry_ptr.117 = internal global ptr @stm32f7_i2c_reg_slave._entry.115, section ".printk_index", align 4
@stm32f7_i2c_get_free_slave_id._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.118, ptr @.str.119, ptr @.str.5, i32 1377, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Slave 0x%x could not be registered\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"stm32f7_i2c_get_free_slave_id\00", [34 x i8] zeroinitializer }, align 32
@stm32f7_i2c_get_free_slave_id._entry_ptr = internal global ptr @stm32f7_i2c_get_free_slave_id._entry, section ".printk_index", align 4
@stm32f7_i2c_get_slave_id._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.120, ptr @.str.121, ptr @.str.5, i32 1343, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Slave 0x%x not registered\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"stm32f7_i2c_get_slave_id\00", [39 x i8] zeroinitializer }, align 32
@stm32f7_i2c_get_slave_id._entry_ptr = internal global ptr @stm32f7_i2c_get_slave_id._entry, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.122 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@stm32f7_setup = internal constant { %struct.stm32f7_i2c_setup, [44 x i8] } { %struct.stm32f7_i2c_setup { i32 0, i32 0, i32 25, i32 10, i32 0 }, [44 x i8] zeroinitializer }, align 32
@stm32mp15_setup = internal constant { %struct.stm32f7_i2c_setup, [44 x i8] } { %struct.stm32f7_i2c_setup { i32 0, i32 0, i32 25, i32 10, i32 64 }, [44 x i8] zeroinitializer }, align 32
@stm32f7_i2c_runtime_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.123, ptr @.str.124, ptr @.str.5, i32 2360, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to prepare_enable clock\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"stm32f7_i2c_runtime_resume\00", [37 x i8] zeroinitializer }, align 32
@stm32f7_i2c_runtime_resume._entry_ptr = internal global ptr @stm32f7_i2c_runtime_resume._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 2, i64 3, i64 4, i64 5, i64 7]
@__sancov_gen_cov_switch_values.125 = internal global [4 x i64] [i64 2, i64 32, i64 5, i64 7]
@__sancov_gen_cov_switch_values.126 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 7, i64 8]
@__sancov_gen_cov_switch_values.127 = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 7]
@__sancov_gen_cov_switch_values.128 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.129 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.130 = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 7]
@___asan_gen_.131 = private unnamed_addr constant [19 x i8] c"stm32f7_i2c_driver\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 2475, i32 31 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 2477, i32 11 }
@___asan_gen_.137 = private unnamed_addr constant [18 x i8] c"stm32f7_i2c_match\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 2468, i32 34 }
@___asan_gen_.140 = private unnamed_addr constant [19 x i8] c"stm32f7_i2c_pm_ops\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 2462, i32 32 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 2126, i32 11 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 2131, i32 10 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 2135, i32 3 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 2142, i32 9 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 2157, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 2165, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 2172, i32 3 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 2194, i32 43 }
@___asan_gen_.191 = private unnamed_addr constant [17 x i8] c"stm32f7_i2c_algo\00", align 1
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 2090, i32 35 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 2214, i32 3 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 2223, i32 4 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 2240, i32 65 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 2249, i32 4 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 2256, i32 47 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 2259, i32 4 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 2266, i32 2 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 1509, i32 3 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 1448, i32 3 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 1180, i32 4 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 921, i32 4 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 1579, i32 3 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 1616, i32 3 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 1625, i32 3 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 1632, i32 3 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 1639, i32 3 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 657, i32 3 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 669, i32 3 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 673, i32 52 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 680, i32 4 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 686, i32 4 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 693, i32 3 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 698, i32 14 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 700, i32 2 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 702, i32 2 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 704, i32 2 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 464, i32 3 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 471, i32 3 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 480, i32 3 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 508, i32 2 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 549, i32 3 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 606, i32 3 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 617, i32 2 }
@___asan_gen_.383 = private unnamed_addr constant [18 x i8] c"stm32f7_i2c_specs\00", align 1
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 369, i32 32 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 1990, i32 56 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 1709, i32 3 }
@___asan_gen_.396 = private unnamed_addr constant [29 x i8] c"../include/linux/dmaengine.h\00", align 1
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 1169, i32 2 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 1771, i32 3 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 1803, i32 4 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 1013, i32 5 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 1033, i32 4 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 1047, i32 3 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 1087, i32 4 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 1218, i32 3 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 1223, i32 3 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 1841, i32 3 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 1846, i32 3 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 1898, i32 3 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 1377, i32 2 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 1343, i32 2 }
@___asan_gen_.482 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.486 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 87, i32 2 }
@___asan_gen_.488 = private unnamed_addr constant [14 x i8] c"stm32f7_setup\00", align 1
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 402, i32 39 }
@___asan_gen_.491 = private unnamed_addr constant [16 x i8] c"stm32mp15_setup\00", align 1
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 407, i32 39 }
@___asan_gen_.494 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.500 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.501 = private constant [36 x i8] c"../drivers/i2c/busses/i2c-stm32f7.c\00", align 1
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 2360, i32 4 }
@llvm.compiler.used = appending global [166 x ptr] [ptr @__UNIQUE_ID_author305, ptr @__UNIQUE_ID_description306, ptr @__UNIQUE_ID_file307, ptr @__UNIQUE_ID_license308, ptr @__exitcall_stm32f7_i2c_driver_exit, ptr @__initcall__kmod_i2c_stm32f7_drv__304_2485_stm32f7_i2c_driver_init6, ptr @stm32f7_i2c_compute_timing._entry, ptr @stm32f7_i2c_compute_timing._entry.76, ptr @stm32f7_i2c_compute_timing._entry.79, ptr @stm32f7_i2c_compute_timing._entry.83, ptr @stm32f7_i2c_compute_timing._entry.86, ptr @stm32f7_i2c_compute_timing._entry_ptr, ptr @stm32f7_i2c_compute_timing._entry_ptr.78, ptr @stm32f7_i2c_compute_timing._entry_ptr.81, ptr @stm32f7_i2c_compute_timing._entry_ptr.85, ptr @stm32f7_i2c_compute_timing._entry_ptr.88, ptr @stm32f7_i2c_driver_exit, ptr @stm32f7_i2c_get_free_slave_id._entry, ptr @stm32f7_i2c_get_free_slave_id._entry_ptr, ptr @stm32f7_i2c_get_slave_id._entry, ptr @stm32f7_i2c_get_slave_id._entry_ptr, ptr @stm32f7_i2c_isr_error._entry, ptr @stm32f7_i2c_isr_error._entry.49, ptr @stm32f7_i2c_isr_error._entry_ptr, ptr @stm32f7_i2c_isr_error._entry_ptr.51, ptr @stm32f7_i2c_probe._entry, ptr @stm32f7_i2c_probe._entry.12, ptr @stm32f7_i2c_probe._entry.15, ptr @stm32f7_i2c_probe._entry.21, ptr @stm32f7_i2c_probe._entry.25, ptr @stm32f7_i2c_probe._entry.29, ptr @stm32f7_i2c_probe._entry.32, ptr @stm32f7_i2c_probe._entry.9, ptr @stm32f7_i2c_probe._entry_ptr, ptr @stm32f7_i2c_probe._entry_ptr.11, ptr @stm32f7_i2c_probe._entry_ptr.14, ptr @stm32f7_i2c_probe._entry_ptr.17, ptr @stm32f7_i2c_probe._entry_ptr.23, ptr @stm32f7_i2c_probe._entry_ptr.27, ptr @stm32f7_i2c_probe._entry_ptr.31, ptr @stm32f7_i2c_probe._entry_ptr.35, ptr @stm32f7_i2c_reg_slave._entry, ptr @stm32f7_i2c_reg_slave._entry.112, ptr @stm32f7_i2c_reg_slave._entry.115, ptr @stm32f7_i2c_reg_slave._entry_ptr, ptr @stm32f7_i2c_reg_slave._entry_ptr.114, ptr @stm32f7_i2c_reg_slave._entry_ptr.117, ptr @stm32f7_i2c_runtime_resume._entry, ptr @stm32f7_i2c_runtime_resume._entry_ptr, ptr @stm32f7_i2c_setup_timing._entry, ptr @stm32f7_i2c_setup_timing._entry.55, ptr @stm32f7_i2c_setup_timing._entry.59, ptr @stm32f7_i2c_setup_timing._entry.62, ptr @stm32f7_i2c_setup_timing._entry.65, ptr @stm32f7_i2c_setup_timing._entry_ptr, ptr @stm32f7_i2c_setup_timing._entry_ptr.57, ptr @stm32f7_i2c_setup_timing._entry_ptr.61, ptr @stm32f7_i2c_setup_timing._entry_ptr.64, ptr @stm32f7_i2c_setup_timing._entry_ptr.67, ptr @stm32f7_i2c_smbus_check_pec._entry, ptr @stm32f7_i2c_smbus_check_pec._entry.107, ptr @stm32f7_i2c_smbus_check_pec._entry_ptr, ptr @stm32f7_i2c_smbus_check_pec._entry_ptr.109, ptr @stm32f7_i2c_smbus_rep_start._entry, ptr @stm32f7_i2c_smbus_rep_start._entry_ptr, ptr @stm32f7_i2c_smbus_xfer._entry, ptr @stm32f7_i2c_smbus_xfer._entry_ptr, ptr @stm32f7_i2c_smbus_xfer_msg._entry, ptr @stm32f7_i2c_smbus_xfer_msg._entry.100, ptr @stm32f7_i2c_smbus_xfer_msg._entry.103, ptr @stm32f7_i2c_smbus_xfer_msg._entry.98, ptr @stm32f7_i2c_smbus_xfer_msg._entry_ptr, ptr @stm32f7_i2c_smbus_xfer_msg._entry_ptr.102, ptr @stm32f7_i2c_smbus_xfer_msg._entry_ptr.104, ptr @stm32f7_i2c_smbus_xfer_msg._entry_ptr.99, ptr @stm32f7_i2c_xfer_msg._entry, ptr @stm32f7_i2c_xfer_msg._entry_ptr, ptr @stm32f7_i2c_driver, ptr @.str, ptr @stm32f7_i2c_match, ptr @stm32f7_i2c_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.18, ptr @stm32f7_i2c_algo, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @.str.26, ptr @.str.28, ptr @.str.30, ptr @.str.33, ptr @.str.34, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.50, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.56, ptr @.str.58, ptr @.str.60, ptr @.str.63, ptr @.str.66, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.77, ptr @.str.80, ptr @.str.82, ptr @.str.84, ptr @.str.87, ptr @.str.89, ptr @stm32f7_i2c_specs, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.101, ptr @.str.105, ptr @.str.106, ptr @.str.108, ptr @.str.110, ptr @.str.111, ptr @.str.113, ptr @.str.116, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @init_completion.__key, ptr @.str.122, ptr @stm32f7_setup, ptr @stm32mp15_setup, ptr @.str.123, ptr @.str.124], section "llvm.metadata"
@0 = internal global [124 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32f7_i2c_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32f7_i2c_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32f7_i2c_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32f7_i2c_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32f7_i2c_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32f7_i2c_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32f7_i2c_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32f7_i2c_algo to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32f7_i2c_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32f7_i2c_probe._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32f7_i2c_probe._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32f7_i2c_probe._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32f7_i2c_smbus_rep_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32f7_i2c_xfer_msg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32f7_i2c_isr_error._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32f7_i2c_isr_error._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32f7_i2c_setup_timing._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32f7_i2c_setup_timing._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32f7_i2c_setup_timing._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32f7_i2c_setup_timing._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32f7_i2c_setup_timing._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32f7_i2c_compute_timing._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32f7_i2c_compute_timing._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32f7_i2c_compute_timing._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32f7_i2c_compute_timing._entry.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32f7_i2c_compute_timing._entry.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32f7_i2c_specs to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32f7_i2c_smbus_xfer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32f7_i2c_smbus_xfer_msg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32f7_i2c_smbus_xfer_msg._entry.98 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32f7_i2c_smbus_xfer_msg._entry.100 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32f7_i2c_smbus_xfer_msg._entry.103 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32f7_i2c_smbus_check_pec._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32f7_i2c_smbus_check_pec._entry.107 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32f7_i2c_reg_slave._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32f7_i2c_reg_slave._entry.112 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32f7_i2c_reg_slave._entry.115 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32f7_i2c_get_free_slave_id._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32f7_i2c_get_slave_id._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32f7_setup to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32mp15_setup to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32f7_i2c_runtime_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32f7_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @stm32f7_i2c_driver, ptr noundef null) #11
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @stm32f7_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @platform_driver_unregister(ptr noundef nonnull @stm32f7_i2c_driver) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32f7_i2c_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %res = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %res) #11
  %0 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %res, align 4, !annotation !258
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 1640, i32 noundef 3520) #11
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call ptr @devm_platform_get_and_ioremap_resource(ptr noundef %pdev, i32 noundef 0, ptr noundef nonnull %res) #11
  %base = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %call.i, i32 0, i32 2
  %1 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call1, ptr %base, align 4
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then4, label %if.end7

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %2 = ptrtoint ptr %call1 to i32
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %3 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %res, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 4
  %call8 = call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call8)
  %cmp = icmp slt i32 %call8, 1
  br i1 %cmp, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool10.not = icmp eq i32 %call8, 0
  %. = select i1 %tobool10.not, i32 -2, i32 %call8
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  %call12 = call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call12)
  %cmp13 = icmp slt i32 %call12, 1
  br i1 %cmp13, label %if.then14, label %if.end20

if.then14:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool15.not = icmp eq i32 %call12, 0
  %.221 = select i1 %tobool15.not, i32 -2, i32 %call12
  br label %cleanup

if.end20:                                         ; preds = %if.end11
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %7 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %of_node, align 8
  %call.i341 = call ptr @of_find_property(ptr noundef %8, ptr noundef nonnull @.str.1, ptr noundef null) #11
  %tobool.i = icmp ne ptr %call.i341, null
  %wakeup_src = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %call.i, i32 0, i32 23
  %frombool = zext i1 %tobool.i to i8
  %9 = ptrtoint ptr %wakeup_src to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %frombool, ptr %wakeup_src, align 4
  %call24 = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef null) #11
  %clk = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %call.i, i32 0, i32 4
  %10 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call24, ptr %clk, align 8
  %cmp.i342 = icmp ugt ptr %call24, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i342, label %if.then27, label %if.end32

if.then27:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  %11 = ptrtoint ptr %call24 to i32
  %call31 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %11, ptr noundef nonnull @.str.2) #11
  br label %cleanup

if.end32:                                         ; preds = %if.end20
  %call.i343 = call i32 @clk_prepare(ptr noundef %call24) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i343)
  %tobool.not.i = icmp eq i32 %call.i343, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end32.do.end_crit_edge

if.end32.do.end_crit_edge:                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.end.i:                                         ; preds = %if.end32
  %call1.i = call i32 @clk_enable(ptr noundef %call24) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end38, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @clk_unprepare(ptr noundef %call24) #11
  br label %do.end

do.end:                                           ; preds = %if.then3.i, %if.end32.do.end_crit_edge
  %retval.0.i344.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i343, %if.end32.do.end_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.3) #14
  br label %cleanup

if.end38:                                         ; preds = %if.end.i
  %call.i.i = call ptr @__devm_reset_control_get(ptr noundef %dev, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #11
  %cmp.i345 = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i345, label %if.then42, label %if.end46

if.then42:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #13
  %12 = ptrtoint ptr %call.i.i to i32
  %call45 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %12, ptr noundef nonnull @.str.8) #11
  br label %clk_free

if.end46:                                         ; preds = %if.end38
  %call47 = call i32 @reset_control_assert(ptr noundef %call.i.i) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %13(i32 noundef 429496) #11
  %call48 = call i32 @reset_control_deassert(ptr noundef %call.i.i) #11
  %dev50 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %call.i, i32 0, i32 1
  %14 = ptrtoint ptr %dev50 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %dev, ptr %dev50, align 8
  %15 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pdev, align 8
  %call52 = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call8, ptr noundef nonnull @stm32f7_i2c_isr_event, ptr noundef nonnull @stm32f7_i2c_isr_event_thread, i32 noundef 8192, ptr noundef %16, ptr noundef nonnull %call.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %if.end59, label %do.end57

do.end57:                                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10, i32 noundef %call8) #14
  br label %clk_free

if.end59:                                         ; preds = %if.end46
  %17 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pdev, align 8
  %call.i346 = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call12, ptr noundef nonnull @stm32f7_i2c_isr_error, ptr noundef null, i32 noundef 0, ptr noundef %18, ptr noundef nonnull %call.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i346)
  %tobool63.not = icmp eq i32 %call.i346, 0
  br i1 %tobool63.not, label %if.end69, label %do.end67

do.end67:                                         ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13, i32 noundef %call12) #14
  br label %clk_free

if.end69:                                         ; preds = %if.end59
  %call71 = call ptr @of_device_get_match_data(ptr noundef %dev) #11
  %tobool72.not = icmp eq ptr %call71, null
  br i1 %tobool72.not, label %do.end76, label %if.end78

do.end76:                                         ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.16) #14
  br label %clk_free

if.end78:                                         ; preds = %if.end69
  %setup79 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %call.i, i32 0, i32 10
  %19 = call ptr @memcpy(ptr %setup79, ptr %call71, i32 20)
  %call81 = call fastcc i32 @stm32f7_i2c_setup_timing(ptr noundef nonnull %call.i, ptr noundef %setup79)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81)
  %tobool82.not = icmp eq i32 %call81, 0
  br i1 %tobool82.not, label %if.end84, label %if.end78.clk_free_crit_edge

if.end78.clk_free_crit_edge:                      ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #13
  br label %clk_free

if.end84:                                         ; preds = %if.end78
  %bus_rate = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %call.i, i32 0, i32 5
  %20 = ptrtoint ptr %bus_rate to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %bus_rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 400000, i32 %21)
  %cmp85 = icmp ugt i32 %21, 400000
  br i1 %cmp85, label %if.then86, label %if.end84.if.end95_crit_edge

if.end84.if.end95_crit_edge:                      ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end95

if.then86:                                        ; preds = %if.end84
  %call87 = call fastcc i32 @stm32f7_i2c_setup_fm_plus_bits(ptr noundef %pdev, ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87)
  %tobool88.not = icmp eq i32 %call87, 0
  br i1 %tobool88.not, label %if.end90, label %if.then86.clk_free_crit_edge

if.then86.clk_free_crit_edge:                     ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #13
  br label %clk_free

if.end90:                                         ; preds = %if.then86
  %call91 = call fastcc i32 @stm32f7_i2c_write_fm_plus_bits(ptr noundef nonnull %call.i, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91)
  %tobool92.not = icmp eq i32 %call91, 0
  br i1 %tobool92.not, label %if.end90.if.end95_crit_edge, label %if.end90.clk_free_crit_edge

if.end90.clk_free_crit_edge:                      ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #13
  br label %clk_free

if.end90.if.end95_crit_edge:                      ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end95

if.end95:                                         ; preds = %if.end90.if.end95_crit_edge, %if.end84.if.end95_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %call.i, i32 0, i32 9, i32 8
  %22 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %name97 = getelementptr inbounds %struct.i2c_adapter, ptr %call.i, i32 0, i32 12
  %23 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %res, align 4
  %call99 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name97, i32 noundef 48, ptr noundef nonnull @.str.18, ptr noundef %24)
  %25 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %call.i, align 8
  %timeout = getelementptr inbounds %struct.i2c_adapter, ptr %call.i, i32 0, i32 7
  %26 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 200, ptr %timeout, align 4
  %retries = getelementptr inbounds %struct.i2c_adapter, ptr %call.i, i32 0, i32 8
  %27 = ptrtoint ptr %retries to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 3, ptr %retries, align 8
  %algo = getelementptr inbounds %struct.i2c_adapter, ptr %call.i, i32 0, i32 2
  %28 = ptrtoint ptr %algo to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @stm32f7_i2c_algo, ptr %algo, align 8
  %parent = getelementptr inbounds %struct.i2c_adapter, ptr %call.i, i32 0, i32 9, i32 1
  %29 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %dev, ptr %parent, align 8
  %30 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %of_node, align 8
  %of_node105 = getelementptr inbounds %struct.i2c_adapter, ptr %call.i, i32 0, i32 9, i32 27
  %32 = ptrtoint ptr %of_node105 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %31, ptr %of_node105, align 8
  %complete = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %call.i, i32 0, i32 3
  %33 = ptrtoint ptr %complete to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %complete, align 4
  %wait.i = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %call.i, i32 0, i32 3, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.122, ptr noundef nonnull @init_completion.__key) #11
  %34 = ptrtoint ptr %dev50 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev50, align 8
  %call107 = call ptr @stm32_i2c_dma_request(ptr noundef %35, i32 noundef %6, i32 noundef 40, i32 noundef 36) #11
  %dma = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %call.i, i32 0, i32 17
  %36 = ptrtoint ptr %dma to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call107, ptr %dma, align 4
  %cmp.i347 = icmp ugt ptr %call107, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i347, label %if.then110, label %if.end95.if.end129_crit_edge

if.end95.if.end129_crit_edge:                     ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end129

if.then110:                                       ; preds = %if.end95
  %37 = ptrtoint ptr %call107 to i32
  %cmp113.not = icmp eq ptr %call107, inttoptr (i32 -19 to ptr)
  br i1 %cmp113.not, label %do.body116, label %if.then110.fmp_clear_crit_edge

if.then110.fmp_clear_crit_edge:                   ; preds = %if.then110
  call void @__sanitizer_cov_trace_pc() #13
  br label %fmp_clear

do.body116:                                       ; preds = %if.then110
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm32f7_i2c_probe.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@stm32f7_i2c_probe, %do.end127)) #11
          to label %if.then123 [label %do.end127], !srcloc !259

if.then123:                                       ; preds = %do.body116
  call void @__sanitizer_cov_trace_pc() #13
  %38 = ptrtoint ptr %dev50 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev50, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stm32f7_i2c_probe.__UNIQUE_ID_ddebug303, ptr noundef %39, ptr noundef nonnull @.str.20) #11
  br label %do.end127

do.end127:                                        ; preds = %if.then123, %do.body116
  %40 = ptrtoint ptr %dma to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr null, ptr %dma, align 4
  br label %if.end129

if.end129:                                        ; preds = %do.end127, %if.end95.if.end129_crit_edge
  %41 = ptrtoint ptr %wakeup_src to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %wakeup_src, align 4, !range !260
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool131.not = icmp eq i8 %42, 0
  br i1 %tobool131.not, label %if.end129.if.end143_crit_edge, label %if.then132

if.end129.if.end143_crit_edge:                    ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end143

if.then132:                                       ; preds = %if.end129
  %43 = ptrtoint ptr %dev50 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev50, align 8
  call void @device_set_wakeup_capable(ptr noundef %44, i1 noundef zeroext true) #11
  %45 = ptrtoint ptr %dev50 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev50, align 8
  %call135 = call i32 @dev_pm_set_wake_irq(ptr noundef %46, i32 noundef %call8) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call135)
  %tobool136.not = icmp eq i32 %call135, 0
  br i1 %tobool136.not, label %if.then132.if.end143_crit_edge, label %do.end140

if.then132.if.end143_crit_edge:                   ; preds = %if.then132
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end143

do.end140:                                        ; preds = %if.then132
  call void @__sanitizer_cov_trace_pc() #13
  %47 = ptrtoint ptr %dev50 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev50, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %48, ptr noundef nonnull @.str.22) #14
  br label %clr_wakeup_capable

if.end143:                                        ; preds = %if.then132.if.end143_crit_edge, %if.end129.if.end143_crit_edge
  %driver_data.i.i348 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %49 = ptrtoint ptr %driver_data.i.i348 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call.i, ptr %driver_data.i.i348, align 4
  %50 = ptrtoint ptr %dev50 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev50, align 8
  call void @pm_runtime_set_autosuspend_delay(ptr noundef %51, i32 noundef 1) #11
  %52 = ptrtoint ptr %dev50 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev50, align 8
  call void @__pm_runtime_use_autosuspend(ptr noundef %53, i1 noundef zeroext true) #11
  %54 = ptrtoint ptr %dev50 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev50, align 8
  %call.i349 = call i32 @__pm_runtime_set_status(ptr noundef %55, i32 noundef 0) #11
  %56 = ptrtoint ptr %dev50 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev50, align 8
  call void @pm_runtime_enable(ptr noundef %57) #11
  %usage_count.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 13
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #11
  call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #11
  %58 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 1, ptr elementtype(i32) %usage_count.i) #11, !srcloc !261
  call fastcc void @stm32f7_i2c_hw_config(ptr noundef nonnull %call.i)
  %59 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %of_node, align 8
  %call.i350 = call ptr @of_find_property(ptr noundef %60, ptr noundef nonnull @.str.24, ptr noundef null) #11
  %tobool.i351 = icmp ne ptr %call.i350, null
  %smbus_mode = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %call.i, i32 0, i32 24
  %frombool153 = zext i1 %tobool.i351 to i8
  %61 = ptrtoint ptr %smbus_mode to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %frombool153, ptr %smbus_mode, align 1
  %call154 = call i32 @i2c_add_adapter(ptr noundef nonnull %call.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call154)
  %tobool155.not = icmp eq i32 %call154, 0
  br i1 %tobool155.not, label %if.end157, label %if.end143.pm_disable_crit_edge

if.end143.pm_disable_crit_edge:                   ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #13
  br label %pm_disable

if.end157:                                        ; preds = %if.end143
  %62 = ptrtoint ptr %smbus_mode to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %smbus_mode, align 1, !range !260
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool159.not = icmp eq i8 %63, 0
  br i1 %tobool159.not, label %if.end157.if.end169_crit_edge, label %if.then160

if.end157.if.end169_crit_edge:                    ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end169

if.then160:                                       ; preds = %if.end157
  %call161 = call fastcc i32 @stm32f7_i2c_enable_smbus_host(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call161)
  %tobool162.not = icmp eq i32 %call161, 0
  br i1 %tobool162.not, label %if.then160.if.end169_crit_edge, label %do.end166

if.then160.if.end169_crit_edge:                   ; preds = %if.then160
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end169

do.end166:                                        ; preds = %if.then160
  call void @__sanitizer_cov_trace_pc() #13
  %64 = ptrtoint ptr %dev50 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %dev50, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %65, ptr noundef nonnull @.str.26, i32 noundef %call161) #14
  br label %i2c_adapter_remove

if.end169:                                        ; preds = %if.then160.if.end169_crit_edge, %if.end157.if.end169_crit_edge
  %66 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %of_node, align 8
  %call.i352 = call ptr @of_find_property(ptr noundef %67, ptr noundef nonnull @.str.28, ptr noundef null) #11
  %tobool.i353.not = icmp eq ptr %call.i352, null
  br i1 %tobool.i353.not, label %if.end169.do.end185_crit_edge, label %if.then173

if.end169.do.end185_crit_edge:                    ; preds = %if.end169
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end185

if.then173:                                       ; preds = %if.end169
  %call174 = call fastcc i32 @stm32f7_i2c_enable_smbus_alert(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call174)
  %tobool175.not = icmp eq i32 %call174, 0
  br i1 %tobool175.not, label %if.then173.do.end185_crit_edge, label %do.end179

if.then173.do.end185_crit_edge:                   ; preds = %if.then173
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end185

do.end179:                                        ; preds = %if.then173
  call void @__sanitizer_cov_trace_pc() #13
  %68 = ptrtoint ptr %dev50 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dev50, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %69, ptr noundef nonnull @.str.30, i32 noundef %call174) #14
  call fastcc void @stm32f7_i2c_disable_smbus_host(ptr noundef nonnull %call.i)
  br label %i2c_adapter_remove

do.end185:                                        ; preds = %if.then173.do.end185_crit_edge, %if.end169.do.end185_crit_edge
  %70 = ptrtoint ptr %dev50 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dev50, align 8
  %nr = getelementptr inbounds %struct.i2c_adapter, ptr %call.i, i32 0, i32 11
  %72 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %nr, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %71, ptr noundef nonnull @.str.33, i32 noundef %73) #14
  %74 = ptrtoint ptr %dev50 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dev50, align 8
  %call.i354 = call i64 @ktime_get_mono_fast_ns() #11
  %last_busy.i = getelementptr inbounds %struct.device, ptr %75, i32 0, i32 12, i32 22
  %76 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %76)
  store volatile i64 %call.i354, ptr %last_busy.i, align 8
  %77 = ptrtoint ptr %dev50 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %dev50, align 8
  %call.i355 = call i32 @__pm_runtime_suspend(ptr noundef %78, i32 noundef 13) #11
  br label %cleanup

i2c_adapter_remove:                               ; preds = %do.end179, %do.end166
  %ret.0 = phi i32 [ %call161, %do.end166 ], [ %call174, %do.end179 ]
  call void @i2c_del_adapter(ptr noundef nonnull %call.i) #11
  br label %pm_disable

pm_disable:                                       ; preds = %i2c_adapter_remove, %if.end143.pm_disable_crit_edge
  %ret.1 = phi i32 [ %call154, %if.end143.pm_disable_crit_edge ], [ %ret.0, %i2c_adapter_remove ]
  %79 = ptrtoint ptr %dev50 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %dev50, align 8
  call fastcc void @pm_runtime_put_noidle(ptr noundef %80)
  %81 = ptrtoint ptr %dev50 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %dev50, align 8
  call void @__pm_runtime_disable(ptr noundef %82, i1 noundef zeroext true) #11
  %83 = ptrtoint ptr %dev50 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %dev50, align 8
  %call.i356 = call i32 @__pm_runtime_set_status(ptr noundef %84, i32 noundef 2) #11
  %85 = ptrtoint ptr %dev50 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %dev50, align 8
  call void @__pm_runtime_use_autosuspend(ptr noundef %86, i1 noundef zeroext false) #11
  %87 = ptrtoint ptr %wakeup_src to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %wakeup_src, align 4, !range !260
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %88)
  %tobool196.not = icmp eq i8 %88, 0
  br i1 %tobool196.not, label %pm_disable.if.end204_crit_edge, label %if.then197

pm_disable.if.end204_crit_edge:                   ; preds = %pm_disable
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end204

if.then197:                                       ; preds = %pm_disable
  call void @__sanitizer_cov_trace_pc() #13
  %89 = ptrtoint ptr %dev50 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %dev50, align 8
  call void @dev_pm_clear_wake_irq(ptr noundef %90) #11
  br label %clr_wakeup_capable

clr_wakeup_capable:                               ; preds = %if.then197, %do.end140
  %ret.2.ph = phi i32 [ %ret.1, %if.then197 ], [ %call135, %do.end140 ]
  %91 = ptrtoint ptr %wakeup_src to i32
  call void @__asan_load1_noabort(i32 %91)
  %.pr = load i8, ptr %wakeup_src, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %tobool201.not = icmp eq i8 %.pr, 0
  br i1 %tobool201.not, label %clr_wakeup_capable.if.end204_crit_edge, label %if.then202

clr_wakeup_capable.if.end204_crit_edge:           ; preds = %clr_wakeup_capable
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end204

if.then202:                                       ; preds = %clr_wakeup_capable
  call void @__sanitizer_cov_trace_pc() #13
  %92 = ptrtoint ptr %dev50 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %dev50, align 8
  call void @device_set_wakeup_capable(ptr noundef %93, i1 noundef zeroext false) #11
  br label %if.end204

if.end204:                                        ; preds = %if.then202, %clr_wakeup_capable.if.end204_crit_edge, %pm_disable.if.end204_crit_edge
  %ret.2363 = phi i32 [ %ret.2.ph, %if.then202 ], [ %ret.2.ph, %clr_wakeup_capable.if.end204_crit_edge ], [ %ret.1, %pm_disable.if.end204_crit_edge ]
  %94 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %dma, align 4
  %tobool206.not = icmp eq ptr %95, null
  br i1 %tobool206.not, label %if.end204.fmp_clear_crit_edge, label %if.then207

if.end204.fmp_clear_crit_edge:                    ; preds = %if.end204
  call void @__sanitizer_cov_trace_pc() #13
  br label %fmp_clear

if.then207:                                       ; preds = %if.end204
  call void @__sanitizer_cov_trace_pc() #13
  call void @stm32_i2c_dma_free(ptr noundef nonnull %95) #11
  %96 = ptrtoint ptr %dma to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr null, ptr %dma, align 4
  br label %fmp_clear

fmp_clear:                                        ; preds = %if.then207, %if.end204.fmp_clear_crit_edge, %if.then110.fmp_clear_crit_edge
  %ret.3 = phi i32 [ %37, %if.then110.fmp_clear_crit_edge ], [ %ret.2363, %if.then207 ], [ %ret.2363, %if.end204.fmp_clear_crit_edge ]
  %call211 = call fastcc i32 @stm32f7_i2c_write_fm_plus_bits(ptr noundef nonnull %call.i, i1 noundef zeroext false)
  br label %clk_free

clk_free:                                         ; preds = %fmp_clear, %if.end90.clk_free_crit_edge, %if.then86.clk_free_crit_edge, %if.end78.clk_free_crit_edge, %do.end76, %do.end67, %do.end57, %if.then42
  %ret.4 = phi i32 [ %call45, %if.then42 ], [ %call52, %do.end57 ], [ %call.i346, %do.end67 ], [ %call81, %if.end78.clk_free_crit_edge ], [ %call87, %if.then86.clk_free_crit_edge ], [ %call91, %if.end90.clk_free_crit_edge ], [ %ret.3, %fmp_clear ], [ -19, %do.end76 ]
  %97 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %clk, align 8
  call void @clk_disable(ptr noundef %98) #11
  call void @clk_unprepare(ptr noundef %98) #11
  br label %cleanup

cleanup:                                          ; preds = %clk_free, %do.end185, %do.end, %if.then27, %if.then14, %if.then9, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %2, %if.then4 ], [ %., %if.then9 ], [ %.221, %if.then14 ], [ %call31, %if.then27 ], [ %retval.0.i344.ph, %do.end ], [ %ret.4, %clk_free ], [ 0, %do.end185 ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %res) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32f7_i2c_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %alert1.i = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %1, i32 0, i32 29
  %2 = ptrtoint ptr %alert1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %alert1.i, align 8
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.stm32f7_i2c_disable_smbus_alert.exit_crit_edge, label %if.then.i

entry.stm32f7_i2c_disable_smbus_alert.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %stm32f7_i2c_disable_smbus_alert.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %base2.i = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %base2.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base2.i, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #11, !srcloc !262
  %7 = and i32 %6, -16385
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %7) #11, !srcloc !263
  %ara.i = getelementptr inbounds %struct.stm32f7_i2c_alert, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %ara.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ara.i, align 4
  tail call void @i2c_unregister_device(ptr noundef %9) #11
  br label %stm32f7_i2c_disable_smbus_alert.exit

stm32f7_i2c_disable_smbus_alert.exit:             ; preds = %if.then.i, %entry.stm32f7_i2c_disable_smbus_alert.exit_crit_edge
  %host_notify_client.i = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %1, i32 0, i32 25
  %10 = ptrtoint ptr %host_notify_client.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %host_notify_client.i, align 8
  %tobool.not.i31 = icmp eq ptr %11, null
  br i1 %tobool.not.i31, label %stm32f7_i2c_disable_smbus_alert.exit.stm32f7_i2c_disable_smbus_host.exit_crit_edge, label %if.then.i32

stm32f7_i2c_disable_smbus_alert.exit.stm32f7_i2c_disable_smbus_host.exit_crit_edge: ; preds = %stm32f7_i2c_disable_smbus_alert.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %stm32f7_i2c_disable_smbus_host.exit

if.then.i32:                                      ; preds = %stm32f7_i2c_disable_smbus_alert.exit
  call void @__sanitizer_cov_trace_pc() #13
  %base1.i = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %base1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base1.i, align 4
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #11, !srcloc !262
  %15 = and i32 %14, -4097
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %15) #11, !srcloc !263
  %16 = ptrtoint ptr %host_notify_client.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %host_notify_client.i, align 8
  tail call void @i2c_free_slave_host_notify_device(ptr noundef %17) #11
  br label %stm32f7_i2c_disable_smbus_host.exit

stm32f7_i2c_disable_smbus_host.exit:              ; preds = %if.then.i32, %stm32f7_i2c_disable_smbus_alert.exit.stm32f7_i2c_disable_smbus_host.exit_crit_edge
  tail call void @i2c_del_adapter(ptr noundef %1) #11
  %dev = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %1, i32 0, i32 1
  %18 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev, align 8
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %19, i32 noundef 4) #11
  %wakeup_src = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %1, i32 0, i32 23
  %20 = ptrtoint ptr %wakeup_src to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %wakeup_src, align 4, !range !260
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool.not = icmp eq i8 %21, 0
  br i1 %tobool.not, label %stm32f7_i2c_disable_smbus_host.exit.if.end_crit_edge, label %if.then

stm32f7_i2c_disable_smbus_host.exit.if.end_crit_edge: ; preds = %stm32f7_i2c_disable_smbus_host.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %stm32f7_i2c_disable_smbus_host.exit
  call void @__sanitizer_cov_trace_pc() #13
  %22 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev, align 8
  tail call void @dev_pm_clear_wake_irq(ptr noundef %23) #11
  %24 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev, align 8
  %call4 = tail call i32 @device_init_wakeup(ptr noundef %25, i1 noundef zeroext false) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %stm32f7_i2c_disable_smbus_host.exit.if.end_crit_edge
  %26 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev, align 8
  %usage_count.i = getelementptr inbounds %struct.device, ptr %27, i32 0, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !264
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #11
  %28 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #11, !srcloc !265
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %28, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %if.end.pm_runtime_put_noidle.exit_crit_edge, label %do.end11.i.i.i.i

if.end.pm_runtime_put_noidle.exit_crit_edge:      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %pm_runtime_put_noidle.exit

do.end11.i.i.i.i:                                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !266
  br label %pm_runtime_put_noidle.exit

pm_runtime_put_noidle.exit:                       ; preds = %do.end11.i.i.i.i, %if.end.pm_runtime_put_noidle.exit_crit_edge
  %29 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev, align 8
  tail call void @__pm_runtime_disable(ptr noundef %30, i1 noundef zeroext true) #11
  %31 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev, align 8
  %call.i33 = tail call i32 @__pm_runtime_set_status(ptr noundef %32, i32 noundef 2) #11
  %33 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev, align 8
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %34, i1 noundef zeroext false) #11
  %dma = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %1, i32 0, i32 17
  %35 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dma, align 4
  %tobool10.not = icmp eq ptr %36, null
  br i1 %tobool10.not, label %pm_runtime_put_noidle.exit.if.end14_crit_edge, label %if.then11

pm_runtime_put_noidle.exit.if.end14_crit_edge:    ; preds = %pm_runtime_put_noidle.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14

if.then11:                                        ; preds = %pm_runtime_put_noidle.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @stm32_i2c_dma_free(ptr noundef nonnull %36) #11
  %37 = ptrtoint ptr %dma to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %dma, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %pm_runtime_put_noidle.exit.if.end14_crit_edge
  %bus_rate.i = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %1, i32 0, i32 5
  %38 = ptrtoint ptr %bus_rate.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %bus_rate.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 400001, i32 %39)
  %cmp.i = icmp ult i32 %39, 400001
  br i1 %cmp.i, label %if.end14.stm32f7_i2c_write_fm_plus_bits.exit_crit_edge, label %lor.lhs.false.i

if.end14.stm32f7_i2c_write_fm_plus_bits.exit_crit_edge: ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %stm32f7_i2c_write_fm_plus_bits.exit

lor.lhs.false.i:                                  ; preds = %if.end14
  %regmap.i = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %1, i32 0, i32 19
  %40 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regmap.i, align 4
  %tobool.not.i.i = icmp eq ptr %41, null
  %cmp.i.i = icmp ugt ptr %41, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = or i1 %tobool.not.i.i, %cmp.i.i
  br i1 %spec.select.i.i, label %lor.lhs.false.i.stm32f7_i2c_write_fm_plus_bits.exit_crit_edge, label %if.end.i

lor.lhs.false.i.stm32f7_i2c_write_fm_plus_bits.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %stm32f7_i2c_write_fm_plus_bits.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  %fmp_sreg.i = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %1, i32 0, i32 20
  %42 = ptrtoint ptr %fmp_sreg.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %fmp_sreg.i, align 8
  %fmp_creg.i = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %1, i32 0, i32 21
  %44 = ptrtoint ptr %fmp_creg.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %fmp_creg.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %45)
  %cmp1.i = icmp eq i32 %43, %45
  %fmp_mask.i = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %1, i32 0, i32 22
  %46 = ptrtoint ptr %fmp_mask.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %fmp_mask.i, align 8
  br i1 %cmp1.i, label %if.then2.i, label %if.else.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef nonnull %41, i32 noundef %43, i32 noundef %47, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  br label %stm32f7_i2c_write_fm_plus_bits.exit

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %call16.i = tail call i32 @regmap_write(ptr noundef nonnull %41, i32 noundef %45, i32 noundef %47) #11
  br label %stm32f7_i2c_write_fm_plus_bits.exit

stm32f7_i2c_write_fm_plus_bits.exit:              ; preds = %if.else.i, %if.then2.i, %lor.lhs.false.i.stm32f7_i2c_write_fm_plus_bits.exit_crit_edge, %if.end14.stm32f7_i2c_write_fm_plus_bits.exit_crit_edge
  %clk = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %1, i32 0, i32 4
  %48 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %clk, align 8
  tail call void @clk_disable(ptr noundef %49) #11
  tail call void @clk_unprepare(ptr noundef %49) #11
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_get_and_ioremap_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32f7_i2c_isr_event(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %f7_msg1 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %data, i32 0, i32 9
  %dma2 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %data, i32 0, i32 17
  %0 = ptrtoint ptr %dma2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dma2, align 4
  %base3 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %data, i32 0, i32 2
  %2 = ptrtoint ptr %base3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base3, align 4
  %master_mode = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %data, i32 0, i32 16
  %4 = ptrtoint ptr %master_mode to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %master_mode, align 8, !range !260
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @stm32f7_i2c_slave_isr_event(ptr noundef %data)
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %3, i32 24
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !262
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  %and = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %if.end.if.end8_crit_edge, label %if.then7

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

if.then7:                                         ; preds = %if.end
  %count.i = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %data, i32 0, i32 9, i32 1
  %8 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i, label %if.then7.if.end8_crit_edge, label %if.then.i

if.then7.if.end8_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

if.then.i:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #13
  %10 = ptrtoint ptr %base3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base3, align 4
  %buf.i = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %data, i32 0, i32 9, i32 2
  %12 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %buf.i, align 4
  %incdec.ptr.i = getelementptr i8, ptr %13, i32 1
  store ptr %incdec.ptr.i, ptr %buf.i, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %13, align 1
  %add.ptr.i = getelementptr i8, ptr %11, i32 40
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 %15) #11, !srcloc !267
  %16 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %count.i, align 4
  %dec.i = add i32 %17, -1
  store i32 %dec.i, ptr %count.i, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then.i, %if.then7.if.end8_crit_edge, %if.end.if.end8_crit_edge
  %and9 = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.end8.if.end12_crit_edge, label %if.then11

if.end8.if.end12_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12

if.then11:                                        ; preds = %if.end8
  %18 = ptrtoint ptr %base3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base3, align 4
  %count.i124 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %data, i32 0, i32 9, i32 1
  %20 = ptrtoint ptr %count.i124 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %count.i124, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.i125 = icmp eq i32 %21, 0
  %add.ptr5.i = getelementptr i8, ptr %19, i32 36
  %22 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr5.i) #11
  br i1 %tobool.not.i125, label %if.then11.if.end12_crit_edge, label %if.then.i129

if.then11.if.end12_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12

if.then.i129:                                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #13
  %buf.i126 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %data, i32 0, i32 9, i32 2
  %23 = ptrtoint ptr %buf.i126 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %buf.i126, align 4
  %incdec.ptr.i127 = getelementptr i8, ptr %24, i32 1
  store ptr %incdec.ptr.i127, ptr %buf.i126, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %22, ptr %24, align 1
  %26 = ptrtoint ptr %count.i124 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %count.i124, align 4
  %dec.i128 = add i32 %27, -1
  store i32 %dec.i128, ptr %count.i124, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then.i129, %if.then11.if.end12_crit_edge, %if.end8.if.end12_crit_edge
  %and13 = and i32 %7, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.end12.if.end29_crit_edge, label %do.body

if.end12.if.end29_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end29

do.body:                                          ; preds = %if.end12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm32f7_i2c_isr_event.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@stm32f7_i2c_isr_event, %do.end)) #11
          to label %if.then22 [label %do.end], !srcloc !259

if.then22:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %data, i32 0, i32 1
  %28 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev, align 8
  %30 = ptrtoint ptr %f7_msg1 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %f7_msg1, align 4
  %conv = zext i16 %31 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stm32f7_i2c_isr_event.__UNIQUE_ID_ddebug297, ptr noundef %29, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.36, i32 noundef %conv) #11
  br label %do.end

do.end:                                           ; preds = %if.then22, %do.body
  %add.ptr24 = getelementptr i8, ptr %3, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24, i32 268435456) #11, !srcloc !263
  %use_dma = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %data, i32 0, i32 18
  %32 = ptrtoint ptr %use_dma to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %use_dma, align 8, !range !260
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool25.not = icmp eq i8 %33, 0
  br i1 %tobool25.not, label %do.end.if.end28_crit_edge, label %if.then26

do.end.if.end28_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28

if.then26:                                        ; preds = %do.end
  %34 = ptrtoint ptr %base3 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %base3, align 4
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %35) #11, !srcloc !262
  %37 = and i32 %36, -12582913
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 %37) #11, !srcloc !263
  %chan_using = getelementptr inbounds %struct.stm32_i2c_dma, ptr %1, i32 0, i32 2
  %38 = ptrtoint ptr %chan_using to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %chan_using, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %39, align 4
  %device_terminate_all.i = getelementptr inbounds %struct.dma_device, ptr %41, i32 0, i32 47
  %42 = ptrtoint ptr %device_terminate_all.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %device_terminate_all.i, align 4
  %tobool.not.i130 = icmp eq ptr %43, null
  br i1 %tobool.not.i130, label %if.then26.if.end28_crit_edge, label %if.then.i131

if.then26.if.end28_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28

if.then.i131:                                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #13
  %call.i = tail call i32 %43(ptr noundef %39) #11
  br label %if.end28

if.end28:                                         ; preds = %if.then.i131, %if.then26.if.end28_crit_edge, %do.end.if.end28_crit_edge
  %result = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %data, i32 0, i32 9, i32 3
  %44 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 -6, ptr %result, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.end28, %if.end12.if.end29_crit_edge
  %and30 = and i32 %7, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  br i1 %tobool31.not, label %if.end29.if.end46_crit_edge, label %if.then32

if.end29.if.end46_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end46

if.then32:                                        ; preds = %if.end29
  %arrayidx.i = getelementptr %struct.stm32f7_i2c_dev, ptr %data, i32 0, i32 12, i32 0
  %45 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i133 = icmp eq ptr %46, null
  br i1 %tobool.not.i133, label %for.cond.i, label %if.then32.stm32f7_i2c_is_slave_registered.exit.thread_crit_edge

if.then32.stm32f7_i2c_is_slave_registered.exit.thread_crit_edge: ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #13
  br label %stm32f7_i2c_is_slave_registered.exit.thread

for.cond.i:                                       ; preds = %if.then32
  %arrayidx.1.i = getelementptr %struct.stm32f7_i2c_dev, ptr %data, i32 0, i32 12, i32 1
  %47 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx.1.i, align 4
  %tobool.not.1.i = icmp eq ptr %48, null
  br i1 %tobool.not.1.i, label %stm32f7_i2c_is_slave_registered.exit, label %for.cond.i.stm32f7_i2c_is_slave_registered.exit.thread_crit_edge

for.cond.i.stm32f7_i2c_is_slave_registered.exit.thread_crit_edge: ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %stm32f7_i2c_is_slave_registered.exit.thread

stm32f7_i2c_is_slave_registered.exit:             ; preds = %for.cond.i
  %arrayidx.2.i = getelementptr %struct.stm32f7_i2c_dev, ptr %data, i32 0, i32 12, i32 2
  %49 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx.2.i, align 4
  %tobool.not.2.i.not = icmp eq ptr %50, null
  br i1 %tobool.not.2.i.not, label %stm32f7_i2c_is_slave_registered.exit._crit_edge, label %stm32f7_i2c_is_slave_registered.exit.stm32f7_i2c_is_slave_registered.exit.thread_crit_edge

stm32f7_i2c_is_slave_registered.exit.stm32f7_i2c_is_slave_registered.exit.thread_crit_edge: ; preds = %stm32f7_i2c_is_slave_registered.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %stm32f7_i2c_is_slave_registered.exit.thread

stm32f7_i2c_is_slave_registered.exit._crit_edge:  ; preds = %stm32f7_i2c_is_slave_registered.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %51

stm32f7_i2c_is_slave_registered.exit.thread:      ; preds = %stm32f7_i2c_is_slave_registered.exit.stm32f7_i2c_is_slave_registered.exit.thread_crit_edge, %for.cond.i.stm32f7_i2c_is_slave_registered.exit.thread_crit_edge, %if.then32.stm32f7_i2c_is_slave_registered.exit.thread_crit_edge
  br label %51

51:                                               ; preds = %stm32f7_i2c_is_slave_registered.exit.thread, %stm32f7_i2c_is_slave_registered.exit._crit_edge
  %52 = phi i32 [ -119, %stm32f7_i2c_is_slave_registered.exit.thread ], [ -247, %stm32f7_i2c_is_slave_registered.exit._crit_edge ]
  %53 = ptrtoint ptr %base3 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %base3, align 4
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %54) #11, !srcloc !262
  %56 = tail call i32 @llvm.bswap.i32(i32 %55) #11
  %and.i.i = and i32 %56, %52
  %57 = tail call i32 @llvm.bswap.i32(i32 %and.i.i) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %54, i32 %57) #11, !srcloc !263
  %add.ptr36 = getelementptr i8, ptr %3, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr36, i32 536870912) #11, !srcloc !263
  %use_dma37 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %data, i32 0, i32 18
  %58 = ptrtoint ptr %use_dma37 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %use_dma37, align 8, !range !260
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool38.not = icmp eq i8 %59, 0
  br i1 %tobool38.not, label %.if.else43_crit_edge, label %land.lhs.true

.if.else43_crit_edge:                             ; preds = %51
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else43

land.lhs.true:                                    ; preds = %51
  %result40 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %data, i32 0, i32 9, i32 3
  %60 = ptrtoint ptr %result40 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %result40, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool41.not = icmp eq i32 %61, 0
  br i1 %tobool41.not, label %land.lhs.true.if.end46_crit_edge, label %land.lhs.true.if.else43_crit_edge

land.lhs.true.if.else43_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else43

land.lhs.true.if.end46_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end46

if.else43:                                        ; preds = %land.lhs.true.if.else43_crit_edge, %.if.else43_crit_edge
  %62 = ptrtoint ptr %master_mode to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 0, ptr %master_mode, align 8
  %complete = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %data, i32 0, i32 3
  tail call void @complete(ptr noundef %complete) #11
  br label %if.end46

if.end46:                                         ; preds = %if.else43, %land.lhs.true.if.end46_crit_edge, %if.end29.if.end46_crit_edge
  %ret.0 = phi i32 [ 1, %if.else43 ], [ 1, %if.end29.if.end46_crit_edge ], [ 2, %land.lhs.true.if.end46_crit_edge ]
  %and47 = and i32 %7, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47)
  %tobool48.not = icmp eq i32 %and47, 0
  br i1 %tobool48.not, label %if.end46.if.end69_crit_edge, label %if.then49

if.end46.if.end69_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then49:                                        ; preds = %if.end46
  %stop = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %data, i32 0, i32 9, i32 4
  %63 = ptrtoint ptr %stop to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %stop, align 4, !range !260
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %tobool50.not = icmp eq i8 %64, 0
  br i1 %tobool50.not, label %if.else53, label %if.then51

if.then51:                                        ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr52 = getelementptr i8, ptr %3, i32 4
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr52) #11, !srcloc !262
  %66 = or i32 %65, 4194304
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr52, i32 %66) #11, !srcloc !263
  br label %if.end69

if.else53:                                        ; preds = %if.then49
  %use_dma54 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %data, i32 0, i32 18
  %67 = ptrtoint ptr %use_dma54 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %use_dma54, align 8, !range !260
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %tobool55.not = icmp eq i8 %68, 0
  br i1 %tobool55.not, label %if.else53.if.else61_crit_edge, label %land.lhs.true57

if.else53.if.else61_crit_edge:                    ; preds = %if.else53
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else61

land.lhs.true57:                                  ; preds = %if.else53
  %result58 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %data, i32 0, i32 9, i32 3
  %69 = ptrtoint ptr %result58 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %result58, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool59.not = icmp eq i32 %70, 0
  br i1 %tobool59.not, label %land.lhs.true57.if.end69_crit_edge, label %land.lhs.true57.if.else61_crit_edge

land.lhs.true57.if.else61_crit_edge:              ; preds = %land.lhs.true57
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else61

land.lhs.true57.if.end69_crit_edge:               ; preds = %land.lhs.true57
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.else61:                                        ; preds = %land.lhs.true57.if.else61_crit_edge, %if.else53.if.else61_crit_edge
  %smbus = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %data, i32 0, i32 9, i32 5
  %71 = ptrtoint ptr %smbus to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %smbus, align 1, !range !260
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %72)
  %tobool62.not = icmp eq i8 %72, 0
  br i1 %tobool62.not, label %if.else64, label %if.then63

if.then63:                                        ; preds = %if.else61
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @stm32f7_i2c_smbus_rep_start(ptr noundef %data)
  br label %if.end69

if.else64:                                        ; preds = %if.else61
  call void @__sanitizer_cov_trace_pc() #13
  %msg_id = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %data, i32 0, i32 8
  %73 = ptrtoint ptr %msg_id to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %msg_id, align 8
  %inc = add i32 %74, 1
  store i32 %inc, ptr %msg_id, align 8
  %msg = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %data, i32 0, i32 6
  %75 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %msg, align 8
  %incdec.ptr = getelementptr %struct.i2c_msg, ptr %76, i32 1
  store ptr %incdec.ptr, ptr %msg, align 8
  tail call fastcc void @stm32f7_i2c_xfer_msg(ptr noundef %data, ptr noundef %incdec.ptr)
  br label %if.end69

if.end69:                                         ; preds = %if.else64, %if.then63, %land.lhs.true57.if.end69_crit_edge, %if.then51, %if.end46.if.end69_crit_edge
  %ret.1 = phi i32 [ %ret.0, %if.then51 ], [ %ret.0, %if.then63 ], [ %ret.0, %if.else64 ], [ %ret.0, %if.end46.if.end69_crit_edge ], [ 2, %land.lhs.true57.if.end69_crit_edge ]
  %and70 = and i32 %7, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70)
  %tobool71.not = icmp eq i32 %and70, 0
  br i1 %tobool71.not, label %if.end69.cleanup_crit_edge, label %if.then72

if.end69.cleanup_crit_edge:                       ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then72:                                        ; preds = %if.end69
  %smbus73 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %data, i32 0, i32 9, i32 5
  %77 = ptrtoint ptr %smbus73 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %smbus73, align 1, !range !260
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %78)
  %tobool74.not = icmp eq i8 %78, 0
  br i1 %tobool74.not, label %if.else76, label %if.then75

if.then75:                                        ; preds = %if.then72
  %79 = ptrtoint ptr %base3 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %base3, align 4
  %count.i.i = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %data, i32 0, i32 9, i32 1
  %81 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %tobool.not.i.i = icmp eq i32 %82, 0
  %add.ptr5.i.i = getelementptr i8, ptr %80, i32 36
  %83 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr5.i.i) #11
  br i1 %tobool.not.i.i, label %if.then75.stm32f7_i2c_smbus_reload.exit_crit_edge, label %if.then.i.i

if.then75.stm32f7_i2c_smbus_reload.exit_crit_edge: ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #13
  br label %stm32f7_i2c_smbus_reload.exit

if.then.i.i:                                      ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #13
  %buf.i.i = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %data, i32 0, i32 9, i32 2
  %84 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %buf.i.i, align 4
  %incdec.ptr.i.i = getelementptr i8, ptr %85, i32 1
  store ptr %incdec.ptr.i.i, ptr %buf.i.i, align 4
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %83, ptr %85, align 1
  %87 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %count.i.i, align 4
  %dec.i.i = add i32 %88, -1
  store i32 %dec.i.i, ptr %count.i.i, align 4
  br label %stm32f7_i2c_smbus_reload.exit

stm32f7_i2c_smbus_reload.exit:                    ; preds = %if.then.i.i, %if.then75.stm32f7_i2c_smbus_reload.exit_crit_edge
  %buf.i134 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %data, i32 0, i32 9, i32 2
  %89 = ptrtoint ptr %buf.i134 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %buf.i134, align 4
  %add.ptr.i135 = getelementptr i8, ptr %90, i32 -1
  %91 = ptrtoint ptr %add.ptr.i135 to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %add.ptr.i135, align 1
  %conv.i = zext i8 %92 to i32
  %93 = ptrtoint ptr %count.i.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %conv.i, ptr %count.i.i, align 4
  %94 = ptrtoint ptr %base3 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %base3, align 4
  %add.ptr2.i = getelementptr i8, ptr %95, i32 4
  %96 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #11, !srcloc !262
  %97 = and i32 %96, -65282
  %98 = tail call i32 @llvm.bswap.i32(i32 %97) #11
  %99 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %count.i.i, align 4
  %and4.i = shl i32 %100, 16
  %shl.i = and i32 %and4.i, 16711680
  %or.i136 = or i32 %shl.i, %98
  %101 = tail call i32 @llvm.bswap.i32(i32 %or.i136) #11
  %102 = ptrtoint ptr %base3 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %base3, align 4
  %add.ptr6.i = getelementptr i8, ptr %103, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i, i32 %101) #11, !srcloc !263
  br label %cleanup

if.else76:                                        ; preds = %if.then72
  %use_dma.i = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %data, i32 0, i32 18
  %104 = ptrtoint ptr %use_dma.i to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %use_dma.i, align 8, !range !260
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %105)
  %tobool.not.i137 = icmp eq i8 %105, 0
  br i1 %tobool.not.i137, label %if.else76.stm32f7_i2c_reload.exit_crit_edge, label %if.then.i139

if.else76.stm32f7_i2c_reload.exit_crit_edge:      ; preds = %if.else76
  call void @__sanitizer_cov_trace_pc() #13
  br label %stm32f7_i2c_reload.exit

if.then.i139:                                     ; preds = %if.else76
  call void @__sanitizer_cov_trace_pc() #13
  %count.i138 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %data, i32 0, i32 9, i32 1
  %106 = ptrtoint ptr %count.i138 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %count.i138, align 4
  %sub.i = add i32 %107, -255
  store i32 %sub.i, ptr %count.i138, align 4
  br label %stm32f7_i2c_reload.exit

stm32f7_i2c_reload.exit:                          ; preds = %if.then.i139, %if.else76.stm32f7_i2c_reload.exit_crit_edge
  %108 = ptrtoint ptr %base3 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %base3, align 4
  %add.ptr.i141 = getelementptr i8, ptr %109, i32 4
  %110 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i141) #11, !srcloc !262
  %111 = and i32 %110, -65281
  %112 = tail call i32 @llvm.bswap.i32(i32 %111) #11
  %count2.i = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %data, i32 0, i32 9, i32 1
  %113 = ptrtoint ptr %count2.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %count2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %114)
  %cmp.i = icmp ugt i32 %114, 255
  %or.i142 = or i32 %112, 16711680
  %and4.i143 = and i32 %112, -33488897
  %and6.i = shl i32 %114, 16
  %shl.i144 = and i32 %and6.i, 16711680
  %or7.i = or i32 %and4.i143, %shl.i144
  %cr2.0.i = select i1 %cmp.i, i32 %or.i142, i32 %or7.i
  %115 = tail call i32 @llvm.bswap.i32(i32 %cr2.0.i) #11
  %116 = ptrtoint ptr %base3 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %base3, align 4
  %add.ptr10.i = getelementptr i8, ptr %117, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i, i32 %115) #11, !srcloc !263
  br label %cleanup

cleanup:                                          ; preds = %stm32f7_i2c_reload.exit, %stm32f7_i2c_smbus_reload.exit, %if.end69.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 1, %if.then ], [ %ret.1, %stm32f7_i2c_smbus_reload.exit ], [ %ret.1, %stm32f7_i2c_reload.exit ], [ %ret.1, %if.end69.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32f7_i2c_isr_event_thread(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dma2 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %data, i32 0, i32 17
  %0 = ptrtoint ptr %dma2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dma2, align 4
  %dma_complete = getelementptr inbounds %struct.stm32_i2c_dma, ptr %1, i32 0, i32 7
  %call = tail call i32 @wait_for_completion_timeout(ptr noundef %dma_complete, i32 noundef 100) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.body, label %entry.if.end11_crit_edge

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm32f7_i2c_isr_event_thread.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@stm32f7_i2c_isr_event_thread, %do.end)) #11
          to label %if.then9 [label %do.end], !srcloc !259

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %data, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stm32f7_i2c_isr_event_thread.__UNIQUE_ID_ddebug298, ptr noundef %3, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.44) #11
  br label %do.end

do.end:                                           ; preds = %if.then9, %do.body
  %base1.i = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %data, i32 0, i32 2
  %4 = ptrtoint ptr %base1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base1.i, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #11, !srcloc !262
  %7 = and i32 %6, -12582913
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %7) #11, !srcloc !263
  %chan_using = getelementptr inbounds %struct.stm32_i2c_dma, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %chan_using to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %chan_using, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %device_terminate_all.i = getelementptr inbounds %struct.dma_device, ptr %11, i32 0, i32 47
  %12 = ptrtoint ptr %device_terminate_all.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %device_terminate_all.i, align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %do.end.dmaengine_terminate_async.exit_crit_edge, label %if.then.i

do.end.dmaengine_terminate_async.exit_crit_edge:  ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %dmaengine_terminate_async.exit

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %call.i = tail call i32 %13(ptr noundef %9) #11
  br label %dmaengine_terminate_async.exit

dmaengine_terminate_async.exit:                   ; preds = %if.then.i, %do.end.dmaengine_terminate_async.exit_crit_edge
  %result = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %data, i32 0, i32 9, i32 3
  %14 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -110, ptr %result, align 4
  br label %if.end11

if.end11:                                         ; preds = %dmaengine_terminate_async.exit, %entry.if.end11_crit_edge
  %base = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %data, i32 0, i32 2
  %15 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %16, i32 24
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !262
  %18 = and i32 %17, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool14.not = icmp eq i32 %18, 0
  br i1 %tobool14.not, label %if.else20, label %if.then15

if.then15:                                        ; preds = %if.end11
  %smbus = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %data, i32 0, i32 9, i32 5
  %19 = ptrtoint ptr %smbus to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %smbus, align 1, !range !260
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool16.not = icmp eq i8 %20, 0
  br i1 %tobool16.not, label %if.else, label %if.then17

if.then17:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @stm32f7_i2c_smbus_rep_start(ptr noundef %data)
  br label %if.end21

if.else:                                          ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #13
  %msg_id = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %data, i32 0, i32 8
  %21 = ptrtoint ptr %msg_id to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %msg_id, align 8
  %inc = add i32 %22, 1
  store i32 %inc, ptr %msg_id, align 8
  %msg = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %data, i32 0, i32 6
  %23 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %msg, align 8
  %incdec.ptr = getelementptr %struct.i2c_msg, ptr %24, i32 1
  store ptr %incdec.ptr, ptr %msg, align 8
  tail call fastcc void @stm32f7_i2c_xfer_msg(ptr noundef %data, ptr noundef %incdec.ptr)
  br label %if.end21

if.else20:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  %master_mode = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %data, i32 0, i32 16
  %25 = ptrtoint ptr %master_mode to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %master_mode, align 8
  %complete = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %data, i32 0, i32 3
  tail call void @complete(ptr noundef %complete) #11
  br label %if.end21

if.end21:                                         ; preds = %if.else20, %if.else, %if.then17
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32f7_i2c_isr_error(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %f7_msg1 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %data, i32 0, i32 9
  %base2 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %data, i32 0, i32 2
  %0 = ptrtoint ptr %base2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base2, align 4
  %dev3 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %data, i32 0, i32 1
  %2 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev3, align 8
  %dma4 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %data, i32 0, i32 17
  %4 = ptrtoint ptr %dma4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dma4, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 24
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !262
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  %and = and i32 %7, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %8 = ptrtoint ptr %f7_msg1 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %f7_msg1, align 4
  %conv = zext i16 %9 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.47, i32 noundef %conv) #14
  %add.ptr6 = getelementptr i8, ptr %1, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 65536) #11, !srcloc !263
  %driver_data.i.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %data, i32 0, i32 9, i32 8
  %10 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %driver_data.i.i.i, align 4
  %base.i = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base.i, align 4
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #11, !srcloc !262
  %15 = and i32 %14, -16777217
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %15) #11, !srcloc !263
  tail call fastcc void @stm32f7_i2c_hw_config(ptr noundef %11) #11
  %result = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %data, i32 0, i32 9, i32 3
  %16 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -5, ptr %result, align 4
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %and7 = and i32 %7, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.end.if.end25_crit_edge, label %do.body10

if.end.if.end25_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25

do.body10:                                        ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm32f7_i2c_isr_error.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@stm32f7_i2c_isr_error, %do.end22)) #11
          to label %if.then17 [label %do.end22], !srcloc !259

if.then17:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #13
  %17 = ptrtoint ptr %f7_msg1 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %f7_msg1, align 4
  %conv19 = zext i16 %18 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stm32f7_i2c_isr_error.__UNIQUE_ID_ddebug299, ptr noundef %3, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.47, i32 noundef %conv19) #11
  br label %do.end22

do.end22:                                         ; preds = %if.then17, %do.body10
  %add.ptr23 = getelementptr i8, ptr %1, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23, i32 131072) #11, !srcloc !263
  %result24 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %data, i32 0, i32 9, i32 3
  %19 = ptrtoint ptr %result24 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -11, ptr %result24, align 4
  br label %if.end25

if.end25:                                         ; preds = %do.end22, %if.end.if.end25_crit_edge
  %and26 = and i32 %7, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %if.end25.if.end36_crit_edge, label %do.end31

if.end25.if.end36_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end36

do.end31:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  %20 = ptrtoint ptr %f7_msg1 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %f7_msg1, align 4
  %conv33 = zext i16 %21 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.47, i32 noundef %conv33) #14
  %add.ptr34 = getelementptr i8, ptr %1, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr34, i32 524288) #11, !srcloc !263
  %result35 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %data, i32 0, i32 9, i32 3
  %22 = ptrtoint ptr %result35 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -22, ptr %result35, align 4
  br label %if.end36

if.end36:                                         ; preds = %do.end31, %if.end25.if.end36_crit_edge
  %and37 = and i32 %7, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  br i1 %tobool38.not, label %if.end60, label %do.body40

do.body40:                                        ; preds = %if.end36
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm32f7_i2c_isr_error.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@stm32f7_i2c_isr_error, %do.end57)) #11
          to label %if.then54 [label %do.end57], !srcloc !259

if.then54:                                        ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stm32f7_i2c_isr_error.__UNIQUE_ID_ddebug300, ptr noundef %3, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.47) #11
  br label %do.end57

do.end57:                                         ; preds = %if.then54, %do.body40
  %add.ptr58 = getelementptr i8, ptr %1, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr58, i32 2097152) #11, !srcloc !263
  %alert = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %data, i32 0, i32 29
  %23 = ptrtoint ptr %alert to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %alert, align 8
  %ara = getelementptr inbounds %struct.stm32f7_i2c_alert, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %ara to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ara, align 4
  %call59 = tail call i32 @i2c_handle_smbus_alert(ptr noundef %26) #11
  br label %cleanup

if.end60:                                         ; preds = %if.end36
  %slave_running = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %data, i32 0, i32 13
  %27 = ptrtoint ptr %slave_running to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %slave_running, align 4
  %tobool61.not = icmp eq ptr %28, null
  br i1 %tobool61.not, label %if.then62, label %if.end60.if.end66_crit_edge

if.end60.if.end66_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end66

if.then62:                                        ; preds = %if.end60
  %arrayidx.i = getelementptr %struct.stm32f7_i2c_dev, ptr %data, i32 0, i32 12, i32 0
  %29 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %30, null
  br i1 %tobool.not.i, label %for.cond.i, label %if.then62.stm32f7_i2c_is_slave_registered.exit.thread_crit_edge

if.then62.stm32f7_i2c_is_slave_registered.exit.thread_crit_edge: ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #13
  br label %stm32f7_i2c_is_slave_registered.exit.thread

for.cond.i:                                       ; preds = %if.then62
  %arrayidx.1.i = getelementptr %struct.stm32f7_i2c_dev, ptr %data, i32 0, i32 12, i32 1
  %31 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx.1.i, align 4
  %tobool.not.1.i = icmp eq ptr %32, null
  br i1 %tobool.not.1.i, label %stm32f7_i2c_is_slave_registered.exit, label %for.cond.i.stm32f7_i2c_is_slave_registered.exit.thread_crit_edge

for.cond.i.stm32f7_i2c_is_slave_registered.exit.thread_crit_edge: ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %stm32f7_i2c_is_slave_registered.exit.thread

stm32f7_i2c_is_slave_registered.exit:             ; preds = %for.cond.i
  %arrayidx.2.i = getelementptr %struct.stm32f7_i2c_dev, ptr %data, i32 0, i32 12, i32 2
  %33 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx.2.i, align 4
  %tobool.not.2.i.not = icmp eq ptr %34, null
  br i1 %tobool.not.2.i.not, label %stm32f7_i2c_is_slave_registered.exit._crit_edge, label %stm32f7_i2c_is_slave_registered.exit.stm32f7_i2c_is_slave_registered.exit.thread_crit_edge

stm32f7_i2c_is_slave_registered.exit.stm32f7_i2c_is_slave_registered.exit.thread_crit_edge: ; preds = %stm32f7_i2c_is_slave_registered.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %stm32f7_i2c_is_slave_registered.exit.thread

stm32f7_i2c_is_slave_registered.exit._crit_edge:  ; preds = %stm32f7_i2c_is_slave_registered.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %35

stm32f7_i2c_is_slave_registered.exit.thread:      ; preds = %stm32f7_i2c_is_slave_registered.exit.stm32f7_i2c_is_slave_registered.exit.thread_crit_edge, %for.cond.i.stm32f7_i2c_is_slave_registered.exit.thread_crit_edge, %if.then62.stm32f7_i2c_is_slave_registered.exit.thread_crit_edge
  br label %35

35:                                               ; preds = %stm32f7_i2c_is_slave_registered.exit.thread, %stm32f7_i2c_is_slave_registered.exit._crit_edge
  %36 = phi i32 [ -119, %stm32f7_i2c_is_slave_registered.exit.thread ], [ -247, %stm32f7_i2c_is_slave_registered.exit._crit_edge ]
  %37 = ptrtoint ptr %base2 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %base2, align 4
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %38) #11, !srcloc !262
  %40 = tail call i32 @llvm.bswap.i32(i32 %39) #11
  %and.i.i = and i32 %40, %36
  %41 = tail call i32 @llvm.bswap.i32(i32 %and.i.i) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 %41) #11, !srcloc !263
  br label %if.end66

if.end66:                                         ; preds = %35, %if.end60.if.end66_crit_edge
  %use_dma = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %data, i32 0, i32 18
  %42 = ptrtoint ptr %use_dma to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %use_dma, align 8, !range !260
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool67.not = icmp eq i8 %43, 0
  br i1 %tobool67.not, label %if.end66.if.end70_crit_edge, label %if.then68

if.end66.if.end70_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end70

if.then68:                                        ; preds = %if.end66
  %44 = ptrtoint ptr %base2 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %base2, align 4
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %45) #11, !srcloc !262
  %47 = and i32 %46, -12582913
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %45, i32 %47) #11, !srcloc !263
  %chan_using = getelementptr inbounds %struct.stm32_i2c_dma, ptr %5, i32 0, i32 2
  %48 = ptrtoint ptr %chan_using to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %chan_using, align 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %49, align 4
  %device_terminate_all.i = getelementptr inbounds %struct.dma_device, ptr %51, i32 0, i32 47
  %52 = ptrtoint ptr %device_terminate_all.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %device_terminate_all.i, align 4
  %tobool.not.i107 = icmp eq ptr %53, null
  br i1 %tobool.not.i107, label %if.then68.if.end70_crit_edge, label %if.then.i

if.then68.if.end70_crit_edge:                     ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end70

if.then.i:                                        ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #13
  %call.i = tail call i32 %53(ptr noundef %49) #11
  br label %if.end70

if.end70:                                         ; preds = %if.then.i, %if.then68.if.end70_crit_edge, %if.end66.if.end70_crit_edge
  %master_mode = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %data, i32 0, i32 16
  %54 = ptrtoint ptr %master_mode to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 0, ptr %master_mode, align 8
  %complete = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %data, i32 0, i32 3
  tail call void @complete(ptr noundef %complete) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end70, %do.end57
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @stm32f7_i2c_setup_timing(ptr nocapture noundef %i2c_dev, ptr nocapture noundef %setup) unnamed_addr #2 align 64 {
entry:
  %timings = alloca %struct.i2c_timings, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %timings) #11
  %0 = getelementptr inbounds %struct.i2c_timings, ptr %timings, i32 0, i32 1
  %1 = getelementptr inbounds %struct.i2c_timings, ptr %timings, i32 0, i32 2
  %2 = getelementptr inbounds i8, ptr %timings, i32 12
  %3 = call ptr @memset(ptr %2, i32 255, i32 20)
  %4 = ptrtoint ptr %timings to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 100000, ptr %timings, align 4
  %rise_time = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %i2c_dev, i32 0, i32 10, i32 2
  %5 = ptrtoint ptr %rise_time to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %rise_time, align 4
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %0, align 4
  %fall_time = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %i2c_dev, i32 0, i32 10, i32 3
  %8 = ptrtoint ptr %fall_time to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %fall_time, align 4
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %1, align 4
  %dev = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %i2c_dev, i32 0, i32 1
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 8
  call void @i2c_parse_fw_timings(ptr noundef %12, ptr noundef nonnull %timings, i1 noundef zeroext false) #11
  %13 = ptrtoint ptr %timings to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %timings, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000, i32 %14)
  %cmp = icmp ugt i32 %14, 1000000
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.53, i32 noundef %14, i32 noundef 1000000) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %17 = getelementptr inbounds %struct.i2c_timings, ptr %timings, i32 0, i32 6
  %18 = ptrtoint ptr %setup to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %14, ptr %setup, align 4
  %19 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %0, align 4
  %21 = ptrtoint ptr %rise_time to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %rise_time, align 4
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %1, align 4
  %24 = ptrtoint ptr %fall_time to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %fall_time, align 4
  %25 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %17, align 4
  %dnf_dt = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %i2c_dev, i32 0, i32 27
  %27 = ptrtoint ptr %dnf_dt to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %dnf_dt, align 8
  %clk = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %i2c_dev, i32 0, i32 4
  %28 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %clk, align 8
  %call = call i32 @clk_get_rate(ptr noundef %29) #11
  %clock_src = getelementptr inbounds %struct.stm32f7_i2c_setup, ptr %setup, i32 0, i32 1
  %30 = ptrtoint ptr %clock_src to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %call, ptr %clock_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %31 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev, align 8
  br i1 %tobool.not, label %do.end17, label %if.end19

do.end17:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.56) #14
  br label %cleanup

if.end19:                                         ; preds = %if.end
  %of_node = getelementptr inbounds %struct.device, ptr %32, i32 0, i32 27
  %33 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %of_node, align 8
  %call.i = call ptr @of_find_property(ptr noundef %34, ptr noundef nonnull @.str.58, ptr noundef null) #11
  %tobool.i.not = icmp eq ptr %call.i, null
  br i1 %tobool.i.not, label %if.then22, label %if.end19.if.end24_crit_edge

if.end19.if.end24_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24

if.then22:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  %35 = ptrtoint ptr %dnf_dt to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %dnf_dt, align 8
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %if.end19.if.end24_crit_edge
  %timing = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %i2c_dev, i32 0, i32 11
  %call26178 = call fastcc i32 @stm32f7_i2c_compute_timing(ptr noundef %i2c_dev, ptr noundef %setup, ptr noundef %timing)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26178)
  %tobool27.not179 = icmp eq i32 %call26178, 0
  br i1 %tobool27.not179, label %if.end24.do.end48.critedge_crit_edge, label %do.end31.preheader

if.end24.do.end48.critedge_crit_edge:             ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end48.critedge

do.end31.preheader:                               ; preds = %if.end24
  %36 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.60) #14
  %38 = ptrtoint ptr %setup to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %setup, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 100001, i32 %39)
  %cmp34184 = icmp ult i32 %39, 100001
  br i1 %cmp34184, label %do.end31.preheader.do.end53.critedge_crit_edge, label %do.end31.preheader.if.end36_crit_edge

do.end31.preheader.if.end36_crit_edge:            ; preds = %do.end31.preheader
  br label %if.end36

do.end31.preheader.do.end53.critedge_crit_edge:   ; preds = %do.end31.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end53.critedge

do.end31:                                         ; preds = %stm32f7_get_lower_rate.exit
  %40 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str.60) #14
  %42 = ptrtoint ptr %setup to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %setup, align 4
  %cmp34 = icmp ult i32 %43, 100001
  br i1 %cmp34, label %do.end31.do.end53.critedge_crit_edge, label %do.end31.if.end36_crit_edge

do.end31.if.end36_crit_edge:                      ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end36

do.end31.do.end53.critedge_crit_edge:             ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end53.critedge

if.end36:                                         ; preds = %do.end31.if.end36_crit_edge, %do.end31.preheader.if.end36_crit_edge
  %44 = phi i32 [ %43, %do.end31.if.end36_crit_edge ], [ %39, %do.end31.preheader.if.end36_crit_edge ]
  %45 = load i32, ptr getelementptr inbounds ([3 x %struct.stm32f7_i2c_spec], ptr @stm32f7_i2c_specs, i32 0, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %44)
  %cmp.i = icmp ult i32 %45, %44
  br i1 %cmp.i, label %if.end36.stm32f7_get_lower_rate.exit_crit_edge, label %while.cond.1.i

if.end36.stm32f7_get_lower_rate.exit_crit_edge:   ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #13
  br label %stm32f7_get_lower_rate.exit

while.cond.1.i:                                   ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #13
  %46 = load i32, ptr getelementptr inbounds ([3 x %struct.stm32f7_i2c_spec], ptr @stm32f7_i2c_specs, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %46, i32 %44)
  %cmp.1.i = icmp ult i32 %46, %44
  %spec.select.i = zext i1 %cmp.1.i to i32
  br label %stm32f7_get_lower_rate.exit

stm32f7_get_lower_rate.exit:                      ; preds = %while.cond.1.i, %if.end36.stm32f7_get_lower_rate.exit_crit_edge
  %dec.lcssa.i = phi i32 [ 2, %if.end36.stm32f7_get_lower_rate.exit_crit_edge ], [ %spec.select.i, %while.cond.1.i ]
  %arrayidx2.i = getelementptr [3 x %struct.stm32f7_i2c_spec], ptr @stm32f7_i2c_specs, i32 0, i32 %dec.lcssa.i
  %47 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx2.i, align 4
  %49 = ptrtoint ptr %setup to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %setup, align 4
  %50 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %51, ptr noundef nonnull @.str.63, i32 noundef %48) #14
  %call26 = call fastcc i32 @stm32f7_i2c_compute_timing(ptr noundef %i2c_dev, ptr noundef %setup, ptr noundef %timing)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %stm32f7_get_lower_rate.exit.do.end48.critedge_crit_edge, label %do.end31

stm32f7_get_lower_rate.exit.do.end48.critedge_crit_edge: ; preds = %stm32f7_get_lower_rate.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end48.critedge

do.end48.critedge:                                ; preds = %stm32f7_get_lower_rate.exit.do.end48.critedge_crit_edge, %if.end24.do.end48.critedge_crit_edge
  %52 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev, align 8
  %of_node57 = getelementptr inbounds %struct.device, ptr %53, i32 0, i32 27
  %54 = ptrtoint ptr %of_node57 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %of_node57, align 8
  %call.i172 = call ptr @of_find_property(ptr noundef %55, ptr noundef nonnull @.str.68, ptr noundef null) #11
  %tobool.i173 = icmp ne ptr %call.i172, null
  %analog_filter = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %i2c_dev, i32 0, i32 26
  %frombool = zext i1 %tobool.i173 to i8
  %56 = ptrtoint ptr %analog_filter to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %frombool, ptr %analog_filter, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm32f7_i2c_setup_timing.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@stm32f7_i2c_setup_timing, %do.body73)) #11
          to label %if.then66 [label %do.body73], !srcloc !259

do.end53.critedge:                                ; preds = %do.end31.do.end53.critedge_crit_edge, %do.end31.preheader.do.end53.critedge_crit_edge
  %call26180.lcssa = phi i32 [ %call26178, %do.end31.preheader.do.end53.critedge_crit_edge ], [ %call26, %do.end31.do.end53.critedge_crit_edge ]
  %57 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dev, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %58, ptr noundef nonnull @.str.66) #14
  br label %cleanup

if.then66:                                        ; preds = %do.end48.critedge
  call void @__sanitizer_cov_trace_pc() #13
  %59 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dev, align 8
  %61 = ptrtoint ptr %setup to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %setup, align 4
  %63 = ptrtoint ptr %clock_src to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %clock_src, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stm32f7_i2c_setup_timing.__UNIQUE_ID_ddebug293, ptr noundef %60, ptr noundef nonnull @.str.69, i32 noundef %62, i32 noundef %64) #11
  br label %do.body73

do.body73:                                        ; preds = %if.then66, %do.end48.critedge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm32f7_i2c_setup_timing.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@stm32f7_i2c_setup_timing, %do.body94)) #11
          to label %if.then87 [label %do.body94], !srcloc !259

if.then87:                                        ; preds = %do.body73
  call void @__sanitizer_cov_trace_pc() #13
  %65 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dev, align 8
  %rise_time89 = getelementptr inbounds %struct.stm32f7_i2c_setup, ptr %setup, i32 0, i32 2
  %67 = ptrtoint ptr %rise_time89 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %rise_time89, align 4
  %fall_time90 = getelementptr inbounds %struct.stm32f7_i2c_setup, ptr %setup, i32 0, i32 3
  %69 = ptrtoint ptr %fall_time90 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %fall_time90, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stm32f7_i2c_setup_timing.__UNIQUE_ID_ddebug294, ptr noundef %66, ptr noundef nonnull @.str.70, i32 noundef %68, i32 noundef %70) #11
  br label %do.body94

do.body94:                                        ; preds = %if.then87, %do.body73
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm32f7_i2c_setup_timing.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@stm32f7_i2c_setup_timing, %do.end114)) #11
          to label %if.then108 [label %do.end114], !srcloc !259

if.then108:                                       ; preds = %do.body94
  call void @__sanitizer_cov_trace_pc() #13
  %71 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %dev, align 8
  %73 = ptrtoint ptr %analog_filter to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %analog_filter, align 4, !range !260
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %74)
  %tobool111.not = icmp eq i8 %74, 0
  %cond = select i1 %tobool111.not, ptr @.str.73, ptr @.str.72
  %dnf = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %i2c_dev, i32 0, i32 28
  %75 = ptrtoint ptr %dnf to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %dnf, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stm32f7_i2c_setup_timing.__UNIQUE_ID_ddebug295, ptr noundef %72, ptr noundef nonnull @.str.71, ptr noundef nonnull %cond, i32 noundef %76) #11
  br label %do.end114

do.end114:                                        ; preds = %if.then108, %do.body94
  %77 = ptrtoint ptr %setup to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %setup, align 4
  %bus_rate = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %i2c_dev, i32 0, i32 5
  %79 = ptrtoint ptr %bus_rate to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %78, ptr %bus_rate, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end114, %do.end53.critedge, %do.end17, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call26180.lcssa, %do.end53.critedge ], [ 0, %do.end114 ], [ -22, %do.end17 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %timings) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @stm32f7_i2c_setup_fm_plus_bits(ptr nocapture noundef readonly %pdev, ptr noundef %i2c_dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call = tail call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %1, ptr noundef nonnull @.str.90) #11
  %regmap = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %i2c_dev, i32 0, i32 19
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %regmap, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %fmp_sreg = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %i2c_dev, i32 0, i32 20
  %call3 = tail call i32 @of_property_read_u32_index(ptr noundef %1, ptr noundef nonnull @.str.90, i32 noundef 1, ptr noundef %fmp_sreg) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %3 = ptrtoint ptr %fmp_sreg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %fmp_sreg, align 8
  %fmp_clr_offset = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %i2c_dev, i32 0, i32 10, i32 4
  %5 = ptrtoint ptr %fmp_clr_offset to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fmp_clr_offset, align 4
  %add = add i32 %6, %4
  %fmp_creg = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %i2c_dev, i32 0, i32 21
  %7 = ptrtoint ptr %fmp_creg to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %add, ptr %fmp_creg, align 4
  %fmp_mask = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %i2c_dev, i32 0, i32 22
  %call7 = tail call i32 @of_property_read_u32_index(ptr noundef %1, ptr noundef nonnull @.str.90, i32 noundef 2, ptr noundef %fmp_mask) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %if.end5 ], [ 0, %entry.cleanup_crit_edge ], [ %call3, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @stm32f7_i2c_write_fm_plus_bits(ptr nocapture noundef readonly %i2c_dev, i1 noundef zeroext %enable) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %bus_rate = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %i2c_dev, i32 0, i32 5
  %0 = ptrtoint ptr %bus_rate to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bus_rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 400001, i32 %1)
  %cmp = icmp ult i32 %1, 400001
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %regmap = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %i2c_dev, i32 0, i32 19
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  %tobool.not.i = icmp eq ptr %3, null
  %cmp.i = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %fmp_sreg = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %i2c_dev, i32 0, i32 20
  %4 = ptrtoint ptr %fmp_sreg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fmp_sreg, align 8
  %fmp_creg = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %i2c_dev, i32 0, i32 21
  %6 = ptrtoint ptr %fmp_creg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fmp_creg, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp1 = icmp eq i32 %5, %7
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %fmp_mask = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %i2c_dev, i32 0, i32 22
  %8 = ptrtoint ptr %fmp_mask to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %fmp_mask, align 8
  %spec.select = select i1 %enable, i32 %9, i32 0
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef nonnull %3, i32 noundef %5, i32 noundef %9, i32 noundef %spec.select, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %. = select i1 %enable, i32 %5, i32 %7
  %fmp_mask15 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %i2c_dev, i32 0, i32 22
  %10 = ptrtoint ptr %fmp_mask15 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %fmp_mask15, align 8
  %call16 = tail call i32 @regmap_write(ptr noundef nonnull %3, i32 noundef %., i32 noundef %11) #11
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then2, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ %call.i, %if.then2 ], [ %call16, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @stm32_i2c_dma_request(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_set_wakeup_capable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_set_wake_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @stm32f7_i2c_hw_config(ptr nocapture noundef readonly %i2c_dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %presc = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %i2c_dev, i32 0, i32 11, i32 1
  %0 = ptrtoint ptr %presc to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %presc, align 4
  %and = zext i8 %1 to i32
  %shl = shl i32 %and, 28
  %scldel = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %i2c_dev, i32 0, i32 11, i32 2
  %2 = ptrtoint ptr %scldel to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %scldel, align 1
  %4 = and i8 %3, 15
  %and3 = zext i8 %4 to i32
  %shl4 = shl nuw nsw i32 %and3, 20
  %or5 = or i32 %shl4, %shl
  %sdadel = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %i2c_dev, i32 0, i32 11, i32 3
  %5 = ptrtoint ptr %sdadel to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %sdadel, align 2
  %7 = and i8 %6, 15
  %and7 = zext i8 %7 to i32
  %shl8 = shl nuw nsw i32 %and7, 16
  %or9 = or i32 %or5, %shl8
  %sclh = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %i2c_dev, i32 0, i32 11, i32 4
  %8 = ptrtoint ptr %sclh to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %sclh, align 1
  %conv10 = zext i8 %9 to i32
  %shl12 = shl nuw nsw i32 %conv10, 8
  %or13 = or i32 %or9, %shl12
  %scll = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %i2c_dev, i32 0, i32 11, i32 5
  %10 = ptrtoint ptr %scll to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %scll, align 4
  %conv14 = zext i8 %11 to i32
  %or16 = or i32 %or13, %conv14
  %12 = tail call i32 @llvm.bswap.i32(i32 %or16)
  %base = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %i2c_dev, i32 0, i32 2
  %13 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %14, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %12) #11, !srcloc !263
  %analog_filter = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %i2c_dev, i32 0, i32 26
  %15 = ptrtoint ptr %analog_filter to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %analog_filter, align 4, !range !260
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not = icmp eq i8 %16, 0
  %17 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %base, align 4
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #11
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %20 = and i32 %19, -1048577
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %20) #11, !srcloc !263
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %21 = or i32 %19, 1048576
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %21) #11, !srcloc !263
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %22 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base, align 4
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #11, !srcloc !262
  %25 = and i32 %24, -983041
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %25) #11, !srcloc !263
  %26 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base, align 4
  %dnf = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %i2c_dev, i32 0, i32 28
  %28 = ptrtoint ptr %dnf to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %dnf, align 4
  %and25 = shl i32 %29, 8
  %shl26 = and i32 %and25, 3840
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #11, !srcloc !262
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #11
  %or.i47 = or i32 %31, %shl26
  %32 = tail call i32 @llvm.bswap.i32(i32 %or.i47) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %32) #11, !srcloc !263
  %33 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %base, align 4
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %34) #11, !srcloc !262
  %36 = or i32 %35, 16777216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 %36) #11, !srcloc !263
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_add_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @stm32f7_i2c_enable_smbus_host(ptr noundef %i2c_dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %base2 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %i2c_dev, i32 0, i32 2
  %0 = ptrtoint ptr %base2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base2, align 4
  %call = tail call ptr @i2c_new_slave_host_notify_device(ptr noundef %i2c_dev) #11
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %2 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %host_notify_client = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %i2c_dev, i32 0, i32 25
  %3 = ptrtoint ptr %host_notify_client to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call, ptr %host_notify_client, align 8
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #11, !srcloc !262
  %5 = or i32 %4, 4096
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 %5) #11, !srcloc !263
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %2, %if.then ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @stm32f7_i2c_enable_smbus_alert(ptr noundef %i2c_dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev2 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %i2c_dev, i32 0, i32 1
  %0 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev2, align 8
  %base3 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %i2c_dev, i32 0, i32 2
  %2 = ptrtoint ptr %base3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base3, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %1, i32 noundef 8, i32 noundef 3520) #11
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = tail call ptr @i2c_new_smbus_alert_device(ptr noundef %i2c_dev, ptr noundef nonnull %call.i) #11
  %ara = getelementptr inbounds %struct.stm32f7_i2c_alert, ptr %call.i, i32 0, i32 1
  %4 = ptrtoint ptr %ara to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call4, ptr %ara, align 4
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then7, label %if.end10

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %5 = ptrtoint ptr %call4 to i32
  br label %cleanup

if.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %alert11 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %i2c_dev, i32 0, i32 29
  %6 = ptrtoint ptr %alert11 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i, ptr %alert11, align 8
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #11, !srcloc !262
  %8 = or i32 %7, 16384
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 %8) #11, !srcloc !263
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.then7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %5, %if.then7 ], [ 0, %if.end10 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @stm32f7_i2c_disable_smbus_host(ptr nocapture noundef readonly %i2c_dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %host_notify_client = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %i2c_dev, i32 0, i32 25
  %0 = ptrtoint ptr %host_notify_client to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host_notify_client, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %base1 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %i2c_dev, i32 0, i32 2
  %2 = ptrtoint ptr %base1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base1, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #11, !srcloc !262
  %5 = and i32 %4, -4097
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 %5) #11, !srcloc !263
  %6 = ptrtoint ptr %host_notify_client to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %host_notify_client, align 8
  tail call void @i2c_free_slave_host_notify_device(ptr noundef %7) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pm_runtime_put_noidle(ptr noundef %dev) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %usage_count = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 13
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !264
  tail call void @llvm.prefetch.p0(ptr %usage_count, i32 1, i32 3, i32 1) #11
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count, ptr %usage_count, i32 0, i32 -1, ptr elementtype(i32) %usage_count) #11, !srcloc !265
  %asmresult.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.not.i.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %entry.atomic_add_unless.exit_crit_edge, label %do.end11.i.i.i

entry.atomic_add_unless.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %atomic_add_unless.exit

do.end11.i.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !266
  br label %atomic_add_unless.exit

atomic_add_unless.exit:                           ; preds = %do.end11.i.i.i, %entry.atomic_add_unless.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_pm_clear_wake_irq(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @stm32_i2c_dma_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @stm32f7_i2c_slave_isr_event(ptr nocapture noundef %i2c_dev) unnamed_addr #2 align 64 {
entry:
  %value.i.i = alloca i8, align 1
  %val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %base1 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %i2c_dev, i32 0, i32 2
  %0 = ptrtoint ptr %base1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base1, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #11
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %val, align 1, !annotation !258
  %add.ptr = getelementptr i8, ptr %1, i32 24
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !262
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %and = and i32 %4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %slave_running = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %i2c_dev, i32 0, i32 13
  %5 = ptrtoint ptr %slave_running to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %slave_running, align 4
  %slave_cb.i = getelementptr inbounds %struct.i2c_client, ptr %6, i32 0, i32 8
  %7 = ptrtoint ptr %slave_cb.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %slave_cb.i, align 8
  %call.i = call i32 %8(ptr noundef %6, i32 noundef 2, ptr noundef nonnull %val) #11
  %9 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %val, align 1
  %conv = zext i8 %10 to i32
  %11 = shl nuw i32 %conv, 24
  %add.ptr4 = getelementptr i8, ptr %1, i32 40
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %11) #11, !srcloc !263
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %12 = and i32 %4, 132
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %if.end.if.end28_crit_edge, label %if.then9

if.end.if.end28_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28

if.then9:                                         ; preds = %if.end
  %14 = ptrtoint ptr %base1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base1, align 4
  %add.ptr12 = getelementptr i8, ptr %15, i32 36
  %16 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr12) #11, !srcloc !268
  %17 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %val, align 1
  %slave_running15 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %i2c_dev, i32 0, i32 13
  %18 = ptrtoint ptr %slave_running15 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %slave_running15, align 4
  %slave_cb.i1 = getelementptr inbounds %struct.i2c_client, ptr %19, i32 0, i32 8
  %20 = ptrtoint ptr %slave_cb.i1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %slave_cb.i1, align 8
  %call.i2 = call i32 %21(ptr noundef %19, i32 noundef 3, ptr noundef nonnull %val) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i2)
  %tobool17.not = icmp eq i32 %call.i2, 0
  br i1 %tobool17.not, label %if.then18, label %if.else

if.then18:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #13
  %22 = ptrtoint ptr %base1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base1, align 4
  %add.ptr21 = getelementptr i8, ptr %23, i32 4
  %24 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr21) #11, !srcloc !262
  %25 = or i32 %24, 256
  %26 = ptrtoint ptr %base1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base1, align 4
  %add.ptr25 = getelementptr i8, ptr %27, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25, i32 %25) #11, !srcloc !263
  br label %if.end28

if.else:                                          ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr26 = getelementptr i8, ptr %1, i32 4
  %28 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr26) #11, !srcloc !262
  %29 = or i32 %28, 8388608
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26, i32 %29) #11, !srcloc !263
  br label %if.end28

if.end28:                                         ; preds = %if.else, %if.then18, %if.end.if.end28_crit_edge
  %and29 = and i32 %4, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %if.end28.if.end41_crit_edge, label %do.body

if.end28.if.end41_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end41

do.body:                                          ; preds = %if.end28
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm32f7_i2c_slave_isr_event.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@stm32f7_i2c_slave_isr_event, %do.end)) #11
          to label %if.then38 [label %do.end], !srcloc !259

if.then38:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %i2c_dev, i32 0, i32 1
  %30 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stm32f7_i2c_slave_isr_event.__UNIQUE_ID_ddebug296, ptr noundef %31, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.38) #11
  br label %do.end

do.end:                                           ; preds = %if.then38, %do.body
  %add.ptr40 = getelementptr i8, ptr %1, i32 28
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr40, i32 268435456) #11, !srcloc !263
  br label %if.end41

if.end41:                                         ; preds = %do.end, %if.end28.if.end41_crit_edge
  %and42 = and i32 %4, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42)
  %tobool43.not = icmp eq i32 %and42, 0
  br i1 %tobool43.not, label %if.end41.if.end53_crit_edge, label %if.then44

if.end41.if.end53_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end53

if.then44:                                        ; preds = %if.end41
  %32 = ptrtoint ptr %base1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %base1, align 4
  %34 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %33) #11, !srcloc !262
  %35 = and i32 %34, -1979711489
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 %35) #11, !srcloc !263
  %slave_dir = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %i2c_dev, i32 0, i32 15
  %36 = ptrtoint ptr %slave_dir to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %slave_dir, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool45.not = icmp eq i32 %37, 0
  br i1 %tobool45.not, label %if.then44.if.end48_crit_edge, label %if.then46

if.then44.if.end48_crit_edge:                     ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end48

if.then46:                                        ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #13
  %38 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !262
  %39 = or i32 %38, 16777216
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %39) #11, !srcloc !263
  br label %if.end48

if.end48:                                         ; preds = %if.then46, %if.then44.if.end48_crit_edge
  %add.ptr49 = getelementptr i8, ptr %1, i32 28
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr49, i32 536870912) #11, !srcloc !263
  %slave_running50 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %i2c_dev, i32 0, i32 13
  %40 = ptrtoint ptr %slave_running50 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %slave_running50, align 4
  %slave_cb.i4 = getelementptr inbounds %struct.i2c_client, ptr %41, i32 0, i32 8
  %42 = ptrtoint ptr %slave_cb.i4 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %slave_cb.i4, align 8
  %call.i5 = call i32 %43(ptr noundef %41, i32 noundef 4, ptr noundef nonnull %val) #11
  %44 = ptrtoint ptr %slave_running50 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr null, ptr %slave_running50, align 4
  br label %if.end53

if.end53:                                         ; preds = %if.end48, %if.end41.if.end53_crit_edge
  %and54 = and i32 %4, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54)
  %tobool55.not = icmp eq i32 %and54, 0
  br i1 %tobool55.not, label %if.end53.if.end57_crit_edge, label %if.then56

if.end53.if.end57_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end57

if.then56:                                        ; preds = %if.end53
  %45 = ptrtoint ptr %base1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %base1, align 4
  %add.ptr.i = getelementptr i8, ptr %46, i32 24
  %47 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !262
  %48 = call i32 @llvm.bswap.i32(i32 %47) #11
  %and.i = lshr i32 %48, 17
  %shr.i = and i32 %and.i, 127
  %and3.i = and i32 %48, 65536
  %arrayidx.i = getelementptr %struct.stm32f7_i2c_dev, ptr %i2c_dev, i32 0, i32 12, i32 0
  %49 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i.i = icmp eq ptr %50, null
  br i1 %tobool.not.i.i, label %if.then56.for.inc.i_crit_edge, label %if.end.i.i

if.then56.for.inc.i_crit_edge:                    ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.end.i.i:                                       ; preds = %if.then56
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %50, align 8
  %53 = and i16 %52, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %53)
  %tobool1.not.i.i = icmp eq i16 %53, 0
  %addr8.i.i = getelementptr inbounds %struct.i2c_client, ptr %50, i32 0, i32 1
  %54 = ptrtoint ptr %addr8.i.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %addr8.i.i, align 2
  br i1 %tobool1.not.i.i, label %if.else.i.i, label %if.then2.i.i

if.then2.i.i:                                     ; preds = %if.end.i.i
  %56 = lshr i16 %55, 8
  %57 = or i16 %56, 120
  %or.i.i = zext i16 %57 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i, i32 %or.i.i)
  %cmp.i.i = icmp eq i32 %shr.i, %or.i.i
  br i1 %cmp.i.i, label %if.then2.i.i.if.then.i_crit_edge, label %if.then2.i.i.for.inc.i_crit_edge

if.then2.i.i.for.inc.i_crit_edge:                 ; preds = %if.then2.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.then2.i.i.if.then.i_crit_edge:                 ; preds = %if.then2.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

if.else.i.i:                                      ; preds = %if.end.i.i
  %58 = and i16 %55, 127
  %and10.i.i = zext i16 %58 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i, i32 %and10.i.i)
  %cmp11.i.i = icmp eq i32 %shr.i, %and10.i.i
  br i1 %cmp11.i.i, label %if.else.i.i.if.then.i_crit_edge, label %if.else.i.i.for.inc.i_crit_edge

if.else.i.i.for.inc.i_crit_edge:                  ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.else.i.i.if.then.i_crit_edge:                  ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

if.then.i:                                        ; preds = %if.else.i.2.i.if.then.i_crit_edge, %if.then2.i.2.i.if.then.i_crit_edge, %if.else.i.1.i.if.then.i_crit_edge, %if.then2.i.1.i.if.then.i_crit_edge, %if.else.i.i.if.then.i_crit_edge, %if.then2.i.i.if.then.i_crit_edge
  %.lcssa.i = phi ptr [ %50, %if.then2.i.i.if.then.i_crit_edge ], [ %50, %if.else.i.i.if.then.i_crit_edge ], [ %80, %if.then2.i.1.i.if.then.i_crit_edge ], [ %80, %if.else.i.1.i.if.then.i_crit_edge ], [ %90, %if.then2.i.2.i.if.then.i_crit_edge ], [ %90, %if.else.i.2.i.if.then.i_crit_edge ]
  %slave_running.i = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %i2c_dev, i32 0, i32 13
  %59 = ptrtoint ptr %slave_running.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %.lcssa.i, ptr %slave_running.i, align 4
  %slave_dir.i = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %i2c_dev, i32 0, i32 15
  %60 = ptrtoint ptr %slave_dir.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %and3.i, ptr %slave_dir.i, align 4
  %61 = ptrtoint ptr %base1 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %base1, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.i.i) #11
  %63 = ptrtoint ptr %value.i.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 0, ptr %value.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool.not.i18.i = icmp eq i32 %and3.i, 0
  %slave_cb.i21.i.i = getelementptr inbounds %struct.i2c_client, ptr %.lcssa.i, i32 0, i32 8
  %64 = ptrtoint ptr %slave_cb.i21.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %slave_cb.i21.i.i, align 8
  br i1 %tobool.not.i18.i, label %if.else.i19.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i = call i32 %65(ptr noundef nonnull %.lcssa.i, i32 noundef 0, ptr noundef nonnull %value.i.i) #11
  %add.ptr.i.i = getelementptr i8, ptr %62, i32 4
  %66 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #11, !srcloc !262
  %67 = and i32 %66, -2
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %67) #11, !srcloc !263
  %68 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %62) #11, !srcloc !262
  %69 = and i32 %68, -1140850945
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %62, i32 %69) #11, !srcloc !263
  %70 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %62) #11, !srcloc !262
  %71 = or i32 %70, 838860800
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %62, i32 %71) #11, !srcloc !263
  %72 = ptrtoint ptr %value.i.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %value.i.i, align 1
  %conv.i.i = zext i8 %73 to i32
  %74 = shl nuw i32 %conv.i.i, 24
  %add.ptr4.i.i = getelementptr i8, ptr %62, i32 40
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i, i32 %74) #11, !srcloc !263
  br label %stm32f7_i2c_slave_start.exit.i

if.else.i19.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i22.i.i = call i32 %65(ptr noundef nonnull %.lcssa.i, i32 noundef 1, ptr noundef nonnull %value.i.i) #11
  %add.ptr6.i.i = getelementptr i8, ptr %62, i32 4
  %75 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i.i) #11, !srcloc !262
  %76 = or i32 %75, 1
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i.i, i32 %76) #11, !srcloc !263
  %77 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %62) #11, !srcloc !262
  %78 = or i32 %77, 1946157312
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %62, i32 %78) #11, !srcloc !263
  br label %stm32f7_i2c_slave_start.exit.i

stm32f7_i2c_slave_start.exit.i:                   ; preds = %if.else.i19.i, %if.then.i.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.i.i) #11
  %add.ptr7.i = getelementptr i8, ptr %46, i32 28
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7.i, i32 134217728) #11, !srcloc !263
  br label %if.end57

for.inc.i:                                        ; preds = %if.else.i.i.for.inc.i_crit_edge, %if.then2.i.i.for.inc.i_crit_edge, %if.then56.for.inc.i_crit_edge
  %arrayidx.1.i = getelementptr %struct.stm32f7_i2c_dev, ptr %i2c_dev, i32 0, i32 12, i32 1
  %79 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %arrayidx.1.i, align 4
  %tobool.not.i.1.i = icmp eq ptr %80, null
  br i1 %tobool.not.i.1.i, label %for.inc.i.for.inc.1.i_crit_edge, label %if.end.i.1.i

for.inc.i.for.inc.1.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.1.i

if.end.i.1.i:                                     ; preds = %for.inc.i
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %80, align 8
  %83 = and i16 %82, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %83)
  %tobool1.not.i.1.i = icmp eq i16 %83, 0
  %addr8.i.1.i = getelementptr inbounds %struct.i2c_client, ptr %80, i32 0, i32 1
  %84 = ptrtoint ptr %addr8.i.1.i to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %addr8.i.1.i, align 2
  br i1 %tobool1.not.i.1.i, label %if.else.i.1.i, label %if.then2.i.1.i

if.then2.i.1.i:                                   ; preds = %if.end.i.1.i
  %86 = lshr i16 %85, 8
  %87 = or i16 %86, 120
  %or.i.1.i = zext i16 %87 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i, i32 %or.i.1.i)
  %cmp.i.1.i = icmp eq i32 %shr.i, %or.i.1.i
  br i1 %cmp.i.1.i, label %if.then2.i.1.i.if.then.i_crit_edge, label %if.then2.i.1.i.for.inc.1.i_crit_edge

if.then2.i.1.i.for.inc.1.i_crit_edge:             ; preds = %if.then2.i.1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.1.i

if.then2.i.1.i.if.then.i_crit_edge:               ; preds = %if.then2.i.1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

if.else.i.1.i:                                    ; preds = %if.end.i.1.i
  %88 = and i16 %85, 127
  %and10.i.1.i = zext i16 %88 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i, i32 %and10.i.1.i)
  %cmp11.i.1.i = icmp eq i32 %shr.i, %and10.i.1.i
  br i1 %cmp11.i.1.i, label %if.else.i.1.i.if.then.i_crit_edge, label %if.else.i.1.i.for.inc.1.i_crit_edge

if.else.i.1.i.for.inc.1.i_crit_edge:              ; preds = %if.else.i.1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.1.i

if.else.i.1.i.if.then.i_crit_edge:                ; preds = %if.else.i.1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

for.inc.1.i:                                      ; preds = %if.else.i.1.i.for.inc.1.i_crit_edge, %if.then2.i.1.i.for.inc.1.i_crit_edge, %for.inc.i.for.inc.1.i_crit_edge
  %arrayidx.2.i = getelementptr %struct.stm32f7_i2c_dev, ptr %i2c_dev, i32 0, i32 12, i32 2
  %89 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %arrayidx.2.i, align 4
  %tobool.not.i.2.i = icmp eq ptr %90, null
  br i1 %tobool.not.i.2.i, label %for.inc.1.i.if.end57_crit_edge, label %if.end.i.2.i

for.inc.1.i.if.end57_crit_edge:                   ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end57

if.end.i.2.i:                                     ; preds = %for.inc.1.i
  %91 = ptrtoint ptr %90 to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %90, align 8
  %93 = and i16 %92, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %93)
  %tobool1.not.i.2.i = icmp eq i16 %93, 0
  %addr8.i.2.i = getelementptr inbounds %struct.i2c_client, ptr %90, i32 0, i32 1
  %94 = ptrtoint ptr %addr8.i.2.i to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %addr8.i.2.i, align 2
  br i1 %tobool1.not.i.2.i, label %if.else.i.2.i, label %if.then2.i.2.i

if.then2.i.2.i:                                   ; preds = %if.end.i.2.i
  %96 = lshr i16 %95, 8
  %97 = or i16 %96, 120
  %or.i.2.i = zext i16 %97 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i, i32 %or.i.2.i)
  %cmp.i.2.i = icmp eq i32 %shr.i, %or.i.2.i
  br i1 %cmp.i.2.i, label %if.then2.i.2.i.if.then.i_crit_edge, label %if.then2.i.2.i.if.end57_crit_edge

if.then2.i.2.i.if.end57_crit_edge:                ; preds = %if.then2.i.2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end57

if.then2.i.2.i.if.then.i_crit_edge:               ; preds = %if.then2.i.2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

if.else.i.2.i:                                    ; preds = %if.end.i.2.i
  %98 = and i16 %95, 127
  %and10.i.2.i = zext i16 %98 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i, i32 %and10.i.2.i)
  %cmp11.i.2.i = icmp eq i32 %shr.i, %and10.i.2.i
  br i1 %cmp11.i.2.i, label %if.else.i.2.i.if.then.i_crit_edge, label %if.else.i.2.i.if.end57_crit_edge

if.else.i.2.i.if.end57_crit_edge:                 ; preds = %if.else.i.2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end57

if.else.i.2.i.if.then.i_crit_edge:                ; preds = %if.else.i.2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

if.end57:                                         ; preds = %if.else.i.2.i.if.end57_crit_edge, %if.then2.i.2.i.if.end57_crit_edge, %for.inc.1.i.if.end57_crit_edge, %stm32f7_i2c_slave_start.exit.i, %if.end53.if.end57_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #11
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @stm32f7_i2c_smbus_rep_start(ptr noundef %i2c_dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %base2 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %i2c_dev, i32 0, i32 2
  %0 = ptrtoint ptr %base2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base2, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !262
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #11, !srcloc !262
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %5 = or i32 %2, 262144
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %size = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %i2c_dev, i32 0, i32 9, i32 6
  %7 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %size, align 4
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i32 %8, label %entry.sw.epilog_crit_edge [
    i32 2, label %sw.bb
    i32 3, label %entry.sw.bb7_crit_edge
    i32 4, label %entry.sw.bb7_crit_edge90
    i32 5, label %entry.sw.bb9_crit_edge
    i32 7, label %entry.sw.bb9_crit_edge91
  ]

entry.sw.bb9_crit_edge91:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb9

entry.sw.bb9_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb9

entry.sw.bb7_crit_edge90:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb7

entry.sw.bb7_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb7

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %count = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %i2c_dev, i32 0, i32 9, i32 1
  %10 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %count, align 4
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry.sw.bb7_crit_edge, %entry.sw.bb7_crit_edge90
  %count8 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %i2c_dev, i32 0, i32 9, i32 1
  %11 = ptrtoint ptr %count8 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 2, ptr %count8, align 4
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry.sw.bb9_crit_edge, %entry.sw.bb9_crit_edge91
  %count10 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %i2c_dev, i32 0, i32 9, i32 1
  %12 = ptrtoint ptr %count10 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %count10, align 4
  %or11 = or i32 %6, 16777216
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb9, %sw.bb7, %sw.bb, %entry.sw.epilog_crit_edge
  %cr2.0 = phi i32 [ %6, %entry.sw.epilog_crit_edge ], [ %or11, %sw.bb9 ], [ %6, %sw.bb7 ], [ %6, %sw.bb ]
  %smbus_buf = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %i2c_dev, i32 0, i32 9, i32 9
  %buf = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %i2c_dev, i32 0, i32 9, i32 2
  %13 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %smbus_buf, ptr %buf, align 4
  %stop = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %i2c_dev, i32 0, i32 9, i32 4
  %14 = ptrtoint ptr %stop to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %stop, align 4
  %and = and i32 %4, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %sw.epilog.if.end_crit_edge, label %if.then

sw.epilog.if.end_crit_edge:                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  %count12 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %i2c_dev, i32 0, i32 9, i32 1
  %15 = ptrtoint ptr %count12 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %count12, align 4
  %inc = add i32 %16, 1
  store i32 %inc, ptr %count12, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.epilog.if.end_crit_edge
  %count14 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %i2c_dev, i32 0, i32 9, i32 1
  %17 = ptrtoint ptr %count14 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %count14, align 4
  %use_dma = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %i2c_dev, i32 0, i32 18
  %19 = ptrtoint ptr %use_dma to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %use_dma, align 8
  %dma = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %i2c_dev, i32 0, i32 17
  %20 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dma, align 4
  %tobool20.not = icmp ne ptr %21, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %18)
  %cmp = icmp ugt i32 %18, 21
  %or.cond = select i1 %tobool20.not, i1 %cmp, i1 false
  br i1 %or.cond, label %land.lhs.true22, label %if.end.if.end40_crit_edge

if.end.if.end40_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end40

land.lhs.true22:                                  ; preds = %if.end
  %22 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.125)
  switch i32 %8, label %if.then28 [
    i32 5, label %land.lhs.true22.if.end40_crit_edge
    i32 7, label %land.lhs.true22.if.end40_crit_edge92
  ]

land.lhs.true22.if.end40_crit_edge92:             ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end40

land.lhs.true22.if.end40_crit_edge:               ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end40

if.then28:                                        ; preds = %land.lhs.true22
  %dev = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %i2c_dev, i32 0, i32 1
  %23 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev, align 8
  %and30 = and i32 %cr2.0, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31 = icmp ne i32 %and30, 0
  %call34 = tail call i32 @stm32_i2c_prep_dma_xfer(ptr noundef %24, ptr noundef nonnull %21, i1 noundef zeroext %tobool31, i32 noundef %18, ptr noundef %smbus_buf, ptr noundef nonnull @stm32f7_i2c_dma_callback, ptr noundef %i2c_dev) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.then36, label %do.end

if.then36:                                        ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #13
  %25 = ptrtoint ptr %use_dma to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %use_dma, align 8
  br label %if.end40

do.end:                                           ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #13
  %26 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %27, ptr noundef nonnull @.str.40) #14
  br label %if.end40

if.end40:                                         ; preds = %do.end, %if.then36, %land.lhs.true22.if.end40_crit_edge, %land.lhs.true22.if.end40_crit_edge92, %if.end.if.end40_crit_edge
  %and19 = and i32 %4, -49159
  %28 = ptrtoint ptr %use_dma to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %use_dma, align 8, !range !260
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool42.not = icmp eq i8 %29, 0
  %cr1.0.v = select i1 %tobool42.not, i32 4, i32 32768
  %cr1.0 = or i32 %cr1.0.v, %and19
  %and13 = and i32 %cr2.0, -16719873
  %and15 = shl i32 %18, 16
  %shl = and i32 %and15, 16711680
  %or16 = or i32 %and13, %shl
  %or48 = or i32 %or16, 8192
  %30 = tail call i32 @llvm.bswap.i32(i32 %cr1.0)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 %30) #11, !srcloc !263
  %31 = tail call i32 @llvm.bswap.i32(i32 %or48)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %31) #11, !srcloc !263
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @stm32f7_i2c_xfer_msg(ptr noundef %i2c_dev, ptr nocapture noundef readonly %msg) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %f7_msg1 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %i2c_dev, i32 0, i32 9
  %base2 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %i2c_dev, i32 0, i32 2
  %0 = ptrtoint ptr %base2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base2, align 4
  %2 = ptrtoint ptr %msg to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %msg, align 4
  %4 = ptrtoint ptr %f7_msg1 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %3, ptr %f7_msg1, align 4
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %5 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %buf, align 4
  %buf4 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %i2c_dev, i32 0, i32 9, i32 2
  %7 = ptrtoint ptr %buf4 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %buf4, align 4
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %8 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %len, align 4
  %conv = zext i16 %9 to i32
  %count = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %i2c_dev, i32 0, i32 9, i32 1
  %10 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %conv, ptr %count, align 4
  %result = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %i2c_dev, i32 0, i32 9, i32 3
  %11 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %result, align 4
  %msg_id = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %i2c_dev, i32 0, i32 8
  %12 = ptrtoint ptr %msg_id to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %msg_id, align 8
  %msg_num = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %i2c_dev, i32 0, i32 7
  %14 = ptrtoint ptr %msg_num to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %msg_num, align 4
  %sub = add i32 %15, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %sub)
  %cmp = icmp uge i32 %13, %sub
  %stop = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %i2c_dev, i32 0, i32 9, i32 4
  %frombool = zext i1 %cmp to i8
  %16 = ptrtoint ptr %stop to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %frombool, ptr %stop, align 4
  %complete = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %i2c_dev, i32 0, i32 3
  %17 = ptrtoint ptr %complete to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %complete, align 4
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #11, !srcloc !262
  %add.ptr7 = getelementptr i8, ptr %1, i32 4
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7) #11, !srcloc !262
  %20 = and i32 %19, -262145
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %22 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %flags, align 2
  %24 = shl i16 %23, 10
  %25 = and i16 %24, 1024
  %26 = zext i16 %25 to i32
  %27 = or i32 %21, %26
  %28 = and i16 %23, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %28)
  %tobool16.not = icmp eq i16 %28, 0
  br i1 %tobool16.not, label %if.else, label %if.then17

if.then17:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %and18 = and i32 %27, -7168
  %29 = ptrtoint ptr %f7_msg1 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %f7_msg1, align 4
  %31 = and i16 %30, 1023
  %and21 = zext i16 %31 to i32
  %or22 = or i32 %and18, %and21
  %or23 = or i32 %or22, 2048
  br label %if.end29

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %and24 = and i32 %27, -6399
  %32 = ptrtoint ptr %f7_msg1 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %f7_msg1, align 4
  %34 = shl i16 %33, 1
  %35 = and i16 %34, 254
  %shl = zext i16 %35 to i32
  %or28 = or i32 %and24, %shl
  br label %if.end29

if.end29:                                         ; preds = %if.else, %if.then17
  %cr2.1 = phi i32 [ %or23, %if.then17 ], [ %or28, %if.else ]
  %36 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %count, align 4
  %use_dma = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %i2c_dev, i32 0, i32 18
  %38 = ptrtoint ptr %use_dma to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 0, ptr %use_dma, align 8
  %dma = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %i2c_dev, i32 0, i32 17
  %39 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dma, align 4
  %tobool45.not = icmp eq ptr %40, null
  br i1 %tobool45.not, label %if.end29.if.then67_crit_edge, label %land.lhs.true

if.end29.if.then67_crit_edge:                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then67

land.lhs.true:                                    ; preds = %if.end29
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %37)
  %cmp47 = icmp ugt i32 %37, 21
  br i1 %cmp47, label %if.then49, label %land.lhs.true.if.end64_crit_edge

land.lhs.true.if.end64_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end64

if.then49:                                        ; preds = %land.lhs.true
  %dev = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %i2c_dev, i32 0, i32 1
  %41 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev, align 8
  %43 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %flags, align 2
  %45 = and i16 %44, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %45)
  %tobool54 = icmp ne i16 %45, 0
  %46 = ptrtoint ptr %buf4 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %buf4, align 4
  %call57 = tail call i32 @stm32_i2c_prep_dma_xfer(ptr noundef %42, ptr noundef nonnull %40, i1 noundef zeroext %tobool54, i32 noundef %37, ptr noundef %47, ptr noundef nonnull @stm32f7_i2c_dma_callback, ptr noundef %i2c_dev) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %if.end64.thread147, label %do.end

if.end64.thread147:                               ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #13
  %48 = ptrtoint ptr %use_dma to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 1, ptr %use_dma, align 8
  br label %if.else77

do.end:                                           ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #13
  %49 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %50, ptr noundef nonnull @.str.40) #14
  br label %if.end64

if.end64:                                         ; preds = %do.end, %land.lhs.true.if.end64_crit_edge
  %51 = ptrtoint ptr %use_dma to i32
  call void @__asan_load1_noabort(i32 %51)
  %.pr = load i8, ptr %use_dma, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %tobool66.not = icmp eq i8 %.pr, 0
  br i1 %tobool66.not, label %if.end64.if.then67_crit_edge, label %if.end64.if.else77_crit_edge

if.end64.if.else77_crit_edge:                     ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else77

if.end64.if.then67_crit_edge:                     ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then67

if.then67:                                        ; preds = %if.end64.if.then67_crit_edge, %if.end29.if.then67_crit_edge
  %52 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %flags, align 2
  %54 = and i16 %53, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %54)
  %tobool71.not = icmp eq i16 %54, 0
  %. = select i1 %tobool71.not, i32 2, i32 4
  br label %if.end87

if.else77:                                        ; preds = %if.end64.if.else77_crit_edge, %if.end64.thread147
  %55 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %flags, align 2
  %57 = and i16 %56, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %57)
  %tobool81.not = icmp eq i16 %57, 0
  %.149 = select i1 %tobool81.not, i32 16384, i32 32768
  br label %if.end87

if.end87:                                         ; preds = %if.else77, %if.then67
  %.sink = phi i32 [ %., %if.then67 ], [ %.149, %if.else77 ]
  %58 = and i32 %18, 155189247
  %59 = or i32 %58, -268435456
  %60 = tail call i32 @llvm.bswap.i32(i32 %59)
  %or83 = or i32 %60, %.sink
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %37)
  %cmp32 = icmp ugt i32 %37, 255
  %or36 = or i32 %cr2.1, 33488896
  %and30 = and i32 %cr2.1, -33497089
  %and39 = shl i32 %37, 16
  %shl40 = and i32 %and39, 16711680
  %or41 = or i32 %shl40, %and30
  %cr2.2 = select i1 %cmp32, i32 %or36, i32 %or41
  %or88 = or i32 %cr2.2, 8192
  %master_mode = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %i2c_dev, i32 0, i32 16
  %61 = ptrtoint ptr %master_mode to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 1, ptr %master_mode, align 8
  %62 = tail call i32 @llvm.bswap.i32(i32 %or83)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 %62) #11, !srcloc !263
  %63 = tail call i32 @llvm.bswap.i32(i32 %or88)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 %63) #11, !srcloc !263
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stm32_i2c_prep_dma_xfer(ptr noundef, ptr noundef, i1 noundef zeroext, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stm32f7_i2c_dma_callback(ptr nocapture noundef readonly %arg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dma1 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %arg, i32 0, i32 17
  %0 = ptrtoint ptr %dma1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dma1, align 4
  %chan_using = getelementptr inbounds %struct.stm32_i2c_dma, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %chan_using to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chan_using, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %dev2 = getelementptr inbounds %struct.dma_device, ptr %5, i32 0, i32 15
  %6 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev2, align 4
  %base1.i = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %arg, i32 0, i32 2
  %8 = ptrtoint ptr %base1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base1.i, align 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #11, !srcloc !262
  %11 = and i32 %10, -12582913
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %11) #11, !srcloc !263
  %dma_buf = getelementptr inbounds %struct.stm32_i2c_dma, ptr %1, i32 0, i32 3
  %12 = ptrtoint ptr %dma_buf to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dma_buf, align 4
  %dma_len = getelementptr inbounds %struct.stm32_i2c_dma, ptr %1, i32 0, i32 4
  %14 = ptrtoint ptr %dma_len to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dma_len, align 4
  %dma_data_dir = getelementptr inbounds %struct.stm32_i2c_dma, ptr %1, i32 0, i32 6
  %16 = ptrtoint ptr %dma_data_dir to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dma_data_dir, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %7, i32 noundef %13, i32 noundef %15, i32 noundef %17, i32 noundef 0) #11
  %dma_complete = getelementptr inbounds %struct.stm32_i2c_dma, ptr %1, i32 0, i32 7
  tail call void @complete(ptr noundef %dma_complete) #11
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_handle_smbus_alert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_parse_fw_timings(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @stm32f7_i2c_compute_timing(ptr nocapture noundef %i2c_dev, ptr nocapture noundef readonly %setup, ptr nocapture noundef %output) unnamed_addr #2 align 64 {
entry:
  %solutions = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %clock_src = getelementptr inbounds %struct.stm32f7_i2c_setup, ptr %setup, i32 0, i32 1
  %0 = ptrtoint ptr %clock_src to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %clock_src, align 4
  %div460 = lshr i32 %1, 1
  %add = add nuw i32 %div460, 1000000000
  %div1 = udiv i32 %add, %1
  %2 = ptrtoint ptr %setup to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %setup, align 4
  %div5461 = lshr i32 %3, 1
  %add6 = add nuw i32 %div5461, 1000000000
  %div7 = udiv i32 %add6, %3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %solutions) #11
  %4 = getelementptr inbounds %struct.list_head, ptr %solutions, i32 0, i32 1
  %5 = load i32, ptr @stm32f7_i2c_specs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %3)
  %cmp2.not.i = icmp ult i32 %5, %3
  br i1 %cmp2.not.i, label %for.cond.i, label %entry.stm32f7_get_specs.exit_crit_edge

entry.stm32f7_get_specs.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %stm32f7_get_specs.exit

for.cond.i:                                       ; preds = %entry
  %6 = load i32, ptr getelementptr inbounds ([3 x %struct.stm32f7_i2c_spec], ptr @stm32f7_i2c_specs, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %3)
  %cmp2.not.1.i = icmp ult i32 %6, %3
  br i1 %cmp2.not.1.i, label %for.cond.1.i, label %for.cond.i.stm32f7_get_specs.exit_crit_edge

for.cond.i.stm32f7_get_specs.exit_crit_edge:      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %stm32f7_get_specs.exit

for.cond.1.i:                                     ; preds = %for.cond.i
  %7 = load i32, ptr getelementptr inbounds ([3 x %struct.stm32f7_i2c_spec], ptr @stm32f7_i2c_specs, i32 0, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %3)
  %cmp2.not.2.i = icmp ult i32 %7, %3
  br i1 %cmp2.not.2.i, label %for.cond.1.i.do.end_crit_edge, label %for.cond.1.i.stm32f7_get_specs.exit_crit_edge

for.cond.1.i.stm32f7_get_specs.exit_crit_edge:    ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %stm32f7_get_specs.exit

for.cond.1.i.do.end_crit_edge:                    ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

stm32f7_get_specs.exit:                           ; preds = %for.cond.1.i.stm32f7_get_specs.exit_crit_edge, %for.cond.i.stm32f7_get_specs.exit_crit_edge, %entry.stm32f7_get_specs.exit_crit_edge
  %cmp = phi i1 [ icmp eq (ptr getelementptr inbounds ([3 x %struct.stm32f7_i2c_spec], ptr @stm32f7_i2c_specs, i32 0, i32 2), ptr inttoptr (i32 -22 to ptr)), %for.cond.1.i.stm32f7_get_specs.exit_crit_edge ], [ icmp eq (ptr inttoptr (i32 -22 to ptr), ptr @stm32f7_i2c_specs), %entry.stm32f7_get_specs.exit_crit_edge ], [ icmp eq (ptr getelementptr inbounds ([3 x %struct.stm32f7_i2c_spec], ptr @stm32f7_i2c_specs, i32 0, i32 1), ptr inttoptr (i32 -22 to ptr)), %for.cond.i.stm32f7_get_specs.exit_crit_edge ]
  %retval.0.i470 = phi ptr [ getelementptr inbounds ([3 x %struct.stm32f7_i2c_spec], ptr @stm32f7_i2c_specs, i32 0, i32 2), %for.cond.1.i.stm32f7_get_specs.exit_crit_edge ], [ @stm32f7_i2c_specs, %entry.stm32f7_get_specs.exit_crit_edge ], [ getelementptr inbounds ([3 x %struct.stm32f7_i2c_spec], ptr @stm32f7_i2c_specs, i32 0, i32 1), %for.cond.i.stm32f7_get_specs.exit_crit_edge ]
  br i1 %cmp, label %stm32f7_get_specs.exit.do.end_crit_edge, label %if.end

stm32f7_get_specs.exit.do.end_crit_edge:          ; preds = %stm32f7_get_specs.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

do.end:                                           ; preds = %stm32f7_get_specs.exit.do.end_crit_edge, %for.cond.1.i.do.end_crit_edge
  %dev = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %i2c_dev, i32 0, i32 1
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.74, i32 noundef %3) #14
  br label %cleanup312

if.end:                                           ; preds = %stm32f7_get_specs.exit
  %rise_time = getelementptr inbounds %struct.stm32f7_i2c_setup, ptr %setup, i32 0, i32 2
  %10 = ptrtoint ptr %rise_time to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rise_time, align 4
  %rise_max = getelementptr inbounds %struct.stm32f7_i2c_spec, ptr %retval.0.i470, i32 0, i32 2
  %12 = ptrtoint ptr %rise_max to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rise_max, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %13)
  %cmp11 = icmp ugt i32 %11, %13
  br i1 %cmp11, label %if.end.do.end16_crit_edge, label %lor.lhs.false

if.end.do.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end16

lor.lhs.false:                                    ; preds = %if.end
  %fall_time = getelementptr inbounds %struct.stm32f7_i2c_setup, ptr %setup, i32 0, i32 3
  %14 = ptrtoint ptr %fall_time to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %fall_time, align 4
  %fall_max = getelementptr inbounds %struct.stm32f7_i2c_spec, ptr %retval.0.i470, i32 0, i32 1
  %16 = ptrtoint ptr %fall_max to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %fall_max, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %17)
  %cmp12 = icmp ugt i32 %15, %17
  br i1 %cmp12, label %lor.lhs.false.do.end16_crit_edge, label %if.end22

lor.lhs.false.do.end16_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end16

do.end16:                                         ; preds = %lor.lhs.false.do.end16_crit_edge, %if.end.do.end16_crit_edge
  %dev17 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %i2c_dev, i32 0, i32 1
  %18 = ptrtoint ptr %dev17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev17, align 8
  %fall_time20 = getelementptr inbounds %struct.stm32f7_i2c_setup, ptr %setup, i32 0, i32 3
  %20 = ptrtoint ptr %fall_time20 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %fall_time20, align 4
  %fall_max21 = getelementptr inbounds %struct.stm32f7_i2c_spec, ptr %retval.0.i470, i32 0, i32 1
  %22 = ptrtoint ptr %fall_max21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %fall_max21, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.77, i32 noundef %11, i32 noundef %13, i32 noundef %21, i32 noundef %23) #14
  br label %cleanup312

if.end22:                                         ; preds = %lor.lhs.false
  %dnf_dt = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %i2c_dev, i32 0, i32 27
  %24 = ptrtoint ptr %dnf_dt to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %dnf_dt, align 8
  %div26462 = lshr i32 %div1, 1
  %add27 = add i32 %25, %div26462
  %div28 = udiv i32 %add27, %div1
  %dnf = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %i2c_dev, i32 0, i32 28
  %26 = ptrtoint ptr %dnf to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %div28, ptr %dnf, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %div28)
  %cmp30 = icmp ugt i32 %div28, 15
  br i1 %cmp30, label %do.end34, label %if.end38

do.end34:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  %dev35 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %i2c_dev, i32 0, i32 1
  %27 = ptrtoint ptr %dev35 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev35, align 8
  %mul = mul i32 %div28, %div1
  %mul37 = mul i32 %div1, 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.80, i32 noundef %mul, i32 noundef %mul37) #14
  br label %cleanup312

if.end38:                                         ; preds = %if.end22
  %analog_filter = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %i2c_dev, i32 0, i32 26
  %29 = ptrtoint ptr %analog_filter to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %analog_filter, align 4, !range !260
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool.not = icmp eq i8 %30, 0
  %cond.neg529 = select i1 %tobool.not, i32 0, i32 -50
  %cond = select i1 %tobool.not, i32 0, i32 50
  %cond41.neg = select i1 %tobool.not, i32 0, i32 -260
  %mul43 = mul i32 %div28, %div1
  %hddat_min = getelementptr inbounds %struct.stm32f7_i2c_spec, ptr %retval.0.i470, i32 0, i32 3
  %31 = ptrtoint ptr %hddat_min to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %hddat_min, align 4
  %33 = ptrtoint ptr %fall_time to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %fall_time, align 4
  %add47.neg = sub nuw nsw i32 -3, %div28
  %mul48.neg528 = mul i32 %add47.neg, %div1
  %.neg = add i32 %32, %mul48.neg528
  %add45 = add i32 %.neg, %34
  %sub49 = add i32 %add45, %cond.neg529
  %vddat_max = getelementptr inbounds %struct.stm32f7_i2c_spec, ptr %retval.0.i470, i32 0, i32 4
  %35 = ptrtoint ptr %vddat_max to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %vddat_max, align 4
  %37 = ptrtoint ptr %rise_time to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %rise_time, align 4
  %add54.neg = sub nuw nsw i32 -4, %div28
  %mul55.neg530 = mul i32 %add54.neg, %div1
  %.neg501 = add i32 %cond41.neg, %mul55.neg530
  %39 = add i32 %.neg501, %36
  %sub56 = sub i32 %39, %38
  %sudat_min = getelementptr inbounds %struct.stm32f7_i2c_spec, ptr %retval.0.i470, i32 0, i32 5
  %40 = ptrtoint ptr %sudat_min to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %sudat_min, align 4
  %add58 = add i32 %41, %38
  %42 = tail call i32 @llvm.smax.i32(i32 %sub49, i32 0)
  %43 = tail call i32 @llvm.smax.i32(i32 %sub56, i32 0)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm32f7_i2c_compute_timing.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@stm32f7_i2c_compute_timing, %do.end76)) #11
          to label %if.then72 [label %do.end76], !srcloc !259

if.then72:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #13
  %dev73 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %i2c_dev, i32 0, i32 1
  %44 = ptrtoint ptr %dev73 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev73, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stm32f7_i2c_compute_timing.__UNIQUE_ID_ddebug291, ptr noundef %45, ptr noundef nonnull @.str.82, i32 noundef %42, i32 noundef %43, i32 noundef %add58) #11
  br label %do.end76

do.end76:                                         ; preds = %if.then72, %if.end38
  %46 = ptrtoint ptr %solutions to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile ptr %solutions, ptr %solutions, align 4
  %47 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %solutions, ptr %4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div1, i32 %42)
  %cmp105.not = icmp ult i32 %div1, %42
  call void @__sanitizer_cov_trace_cmp4(i32 %div1, i32 %43)
  %cmp107.not = icmp ugt i32 %div1, %43
  %or.cond = select i1 %cmp105.not, i1 true, i1 %cmp107.not
  br label %for.cond79.preheader

for.cond79.preheader:                             ; preds = %for.inc136.for.cond79.preheader_crit_edge, %do.end76
  %indvars.iv = phi i32 [ 0, %do.end76 ], [ %add87, %for.inc136.for.cond79.preheader_crit_edge ]
  %p_prev.0510 = phi i32 [ 16, %do.end76 ], [ %p_prev.6, %for.inc136.for.cond79.preheader_crit_edge ]
  %p.0507 = phi i16 [ 0, %do.end76 ], [ %inc137, %for.inc136.for.cond79.preheader_crit_edge ]
  %add87 = add nuw nsw i32 %indvars.iv, 1
  %mul88 = mul i32 %add87, %div1
  call void @__sanitizer_cov_trace_cmp4(i32 %p_prev.0510, i32 %indvars.iv)
  %cmp111.not = icmp eq i32 %p_prev.0510, %indvars.iv
  call void @__sanitizer_cov_trace_cmp4(i32 %p_prev.0510, i32 %indvars.iv)
  %cmp126 = icmp ne i32 %p_prev.0510, %indvars.iv
  %or.cond464 = select i1 %or.cond, i1 true, i1 %cmp111.not
  %add103.1 = add nuw nsw i32 %indvars.iv, 2
  %mul104.1 = mul i32 %add103.1, %div1
  call void @__sanitizer_cov_trace_cmp4(i32 %mul104.1, i32 %42)
  %cmp105.not.1 = icmp ult i32 %mul104.1, %42
  call void @__sanitizer_cov_trace_cmp4(i32 %mul104.1, i32 %43)
  %cmp107.not.1 = icmp ugt i32 %mul104.1, %43
  %or.cond.1 = select i1 %cmp105.not.1, i1 true, i1 %cmp107.not.1
  %or.cond464.1 = select i1 %or.cond.1, i1 true, i1 %cmp111.not
  %mul102.2 = shl nuw nsw i32 %add87, 1
  %add103.2 = or i32 %mul102.2, 1
  %mul104.2 = mul i32 %add103.2, %div1
  call void @__sanitizer_cov_trace_cmp4(i32 %mul104.2, i32 %42)
  %cmp105.not.2 = icmp ult i32 %mul104.2, %42
  call void @__sanitizer_cov_trace_cmp4(i32 %mul104.2, i32 %43)
  %cmp107.not.2 = icmp ugt i32 %mul104.2, %43
  %or.cond.2 = select i1 %cmp105.not.2, i1 true, i1 %cmp107.not.2
  %or.cond464.2 = select i1 %or.cond.2, i1 true, i1 %cmp111.not
  %mul102.3 = mul nuw nsw i32 %add87, 3
  %add103.3 = add nuw nsw i32 %mul102.3, 1
  %mul104.3 = mul i32 %add103.3, %div1
  call void @__sanitizer_cov_trace_cmp4(i32 %mul104.3, i32 %42)
  %cmp105.not.3 = icmp ult i32 %mul104.3, %42
  call void @__sanitizer_cov_trace_cmp4(i32 %mul104.3, i32 %43)
  %cmp107.not.3 = icmp ugt i32 %mul104.3, %43
  %or.cond.3 = select i1 %cmp105.not.3, i1 true, i1 %cmp107.not.3
  %or.cond464.3 = select i1 %or.cond.3, i1 true, i1 %cmp111.not
  %mul102.4 = shl nuw nsw i32 %add87, 2
  %add103.4 = or i32 %mul102.4, 1
  %mul104.4 = mul i32 %add103.4, %div1
  call void @__sanitizer_cov_trace_cmp4(i32 %mul104.4, i32 %42)
  %cmp105.not.4 = icmp ult i32 %mul104.4, %42
  call void @__sanitizer_cov_trace_cmp4(i32 %mul104.4, i32 %43)
  %cmp107.not.4 = icmp ugt i32 %mul104.4, %43
  %or.cond.4 = select i1 %cmp105.not.4, i1 true, i1 %cmp107.not.4
  %or.cond464.4 = select i1 %or.cond.4, i1 true, i1 %cmp111.not
  %mul102.5 = mul nuw nsw i32 %add87, 5
  %add103.5 = add nuw nsw i32 %mul102.5, 1
  %mul104.5 = mul i32 %add103.5, %div1
  call void @__sanitizer_cov_trace_cmp4(i32 %mul104.5, i32 %42)
  %cmp105.not.5 = icmp ult i32 %mul104.5, %42
  call void @__sanitizer_cov_trace_cmp4(i32 %mul104.5, i32 %43)
  %cmp107.not.5 = icmp ugt i32 %mul104.5, %43
  %or.cond.5 = select i1 %cmp105.not.5, i1 true, i1 %cmp107.not.5
  %or.cond464.5 = select i1 %or.cond.5, i1 true, i1 %cmp111.not
  %mul102.6 = mul nuw nsw i32 %add87, 6
  %add103.6 = or i32 %mul102.6, 1
  %mul104.6 = mul i32 %add103.6, %div1
  call void @__sanitizer_cov_trace_cmp4(i32 %mul104.6, i32 %42)
  %cmp105.not.6 = icmp ult i32 %mul104.6, %42
  call void @__sanitizer_cov_trace_cmp4(i32 %mul104.6, i32 %43)
  %cmp107.not.6 = icmp ugt i32 %mul104.6, %43
  %or.cond.6 = select i1 %cmp105.not.6, i1 true, i1 %cmp107.not.6
  %or.cond464.6 = select i1 %or.cond.6, i1 true, i1 %cmp111.not
  %mul102.7 = mul nuw nsw i32 %add87, 7
  %add103.7 = add nuw nsw i32 %mul102.7, 1
  %mul104.7 = mul i32 %add103.7, %div1
  call void @__sanitizer_cov_trace_cmp4(i32 %mul104.7, i32 %42)
  %cmp105.not.7 = icmp ult i32 %mul104.7, %42
  call void @__sanitizer_cov_trace_cmp4(i32 %mul104.7, i32 %43)
  %cmp107.not.7 = icmp ugt i32 %mul104.7, %43
  %or.cond.7 = select i1 %cmp105.not.7, i1 true, i1 %cmp107.not.7
  %or.cond464.7 = select i1 %or.cond.7, i1 true, i1 %cmp111.not
  %mul102.8 = shl nuw nsw i32 %add87, 3
  %add103.8 = or i32 %mul102.8, 1
  %mul104.8 = mul i32 %add103.8, %div1
  call void @__sanitizer_cov_trace_cmp4(i32 %mul104.8, i32 %42)
  %cmp105.not.8 = icmp ult i32 %mul104.8, %42
  call void @__sanitizer_cov_trace_cmp4(i32 %mul104.8, i32 %43)
  %cmp107.not.8 = icmp ugt i32 %mul104.8, %43
  %or.cond.8 = select i1 %cmp105.not.8, i1 true, i1 %cmp107.not.8
  %or.cond464.8 = select i1 %or.cond.8, i1 true, i1 %cmp111.not
  %mul102.9 = mul nuw nsw i32 %add87, 9
  %add103.9 = add nuw nsw i32 %mul102.9, 1
  %mul104.9 = mul i32 %add103.9, %div1
  call void @__sanitizer_cov_trace_cmp4(i32 %mul104.9, i32 %42)
  %cmp105.not.9 = icmp ult i32 %mul104.9, %42
  call void @__sanitizer_cov_trace_cmp4(i32 %mul104.9, i32 %43)
  %cmp107.not.9 = icmp ugt i32 %mul104.9, %43
  %or.cond.9 = select i1 %cmp105.not.9, i1 true, i1 %cmp107.not.9
  %or.cond464.9 = select i1 %or.cond.9, i1 true, i1 %cmp111.not
  %mul102.10 = mul nuw nsw i32 %add87, 10
  %add103.10 = or i32 %mul102.10, 1
  %mul104.10 = mul i32 %add103.10, %div1
  call void @__sanitizer_cov_trace_cmp4(i32 %mul104.10, i32 %42)
  %cmp105.not.10 = icmp ult i32 %mul104.10, %42
  call void @__sanitizer_cov_trace_cmp4(i32 %mul104.10, i32 %43)
  %cmp107.not.10 = icmp ugt i32 %mul104.10, %43
  %or.cond.10 = select i1 %cmp105.not.10, i1 true, i1 %cmp107.not.10
  %or.cond464.10 = select i1 %or.cond.10, i1 true, i1 %cmp111.not
  %mul102.11 = mul nuw nsw i32 %add87, 11
  %add103.11 = add nuw nsw i32 %mul102.11, 1
  %mul104.11 = mul i32 %add103.11, %div1
  call void @__sanitizer_cov_trace_cmp4(i32 %mul104.11, i32 %42)
  %cmp105.not.11 = icmp ult i32 %mul104.11, %42
  call void @__sanitizer_cov_trace_cmp4(i32 %mul104.11, i32 %43)
  %cmp107.not.11 = icmp ugt i32 %mul104.11, %43
  %or.cond.11 = select i1 %cmp105.not.11, i1 true, i1 %cmp107.not.11
  %or.cond464.11 = select i1 %or.cond.11, i1 true, i1 %cmp111.not
  %mul102.12 = mul nuw nsw i32 %add87, 12
  %add103.12 = or i32 %mul102.12, 1
  %mul104.12 = mul i32 %add103.12, %div1
  call void @__sanitizer_cov_trace_cmp4(i32 %mul104.12, i32 %42)
  %cmp105.not.12 = icmp ult i32 %mul104.12, %42
  call void @__sanitizer_cov_trace_cmp4(i32 %mul104.12, i32 %43)
  %cmp107.not.12 = icmp ugt i32 %mul104.12, %43
  %or.cond.12 = select i1 %cmp105.not.12, i1 true, i1 %cmp107.not.12
  %or.cond464.12 = select i1 %or.cond.12, i1 true, i1 %cmp111.not
  %mul102.13 = mul nuw nsw i32 %add87, 13
  %add103.13 = add nuw nsw i32 %mul102.13, 1
  %mul104.13 = mul i32 %add103.13, %div1
  call void @__sanitizer_cov_trace_cmp4(i32 %mul104.13, i32 %42)
  %cmp105.not.13 = icmp ult i32 %mul104.13, %42
  call void @__sanitizer_cov_trace_cmp4(i32 %mul104.13, i32 %43)
  %cmp107.not.13 = icmp ugt i32 %mul104.13, %43
  %or.cond.13 = select i1 %cmp105.not.13, i1 true, i1 %cmp107.not.13
  %or.cond464.13 = select i1 %or.cond.13, i1 true, i1 %cmp111.not
  %mul102.14 = mul nuw nsw i32 %add87, 14
  %add103.14 = or i32 %mul102.14, 1
  %mul104.14 = mul i32 %add103.14, %div1
  call void @__sanitizer_cov_trace_cmp4(i32 %mul104.14, i32 %42)
  %cmp105.not.14 = icmp ult i32 %mul104.14, %42
  call void @__sanitizer_cov_trace_cmp4(i32 %mul104.14, i32 %43)
  %cmp107.not.14 = icmp ugt i32 %mul104.14, %43
  %or.cond.14 = select i1 %cmp105.not.14, i1 true, i1 %cmp107.not.14
  %or.cond464.14 = select i1 %or.cond.14, i1 true, i1 %cmp111.not
  %mul102.15 = mul nuw nsw i32 %add87, 15
  %add103.15 = add nuw nsw i32 %mul102.15, 1
  %mul104.15 = mul i32 %add103.15, %div1
  call void @__sanitizer_cov_trace_cmp4(i32 %mul104.15, i32 %42)
  %cmp105.not.15 = icmp ult i32 %mul104.15, %42
  call void @__sanitizer_cov_trace_cmp4(i32 %mul104.15, i32 %43)
  %cmp107.not.15 = icmp ugt i32 %mul104.15, %43
  %or.cond.15 = select i1 %cmp105.not.15, i1 true, i1 %cmp107.not.15
  %or.cond464.15 = select i1 %or.cond.15, i1 true, i1 %cmp111.not
  %48 = select i1 %or.cond464, i1 %or.cond464.1, i1 false
  %49 = select i1 %48, i1 %or.cond464.2, i1 false
  %50 = select i1 %49, i1 %or.cond464.3, i1 false
  %51 = select i1 %50, i1 %or.cond464.4, i1 false
  %52 = select i1 %51, i1 %or.cond464.5, i1 false
  %53 = select i1 %52, i1 %or.cond464.6, i1 false
  %54 = select i1 %53, i1 %or.cond464.7, i1 false
  %55 = select i1 %54, i1 %or.cond464.8, i1 false
  %56 = select i1 %55, i1 %or.cond464.9, i1 false
  %57 = select i1 %56, i1 %or.cond464.10, i1 false
  %58 = select i1 %57, i1 %or.cond464.11, i1 false
  %59 = select i1 %58, i1 %or.cond464.12, i1 false
  %60 = select i1 %59, i1 %or.cond464.13, i1 false
  %61 = select i1 %60, i1 %or.cond464.14, i1 false
  %62 = select i1 %61, i1 %or.cond464.15, i1 false
  br label %for.body83

for.body83:                                       ; preds = %for.body83.backedge, %for.cond79.preheader
  %l.0505 = phi i16 [ 0, %for.cond79.preheader ], [ %l.0505.be, %for.body83.backedge ]
  %conv80 = zext i16 %l.0505 to i32
  %add85 = add nuw nsw i32 %conv80, 1
  %mul89 = mul i32 %mul88, %add85
  call void @__sanitizer_cov_trace_cmp4(i32 %mul89, i32 %add58)
  %cmp90 = icmp ult i32 %mul89, %add58
  br i1 %cmp90, label %for.inc133, label %for.body98.preheader

for.body98.preheader:                             ; preds = %for.body83
  br i1 %62, label %for.inc.15, label %if.then113

if.then113:                                       ; preds = %for.body98.preheader
  %.mux.le = zext i1 %or.cond464 to i8
  %.mux.mux.le = select i1 %48, i8 2, i8 %.mux.le
  %.mux.mux.mux.le = select i1 %49, i8 3, i8 %.mux.mux.le
  %.mux.mux.mux.mux.le = select i1 %50, i8 4, i8 %.mux.mux.mux.le
  %.mux.mux.mux.mux.mux.le = select i1 %51, i8 5, i8 %.mux.mux.mux.mux.le
  %.mux.mux.mux.mux.mux.mux.le = select i1 %52, i8 6, i8 %.mux.mux.mux.mux.mux.le
  %.mux.mux.mux.mux.mux.mux.mux.le = select i1 %53, i8 7, i8 %.mux.mux.mux.mux.mux.mux.le
  %.mux.mux.mux.mux.mux.mux.mux.mux.le = select i1 %54, i8 8, i8 %.mux.mux.mux.mux.mux.mux.mux.le
  %.mux.mux.mux.mux.mux.mux.mux.mux.mux.le = select i1 %55, i8 9, i8 %.mux.mux.mux.mux.mux.mux.mux.mux.le
  %.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.le = select i1 %56, i8 10, i8 %.mux.mux.mux.mux.mux.mux.mux.mux.mux.le
  %.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.le = select i1 %57, i8 11, i8 %.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.le
  %.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.le = select i1 %58, i8 12, i8 %.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.le
  %.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.le = select i1 %59, i8 13, i8 %.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.le
  %.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.le = select i1 %60, i8 14, i8 %.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.le
  %.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.le = select i1 %61, i8 15, i8 %.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.le
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %63 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %63, i32 noundef 3264, i32 noundef 16) #15
  %tobool115.not = icmp eq ptr %call7.i, null
  br i1 %tobool115.not, label %if.then113.exit_crit_edge, label %if.end117

if.then113.exit_crit_edge:                        ; preds = %if.then113
  call void @__sanitizer_cov_trace_pc() #13
  br label %exit

if.end117:                                        ; preds = %if.then113
  %conv118 = trunc i16 %p.0507 to i8
  %presc = getelementptr inbounds %struct.stm32f7_i2c_timings, ptr %call7.i, i32 0, i32 1
  %64 = ptrtoint ptr %presc to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %conv118, ptr %presc, align 8
  %conv119 = trunc i16 %l.0505 to i8
  %scldel120 = getelementptr inbounds %struct.stm32f7_i2c_timings, ptr %call7.i, i32 0, i32 2
  %65 = ptrtoint ptr %scldel120 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %conv119, ptr %scldel120, align 1
  %sdadel122 = getelementptr inbounds %struct.stm32f7_i2c_timings, ptr %call7.i, i32 0, i32 3
  %66 = ptrtoint ptr %sdadel122 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.le, ptr %sdadel122, align 2
  %67 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %4, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i, ptr noundef %68, ptr noundef nonnull %solutions) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.end117.for.inc136_crit_edge

if.end117.for.inc136_crit_edge:                   ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc136

if.end.i.i:                                       ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #13
  %69 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %call7.i, ptr %4, align 4
  %70 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %solutions, ptr %call7.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i, i32 0, i32 1
  %71 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %68, ptr %prev3.i.i, align 4
  %72 = ptrtoint ptr %68 to i32
  call void @__asan_store4_noabort(i32 %72)
  store volatile ptr %call7.i, ptr %68, align 4
  br label %for.inc136

for.inc.15:                                       ; preds = %for.body98.preheader
  %inc134 = add i16 %l.0505, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %inc134)
  %cmp81 = icmp ult i16 %inc134, 16
  %or.cond527 = select i1 %cmp126, i1 %cmp81, i1 false
  br i1 %or.cond527, label %for.inc.15.for.body83.backedge_crit_edge, label %for.inc.15.for.inc136_crit_edge

for.inc.15.for.inc136_crit_edge:                  ; preds = %for.inc.15
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc136

for.inc.15.for.body83.backedge_crit_edge:         ; preds = %for.inc.15
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body83.backedge

for.inc133:                                       ; preds = %for.body83
  %inc134.old = add i16 %l.0505, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %inc134.old)
  %cmp81.old = icmp ult i16 %inc134.old, 16
  br i1 %cmp81.old, label %for.inc133.for.body83.backedge_crit_edge, label %for.inc133.for.inc136_crit_edge

for.inc133.for.inc136_crit_edge:                  ; preds = %for.inc133
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc136

for.inc133.for.body83.backedge_crit_edge:         ; preds = %for.inc133
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body83.backedge

for.body83.backedge:                              ; preds = %for.inc133.for.body83.backedge_crit_edge, %for.inc.15.for.body83.backedge_crit_edge
  %l.0505.be = phi i16 [ %inc134.old, %for.inc133.for.body83.backedge_crit_edge ], [ %inc134, %for.inc.15.for.body83.backedge_crit_edge ]
  br label %for.body83

for.inc136:                                       ; preds = %for.inc133.for.inc136_crit_edge, %for.inc.15.for.inc136_crit_edge, %if.end.i.i, %if.end117.for.inc136_crit_edge
  %p_prev.6 = phi i32 [ %indvars.iv, %if.end117.for.inc136_crit_edge ], [ %indvars.iv, %if.end.i.i ], [ %p_prev.0510, %for.inc133.for.inc136_crit_edge ], [ %p_prev.0510, %for.inc.15.for.inc136_crit_edge ]
  %inc137 = add nuw nsw i16 %p.0507, 1
  %exitcond.not = icmp eq i32 %add87, 16
  br i1 %exitcond.not, label %for.end138, label %for.inc136.for.cond79.preheader_crit_edge

for.inc136.for.cond79.preheader_crit_edge:        ; preds = %for.inc136
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond79.preheader

for.end138:                                       ; preds = %for.inc136
  %73 = ptrtoint ptr %solutions to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load volatile ptr, ptr %solutions, align 4
  %cmp.i.not = icmp eq ptr %74, %solutions
  br i1 %cmp.i.not, label %do.end144, label %if.end146

do.end144:                                        ; preds = %for.end138
  call void @__sanitizer_cov_trace_pc() #13
  %dev145 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %i2c_dev, i32 0, i32 1
  %75 = ptrtoint ptr %dev145 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %dev145, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %76, ptr noundef nonnull @.str.84) #14
  br label %exit

if.end146:                                        ; preds = %for.end138
  %add147 = add i32 %cond, %mul43
  %mul148 = shl i32 %div1, 1
  %add149 = add i32 %add147, %mul148
  %77 = ptrtoint ptr %setup to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %setup, align 4
  %mul151 = shl i32 %78, 3
  %div152 = udiv i32 %mul151, 10
  %div153 = udiv i32 1000000000, %div152
  %div155 = udiv i32 1000000000, %78
  %79 = ptrtoint ptr %solutions to i32
  call void @__asan_load4_noabort(i32 %79)
  %v.0519 = load ptr, ptr %solutions, align 4
  %cmp159.not520 = icmp eq ptr %v.0519, %solutions
  br i1 %cmp159.not520, label %if.end146.do.end246_crit_edge, label %for.body163.lr.ph

if.end146.do.end246_crit_edge:                    ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end246

for.body163.lr.ph:                                ; preds = %if.end146
  %l_min = getelementptr inbounds %struct.stm32f7_i2c_spec, ptr %retval.0.i470, i32 0, i32 6
  %h_min = getelementptr inbounds %struct.stm32f7_i2c_spec, ptr %retval.0.i470, i32 0, i32 7
  br label %for.body163

for.cond157.loopexit:                             ; preds = %cleanup229
  %80 = ptrtoint ptr %v.0523 to i32
  call void @__asan_load4_noabort(i32 %80)
  %v.0 = load ptr, ptr %v.0523, align 4
  %cmp159.not = icmp eq ptr %v.0, %solutions
  br i1 %cmp159.not, label %for.end241, label %for.cond157.loopexit.for.body163_crit_edge

for.cond157.loopexit.for.body163_crit_edge:       ; preds = %for.cond157.loopexit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body163

for.body163:                                      ; preds = %for.cond157.loopexit.for.body163_crit_edge, %for.body163.lr.ph
  %v.0523 = phi ptr [ %v.0519, %for.body163.lr.ph ], [ %v.0, %for.cond157.loopexit.for.body163_crit_edge ]
  %clk_error_prev.0522 = phi i32 [ %div7, %for.body163.lr.ph ], [ %clk_error_prev.5, %for.cond157.loopexit.for.body163_crit_edge ]
  %s.0521 = phi ptr [ null, %for.body163.lr.ph ], [ %s.5, %for.cond157.loopexit.for.body163_crit_edge ]
  %presc164 = getelementptr inbounds %struct.stm32f7_i2c_timings, ptr %v.0523, i32 0, i32 1
  %81 = ptrtoint ptr %presc164 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %presc164, align 4
  %conv165 = zext i8 %82 to i32
  %add166 = add nuw nsw i32 %conv165, 1
  %mul167 = mul i32 %add166, %div1
  %scll = getelementptr inbounds %struct.stm32f7_i2c_timings, ptr %v.0523, i32 0, i32 5
  %sclh = getelementptr inbounds %struct.stm32f7_i2c_timings, ptr %v.0523, i32 0, i32 4
  br label %for.body172

for.body172:                                      ; preds = %cleanup229.for.body172_crit_edge, %for.body163
  %indvars.iv536 = phi i32 [ 0, %for.body163 ], [ %add174, %cleanup229.for.body172_crit_edge ]
  %clk_error_prev.1518 = phi i32 [ %clk_error_prev.0522, %for.body163 ], [ %clk_error_prev.5, %cleanup229.for.body172_crit_edge ]
  %s.1517 = phi ptr [ %s.0521, %for.body163 ], [ %s.5, %cleanup229.for.body172_crit_edge ]
  %l.1515 = phi i16 [ 0, %for.body163 ], [ %inc233, %cleanup229.for.body172_crit_edge ]
  %add174 = add nuw nsw i32 %indvars.iv536, 1
  %mul175 = mul i32 %add174, %mul167
  %add176 = add i32 %mul175, %add149
  %83 = ptrtoint ptr %l_min to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %l_min, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add176, i32 %84)
  %cmp177 = icmp uge i32 %add176, %84
  %sub181 = sub i32 %add176, %add147
  %div182463 = lshr i32 %sub181, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %div1, i32 %div182463)
  %cmp183.not = icmp ult i32 %div1, %div182463
  %or.cond499 = select i1 %cmp177, i1 %cmp183.not, i1 false
  br i1 %or.cond499, label %for.cond187.preheader, label %for.body172.cleanup229_crit_edge

for.body172.cleanup229_crit_edge:                 ; preds = %for.body172
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup229

for.cond187.preheader:                            ; preds = %for.body172
  %conv222 = trunc i16 %l.1515 to i8
  br label %for.body191

for.body191:                                      ; preds = %if.end225.for.body191_crit_edge, %for.cond187.preheader
  %indvars.iv533 = phi i32 [ 0, %for.cond187.preheader ], [ %indvars.iv.next534, %if.end225.for.body191_crit_edge ]
  %clk_error_prev.2514 = phi i32 [ %clk_error_prev.1518, %for.cond187.preheader ], [ %clk_error_prev.4, %if.end225.for.body191_crit_edge ]
  %s.2513 = phi ptr [ %s.1517, %for.cond187.preheader ], [ %s.4, %if.end225.for.body191_crit_edge ]
  %h.0512 = phi i16 [ 0, %for.cond187.preheader ], [ %inc227, %if.end225.for.body191_crit_edge ]
  %indvars.iv.next534 = add nuw nsw i32 %indvars.iv533, 1
  %mul194 = mul i32 %mul167, %indvars.iv.next534
  %add195 = add i32 %mul194, %add149
  %add196 = add i32 %add195, %add176
  %85 = ptrtoint ptr %rise_time to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %rise_time, align 4
  %add198 = add i32 %add196, %86
  %87 = ptrtoint ptr %fall_time to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %fall_time, align 4
  %add200 = add i32 %add198, %88
  call void @__sanitizer_cov_trace_cmp4(i32 %add200, i32 %div155)
  %cmp201.not = icmp ult i32 %add200, %div155
  call void @__sanitizer_cov_trace_cmp4(i32 %add200, i32 %div153)
  %cmp204.not = icmp ugt i32 %add200, %div153
  %or.cond465 = select i1 %cmp201.not, i1 true, i1 %cmp204.not
  br i1 %or.cond465, label %for.body191.if.end225_crit_edge, label %land.lhs.true206

for.body191.if.end225_crit_edge:                  ; preds = %for.body191
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end225

land.lhs.true206:                                 ; preds = %for.body191
  %89 = ptrtoint ptr %h_min to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %h_min, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add195, i32 %90)
  %cmp207.not = icmp uge i32 %add195, %90
  call void @__sanitizer_cov_trace_cmp4(i32 %div1, i32 %add195)
  %cmp210 = icmp ult i32 %div1, %add195
  %or.cond466 = select i1 %cmp207.not, i1 %cmp210, i1 false
  br i1 %or.cond466, label %if.then212, label %land.lhs.true206.if.end225_crit_edge

land.lhs.true206.if.end225_crit_edge:             ; preds = %land.lhs.true206
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end225

if.then212:                                       ; preds = %land.lhs.true206
  %sub213 = sub i32 %add200, %div7
  %91 = call i32 @llvm.abs.i32(i32 %sub213, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %91, i32 %clk_error_prev.2514)
  %cmp219 = icmp ult i32 %91, %clk_error_prev.2514
  br i1 %cmp219, label %if.then221, label %if.then212.if.end225_crit_edge

if.then212.if.end225_crit_edge:                   ; preds = %if.then212
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end225

if.then221:                                       ; preds = %if.then212
  call void @__sanitizer_cov_trace_pc() #13
  %92 = ptrtoint ptr %scll to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 %conv222, ptr %scll, align 4
  %conv223 = trunc i16 %h.0512 to i8
  %93 = ptrtoint ptr %sclh to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 %conv223, ptr %sclh, align 1
  br label %if.end225

if.end225:                                        ; preds = %if.then221, %if.then212.if.end225_crit_edge, %land.lhs.true206.if.end225_crit_edge, %for.body191.if.end225_crit_edge
  %s.4 = phi ptr [ %s.2513, %land.lhs.true206.if.end225_crit_edge ], [ %s.2513, %for.body191.if.end225_crit_edge ], [ %v.0523, %if.then221 ], [ %s.2513, %if.then212.if.end225_crit_edge ]
  %clk_error_prev.4 = phi i32 [ %clk_error_prev.2514, %land.lhs.true206.if.end225_crit_edge ], [ %clk_error_prev.2514, %for.body191.if.end225_crit_edge ], [ %91, %if.then221 ], [ %clk_error_prev.2514, %if.then212.if.end225_crit_edge ]
  %inc227 = add nuw nsw i16 %h.0512, 1
  %exitcond535.not = icmp eq i32 %indvars.iv.next534, 256
  br i1 %exitcond535.not, label %if.end225.cleanup229_crit_edge, label %if.end225.for.body191_crit_edge

if.end225.for.body191_crit_edge:                  ; preds = %if.end225
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body191

if.end225.cleanup229_crit_edge:                   ; preds = %if.end225
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup229

cleanup229:                                       ; preds = %if.end225.cleanup229_crit_edge, %for.body172.cleanup229_crit_edge
  %s.5 = phi ptr [ %s.1517, %for.body172.cleanup229_crit_edge ], [ %s.4, %if.end225.cleanup229_crit_edge ]
  %clk_error_prev.5 = phi i32 [ %clk_error_prev.1518, %for.body172.cleanup229_crit_edge ], [ %clk_error_prev.4, %if.end225.cleanup229_crit_edge ]
  %inc233 = add nuw nsw i16 %l.1515, 1
  %exitcond538.not = icmp eq i32 %add174, 256
  br i1 %exitcond538.not, label %for.cond157.loopexit, label %cleanup229.for.body172_crit_edge

cleanup229.for.body172_crit_edge:                 ; preds = %cleanup229
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body172

for.end241:                                       ; preds = %for.cond157.loopexit
  %tobool242.not = icmp eq ptr %s.5, null
  br i1 %tobool242.not, label %for.end241.do.end246_crit_edge, label %if.end248

for.end241.do.end246_crit_edge:                   ; preds = %for.end241
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end246

do.end246:                                        ; preds = %for.end241.do.end246_crit_edge, %if.end146.do.end246_crit_edge
  %dev247 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %i2c_dev, i32 0, i32 1
  %94 = ptrtoint ptr %dev247 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %dev247, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %95, ptr noundef nonnull @.str.87) #14
  br label %exit

if.end248:                                        ; preds = %for.end241
  call void @__sanitizer_cov_trace_pc() #13
  %presc249 = getelementptr inbounds %struct.stm32f7_i2c_timings, ptr %s.5, i32 0, i32 1
  %96 = ptrtoint ptr %presc249 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %presc249, align 4
  %presc250 = getelementptr inbounds %struct.stm32f7_i2c_timings, ptr %output, i32 0, i32 1
  %98 = ptrtoint ptr %presc250 to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 %97, ptr %presc250, align 4
  %scldel251 = getelementptr inbounds %struct.stm32f7_i2c_timings, ptr %s.5, i32 0, i32 2
  %99 = ptrtoint ptr %scldel251 to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %scldel251, align 1
  %scldel252 = getelementptr inbounds %struct.stm32f7_i2c_timings, ptr %output, i32 0, i32 2
  %101 = ptrtoint ptr %scldel252 to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 %100, ptr %scldel252, align 1
  %sdadel253 = getelementptr inbounds %struct.stm32f7_i2c_timings, ptr %s.5, i32 0, i32 3
  %102 = ptrtoint ptr %sdadel253 to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %sdadel253, align 2
  %sdadel254 = getelementptr inbounds %struct.stm32f7_i2c_timings, ptr %output, i32 0, i32 3
  %104 = ptrtoint ptr %sdadel254 to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 %103, ptr %sdadel254, align 2
  %scll255 = getelementptr inbounds %struct.stm32f7_i2c_timings, ptr %s.5, i32 0, i32 5
  %105 = ptrtoint ptr %scll255 to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %scll255, align 4
  %scll256 = getelementptr inbounds %struct.stm32f7_i2c_timings, ptr %output, i32 0, i32 5
  %107 = ptrtoint ptr %scll256 to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 %106, ptr %scll256, align 4
  %sclh257 = getelementptr inbounds %struct.stm32f7_i2c_timings, ptr %s.5, i32 0, i32 4
  %108 = ptrtoint ptr %sclh257 to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %sclh257, align 1
  %sclh258 = getelementptr inbounds %struct.stm32f7_i2c_timings, ptr %output, i32 0, i32 4
  %110 = ptrtoint ptr %sclh258 to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 %109, ptr %sclh258, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm32f7_i2c_compute_timing.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@stm32f7_i2c_compute_timing, %exit)) #11
          to label %if.then273 [label %exit], !srcloc !259

if.then273:                                       ; preds = %if.end248
  call void @__sanitizer_cov_trace_pc() #13
  %dev274 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %i2c_dev, i32 0, i32 1
  %111 = ptrtoint ptr %dev274 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %dev274, align 8
  %113 = ptrtoint ptr %presc250 to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %presc250, align 4
  %conv276 = zext i8 %114 to i32
  %115 = ptrtoint ptr %scldel252 to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %scldel252, align 1
  %conv278 = zext i8 %116 to i32
  %117 = ptrtoint ptr %sdadel254 to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %sdadel254, align 2
  %conv280 = zext i8 %118 to i32
  %119 = ptrtoint ptr %scll256 to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %scll256, align 4
  %conv282 = zext i8 %120 to i32
  %121 = ptrtoint ptr %sclh258 to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %sclh258, align 1
  %conv284 = zext i8 %122 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stm32f7_i2c_compute_timing.__UNIQUE_ID_ddebug292, ptr noundef %112, ptr noundef nonnull @.str.89, i32 noundef %conv276, i32 noundef %conv278, i32 noundef %conv280, i32 noundef %conv282, i32 noundef %conv284) #11
  br label %exit

exit:                                             ; preds = %if.then273, %if.end248, %do.end246, %do.end144, %if.then113.exit_crit_edge
  %ret.7 = phi i32 [ -1, %do.end144 ], [ 0, %if.then273 ], [ -1, %do.end246 ], [ 0, %if.end248 ], [ -12, %if.then113.exit_crit_edge ]
  %123 = ptrtoint ptr %solutions to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %solutions, align 4
  %cmp299.not524 = icmp eq ptr %124, %solutions
  br i1 %cmp299.not524, label %exit.cleanup312_crit_edge, label %exit.for.body303_crit_edge

exit.for.body303_crit_edge:                       ; preds = %exit
  br label %for.body303

exit.cleanup312_crit_edge:                        ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup312

for.body303:                                      ; preds = %list_del.exit.for.body303_crit_edge, %exit.for.body303_crit_edge
  %v.1525 = phi ptr [ %_v.0, %list_del.exit.for.body303_crit_edge ], [ %124, %exit.for.body303_crit_edge ]
  %125 = ptrtoint ptr %v.1525 to i32
  call void @__asan_load4_noabort(i32 %125)
  %_v.0 = load ptr, ptr %v.1525, align 4
  %call.i.i472 = call zeroext i1 @__list_del_entry_valid(ptr noundef %v.1525) #11
  br i1 %call.i.i472, label %if.end.i.i473, label %for.body303.list_del.exit_crit_edge

for.body303.list_del.exit_crit_edge:              ; preds = %for.body303
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit

if.end.i.i473:                                    ; preds = %for.body303
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %v.1525, i32 0, i32 1
  %126 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %prev.i.i, align 4
  %128 = ptrtoint ptr %v.1525 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %v.1525, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %129, i32 0, i32 1
  %130 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr %127, ptr %prev1.i.i.i, align 4
  %131 = ptrtoint ptr %127 to i32
  call void @__asan_store4_noabort(i32 %131)
  store volatile ptr %129, ptr %127, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i473, %for.body303.list_del.exit_crit_edge
  %132 = ptrtoint ptr %v.1525 to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr inttoptr (i32 256 to ptr), ptr %v.1525, align 4
  %prev.i474 = getelementptr inbounds %struct.list_head, ptr %v.1525, i32 0, i32 1
  %133 = ptrtoint ptr %prev.i474 to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i474, align 4
  call void @kfree(ptr noundef %v.1525) #11
  %cmp299.not = icmp eq ptr %_v.0, %solutions
  br i1 %cmp299.not, label %list_del.exit.cleanup312_crit_edge, label %list_del.exit.for.body303_crit_edge

list_del.exit.for.body303_crit_edge:              ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body303

list_del.exit.cleanup312_crit_edge:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup312

cleanup312:                                       ; preds = %list_del.exit.cleanup312_crit_edge, %exit.cleanup312_crit_edge, %do.end34, %do.end16, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end16 ], [ -22, %do.end34 ], [ %ret.7, %exit.cleanup312_crit_edge ], [ %ret.7, %list_del.exit.cleanup312_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %solutions) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_phandle(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_u32_index(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32f7_i2c_xfer(ptr nocapture noundef readonly %i2c_adap, ptr noundef %msgs, i32 noundef %num) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %i2c_adap, i32 0, i32 9, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dma2 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %dma2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dma2, align 4
  %msg = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %msgs, ptr %msg, align 8
  %msg_num = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %1, i32 0, i32 7
  %5 = ptrtoint ptr %msg_num to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %num, ptr %msg_num, align 4
  %msg_id = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %msg_id to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %msg_id, align 8
  %smbus = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %1, i32 0, i32 9, i32 5
  %7 = ptrtoint ptr %smbus to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %smbus, align 1
  %dev = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 8
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %9, i32 noundef 4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.end

if.then.i:                                        ; preds = %entry
  %usage_count.i.i = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !264
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #11
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #11, !srcloc !265
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.cleanup_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !266
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = tail call fastcc i32 @stm32f7_i2c_wait_free_bus(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end6, label %if.end.pm_free_crit_edge

if.end.pm_free_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %pm_free

if.end6:                                          ; preds = %if.end
  tail call fastcc void @stm32f7_i2c_xfer_msg(ptr noundef %1, ptr noundef %msgs)
  %complete = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %1, i32 0, i32 3
  %timeout = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 7
  %11 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %timeout, align 4
  %call7 = tail call i32 @wait_for_completion_timeout(ptr noundef %complete, i32 noundef %12) #11
  %result = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %1, i32 0, i32 9, i32 3
  %13 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %result, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool8.not = icmp eq i32 %14, 0
  br i1 %tobool8.not, label %if.end13, label %if.then9

if.then9:                                         ; preds = %if.end6
  %use_dma = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %1, i32 0, i32 18
  %15 = ptrtoint ptr %use_dma to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %use_dma, align 8, !range !260
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool10.not = icmp eq i8 %16, 0
  br i1 %tobool10.not, label %if.then9.if.end12_crit_edge, label %if.then11

if.then9.if.end12_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12

if.then11:                                        ; preds = %if.then9
  %chan_using = getelementptr inbounds %struct.stm32_i2c_dma, ptr %3, i32 0, i32 2
  %17 = ptrtoint ptr %chan_using to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %chan_using, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.93, i32 noundef 1169) #11
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  %device_synchronize.i = getelementptr inbounds %struct.dma_device, ptr %20, i32 0, i32 48
  %21 = ptrtoint ptr %device_synchronize.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %device_synchronize.i, align 4
  %tobool.not.i = icmp eq ptr %22, null
  br i1 %tobool.not.i, label %if.then11.if.end12_crit_edge, label %if.then.i69

if.then11.if.end12_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12

if.then.i69:                                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #13
  tail call void %22(ptr noundef %18) #11
  br label %if.end12

if.end12:                                         ; preds = %if.then.i69, %if.then11.if.end12_crit_edge, %if.then9.if.end12_crit_edge
  %base = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %1, i32 0, i32 2
  %23 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %24, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 16777216) #11, !srcloc !263
  br label %pm_free

if.end13:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool14.not = icmp eq i32 %call7, 0
  br i1 %tobool14.not, label %do.body, label %if.end13.pm_free_crit_edge

if.end13.pm_free_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %pm_free

do.body:                                          ; preds = %if.end13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm32f7_i2c_xfer.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@stm32f7_i2c_xfer, %do.end)) #11
          to label %if.then21 [label %do.end], !srcloc !259

if.then21:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %25 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev, align 8
  %27 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %msg, align 8
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %28, align 4
  %conv = zext i16 %30 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stm32f7_i2c_xfer.__UNIQUE_ID_ddebug301, ptr noundef %26, ptr noundef nonnull @.str.92, i32 noundef %conv) #11
  br label %do.end

do.end:                                           ; preds = %if.then21, %do.body
  %use_dma25 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %1, i32 0, i32 18
  %31 = ptrtoint ptr %use_dma25 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %use_dma25, align 8, !range !260
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool26.not = icmp eq i8 %32, 0
  br i1 %tobool26.not, label %do.end.if.end30_crit_edge, label %if.then27

do.end.if.end30_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end30

if.then27:                                        ; preds = %do.end
  %chan_using28 = getelementptr inbounds %struct.stm32_i2c_dma, ptr %3, i32 0, i32 2
  %33 = ptrtoint ptr %chan_using28 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %chan_using28, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %34, align 4
  %device_terminate_all.i.i = getelementptr inbounds %struct.dma_device, ptr %36, i32 0, i32 47
  %37 = ptrtoint ptr %device_terminate_all.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %device_terminate_all.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %38, null
  br i1 %tobool.not.i.i, label %if.then27.if.end30_crit_edge, label %dmaengine_terminate_async.exit.i

if.then27.if.end30_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end30

dmaengine_terminate_async.exit.i:                 ; preds = %if.then27
  %call.i.i = tail call i32 %38(ptr noundef %34) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i70 = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i70, label %if.end.i, label %dmaengine_terminate_async.exit.i.if.end30_crit_edge

dmaengine_terminate_async.exit.i.if.end30_crit_edge: ; preds = %dmaengine_terminate_async.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end30

if.end.i:                                         ; preds = %dmaengine_terminate_async.exit.i
  tail call void @__might_sleep(ptr noundef nonnull @.str.93, i32 noundef 1169) #11
  %39 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %34, align 4
  %device_synchronize.i.i = getelementptr inbounds %struct.dma_device, ptr %40, i32 0, i32 48
  %41 = ptrtoint ptr %device_synchronize.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %device_synchronize.i.i, align 4
  %tobool.not.i1.i = icmp eq ptr %42, null
  br i1 %tobool.not.i1.i, label %if.end.i.if.end30_crit_edge, label %if.then.i2.i

if.end.i.if.end30_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end30

if.then.i2.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void %42(ptr noundef %34) #11
  br label %if.end30

if.end30:                                         ; preds = %if.then.i2.i, %if.end.i.if.end30_crit_edge, %dmaengine_terminate_async.exit.i.if.end30_crit_edge, %if.then27.if.end30_crit_edge, %do.end.if.end30_crit_edge
  %call31 = tail call fastcc i32 @stm32f7_i2c_wait_free_bus(ptr noundef %1)
  br label %pm_free

pm_free:                                          ; preds = %if.end30, %if.end13.pm_free_crit_edge, %if.end12, %if.end.pm_free_crit_edge
  %ret.0 = phi i32 [ %call4, %if.end.pm_free_crit_edge ], [ %14, %if.end12 ], [ 0, %if.end13.pm_free_crit_edge ], [ -110, %if.end30 ]
  %43 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev, align 8
  %call.i71 = tail call i64 @ktime_get_mono_fast_ns() #11
  %last_busy.i = getelementptr inbounds %struct.device, ptr %44, i32 0, i32 12, i32 22
  %45 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %45)
  store volatile i64 %call.i71, ptr %last_busy.i, align 8
  %46 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev, align 8
  %call.i72 = tail call i32 @__pm_runtime_suspend(ptr noundef %47, i32 noundef 13) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %cmp36 = icmp slt i32 %ret.0, 0
  %spec.select = select i1 %cmp36, i32 %ret.0, i32 %num
  br label %cleanup

cleanup:                                          ; preds = %pm_free, %do.end11.i.i.i.i.i, %if.then.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.then.i.cleanup_crit_edge ], [ %call.i, %do.end11.i.i.i.i.i ], [ %spec.select, %pm_free ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32f7_i2c_smbus_xfer(ptr nocapture noundef readonly %adapter, i16 noundef zeroext %addr, i16 noundef zeroext %flags, i8 noundef zeroext %read_write, i8 noundef zeroext %command, i32 noundef %size, ptr nocapture noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %adapter, i32 0, i32 9, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %f7_msg1 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %1, i32 0, i32 9
  %dma2 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %dma2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dma2, align 4
  %dev3 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev3, align 8
  %6 = ptrtoint ptr %f7_msg1 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %addr, ptr %f7_msg1, align 4
  %size5 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %1, i32 0, i32 9, i32 6
  %7 = ptrtoint ptr %size5 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %size, ptr %size5, align 4
  %read_write6 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %1, i32 0, i32 9, i32 7
  %8 = ptrtoint ptr %read_write6 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %read_write, ptr %read_write6, align 4
  %smbus = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %1, i32 0, i32 9, i32 5
  %9 = ptrtoint ptr %smbus to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %smbus, align 1
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %5, i32 noundef 4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.end

if.then.i:                                        ; preds = %entry
  %usage_count.i.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !264
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #11
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #11, !srcloc !265
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.cleanup_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !266
  br label %cleanup

if.end:                                           ; preds = %entry
  %call8 = tail call fastcc i32 @stm32f7_i2c_wait_free_bus(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %if.end10, label %if.end.pm_free_crit_edge

if.end.pm_free_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %pm_free

if.end10:                                         ; preds = %if.end
  %11 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev3, align 8
  %base3.i = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %1, i32 0, i32 2
  %13 = ptrtoint ptr %base3.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base3.i, align 4
  %result.i = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %1, i32 0, i32 9, i32 3
  %15 = ptrtoint ptr %result.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %result.i, align 4
  %complete.i = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %1, i32 0, i32 3
  %16 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %complete.i, align 4
  %add.ptr.i = getelementptr i8, ptr %14, i32 4
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !262
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #11, !srcloc !262
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #11
  %20 = and i32 %17, -262145
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #11
  %22 = ptrtoint ptr %read_write6 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %read_write6, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool.not.i = icmp eq i8 %23, 0
  %or.i = or i32 %21, 1024
  %spec.select.i = select i1 %tobool.not.i, i32 %21, i32 %or.i
  %and8.i = and i32 %spec.select.i, -2303
  %24 = ptrtoint ptr %f7_msg1 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %f7_msg1, align 4
  %26 = shl i16 %25, 1
  %27 = and i16 %26, 254
  %shl.i = zext i16 %27 to i32
  %or10.i = or i32 %and8.i, %shl.i
  %smbus_buf.i = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %1, i32 0, i32 9, i32 9
  %28 = ptrtoint ptr %smbus_buf.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %command, ptr %smbus_buf.i, align 4
  %29 = ptrtoint ptr %size5 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %size5, align 4
  %31 = zext i32 %30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.126)
  switch i32 %30, label %do.end123.i [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb11.i
    i32 2, label %sw.bb14.i
    i32 3, label %sw.bb26.i
    i32 5, label %sw.bb46.i
    i32 4, label %sw.bb74.i
    i32 7, label %sw.bb89.i
    i32 8, label %if.end10.pm_free_crit_edge
  ]

if.end10.pm_free_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %pm_free

sw.bb.i:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  %stop.i = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %1, i32 0, i32 9, i32 4
  %32 = ptrtoint ptr %stop.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 1, ptr %stop.i, align 4
  %count.i = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %1, i32 0, i32 9, i32 1
  %33 = ptrtoint ptr %count.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %count.i, align 4
  br label %sw.epilog.i

sw.bb11.i:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  %stop12.i = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %1, i32 0, i32 9, i32 4
  %34 = ptrtoint ptr %stop12.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 1, ptr %stop12.i, align 4
  %count13.i = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %1, i32 0, i32 9, i32 1
  %35 = ptrtoint ptr %count13.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 1, ptr %count13.i, align 4
  br label %sw.epilog.i

sw.bb14.i:                                        ; preds = %if.end10
  %stop21.i = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %1, i32 0, i32 9, i32 4
  br i1 %tobool.not.i, label %if.else.i, label %if.then17.i

if.then17.i:                                      ; preds = %sw.bb14.i
  call void @__sanitizer_cov_trace_pc() #13
  %36 = ptrtoint ptr %stop21.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 0, ptr %stop21.i, align 4
  %count19.i = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %1, i32 0, i32 9, i32 1
  %37 = ptrtoint ptr %count19.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 1, ptr %count19.i, align 4
  %and20.i = and i32 %or10.i, -3073
  br label %sw.epilog.i

if.else.i:                                        ; preds = %sw.bb14.i
  call void @__sanitizer_cov_trace_pc() #13
  %38 = ptrtoint ptr %stop21.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 1, ptr %stop21.i, align 4
  %count22.i = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %1, i32 0, i32 9, i32 1
  %39 = ptrtoint ptr %count22.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 2, ptr %count22.i, align 4
  %40 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %data, align 2
  %arrayidx24.i = getelementptr %struct.stm32f7_i2c_dev, ptr %1, i32 0, i32 9, i32 9, i32 1
  %42 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %41, ptr %arrayidx24.i, align 1
  br label %sw.epilog.i

sw.bb26.i:                                        ; preds = %if.end10
  %stop34.i = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %1, i32 0, i32 9, i32 4
  br i1 %tobool.not.i, label %if.else33.i, label %if.then29.i

if.then29.i:                                      ; preds = %sw.bb26.i
  call void @__sanitizer_cov_trace_pc() #13
  %43 = ptrtoint ptr %stop34.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 0, ptr %stop34.i, align 4
  %count31.i = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %1, i32 0, i32 9, i32 1
  %44 = ptrtoint ptr %count31.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 1, ptr %count31.i, align 4
  %and32.i = and i32 %or10.i, -3073
  br label %sw.epilog.i

if.else33.i:                                      ; preds = %sw.bb26.i
  call void @__sanitizer_cov_trace_pc() #13
  %45 = ptrtoint ptr %stop34.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 1, ptr %stop34.i, align 4
  %count35.i = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %1, i32 0, i32 9, i32 1
  %46 = ptrtoint ptr %count35.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 3, ptr %count35.i, align 4
  %47 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %data, align 2
  %conv38.i = trunc i16 %48 to i8
  %arrayidx40.i = getelementptr %struct.stm32f7_i2c_dev, ptr %1, i32 0, i32 9, i32 9, i32 1
  %49 = ptrtoint ptr %arrayidx40.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %conv38.i, ptr %arrayidx40.i, align 1
  %50 = load i16, ptr %data, align 2
  %51 = lshr i16 %50, 8
  %conv42.i = trunc i16 %51 to i8
  %arrayidx44.i = getelementptr %struct.stm32f7_i2c_dev, ptr %1, i32 0, i32 9, i32 9, i32 2
  %52 = ptrtoint ptr %arrayidx44.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %conv42.i, ptr %arrayidx44.i, align 2
  br label %sw.epilog.i

sw.bb46.i:                                        ; preds = %if.end10
  %stop54.i = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %1, i32 0, i32 9, i32 4
  br i1 %tobool.not.i, label %if.else53.i, label %if.then49.i

if.then49.i:                                      ; preds = %sw.bb46.i
  call void @__sanitizer_cov_trace_pc() #13
  %53 = ptrtoint ptr %stop54.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 0, ptr %stop54.i, align 4
  %count51.i = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %1, i32 0, i32 9, i32 1
  %54 = ptrtoint ptr %count51.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 1, ptr %count51.i, align 4
  %and52.i = and i32 %or10.i, -3073
  br label %sw.epilog.i

if.else53.i:                                      ; preds = %sw.bb46.i
  %55 = ptrtoint ptr %stop54.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 1, ptr %stop54.i, align 4
  %56 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %data, align 2
  %conv56.i = zext i8 %57 to i32
  %58 = add i8 %57, -33
  call void @__sanitizer_cov_trace_const_cmp1(i8 -32, i8 %58)
  %59 = icmp ult i8 %58, -32
  br i1 %59, label %do.end.i, label %for.body.preheader.i

do.end.i:                                         ; preds = %if.else53.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.96, i32 noundef %conv56.i) #14
  br label %pm_free

for.body.preheader.i:                             ; preds = %if.else53.i
  %add.i = add nuw nsw i32 %conv56.i, 2
  %count66.i = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %1, i32 0, i32 9, i32 1
  %60 = ptrtoint ptr %count66.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %add.i, ptr %count66.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.preheader.i
  %i.0320.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 1, %for.body.preheader.i ]
  %sub.i = add i32 %i.0320.i, -1
  %arrayidx70.i = getelementptr [34 x i8], ptr %data, i32 0, i32 %sub.i
  %61 = ptrtoint ptr %arrayidx70.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx70.i, align 1
  %arrayidx72.i = getelementptr %struct.stm32f7_i2c_dev, ptr %1, i32 0, i32 9, i32 9, i32 %i.0320.i
  %63 = ptrtoint ptr %arrayidx72.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %62, ptr %arrayidx72.i, align 1
  %inc.i = add nuw i32 %i.0320.i, 1
  %64 = ptrtoint ptr %count66.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %count66.i, align 4
  %cmp68.i = icmp ult i32 %inc.i, %65
  br i1 %cmp68.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.sw.epilog.i_crit_edge

for.body.i.sw.epilog.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

sw.bb74.i:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  %stop75.i = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %1, i32 0, i32 9, i32 4
  %66 = ptrtoint ptr %stop75.i to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 0, ptr %stop75.i, align 4
  %count76.i = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %1, i32 0, i32 9, i32 1
  %67 = ptrtoint ptr %count76.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 3, ptr %count76.i, align 4
  %68 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %data, align 2
  %conv79.i = trunc i16 %69 to i8
  %arrayidx81.i = getelementptr %struct.stm32f7_i2c_dev, ptr %1, i32 0, i32 9, i32 9, i32 1
  %70 = ptrtoint ptr %arrayidx81.i to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %conv79.i, ptr %arrayidx81.i, align 1
  %71 = load i16, ptr %data, align 2
  %72 = lshr i16 %71, 8
  %conv84.i = trunc i16 %72 to i8
  %arrayidx86.i = getelementptr %struct.stm32f7_i2c_dev, ptr %1, i32 0, i32 9, i32 9, i32 2
  %73 = ptrtoint ptr %arrayidx86.i to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %conv84.i, ptr %arrayidx86.i, align 2
  %and87.i = and i32 %or10.i, -3073
  %74 = ptrtoint ptr %read_write6 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 1, ptr %read_write6, align 4
  br label %sw.epilog.i

sw.bb89.i:                                        ; preds = %if.end10
  %stop90.i = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %1, i32 0, i32 9, i32 4
  %75 = ptrtoint ptr %stop90.i to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 0, ptr %stop90.i, align 4
  %76 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %data, align 2
  %conv92.i = zext i8 %77 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %77)
  %cmp93.i = icmp ugt i8 %77, 31
  br i1 %cmp93.i, label %do.end98.i, label %for.body110.preheader.i

do.end98.i:                                       ; preds = %sw.bb89.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.96, i32 noundef %conv92.i) #14
  br label %pm_free

for.body110.preheader.i:                          ; preds = %sw.bb89.i
  %add104.i = add nuw nsw i32 %conv92.i, 2
  %count105.i = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %1, i32 0, i32 9, i32 1
  %78 = ptrtoint ptr %count105.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %add104.i, ptr %count105.i, align 4
  br label %for.body110.i

for.body110.i:                                    ; preds = %for.body110.i.for.body110.i_crit_edge, %for.body110.preheader.i
  %i.1318.i = phi i32 [ %inc116.i, %for.body110.i.for.body110.i_crit_edge ], [ 1, %for.body110.preheader.i ]
  %sub111.i = add i32 %i.1318.i, -1
  %arrayidx112.i = getelementptr [34 x i8], ptr %data, i32 0, i32 %sub111.i
  %79 = ptrtoint ptr %arrayidx112.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %arrayidx112.i, align 1
  %arrayidx114.i = getelementptr %struct.stm32f7_i2c_dev, ptr %1, i32 0, i32 9, i32 9, i32 %i.1318.i
  %81 = ptrtoint ptr %arrayidx114.i to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %80, ptr %arrayidx114.i, align 1
  %inc116.i = add nuw i32 %i.1318.i, 1
  %82 = ptrtoint ptr %count105.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %count105.i, align 4
  %cmp108.i = icmp ult i32 %inc116.i, %83
  br i1 %cmp108.i, label %for.body110.i.for.body110.i_crit_edge, label %for.end117.i

for.body110.i.for.body110.i_crit_edge:            ; preds = %for.body110.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body110.i

for.end117.i:                                     ; preds = %for.body110.i
  call void @__sanitizer_cov_trace_pc() #13
  %and118.i = and i32 %or10.i, -3073
  %84 = ptrtoint ptr %read_write6 to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 1, ptr %read_write6, align 4
  br label %sw.epilog.i

do.end123.i:                                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.101, i32 noundef %30) #14
  br label %pm_free

sw.epilog.i:                                      ; preds = %for.end117.i, %sw.bb74.i, %for.body.i.sw.epilog.i_crit_edge, %if.then49.i, %if.else33.i, %if.then29.i, %if.else.i, %if.then17.i, %sw.bb11.i, %sw.bb.i
  %cr2.1.i = phi i32 [ %and118.i, %for.end117.i ], [ %and87.i, %sw.bb74.i ], [ %and52.i, %if.then49.i ], [ %and32.i, %if.then29.i ], [ %or10.i, %if.else33.i ], [ %and20.i, %if.then17.i ], [ %or10.i, %if.else.i ], [ %or10.i, %sw.bb11.i ], [ %or10.i, %sw.bb.i ], [ %or10.i, %for.body.i.sw.epilog.i_crit_edge ]
  %buf.i = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %1, i32 0, i32 9, i32 2
  %85 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %smbus_buf.i, ptr %buf.i, align 4
  %86 = and i16 %flags, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %86)
  %tobool128.not.i = icmp eq i16 %86, 0
  br i1 %tobool128.not.i, label %sw.epilog.i.if.else141.i_crit_edge, label %land.lhs.true.i

sw.epilog.i.if.else141.i_crit_edge:               ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else141.i

land.lhs.true.i:                                  ; preds = %sw.epilog.i
  %87 = ptrtoint ptr %size5 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %size5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %cmp130.not.i = icmp eq i32 %88, 0
  br i1 %cmp130.not.i, label %land.lhs.true.i.if.else141.i_crit_edge, label %if.then132.i

land.lhs.true.i.if.else141.i_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else141.i

if.then132.i:                                     ; preds = %land.lhs.true.i
  %or133.i = or i32 %19, 8388608
  %or134.i = or i32 %cr2.1.i, 67108864
  %89 = ptrtoint ptr %read_write6 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %read_write6, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %90)
  %tobool136.not.i = icmp eq i8 %90, 0
  br i1 %tobool136.not.i, label %if.then137.i, label %if.then132.i.if.end144.i_crit_edge

if.then132.i.if.end144.i_crit_edge:               ; preds = %if.then132.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end144.i

if.then137.i:                                     ; preds = %if.then132.i
  call void @__sanitizer_cov_trace_pc() #13
  %count138.i = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %1, i32 0, i32 9, i32 1
  %91 = ptrtoint ptr %count138.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %count138.i, align 4
  %inc139.i = add i32 %92, 1
  store i32 %inc139.i, ptr %count138.i, align 4
  br label %if.end144.i

if.else141.i:                                     ; preds = %land.lhs.true.i.if.else141.i_crit_edge, %sw.epilog.i.if.else141.i_crit_edge
  %and142.i = and i32 %19, -8388609
  %and143.i = and i32 %cr2.1.i, -67108865
  br label %if.end144.i

if.end144.i:                                      ; preds = %if.else141.i, %if.then137.i, %if.then132.i.if.end144.i_crit_edge
  %cr1.0.i = phi i32 [ %or133.i, %if.then132.i.if.end144.i_crit_edge ], [ %or133.i, %if.then137.i ], [ %and142.i, %if.else141.i ]
  %cr2.2.i = phi i32 [ %or134.i, %if.then132.i.if.end144.i_crit_edge ], [ %or134.i, %if.then137.i ], [ %and143.i, %if.else141.i ]
  %and145.i = and i32 %cr2.2.i, -33497089
  %count146.i = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %1, i32 0, i32 9, i32 1
  %93 = ptrtoint ptr %count146.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %count146.i, align 4
  %and147.i = shl i32 %94, 16
  %shl148.i = and i32 %and147.i, 16711680
  %or150.i = and i32 %cr1.0.i, -49399
  %use_dma.i = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %1, i32 0, i32 18
  %95 = ptrtoint ptr %use_dma.i to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 0, ptr %use_dma.i, align 8
  %96 = ptrtoint ptr %dma2 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %dma2, align 4
  %tobool152.not.i = icmp ne ptr %97, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %94)
  %cmp155.i = icmp ugt i32 %94, 21
  %or.cond147 = select i1 %tobool152.not.i, i1 %cmp155.i, i1 false
  br i1 %or.cond147, label %if.then157.i, label %if.end144.i.if.then177.i_crit_edge

if.end144.i.if.then177.i_crit_edge:               ; preds = %if.end144.i
  call void @__sanitizer_cov_trace_pc() #13
  %.pre = and i32 %cr2.2.i, 1024
  br label %if.then177.i

if.then157.i:                                     ; preds = %if.end144.i
  %98 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %dev3, align 8
  %and160.i = and i32 %cr2.2.i, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and160.i)
  %tobool161.i = icmp ne i32 %and160.i, 0
  %call164.i = tail call i32 @stm32_i2c_prep_dma_xfer(ptr noundef %99, ptr noundef nonnull %97, i1 noundef zeroext %tobool161.i, i32 noundef %94, ptr noundef %smbus_buf.i, ptr noundef nonnull @stm32f7_i2c_dma_callback, ptr noundef %1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call164.i)
  %tobool165.not.i = icmp eq i32 %call164.i, 0
  br i1 %tobool165.not.i, label %if.end174.thread315.i, label %if.end174.i

if.end174.thread315.i:                            ; preds = %if.then157.i
  call void @__sanitizer_cov_trace_pc() #13
  %100 = ptrtoint ptr %use_dma.i to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 1, ptr %use_dma.i, align 8
  br label %if.else185.i

if.end174.i:                                      ; preds = %if.then157.i
  %101 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %dev3, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %102, ptr noundef nonnull @.str.40) #14
  %103 = ptrtoint ptr %use_dma.i to i32
  call void @__asan_load1_noabort(i32 %103)
  %.pr.i.pr = load i8, ptr %use_dma.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr.i.pr)
  %tobool176.not.i = icmp eq i8 %.pr.i.pr, 0
  br i1 %tobool176.not.i, label %if.end174.i.if.then177.i_crit_edge, label %if.end174.i.if.else185.i_crit_edge

if.end174.i.if.else185.i_crit_edge:               ; preds = %if.end174.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else185.i

if.end174.i.if.then177.i_crit_edge:               ; preds = %if.end174.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then177.i

if.then177.i:                                     ; preds = %if.end174.i.if.then177.i_crit_edge, %if.end144.i.if.then177.i_crit_edge
  %and178.i.pre-phi = phi i32 [ %.pre, %if.end144.i.if.then177.i_crit_edge ], [ %and160.i, %if.end174.i.if.then177.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and178.i.pre-phi)
  %tobool179.not.i = icmp eq i32 %and178.i.pre-phi, 0
  %..i = select i1 %tobool179.not.i, i32 242, i32 244
  br label %if.end14

if.else185.i:                                     ; preds = %if.end174.i.if.else185.i_crit_edge, %if.end174.thread315.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and160.i)
  %tobool187.not.i = icmp eq i32 %and160.i, 0
  %.321.i = select i1 %tobool187.not.i, i32 16624, i32 33008
  br label %if.end14

if.end14:                                         ; preds = %if.else185.i, %if.then177.i
  %.sink.i = phi i32 [ %..i, %if.then177.i ], [ %.321.i, %if.else185.i ]
  %or189.i = or i32 %.sink.i, %or150.i
  %or149.i = or i32 %and145.i, %shl148.i
  %or194.i = or i32 %or149.i, 8192
  %master_mode.i = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %1, i32 0, i32 16
  %104 = ptrtoint ptr %master_mode.i to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 1, ptr %master_mode.i, align 8
  %105 = tail call i32 @llvm.bswap.i32(i32 %or189.i) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %105) #11, !srcloc !263
  %106 = tail call i32 @llvm.bswap.i32(i32 %or194.i) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %106) #11, !srcloc !263
  %timeout15 = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 7
  %107 = ptrtoint ptr %timeout15 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %timeout15, align 4
  %call16 = tail call i32 @wait_for_completion_timeout(ptr noundef %complete.i, i32 noundef %108) #11
  %109 = ptrtoint ptr %result.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %result.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %110)
  %tobool17.not = icmp eq i32 %110, 0
  br i1 %tobool17.not, label %if.end22, label %if.then18

if.then18:                                        ; preds = %if.end14
  %111 = ptrtoint ptr %use_dma.i to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %use_dma.i, align 8, !range !260
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %112)
  %tobool19.not = icmp eq i8 %112, 0
  br i1 %tobool19.not, label %if.then18.if.end21_crit_edge, label %if.then20

if.then18.if.end21_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21

if.then20:                                        ; preds = %if.then18
  %chan_using = getelementptr inbounds %struct.stm32_i2c_dma, ptr %3, i32 0, i32 2
  %113 = ptrtoint ptr %chan_using to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %chan_using, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.93, i32 noundef 1169) #11
  %115 = ptrtoint ptr %114 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %114, align 4
  %device_synchronize.i = getelementptr inbounds %struct.dma_device, ptr %116, i32 0, i32 48
  %117 = ptrtoint ptr %device_synchronize.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %device_synchronize.i, align 4
  %tobool.not.i136 = icmp eq ptr %118, null
  br i1 %tobool.not.i136, label %if.then20.if.end21_crit_edge, label %if.then.i137

if.then20.if.end21_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21

if.then.i137:                                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #13
  tail call void %118(ptr noundef %114) #11
  br label %if.end21

if.end21:                                         ; preds = %if.then.i137, %if.then20.if.end21_crit_edge, %if.then18.if.end21_crit_edge
  %119 = ptrtoint ptr %base3.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %base3.i, align 4
  %add.ptr = getelementptr i8, ptr %120, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 16777216) #11, !srcloc !263
  br label %pm_free

if.end22:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool23.not = icmp eq i32 %call16, 0
  br i1 %tobool23.not, label %do.body, label %if.end40

do.body:                                          ; preds = %if.end22
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm32f7_i2c_smbus_xfer.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@stm32f7_i2c_smbus_xfer, %do.end)) #11
          to label %if.then30 [label %do.end], !srcloc !259

if.then30:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %121 = ptrtoint ptr %f7_msg1 to i32
  call void @__asan_load2_noabort(i32 %121)
  %122 = load i16, ptr %f7_msg1, align 4
  %conv = zext i16 %122 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stm32f7_i2c_smbus_xfer.__UNIQUE_ID_ddebug302, ptr noundef %5, ptr noundef nonnull @.str.92, i32 noundef %conv) #11
  br label %do.end

do.end:                                           ; preds = %if.then30, %do.body
  %123 = ptrtoint ptr %use_dma.i to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %use_dma.i, align 8, !range !260
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %124)
  %tobool34.not = icmp eq i8 %124, 0
  br i1 %tobool34.not, label %do.end.if.end38_crit_edge, label %if.then35

do.end.if.end38_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end38

if.then35:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %chan_using36 = getelementptr inbounds %struct.stm32_i2c_dma, ptr %3, i32 0, i32 2
  %125 = ptrtoint ptr %chan_using36 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %chan_using36, align 4
  tail call fastcc void @dmaengine_terminate_sync(ptr noundef %126)
  br label %if.end38

if.end38:                                         ; preds = %if.then35, %do.end.if.end38_crit_edge
  %call39 = tail call fastcc i32 @stm32f7_i2c_wait_free_bus(ptr noundef %1)
  br label %pm_free

if.end40:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %cmp43.not = icmp eq i32 %size, 0
  %or.cond = or i1 %tobool128.not.i, %cmp43.not
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %read_write)
  %tobool47.not = icmp eq i8 %read_write, 0
  %or.cond132 = or i1 %tobool47.not, %or.cond
  br i1 %or.cond132, label %if.end40.if.end53_crit_edge, label %if.then48

if.end40.if.end53_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end53

if.then48:                                        ; preds = %if.end40
  %call49 = tail call fastcc i32 @stm32f7_i2c_smbus_check_pec(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.then48.if.end53_crit_edge, label %if.then48.pm_free_crit_edge

if.then48.pm_free_crit_edge:                      ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #13
  br label %pm_free

if.then48.if.end53_crit_edge:                     ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end53

if.end53:                                         ; preds = %if.then48.if.end53_crit_edge, %if.end40.if.end53_crit_edge
  %or.cond133 = or i1 %tobool47.not, %cmp43.not
  br i1 %or.cond133, label %if.end53.pm_free_crit_edge, label %if.then59

if.end53.pm_free_crit_edge:                       ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #13
  br label %pm_free

if.then59:                                        ; preds = %if.end53
  %127 = zext i32 %size to i64
  call void @__sanitizer_cov_trace_switch(i64 %127, ptr @__sancov_gen_cov_switch_values.127)
  switch i32 %size, label %do.end79 [
    i32 1, label %if.then59.sw.bb_crit_edge
    i32 2, label %if.then59.sw.bb_crit_edge150
    i32 3, label %if.then59.sw.bb60_crit_edge
    i32 4, label %if.then59.sw.bb60_crit_edge151
    i32 5, label %if.then59.for.body.preheader_crit_edge
    i32 7, label %if.then59.for.body.preheader_crit_edge152
  ]

if.then59.for.body.preheader_crit_edge152:        ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.preheader

if.then59.for.body.preheader_crit_edge:           ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.preheader

if.then59.sw.bb60_crit_edge151:                   ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb60

if.then59.sw.bb60_crit_edge:                      ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb60

if.then59.sw.bb_crit_edge150:                     ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

if.then59.sw.bb_crit_edge:                        ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

for.body.preheader:                               ; preds = %if.then59.for.body.preheader_crit_edge, %if.then59.for.body.preheader_crit_edge152
  br label %for.body

sw.bb:                                            ; preds = %if.then59.sw.bb_crit_edge, %if.then59.sw.bb_crit_edge150
  %128 = ptrtoint ptr %smbus_buf.i to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %smbus_buf.i, align 4
  %130 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %130)
  store i8 %129, ptr %data, align 2
  br label %pm_free

sw.bb60:                                          ; preds = %if.then59.sw.bb60_crit_edge, %if.then59.sw.bb60_crit_edge151
  %131 = ptrtoint ptr %smbus_buf.i to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %smbus_buf.i, align 4
  %conv63 = zext i8 %132 to i16
  %arrayidx65 = getelementptr %struct.stm32f7_i2c_dev, ptr %1, i32 0, i32 9, i32 9, i32 1
  %133 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %arrayidx65, align 1
  %conv66 = zext i8 %134 to i16
  %shl = shl nuw i16 %conv66, 8
  %or = or i16 %shl, %conv63
  %135 = ptrtoint ptr %data to i32
  call void @__asan_store2_noabort(i32 %135)
  store i16 %or, ptr %data, align 2
  br label %pm_free

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.0149 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx75 = getelementptr %struct.stm32f7_i2c_dev, ptr %1, i32 0, i32 9, i32 9, i32 %i.0149
  %136 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %arrayidx75, align 1
  %arrayidx76 = getelementptr [34 x i8], ptr %data, i32 0, i32 %i.0149
  %138 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_store1_noabort(i32 %138)
  store i8 %137, ptr %arrayidx76, align 1
  %inc = add nuw nsw i32 %i.0149, 1
  %139 = ptrtoint ptr %smbus_buf.i to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %smbus_buf.i, align 4
  %conv71 = zext i8 %140 to i32
  %cmp72.not.not = icmp ult i32 %i.0149, %conv71
  br i1 %cmp72.not.not, label %for.body.for.body_crit_edge, label %for.body.pm_free_crit_edge

for.body.pm_free_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %pm_free

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

do.end79:                                         ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.95) #14
  br label %pm_free

pm_free:                                          ; preds = %do.end79, %for.body.pm_free_crit_edge, %sw.bb60, %sw.bb, %if.end53.pm_free_crit_edge, %if.then48.pm_free_crit_edge, %if.end38, %if.end21, %do.end123.i, %do.end98.i, %do.end.i, %if.end10.pm_free_crit_edge, %if.end.pm_free_crit_edge
  %ret.1 = phi i32 [ %call8, %if.end.pm_free_crit_edge ], [ %110, %if.end21 ], [ %call49, %if.then48.pm_free_crit_edge ], [ -22, %do.end79 ], [ 0, %sw.bb60 ], [ 0, %sw.bb ], [ 0, %if.end53.pm_free_crit_edge ], [ -110, %if.end38 ], [ -95, %if.end10.pm_free_crit_edge ], [ -22, %do.end.i ], [ -22, %do.end98.i ], [ -95, %do.end123.i ], [ 0, %for.body.pm_free_crit_edge ]
  %call.i138 = tail call i64 @ktime_get_mono_fast_ns() #11
  %last_busy.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 12, i32 22
  %141 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %141)
  store volatile i64 %call.i138, ptr %last_busy.i, align 8
  %call.i139 = tail call i32 @__pm_runtime_suspend(ptr noundef %5, i32 noundef 13) #11
  br label %cleanup

cleanup:                                          ; preds = %pm_free, %do.end11.i.i.i.i.i, %if.then.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %pm_free ], [ %call.i, %if.then.i.cleanup_crit_edge ], [ %call.i, %do.end11.i.i.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @stm32f7_i2c_func(ptr nocapture noundef readonly %adap) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %smbus_mode = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %1, i32 0, i32 24
  %2 = ptrtoint ptr %smbus_mode to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %smbus_mode, align 1, !range !260
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  %spec.select = select i1 %tobool.not, i32 268402731, i32 536838187
  ret i32 %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32f7_i2c_reg_slave(ptr noundef %slave) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %slave, i32 0, i32 3
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 8
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 9, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %base1 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %base1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base1, align 4
  %dev2 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev2, align 8
  %8 = ptrtoint ptr %slave to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %slave, align 8
  %10 = and i16 %9, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool.not = icmp eq i16 %10, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.110) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx.i = getelementptr %struct.stm32f7_i2c_dev, ptr %3, i32 0, i32 12, i32 0
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp ne ptr %12, null
  %inc.i = zext i1 %tobool.not.i to i32
  %arrayidx.1.i = getelementptr %struct.stm32f7_i2c_dev, ptr %3, i32 0, i32 12, i32 1
  %13 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx.1.i, align 4
  %tobool.not.1.i = icmp ne ptr %14, null
  %inc.1.i = zext i1 %tobool.not.1.i to i32
  %spec.select.1.i = add nuw nsw i32 %inc.1.i, %inc.i
  %arrayidx.2.i = getelementptr %struct.stm32f7_i2c_dev, ptr %3, i32 0, i32 12, i32 2
  %15 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx.2.i, align 4
  %tobool.not.2.i = icmp ne ptr %16, null
  %inc.2.i = zext i1 %tobool.not.2.i to i32
  %spec.select.2.i = add nuw nsw i32 %spec.select.1.i, %inc.2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %spec.select.2.i)
  %cmp2.i = icmp eq i32 %spec.select.2.i, 3
  br i1 %cmp2.i, label %do.end7, label %if.end8

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.113) #14
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %smbus_mode.i = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %3, i32 0, i32 24
  %17 = ptrtoint ptr %smbus_mode.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %smbus_mode.i, align 1, !range !260
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not.i124 = icmp eq i8 %18, 0
  br i1 %tobool.not.i124, label %if.end8.land.lhs.true11.i_crit_edge, label %land.lhs.true.i

if.end8.land.lhs.true11.i_crit_edge:              ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true11.i

land.lhs.true.i:                                  ; preds = %if.end8
  %addr.i = getelementptr inbounds %struct.i2c_client, ptr %slave, i32 0, i32 1
  %19 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %addr.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %20)
  %cmp.i = icmp eq i16 %20, 8
  br i1 %cmp.i, label %if.then.i, label %land.lhs.true.i.land.lhs.true11.i_crit_edge

land.lhs.true.i.land.lhs.true11.i_crit_edge:      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true11.i

if.then.i:                                        ; preds = %land.lhs.true.i
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx.i, align 8
  %tobool4.not.i = icmp eq ptr %22, null
  br i1 %tobool4.not.i, label %if.then.i.if.end12_crit_edge, label %if.then.i.stm32f7_i2c_get_free_slave_id.exit_crit_edge

if.then.i.stm32f7_i2c_get_free_slave_id.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %stm32f7_i2c_get_free_slave_id.exit

if.then.i.if.end12_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12

land.lhs.true11.i:                                ; preds = %land.lhs.true.i.land.lhs.true11.i_crit_edge, %if.end8.land.lhs.true11.i_crit_edge
  %23 = and i16 %9, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %23)
  %tobool13.not.i = icmp eq i16 %23, 0
  %tobool18.not.i = icmp eq ptr %16, null
  %or.cond = select i1 %tobool13.not.i, i1 %tobool18.not.i, i1 false
  br i1 %or.cond, label %land.lhs.true11.i.if.end12_crit_edge, label %if.end15.1.i

land.lhs.true11.i.if.end12_crit_edge:             ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12

if.end15.1.i:                                     ; preds = %land.lhs.true11.i
  %tobool18.not.1.i = icmp eq ptr %14, null
  br i1 %tobool18.not.1.i, label %if.end15.1.i.if.end12_crit_edge, label %if.end15.1.i.stm32f7_i2c_get_free_slave_id.exit_crit_edge

if.end15.1.i.stm32f7_i2c_get_free_slave_id.exit_crit_edge: ; preds = %if.end15.1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %stm32f7_i2c_get_free_slave_id.exit

if.end15.1.i.if.end12_crit_edge:                  ; preds = %if.end15.1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12

stm32f7_i2c_get_free_slave_id.exit:               ; preds = %if.end15.1.i.stm32f7_i2c_get_free_slave_id.exit_crit_edge, %if.then.i.stm32f7_i2c_get_free_slave_id.exit_crit_edge
  %addr21.i = getelementptr inbounds %struct.i2c_client, ptr %slave, i32 0, i32 1
  %24 = ptrtoint ptr %addr21.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %addr21.i, align 2
  %conv22.i = zext i16 %25 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.118, i32 noundef %conv22.i) #14
  br label %cleanup

if.end12:                                         ; preds = %if.end15.1.i.if.end12_crit_edge, %land.lhs.true11.i.if.end12_crit_edge, %if.then.i.if.end12_crit_edge
  %id.0.ph = phi i32 [ 1, %if.end15.1.i.if.end12_crit_edge ], [ 0, %if.then.i.if.end12_crit_edge ], [ 2, %land.lhs.true11.i.if.end12_crit_edge ]
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %7, i32 noundef 4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i125 = icmp slt i32 %call.i, 0
  br i1 %cmp.i125, label %if.then.i126, label %if.end16

if.then.i126:                                     ; preds = %if.end12
  %usage_count.i.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !264
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #11
  %26 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #11, !srcloc !265
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %26, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i126.cleanup_crit_edge, label %do.end11.i.i.i.i.i

if.then.i126.cleanup_crit_edge:                   ; preds = %if.then.i126
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end11.i.i.i.i.i:                               ; preds = %if.then.i126
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !266
  br label %cleanup

if.end16:                                         ; preds = %if.end12
  %27 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i129 = icmp eq ptr %28, null
  br i1 %tobool.not.i129, label %for.cond.i, label %if.end16.if.end19_crit_edge

if.end16.if.end19_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

for.cond.i:                                       ; preds = %if.end16
  %29 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx.1.i, align 4
  %tobool.not.1.i131 = icmp eq ptr %30, null
  br i1 %tobool.not.1.i131, label %stm32f7_i2c_is_slave_registered.exit, label %for.cond.i.if.end19_crit_edge

for.cond.i.if.end19_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

stm32f7_i2c_is_slave_registered.exit:             ; preds = %for.cond.i
  %31 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx.2.i, align 4
  %tobool.not.2.i133.not = icmp eq ptr %32, null
  br i1 %tobool.not.2.i133.not, label %if.then18, label %stm32f7_i2c_is_slave_registered.exit.if.end19_crit_edge

stm32f7_i2c_is_slave_registered.exit.if.end19_crit_edge: ; preds = %stm32f7_i2c_is_slave_registered.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

if.then18:                                        ; preds = %stm32f7_i2c_is_slave_registered.exit
  %wakeup_src.i = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %3, i32 0, i32 23
  %33 = ptrtoint ptr %wakeup_src.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %wakeup_src.i, align 4, !range !260
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool.not.i134 = icmp eq i8 %34, 0
  br i1 %tobool.not.i134, label %if.then18.if.end19_crit_edge, label %if.end.i135

if.then18.if.end19_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

if.end.i135:                                      ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #13
  %35 = ptrtoint ptr %base1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %base1, align 4
  %37 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev2, align 8
  %call.i136 = tail call i32 @device_set_wakeup_enable(ptr noundef %38, i1 noundef zeroext true) #11
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %36) #11, !srcloc !262
  %40 = or i32 %39, 1024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 %40) #11, !srcloc !263
  br label %if.end19

if.end19:                                         ; preds = %if.end.i135, %if.then18.if.end19_crit_edge, %stm32f7_i2c_is_slave_registered.exit.if.end19_crit_edge, %for.cond.i.if.end19_crit_edge, %if.end16.if.end19_crit_edge
  %41 = zext i32 %id.0.ph to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values.128)
  switch i32 %id.0.ph, label %do.end68 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb21
    i32 2, label %sw.bb43
  ]

sw.bb:                                            ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  %42 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %slave, ptr %arrayidx.i, align 4
  br label %sw.epilog

sw.bb21:                                          ; preds = %if.end19
  %43 = ptrtoint ptr %base1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %base1, align 4
  %add.ptr = getelementptr i8, ptr %44, i32 8
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !262
  %46 = and i32 %45, 7929855
  %47 = tail call i32 @llvm.bswap.i32(i32 %46)
  %48 = ptrtoint ptr %slave to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %slave, align 8
  %50 = and i16 %49, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %50)
  %tobool28.not = icmp eq i16 %50, 0
  %addr33 = getelementptr inbounds %struct.i2c_client, ptr %slave, i32 0, i32 1
  %51 = ptrtoint ptr %addr33 to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %addr33, align 2
  br i1 %tobool28.not, label %if.else, label %if.then29

if.then29:                                        ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #13
  %53 = and i16 %52, 1023
  %and31 = zext i16 %53 to i32
  %or = or i32 %47, %and31
  %or32 = or i32 %or, 1024
  br label %if.end37

if.else:                                          ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #13
  %54 = shl i16 %52, 1
  %55 = and i16 %54, 254
  %shl = zext i16 %55 to i32
  %or36 = or i32 %47, %shl
  br label %if.end37

if.end37:                                         ; preds = %if.else, %if.then29
  %oar1.0 = phi i32 [ %or32, %if.then29 ], [ %or36, %if.else ]
  %or38 = or i32 %oar1.0, 32768
  %56 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %slave, ptr %arrayidx.1.i, align 4
  %57 = tail call i32 @llvm.bswap.i32(i32 %or38)
  %58 = ptrtoint ptr %base1 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %base1, align 4
  %add.ptr42 = getelementptr i8, ptr %59, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr42, i32 %57) #11, !srcloc !263
  br label %sw.epilog

sw.bb43:                                          ; preds = %if.end19
  %60 = ptrtoint ptr %base1 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %base1, align 4
  %add.ptr46 = getelementptr i8, ptr %61, i32 12
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr46) #11, !srcloc !262
  %63 = ptrtoint ptr %slave to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %slave, align 8
  %65 = and i16 %64, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %65)
  %tobool53.not = icmp eq i16 %65, 0
  br i1 %tobool53.not, label %if.end55, label %sw.bb43.pm_free_crit_edge

sw.bb43.pm_free_crit_edge:                        ; preds = %sw.bb43
  call void @__sanitizer_cov_trace_pc() #13
  br label %pm_free

if.end55:                                         ; preds = %sw.bb43
  call void @__sanitizer_cov_trace_pc() #13
  %66 = and i32 %62, 24707071
  %addr56 = getelementptr inbounds %struct.i2c_client, ptr %slave, i32 0, i32 1
  %67 = ptrtoint ptr %addr56 to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %addr56, align 2
  %69 = shl i16 %68, 1
  %70 = and i16 %69, 254
  %shl59 = zext i16 %70 to i32
  %71 = or i32 %66, 8388608
  %72 = call i32 @llvm.bswap.i32(i32 %71)
  %or61 = or i32 %72, %shl59
  %73 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %slave, ptr %arrayidx.2.i, align 4
  %74 = tail call i32 @llvm.bswap.i32(i32 %or61)
  %75 = ptrtoint ptr %base1 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %base1, align 4
  %add.ptr65 = getelementptr i8, ptr %76, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr65, i32 %74) #11, !srcloc !263
  br label %sw.epilog

do.end68:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.116) #14
  br label %pm_free

sw.epilog:                                        ; preds = %if.end55, %if.end37, %sw.bb
  %add.ptr69 = getelementptr i8, ptr %5, i32 4
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr69) #11, !srcloc !262
  %78 = and i32 %77, -8388609
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr69, i32 %78) #11, !srcloc !263
  %79 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #11, !srcloc !262
  %80 = or i32 %79, -1996488704
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %80) #11, !srcloc !263
  br label %pm_free

pm_free:                                          ; preds = %sw.epilog, %do.end68, %sw.bb43.pm_free_crit_edge
  %ret.0 = phi i32 [ -19, %do.end68 ], [ 0, %sw.epilog ], [ -95, %sw.bb43.pm_free_crit_edge ]
  %81 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i138 = icmp eq ptr %82, null
  br i1 %tobool.not.i138, label %for.cond.i141, label %pm_free.if.end73_crit_edge

pm_free.if.end73_crit_edge:                       ; preds = %pm_free
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end73

for.cond.i141:                                    ; preds = %pm_free
  %83 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %arrayidx.1.i, align 4
  %tobool.not.1.i140 = icmp eq ptr %84, null
  br i1 %tobool.not.1.i140, label %stm32f7_i2c_is_slave_registered.exit146, label %for.cond.i141.if.end73_crit_edge

for.cond.i141.if.end73_crit_edge:                 ; preds = %for.cond.i141
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end73

stm32f7_i2c_is_slave_registered.exit146:          ; preds = %for.cond.i141
  %85 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %arrayidx.2.i, align 4
  %tobool.not.2.i143.not = icmp eq ptr %86, null
  br i1 %tobool.not.2.i143.not, label %if.then72, label %stm32f7_i2c_is_slave_registered.exit146.if.end73_crit_edge

stm32f7_i2c_is_slave_registered.exit146.if.end73_crit_edge: ; preds = %stm32f7_i2c_is_slave_registered.exit146
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end73

if.then72:                                        ; preds = %stm32f7_i2c_is_slave_registered.exit146
  %wakeup_src.i148 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %3, i32 0, i32 23
  %87 = ptrtoint ptr %wakeup_src.i148 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %wakeup_src.i148, align 4, !range !260
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %88)
  %tobool.not.i149 = icmp eq i8 %88, 0
  br i1 %tobool.not.i149, label %if.then72.if.end73_crit_edge, label %if.end.i151

if.then72.if.end73_crit_edge:                     ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end73

if.end.i151:                                      ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #13
  %89 = ptrtoint ptr %base1 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %base1, align 4
  %91 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %dev2, align 8
  %call5.i = tail call i32 @device_set_wakeup_enable(ptr noundef %92, i1 noundef zeroext false) #11
  %93 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %90) #11, !srcloc !262
  %94 = and i32 %93, -1025
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %90, i32 %94) #11, !srcloc !263
  br label %if.end73

if.end73:                                         ; preds = %if.end.i151, %if.then72.if.end73_crit_edge, %stm32f7_i2c_is_slave_registered.exit146.if.end73_crit_edge, %for.cond.i141.if.end73_crit_edge, %pm_free.if.end73_crit_edge
  %call.i153 = tail call i64 @ktime_get_mono_fast_ns() #11
  %last_busy.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 12, i32 22
  %95 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %95)
  store volatile i64 %call.i153, ptr %last_busy.i, align 8
  %call.i154 = tail call i32 @__pm_runtime_suspend(ptr noundef %7, i32 noundef 13) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end73, %do.end11.i.i.i.i.i, %if.then.i126.cleanup_crit_edge, %stm32f7_i2c_get_free_slave_id.exit, %do.end7, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -16, %do.end7 ], [ %ret.0, %if.end73 ], [ -22, %stm32f7_i2c_get_free_slave_id.exit ], [ %call.i, %if.then.i126.cleanup_crit_edge ], [ %call.i, %do.end11.i.i.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32f7_i2c_unreg_slave(ptr noundef readonly %slave) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %slave, i32 0, i32 3
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 8
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 9, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %base1 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %base1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base1, align 4
  %arrayidx.i = getelementptr %struct.stm32f7_i2c_dev, ptr %3, i32 0, i32 12, i32 0
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 4
  %cmp2.i = icmp eq ptr %7, %slave
  br i1 %cmp2.i, label %entry.if.end_crit_edge, label %for.inc.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

for.inc.i:                                        ; preds = %entry
  %arrayidx.1.i = getelementptr %struct.stm32f7_i2c_dev, ptr %3, i32 0, i32 12, i32 1
  %8 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.1.i, align 4
  %cmp2.1.i = icmp eq ptr %9, %slave
  br i1 %cmp2.1.i, label %for.inc.i.if.end_crit_edge, label %for.inc.1.i

for.inc.i.if.end_crit_edge:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

for.inc.1.i:                                      ; preds = %for.inc.i
  %arrayidx.2.i = getelementptr %struct.stm32f7_i2c_dev, ptr %3, i32 0, i32 12, i32 2
  %10 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.2.i, align 4
  %cmp2.2.i = icmp eq ptr %11, %slave
  br i1 %cmp2.2.i, label %for.inc.1.i.if.end_crit_edge, label %stm32f7_i2c_get_slave_id.exit

for.inc.1.i.if.end_crit_edge:                     ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

stm32f7_i2c_get_slave_id.exit:                    ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %3, i32 0, i32 1
  %12 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev.i, align 8
  %addr.i = getelementptr inbounds %struct.i2c_client, ptr %slave, i32 0, i32 1
  %14 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %addr.i, align 2
  %conv.i = zext i16 %15 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.120, i32 noundef %conv.i) #14
  br label %cleanup

if.end:                                           ; preds = %for.inc.1.i.if.end_crit_edge, %for.inc.i.if.end_crit_edge, %entry.if.end_crit_edge
  %id.0.ph = phi i32 [ 2, %for.inc.1.i.if.end_crit_edge ], [ 1, %for.inc.i.if.end_crit_edge ], [ 0, %entry.if.end_crit_edge ]
  %arrayidx = getelementptr %struct.stm32f7_i2c_dev, ptr %3, i32 0, i32 12, i32 %id.0.ph
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx, align 4
  %tobool4.not = icmp eq ptr %17, null
  br i1 %tobool4.not, label %do.end, label %if.end.if.end20_crit_edge, !prof !269

if.end.if.end20_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1933, i32 noundef 9, ptr noundef null) #11
  br label %if.end20

if.end20:                                         ; preds = %do.end, %if.end.if.end20_crit_edge
  %dev = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %3, i32 0, i32 1
  %18 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev, align 8
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %19, i32 noundef 4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i65, label %if.end29

if.then.i65:                                      ; preds = %if.end20
  %usage_count.i.i = getelementptr inbounds %struct.device, ptr %19, i32 0, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !264
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #11
  %20 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #11, !srcloc !265
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %20, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i65.cleanup_crit_edge, label %do.end11.i.i.i.i.i

if.then.i65.cleanup_crit_edge:                    ; preds = %if.then.i65
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end11.i.i.i.i.i:                               ; preds = %if.then.i65
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !266
  br label %cleanup

if.end29:                                         ; preds = %if.end20
  %21 = zext i32 %id.0.ph to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.129)
  switch i32 %id.0.ph, label %if.end29.if.end36_crit_edge [
    i32 1, label %if.then31
    i32 2, label %if.then33
  ]

if.end29.if.end36_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end36

if.then31:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr = getelementptr i8, ptr %5, i32 8
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !262
  %23 = and i32 %22, -8388609
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %23) #11, !srcloc !263
  br label %if.end36

if.then33:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr34 = getelementptr i8, ptr %5, i32 12
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr34) #11, !srcloc !262
  %25 = and i32 %24, -8388609
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr34, i32 %25) #11, !srcloc !263
  br label %if.end36

if.end36:                                         ; preds = %if.then33, %if.then31, %if.end29.if.end36_crit_edge
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %arrayidx, align 4
  %27 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %28, null
  br i1 %tobool.not.i, label %for.cond.i, label %if.end36.if.end41_crit_edge

if.end36.if.end41_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end41

for.cond.i:                                       ; preds = %if.end36
  %arrayidx.1.i69 = getelementptr %struct.stm32f7_i2c_dev, ptr %3, i32 0, i32 12, i32 1
  %29 = ptrtoint ptr %arrayidx.1.i69 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx.1.i69, align 4
  %tobool.not.1.i = icmp eq ptr %30, null
  br i1 %tobool.not.1.i, label %stm32f7_i2c_is_slave_registered.exit, label %for.cond.i.if.end41_crit_edge

for.cond.i.if.end41_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end41

stm32f7_i2c_is_slave_registered.exit:             ; preds = %for.cond.i
  %arrayidx.2.i70 = getelementptr %struct.stm32f7_i2c_dev, ptr %3, i32 0, i32 12, i32 2
  %31 = ptrtoint ptr %arrayidx.2.i70 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx.2.i70, align 4
  %tobool.not.2.i.not = icmp eq ptr %32, null
  br i1 %tobool.not.2.i.not, label %if.then40, label %stm32f7_i2c_is_slave_registered.exit.if.end41_crit_edge

stm32f7_i2c_is_slave_registered.exit.if.end41_crit_edge: ; preds = %stm32f7_i2c_is_slave_registered.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end41

if.then40:                                        ; preds = %stm32f7_i2c_is_slave_registered.exit
  %33 = ptrtoint ptr %base1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %base1, align 4
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %34) #11, !srcloc !262
  %36 = and i32 %35, 167772159
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 %36) #11, !srcloc !263
  %wakeup_src.i = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %3, i32 0, i32 23
  %37 = ptrtoint ptr %wakeup_src.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %wakeup_src.i, align 4, !range !260
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool.not.i71 = icmp eq i8 %38, 0
  br i1 %tobool.not.i71, label %if.then40.if.end41_crit_edge, label %if.end.i

if.then40.if.end41_crit_edge:                     ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end41

if.end.i:                                         ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #13
  %39 = ptrtoint ptr %base1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %base1, align 4
  %41 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev, align 8
  %call5.i = tail call i32 @device_set_wakeup_enable(ptr noundef %42, i1 noundef zeroext false) #11
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %40) #11, !srcloc !262
  %44 = and i32 %43, -1025
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 %44) #11, !srcloc !263
  br label %if.end41

if.end41:                                         ; preds = %if.end.i, %if.then40.if.end41_crit_edge, %stm32f7_i2c_is_slave_registered.exit.if.end41_crit_edge, %for.cond.i.if.end41_crit_edge, %if.end36.if.end41_crit_edge
  %45 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev, align 8
  %call.i73 = tail call i64 @ktime_get_mono_fast_ns() #11
  %last_busy.i = getelementptr inbounds %struct.device, ptr %46, i32 0, i32 12, i32 22
  %47 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %47)
  store volatile i64 %call.i73, ptr %last_busy.i, align 8
  %48 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev, align 8
  %call.i74 = tail call i32 @__pm_runtime_suspend(ptr noundef %49, i32 noundef 13) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end41, %do.end11.i.i.i.i.i, %if.then.i65.cleanup_crit_edge, %stm32f7_i2c_get_slave_id.exit
  %retval.0 = phi i32 [ 0, %if.end41 ], [ -19, %stm32f7_i2c_get_slave_id.exit ], [ %call.i, %if.then.i65.cleanup_crit_edge ], [ %call.i, %do.end11.i.i.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @stm32f7_i2c_wait_free_bus(ptr nocapture noundef readonly %i2c_dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i64 @ktime_get() #11
  %add.i = add i64 %call, 1000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.5, i32 noundef 849) #11
  %base = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %i2c_dev, i32 0, i32 2
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr41 = getelementptr i8, ptr %1, i32 24
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr41) #11, !srcloc !262
  %3 = and i32 %2, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not43 = icmp eq i32 %3, 0
  br i1 %tobool.not43, label %entry.cleanup_crit_edge, label %entry.land.lhs.true_crit_edge

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  br label %land.lhs.true

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true:                                    ; preds = %if.then23.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge
  %call12 = tail call i64 @ktime_get() #11
  call void @__sanitizer_cov_trace_cmp8(i64 %call12, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call12, %add.i
  br i1 %cmp3.i, label %for.end, label %if.then23

if.then23:                                        ; preds = %land.lhs.true
  tail call void @usleep_range_state(i32 noundef 3, i32 noundef 10, i32 noundef 2) #11
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 24
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !262
  %7 = and i32 %6, 8388608
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %if.then23.cleanup_crit_edge, label %if.then23.land.lhs.true_crit_edge

if.then23.land.lhs.true_crit_edge:                ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true

if.then23.cleanup_crit_edge:                      ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.end:                                          ; preds = %land.lhs.true
  %8 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base, align 4
  %add.ptr18 = getelementptr i8, ptr %9, i32 24
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr18) #11, !srcloc !262
  %11 = and i32 %10, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool27.not = icmp eq i32 %11, 0
  br i1 %tobool27.not, label %for.end.cleanup_crit_edge, label %if.end30

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end30:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  %driver_data.i.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %i2c_dev, i32 0, i32 9, i32 8
  %12 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %driver_data.i.i.i, align 4
  %base.i = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base.i, align 4
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #11, !srcloc !262
  %17 = and i32 %16, -16777217
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %17) #11, !srcloc !263
  tail call fastcc void @stm32f7_i2c_hw_config(ptr noundef %13) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end30, %for.end.cleanup_crit_edge, %if.then23.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %if.end30 ], [ 0, %for.end.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.then23.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dmaengine_terminate_sync(ptr noundef %chan) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan, align 4
  %device_terminate_all.i = getelementptr inbounds %struct.dma_device, ptr %1, i32 0, i32 47
  %2 = ptrtoint ptr %device_terminate_all.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device_terminate_all.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %dmaengine_terminate_async.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

dmaengine_terminate_async.exit:                   ; preds = %entry
  %call.i = tail call i32 %3(ptr noundef %chan) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %dmaengine_terminate_async.exit.cleanup_crit_edge

dmaengine_terminate_async.exit.cleanup_crit_edge: ; preds = %dmaengine_terminate_async.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %dmaengine_terminate_async.exit
  tail call void @__might_sleep(ptr noundef nonnull @.str.93, i32 noundef 1169) #11
  %4 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chan, align 4
  %device_synchronize.i = getelementptr inbounds %struct.dma_device, ptr %5, i32 0, i32 48
  %6 = ptrtoint ptr %device_synchronize.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %device_synchronize.i, align 4
  %tobool.not.i1 = icmp eq ptr %7, null
  br i1 %tobool.not.i1, label %if.end.cleanup_crit_edge, label %if.then.i2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then.i2:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void %7(ptr noundef %chan) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then.i2, %if.end.cleanup_crit_edge, %dmaengine_terminate_async.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @stm32f7_i2c_smbus_check_pec(ptr nocapture noundef readonly %i2c_dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %i2c_dev, i32 0, i32 2
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 32
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !262
  %3 = lshr i32 %2, 24
  %size = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %i2c_dev, i32 0, i32 9, i32 6
  %4 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %size, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.130)
  switch i32 %5, label %do.end [
    i32 1, label %entry.sw.epilog_crit_edge
    i32 2, label %entry.sw.epilog_crit_edge31
    i32 3, label %entry.sw.bb2_crit_edge
    i32 4, label %entry.sw.bb2_crit_edge32
    i32 5, label %entry.sw.bb5_crit_edge
    i32 7, label %entry.sw.bb5_crit_edge33
  ]

entry.sw.bb5_crit_edge33:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb5

entry.sw.bb5_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb5

entry.sw.bb2_crit_edge32:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb2

entry.sw.bb2_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb2

entry.sw.epilog_crit_edge31:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry.sw.bb2_crit_edge, %entry.sw.bb2_crit_edge32
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry.sw.bb5_crit_edge, %entry.sw.bb5_crit_edge33
  %smbus_buf6 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %i2c_dev, i32 0, i32 9, i32 9
  %7 = ptrtoint ptr %smbus_buf6 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %smbus_buf6, align 4
  %idxprom = zext i8 %8 to i32
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %i2c_dev, i32 0, i32 1
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.105) #14
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb5, %sw.bb2, %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge31
  %idxprom.sink = phi i32 [ %idxprom, %sw.bb5 ], [ 2, %sw.bb2 ], [ 1, %entry.sw.epilog_crit_edge ], [ 1, %entry.sw.epilog_crit_edge31 ]
  %arrayidx9 = getelementptr %struct.stm32f7_i2c_dev, ptr %i2c_dev, i32 0, i32 9, i32 9, i32 %idxprom.sink
  %11 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %11)
  %received_pec.0 = load i8, ptr %arrayidx9, align 1
  %conv11 = zext i8 %received_pec.0 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %conv11)
  %cmp.not = icmp eq i32 %3, %conv11
  br i1 %cmp.not, label %sw.epilog.cleanup_crit_edge, label %do.end15

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end15:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  %dev16 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %i2c_dev, i32 0, i32 1
  %12 = ptrtoint ptr %dev16 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev16, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.108, i32 noundef %3, i32 noundef %conv11) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end15, %sw.epilog.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -74, %do.end15 ], [ 0, %sw.epilog.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_set_wakeup_enable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #10

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_new_slave_host_notify_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_new_smbus_alert_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_free_slave_host_notify_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_init_wakeup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32f7_i2c_suspend(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %lock_ops.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %lock_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lock_ops.i.i, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  tail call void %5(ptr noundef %1, i32 noundef 1) #11
  %locked_flags.i = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 10
  tail call void @_set_bit(i32 noundef 0, ptr noundef %locked_flags.i) #11
  %6 = ptrtoint ptr %lock_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lock_ops.i.i, align 8
  %unlock_bus.i.i = getelementptr inbounds %struct.i2c_lock_operations, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %unlock_bus.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %unlock_bus.i.i, align 4
  tail call void %9(ptr noundef %1, i32 noundef 1) #11
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 1
  %10 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %entry.land.lhs.true_crit_edge, label %device_may_wakeup.exit

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true

device_may_wakeup.exit:                           ; preds = %entry
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %11 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %12, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.land.lhs.true_crit_edge, label %device_may_wakeup.exit.cleanup_crit_edge

device_may_wakeup.exit.cleanup_crit_edge:         ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

device_may_wakeup.exit.land.lhs.true_crit_edge:   ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %device_may_wakeup.exit.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge
  %wakeup_path.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 7
  %13 = ptrtoint ptr %wakeup_path.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %bf.load.i17 = load i8, ptr %wakeup_path.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load.i17)
  %bf.cast.i = icmp slt i8 %bf.load.i17, 0
  br i1 %bf.cast.i, label %land.lhs.true.cleanup_crit_edge, label %if.then

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then:                                          ; preds = %land.lhs.true
  %dev.i = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev.i, align 8
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %15, i32 noundef 4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end.i

if.then.i.i:                                      ; preds = %if.then
  %usage_count.i.i.i = getelementptr inbounds %struct.device, ptr %15, i32 0, i32 12, i32 13
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !264
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i.i, i32 1, i32 3, i32 1) #11
  %16 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i.i, ptr %usage_count.i.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i.i) #11, !srcloc !265
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %16, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i.i, label %if.then.i.i.if.then4_crit_edge, label %do.end11.i.i.i.i.i.i

if.then.i.i.if.then4_crit_edge:                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then4

do.end11.i.i.i.i.i.i:                             ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !266
  br label %if.then4

if.end.i:                                         ; preds = %if.then
  %backup_regs1.i = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %1, i32 0, i32 14
  %base.i = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %1, i32 0, i32 2
  %17 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %base.i, align 4
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #11, !srcloc !262
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #11
  %21 = ptrtoint ptr %backup_regs1.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %backup_regs1.i, align 4
  %22 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base.i, align 4
  %add.ptr5.i = getelementptr i8, ptr %23, i32 4
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i) #11, !srcloc !262
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #11
  %cr2.i = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %1, i32 0, i32 14, i32 1
  %26 = ptrtoint ptr %cr2.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %cr2.i, align 4
  %27 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %base.i, align 4
  %add.ptr10.i = getelementptr i8, ptr %28, i32 8
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10.i) #11, !srcloc !262
  %30 = tail call i32 @llvm.bswap.i32(i32 %29) #11
  %oar1.i = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %1, i32 0, i32 14, i32 2
  %31 = ptrtoint ptr %oar1.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %oar1.i, align 4
  %32 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %base.i, align 4
  %add.ptr15.i = getelementptr i8, ptr %33, i32 12
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr15.i) #11, !srcloc !262
  %35 = tail call i32 @llvm.bswap.i32(i32 %34) #11
  %oar2.i = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %1, i32 0, i32 14, i32 3
  %36 = ptrtoint ptr %oar2.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %oar2.i, align 4
  %37 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %base.i, align 4
  %add.ptr20.i = getelementptr i8, ptr %38, i32 16
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20.i) #11, !srcloc !262
  %40 = tail call i32 @llvm.bswap.i32(i32 %39) #11
  %tmgr.i = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %1, i32 0, i32 14, i32 4
  %41 = ptrtoint ptr %tmgr.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %tmgr.i, align 4
  %bus_rate.i.i = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %1, i32 0, i32 5
  %42 = ptrtoint ptr %bus_rate.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %bus_rate.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 400001, i32 %43)
  %cmp.i41.i = icmp ult i32 %43, 400001
  br i1 %cmp.i41.i, label %if.end.i.if.end_crit_edge, label %lor.lhs.false.i.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

lor.lhs.false.i.i:                                ; preds = %if.end.i
  %regmap.i.i = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %1, i32 0, i32 19
  %44 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regmap.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %45, null
  %cmp.i.i.i = icmp ugt ptr %45, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i.i = or i1 %tobool.not.i.i.i, %cmp.i.i.i
  br i1 %spec.select.i.i.i, label %lor.lhs.false.i.i.if.end_crit_edge, label %if.end.i.i

lor.lhs.false.i.i.if.end_crit_edge:               ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end.i.i:                                       ; preds = %lor.lhs.false.i.i
  %fmp_sreg.i.i = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %1, i32 0, i32 20
  %46 = ptrtoint ptr %fmp_sreg.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %fmp_sreg.i.i, align 8
  %fmp_creg.i.i = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %1, i32 0, i32 21
  %48 = ptrtoint ptr %fmp_creg.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %fmp_creg.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %49)
  %cmp1.i.i = icmp eq i32 %47, %49
  %fmp_mask.i.i = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %1, i32 0, i32 22
  %50 = ptrtoint ptr %fmp_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %fmp_mask.i.i, align 8
  br i1 %cmp1.i.i, label %if.then2.i.i, label %if.else.i.i

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i = tail call i32 @regmap_update_bits_base(ptr noundef nonnull %45, i32 noundef %47, i32 noundef %51, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  br label %if.end

if.else.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call16.i.i = tail call i32 @regmap_write(ptr noundef nonnull %45, i32 noundef %49, i32 noundef %51) #11
  br label %if.end

if.then4:                                         ; preds = %do.end11.i.i.i.i.i.i, %if.then.i.i.if.then4_crit_edge
  %52 = ptrtoint ptr %lock_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %lock_ops.i.i, align 8
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %53, align 4
  tail call void %55(ptr noundef %1, i32 noundef 1) #11
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %locked_flags.i) #11
  %56 = ptrtoint ptr %lock_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %lock_ops.i.i, align 8
  %unlock_bus.i.i20 = getelementptr inbounds %struct.i2c_lock_operations, ptr %57, i32 0, i32 2
  %58 = ptrtoint ptr %unlock_bus.i.i20 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %unlock_bus.i.i20, align 4
  tail call void %59(ptr noundef %1, i32 noundef 1) #11
  br label %cleanup

if.end:                                           ; preds = %if.else.i.i, %if.then2.i.i, %lor.lhs.false.i.i.if.end_crit_edge, %if.end.i.if.end_crit_edge
  %60 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev.i, align 8
  %call.i43.i = tail call i32 @__pm_runtime_idle(ptr noundef %61, i32 noundef 4) #11
  %call6 = tail call i32 @pinctrl_pm_select_sleep_state(ptr noundef %dev) #11
  %call7 = tail call i32 @pm_runtime_force_suspend(ptr noundef %dev) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then4, %land.lhs.true.cleanup_crit_edge, %device_may_wakeup.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i.i, %if.then4 ], [ 0, %if.end ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %device_may_wakeup.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32f7_i2c_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 1
  %2 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %entry.land.lhs.true_crit_edge, label %device_may_wakeup.exit

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true

device_may_wakeup.exit:                           ; preds = %entry
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %3 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %4, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.land.lhs.true_crit_edge, label %device_may_wakeup.exit.if.end10_crit_edge

device_may_wakeup.exit.if.end10_crit_edge:        ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

device_may_wakeup.exit.land.lhs.true_crit_edge:   ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %device_may_wakeup.exit.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge
  %wakeup_path.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 7
  %5 = ptrtoint ptr %wakeup_path.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load.i20 = load i8, ptr %wakeup_path.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load.i20)
  %bf.cast.i = icmp slt i8 %bf.load.i20, 0
  br i1 %bf.cast.i, label %land.lhs.true.if.end10_crit_edge, label %if.then

land.lhs.true.if.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

if.then:                                          ; preds = %land.lhs.true
  %call3 = tail call i32 @pm_runtime_force_resume(ptr noundef %dev) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %if.then
  %call5 = tail call i32 @pinctrl_pm_select_default_state(ptr noundef %dev) #11
  %backup_regs1.i = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %1, i32 0, i32 14
  %dev.i = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 8
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %7, i32 noundef 4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end.i

if.then.i.i:                                      ; preds = %if.end
  %usage_count.i.i.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 12, i32 13
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !264
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i.i, i32 1, i32 3, i32 1) #11
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i.i, ptr %usage_count.i.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i.i) #11, !srcloc !265
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i.i, label %if.then.i.i.cleanup_crit_edge, label %do.end11.i.i.i.i.i.i

if.then.i.i.cleanup_crit_edge:                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end11.i.i.i.i.i.i:                             ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !266
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %base.i = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %1, i32 0, i32 2
  %9 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base.i, align 4
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #11, !srcloc !262
  %12 = and i32 %11, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.i21 = icmp eq i32 %12, 0
  br i1 %tobool.not.i21, label %if.end.i.if.end6.i_crit_edge, label %if.then3.i

if.end.i.if.end6.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %13 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base.i, align 4
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #11, !srcloc !262
  %16 = and i32 %15, -16777217
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %16) #11, !srcloc !263
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then3.i, %if.end.i.if.end6.i_crit_edge
  %tmgr.i = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %1, i32 0, i32 14, i32 4
  %17 = ptrtoint ptr %tmgr.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %tmgr.i, align 4
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #11
  %20 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base.i, align 4
  %add.ptr8.i = getelementptr i8, ptr %21, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i, i32 %19) #11, !srcloc !263
  %22 = ptrtoint ptr %backup_regs1.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %backup_regs1.i, align 4
  %and10.i = and i32 %23, -2
  %24 = tail call i32 @llvm.bswap.i32(i32 %and10.i) #11
  %25 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %base.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %24) #11, !srcloc !263
  %27 = ptrtoint ptr %backup_regs1.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %backup_regs1.i, align 4
  %and14.i = and i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i)
  %tobool15.not.i = icmp eq i32 %and14.i, 0
  br i1 %tobool15.not.i, label %if.end6.i.if.end19.i_crit_edge, label %if.then16.i

if.end6.i.if.end19.i_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19.i

if.then16.i:                                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #13
  %29 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %base.i, align 4
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %30) #11, !srcloc !262
  %32 = or i32 %31, 16777216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 %32) #11, !srcloc !263
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.then16.i, %if.end6.i.if.end19.i_crit_edge
  %cr2.i = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %1, i32 0, i32 14, i32 1
  %33 = ptrtoint ptr %cr2.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %cr2.i, align 4
  %35 = tail call i32 @llvm.bswap.i32(i32 %34) #11
  %36 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %base.i, align 4
  %add.ptr21.i = getelementptr i8, ptr %37, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21.i, i32 %35) #11, !srcloc !263
  %oar1.i = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %1, i32 0, i32 14, i32 2
  %38 = ptrtoint ptr %oar1.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %oar1.i, align 4
  %40 = tail call i32 @llvm.bswap.i32(i32 %39) #11
  %41 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %base.i, align 4
  %add.ptr23.i = getelementptr i8, ptr %42, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23.i, i32 %40) #11, !srcloc !263
  %oar2.i = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %1, i32 0, i32 14, i32 3
  %43 = ptrtoint ptr %oar2.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %oar2.i, align 4
  %45 = tail call i32 @llvm.bswap.i32(i32 %44) #11
  %46 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %base.i, align 4
  %add.ptr25.i = getelementptr i8, ptr %47, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25.i, i32 %45) #11, !srcloc !263
  %bus_rate.i.i = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %1, i32 0, i32 5
  %48 = ptrtoint ptr %bus_rate.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %bus_rate.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 400001, i32 %49)
  %cmp.i49.i = icmp ult i32 %49, 400001
  br i1 %cmp.i49.i, label %if.end19.i.stm32f7_i2c_regs_restore.exit_crit_edge, label %lor.lhs.false.i.i

if.end19.i.stm32f7_i2c_regs_restore.exit_crit_edge: ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %stm32f7_i2c_regs_restore.exit

lor.lhs.false.i.i:                                ; preds = %if.end19.i
  %regmap.i.i = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %1, i32 0, i32 19
  %50 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %regmap.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %51, null
  %cmp.i.i.i = icmp ugt ptr %51, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i.i = or i1 %tobool.not.i.i.i, %cmp.i.i.i
  br i1 %spec.select.i.i.i, label %lor.lhs.false.i.i.stm32f7_i2c_regs_restore.exit_crit_edge, label %if.end.i.i

lor.lhs.false.i.i.stm32f7_i2c_regs_restore.exit_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %stm32f7_i2c_regs_restore.exit

if.end.i.i:                                       ; preds = %lor.lhs.false.i.i
  %fmp_sreg.i.i = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %1, i32 0, i32 20
  %52 = ptrtoint ptr %fmp_sreg.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %fmp_sreg.i.i, align 8
  %fmp_creg.i.i = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %1, i32 0, i32 21
  %54 = ptrtoint ptr %fmp_creg.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %fmp_creg.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %53, i32 %55)
  %cmp1.i.i = icmp eq i32 %53, %55
  %fmp_mask.i.i = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %1, i32 0, i32 22
  %56 = ptrtoint ptr %fmp_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %fmp_mask.i.i, align 8
  br i1 %cmp1.i.i, label %if.then2.i.i, label %if.else.i.i

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i = tail call i32 @regmap_update_bits_base(ptr noundef nonnull %51, i32 noundef %53, i32 noundef %57, i32 noundef %57, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  br label %stm32f7_i2c_regs_restore.exit

if.else.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call16.i.i = tail call i32 @regmap_write(ptr noundef nonnull %51, i32 noundef %53, i32 noundef %57) #11
  br label %stm32f7_i2c_regs_restore.exit

stm32f7_i2c_regs_restore.exit:                    ; preds = %if.else.i.i, %if.then2.i.i, %lor.lhs.false.i.i.stm32f7_i2c_regs_restore.exit_crit_edge, %if.end19.i.stm32f7_i2c_regs_restore.exit_crit_edge
  %58 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dev.i, align 8
  %call.i51.i = tail call i32 @__pm_runtime_idle(ptr noundef %59, i32 noundef 4) #11
  br label %if.end10

if.end10:                                         ; preds = %stm32f7_i2c_regs_restore.exit, %land.lhs.true.if.end10_crit_edge, %device_may_wakeup.exit.if.end10_crit_edge
  %lock_ops.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 4
  %60 = ptrtoint ptr %lock_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %lock_ops.i.i, align 8
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %61, align 4
  tail call void %63(ptr noundef %1, i32 noundef 1) #11
  %locked_flags.i = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 10
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %locked_flags.i) #11
  %64 = ptrtoint ptr %lock_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %lock_ops.i.i, align 8
  %unlock_bus.i.i = getelementptr inbounds %struct.i2c_lock_operations, ptr %65, i32 0, i32 2
  %66 = ptrtoint ptr %unlock_bus.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %unlock_bus.i.i, align 4
  tail call void %67(ptr noundef %1, i32 noundef 1) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %do.end11.i.i.i.i.i.i, %if.then.i.i.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end10 ], [ %call3, %if.then.cleanup_crit_edge ], [ %call.i.i, %if.then.i.i.cleanup_crit_edge ], [ %call.i.i, %do.end11.i.i.i.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32f7_i2c_runtime_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %arrayidx.i = getelementptr %struct.stm32f7_i2c_dev, ptr %1, i32 0, i32 12, i32 0
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %for.cond.i, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

for.cond.i:                                       ; preds = %entry
  %arrayidx.1.i = getelementptr %struct.stm32f7_i2c_dev, ptr %1, i32 0, i32 12, i32 1
  %4 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.1.i, align 4
  %tobool.not.1.i = icmp eq ptr %5, null
  br i1 %tobool.not.1.i, label %stm32f7_i2c_is_slave_registered.exit, label %for.cond.i.if.end_crit_edge

for.cond.i.if.end_crit_edge:                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

stm32f7_i2c_is_slave_registered.exit:             ; preds = %for.cond.i
  %arrayidx.2.i = getelementptr %struct.stm32f7_i2c_dev, ptr %1, i32 0, i32 12, i32 2
  %6 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.2.i, align 4
  %tobool.not.2.i.not = icmp eq ptr %7, null
  br i1 %tobool.not.2.i.not, label %if.then, label %stm32f7_i2c_is_slave_registered.exit.if.end_crit_edge

stm32f7_i2c_is_slave_registered.exit.if.end_crit_edge: ; preds = %stm32f7_i2c_is_slave_registered.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %stm32f7_i2c_is_slave_registered.exit
  call void @__sanitizer_cov_trace_pc() #13
  %clk = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clk, align 8
  tail call void @clk_disable(ptr noundef %9) #11
  tail call void @clk_unprepare(ptr noundef %9) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %stm32f7_i2c_is_slave_registered.exit.if.end_crit_edge, %for.cond.i.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32f7_i2c_runtime_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %arrayidx.i = getelementptr %struct.stm32f7_i2c_dev, ptr %1, i32 0, i32 12, i32 0
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %for.cond.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond.i:                                       ; preds = %entry
  %arrayidx.1.i = getelementptr %struct.stm32f7_i2c_dev, ptr %1, i32 0, i32 12, i32 1
  %4 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.1.i, align 4
  %tobool.not.1.i = icmp eq ptr %5, null
  br i1 %tobool.not.1.i, label %stm32f7_i2c_is_slave_registered.exit, label %for.cond.i.cleanup_crit_edge

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

stm32f7_i2c_is_slave_registered.exit:             ; preds = %for.cond.i
  %arrayidx.2.i = getelementptr %struct.stm32f7_i2c_dev, ptr %1, i32 0, i32 12, i32 2
  %6 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.2.i, align 4
  %tobool.not.2.i.not = icmp eq ptr %7, null
  br i1 %tobool.not.2.i.not, label %if.then, label %stm32f7_i2c_is_slave_registered.exit.cleanup_crit_edge

stm32f7_i2c_is_slave_registered.exit.cleanup_crit_edge: ; preds = %stm32f7_i2c_is_slave_registered.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then:                                          ; preds = %stm32f7_i2c_is_slave_registered.exit
  %clk = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clk, align 8
  %call.i = tail call i32 @clk_prepare(ptr noundef %9) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i9 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i9, label %if.end.i, label %if.then.do.end_crit_edge

if.then.do.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.end.i:                                         ; preds = %if.then
  %call1.i = tail call i32 @clk_enable(ptr noundef %9) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.cleanup_crit_edge, label %if.then3.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @clk_unprepare(ptr noundef %9) #11
  br label %do.end

do.end:                                           ; preds = %if.then3.i, %if.then.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %if.then.do.end_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.123) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.i.cleanup_crit_edge, %stm32f7_i2c_is_slave_registered.exit.cleanup_crit_edge, %for.cond.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i.ph, %do.end ], [ 0, %stm32f7_i2c_is_slave_registered.exit.cleanup_crit_edge ], [ 0, %if.end.i.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 0, %for.cond.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_sleep_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_default_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 124)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 124)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !44, !45, !46, !48, !49, !50, !52, !54, !55, !56, !58, !60, !61, !62, !64, !65, !66, !67, !69, !70, !71, !73, !74, !75, !77, !78, !79, !80, !81, !83, !84, !85, !87, !88, !89, !91, !92, !93, !94, !96, !97, !99, !100, !101, !103, !104, !106, !107, !108, !109, !111, !112, !113, !115, !117, !118, !119, !121, !122, !123, !125, !126, !127, !129, !131, !132, !134, !135, !137, !138, !139, !140, !142, !143, !144, !145, !147, !148, !149, !151, !152, !153, !155, !156, !158, !159, !160, !162, !163, !164, !166, !167, !169, !171, !173, !175, !176, !177, !179, !181, !182, !184, !185, !186, !188, !189, !190, !191, !193, !194, !196, !197, !198, !200, !201, !203, !204, !205, !206, !208, !209, !210, !212, !213, !214, !215, !217, !218, !219, !221, !222, !223, !225, !226, !227, !228, !230, !231, !232, !233, !235, !236, !238, !240, !242, !244, !246, !247, !248}
!llvm.module.flags = !{!249, !250, !251, !252, !253, !254, !255, !256}
!llvm.ident = !{!257}

!0 = !{ptr @__initcall__kmod_i2c_stm32f7_drv__304_2485_stm32f7_i2c_driver_init6, !1, !"__initcall__kmod_i2c_stm32f7_drv__304_2485_stm32f7_i2c_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/i2c/busses/i2c-stm32f7.c", i32 2485, i32 1}
!2 = !{ptr @__exitcall_stm32f7_i2c_driver_exit, !1, !"__exitcall_stm32f7_i2c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author305, !4, !"__UNIQUE_ID_author305", i1 false, i1 false}
!4 = !{!"../drivers/i2c/busses/i2c-stm32f7.c", i32 2487, i32 1}
!5 = !{ptr @__UNIQUE_ID_description306, !6, !"__UNIQUE_ID_description306", i1 false, i1 false}
!6 = !{!"../drivers/i2c/busses/i2c-stm32f7.c", i32 2488, i32 1}
!7 = !{ptr @__UNIQUE_ID_file307, !8, !"__UNIQUE_ID_file307", i1 false, i1 false}
!8 = !{!"../drivers/i2c/busses/i2c-stm32f7.c", i32 2489, i32 1}
!9 = !{ptr @__UNIQUE_ID_license308, !8, !"__UNIQUE_ID_license308", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/i2c/busses/i2c-stm32f7.c", i32 2477, i32 11}
!12 = !{ptr @stm32f7_i2c_driver, !13, !"stm32f7_i2c_driver", i1 false, i1 false}
!13 = !{!"../drivers/i2c/busses/i2c-stm32f7.c", i32 2475, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/i2c/busses/i2c-stm32f7.c", i32 2126, i32 11}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/i2c/busses/i2c-stm32f7.c", i32 2131, i32 10}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/i2c/busses/i2c-stm32f7.c", i32 2135, i32 3}
!20 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @stm32f7_i2c_probe._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @stm32f7_i2c_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/i2c/busses/i2c-stm32f7.c", i32 2142, i32 9}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/i2c/busses/i2c-stm32f7.c", i32 2157, i32 3}
!30 = !{ptr @stm32f7_i2c_probe._entry.9, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @stm32f7_i2c_probe._entry_ptr.11, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/i2c/busses/i2c-stm32f7.c", i32 2165, i32 3}
!34 = !{ptr @stm32f7_i2c_probe._entry.12, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @stm32f7_i2c_probe._entry_ptr.14, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/i2c/busses/i2c-stm32f7.c", i32 2172, i32 3}
!38 = !{ptr @stm32f7_i2c_probe._entry.15, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @stm32f7_i2c_probe._entry_ptr.17, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/i2c/busses/i2c-stm32f7.c", i32 2194, i32 43}
!42 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/i2c/busses/i2c-stm32f7.c", i32 2214, i32 3}
!44 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @stm32f7_i2c_probe.__UNIQUE_ID_ddebug303, !43, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!46 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/i2c/busses/i2c-stm32f7.c", i32 2223, i32 4}
!48 = !{ptr @stm32f7_i2c_probe._entry.21, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @stm32f7_i2c_probe._entry_ptr.23, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.24, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/i2c/busses/i2c-stm32f7.c", i32 2240, i32 65}
!52 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/i2c/busses/i2c-stm32f7.c", i32 2249, i32 4}
!54 = !{ptr @stm32f7_i2c_probe._entry.25, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @stm32f7_i2c_probe._entry_ptr.27, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.28, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/i2c/busses/i2c-stm32f7.c", i32 2256, i32 47}
!58 = !{ptr @.str.30, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/i2c/busses/i2c-stm32f7.c", i32 2259, i32 4}
!60 = !{ptr @stm32f7_i2c_probe._entry.29, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @stm32f7_i2c_probe._entry_ptr.31, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.33, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/i2c/busses/i2c-stm32f7.c", i32 2266, i32 2}
!64 = !{ptr @.str.34, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @stm32f7_i2c_probe._entry.32, !63, !"_entry", i1 false, i1 false}
!66 = !{ptr @stm32f7_i2c_probe._entry_ptr.35, !63, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.36, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/i2c/busses/i2c-stm32f7.c", i32 1509, i32 3}
!69 = !{ptr @.str.37, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @stm32f7_i2c_isr_event.__UNIQUE_ID_ddebug297, !68, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!71 = !{ptr @.str.38, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/i2c/busses/i2c-stm32f7.c", i32 1448, i32 3}
!73 = !{ptr @.str.39, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @stm32f7_i2c_slave_isr_event.__UNIQUE_ID_ddebug296, !72, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!75 = !{ptr @.str.40, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/i2c/busses/i2c-stm32f7.c", i32 1180, i32 4}
!77 = !{ptr @.str.41, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @.str.42, !76, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @stm32f7_i2c_smbus_rep_start._entry, !76, !"_entry", i1 false, i1 false}
!80 = !{ptr @stm32f7_i2c_smbus_rep_start._entry_ptr, !76, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.43, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/i2c/busses/i2c-stm32f7.c", i32 921, i32 4}
!83 = !{ptr @stm32f7_i2c_xfer_msg._entry, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @stm32f7_i2c_xfer_msg._entry_ptr, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.44, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/i2c/busses/i2c-stm32f7.c", i32 1579, i32 3}
!87 = !{ptr @.str.45, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @stm32f7_i2c_isr_event_thread.__UNIQUE_ID_ddebug298, !86, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!89 = !{ptr @.str.46, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/i2c/busses/i2c-stm32f7.c", i32 1616, i32 3}
!91 = !{ptr @.str.47, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @stm32f7_i2c_isr_error._entry, !90, !"_entry", i1 false, i1 false}
!93 = !{ptr @stm32f7_i2c_isr_error._entry_ptr, !90, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.48, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/i2c/busses/i2c-stm32f7.c", i32 1625, i32 3}
!96 = !{ptr @stm32f7_i2c_isr_error.__UNIQUE_ID_ddebug299, !95, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!97 = !{ptr @.str.50, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/i2c/busses/i2c-stm32f7.c", i32 1632, i32 3}
!99 = !{ptr @stm32f7_i2c_isr_error._entry.49, !98, !"_entry", i1 false, i1 false}
!100 = !{ptr @stm32f7_i2c_isr_error._entry_ptr.51, !98, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.52, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/i2c/busses/i2c-stm32f7.c", i32 1639, i32 3}
!103 = !{ptr @stm32f7_i2c_isr_error.__UNIQUE_ID_ddebug300, !102, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!104 = !{ptr @.str.53, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/i2c/busses/i2c-stm32f7.c", i32 657, i32 3}
!106 = !{ptr @.str.54, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @stm32f7_i2c_setup_timing._entry, !105, !"_entry", i1 false, i1 false}
!108 = !{ptr @stm32f7_i2c_setup_timing._entry_ptr, !105, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.56, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/i2c/busses/i2c-stm32f7.c", i32 669, i32 3}
!111 = !{ptr @stm32f7_i2c_setup_timing._entry.55, !110, !"_entry", i1 false, i1 false}
!112 = !{ptr @stm32f7_i2c_setup_timing._entry_ptr.57, !110, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.58, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/i2c/busses/i2c-stm32f7.c", i32 673, i32 52}
!115 = !{ptr @.str.60, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/i2c/busses/i2c-stm32f7.c", i32 680, i32 4}
!117 = !{ptr @stm32f7_i2c_setup_timing._entry.59, !116, !"_entry", i1 false, i1 false}
!118 = !{ptr @stm32f7_i2c_setup_timing._entry_ptr.61, !116, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.63, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/i2c/busses/i2c-stm32f7.c", i32 686, i32 4}
!121 = !{ptr @stm32f7_i2c_setup_timing._entry.62, !120, !"_entry", i1 false, i1 false}
!122 = !{ptr @stm32f7_i2c_setup_timing._entry_ptr.64, !120, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.66, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/i2c/busses/i2c-stm32f7.c", i32 693, i32 3}
!125 = !{ptr @stm32f7_i2c_setup_timing._entry.65, !124, !"_entry", i1 false, i1 false}
!126 = !{ptr @stm32f7_i2c_setup_timing._entry_ptr.67, !124, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.68, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/i2c/busses/i2c-stm32f7.c", i32 698, i32 14}
!129 = !{ptr @.str.69, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/i2c/busses/i2c-stm32f7.c", i32 700, i32 2}
!131 = !{ptr @stm32f7_i2c_setup_timing.__UNIQUE_ID_ddebug293, !130, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!132 = !{ptr @.str.70, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/i2c/busses/i2c-stm32f7.c", i32 702, i32 2}
!134 = !{ptr @stm32f7_i2c_setup_timing.__UNIQUE_ID_ddebug294, !133, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!135 = !{ptr @.str.71, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/i2c/busses/i2c-stm32f7.c", i32 704, i32 2}
!137 = !{ptr @stm32f7_i2c_setup_timing.__UNIQUE_ID_ddebug295, !136, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!138 = !{ptr @.str.72, !136, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @.str.73, !136, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @.str.74, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/i2c/busses/i2c-stm32f7.c", i32 464, i32 3}
!142 = !{ptr @.str.75, !141, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @stm32f7_i2c_compute_timing._entry, !141, !"_entry", i1 false, i1 false}
!144 = !{ptr @stm32f7_i2c_compute_timing._entry_ptr, !141, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @.str.77, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/i2c/busses/i2c-stm32f7.c", i32 471, i32 3}
!147 = !{ptr @stm32f7_i2c_compute_timing._entry.76, !146, !"_entry", i1 false, i1 false}
!148 = !{ptr @stm32f7_i2c_compute_timing._entry_ptr.78, !146, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @.str.80, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/i2c/busses/i2c-stm32f7.c", i32 480, i32 3}
!151 = !{ptr @stm32f7_i2c_compute_timing._entry.79, !150, !"_entry", i1 false, i1 false}
!152 = !{ptr @stm32f7_i2c_compute_timing._entry_ptr.81, !150, !"_entry_ptr", i1 false, i1 false}
!153 = !{ptr @.str.82, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/i2c/busses/i2c-stm32f7.c", i32 508, i32 2}
!155 = !{ptr @stm32f7_i2c_compute_timing.__UNIQUE_ID_ddebug291, !154, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!156 = !{ptr @.str.84, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/i2c/busses/i2c-stm32f7.c", i32 549, i32 3}
!158 = !{ptr @stm32f7_i2c_compute_timing._entry.83, !157, !"_entry", i1 false, i1 false}
!159 = !{ptr @stm32f7_i2c_compute_timing._entry_ptr.85, !157, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @.str.87, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/i2c/busses/i2c-stm32f7.c", i32 606, i32 3}
!162 = !{ptr @stm32f7_i2c_compute_timing._entry.86, !161, !"_entry", i1 false, i1 false}
!163 = !{ptr @stm32f7_i2c_compute_timing._entry_ptr.88, !161, !"_entry_ptr", i1 false, i1 false}
!164 = !{ptr @.str.89, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/i2c/busses/i2c-stm32f7.c", i32 617, i32 2}
!166 = !{ptr @stm32f7_i2c_compute_timing.__UNIQUE_ID_ddebug292, !165, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!167 = !{ptr @stm32f7_i2c_specs, !168, !"stm32f7_i2c_specs", i1 false, i1 false}
!168 = !{!"../drivers/i2c/busses/i2c-stm32f7.c", i32 369, i32 32}
!169 = !{ptr @.str.90, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/i2c/busses/i2c-stm32f7.c", i32 1990, i32 56}
!171 = !{ptr @stm32f7_i2c_algo, !172, !"stm32f7_i2c_algo", i1 false, i1 false}
!172 = !{!"../drivers/i2c/busses/i2c-stm32f7.c", i32 2090, i32 35}
!173 = !{ptr @.str.91, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/i2c/busses/i2c-stm32f7.c", i32 1709, i32 3}
!175 = !{ptr @.str.92, !174, !"<string literal>", i1 false, i1 false}
!176 = !{ptr @stm32f7_i2c_xfer.__UNIQUE_ID_ddebug301, !174, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!177 = !{ptr @.str.93, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../include/linux/dmaengine.h", i32 1169, i32 2}
!179 = !{ptr @.str.94, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/i2c/busses/i2c-stm32f7.c", i32 1771, i32 3}
!181 = !{ptr @stm32f7_i2c_smbus_xfer.__UNIQUE_ID_ddebug302, !180, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!182 = !{ptr @.str.95, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/i2c/busses/i2c-stm32f7.c", i32 1803, i32 4}
!184 = !{ptr @stm32f7_i2c_smbus_xfer._entry, !183, !"_entry", i1 false, i1 false}
!185 = !{ptr @stm32f7_i2c_smbus_xfer._entry_ptr, !183, !"_entry_ptr", i1 false, i1 false}
!186 = !{ptr @.str.96, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/i2c/busses/i2c-stm32f7.c", i32 1013, i32 5}
!188 = !{ptr @.str.97, !187, !"<string literal>", i1 false, i1 false}
!189 = !{ptr @stm32f7_i2c_smbus_xfer_msg._entry, !187, !"_entry", i1 false, i1 false}
!190 = !{ptr @stm32f7_i2c_smbus_xfer_msg._entry_ptr, !187, !"_entry_ptr", i1 false, i1 false}
!191 = !{ptr @stm32f7_i2c_smbus_xfer_msg._entry.98, !192, !"_entry", i1 false, i1 false}
!192 = !{!"../drivers/i2c/busses/i2c-stm32f7.c", i32 1033, i32 4}
!193 = !{ptr @stm32f7_i2c_smbus_xfer_msg._entry_ptr.99, !192, !"_entry_ptr", i1 false, i1 false}
!194 = !{ptr @.str.101, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/i2c/busses/i2c-stm32f7.c", i32 1047, i32 3}
!196 = !{ptr @stm32f7_i2c_smbus_xfer_msg._entry.100, !195, !"_entry", i1 false, i1 false}
!197 = !{ptr @stm32f7_i2c_smbus_xfer_msg._entry_ptr.102, !195, !"_entry_ptr", i1 false, i1 false}
!198 = !{ptr @stm32f7_i2c_smbus_xfer_msg._entry.103, !199, !"_entry", i1 false, i1 false}
!199 = !{!"../drivers/i2c/busses/i2c-stm32f7.c", i32 1087, i32 4}
!200 = !{ptr @stm32f7_i2c_smbus_xfer_msg._entry_ptr.104, !199, !"_entry_ptr", i1 false, i1 false}
!201 = !{ptr @.str.105, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/i2c/busses/i2c-stm32f7.c", i32 1218, i32 3}
!203 = !{ptr @.str.106, !202, !"<string literal>", i1 false, i1 false}
!204 = !{ptr @stm32f7_i2c_smbus_check_pec._entry, !202, !"_entry", i1 false, i1 false}
!205 = !{ptr @stm32f7_i2c_smbus_check_pec._entry_ptr, !202, !"_entry_ptr", i1 false, i1 false}
!206 = !{ptr @.str.108, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/i2c/busses/i2c-stm32f7.c", i32 1223, i32 3}
!208 = !{ptr @stm32f7_i2c_smbus_check_pec._entry.107, !207, !"_entry", i1 false, i1 false}
!209 = !{ptr @stm32f7_i2c_smbus_check_pec._entry_ptr.109, !207, !"_entry_ptr", i1 false, i1 false}
!210 = !{ptr @.str.110, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/i2c/busses/i2c-stm32f7.c", i32 1841, i32 3}
!212 = !{ptr @.str.111, !211, !"<string literal>", i1 false, i1 false}
!213 = !{ptr @stm32f7_i2c_reg_slave._entry, !211, !"_entry", i1 false, i1 false}
!214 = !{ptr @stm32f7_i2c_reg_slave._entry_ptr, !211, !"_entry_ptr", i1 false, i1 false}
!215 = !{ptr @.str.113, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/i2c/busses/i2c-stm32f7.c", i32 1846, i32 3}
!217 = !{ptr @stm32f7_i2c_reg_slave._entry.112, !216, !"_entry", i1 false, i1 false}
!218 = !{ptr @stm32f7_i2c_reg_slave._entry_ptr.114, !216, !"_entry_ptr", i1 false, i1 false}
!219 = !{ptr @.str.116, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/i2c/busses/i2c-stm32f7.c", i32 1898, i32 3}
!221 = !{ptr @stm32f7_i2c_reg_slave._entry.115, !220, !"_entry", i1 false, i1 false}
!222 = !{ptr @stm32f7_i2c_reg_slave._entry_ptr.117, !220, !"_entry_ptr", i1 false, i1 false}
!223 = !{ptr @.str.118, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/i2c/busses/i2c-stm32f7.c", i32 1377, i32 2}
!225 = !{ptr @.str.119, !224, !"<string literal>", i1 false, i1 false}
!226 = !{ptr @stm32f7_i2c_get_free_slave_id._entry, !224, !"_entry", i1 false, i1 false}
!227 = !{ptr @stm32f7_i2c_get_free_slave_id._entry_ptr, !224, !"_entry_ptr", i1 false, i1 false}
!228 = !{ptr @.str.120, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/i2c/busses/i2c-stm32f7.c", i32 1343, i32 2}
!230 = !{ptr @.str.121, !229, !"<string literal>", i1 false, i1 false}
!231 = !{ptr @stm32f7_i2c_get_slave_id._entry, !229, !"_entry", i1 false, i1 false}
!232 = !{ptr @stm32f7_i2c_get_slave_id._entry_ptr, !229, !"_entry_ptr", i1 false, i1 false}
!233 = !{ptr @init_completion.__key, !234, !"__key", i1 false, i1 false}
!234 = !{!"../include/linux/completion.h", i32 87, i32 2}
!235 = !{ptr @.str.122, !234, !"<string literal>", i1 false, i1 false}
!236 = !{ptr @stm32f7_i2c_match, !237, !"stm32f7_i2c_match", i1 false, i1 false}
!237 = !{!"../drivers/i2c/busses/i2c-stm32f7.c", i32 2468, i32 34}
!238 = !{ptr @stm32f7_setup, !239, !"stm32f7_setup", i1 false, i1 false}
!239 = !{!"../drivers/i2c/busses/i2c-stm32f7.c", i32 402, i32 39}
!240 = !{ptr @stm32mp15_setup, !241, !"stm32mp15_setup", i1 false, i1 false}
!241 = !{!"../drivers/i2c/busses/i2c-stm32f7.c", i32 407, i32 39}
!242 = !{ptr @stm32f7_i2c_pm_ops, !243, !"stm32f7_i2c_pm_ops", i1 false, i1 false}
!243 = !{!"../drivers/i2c/busses/i2c-stm32f7.c", i32 2462, i32 32}
!244 = !{ptr @.str.123, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/i2c/busses/i2c-stm32f7.c", i32 2360, i32 4}
!246 = !{ptr @.str.124, !245, !"<string literal>", i1 false, i1 false}
!247 = !{ptr @stm32f7_i2c_runtime_resume._entry, !245, !"_entry", i1 false, i1 false}
!248 = !{ptr @stm32f7_i2c_runtime_resume._entry_ptr, !245, !"_entry_ptr", i1 false, i1 false}
!249 = !{i32 1, !"wchar_size", i32 2}
!250 = !{i32 1, !"min_enum_size", i32 4}
!251 = !{i32 8, !"branch-target-enforcement", i32 0}
!252 = !{i32 8, !"sign-return-address", i32 0}
!253 = !{i32 8, !"sign-return-address-all", i32 0}
!254 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!255 = !{i32 7, !"uwtable", i32 1}
!256 = !{i32 7, !"frame-pointer", i32 2}
!257 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!258 = !{!"auto-init"}
!259 = !{i64 2148786496, i64 2148786501, i64 2148786514, i64 2148786558, i64 2148786592, i64 2148786613}
!260 = !{i8 0, i8 2}
!261 = !{i64 2148304681, i64 2148304707, i64 2148304736, i64 2148304770, i64 2148304801, i64 2148304824}
!262 = !{i64 6927496}
!263 = !{i64 6927078}
!264 = !{i64 2148304100}
!265 = !{i64 788923, i64 788948, i64 788970, i64 788986, i64 788998, i64 789018, i64 789042, i64 789058, i64 789070}
!266 = !{i64 2148304288}
!267 = !{i64 6926881}
!268 = !{i64 6927276}
!269 = !{!"branch_weights", i32 1, i32 2000}
